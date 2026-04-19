// Spot-check: print sample homeless questions from a given topic.
// Usage: npx tsx scripts/qa/sample-homeless.ts --section=aud --topic="Analytical Procedures" --n=5

import { readFileSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions } from "./db-client.ts";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "../..");

const args = process.argv.slice(2);
const section = args.find((a) => a.startsWith("--section="))?.split("=")[1];
const topic = args.find((a) => a.startsWith("--topic="))?.split("=")[1];
const n = parseInt(
	args.find((a) => a.startsWith("--n="))?.split("=")[1] ?? "5",
);
if (!section || !topic) {
	console.error('Usage: --section=aud --topic="..." --n=5');
	process.exit(1);
}

const classifyPath = resolve(root, `docs/classify-${section}.json`);
const classify = JSON.parse(readFileSync(classifyPath, "utf-8"));
const idToRationale = new Map<number, string>();
for (const s of classify.suggestions as {
	question_id: number;
	pin_ref: string | null;
	rationale: string;
}[]) {
	if (!s.pin_ref) idToRationale.set(s.question_id, s.rationale);
}

async function main() {
	const questions = await fetchAllQuestions(section);
	const homeless = questions
		.filter((q) => q.topic === topic && idToRationale.has(q.id))
		.slice(0, n);

	for (const q of homeless) {
		console.log(`--- #${q.id} (difficulty=${q.difficulty}, blooms=${q.cognitive_level}) ---`);
		console.log(`STEM: ${q.stem}`);
		console.log(`CORRECT (${q.correct_index}): ${q.choices[q.correct_index]}`);
		console.log(`CLASSIFIER RATIONALE: ${idToRationale.get(q.id)}`);
		console.log();
	}
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
