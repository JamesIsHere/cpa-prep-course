// Task-level coverage analysis — per AICPA representative task, report how
// many DB questions are pinned to it vs the task-spec's targetCount. Flags
// gaps (under-target), surpluses (over-target), and orphan pin_refs that have
// no task-spec file.
//
// Usage:
//   npx tsx scripts/qa/task-coverage.ts                 # all 6 sections
//   npx tsx scripts/qa/task-coverage.ts --section=far   # one section
//   npx tsx scripts/qa/task-coverage.ts --gaps          # only tasks under target
//   npx tsx scripts/qa/task-coverage.ts --json          # machine-readable

import { readFileSync, readdirSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { supabase } from "./db-client";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "../..");

const SECTIONS = ["aud", "bar", "far", "isc", "reg", "tcp"] as const;
type SectionCode = (typeof SECTIONS)[number];

const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1] as SectionCode | undefined;
const gapsOnly = process.argv.includes("--gaps");
const jsonOut = process.argv.includes("--json");

if (sectionArg && !SECTIONS.includes(sectionArg)) {
	console.error(`Unknown section: ${sectionArg}. Expected one of ${SECTIONS.join(", ")}`);
	process.exit(1);
}

// ── Task-spec loader (regex-based, matches classify-section.ts pattern) ───

interface SpecMeta {
	aicpaRef: string;
	section: SectionCode;
	targetCount: number;
	lessonSpec: string;
	file: string;
}

function loadAllSpecs(): SpecMeta[] {
	const dir = resolve(root, "src/lib/task-specs");
	const files = readdirSync(dir).filter(
		(f) => f.endsWith(".ts") && !f.startsWith("_") && f !== "index.ts" && f !== "types.ts",
	);
	const specs: SpecMeta[] = [];
	for (const f of files) {
		const content = readFileSync(resolve(dir, f), "utf-8");
		const refMatch = content.match(/aicpaRef:\s*"([^"]+)"/);
		const sectionMatch = content.match(/section:\s*"([^"]+)"/);
		const targetMatch = content.match(/targetCount:\s*(\d+)/);
		const lessonMatch = content.match(/lessonSpec:\s*"([^"]+)"/);
		if (!refMatch || !sectionMatch || !targetMatch || !lessonMatch) continue;
		specs.push({
			aicpaRef: refMatch[1],
			section: sectionMatch[1] as SectionCode,
			targetCount: parseInt(targetMatch[1], 10),
			lessonSpec: lessonMatch[1],
			file: f,
		});
	}
	return specs;
}

// ── DB loader (paginated) ────────────────────────────────────────────────

async function loadPinCounts(sectionCode: SectionCode): Promise<{
	total: number;
	pinned: number;
	homeless: number;
	countsByRef: Map<string, number>;
}> {
	const { data: sec } = await supabase
		.from("sections")
		.select("id")
		.eq("code", sectionCode)
		.single();
	if (!sec) throw new Error(`Section ${sectionCode} not found`);
	const sectionId = sec.id as number;

	const { count: total } = await supabase
		.from("questions")
		.select("*", { count: "exact", head: true })
		.eq("section_id", sectionId);

	const { count: homeless } = await supabase
		.from("questions")
		.select("*", { count: "exact", head: true })
		.eq("section_id", sectionId)
		.is("pin_ref", null);

	// Paginate pin_refs to avoid the 1000-row default cap.
	const countsByRef = new Map<string, number>();
	let offset = 0;
	while (true) {
		const { data } = await supabase
			.from("questions")
			.select("pin_ref")
			.eq("section_id", sectionId)
			.not("pin_ref", "is", null)
			.range(offset, offset + 999);
		if (!data || data.length === 0) break;
		for (const row of data as { pin_ref: string }[]) {
			countsByRef.set(row.pin_ref, (countsByRef.get(row.pin_ref) ?? 0) + 1);
		}
		if (data.length < 1000) break;
		offset += 1000;
	}

	const pinned = [...countsByRef.values()].reduce((a, b) => a + b, 0);
	return {
		total: total ?? 0,
		pinned,
		homeless: homeless ?? 0,
		countsByRef,
	};
}

// ── Analysis ─────────────────────────────────────────────────────────────

interface TaskReport {
	aicpaRef: string;
	target: number;
	pinned: number;
	lessonSpec: string;
	status: "gap" | "on-target" | "surplus" | "empty";
}

interface OrphanReport {
	pinRef: string;
	level: "task" | "topic" | "group" | "other";
	count: number;
}

interface SectionReport {
	section: SectionCode;
	specs: number;
	bankTotal: number;
	bankPinned: number;
	bankHomeless: number;
	tasksOnTarget: number;
	tasksGap: number;
	tasksEmpty: number;
	tasksSurplus: number;
	totalTarget: number;
	totalPinnedToSpeccedTasks: number;
	orphanPinnedCount: number;
	tasks: TaskReport[];
	orphans: OrphanReport[];
}

function refLevel(ref: string): OrphanReport["level"] {
	const parts = ref.split("/");
	if (parts.length === 5) return "task";
	if (parts.length === 4) return "topic";
	if (parts.length === 3) return "group";
	return "other";
}

function analyzeSection(
	sectionCode: SectionCode,
	specs: SpecMeta[],
	db: Awaited<ReturnType<typeof loadPinCounts>>,
): SectionReport {
	const sectionSpecs = specs.filter((s) => s.section === sectionCode);
	const specRefs = new Set(sectionSpecs.map((s) => s.aicpaRef));

	const tasks: TaskReport[] = sectionSpecs.map((s) => {
		const pinned = db.countsByRef.get(s.aicpaRef) ?? 0;
		let status: TaskReport["status"];
		if (pinned === 0) status = "empty";
		else if (pinned < s.targetCount) status = "gap";
		else if (pinned >= s.targetCount * 2) status = "surplus";
		else status = "on-target";
		return {
			aicpaRef: s.aicpaRef,
			target: s.targetCount,
			pinned,
			lessonSpec: s.lessonSpec,
			status,
		};
	});

	const orphans: OrphanReport[] = [];
	for (const [ref, count] of db.countsByRef) {
		if (specRefs.has(ref)) continue;
		orphans.push({ pinRef: ref, level: refLevel(ref), count });
	}
	orphans.sort((a, b) => b.count - a.count);

	const totalTarget = sectionSpecs.reduce((a, s) => a + s.targetCount, 0);
	const totalPinnedToSpecced = tasks.reduce((a, t) => a + t.pinned, 0);
	const orphanPinnedCount = orphans.reduce((a, o) => a + o.count, 0);

	return {
		section: sectionCode,
		specs: sectionSpecs.length,
		bankTotal: db.total,
		bankPinned: db.pinned,
		bankHomeless: db.homeless,
		tasksOnTarget: tasks.filter((t) => t.status === "on-target").length,
		tasksGap: tasks.filter((t) => t.status === "gap").length,
		tasksEmpty: tasks.filter((t) => t.status === "empty").length,
		tasksSurplus: tasks.filter((t) => t.status === "surplus").length,
		totalTarget,
		totalPinnedToSpeccedTasks: totalPinnedToSpecced,
		orphanPinnedCount,
		tasks,
		orphans,
	};
}

// ── Output formatting ────────────────────────────────────────────────────

function pct(num: number, denom: number): string {
	if (denom === 0) return "0.0%";
	return `${((num / denom) * 100).toFixed(1)}%`;
}

function pad(s: string, n: number): string {
	return s.length >= n ? s : s + " ".repeat(n - s.length);
}

function padLeft(s: string, n: number): string {
	return s.length >= n ? s : " ".repeat(n - s.length) + s;
}

function printSummaryTable(reports: SectionReport[]): void {
	console.log("\n── Per-section summary ──\n");
	console.log(
		`${pad("Section", 8)} ${padLeft("Specs", 6)} ${padLeft("On-target", 10)} ${padLeft("Gap", 5)} ${padLeft("Empty", 6)} ${padLeft("Surplus", 8)} ${padLeft("Pinned", 7)} ${padLeft("Homeless", 9)} ${padLeft("Orphan", 7)}`,
	);
	console.log("-".repeat(82));
	for (const r of reports) {
		console.log(
			`${pad(r.section.toUpperCase(), 8)} ${padLeft(String(r.specs), 6)} ${padLeft(`${r.tasksOnTarget} (${pct(r.tasksOnTarget, r.specs)})`, 10)} ${padLeft(String(r.tasksGap), 5)} ${padLeft(String(r.tasksEmpty), 6)} ${padLeft(String(r.tasksSurplus), 8)} ${padLeft(String(r.bankPinned), 7)} ${padLeft(String(r.bankHomeless), 9)} ${padLeft(String(r.orphanPinnedCount), 7)}`,
		);
	}
	const totals = reports.reduce(
		(a, r) => ({
			specs: a.specs + r.specs,
			onTarget: a.onTarget + r.tasksOnTarget,
			gap: a.gap + r.tasksGap,
			empty: a.empty + r.tasksEmpty,
			surplus: a.surplus + r.tasksSurplus,
			pinned: a.pinned + r.bankPinned,
			homeless: a.homeless + r.bankHomeless,
			orphan: a.orphan + r.orphanPinnedCount,
		}),
		{ specs: 0, onTarget: 0, gap: 0, empty: 0, surplus: 0, pinned: 0, homeless: 0, orphan: 0 },
	);
	console.log("-".repeat(82));
	console.log(
		`${pad("TOTAL", 8)} ${padLeft(String(totals.specs), 6)} ${padLeft(`${totals.onTarget} (${pct(totals.onTarget, totals.specs)})`, 10)} ${padLeft(String(totals.gap), 5)} ${padLeft(String(totals.empty), 6)} ${padLeft(String(totals.surplus), 8)} ${padLeft(String(totals.pinned), 7)} ${padLeft(String(totals.homeless), 9)} ${padLeft(String(totals.orphan), 7)}`,
	);
	console.log();
}

function printSectionDetail(r: SectionReport): void {
	console.log(`\n── ${r.section.toUpperCase()} detail ──`);
	console.log(`Specs: ${r.specs}    Target total: ${r.totalTarget}    Pinned to specced tasks: ${r.totalPinnedToSpeccedTasks}`);
	console.log(`Bank: ${r.bankTotal} (pinned ${r.bankPinned} / homeless ${r.bankHomeless})`);

	const shown = gapsOnly
		? r.tasks.filter((t) => t.status === "gap" || t.status === "empty")
		: r.tasks;
	shown.sort((a, b) => {
		const statusRank = { empty: 0, gap: 1, "on-target": 2, surplus: 3 };
		const rankA = statusRank[a.status] ?? 4;
		const rankB = statusRank[b.status] ?? 4;
		if (rankA !== rankB) return rankA - rankB;
		return a.aicpaRef.localeCompare(b.aicpaRef);
	});

	if (shown.length > 0) {
		console.log(`\nTasks${gapsOnly ? " (gaps only)" : ""}:`);
		console.log(`  ${pad("aicpaRef", 18)} ${padLeft("target", 7)} ${padLeft("pinned", 7)} ${pad("status", 10)} lesson`);
		for (const t of shown) {
			console.log(
				`  ${pad(t.aicpaRef, 18)} ${padLeft(String(t.target), 7)} ${padLeft(String(t.pinned), 7)} ${pad(t.status, 10)} ${t.lessonSpec}`,
			);
		}
	}

	if (r.orphans.length > 0) {
		console.log(`\nOrphan pin_refs (no task-spec file for this ref):`);
		const byLevel = { task: 0, topic: 0, group: 0, other: 0 };
		for (const o of r.orphans) byLevel[o.level] += o.count;
		console.log(
			`  By level: task=${byLevel.task}  topic=${byLevel.topic}  group=${byLevel.group}  other=${byLevel.other}`,
		);
		const top = r.orphans.slice(0, 20);
		console.log(`  Top ${Math.min(20, r.orphans.length)} of ${r.orphans.length} orphan refs:`);
		for (const o of top) {
			console.log(`    ${pad(o.pinRef, 20)} ${padLeft(String(o.count), 5)}  (${o.level})`);
		}
	}
}

// ── Main ─────────────────────────────────────────────────────────────────

async function main() {
	const specs = loadAllSpecs();
	const sections = sectionArg ? [sectionArg] : [...SECTIONS];

	const reports: SectionReport[] = [];
	for (const s of sections) {
		const db = await loadPinCounts(s);
		reports.push(analyzeSection(s, specs, db));
	}

	if (jsonOut) {
		console.log(JSON.stringify(reports, null, 2));
		return;
	}

	if (reports.length > 1) printSummaryTable(reports);
	for (const r of reports) printSectionDetail(r);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
