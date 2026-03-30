/**
 * Detect review issues #3 (incomplete explanations) and #6 (label mismatches)
 * across all questions. Read-only — reports counts, no DB changes.
 *
 * Usage:
 *   npx tsx scripts/qa/detect-review-issues.ts
 *   npx tsx scripts/qa/detect-review-issues.ts --section=aud
 *   npx tsx scripts/qa/detect-review-issues.ts --verbose
 */

import { fetchAllQuestions, type DbQuestion } from "./db-client";

const sectionArg = process.argv.find(a => a.startsWith("--section="))?.split("=")[1];
const verbose = process.argv.includes("--verbose");

// ─── Issue #3: Incomplete explanations ─────────────────────────
// Check that explanation addresses all 4 choices (correct + 3 wrong)
function checkIncompleteExplanation(q: DbQuestion): string | null {
	const expl = q.explanation || "";

	// Look for per-choice explanation patterns
	const labels = ["A", "B", "C", "D"];
	const correctLabel = labels[q.correct_index];

	// Check for "Wrong (X)" or "Incorrect (X)" or "(X) is wrong/incorrect"
	const missingWrong: string[] = [];
	for (const label of labels) {
		if (label === correctLabel) continue;
		const hasWrong = new RegExp(
			`Wrong\\s*\\(?${label}\\)?|Incorrect\\s*\\(?${label}\\)?|\\(?${label}\\)?\\s*is\\s*(wrong|incorrect)|Choice\\s+${label}\\s+is\\s+(wrong|incorrect)`,
			"im"
		).test(expl);
		if (!hasWrong) missingWrong.push(label);
	}

	if (missingWrong.length > 0) {
		return `Missing explanation for: ${missingWrong.join(", ")}`;
	}
	return null;
}

// ─── Issue #6: Explanation/choice label mismatch ───────────────
// Check that "Correct (X)" in explanation matches correct_index
function checkLabelMismatch(q: DbQuestion): string | null {
	const expl = q.explanation || "";
	const labels = ["A", "B", "C", "D"];
	const expectedLabel = labels[q.correct_index];

	// Find "Correct (X)" pattern
	const correctMatch = expl.match(/Correct\s*\(([A-D])\)/i);
	if (correctMatch) {
		const claimedLabel = correctMatch[1].toUpperCase();
		if (claimedLabel !== expectedLabel) {
			return `Explanation says "Correct (${claimedLabel})" but correct_index=${q.correct_index} → ${expectedLabel}`;
		}
	}

	// Also check if "Wrong (X)" matches the correct answer (would be a mislabel)
	for (const label of labels) {
		if (label === expectedLabel) {
			const wrongOnCorrect = new RegExp(`Wrong\\s*\\(${label}\\)`, "i").test(expl);
			if (wrongOnCorrect) {
				return `Explanation labels correct answer ${label} as "Wrong (${label})"`;
			}
		}
	}

	return null;
}

// ─── Issue #9: Citation in stem ────────────────────────────────
// Stems shouldn't reference specific standard numbers (AU-C 330, ASC 606, etc.)
// Real CPA exam rarely does this — citations belong in explanations
function checkCitationInStem(q: DbQuestion): string | null {
	const stem = q.stem || "";
	const citMatch = stem.match(/\b(AU-C|ASC|GASB|IRC\s+Section|IRC\s+§|PCAOB\s+AS|SAS\s+No|SSARS|SSAE|AT-C|AR-C)\s*\d+/i);
	if (citMatch) {
		return `Stem contains citation: "${citMatch[0]}"`;
	}
	return null;
}

// ─── Issue #4: Null cognitive_level ────────────────────────────
function checkNullCognitive(q: DbQuestion): string | null {
	if (q.cognitive_level === null || q.cognitive_level === undefined) {
		return "cognitive_level is NULL";
	}
	return null;
}

// ─── Issue #1: Giveaway longest answer ─────────────────────────
function checkGiveawayLongest(q: DbQuestion): string | null {
	const choices = q.choices as string[];
	if (!choices || choices.length !== 4) return null;

	const lengths = choices.map(c => c.split(/\s+/).length);
	const correctLen = lengths[q.correct_index];
	const wrongLens = lengths.filter((_, i) => i !== q.correct_index);
	const avgWrong = wrongLens.reduce((a, b) => a + b, 0) / wrongLens.length;

	if (avgWrong > 0 && correctLen / avgWrong > 1.8) {
		return `Correct answer ${correctLen} words, wrong avg ${avgWrong.toFixed(0)} words (${(correctLen / avgWrong).toFixed(1)}x)`;
	}
	return null;
}

// ─── Main ──────────────────────────────────────────────────────
async function main() {
	const questions = await fetchAllQuestions(sectionArg);

	const issues: Record<string, { count: number; ids: number[] }> = {
		"#1 Giveaway longest": { count: 0, ids: [] },
		"#3 Incomplete explanation": { count: 0, ids: [] },
		"#4 Null cognitive_level": { count: 0, ids: [] },
		"#6 Label mismatch": { count: 0, ids: [] },
		"#9 Citation in stem": { count: 0, ids: [] },
	};

	const checkers: [string, (q: DbQuestion) => string | null][] = [
		["#1 Giveaway longest", checkGiveawayLongest],
		["#3 Incomplete explanation", checkIncompleteExplanation],
		["#4 Null cognitive_level", checkNullCognitive],
		["#6 Label mismatch", checkLabelMismatch],
		["#9 Citation in stem", checkCitationInStem],
	];

	for (const q of questions) {
		for (const [issueKey, checker] of checkers) {
			const result = checker(q);
			if (result) {
				issues[issueKey].count++;
				issues[issueKey].ids.push(q.id);
				if (verbose) {
					console.log(`  Q${q.id} [${q.topic}] ${issueKey}: ${result}`);
				}
			}
		}
	}

	// Summary
	const scope = sectionArg ? sectionArg.toUpperCase() : "ALL";
	console.log(`\n=== Review Issue Detection — ${scope} (${questions.length} questions) ===\n`);

	for (const [key, data] of Object.entries(issues)) {
		const pct = ((data.count / questions.length) * 100).toFixed(1);
		console.log(`${key.padEnd(28)} ${String(data.count).padStart(5)} (${pct}%)`);
	}

	const totalIssues = Object.values(issues).reduce((s, d) => s + d.count, 0);
	console.log(`${"TOTAL ISSUES".padEnd(28)} ${String(totalIssues).padStart(5)}`);
	console.log();

	// Per-section breakdown if running all
	if (!sectionArg) {
		// Re-run per section for breakdown
		const sections = ["aud", "far", "reg", "bar", "isc", "tcp"];
		console.log("Section  #1-Long  #3-Expl  #4-Null  #6-Label  #9-Cite  Total");
		console.log("-------  -------  -------  -------  --------  -------  -----");

		for (const sec of sections) {
			const secQs = await fetchAllQuestions(sec);
			const counts = [0, 0, 0, 0, 0];
			for (const q of secQs) {
				for (let i = 0; i < checkers.length; i++) {
					if (checkers[i][1](q)) counts[i]++;
				}
			}
			const total = counts.reduce((a, b) => a + b, 0);
			console.log(
				`${sec.toUpperCase().padEnd(7)}  ${String(counts[0]).padStart(7)}  ${String(counts[1]).padStart(7)}  ${String(counts[2]).padStart(7)}  ${String(counts[3]).padStart(8)}  ${String(counts[4]).padStart(7)}  ${String(total).padStart(5)}`
			);
		}
	}
}

main().catch(err => {
	console.error(err);
	process.exit(1);
});
