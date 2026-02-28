// Pull all moderate-quality questions across all sections with full details
// Usage: npx tsx scripts/qa/pull-moderate-batch.ts

import { fetchAllQuestions } from "./db-client";
import { scoreQuestion } from "./analyzers/quality";

async function main() {
	const allQuestions = await fetchAllQuestions();
	console.error(`Fetched ${allQuestions.length} total questions`);

	const allModerate: Array<{
		id: number;
		topic: string;
		difficulty: string;
		cognitive_level: number | null;
		score: number;
		flags: string[];
		question: string;
		option_a: string;
		option_b: string;
		option_c: string;
		option_d: string;
		correct_answer: string;
		explanation: string;
	}> = [];

	for (const q of allQuestions) {
		const result = scoreQuestion(q);
		if (result.score >= 4 && result.score <= 6) {
			allModerate.push({
				id: q.id,
				topic: q.topic,
				difficulty: q.difficulty,
				cognitive_level: q.cognitive_level,
				score: result.score,
				flags: result.flags,
				question: q.stem,
				option_a: q.choices[0],
				option_b: q.choices[1],
				option_c: q.choices[2],
				option_d: q.choices[3],
				correct_answer: ["A", "B", "C", "D"][q.correct_index],
				explanation: q.explanation,
			});
		}
	}

	console.error(`Total moderate questions: ${allModerate.length}\n`);

	// Output as JSON for processing
	console.log(JSON.stringify(allModerate, null, 2));
}

main();
