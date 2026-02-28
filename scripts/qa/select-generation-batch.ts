// Pick next batch for a given section — biggest-gap-first topic selection
// Usage: npx tsx scripts/qa/select-generation-batch.ts --section=aud [--batch-size=30]

import { readFileSync, existsSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions } from "./db-client";
import { cpaBlueprint } from "../../src/lib/blueprint";
import { getFrameworkItemsForGroup, type GroupFrameworkItems } from "../../src/lib/blueprint-utils";

const __dirname = dirname(fileURLToPath(import.meta.url));
const docsDir = resolve(__dirname, "../../docs");

// Parse CLI args
const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const batchSize = parseInt(
	process.argv.find((a) => a.startsWith("--batch-size="))?.split("=")[1] || "30",
);

if (!sectionArg) {
	console.error(
		"Usage: npx tsx scripts/qa/select-generation-batch.ts --section=aud [--batch-size=30]",
	);
	process.exit(1);
}
const section: string = sectionArg;

// Section citation patterns
const CITATION_PATTERNS: Record<string, string> = {
	aud: "AU-C, SAS, PCAOB, AT-C, AR-C, SSARS, SQMS, GAGAS, AICPA Code",
	far: "ASC, FASB, GASB",
	reg: "IRC, Sec., Section, Circular 230, UCC",
	bar: "ASC, FASB, GASB",
	isc: "SOC, AICPA, SSAE, AT-C, NIST, COBIT",
	tcp: "IRC, Sec., Section",
};

// Bloom's targets per section type
const BLOOMS_TARGETS: Record<string, { l1: number; l2: number; l3: number; l4: number }> = {
	aud: { l1: 0.25, l2: 0.35, l3: 0.25, l4: 0.15 },
	far: { l1: 0.25, l2: 0.35, l3: 0.25, l4: 0.15 },
	reg: { l1: 0.25, l2: 0.35, l3: 0.25, l4: 0.15 },
	bar: { l1: 0.20, l2: 0.35, l3: 0.30, l4: 0.15 },
	isc: { l1: 0.20, l2: 0.35, l3: 0.30, l4: 0.15 },
	tcp: { l1: 0.20, l2: 0.35, l3: 0.30, l4: 0.15 },
};

interface TopicPlan {
	topic: string;
	currentCount: number;
	targetCount: number;
	newNeeded: number;
}

interface BatchSpec {
	section: string;
	sectionId: number;
	topic: string;
	count: number;
	difficulty: { easy: number; medium: number; hard: number };
	blooms: { l1: number; l2: number; l3: number; l4: number };
	existingStems: string[];
	citationPatterns: string;
	lessonSlugs: string[];
	frameworkItems: GroupFrameworkItems | null;
}

async function main() {
	// Load generation plan
	const planPath = resolve(docsDir, "generation-plan.json");
	if (!existsSync(planPath)) {
		console.error("generation-plan.json not found. Run plan-distribution.ts first.");
		process.exit(1);
	}

	const plan = JSON.parse(readFileSync(planPath, "utf-8"));
	const sectionPlan = plan.sections.find((s: { section: string }) => s.section === section);
	if (!sectionPlan) {
		console.error(`Section ${section} not found in generation plan`);
		process.exit(1);
	}

	// Fetch live DB counts for this section
	const questions = await fetchAllQuestions(section);

	// Count per topic in DB
	const dbTopicCounts = new Map<string, number>();
	const stemsByTopic = new Map<string, string[]>();
	for (const q of questions) {
		dbTopicCounts.set(q.topic, (dbTopicCounts.get(q.topic) || 0) + 1);
		if (!stemsByTopic.has(q.topic)) stemsByTopic.set(q.topic, []);
		stemsByTopic.get(q.topic)!.push(q.stem);
	}

	// Compute remaining gap per topic (plan target - live count)
	const gaps: Array<{ topic: string; remaining: number; target: number; current: number }> = [];
	for (const tp of sectionPlan.topics as TopicPlan[]) {
		const current = dbTopicCounts.get(tp.topic) || 0;
		const remaining = Math.max(0, tp.targetCount - current);
		if (remaining > 0) {
			gaps.push({ topic: tp.topic, remaining, target: tp.targetCount, current });
		}
	}

	// Check if section is complete
	if (gaps.length === 0 || gaps.every((g) => g.remaining < 10)) {
		console.error(`Section ${section.toUpperCase()} is complete or near-complete.`);
		if (gaps.length > 0) {
			console.error("Remaining gaps (< 10 each):");
			for (const g of gaps) {
				console.error(`  ${g.topic}: ${g.remaining} remaining`);
			}
		}
		// Output empty to signal completion
		console.log("[]");
		process.exit(0);
	}

	// Pick topic with largest gap
	gaps.sort((a, b) => b.remaining - a.remaining);
	const picked = gaps[0];

	// Find blueprint group for the picked topic to extract lesson mapping and frameworks
	let lessonSlugs: string[] = [];
	let frameworkItems: GroupFrameworkItems | null = null;

	const bpSection = cpaBlueprint.find((s) => s.code === section);
	if (bpSection) {
		for (const area of bpSection.areas) {
			for (const group of area.groups) {
				if (group.questionTopics.includes(picked.topic)) {
					lessonSlugs = group.lessonSlugs;
					frameworkItems = getFrameworkItemsForGroup(
						section,
						area.area,
						group.letter,
					);
					break;
				}
			}
			if (lessonSlugs.length > 0) break;
		}
	}

	// Determine actual batch count (min of batchSize and remaining)
	const count = Math.min(batchSize, picked.remaining);

	// Compute difficulty split
	const easy = Math.round(count * 0.30);
	const hard = Math.round(count * 0.20);
	const medium = count - easy - hard;

	// Compute Bloom's split
	const bt = BLOOMS_TARGETS[section] || BLOOMS_TARGETS.aud;
	const l1 = Math.round(count * bt.l1);
	const l3 = Math.round(count * bt.l3);
	const l4 = Math.round(count * bt.l4);
	const l2 = count - l1 - l3 - l4;

	// Get existing stems for dedup context
	const existingStems = stemsByTopic.get(picked.topic) || [];

	const batchSpec: BatchSpec = {
		section: section,
		sectionId: sectionPlan.sectionId,
		topic: picked.topic,
		count,
		difficulty: { easy, medium, hard },
		blooms: { l1, l2, l3, l4 },
		existingStems,
		citationPatterns: CITATION_PATTERNS[section] || "",
		lessonSlugs,
		frameworkItems,
	};

	// Output JSON to stdout
	console.log(JSON.stringify(batchSpec, null, 2));

	// Stats to stderr
	console.error(`\nSelected topic: "${picked.topic}" (${picked.current}/${picked.target}, ${picked.remaining} remaining)`);
	console.error(`Batch: ${count} questions (${easy}E/${medium}M/${hard}H, L1:${l1}/L2:${l2}/L3:${l3}/L4:${l4})`);
	console.error(`Existing stems for dedup: ${existingStems.length}`);
}

main();
