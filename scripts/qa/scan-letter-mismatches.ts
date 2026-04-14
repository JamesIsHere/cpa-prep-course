// Scan the live DB for questions where the "Correct (X):" letter in the explanation
// does not match the correct_index. This is the signature of the generator-pipeline
// pointer-misalignment bug: the scaffold pre-assigns both correct_index and the letter
// label, Claude writes content into whichever slot feels natural, and the letter label
// stays attached to whatever text ends up in the "Correct (X)" position.
//
// Output: per-section count of mismatches, plus a JSON dump of the offending IDs for
// follow-up fix migrations.

import { writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions } from "./db-client.js";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

// Extract the first "Correct (X):" letter from an explanation. Returns null if no match.
function extractCorrectLetter(explanation: string): string | null {
	const m = explanation.match(/Correct\s*\(([A-D])\)/i);
	return m ? m[1].toUpperCase() : null;
}

const INDEX_TO_LETTER = ["A", "B", "C", "D"];

async function main() {
	const sections = ["aud", "far", "reg", "bar", "isc", "tcp"] as const;

	const mismatches: Record<
		string,
		Array<{
			id: number;
			correct_index: number;
			expected_letter: string;
			found_letter: string;
			topic: string;
		}>
	> = {};
	const missingLabel: Record<string, number[]> = {};

	console.log("");
	console.log("LETTER/INDEX MISMATCH SCAN");
	console.log("===========================");
	console.log("");
	console.log(
		"Section | Total | Mismatches | Missing label | Mismatch %",
	);
	console.log(
		"--------|-------|------------|---------------|-----------",
	);

	let tTotal = 0,
		tMismatch = 0,
		tMissing = 0;

	for (const section of sections) {
		const questions = await fetchAllQuestions(section);
		const sectionMismatches: typeof mismatches[string] = [];
		const sectionMissing: number[] = [];

		for (const q of questions) {
			const expectedLetter = INDEX_TO_LETTER[q.correct_index];
			const foundLetter = extractCorrectLetter(q.explanation);
			if (!foundLetter) {
				sectionMissing.push(q.id);
				continue;
			}
			if (foundLetter !== expectedLetter) {
				sectionMismatches.push({
					id: q.id,
					correct_index: q.correct_index,
					expected_letter: expectedLetter,
					found_letter: foundLetter,
					topic: q.topic,
				});
			}
		}

		mismatches[section] = sectionMismatches;
		missingLabel[section] = sectionMissing;

		const pct =
			questions.length > 0
				? ((sectionMismatches.length / questions.length) * 100).toFixed(2)
				: "0.00";
		console.log(
			`${section.toUpperCase().padEnd(7)} | ${String(questions.length).padStart(
				5,
			)} | ${String(sectionMismatches.length).padStart(10)} | ${String(
				sectionMissing.length,
			).padStart(13)} | ${pct.padStart(9)}%`,
		);

		tTotal += questions.length;
		tMismatch += sectionMismatches.length;
		tMissing += sectionMissing.length;
	}

	console.log(
		"--------|-------|------------|---------------|-----------",
	);
	const totalPct = tTotal > 0 ? ((tMismatch / tTotal) * 100).toFixed(2) : "0.00";
	console.log(
		`TOTAL   | ${String(tTotal).padStart(5)} | ${String(tMismatch).padStart(
			10,
		)} | ${String(tMissing).padStart(13)} | ${totalPct.padStart(9)}%`,
	);
	console.log("");
	console.log("Legend:");
	console.log(
		"  Mismatches    = Correct (X) letter in explanation ≠ correct_index letter",
	);
	console.log(
		"  Missing label = explanation has no 'Correct (X):' prefix at all",
	);

	writeFileSync(
		resolve(repoRoot, "docs/trust-audit-letter-mismatches.json"),
		JSON.stringify({ mismatches, missingLabel }, null, 2),
	);
	console.log("");
	console.log(
		"Full details → docs/trust-audit-letter-mismatches.json",
	);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
