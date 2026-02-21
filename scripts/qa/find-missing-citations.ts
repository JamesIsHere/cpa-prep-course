// Find questions with explanations lacking standard citations
// Usage: npx tsx scripts/qa/find-missing-citations.ts --section=aud --count=100 [--exclude-ids=file.json]

import { readFileSync } from "fs";
import { resolve } from "path";
import { fetchAllQuestions } from "./db-client";

const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const countArg = parseInt(
	process.argv.find((a) => a.startsWith("--count="))?.split("=")[1] || "100",
);
const excludeFile = process.argv
	.find((a) => a.startsWith("--exclude-ids="))
	?.split("=")[1];

if (!sectionArg) {
	console.error(
		"Usage: npx tsx scripts/qa/find-missing-citations.ts --section=aud --count=100 [--exclude-ids=file.json]",
	);
	process.exit(1);
}

// Standard citation pattern — same as quality.ts and validate-migration.ts
const STANDARD_PATTERN =
	/\b(AU-C|ASC|IRC|FASB|GASB|SSARS|AT-C|SAS|PCAOB|Sec\.|Section|SQMS|SSAE)\b/i;

async function main() {
	// Load exclude IDs if provided
	const excludeIds = new Set<number>();
	if (excludeFile) {
		try {
			const raw = readFileSync(resolve(process.cwd(), excludeFile), "utf-8");
			const ids: number[] = JSON.parse(raw);
			for (const id of ids) excludeIds.add(id);
			console.error(`Excluding ${excludeIds.size} IDs from ${excludeFile}`);
		} catch (err) {
			console.error(`Warning: Could not load exclude file: ${excludeFile}`);
		}
	}

	const questions = await fetchAllQuestions(sectionArg!);

	// Filter to questions missing citations
	const missing = questions.filter(
		(q) => !STANDARD_PATTERN.test(q.explanation) && !excludeIds.has(q.id),
	);

	// Select up to count, spread across topics
	const byTopic = new Map<string, typeof missing>();
	for (const q of missing) {
		if (!byTopic.has(q.topic)) byTopic.set(q.topic, []);
		byTopic.get(q.topic)!.push(q);
	}

	const sortedTopics = [...byTopic.entries()].sort(
		(a, b) => b[1].length - a[1].length,
	);

	const totalMissing = missing.length;
	const selected: Array<{
		id: number;
		stem: string;
		explanation: string;
		difficulty: string;
		topic: string;
		cognitive_level: number | null;
	}> = [];
	let remaining = Math.min(countArg, totalMissing);

	// Round-robin proportional selection
	for (const [topic, items] of sortedTopics) {
		if (remaining <= 0) break;
		const proportion = Math.max(
			1,
			Math.round((items.length / totalMissing) * countArg),
		);
		const pick = Math.min(proportion, items.length, remaining);
		for (let i = 0; i < pick; i++) {
			const q = items[i];
			selected.push({
				id: q.id,
				stem: q.stem,
				explanation: q.explanation,
				difficulty: q.difficulty,
				topic: q.topic,
				cognitive_level: q.cognitive_level,
			});
			remaining--;
		}
	}

	// Fill remainder
	if (remaining > 0) {
		const usedIds = new Set(selected.map((s) => s.id));
		for (const [, items] of sortedTopics) {
			if (remaining <= 0) break;
			for (const q of items) {
				if (remaining <= 0) break;
				if (!usedIds.has(q.id)) {
					selected.push({
						id: q.id,
						stem: q.stem,
						explanation: q.explanation,
						difficulty: q.difficulty,
						topic: q.topic,
						cognitive_level: q.cognitive_level,
					});
					usedIds.add(q.id);
					remaining--;
				}
			}
		}
	}

	// Output JSON to stdout
	console.log(JSON.stringify(selected, null, 2));

	// Stats to stderr
	console.error(
		`\nCitation gap: ${totalMissing}/${questions.length} questions lack standard citations (${sectionArg!.toUpperCase()})`,
	);
	console.error(`Selected ${selected.length} for citation backfill`);

	const topicCounts = new Map<string, number>();
	for (const s of selected) {
		topicCounts.set(s.topic, (topicCounts.get(s.topic) || 0) + 1);
	}
	for (const [topic, count] of [...topicCounts.entries()].sort(
		(a, b) => b[1] - a[1],
	)) {
		const topicMissing = byTopic.get(topic)?.length || 0;
		console.error(
			`  ${topic}: ${count} selected (${topicMissing} total missing)`,
		);
	}
}

main();
