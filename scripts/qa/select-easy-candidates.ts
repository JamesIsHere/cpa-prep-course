// Select easy questions for difficulty rebalancing (easy→medium rewrites)
// Usage: npx tsx scripts/qa/select-easy-candidates.ts --section=isc --count=50 [--floor=20] [--exclude-ids=file.json]

import { readFileSync } from "fs";
import { resolve } from "path";
import { fetchAllQuestions } from "./db-client";
import { cpaBlueprint } from "../../src/lib/blueprint";
import { getFrameworkItemsForGroup } from "../../src/lib/blueprint-utils";

const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const countArg = parseInt(
	process.argv.find((a) => a.startsWith("--count="))?.split("=")[1] || "0",
);
const floorPct = parseInt(
	process.argv.find((a) => a.startsWith("--floor="))?.split("=")[1] || "20",
);
const excludeFile = process.argv
	.find((a) => a.startsWith("--exclude-ids="))
	?.split("=")[1];

if (!sectionArg || !countArg) {
	console.error(
		"Usage: npx tsx scripts/qa/select-easy-candidates.ts --section=isc --count=50 [--floor=20] [--exclude-ids=file.json]",
	);
	process.exit(1);
}

interface Candidate {
	id: number;
	stem: string;
	choices: string[];
	correct_index: number;
	explanation: string;
	difficulty: string;
	topic: string;
	cognitive_level: number | null;
	lessonSlugs: string[];
	frameworkItems: any;
}

async function main() {
	// ... existing exclude IDs logic ...
	const excludeIds = new Set<number>();
	if (excludeFile) {
		try {
			const raw = readFileSync(resolve(process.cwd(), excludeFile), "utf-8");
			const ids: number[] = JSON.parse(raw);
			for (const id of ids) excludeIds.add(id);
			console.error(`Excluding ${excludeIds.size} IDs from ${excludeFile}`);
		} catch {
			console.error(`Warning: Could not load exclude file: ${excludeFile}`);
		}
	}

	const questions = await fetchAllQuestions(sectionArg!);

	// Helper to find lesson/framework for a topic
	const getTopicContext = (topic: string) => {
		let slugs: string[] = [];
		let items: any = null;
		const bpSection = cpaBlueprint.find((s) => s.code === sectionArg);
		if (bpSection) {
			for (const area of bpSection.areas) {
				for (const group of area.groups) {
					if (group.questionTopics.includes(topic)) {
						slugs = group.lessonSlugs;
						items = getFrameworkItemsForGroup(
							sectionArg!,
							area.area,
							group.letter,
						);
						break;
					}
				}
				if (slugs.length > 0) break;
			}
		}
		return { slugs, items };
	};

	// Build per-topic counts
	const topicTotal = new Map<string, number>();
	const topicEasyQuestions = new Map<string, any[]>();

	for (const q of questions) {
		topicTotal.set(q.topic, (topicTotal.get(q.topic) || 0) + 1);
		if (q.difficulty === "easy" && !excludeIds.has(q.id)) {
			if (!topicEasyQuestions.has(q.topic)) topicEasyQuestions.set(q.topic, []);
			topicEasyQuestions.get(q.topic)!.push(q);
		}
	}

	// Calculate available candidates per topic (keep floor% easy)
	const topicRoom = new Map<string, number>();
	for (const [topic, total] of topicTotal) {
		const easyCount = topicEasyQuestions.get(topic)?.length || 0;
		const floorCount = Math.ceil(total * (floorPct / 100));
		const available = Math.max(0, easyCount - floorCount);
		topicRoom.set(topic, available);
	}

	// Sort topics by room descending, pick proportionally
	const sortedTopics = [...topicRoom.entries()]
		.filter(([, room]) => room > 0)
		.sort((a, b) => b[1] - a[1]);

	const totalRoom = sortedTopics.reduce((s, [, r]) => s + r, 0);
	const selected: Candidate[] = [];
	let remaining = Math.min(countArg, totalRoom);

	// Round-robin: pick proportionally from each topic
	for (const [topic, room] of sortedTopics) {
		if (remaining <= 0) break;
		const proportion = Math.max(1, Math.round((room / totalRoom) * countArg));
		const pick = Math.min(proportion, room, remaining);
		const candidates = topicEasyQuestions.get(topic) || [];
		const context = getTopicContext(topic);

		for (let i = 0; i < pick && i < candidates.length; i++) {
			const c = candidates[i];
			selected.push({
				id: c.id,
				stem: c.stem,
				choices: c.choices as string[],
				correct_index: c.correct_index,
				explanation: c.explanation,
				difficulty: c.difficulty,
				topic: c.topic,
				cognitive_level: c.cognitive_level,
				lessonSlugs: context.slugs,
				frameworkItems: context.items,
			});
			remaining--;
		}
	}

	// If we didn't get enough (rounding), fill from topics with most room
	if (remaining > 0) {
		const usedIds = new Set(selected.map((s) => s.id));
		for (const [topic] of sortedTopics) {
			if (remaining <= 0) break;
			const candidates = topicEasyQuestions.get(topic) || [];
			const context = getTopicContext(topic);
			const floorCount = Math.ceil(
				(topicTotal.get(topic) || 0) * (floorPct / 100),
			);
			let topicSelected = selected.filter((s) => s.topic === topic).length;
			const topicEasyCount = candidates.length;
			for (const c of candidates) {
				if (remaining <= 0) break;
				if (topicEasyCount - topicSelected <= floorCount) break;
				if (!usedIds.has(c.id)) {
					selected.push({
						id: c.id,
						stem: c.stem,
						choices: c.choices as string[],
						correct_index: c.correct_index,
						explanation: c.explanation,
						difficulty: c.difficulty,
						topic: c.topic,
						cognitive_level: c.cognitive_level,
						lessonSlugs: context.slugs,
						frameworkItems: context.items,
					});
					usedIds.add(c.id);
					remaining--;
					topicSelected++;
				}
			}
		}
	}

	// Output JSON to stdout
	console.log(JSON.stringify(selected, null, 2));

	// Stats to stderr
	console.error(
		`\nSelected ${selected.length} easy questions for medium rewrite (${sectionArg!.toUpperCase()})`,
	);
	console.error(`  Floor: ${floorPct}% easy retained per topic`);

	const topicCounts = new Map<string, number>();
	for (const s of selected) {
		topicCounts.set(s.topic, (topicCounts.get(s.topic) || 0) + 1);
	}

	const easyTotal = [...topicEasyQuestions.values()].reduce(
		(s, arr) => s + arr.length,
		0,
	);
	const easyAfter = easyTotal - selected.length;
	const totalQ = questions.length;
	console.error(
		`  Easy before: ${easyTotal}/${totalQ} (${((easyTotal / totalQ) * 100).toFixed(0)}%)`,
	);
	console.error(
		`  Easy after:  ${easyAfter}/${totalQ} (${((easyAfter / totalQ) * 100).toFixed(0)}%)`,
	);
	console.error(`\n  Per-topic breakdown:`);
	for (const [topic, count] of [...topicCounts.entries()].sort(
		(a, b) => b[1] - a[1],
	)) {
		const topicE = topicEasyQuestions.get(topic)?.length || 0;
		const topicT = topicTotal.get(topic) || 0;
		console.error(
			`    ${topic}: ${count} selected (${topicE - count}/${topicT} easy remain = ${(((topicE - count) / topicT) * 100).toFixed(0)}%)`,
		);
	}
}

main();
