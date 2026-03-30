// Compute per-section, per-topic question targets and write a generation plan
// Usage: npx tsx scripts/qa/plan-distribution.ts [--total=9000] [--batch-size=30]

import { existsSync, readFileSync, writeFileSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { cpaBlueprint } from "../../src/lib/blueprint";
import { fetchAllQuestions } from "./db-client";

const __dirname = dirname(fileURLToPath(import.meta.url));
const docsDir = resolve(__dirname, "../../docs");

// Parse CLI args
const totalArg = parseInt(
	process.argv.find((a) => a.startsWith("--total="))?.split("=")[1] || "9000",
);
const batchSize = parseInt(
	process.argv.find((a) => a.startsWith("--batch-size="))?.split("=")[1] || "30",
);

// Section targets: 1500 each across all 6 sections (9,000 total)
// Tolerance: within 5% of target (1,425–1,575) is acceptable — no trim/generate needed
const SECTION_TARGET = 1500;
const SECTION_TOLERANCE = 0.05; // 5%
const SECTION_TARGETS: Record<string, number> = {
	aud: SECTION_TARGET,
	far: SECTION_TARGET,
	reg: SECTION_TARGET,
	bar: SECTION_TARGET,
	isc: SECTION_TARGET,
	tcp: SECTION_TARGET,
};

// Bloom's distribution targets per section type
// Core sections: more L1/L2 (breadth), electives: more L3/L4 (depth)
const BLOOMS_TARGETS: Record<string, { l1: number; l2: number; l3: number; l4: number }> = {
	aud: { l1: 0.25, l2: 0.35, l3: 0.25, l4: 0.15 },
	far: { l1: 0.25, l2: 0.35, l3: 0.25, l4: 0.15 },
	reg: { l1: 0.25, l2: 0.35, l3: 0.25, l4: 0.15 },
	bar: { l1: 0.20, l2: 0.35, l3: 0.30, l4: 0.15 },
	isc: { l1: 0.20, l2: 0.35, l3: 0.30, l4: 0.15 },
	tcp: { l1: 0.20, l2: 0.35, l3: 0.30, l4: 0.15 },
};

// Difficulty targets: 30% easy, 50% medium, 20% hard
const DIFFICULTY_TARGETS = { easy: 0.30, medium: 0.50, hard: 0.20 };

interface TopicPlan {
	topic: string;
	section: string;
	areaNumber: number;
	areaWeight: [number, number];
	currentCount: number;
	targetCount: number;
	toGenerate: number;
	toTrim: number;
	batches: number;
	difficulty: { easy: number; medium: number; hard: number };
	blooms: { l1: number; l2: number; l3: number; l4: number };
}

interface SectionPlan {
	section: string;
	sectionId: number;
	currentTotal: number;
	targetTotal: number;
	toGenerate: number;
	toTrim: number;
	totalBatches: number;
	topics: TopicPlan[];
}

interface GenerationPlan {
	generatedAt: string;
	totalTarget: number;
	batchSize: number;
	difficultyTargets: typeof DIFFICULTY_TARGETS;
	sections: SectionPlan[];
	summary: {
		totalCurrent: number;
		totalTarget: number;
		totalToGenerate: number;
		totalToTrim: number;
		totalBatches: number;
	};
}

async function main() {
	console.error("Computing generation plan...\n");

	// Fetch all questions from DB
	const allQuestions = await fetchAllQuestions();

	// Count questions per topic per section
	const topicCounts = new Map<string, Map<string, number>>();
	const sectionIdMap = new Map<string, number>();

	for (const q of allQuestions) {
		if (!topicCounts.has(q.topic)) topicCounts.set(q.topic, new Map());
		const sectionKey = `sid_${q.section_id}`;
		const sMap = topicCounts.get(q.topic)!;
		sMap.set(sectionKey, (sMap.get(sectionKey) || 0) + 1);
	}

	// Resolve section codes to IDs from DB
	const { supabase } = await import("./db-client");
	const { data: sections } = await supabase
		.from("sections")
		.select("id, code")
		.order("id");

	if (!sections) {
		console.error("Failed to load sections from DB");
		process.exit(1);
	}
	for (const s of sections) {
		sectionIdMap.set(s.code, s.id);
	}

	// Build topic → section code map from blueprint (authoritative)
	const topicToSectionCode = new Map<string, string>();
	for (const bp2 of cpaBlueprint) {
		for (const area of bp2.areas) {
			for (const group of area.groups) {
				for (const t of group.questionTopics) {
					topicToSectionCode.set(t, bp2.code);
				}
			}
		}
	}

	// Build section_id → code reverse map
	const sectionIdToCode = new Map<number, string>();
	for (const s of sections) {
		sectionIdToCode.set(s.id, s.code as string);
	}

	// Count questions per section per topic using blueprint mapping
	// (falls back to DB section_id if topic not in blueprint)
	const perSectionTopicCounts = new Map<number, Map<string, number>>();
	for (const q of allQuestions) {
		const blueprintCode = topicToSectionCode.get(q.topic) ?? sectionIdToCode.get(q.section_id);
		const resolvedSectionId = blueprintCode
			? sectionIdMap.get(blueprintCode) ?? q.section_id
			: q.section_id;
		if (!perSectionTopicCounts.has(resolvedSectionId)) {
			perSectionTopicCounts.set(resolvedSectionId, new Map());
		}
		const m = perSectionTopicCounts.get(resolvedSectionId)!;
		m.set(q.topic, (m.get(q.topic) || 0) + 1);
	}

	const sectionPlans: SectionPlan[] = [];
	let grandTotalBatches = 0;

	for (const bp of cpaBlueprint) {
		const sectionTarget = SECTION_TARGETS[bp.code];
		if (!sectionTarget) continue;

		const sectionId = sectionIdMap.get(bp.code);
		if (!sectionId) {
			console.error(`Warning: section ${bp.code} not found in DB`);
			continue;
		}

		const sectionTopicCounts = perSectionTopicCounts.get(sectionId) || new Map<string, number>();
		const currentTotal = [...sectionTopicCounts.values()].reduce((a, b) => a + b, 0);

		// Compute weight midpoints for each area
		const areaWeightMidpoints = bp.areas.map((a) => ({
			area: a,
			midpoint: (a.weight[0] + a.weight[1]) / 2 / 100,
		}));

		// Normalize weights to sum to 1
		const totalWeight = areaWeightMidpoints.reduce((s, a) => s + a.midpoint, 0);

		// Collect all topics with their normalized area weights
		const topicEntries: Array<{
			topic: string;
			areaNumber: number;
			areaWeight: [number, number];
			normalizedWeight: number;
		}> = [];

		for (const { area, midpoint } of areaWeightMidpoints) {
			const areaTopics: string[] = [];
			for (const group of area.groups) {
				for (const t of group.questionTopics) {
					areaTopics.push(t);
				}
			}
			const perTopicWeight = areaTopics.length > 0
				? (midpoint / totalWeight) / areaTopics.length
				: 0;

			for (const group of area.groups) {
				for (const t of group.questionTopics) {
					topicEntries.push({
						topic: t,
						areaNumber: area.area,
						areaWeight: area.weight,
						normalizedWeight: perTopicWeight,
					});
				}
			}
		}

		// Compute absolute target per topic based on section target × weight
		const bloomsTarget = BLOOMS_TARGETS[bp.code];
		const topicPlans: TopicPlan[] = [];

		// First pass: compute raw targets
		let allocatedTotal = 0;
		const rawTargets: Array<{ entry: typeof topicEntries[0]; rawTarget: number }> = [];

		for (const entry of topicEntries) {
			const rawTarget = Math.round(entry.normalizedWeight * sectionTarget);
			rawTargets.push({ entry, rawTarget });
			allocatedTotal += rawTarget;
		}

		// Adjust for rounding error
		let remainder = sectionTarget - allocatedTotal;
		rawTargets.sort((a, b) => b.rawTarget - a.rawTarget);
		for (let i = 0; remainder > 0 && i < rawTargets.length; i++) {
			rawTargets[i].rawTarget++;
			remainder--;
		}
		for (let i = 0; remainder < 0 && i < rawTargets.length; i++) {
			if (rawTargets[i].rawTarget > 0) {
				rawTargets[i].rawTarget--;
				remainder++;
			}
		}

		// Build topic plans with trim/generate deltas
		for (const { entry, rawTarget } of rawTargets) {
			const current = sectionTopicCounts.get(entry.topic) || 0;
			const delta = rawTarget - current;
			const toGenerate = Math.max(0, delta);
			const toTrim = Math.max(0, -delta);
			const batches = Math.ceil(toGenerate / batchSize);

			topicPlans.push({
				topic: entry.topic,
				section: bp.code,
				areaNumber: entry.areaNumber,
				areaWeight: entry.areaWeight,
				currentCount: current,
				targetCount: rawTarget,
				toGenerate,
				toTrim,
				batches,
				difficulty: {
					easy: Math.round(toGenerate * DIFFICULTY_TARGETS.easy),
					medium: Math.round(toGenerate * DIFFICULTY_TARGETS.medium),
					hard: toGenerate - Math.round(toGenerate * DIFFICULTY_TARGETS.easy) - Math.round(toGenerate * DIFFICULTY_TARGETS.medium),
				},
				blooms: {
					l1: Math.round(toGenerate * bloomsTarget.l1),
					l2: Math.round(toGenerate * bloomsTarget.l2),
					l3: Math.round(toGenerate * bloomsTarget.l3),
					l4: toGenerate - Math.round(toGenerate * bloomsTarget.l1) - Math.round(toGenerate * bloomsTarget.l2) - Math.round(toGenerate * bloomsTarget.l3),
				},
			});
		}

		// Sort by area number then topic name
		topicPlans.sort((a, b) => a.areaNumber - b.areaNumber || a.topic.localeCompare(b.topic));

		let sectionToGenerate = topicPlans.reduce((s, t) => s + t.toGenerate, 0);
		let sectionToTrim = topicPlans.reduce((s, t) => s + t.toTrim, 0);

		// If section is within tolerance, skip trim/generate entirely
		const lo = Math.floor(sectionTarget * (1 - SECTION_TOLERANCE));
		const hi = Math.ceil(sectionTarget * (1 + SECTION_TOLERANCE));
		if (currentTotal >= lo && currentTotal <= hi) {
			sectionToGenerate = 0;
			sectionToTrim = 0;
			for (const tp of topicPlans) { tp.toGenerate = 0; tp.toTrim = 0; tp.batches = 0; }
		}

		// Compute batches from section total, not sum of per-topic batches
		// (per-topic batches inflate because each topic gets ceil(n/30) >= 1)
		const totalBatches = Math.ceil(sectionToGenerate / batchSize);
		grandTotalBatches += totalBatches;

		sectionPlans.push({
			section: bp.code,
			sectionId,
			currentTotal,
			targetTotal: sectionTarget,
			toGenerate: sectionToGenerate,
			toTrim: sectionToTrim,
			totalBatches,
			topics: topicPlans,
		});

		const withinTolerance = currentTotal >= lo && currentTotal <= hi;
		if (withinTolerance) {
			console.error(`  ${bp.code.toUpperCase()}: ${currentTotal} → ${sectionTarget} ✓ within ${Math.round(SECTION_TOLERANCE * 100)}% tolerance`);
		} else {
			const trimNote = sectionToTrim > 0 ? `, trim ${sectionToTrim}` : "";
			const genNote = sectionToGenerate > 0 ? `, generate ${sectionToGenerate}` : "";
			console.error(`  ${bp.code.toUpperCase()}: ${currentTotal} → ${sectionTarget}${trimNote}${genNote} (${totalBatches} gen batches)`);
		}
	}

	// Summary
	const totalCurrent = sectionPlans.reduce((s, p) => s + p.currentTotal, 0);
	const totalToGenerate = sectionPlans.reduce((s, p) => s + p.toGenerate, 0);
	const totalToTrim = sectionPlans.reduce((s, p) => s + p.toTrim, 0);

	const plan: GenerationPlan = {
		generatedAt: new Date().toISOString(),
		totalTarget: totalArg,
		batchSize,
		difficultyTargets: DIFFICULTY_TARGETS,
		sections: sectionPlans,
		summary: {
			totalCurrent,
			totalTarget: totalArg,
			totalToGenerate,
			totalToTrim,
			totalBatches: grandTotalBatches,
		},
	};

	// Write plan JSON
	const planPath = resolve(docsDir, "generation-plan.json");
	writeFileSync(planPath, JSON.stringify(plan, null, 2) + "\n");
	console.error(`\nWrote: ${planPath}`);

	// Regenerate progress tracker, preserving batch log if it exists
	const progressPath = resolve(docsDir, "generation-progress.md");
	let existingBatchLog = "";
	if (existsSync(progressPath)) {
		const existing = readFileSync(progressPath, "utf-8");
		const batchLogIdx = existing.indexOf("## Batch Log");
		if (batchLogIdx !== -1) {
			existingBatchLog = existing.slice(batchLogIdx);
		}
	}
	const progressMd = buildProgressMarkdown(plan, existingBatchLog);
	writeFileSync(progressPath, progressMd);
	console.error(`Wrote: ${progressPath}`);

	// Final summary
	console.error(`\nSummary: ${totalCurrent} current → ${totalArg} target`);
	console.error(`  Generate: ${totalToGenerate} new (${grandTotalBatches} batches of ${batchSize})`);
	console.error(`  Trim:     ${totalToTrim} to delete`);
}

function computeSectionStatus(sp: SectionPlan): string {
	if (sp.toGenerate === 0 && sp.toTrim === 0) return "On Target";
	if (sp.toTrim > 0 && sp.toGenerate > 0) return "Trim + Generate";
	if (sp.toTrim > 0) return "Trim Needed";
	return "Generate Needed";
}

function buildProgressMarkdown(plan: GenerationPlan, existingBatchLog: string): string {
	const today = new Date().toISOString().slice(0, 10);
	const lines: string[] = [
		"# Question Curation Plan",
		"",
		`> Auto-synced from live DB on ${today} via \`npm run sync-counts\``,
		"",
		"Per-section target: 1,500 questions. Distributed by AICPA Blueprint area weights.",
		"",
		`**Goal:** ${plan.totalTarget.toLocaleString()} total questions across all sections.`,
		"",
		`**Batch size:** ${plan.batchSize} questions per generation batch.`,
		"",
		`**To generate:** ${plan.summary.totalToGenerate.toLocaleString()} new questions (~${plan.summary.totalBatches} batches).`,
		"",
		`**To trim:** ${plan.summary.totalToTrim.toLocaleString()} questions to delete (keep best, cut weakest).`,
		"",
		"**Difficulty targets:** 30% easy / 50% medium / 20% hard.",
		"",
		"## Workflow",
		"",
		"For each section:",
		"1. **Trim** — for over-target topics, score/rank existing questions and delete the weakest",
		"2. **Generate** — for under-target topics, run orchestrator to fill the gap",
		"3. **Review** — manual human review of the surviving question set",
		"",
		"## Section Overview",
		"",
		"| Section | Current | Target | To Trim | To Generate | Gen Batches | Status          |",
		"|---------|---------|--------|---------|-------------|-------------|-----------------|",
	];

	for (const sp of plan.sections) {
		const status = computeSectionStatus(sp);
		const sect = sp.section.toUpperCase().padEnd(7);
		lines.push(
			`| ${sect} | ${sp.currentTotal.toLocaleString().padStart(5)} | ${sp.targetTotal.toLocaleString().padStart(5)} | ${sp.toTrim.toLocaleString().padStart(7)} | ${sp.toGenerate.toLocaleString().padStart(11)} | ${String(sp.totalBatches).padStart(11)} | ${status.padEnd(15)} |`,
		);
	}

	lines.push("");
	lines.push("## Topic Detail");
	lines.push("");

	for (const sp of plan.sections) {
		lines.push(`### ${sp.section.toUpperCase()}`);
		lines.push("");
		lines.push("| Area | Topic | Current | Target | Trim | Generate |");
		lines.push("|------|-------|---------|--------|------|----------|");
		for (const tp of sp.topics) {
			const trimStr = tp.toTrim > 0 ? `-${tp.toTrim}` : "";
			const genStr = tp.toGenerate > 0 ? `+${tp.toGenerate}` : "";
			lines.push(
				`| ${tp.areaNumber} | ${tp.topic} | ${tp.currentCount} | ${tp.targetCount} | ${trimStr} | ${genStr} |`,
			);
		}
		lines.push("");
	}

	// Preserve existing batch log, or create empty one
	if (existingBatchLog) {
		lines.push(existingBatchLog.trimEnd());
		lines.push("");
	} else {
		lines.push("## Batch Log");
		lines.push("");
		lines.push("| Date | Migration | Section | Topic | Count | Notes |");
		lines.push("|------|-----------|---------|-------|-------|-------|");
		lines.push("");
	}

	return lines.join("\n");
}

main();
