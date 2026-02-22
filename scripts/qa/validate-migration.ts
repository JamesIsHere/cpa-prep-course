// Pre-migration validator — checks question INSERTs and UPDATEs against the style guide rubric
// Usage: npm run validate-migration supabase/migrations/00040_upgrade_aud_questions.sql

import { readFileSync } from "fs";
import { resolve } from "path";
import { questionCounts } from "../../src/lib/blueprint";

const validTopics = new Set(Object.keys(questionCounts));

// Parse CLI arg
const migrationFile = process.argv[2];
if (!migrationFile) {
	console.error("Usage: npm run validate-migration <migration-file>");
	process.exit(1);
}

const filePath = resolve(process.cwd(), migrationFile);
let sql: string;
try {
	sql = readFileSync(filePath, "utf-8");
} catch {
	console.error(`Cannot read file: ${filePath}`);
	process.exit(1);
}

interface Issue {
	line: number;
	severity: "error" | "warn";
	message: string;
}

interface ParsedQuestion {
	id?: number;
	topic?: string;
	stem: string;
	choicesJson: string;
	correctIndex: number;
	explanation: string;
	difficulty: string;
	cognitiveLevel?: number;
	approxLine: number;
}

const issues: Issue[] = [];

// Standard citation patterns
const STANDARD_PATTERN =
	/\b(AU-C|ASC|IRC|FASB|GASB|SSARS|AT-C|AR-C|SAS|PCAOB|Sec\.|Section|SQMS|SSAE|GAGAS|AICPA Code)\b/i;

// Contrast/wrong-answer language
const WRONG_ANSWER_PATTERN =
	/\b(while|whereas|although|however|in contrast|not .* because|incorrect because|rather than|unlike)\b/i;

function countWords(text: string): number {
	return text.trim().split(/\s+/).filter(Boolean).length;
}

/**
 * Shared validation logic for a single parsed question.
 * Used by both INSERT and UPDATE parsers.
 */
function validateQuestion(q: ParsedQuestion): void {
	const stemClean = q.stem.replace(/''/g, "'");
	const explanationClean = q.explanation.replace(/''/g, "'");

	// TODO detection — catches unfilled scaffolds
	if (/\bTODO\b/.test(stemClean)) {
		issues.push({
			line: q.approxLine,
			severity: "error",
			message: `Stem contains TODO placeholder: "${stemClean.slice(0, 60)}..."`,
		});
	}
	if (/\bTODO\b/.test(explanationClean)) {
		issues.push({
			line: q.approxLine,
			severity: "error",
			message: `Explanation contains TODO placeholder: "${explanationClean.slice(0, 60)}..."`,
		});
	}

	// Context-aware stem length: L1 questions are intentionally shorter
	const stemWords = countWords(stemClean);
	const isL1 =
		q.cognitiveLevel === 1 ||
		(q.cognitiveLevel == null && q.difficulty === "easy");
	const shortStemThreshold = isL1 ? 8 : 12;
	if (stemWords < shortStemThreshold) {
		issues.push({
			line: q.approxLine,
			severity: "warn",
			message: `Short stem (${stemWords} words, threshold ${shortStemThreshold}): "${stemClean.slice(0, 60)}..."`,
		});
	}

	// Explanation length
	const explanationWords = countWords(explanationClean);
	if (explanationWords < 30) {
		issues.push({
			line: q.approxLine,
			severity: "error",
			message: `Short explanation (${explanationWords} words): "${explanationClean.slice(0, 60)}..."`,
		});
	}

	// Explanation quality: standard citation check
	if (!STANDARD_PATTERN.test(explanationClean)) {
		issues.push({
			line: q.approxLine,
			severity: "warn",
			message: `Explanation lacks standard citation (AU-C, ASC, IRC, etc.): Q${q.id ?? "?"}`,
		});
	}

	// Explanation quality: contrast language (addresses wrong answers)
	if (!WRONG_ANSWER_PATTERN.test(explanationClean)) {
		issues.push({
			line: q.approxLine,
			severity: "warn",
			message: `Explanation lacks contrast language addressing wrong answers: Q${q.id ?? "?"}`,
		});
	}

	// Parse choices
	let choices: string[] = [];
	try {
		choices = JSON.parse(q.choicesJson.replace(/''/g, "'"));
	} catch {
		issues.push({
			line: q.approxLine,
			severity: "error",
			message: `Malformed choices JSON: ${q.choicesJson.slice(0, 60)}...`,
		});
		return;
	}

	// All/None of the above
	for (const choice of choices) {
		if (/^(all|none) of the above$/i.test(choice)) {
			issues.push({
				line: q.approxLine,
				severity: "error",
				message: `Banned pattern: "${choice}"`,
			});
		}
		if (/^both [A-D] and [A-D]$/i.test(choice)) {
			issues.push({
				line: q.approxLine,
				severity: "error",
				message: `Banned pattern: "${choice}"`,
			});
		}
	}

	// Absolute assurance in wrong answers
	const wrongChoices = choices.filter((_, i) => i !== q.correctIndex);
	for (const wc of wrongChoices) {
		if (
			/\b(absolute assurance|guarantee[sd]?|ensure[sd]? with certainty)\b/i.test(
				wc,
			)
		) {
			issues.push({
				line: q.approxLine,
				severity: "warn",
				message: `Lazy distractor pattern: "${wc.slice(0, 60)}..."`,
			});
		}
	}

	// Choice length ratio
	const choiceLengths = choices.map((c) => c.length);
	const maxLen = Math.max(...choiceLengths);
	const minLen = Math.min(...choiceLengths);
	if (minLen > 0 && maxLen / minLen > 3) {
		issues.push({
			line: q.approxLine,
			severity: "warn",
			message: `Choice length ratio ${(maxLen / minLen).toFixed(1)}x (longest/shortest)`,
		});
	}

	// Topic validation (only for INSERTs that have topics)
	if (q.topic && !validTopics.has(q.topic)) {
		issues.push({
			line: q.approxLine,
			severity: "error",
			message: `Unknown topic "${q.topic}" — not in questionCounts dict`,
		});
	}
}

// Track answer distributions
const distributions: { correct_index: number; topic: string }[] = [];
let questionCount = 0;

const fullSql = sql.replace(/\n/g, " ");

// ============================================================
// Parse INSERT statements
// ============================================================
const tuplePattern =
	/\(\s*(\d+)\s*,\s*'((?:[^']|'')*?)'\s*,\s*'((?:[^']|'')*?)'\s*,\s*'(\[(?:[^']|'')*?\])'::jsonb\s*,\s*(\d+)\s*,\s*'((?:[^']|'')*?)'\s*,\s*'(easy|medium|hard)'\s*\)/g;

let match: RegExpExecArray | null;
while ((match = tuplePattern.exec(fullSql)) !== null) {
	questionCount++;
	const [
		,
		,
		topic,
		stem,
		choicesJson,
		correctIndexStr,
		explanation,
		difficulty,
	] = match;

	const correctIndex = parseInt(correctIndexStr);
	const charsBefore = fullSql.slice(0, match.index);
	const approxLine = (charsBefore.match(/ {50}/g) ?? []).length + 1;

	distributions.push({ correct_index: correctIndex, topic });

	validateQuestion({
		topic,
		stem,
		choicesJson,
		correctIndex,
		explanation,
		difficulty,
		approxLine,
	});
}

// ============================================================
// Parse UPDATE statements (rebalancing format with cognitive_level)
// ============================================================
// Matches: UPDATE questions SET
//   stem = '...',
//   choices = '...'::jsonb,
//   explanation = '...',
//   correct_index = N,
//   difficulty = '...',
//   cognitive_level = N
// WHERE id = N;
const updateWithCLPattern =
	/UPDATE\s+questions\s+SET\s+stem\s*=\s*'((?:[^']|'')*?)'\s*,\s*choices\s*=\s*'(\[(?:[^']|'')*?\])'::jsonb\s*,\s*explanation\s*=\s*'((?:[^']|'')*?)'\s*,\s*correct_index\s*=\s*(\d+)\s*,\s*difficulty\s*=\s*'(easy|medium|hard)'\s*,\s*cognitive_level\s*=\s*(\d+)\s*WHERE\s+id\s*=\s*(\d+)\s*;/g;

while ((match = updateWithCLPattern.exec(fullSql)) !== null) {
	questionCount++;
	const [
		,
		stem,
		choicesJson,
		explanation,
		correctIndexStr,
		difficulty,
		cogLevelStr,
		idStr,
	] = match;

	const correctIndex = parseInt(correctIndexStr);
	const cognitiveLevel = parseInt(cogLevelStr);
	const id = parseInt(idStr);
	const charsBefore = fullSql.slice(0, match.index);
	const approxLine = (charsBefore.match(/ {50}/g) ?? []).length + 1;

	validateQuestion({
		id,
		stem,
		choicesJson,
		correctIndex,
		explanation,
		difficulty,
		cognitiveLevel,
		approxLine,
	});
}

// ============================================================
// Parse UPDATE statements (older format without cognitive_level)
// ============================================================
const updateNoCLPattern =
	/UPDATE\s+questions\s+SET\s+stem\s*=\s*'((?:[^']|'')*?)'\s*,\s*choices\s*=\s*'(\[(?:[^']|'')*?\])'::jsonb\s*,\s*explanation\s*=\s*'((?:[^']|'')*?)'\s*,\s*correct_index\s*=\s*(\d+)\s*,\s*difficulty\s*=\s*'(easy|medium|hard)'\s*WHERE\s+id\s*=\s*(\d+)\s*;/g;

while ((match = updateNoCLPattern.exec(fullSql)) !== null) {
	// Skip if this position was already matched by the with-CL pattern
	// (the with-CL pattern is a superset, so check for cognitive_level after difficulty)
	const afterMatch = fullSql.slice(
		match.index + match[0].length - 20,
		match.index + match[0].length + 30,
	);
	if (/cognitive_level/i.test(afterMatch)) continue;

	questionCount++;
	const [, stem, choicesJson, explanation, correctIndexStr, difficulty, idStr] =
		match;

	const correctIndex = parseInt(correctIndexStr);
	const id = parseInt(idStr);
	const charsBefore = fullSql.slice(0, match.index);
	const approxLine = (charsBefore.match(/ {50}/g) ?? []).length + 1;

	validateQuestion({
		id,
		stem,
		choicesJson,
		correctIndex,
		explanation,
		difficulty,
		approxLine,
	});
}

// ============================================================
// Parse UPDATE statements (explanation-only, for citation backfill)
// ============================================================
// Matches: UPDATE questions SET
//   explanation = '...'
// WHERE id = N;
const updateExplanationOnlyPattern =
	/UPDATE\s+questions\s+SET\s+explanation\s*=\s*'((?:[^']|'')*?)'\s*WHERE\s+id\s*=\s*(\d+)\s*;/g;

while ((match = updateExplanationOnlyPattern.exec(fullSql)) !== null) {
	// Skip if this was already matched by a full UPDATE pattern (has stem before explanation)
	const before = fullSql.slice(Math.max(0, match.index - 100), match.index);
	if (/stem\s*=/i.test(before)) continue;

	questionCount++;
	const [, explanation, idStr] = match;
	const id = parseInt(idStr);
	const explanationClean = explanation.replace(/''/g, "'");
	const charsBefore = fullSql.slice(0, match.index);
	const approxLine = (charsBefore.match(/ {50}/g) ?? []).length + 1;

	// TODO detection
	if (/\bTODO\b/.test(explanationClean)) {
		issues.push({
			line: approxLine,
			severity: "error",
			message: `Explanation contains TODO placeholder: "${explanationClean.slice(0, 60)}..."`,
		});
	}

	// Explanation length
	const explanationWords = countWords(explanationClean);
	if (explanationWords < 30) {
		issues.push({
			line: approxLine,
			severity: "error",
			message: `Short explanation (${explanationWords} words): "${explanationClean.slice(0, 60)}..."`,
		});
	}

	// Citation check (error for citation-mode migrations, since that's the whole point)
	if (!STANDARD_PATTERN.test(explanationClean)) {
		issues.push({
			line: approxLine,
			severity: "error",
			message: `Explanation lacks standard citation (AU-C, ASC, IRC, etc.): Q${id}`,
		});
	}

	// Contrast language
	if (!WRONG_ANSWER_PATTERN.test(explanationClean)) {
		issues.push({
			line: approxLine,
			severity: "warn",
			message: `Explanation lacks contrast language addressing wrong answers: Q${id}`,
		});
	}
}

// ============================================================
// Check answer distribution (mechanical 5x0, 5x1 pattern)
// ============================================================
if (distributions.length >= 10) {
	const byTopic = new Map<string, number[]>();
	for (const d of distributions) {
		if (!byTopic.has(d.topic)) byTopic.set(d.topic, []);
		byTopic.get(d.topic)!.push(d.correct_index);
	}

	for (const [topic, indices] of byTopic) {
		if (indices.length < 10) continue;
		const pattern = indices.slice(0, 5).join(",");
		let repeats = 0;
		for (let i = 5; i <= indices.length - 5; i += 5) {
			if (indices.slice(i, i + 5).join(",") === pattern) {
				repeats++;
			}
		}
		if (repeats >= 2) {
			issues.push({
				line: 0,
				severity: "error",
				message: `Mechanical answer distribution in topic "${topic}": pattern ${pattern} repeats ${repeats + 1} times`,
			});
		}
	}
}

// ============================================================
// Report
// ============================================================
console.log(`\nValidation: ${filePath}\n`);
console.log(`Questions found: ${questionCount}`);

const errors = issues.filter((i) => i.severity === "error");
const warnings = issues.filter((i) => i.severity === "warn");

if (errors.length === 0 && warnings.length === 0) {
	console.log("\nAll checks passed.\n");
	process.exit(0);
}

if (errors.length > 0) {
	console.log(`\nERRORS (${errors.length}):\n`);
	for (const e of errors) {
		console.log(`  [ERROR] ${e.message}`);
	}
}

if (warnings.length > 0) {
	console.log(`\nWARNINGS (${warnings.length}):\n`);
	for (const w of warnings) {
		console.log(`  [WARN] ${w.message}`);
	}
}

console.log(`\nSummary: ${errors.length} errors, ${warnings.length} warnings`);
process.exit(errors.length > 0 ? 1 : 0);
