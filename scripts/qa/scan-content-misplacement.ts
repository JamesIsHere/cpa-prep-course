// Scan for "content-in-wrong-slot" bugs: questions where the explanation's "Correct (X): ..."
// text semantically describes a different choice than the one at correct_index.
//
// Heuristic: extract the "Correct (X): <argument>" segment (up to the first "Wrong ("),
// tokenize it, compute Jaccard similarity against each of the four choices, and flag any
// question whose best-matching choice is NOT the one at correct_index — provided the
// margin between the best match and the keyed choice exceeds a threshold.
//
// This is noise-tolerant, not exact. A flagged question deserves manual review, not an
// automatic fix.

import { writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions, type DbQuestion } from "./db-client.js";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

const STOPWORDS = new Set([
	"the", "and", "for", "are", "but", "not", "you", "all", "can", "had",
	"her", "was", "one", "our", "out", "day", "get", "has", "him", "his",
	"how", "its", "may", "new", "now", "old", "see", "two", "way", "who",
	"boy", "did", "use", "man", "too", "any", "say", "she", "use", "her",
	"which", "that", "this", "with", "from", "have", "been", "will", "would",
	"could", "should", "were", "they", "them", "these", "those", "than",
	"when", "what", "where", "while", "because", "under", "over", "into",
	"each", "such", "only", "also", "does", "other", "then", "more", "most",
	"some", "much", "very", "just", "both", "many", "upon", "must", "same",
	"unless", "wrong", "correct", "answer", "choice", "option",
]);

function tokenize(s: string): Set<string> {
	return new Set(
		s
			.toLowerCase()
			.replace(/[^a-z0-9$%.,\s-]/g, " ")
			.split(/\s+/)
			.filter((w) => w.length > 2 && !STOPWORDS.has(w)),
	);
}

function jaccard(a: Set<string>, b: Set<string>): number {
	if (a.size === 0 || b.size === 0) return 0;
	let inter = 0;
	for (const x of a) if (b.has(x)) inter++;
	const union = a.size + b.size - inter;
	return union === 0 ? 0 : inter / union;
}

// Extract the "Correct (X): <text>" segment from an explanation — up to the first
// "Wrong (" marker or end of explanation.
function extractCorrectSegment(explanation: string): string | null {
	const startMatch = explanation.match(/Correct\s*\([A-D]\)\s*:/i);
	if (!startMatch) return null;
	const start = startMatch.index! + startMatch[0].length;
	const rest = explanation.slice(start);
	const endMatch = rest.match(/Wrong\s*\(/i);
	const end = endMatch ? endMatch.index! : rest.length;
	return rest.slice(0, end).trim();
}

const INDEX_TO_LETTER = ["A", "B", "C", "D"];

// Thresholds — conservative so we only flag clear cases.
const MIN_BEST_MATCH = 0.08; // max must exceed this to be considered meaningful
const MIN_MARGIN = 0.05;     // best match must beat keyed match by this much

interface Finding {
	id: number;
	section: string;
	topic: string;
	correct_index: number;
	keyed_letter: string;
	best_match_index: number;
	best_match_letter: string;
	keyed_similarity: number;
	best_similarity: number;
	margin: number;
	correct_segment: string;
	keyed_choice: string;
	best_choice: string;
}

async function main() {
	const sections = ["aud", "far", "reg", "bar", "isc", "tcp"] as const;
	const findings: Finding[] = [];
	const stats: Record<string, { total: number; flagged: number; noCorrect: number }> = {};

	console.log("");
	console.log("CONTENT-IN-WRONG-SLOT SCAN");
	console.log("===========================");
	console.log(
		"Heuristic: Jaccard similarity of 'Correct (X): ...' segment vs each choice.",
	);
	console.log(
		`Flag when best-match index != correct_index, best > ${MIN_BEST_MATCH}, margin > ${MIN_MARGIN}.`,
	);
	console.log("");
	console.log(
		"Section | Total | No Correct | Flagged | Flag %",
	);
	console.log(
		"--------|-------|------------|---------|-------",
	);

	let tTotal = 0, tNo = 0, tFlagged = 0;

	for (const section of sections) {
		const questions = await fetchAllQuestions(section);
		let noCorrect = 0;
		let flagged = 0;

		for (const q of questions) {
			const segment = extractCorrectSegment(q.explanation);
			if (!segment) {
				noCorrect++;
				continue;
			}
			const segmentTokens = tokenize(segment);
			const choiceTokens = q.choices.map((c) => tokenize(c));
			const sims = choiceTokens.map((ct) => jaccard(segmentTokens, ct));

			let bestIdx = 0;
			for (let i = 1; i < sims.length; i++) {
				if (sims[i] > sims[bestIdx]) bestIdx = i;
			}

			const keyedSim = sims[q.correct_index] ?? 0;
			const bestSim = sims[bestIdx];
			const margin = bestSim - keyedSim;

			if (
				bestIdx !== q.correct_index &&
				bestSim >= MIN_BEST_MATCH &&
				margin >= MIN_MARGIN
			) {
				flagged++;
				findings.push({
					id: q.id,
					section,
					topic: q.topic,
					correct_index: q.correct_index,
					keyed_letter: INDEX_TO_LETTER[q.correct_index],
					best_match_index: bestIdx,
					best_match_letter: INDEX_TO_LETTER[bestIdx],
					keyed_similarity: Number(keyedSim.toFixed(3)),
					best_similarity: Number(bestSim.toFixed(3)),
					margin: Number(margin.toFixed(3)),
					correct_segment: segment.slice(0, 200),
					keyed_choice: q.choices[q.correct_index] ?? "",
					best_choice: q.choices[bestIdx] ?? "",
				});
			}
		}

		stats[section] = { total: questions.length, flagged, noCorrect };
		tTotal += questions.length;
		tNo += noCorrect;
		tFlagged += flagged;
		const pct = questions.length > 0
			? ((flagged / questions.length) * 100).toFixed(2)
			: "0.00";
		console.log(
			`${section.toUpperCase().padEnd(7)} | ${String(questions.length).padStart(
				5,
			)} | ${String(noCorrect).padStart(10)} | ${String(flagged).padStart(7)} | ${pct.padStart(5)}%`,
		);
	}

	console.log(
		"--------|-------|------------|---------|-------",
	);
	const totalPct = tTotal > 0 ? ((tFlagged / tTotal) * 100).toFixed(2) : "0.00";
	console.log(
		`TOTAL   | ${String(tTotal).padStart(5)} | ${String(tNo).padStart(
			10,
		)} | ${String(tFlagged).padStart(7)} | ${totalPct.padStart(5)}%`,
	);
	console.log("");

	// Sort findings by descending margin — largest suspicion first.
	findings.sort((a, b) => b.margin - a.margin);

	writeFileSync(
		resolve(repoRoot, "docs/trust-audit-content-misplacement.json"),
		JSON.stringify({ stats, findings }, null, 2),
	);
	console.log(
		`Full findings → docs/trust-audit-content-misplacement.json`,
	);
	console.log("");
	console.log("Top 5 by suspicion margin:");
	for (const f of findings.slice(0, 5)) {
		console.log("");
		console.log(
			`  Q${f.id} (${f.section.toUpperCase()} / ${f.topic}) — keyed=${f.keyed_letter} (sim ${f.keyed_similarity}), best=${f.best_match_letter} (sim ${f.best_similarity}), margin=${f.margin}`,
		);
		console.log(`    Correct segment: ${f.correct_segment.slice(0, 100)}...`);
		console.log(`    Keyed choice:    ${f.keyed_choice.slice(0, 100)}`);
		console.log(`    Best choice:     ${f.best_choice.slice(0, 100)}`);
	}
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
