// Extract all stems for a specific topic to provide "Concept Diversity" context to the LLM
// Usage: npx tsx scripts/qa/extract-topic-stems.ts --section=aud --topic="Audit Evidence"

import { fetchAllQuestions } from "./db-client";

const sectionArg = process.argv.find((a) => a.startsWith("--section="))?.split("=")[1];
const topicArg = process.argv.find((a) => a.startsWith("--topic="))?.split("=")[1];

if (!sectionArg || !topicArg) {
	console.error("Usage: npx tsx scripts/qa/extract-topic-stems.ts --section=aud --topic=\"Audit Evidence\"");
	process.exit(1);
}

async function main() {
	const all = await fetchAllQuestions(sectionArg!);
	const topicStems = all
		.filter((q) => q.topic === topicArg)
		.map((q) => q.stem);

	// Output as JSON to stdout
	console.log(JSON.stringify(topicStems, null, 2));
}

main();
