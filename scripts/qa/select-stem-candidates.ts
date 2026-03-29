// Select questions with short stems for scenario-style rewriting
// Usage: npx tsx scripts/qa/select-stem-candidates.ts --section=aud --count=50 [--max-words=20] [--exclude-ids=file.json]

import { readFileSync } from "fs";
import { resolve } from "path";
import { fetchAllQuestions } from "./db-client";
import { cpaBlueprint } from "../../src/lib/blueprint";
import { getFrameworkItemsForGroup, type GroupFrameworkItems } from "../../src/lib/blueprint-utils";

const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const countArg = parseInt(
	process.argv.find((a) => a.startsWith("--count="))?.split("=")[1] || "0",
);
const maxWords = parseInt(
	process.argv.find((a) => a.startsWith("--max-words="))?.split("=")[1] || "20",
);
const excludeFile = process.argv
	.find((a) => a.startsWith("--exclude-ids="))
	?.split("=")[1];

if (!sectionArg || !countArg) {
	console.error(
		"Usage: npx tsx scripts/qa/select-stem-candidates.ts --section=aud --count=50 [--max-words=20] [--exclude-ids=file.json]",
	);
	process.exit(1);
}

function countWords(text: string): number {
	return text.trim().split(/\s+/).filter(Boolean).length;
}

async function main() {
	// Load exclude IDs
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

	// Filter to short-stem L1/L2 questions (L3/L4 already have scenarios)
	const candidates = questions
		.filter((q) => {
			if (excludeIds.has(q.id)) return false;
			const level = q.cognitive_level ?? 0;
			// Only L1 and L2; null cognitive_level also included (legacy)
			if (level > 2) return false;
			const words = countWords(q.stem);
			return words <= maxWords;
		})
		.map((q) => ({
			id: q.id,
			stem: q.stem,
			stemWords: countWords(q.stem),
			choices: q.choices as string[],
			correct_index: q.correct_index,
			explanation: q.explanation,
			difficulty: q.difficulty,
			cognitive_level: q.cognitive_level,
			topic: q.topic,
		}))
		// Shortest stems first — most impactful rewrites
		.sort((a, b) => a.stemWords - b.stemWords);

	if (candidates.length === 0) {
		console.error(`No candidates found for ${sectionArg} with stems <= ${maxWords} words`);
		console.log("[]");
		process.exit(0);
	}

	// Build per-topic counts to enforce a cap (max 40% of topic's short stems per batch)
	const topicPool = new Map<string, typeof candidates>();
	for (const c of candidates) {
		if (!topicPool.has(c.topic)) topicPool.set(c.topic, []);
		topicPool.get(c.topic)!.push(c);
	}

	// Helper to find lesson/framework context for a topic
	const getTopicContext = (topic: string) => {
		let slugs: string[] = [];
		let items: GroupFrameworkItems | null = null;
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

	// Round-robin across topics, shortest first within each topic
	const selected: Array<{
		id: number;
		stem: string;
		stemWords: number;
		choices: string[];
		correct_index: number;
		explanation: string;
		difficulty: string;
		cognitive_level: number | null;
		topic: string;
		lessonSlugs: string[];
		frameworkItems: GroupFrameworkItems | null;
	}> = [];

	const usedIds = new Set<number>();
	let remaining = countArg;

	// Sort topics by pool size descending for proportional picking
	const sortedTopics = [...topicPool.entries()]
		.sort((a, b) => b[1].length - a[1].length);

	const totalPool = sortedTopics.reduce((s, [, pool]) => s + pool.length, 0);

	// First pass: proportional allocation
	for (const [topic, pool] of sortedTopics) {
		if (remaining <= 0) break;
		const proportion = Math.max(1, Math.round((pool.length / totalPool) * countArg));
		const cap = Math.min(proportion, Math.ceil(pool.length * 0.4), remaining);
		const context = getTopicContext(topic);

		for (let i = 0; i < cap && i < pool.length; i++) {
			const c = pool[i];
			if (!usedIds.has(c.id)) {
				selected.push({
					...c,
					lessonSlugs: context.slugs,
					frameworkItems: context.items,
				});
				usedIds.add(c.id);
				remaining--;
			}
		}
	}

	// Backfill if proportional rounding left us short
	if (remaining > 0) {
		for (const [topic, pool] of sortedTopics) {
			if (remaining <= 0) break;
			const context = getTopicContext(topic);
			for (const c of pool) {
				if (remaining <= 0) break;
				if (!usedIds.has(c.id)) {
					selected.push({
						...c,
						lessonSlugs: context.slugs,
						frameworkItems: context.items,
					});
					usedIds.add(c.id);
					remaining--;
				}
			}
		}
	}

	// Output
	console.log(JSON.stringify(selected, null, 2));
	console.error(
		`\nSelected ${selected.length} short-stem questions for rewrite (max ${maxWords} words)`,
	);
	console.error(`Total pool: ${candidates.length} candidates across ${topicPool.size} topics`);
	const topicCounts = new Map<string, number>();
	for (const s of selected) {
		topicCounts.set(s.topic, (topicCounts.get(s.topic) || 0) + 1);
	}
	for (const [topic, count] of [...topicCounts.entries()].sort(
		(a, b) => b[1] - a[1],
	)) {
		const pool = topicPool.get(topic)?.length || 0;
		console.error(`  ${topic}: ${count} selected (${pool} in pool)`);
	}
}

main();
