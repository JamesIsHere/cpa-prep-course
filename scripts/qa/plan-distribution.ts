// Compute per-section, per-topic question targets and write a generation plan
// Usage: npx tsx scripts/qa/plan-distribution.ts [--total=20000] [--batch-size=30]

import { writeFileSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { cpaBlueprint } from "../../src/lib/blueprint";
import { fetchAllQuestions } from "./db-client";

const __dirname = dirname(fileURLToPath(import.meta.url));
const docsDir = resolve(__dirname, "../../docs");

// Parse CLI args
const totalArg = parseInt(
	process.argv.find((a) => a.startsWith("--total="))?.split("=")[1] || "20000",
);
const batchSize = parseInt(
	process.argv.find((a) => a.startsWith("--batch-size="))?.split("=")[1] || "30",
);

// Section targets: 5000 each across all 6 sections (30,000 total)
const SECTION_TARGETS: Record<string, number> = {
	aud: 5000,
	far: 5000,
	reg: 5000,
	bar: 5000,
	isc: 5000,
	tcp: 5000,
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
	newNeeded: number;
	batches: number;
	difficulty: { easy: number; medium: number; hard: number };
	blooms: { l1: number; l2: number; l3: number; l4: number };
}

interface SectionPlan {
	section: string;
	sectionId: number;
	currentTotal: number;
	targetTotal: number;
	newNeeded: number;
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
		totalNew: number;
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

	// Count questions per section_id per topic
	const perSectionTopicCounts = new Map<number, Map<string, number>>();
	for (const q of allQuestions) {
		if (!perSectionTopicCounts.has(q.section_id)) {
			perSectionTopicCounts.set(q.section_id, new Map());
		}
		const m = perSectionTopicCounts.get(q.section_id)!;
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
		const newNeeded = Math.max(0, sectionTarget - currentTotal);

		if (newNeeded === 0) {
			console.error(`  ${bp.code.toUpperCase()}: already at or above target (${currentTotal}/${sectionTarget})`);
			continue;
		}

		// Compute weight midpoints for each area
		const areaWeightMidpoints = bp.areas.map((a) => ({
			area: a,
			midpoint: (a.weight[0] + a.weight[1]) / 2 / 100,
		}));

		// Normalize weights to sum to 1
		const totalWeight = areaWeightMidpoints.reduce((s, a) => s + a.midpoint, 0);

		// Collect all topics with their area weights
		const topicEntries: Array<{
			topic: string;
			areaNumber: number;
			areaWeight: [number, number];
			normalizedWeight: number;
		}> = [];

		for (const { area, midpoint } of areaWeightMidpoints) {
			// Count total question topics in this area
			const areaTopics: string[] = [];
			for (const group of area.groups) {
				for (const t of group.questionTopics) {
					areaTopics.push(t);
				}
			}
			// Each topic in the area gets equal share of the area's weight
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

		// Allocate new questions to topics proportionally
		const bloomsTarget = BLOOMS_TARGETS[bp.code];
		const topicPlans: TopicPlan[] = [];

		// First pass: compute raw allocations
		let allocatedTotal = 0;
		const rawAllocations: Array<{ entry: typeof topicEntries[0]; rawNew: number }> = [];

		for (const entry of topicEntries) {
			const rawNew = Math.round(entry.normalizedWeight * newNeeded);
			rawAllocations.push({ entry, rawNew });
			allocatedTotal += rawNew;
		}

		// Adjust for rounding error — distribute remainder to largest topics
		let remainder = newNeeded - allocatedTotal;
		rawAllocations.sort((a, b) => b.rawNew - a.rawNew);
		for (let i = 0; remainder > 0 && i < rawAllocations.length; i++) {
			rawAllocations[i].rawNew++;
			remainder--;
		}
		for (let i = 0; remainder < 0 && i < rawAllocations.length; i++) {
			if (rawAllocations[i].rawNew > 0) {
				rawAllocations[i].rawNew--;
				remainder++;
			}
		}

		// Build topic plans
		for (const { entry, rawNew } of rawAllocations) {
			const current = sectionTopicCounts.get(entry.topic) || 0;
			const targetCount = current + rawNew;
			const batches = Math.ceil(rawNew / batchSize);

			topicPlans.push({
				topic: entry.topic,
				section: bp.code,
				areaNumber: entry.areaNumber,
				areaWeight: entry.areaWeight,
				currentCount: current,
				targetCount,
				newNeeded: rawNew,
				batches,
				difficulty: {
					easy: Math.round(rawNew * DIFFICULTY_TARGETS.easy),
					medium: Math.round(rawNew * DIFFICULTY_TARGETS.medium),
					hard: rawNew - Math.round(rawNew * DIFFICULTY_TARGETS.easy) - Math.round(rawNew * DIFFICULTY_TARGETS.medium),
				},
				blooms: {
					l1: Math.round(rawNew * bloomsTarget.l1),
					l2: Math.round(rawNew * bloomsTarget.l2),
					l3: Math.round(rawNew * bloomsTarget.l3),
					l4: rawNew - Math.round(rawNew * bloomsTarget.l1) - Math.round(rawNew * bloomsTarget.l2) - Math.round(rawNew * bloomsTarget.l3),
				},
			});
		}

		// Sort by area number then topic name
		topicPlans.sort((a, b) => a.areaNumber - b.areaNumber || a.topic.localeCompare(b.topic));

		const totalBatches = topicPlans.reduce((s, t) => s + t.batches, 0);
		grandTotalBatches += totalBatches;

		sectionPlans.push({
			section: bp.code,
			sectionId,
			currentTotal,
			targetTotal: sectionTarget,
			newNeeded,
			totalBatches,
			topics: topicPlans,
		});

		console.error(`  ${bp.code.toUpperCase()}: ${currentTotal} → ${sectionTarget} (+${newNeeded}, ${totalBatches} batches)`);
	}

	// Summary
	const totalCurrent = sectionPlans.reduce((s, p) => s + p.currentTotal, 0);
	const totalNew = sectionPlans.reduce((s, p) => s + p.newNeeded, 0);

	const plan: GenerationPlan = {
		generatedAt: new Date().toISOString(),
		totalTarget: totalArg,
		batchSize,
		difficultyTargets: DIFFICULTY_TARGETS,
		sections: sectionPlans,
		summary: {
			totalCurrent,
			totalTarget: totalArg,
			totalNew,
			totalBatches: grandTotalBatches,
		},
	};

	// Write plan JSON
	const planPath = resolve(docsDir, "generation-plan.json");
	writeFileSync(planPath, JSON.stringify(plan, null, 2) + "\n");
	console.error(`\nWrote: ${planPath}`);

	// Initialize progress tracker
	const progressPath = resolve(docsDir, "generation-progress.md");
	const progressMd = buildProgressMarkdown(plan);
	writeFileSync(progressPath, progressMd);
	console.error(`Wrote: ${progressPath}`);

	// Final summary
	console.error(`\nSummary: ${totalCurrent} → ${totalArg} (+${totalNew} new, ${grandTotalBatches} batches of ${batchSize})`);
}

function buildProgressMarkdown(plan: GenerationPlan): string {
	const lines: string[] = [
		"# Question Generation Progress",
		"",
		"Cross-session tracker for scaling question bank from ~5K to 20K.",
		"",
		`**Goal:** ${plan.totalTarget.toLocaleString()} total questions across all sections.`,
		"",
		`**Batch size:** ${plan.batchSize} questions per migration.`,
		"",
		`**Total new needed:** ${plan.summary.totalNew.toLocaleString()} questions (~${plan.summary.totalBatches} batches).`,
		"",
		"**Difficulty targets:** 30% easy / 50% medium / 20% hard.",
		"",
		"## How to Resume",
		"",
		"Each session:",
		"1. Read this file - find the first section with status \"In Progress\" or \"Pending\"",
		"2. Run: `./scripts/orchestrate.ps1 -Section <code> -Mode generate -Batches N`",
		"3. The orchestrator auto-selects topics, generates scaffolds, and updates this tracker",
		"",
		"## Section Progress",
		"",
		"| Section | Current | Target | Generated | Remaining | Batches Done | Status |",
		"|---------|---------|--------|-----------|-----------|--------------|--------|",
	];

	for (const sp of plan.sections) {
		lines.push(
			`| ${sp.section.toUpperCase()}     | ${sp.currentTotal.toLocaleString()} | ${sp.targetTotal.toLocaleString()} | 0 | ${sp.newNeeded.toLocaleString()} | 0/${sp.totalBatches} | Pending |`,
		);
	}

	lines.push("");
	lines.push("## Topic Detail");
	lines.push("");

	for (const sp of plan.sections) {
		lines.push(`### ${sp.section.toUpperCase()}`);
		lines.push("");
		lines.push("| Topic | Current | Target | New | Batches |");
		lines.push("|-------|---------|--------|-----|---------|");
		for (const tp of sp.topics) {
			lines.push(
				`| ${tp.topic} | ${tp.currentCount} | ${tp.targetCount} | ${tp.newNeeded} | ${tp.batches} |`,
			);
		}
		lines.push("");
	}

	lines.push("## Batch Log");
	lines.push("");
	lines.push("| Date | Migration | Section | Topic | Count | Notes |");
	lines.push("|------|-----------|---------|-------|-------|-------|");
	lines.push("");

	return lines.join("\n");
}

main();
