import { supabase } from "./db-client";

async function main() {
	const ids = process.argv.slice(2).map(Number);
	if (ids.length === 0) {
		console.error("Usage: npx tsx scripts/qa/fetch-questions.ts 725 735 ...");
		process.exit(1);
	}

	const { data, error } = await supabase
		.from("questions")
		.select(
			"id, section_id, topic, difficulty, stem, choices, correct_index, explanation",
		)
		.in("id", ids)
		.order("id");

	if (error) {
		console.error(error);
		process.exit(1);
	}

	for (const q of data!) {
		console.log("===");
		console.log(
			`ID: ${q.id} | Topic: ${q.topic} | Difficulty: ${q.difficulty}`,
		);
		console.log(`Stem: ${q.stem}`);
		console.log(`Choices: ${JSON.stringify(q.choices)}`);
		console.log(`Correct: ${q.correct_index} (${q.choices[q.correct_index]})`);
		console.log(`Explanation: ${q.explanation}`);
	}
}

main();
