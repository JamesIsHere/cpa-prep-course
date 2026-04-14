// Content misplacement scan, v2 — false-positive resistant.
//
// v1 used Jaccard (intersection / union) over single tokens. Spot-check on the top 10
// findings showed two failure patterns:
//
//   1. Short correct answer ("Service cost only" — 3 tokens). The explanation describes
//      what's EXCLUDED from the rule, which has more tokens than the correct choice. Jaccard
//      penalizes the short choice because |union| is dominated by the explanation.
//
//   2. Contrast text leakage. The explanation correctly affirms the right choice but
//      mentions the contrast ("...not significant deficiencies or material weaknesses..."),
//      which boosts token overlap with the wrong-choice content that defines the contrast.
//
// v2 changes:
//
//   A. **Overlap coefficient** (|A∩B| / min(|A|, |B|)) instead of Jaccard. Short choices
//      with strong matches get a fair score; long distractors with shallow matches don't.
//
//   B. **Unique-token scoring**. For each choice, compute the tokens unique to it (not in
//      any other choice). Count how many of those unique tokens appear in the Correct
//      segment. This captures "explanation describes what's distinctive about choice X"
//      without being fooled by shared/contrast vocabulary.
//
//   C. **Ensemble**: a question is flagged only if (overlap coefficient AND unique-token)
//      both agree that a non-keyed choice is the better match. This kills FPs from either
//      heuristic individually.
//
//   D. **Negation truncation**. Within the assertion phase, drop everything after a strong
//      negation marker ("not significant", "rather than", "unlike", "instead of") so the
//      contrast tokens don't pollute the score. (Optional, less aggressive than dropping
//      whole sentences.)
//
// Output is the same JSON shape as v1, plus per-strategy scores for diagnostic comparison.

import { writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions } from "./db-client.js";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

const STOPWORDS = new Set([
	"the", "and", "for", "are", "but", "not", "you", "all", "can", "had",
	"her", "was", "one", "our", "out", "day", "get", "has", "him", "his",
	"how", "its", "may", "new", "now", "old", "see", "two", "way", "who",
	"any", "say", "she",
	"which", "that", "this", "with", "from", "have", "been", "will", "would",
	"could", "should", "were", "they", "them", "these", "those", "than",
	"when", "what", "where", "while", "because", "under", "over", "into",
	"each", "such", "only", "also", "does", "other", "then", "more", "most",
	"some", "much", "very", "just", "both", "many", "upon", "must", "same",
	"unless", "wrong", "correct", "answer", "choice", "option",
	"a", "an", "in", "of", "to", "is", "or", "as", "by", "on", "at", "be",
	"if", "it", "no", "so", "we",
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

// Truncate the segment at the first contrast marker so distractor-comparison vocabulary
// doesn't pollute the assertion score. Only use markers that unambiguously introduce
// contrast — NOT generic "not <word>" patterns, because phrases like "matters not presented
// or disclosed" are part of an affirmative rule, not a comparison against a wrong choice.
function truncateAtNegation(s: string): string {
	const markers = [
		/\brather than\b/i,
		/\bunlike\b/i,
		/\binstead of\b/i,
		/\bas opposed to\b/i,
		/\bin contrast\b/i,
		/\bwhereas\b/i,
		/\bnot because\b/i,
	];
	let earliest = s.length;
	for (const re of markers) {
		const m = s.match(re);
		if (m && m.index !== undefined && m.index < earliest) earliest = m.index;
	}
	return s.slice(0, earliest).trim();
}

function overlapCoef(a: Set<string>, b: Set<string>): number {
	if (a.size === 0 || b.size === 0) return 0;
	let inter = 0;
	for (const x of a) if (b.has(x)) inter++;
	const denom = Math.min(a.size, b.size);
	return denom === 0 ? 0 : inter / denom;
}

// Tokens unique to a choice: in this choice's set but in NONE of the others.
function uniqueTokens(choices: Set<string>[], idx: number): Set<string> {
	const mine = choices[idx];
	const others = new Set<string>();
	for (let i = 0; i < choices.length; i++) {
		if (i === idx) continue;
		for (const t of choices[i]) others.add(t);
	}
	const result = new Set<string>();
	for (const t of mine) if (!others.has(t)) result.add(t);
	return result;
}

function uniqueTokenScore(
	uniqueSet: Set<string>,
	segmentTokens: Set<string>,
): number {
	if (uniqueSet.size === 0) return 0;
	let hits = 0;
	for (const t of uniqueSet) if (segmentTokens.has(t)) hits++;
	return hits / uniqueSet.size;
}

function extractCorrectSegment(explanation: string): string | null {
	const startMatch = explanation.match(/Correct\s*\(([A-D])\)\s*:/i);
	if (!startMatch) return null;
	const start = startMatch.index! + startMatch[0].length;
	const rest = explanation.slice(start);
	const endMatch = rest.match(/Wrong\s*\(/i);
	const end = endMatch ? endMatch.index! : rest.length;
	return rest.slice(0, end).trim();
}

const INDEX_TO_LETTER = ["A", "B", "C", "D"];

// Thresholds — both heuristics must agree.
const MIN_OVERLAP_BEST = 0.20;     // best overlap coefficient must clear this
const MIN_OVERLAP_MARGIN = 0.15;   // best - keyed (overlap coef)
const MIN_UNIQUE_BEST = 0.25;      // best unique-token score must clear this
const MIN_UNIQUE_MARGIN = 0.20;    // best - keyed (unique-token score)

interface Finding {
	id: number;
	section: string;
	topic: string;
	correct_index: number;
	keyed_letter: string;
	best_index: number;
	best_letter: string;
	overlap_keyed: number;
	overlap_best: number;
	overlap_margin: number;
	unique_keyed: number;
	unique_best: number;
	unique_margin: number;
	correct_segment: string;
	keyed_choice: string;
	best_choice: string;
}

async function main() {
	const sections = ["aud", "far", "reg", "bar", "isc", "tcp"] as const;
	const findings: Finding[] = [];
	const stats: Record<string, { total: number; flagged: number; noCorrect: number }> = {};

	console.log("");
	console.log("CONTENT MISPLACEMENT SCAN — v2 (FP-resistant)");
	console.log("==============================================");
	console.log(
		"Ensemble: overlap coefficient (truncated at negation) + choice-unique-token score.",
	);
	console.log(
		`Flag iff overlap-best > ${MIN_OVERLAP_BEST} AND overlap-margin > ${MIN_OVERLAP_MARGIN} AND unique-best > ${MIN_UNIQUE_BEST} AND unique-margin > ${MIN_UNIQUE_MARGIN}.`,
	);
	console.log("");
	console.log("Section | Total | No Correct | Flagged | Flag %");
	console.log("--------|-------|------------|---------|-------");

	let tTotal = 0, tNo = 0, tFlagged = 0;

	for (const section of sections) {
		const questions = await fetchAllQuestions(section);
		let noCorrect = 0;
		let flagged = 0;

		for (const q of questions) {
			const fullSegment = extractCorrectSegment(q.explanation);
			if (!fullSegment) {
				noCorrect++;
				continue;
			}
			const truncated = truncateAtNegation(fullSegment);
			const segmentTokens = tokenize(truncated);

			const choiceTokens = q.choices.map((c) => tokenize(c));
			const uniqueSets = choiceTokens.map((_, i) => uniqueTokens(choiceTokens, i));

			const overlapScores = choiceTokens.map((ct) => overlapCoef(segmentTokens, ct));
			const uniqueScores = uniqueSets.map((us) => uniqueTokenScore(us, segmentTokens));

			let bestOverlapIdx = 0;
			let bestUniqueIdx = 0;
			for (let i = 1; i < overlapScores.length; i++) {
				if (overlapScores[i] > overlapScores[bestOverlapIdx]) bestOverlapIdx = i;
				if (uniqueScores[i] > uniqueScores[bestUniqueIdx]) bestUniqueIdx = i;
			}

			// Both heuristics must agree on the same non-keyed best, and both must clear margins.
			if (
				bestOverlapIdx === bestUniqueIdx &&
				bestOverlapIdx !== q.correct_index &&
				overlapScores[bestOverlapIdx] >= MIN_OVERLAP_BEST &&
				overlapScores[bestOverlapIdx] - overlapScores[q.correct_index] >= MIN_OVERLAP_MARGIN &&
				uniqueScores[bestOverlapIdx] >= MIN_UNIQUE_BEST &&
				uniqueScores[bestOverlapIdx] - uniqueScores[q.correct_index] >= MIN_UNIQUE_MARGIN
			) {
				flagged++;
				findings.push({
					id: q.id,
					section,
					topic: q.topic,
					correct_index: q.correct_index,
					keyed_letter: INDEX_TO_LETTER[q.correct_index],
					best_index: bestOverlapIdx,
					best_letter: INDEX_TO_LETTER[bestOverlapIdx],
					overlap_keyed: Number(overlapScores[q.correct_index].toFixed(3)),
					overlap_best: Number(overlapScores[bestOverlapIdx].toFixed(3)),
					overlap_margin: Number(
						(overlapScores[bestOverlapIdx] - overlapScores[q.correct_index]).toFixed(3),
					),
					unique_keyed: Number(uniqueScores[q.correct_index].toFixed(3)),
					unique_best: Number(uniqueScores[bestOverlapIdx].toFixed(3)),
					unique_margin: Number(
						(uniqueScores[bestOverlapIdx] - uniqueScores[q.correct_index]).toFixed(3),
					),
					correct_segment: truncated.slice(0, 200),
					keyed_choice: q.choices[q.correct_index] ?? "",
					best_choice: q.choices[bestOverlapIdx] ?? "",
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

	console.log("--------|-------|------------|---------|-------");
	const totalPct = tTotal > 0 ? ((tFlagged / tTotal) * 100).toFixed(2) : "0.00";
	console.log(
		`TOTAL   | ${String(tTotal).padStart(5)} | ${String(tNo).padStart(
			10,
		)} | ${String(tFlagged).padStart(7)} | ${totalPct.padStart(5)}%`,
	);
	console.log("");

	findings.sort((a, b) => b.overlap_margin + b.unique_margin - (a.overlap_margin + a.unique_margin));

	writeFileSync(
		resolve(repoRoot, "docs/trust-audit-content-misplacement-v2.json"),
		JSON.stringify({ stats, findings, thresholds: { MIN_OVERLAP_BEST, MIN_OVERLAP_MARGIN, MIN_UNIQUE_BEST, MIN_UNIQUE_MARGIN } }, null, 2),
	);
	console.log(`Full findings → docs/trust-audit-content-misplacement-v2.json`);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
