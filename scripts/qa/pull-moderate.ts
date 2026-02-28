// Pull moderate-quality questions for a specific topic
// Usage: npx tsx scripts/qa/pull-moderate.ts "State and Local Government Reporting"

import { supabase, type DbQuestion } from "./db-client";
import { scoreQuestion } from "./analyzers/quality";

async function main() {
	const topic = process.argv[2] || "State and Local Government Reporting";

	const { data, error } = await supabase
		.from("questions")
		.select(
			"id, section_id, topic, difficulty, stem, choices, correct_index, explanation, cognitive_level",
		)
		.eq("topic", topic)
		.order("id");

	if (error) {
		console.error(error);
		process.exit(1);
	}

	console.log(`Topic: ${topic} (${data.length} total questions)\n`);

	let moderateCount = 0;
	for (const q of data as DbQuestion[]) {
		const result = scoreQuestion(q);
		if (result.score >= 4 && result.score <= 6) {
			moderateCount++;
			console.log("---");
			console.log(
				`Q${q.id} [score:${result.score}] [${q.difficulty}] flags: ${result.flags.join(", ")}`,
			);
			console.log(`STEM: ${q.stem}`);
			console.log(`CHOICES: ${JSON.stringify(q.choices)}`);
			console.log(`CORRECT: ${q.correct_index}`);
			console.log(`EXPLANATION: ${q.explanation}`);
		}
	}
	console.log(`\n--- ${moderateCount} moderate questions found ---`);
}

main();
