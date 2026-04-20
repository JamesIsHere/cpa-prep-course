// Report which question IDs in a section have and do not have classifier suggestions.
// Usage: npx tsx scripts/qa/check-classifier-coverage.ts --section=far

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
	const dbIds = questions.map((q) => q.id);

	const unclassified = dbIds.filter((id) => !classified.has(id));
	const stale = [...classified].filter((id) => !dbIds.includes(id));

	console.log(`Section: ${section.toUpperCase()}`);
	console.log(`DB question count: ${dbIds.length}`);
	console.log(
		`classify-${section}.json count: ${classify.suggestions.length}`,
	);
	console.log(`Unclassified (DB not in classifier): ${unclassified.length}`);
	console.log(
		`Stale (in classifier but not in DB — deleted questions): ${stale.length}`,
	);
	if (unclassified.length && unclassified.length <= 20) {
		console.log(`Unclassified IDs: ${unclassified.join(",")}`);
	} else if (unclassified.length) {
		console.log(
			`First 20 unclassified IDs: ${unclassified.slice(0, 20).join(",")}...`,
		);
		console.log(`Last 20 unclassified IDs: ${unclassified.slice(-20).join(",")}`);
	}
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
