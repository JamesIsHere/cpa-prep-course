// Count moderate-quality questions (score 4-6) per topic across all sections
// Usage: npx tsx scripts/qa/count-all-moderate.ts

import { fetchAllQuestions } from "./db-client";
import { scoreQuestion } from "./analyzers/quality";

async function main() {
	const allData = await fetchAllQuestions();
	console.error(`Fetched ${allData.length} total questions`);

	const topicCounts: Record<string, { moderate: number; total: number }> = {};

	for (const q of allData) {
		const result = scoreQuestion(q);
		if (!topicCounts[q.topic]) topicCounts[q.topic] = { moderate: 0, total: 0 };
		topicCounts[q.topic].total++;
		if (result.score >= 4 && result.score <= 6) topicCounts[q.topic].moderate++;
	}

	const sorted = Object.entries(topicCounts)
		.filter(([, v]) => v.moderate > 0)
		.sort((a, b) => b[1].moderate - a[1].moderate);

	let totalModerate = 0;
	console.log("Topic                                        | Mod | Total");
	console.log("---------------------------------------------|-----|------");
	for (const [topic, counts] of sorted) {
		totalModerate += counts.moderate;
		console.log(
			`${topic.padEnd(45)}| ${String(counts.moderate).padStart(3)} | ${counts.total}`,
		);
	}
	console.log(`\nTotal moderate: ${totalModerate} / ${allData.length}`);
}

main();
