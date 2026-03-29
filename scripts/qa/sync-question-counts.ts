// Sync questionCounts and sectionQuestionTotals in src/lib/blueprint.ts
// with live DB data. Also updates test assertions in tests/unit/blueprint.test.ts
// and question counts in CLAUDE.md (Content Summary table + totals).
//
// Usage: npm run sync-counts

import { readFileSync, writeFileSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { supabase } from "./db-client";
import { cpaBlueprint } from "../../src/lib/blueprint";

const __dirname = dirname(fileURLToPath(import.meta.url));
const blueprintPath = resolve(__dirname, "../../src/lib/blueprint.ts");
const testPath = resolve(__dirname, "../../tests/unit/blueprint.test.ts");
const claudeMdPath = resolve(__dirname, "../../CLAUDE.md");

interface TopicRow {
	topic: string;
	section_code: string;
	count: number;
}

// Section display order (matches blueprint order)
const sectionOrder = ["aud", "far", "reg", "bar", "isc", "tcp"];

const sectionNames: Record<string, string> = {
	aud: "AUD",
	far: "FAR",
	reg: "REG",
	bar: "BAR",
	isc: "ISC",
	tcp: "TCP",
};

// Build set of valid blueprint topics for validation
function getBlueprintTopics(): Set<string> {
	const topics = new Set<string>();
	for (const section of cpaBlueprint) {
		for (const area of section.areas) {
			for (const group of area.groups) {
				for (const topic of group.questionTopics) {
					topics.add(topic);
				}
			}
		}
	}
	return topics;
}

// Map each topic to its section code from the blueprint
function getTopicSectionMap(): Map<string, string> {
	const map = new Map<string, string>();
	for (const section of cpaBlueprint) {
		for (const area of section.areas) {
			for (const group of area.groups) {
				for (const topic of group.questionTopics) {
					map.set(topic, section.code);
				}
			}
		}
	}
	return map;
}

async function fetchTopicCounts(): Promise<TopicRow[]> {
	// Get section code lookup
	const { data: sections, error: secErr } = await supabase
		.from("sections")
		.select("id, code");

	if (secErr || !sections) {
		console.error("Failed to fetch sections:", secErr?.message);
		process.exit(1);
	}

	const sectionMap = new Map(sections.map((s) => [s.id, s.code as string]));

	// Paginate through all questions, collecting topic counts
	const counts = new Map<string, { section_code: string; count: number }>();
	const pageSize = 1000;
	let offset = 0;

	while (true) {
		const { data, error } = await supabase
			.from("questions")
			.select("section_id, topic")
			.range(offset, offset + pageSize - 1)
			.order("id");

		if (error) {
			console.error("DB query error:", error.message);
			process.exit(1);
		}
		if (!data || data.length === 0) break;

		for (const q of data) {
			const code = sectionMap.get(q.section_id);
			if (!code) continue;
			const key = q.topic;
			const existing = counts.get(key);
			if (existing) {
				existing.count++;
			} else {
				counts.set(key, { section_code: code, count: 1 });
			}
		}

		if (data.length < pageSize) break;
		offset += pageSize;
	}

	return Array.from(counts.entries()).map(([topic, { section_code, count }]) => ({
		topic,
		section_code,
		count,
	}));
}

function buildQuestionCountsBlock(
	rows: TopicRow[],
	topicSectionMap: Map<string, string>,
): { countsBlock: string; totalsBlock: string; sectionTotals: Record<string, number> } {
	// Group rows by section
	const bySection = new Map<string, Map<string, number>>();
	for (const code of sectionOrder) {
		bySection.set(code, new Map());
	}

	for (const row of rows) {
		// Use blueprint section mapping as authority, fall back to DB section
		const code = topicSectionMap.get(row.topic) ?? row.section_code;
		const sectionMap = bySection.get(code);
		if (sectionMap) {
			sectionMap.set(row.topic, row.count);
		}
	}

	const today = new Date().toISOString().slice(0, 10);
	const lines: string[] = [];
	const sectionTotals: Record<string, number> = {};

	for (const code of sectionOrder) {
		const topics = bySection.get(code)!;
		const total = Array.from(topics.values()).reduce((a, b) => a + b, 0);
		sectionTotals[code] = total;

		lines.push(`\t// ${sectionNames[code]} (${total.toLocaleString()} total — synced with live DB ${today})`);

		// Sort topics alphabetically within section for stable output
		const sorted = Array.from(topics.entries()).sort((a, b) =>
			a[0].localeCompare(b[0]),
		);
		for (const [topic, count] of sorted) {
			// Quote the key if it contains spaces or special chars, otherwise use bare identifier
			const needsQuote = /[^a-zA-Z0-9_$]/.test(topic);
			const key = needsQuote ? `"${topic}"` : topic;
			lines.push(`\t${key}: ${count},`);
		}
	}

	const countsBlock =
		`export const questionCounts: Record<string, number> = {\n` +
		lines.join("\n") +
		`\n};`;

	const totalsBlock =
		`export const sectionQuestionTotals: Record<string, number> = {\n` +
		sectionOrder.map((code) => `\t${code}: ${sectionTotals[code]},`).join("\n") +
		`\n};`;

	return { countsBlock, totalsBlock, sectionTotals };
}

async function main() {
	console.log("Fetching question counts from DB...");
	const rows = await fetchTopicCounts();
	console.log(`Found ${rows.length} topics across ${new Set(rows.map((r) => r.section_code)).size} sections`);

	const blueprintTopics = getBlueprintTopics();
	const topicSectionMap = getTopicSectionMap();

	// Warn about DB topics not in blueprint
	const orphaned = rows.filter((r) => !blueprintTopics.has(r.topic));
	if (orphaned.length > 0) {
		console.warn(`\nWarning: ${orphaned.length} DB topic(s) not in blueprint:`);
		for (const r of orphaned) {
			console.warn(`  - "${r.topic}" (${r.section_code}, ${r.count} questions)`);
		}
	}

	// Build replacement blocks
	const { countsBlock, totalsBlock, sectionTotals } = buildQuestionCountsBlock(rows, topicSectionMap);

	// Update blueprint.ts
	let blueprint = readFileSync(blueprintPath, "utf-8");

	// Replace questionCounts block
	const countsRegex = /export const questionCounts: Record<string, number> = \{[\s\S]*?\n\};/;
	if (!countsRegex.test(blueprint)) {
		console.error("Could not find questionCounts block in blueprint.ts");
		process.exit(1);
	}
	blueprint = blueprint.replace(countsRegex, countsBlock);

	// Replace sectionQuestionTotals block
	const totalsRegex = /export const sectionQuestionTotals: Record<string, number> = \{[\s\S]*?\n\};/;
	if (!totalsRegex.test(blueprint)) {
		console.error("Could not find sectionQuestionTotals block in blueprint.ts");
		process.exit(1);
	}
	blueprint = blueprint.replace(totalsRegex, totalsBlock);

	writeFileSync(blueprintPath, blueprint);
	console.log("\nUpdated src/lib/blueprint.ts");

	// Update test assertions
	let testFile = readFileSync(testPath, "utf-8");
	let testUpdated = false;

	for (const code of sectionOrder) {
		const testRegex = new RegExp(
			`(expect\\(sectionQuestionTotals\\.${code}\\)\\.toBe\\()\\d+(\\))`,
		);
		if (testRegex.test(testFile)) {
			testFile = testFile.replace(testRegex, `$1${sectionTotals[code]}$2`);
			testUpdated = true;
		}
	}

	if (testUpdated) {
		writeFileSync(testPath, testFile);
		console.log("Updated tests/unit/blueprint.test.ts");
	}

	// Update CLAUDE.md — Content Summary table + totals line + generation line
	const today = new Date().toISOString().slice(0, 10);
	const totalQuestions = Object.values(sectionTotals).reduce((a, b) => a + b, 0);
	let claudeMd = readFileSync(claudeMdPath, "utf-8");
	let claudeUpdated = false;

	// Update per-section question counts in the Content Summary table
	// Each row looks like: | AUD     | aud  | 13      | ~1,407    | 37   ...
	for (const code of sectionOrder) {
		const upper = sectionNames[code];
		const rowRegex = new RegExp(
			`(\\| ${upper}\\s+\\| ${code}\\s+\\| \\d+\\s+\\| )~?[\\d,]+(\\s+\\|)`,
		);
		if (rowRegex.test(claudeMd)) {
			claudeMd = claudeMd.replace(
				rowRegex,
				`$1~${sectionTotals[code].toLocaleString()}$2`,
			);
			claudeUpdated = true;
		}
	}

	// Update the Totals line: **Totals:** 102 lessons, ~8,941 questions (target: ~9,000), ...
	const totalsLineRegex = /(\*\*Totals:\*\* \d+ lessons, )~?[\d,]+( questions)/;
	if (totalsLineRegex.test(claudeMd)) {
		claudeMd = claudeMd.replace(
			totalsLineRegex,
			`$1~${totalQuestions.toLocaleString()}$2`,
		);
		claudeUpdated = true;
	}

	// Update the generation status line: Live DB: ~8,941 questions (synced 2026-03-27)
	const genLineRegex = /Live DB: ~?[\d,]+ questions \(synced \d{4}-\d{2}-\d{2}\)/;
	if (genLineRegex.test(claudeMd)) {
		claudeMd = claudeMd.replace(
			genLineRegex,
			`Live DB: ~${totalQuestions.toLocaleString()} questions (synced ${today})`,
		);
		claudeUpdated = true;
	}

	if (claudeUpdated) {
		writeFileSync(claudeMdPath, claudeMd);
		console.log("Updated CLAUDE.md");
	}

	// Summary
	console.log(`\nSync complete — ${totalQuestions.toLocaleString()} total questions across ${sectionOrder.length} sections:`);
	for (const code of sectionOrder) {
		console.log(`  ${sectionNames[code]}: ${sectionTotals[code].toLocaleString()}`);
	}
}

main().catch((err) => {
	console.error("Fatal error:", err);
	process.exit(1);
});
