// Bootstrap FAR task-specs from the alignment CSV.
// Reads alignment/csv/aicpa-far-blueprint-mapping.csv and generates one
// task-spec file per AICPA representative task (113 total).
//
// Usage:
//   npx tsx scripts/qa/bootstrap-far-task-specs.ts [--dry-run]
//
// Each generated file has placeholder inScope/bannedTerms (to be authored
// later) but correct aicpaRef, aicpaTask, aicpaSkill, bloomLevel, and
// lessonSpec derived from the CSV + AICPA JSON cross-validation.

import { readFileSync, writeFileSync, existsSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import {
	resolveTaskRef,
	resolveBlueprintRef,
} from "../../src/lib/lesson-specs/blueprint-task-resolver";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "../..");
const dryRun = process.argv.includes("--dry-run");

// ── CSV Parser ─────────────────────────────────────────────────────
function parseCsvLine(line: string): string[] {
	const fields: string[] = [];
	let current = "";
	let inQuotes = false;
	for (let i = 0; i < line.length; i++) {
		const ch = line[i];
		if (ch === '"') {
			if (inQuotes && line[i + 1] === '"') { current += '"'; i++; }
			else inQuotes = !inQuotes;
		} else if (ch === "," && !inQuotes) {
			fields.push(current); current = "";
		} else current += ch;
	}
	fields.push(current);
	return fields;
}

// ── Lesson slug → lesson-spec filename mapping ─────────────────────
// CSV has "Our Lesson #" like "01", "02". We map to lesson-spec filenames.
// Convention: far-<slug-without-number>.ts
// Since most FAR lesson-specs don't exist yet, we derive the expected name.
const LESSON_NUM_TO_SPEC: Record<string, string> = {
	"01": "far-financial-reporting-for-profit",
	"02": "far-statement-of-cash-flows",
	"03": "far-consolidated-financial-statements",
	"04": "far-not-for-profit",
	"05": "far-state-local-government",
	"06": "far-public-company-reporting",
	"07": "far-special-purpose-frameworks",
	"08": "far-financial-statement-ratios",
	"09": "far-cash-and-cash-equivalents",
	"10": "far-trade-receivables",
	"11": "far-inventory",
	"12": "far-property-plant-equipment",
	"13": "far-investments",
	"14": "far-intangible-assets",
	"15": "far-payables-and-accrued-liabilities",
	"16": "far-debt",
	"17": "far-equity",
	"18": "far-accounting-changes",
	"19": "far-contingencies",
	"20": "far-revenue-recognition",
	"21": "far-income-taxes",
	"22": "far-fair-value",
	"23": "far-lessee-accounting",
	"24": "far-subsequent-events",
};

const SKILL_TO_BLOOM: Record<string, number> = {
	"Remembering and Understanding": 1,
	"Application": 2,
	"Analysis": 3,
	"Evaluation": 4,
};

// ── Parse CSV ──────────────────────────────────────────────────────
const csvPath = resolve(root, "alignment/csv/aicpa-far-blueprint-mapping.csv");
const csvText = readFileSync(csvPath, "utf-8");
const lines = csvText.replace(/\r\n/g, "\n").replace(/\r/g, "\n").split("\n").filter(l => l.trim());
const headers = parseCsvLine(lines[0]);
const records = lines.slice(1).map(l => {
	const fields = parseCsvLine(l);
	return Object.fromEntries(headers.map((h, i) => [h, fields[i] || ""]));
});

console.log(`Parsed ${records.length} CSV rows`);

// ── Resolve each CSV row to a 5-part aicpaRef ─────────────────────
// Some rows have topic numbers; others don't. For rows without topic
// numbers, we match the task text against the AICPA JSON to find the
// correct topic and task index.
interface TaskRow {
	area: string;
	group: string;
	topicNum: string;
	taskNum: number;
	skill: string;
	task: string;
	lessonNum: string;
	aicpaRef: string;
}

function normalize(s: string): string {
	return s.toLowerCase().replace(/[^a-z0-9 ]/g, " ").replace(/\s+/g, " ").trim();
}

function wordSimilarity(a: string, b: string): number {
	const aWords = new Set(a.split(" "));
	const bWords = new Set(b.split(" "));
	let shared = 0;
	for (const w of aWords) if (bWords.has(w)) shared++;
	return shared / Math.max(aWords.size, bWords.size);
}

// Greedy bipartite matching: for all CSV rows in one group, find the
// best non-overlapping assignment to JSON tasks using word similarity.
interface JsonTask {
	topicNum: number;
	taskIdx: number;
	skill: string;
	task: string;
	norm: string;
}

function matchGroupTasks(
	area: string,
	groupLetter: string,
	csvTexts: string[],
): Map<number, JsonTask> {
	const groupNode = resolveBlueprintRef(`FAR/${area}/${groupLetter}`);
	const result = new Map<number, JsonTask>();
	if (!groupNode) return result;

	// Build flat list of all JSON tasks in this group
	const jsonTasks: JsonTask[] = [];
	for (const topic of groupNode.group.topics) {
		for (let ti = 0; ti < (topic.tasks?.length ?? 0); ti++) {
			jsonTasks.push({
				topicNum: topic.number,
				taskIdx: ti + 1,
				skill: topic.tasks[ti].skill,
				task: topic.tasks[ti].task,
				norm: normalize(topic.tasks[ti].task),
			});
		}
	}

	// Score all pairs
	const scores: Array<{ csvIdx: number; jsonIdx: number; score: number }> = [];
	for (let ci = 0; ci < csvTexts.length; ci++) {
		const csvNorm = normalize(csvTexts[ci]);
		for (let ji = 0; ji < jsonTasks.length; ji++) {
			scores.push({ csvIdx: ci, jsonIdx: ji, score: wordSimilarity(csvNorm, jsonTasks[ji].norm) });
		}
	}

	// Greedy: pick highest-scoring pairs, no reuse
	scores.sort((a, b) => b.score - a.score);
	const usedCsv = new Set<number>();
	const usedJson = new Set<number>();
	for (const { csvIdx, jsonIdx, score } of scores) {
		if (usedCsv.has(csvIdx) || usedJson.has(jsonIdx)) continue;
		if (score < 0.3) continue;
		result.set(csvIdx, jsonTasks[jsonIdx]);
		usedCsv.add(csvIdx);
		usedJson.add(jsonIdx);
	}

	return result;
}

// Group CSV rows by AICPA group for batch matching
const byGroup: Record<string, Array<{ idx: number; rec: typeof records[0] }>> = {};
for (let i = 0; i < records.length; i++) {
	const key = `${records[i]["AICPA Area"]}/${records[i]["AICPA Group"]}`;
	(byGroup[key] ??= []).push({ idx: i, rec: records[i] });
}

const taskRows: TaskRow[] = new Array(records.length);
let resolvedCount = 0;
let failedCount = 0;

for (const [groupKey, entries] of Object.entries(byGroup)) {
	const [area, group] = groupKey.split("/");
	const csvTexts = entries.map(e => e.rec["Representative Task"]);
	const matches = matchGroupTasks(area, group, csvTexts);

	for (let ei = 0; ei < entries.length; ei++) {
		const { idx, rec } = entries[ei];
		const m = matches.get(ei);
		const lessonNum = rec["Our Lesson #"].padStart(2, "0");

		if (m) {
			taskRows[idx] = {
				area,
				group,
				topicNum: String(m.topicNum),
				taskNum: m.taskIdx,
				skill: m.skill,
				task: m.task,
				lessonNum,
				aicpaRef: `FAR/${area}/${group}/${m.topicNum}/${m.taskIdx}`,
			};
			resolvedCount++;
		} else {
			console.error(`ERROR: No match for FAR/${area}/${group} task: ${rec["Representative Task"].slice(0, 80)}`);
			taskRows[idx] = {
				area,
				group,
				topicNum: "0",
				taskNum: 0,
				skill: rec["Skill Level"],
				task: rec["Representative Task"],
				lessonNum,
				aicpaRef: `FAR/${area}/${group}/0/0`,
			};
			failedCount++;
		}
	}
}

console.log(`Resolved: ${resolvedCount} matched, ${failedCount} failed`);

// ── Validate all resolved refs ─────────────────────────────────────
let validCount = 0;
let invalidCount = 0;

for (const row of taskRows) {
	const resolved = resolveTaskRef(row.aicpaRef);
	if (!resolved) {
		console.error(`INVALID REF: ${row.aicpaRef} (task: ${row.task.slice(0, 60)}...)`);
		invalidCount++;
	} else {
		validCount++;
	}
}

console.log(`Validated: ${validCount} valid, ${invalidCount} invalid`);

if (invalidCount > 0) {
	console.error("\nAborting: some refs don't resolve. Check errors above.");
	process.exit(1);
}

// ── Generate task-spec files ───────────────────────────────────────
const outDir = resolve(root, "src/lib/task-specs");
let wrote = 0;
let skipped = 0;

for (const row of taskRows) {
	const bloom = SKILL_TO_BLOOM[row.skill];
	if (!bloom) {
		console.error(`Unknown skill: "${row.skill}" for ${row.aicpaRef}`);
		process.exit(1);
	}

	const lessonSpec = LESSON_NUM_TO_SPEC[row.lessonNum];
	if (!lessonSpec) {
		console.error(`No lesson-spec mapping for lesson #${row.lessonNum}`);
		process.exit(1);
	}

	// Filename: far-<area>-<group>-<topic>-<task>.ts (all lowercase)
	const fileName = `far-${row.area.toLowerCase()}-${row.group.toLowerCase()}-${row.topicNum}-${row.taskNum}.ts`;
	const filePath = resolve(outDir, fileName);

	if (existsSync(filePath)) {
		skipped++;
		continue;
	}

	// Escape the task text for TypeScript string
	const escapedTask = row.task
		.replace(/\\/g, "\\\\")
		.replace(/"/g, '\\"')
		.replace(/\n/g, "\\n");

	const content = `import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

export const spec: TaskSpec = {
\taicpaRef: "${row.aicpaRef}",
\tsection: "far",

\taicpaTask:
\t\t"${escapedTask}",
\taicpaSkill: "${row.skill}",
\tbloomLevel: SKILL_TO_BLOOM["${row.skill}"],

\tinScope: [
\t\t// TODO: author inScope items for this task
\t],

\tkeyStandards: [],

\tcommonMisconceptions: [],

\tbannedTerms: [],

\ttargetCount: 3,
\tdifficultyMix: { easy: 30, medium: 50, hard: 20 },

\tlessonSpec: "${lessonSpec}",
};
`;

	if (dryRun) {
		console.log(`DRY: would write ${fileName}`);
	} else {
		writeFileSync(filePath, content);
	}
	wrote++;
}

console.log(`\n${dryRun ? "Would write" : "Wrote"}: ${wrote} task-spec files`);
console.log(`Skipped (already exist): ${skipped}`);
console.log(`Total: ${wrote + skipped} / ${taskRows.length}`);
