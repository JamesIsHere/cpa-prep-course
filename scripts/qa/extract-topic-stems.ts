// Fetch all existing stems for a topic as compact JSON array (dedup context for Claude)
// Usage: npx tsx scripts/qa/extract-topic-stems.ts --section=aud --topic="Ethics and Independence"

import { fetchAllQuestions } from "./db-client";

const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const topicArg = process.argv
	.find((a) => a.startsWith("--topic="))
	?.split("=")[1];

if (!sectionArg || !topicArg) {
	console.error(
		'Usage: npx tsx scripts/qa/extract-topic-stems.ts --section=aud --topic="Ethics and Independence"',
	);
	process.exit(1);
}

async function main() {
	const questions = await fetchAllQuestions(sectionArg!);

	const stems = questions
		.filter((q) => q.topic === topicArg)
		.map((q) => q.stem);

	// Output compact JSON array to stdout (no choices/explanations — minimizes context)
	console.log(JSON.stringify(stems));

	console.error(`\nExtracted ${stems.length} stems for "${topicArg}" (${sectionArg!.toUpperCase()})`);
}

main();
