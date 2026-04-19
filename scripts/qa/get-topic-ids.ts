// Print comma-separated question IDs for one or more topics in a section.
// Usage: npx tsx scripts/qa/get-topic-ids.ts --section=aud --topics="Analytical Procedures,Specific Areas and Transactions"

import { fetchAllQuestions } from "./db-client.ts";

const args = process.argv.slice(2);
const section = args.find((a) => a.startsWith("--section="))?.split("=")[1];
const topics = args
	.find((a) => a.startsWith("--topics="))
	?.split("=")[1]
	?.split(",");
if (!section || !topics) {
	console.error(
		'Usage: --section=aud --topics="Topic 1,Topic 2"',
	);
	process.exit(1);
}

async function main() {
	const questions = await fetchAllQuestions(section);
	const set = new Set(topics);
	const ids = questions.filter((q) => set.has(q.topic)).map((q) => q.id);
	console.error(`${ids.length} questions across ${topics!.length} topics`);
	console.log(ids.join(","));
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
