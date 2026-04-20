// Emit the comma-separated unclassified question IDs for a section.
// Usage: npx tsx scripts/qa/emit-unclassified-ids.ts --section=far

import { readFileSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions } from "./db-client";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "../..");
const section = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
if (!section) {
	console.error("Usage: --section=<code>");
	process.exit(1);
}

async function main() {
	const classify = JSON.parse(
		readFileSync(resolve(root, `docs/classify-${section}.json`), "utf-8"),
	);
	const classified = new Set<number>(
		(classify.suggestions as { question_id: number }[]).map(
			(s) => s.question_id,
		),
	);
	const questions = await fetchAllQuestions(section);
	const unclassified = questions
		.map((q) => q.id)
		.filter((id) => !classified.has(id));
	console.error(`${unclassified.length} unclassified IDs for ${section}`);
	console.log(unclassified.join(","));
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
