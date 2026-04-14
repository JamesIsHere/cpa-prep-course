// Pre-migration validator — checks question INSERTs and UPDATEs against the style guide rubric
// Usage: npm run validate-migration supabase/migrations/00040_upgrade_aud_questions.sql

import { readFileSync, writeFileSync, existsSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { questionCounts } from "../../src/lib/blueprint";
import { getTopicSpec, type BannedTerm } from "../../src/lib/topic-specs";

const validTopics = new Set(Object.keys(questionCounts));

// Compiled banned-terms cache: topic string -> array of {regex, term, category}.
// Populated lazily on first question for each topic so specs without bannedTerms
// cost nothing to audit.
interface CompiledBannedTerm {
	term: string;
	regex: RegExp;
	category?: string;
}
const compiledBannedTermsCache = new Map<string, CompiledBannedTerm[] | null>();

function escapeRegexForBannedTerm(s: string): string {
	return s.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
}

function getCompiledBannedTerms(topic: string): CompiledBannedTerm[] | null {
	if (compiledBannedTermsCache.has(topic)) {
		return compiledBannedTermsCache.get(topic)!;
	}
	const spec = getTopicSpec(topic);
	if (!spec || !spec.bannedTerms || spec.bannedTerms.length === 0) {
		compiledBannedTermsCache.set(topic, null);
		return null;
	}
	const compiled: CompiledBannedTerm[] = spec.bannedTerms.map((t: BannedTerm) => ({
		term: t.term,
		category: t.category,
		regex: new RegExp(
			t.pattern ?? `\\b${escapeRegexForBannedTerm(t.term)}\\b`,
			"gi",
		),
	}));
	compiledBannedTermsCache.set(topic, compiled);
	return compiled;
}

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
	/\b(AU-C|ASC|IRC|FASB|GASB|SSARS|AT-C|AR-C|SAS|PCAOB|Sec\.|Section|SQMS|SSAE|GAGAS|AICPA|NIST|COBIT|ITIL|GDPR|FIPS|ISO|RFC|IETF|COSO)\b/i;

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

	// Explanation structure: must use Correct (X) / Wrong (Y) format
	const correctLetterMatch = explanationClean.match(/Correct\s*\(([A-D])\)/i);
	if (!correctLetterMatch) {
		issues.push({
			line: q.approxLine,
			severity: "warn",
			message: `Explanation missing structured format (should start with "Correct (X):"): Q${q.id ?? "?"}`,
		});
	} else {
		// Letter/index consistency check — catches the "class-1" generator desync where
		// the scaffold's pre-assigned correct_index disagrees with the letter label the
		// writer used in "Correct (X):". Independent of whether the content at that slot
		// is actually correct (which requires semantic analysis the orchestrator does).
		const expectedLetter = "ABCD"[q.correctIndex];
		const foundLetter = correctLetterMatch[1].toUpperCase();
		if (expectedLetter && foundLetter !== expectedLetter) {
			issues.push({
				line: q.approxLine,
				severity: "error",
				message: `Letter/index desync — explanation says "Correct (${foundLetter})" but correct_index=${q.correctIndex} (${expectedLetter}): Q${q.id ?? "?"}`,
			});
		}
	}
	const wrongCount = (explanationClean.match(/Wrong\s*\([A-D]\)/gi) ?? []).length;
	if (wrongCount < 2) {
		issues.push({
			line: q.approxLine,
			severity: "warn",
			message: `Explanation has ${wrongCount} "Wrong (X)" blocks (expected 3): Q${q.id ?? "?"}`,
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

	// Choice length ratio — 2x is the hard limit, 3x is legacy tolerance
	const choiceLengths = choices.map((c) => c.length);
	const maxLen = Math.max(...choiceLengths);
	const minLen = Math.min(...choiceLengths);
	if (minLen > 0 && maxLen / minLen > 3) {
		issues.push({
			line: q.approxLine,
			severity: "error",
			message: `Choice length ratio ${(maxLen / minLen).toFixed(1)}x exceeds 3x limit (longest/shortest)`,
		});
	} else if (minLen > 0 && maxLen / minLen > 2) {
		issues.push({
			line: q.approxLine,
			severity: "warn",
			message: `Choice length ratio ${(maxLen / minLen).toFixed(1)}x exceeds 2x target (longest/shortest)`,
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

	// Spec-aware scope check: if the question's topic has a topic spec with
	// bannedTerms, compile them and scan stem + choices + explanation. Any
	// match is an ERROR — the migration will block until the question is
	// rewritten to exclude the out-of-scope term. UPDATEs that omit the topic
	// field skip this check (post-apply audit catches those).
	if (q.topic) {
		const bannedTerms = getCompiledBannedTerms(q.topic);
		if (bannedTerms) {
			const scanFields: Array<{ name: "stem" | "choices" | "explanation"; text: string }> = [
				{ name: "stem", text: stemClean },
				{ name: "choices", text: choices.join(" | ") },
				{ name: "explanation", text: explanationClean },
			];
			const hitsByTerm = new Map<string, Array<{ field: string; snippet: string }>>();
			for (const { name, text } of scanFields) {
				for (const bt of bannedTerms) {
					bt.regex.lastIndex = 0;
					const m = bt.regex.exec(text);
					if (!m) continue;
					const idx = m.index ?? 0;
					const start = Math.max(0, idx - 30);
					const end = Math.min(text.length, idx + m[0].length + 30);
					const snippet = (start > 0 ? "…" : "") + text.slice(start, end) + (end < text.length ? "…" : "");
					if (!hitsByTerm.has(bt.term)) hitsByTerm.set(bt.term, []);
					hitsByTerm.get(bt.term)!.push({ field: name, snippet: snippet.replace(/\s+/g, " ") });
				}
			}
			for (const [term, hits] of hitsByTerm) {
				const firstHit = hits[0];
				issues.push({
					line: q.approxLine,
					severity: "error",
					message: `Spec violation — banned term "${term}" in ${firstHit.field} for topic "${q.topic}" (Q${q.id ?? "?"}): "${firstHit.snippet}"`,
				});
			}
		}
	}
}

// Track answer distributions
const distributions: { correct_index: number; topic: string }[] = [];
let questionCount = 0;

// Convert dollar-quoted strings ($EXPL$...$EXPL$) to single-quoted strings
// so the existing regex parsers can handle them. Internal single quotes are doubled.
const dollarQuoteNormalized = sql.replace(
	/\$EXPL\$([\s\S]*?)\$EXPL\$/g,
	(_match, content: string) => `'${content.replace(/'/g, "''")}'`,
);
const fullSql = dollarQuoteNormalized.replace(/\n/g, " ");

// ============================================================
// Parse INSERT statements (8-column: with cognitive_level)
// ============================================================
const tuplePattern8 =
	/\(\s*(\d+)\s*,\s*'((?:[^']|'')*?)'\s*,\s*'((?:[^']|'')*?)'\s*,\s*'(\[(?:[^']|'')*?\])'::jsonb\s*,\s*(\d+)\s*,\s*'((?:[^']|'')*?)'\s*,\s*'(easy|medium|hard)'\s*,\s*(\d+)\s*\)/g;

let match: RegExpExecArray | null;
while ((match = tuplePattern8.exec(fullSql)) !== null) {
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
		cogLevelStr,
	] = match;

	const correctIndex = parseInt(correctIndexStr);
	const cognitiveLevel = parseInt(cogLevelStr);
	const charsBefore = fullSql.slice(0, match.index);
	const approxLine = (charsBefore.match(/ {50}/g) ?? []).length + 1;

	distributions.push({ correct_index: correctIndex, topic });

	// Cross-validate cognitive_level vs difficulty
	if (cognitiveLevel === 1 && difficulty !== "easy") {
		issues.push({
			line: approxLine,
			severity: "warn",
			message: `L1 question has difficulty='${difficulty}' (expected easy): topic "${topic}"`,
		});
	}
	if ((cognitiveLevel === 3 || cognitiveLevel === 4) && difficulty === "easy") {
		issues.push({
			line: approxLine,
			severity: "warn",
			message: `L${cognitiveLevel} question has difficulty='easy' (expected medium/hard): topic "${topic}"`,
		});
	}

	validateQuestion({
		topic,
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
// Parse INSERT statements (7-column: without cognitive_level)
// ============================================================
const tuplePattern7 =
	/\(\s*(\d+)\s*,\s*'((?:[^']|'')*?)'\s*,\s*'((?:[^']|'')*?)'\s*,\s*'(\[(?:[^']|'')*?\])'::jsonb\s*,\s*(\d+)\s*,\s*'((?:[^']|'')*?)'\s*,\s*'(easy|medium|hard)'\s*\)/g;

while ((match = tuplePattern7.exec(fullSql)) !== null) {
	// Skip if this position was already matched by the 8-column pattern
	const afterMatch = fullSql.slice(
		match.index + match[0].length,
		match.index + match[0].length + 10,
	);
	if (/^\s*,\s*\d+\s*\)/.test(afterMatch)) continue;

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
// Parse UPDATE statements (stem-only, for stem expansion)
// ============================================================
// Matches: UPDATE questions SET
//   stem = '...'
// WHERE id = N;
const updateStemOnlyPattern =
	/UPDATE\s+questions\s+SET\s+stem\s*=\s*'((?:[^']|'')*?)'\s*WHERE\s+id\s*=\s*(\d+)\s*;/g;

while ((match = updateStemOnlyPattern.exec(fullSql)) !== null) {
	// Skip if this was already matched by a full UPDATE pattern (has choices after stem)
	const after = fullSql.slice(
		match.index + match[0].length - 30,
		match.index + match[0].length + 30,
	);
	if (/choices\s*=/i.test(after)) continue;
	// Our pattern already anchors to WHERE, so no false positives from full UPDATEs

	questionCount++;
	const [, stem, idStr] = match;
	const id = parseInt(idStr);
	const stemClean = stem.replace(/''/g, "'");
	const charsBefore = fullSql.slice(0, match.index);
	const approxLine = (charsBefore.match(/ {50}/g) ?? []).length + 1;

	// TODO detection
	if (/\bTODO\b/.test(stemClean)) {
		issues.push({
			line: approxLine,
			severity: "error",
			message: `Stem contains TODO placeholder: "${stemClean.slice(0, 60)}..."`,
		});
	}

	// Stem word count floor for rewrites (must actually add substance)
	const stemWords = countWords(stemClean);
	if (stemWords < 20) {
		issues.push({
			line: approxLine,
			severity: "error",
			message: `Stem too short after rewrite (${stemWords} words, minimum 20): Q${id}`,
		});
	} else if (stemWords < 25) {
		issues.push({
			line: approxLine,
			severity: "warn",
			message: `Stem borderline short after rewrite (${stemWords} words, target 25+): Q${id}`,
		});
	}
}

// ============================================================
// Parse UPDATE statements (choices + explanation, for quality fixes)
// ============================================================
const updateChoicesExplPattern =
	/UPDATE\s+questions\s+SET\s+choices\s*=\s*'(\[(?:[^']|'')*?\])'::jsonb\s*,\s*explanation\s*=\s*'((?:[^']|'')*?)'\s*WHERE\s+id\s*=\s*(\d+)\s*;/g;

while ((match = updateChoicesExplPattern.exec(fullSql)) !== null) {
	questionCount++;
	const [, choicesRaw, explanation, idStr] = match;
	const id = parseInt(idStr);
	const explClean = explanation.replace(/''/g, "'");
	const charsBefore = fullSql.slice(0, match.index);
	const approxLine = (charsBefore.match(/ {50}/g) ?? []).length + 1;

	if (/\bTODO\b/.test(choicesRaw) || /\bTODO\b/.test(explClean)) {
		issues.push({ line: approxLine, severity: "error", message: `TODO placeholder in choices or explanation: Q${id}` });
	}

	// Parse choices JSON
	try {
		const choices = JSON.parse(choicesRaw.replace(/''/g, "'"));
		if (Array.isArray(choices) && choices.length === 4) {
			const lens = choices.map((c: string) => c.split(/\s+/).length);
			const ratio = Math.max(...lens) / Math.min(...lens);
			if (ratio > 3) {
				issues.push({ line: approxLine, severity: "error", message: `Choice length ratio ${ratio.toFixed(1)}x exceeds 3x limit: Q${id}` });
			} else if (ratio > 2) {
				issues.push({ line: approxLine, severity: "warn", message: `Choice length ratio ${ratio.toFixed(1)}x (target <2x): Q${id}` });
			}
		}
	} catch {
		issues.push({ line: approxLine, severity: "error", message: `Invalid choices JSON: Q${id}` });
	}

	// Explanation checks
	if (countWords(explClean) < 30) {
		issues.push({ line: approxLine, severity: "error", message: `Explanation too short (${countWords(explClean)} words): Q${id}` });
	}
	if (!STANDARD_PATTERN.test(explClean)) {
		issues.push({ line: approxLine, severity: "warn", message: `No standard citation in explanation: Q${id}` });
	}
}

// ============================================================
// Parse UPDATE statements (choices-only, for quality fixes)
// ============================================================
const updateChoicesOnlyPattern =
	/UPDATE\s+questions\s+SET\s+choices\s*=\s*'(\[(?:[^']|'')*?\])'::jsonb\s*WHERE\s+id\s*=\s*(\d+)\s*;/g;

while ((match = updateChoicesOnlyPattern.exec(fullSql)) !== null) {
	// Skip if already matched by choices+explanation pattern
	const afterSnippet = fullSql.slice(match.index, match.index + match[0].length + 20);
	if (/explanation\s*=/i.test(afterSnippet)) continue;

	questionCount++;
	const [, choicesRaw, idStr] = match;
	const id = parseInt(idStr);
	const charsBefore = fullSql.slice(0, match.index);
	const approxLine = (charsBefore.match(/ {50}/g) ?? []).length + 1;

	if (/\bTODO\b/.test(choicesRaw)) {
		issues.push({ line: approxLine, severity: "error", message: `TODO placeholder in choices: Q${id}` });
	}

	try {
		const choices = JSON.parse(choicesRaw.replace(/''/g, "'"));
		if (Array.isArray(choices) && choices.length === 4) {
			const lens = choices.map((c: string) => c.split(/\s+/).length);
			const ratio = Math.max(...lens) / Math.min(...lens);
			if (ratio > 3) {
				issues.push({ line: approxLine, severity: "error", message: `Choice length ratio ${ratio.toFixed(1)}x exceeds 3x limit: Q${id}` });
			} else if (ratio > 2) {
				issues.push({ line: approxLine, severity: "warn", message: `Choice length ratio ${ratio.toFixed(1)}x (target <2x): Q${id}` });
			}
		}
	} catch {
		issues.push({ line: approxLine, severity: "error", message: `Invalid choices JSON: Q${id}` });
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
// verified-ids.json auto-reconciliation
// ============================================================
// Track UPDATE and DELETE IDs separately so we can apply all three transitions:
//   1. fail/review  → removed          (question was touched; prior verdict superseded)
//   2. fail/review  → pass             (question was UPDATEd; the fix + migration
//                                       validation counts as re-verification)
//   3. pass         → removed          (question was DELETEd; prevents stale pass residue)
const updatedIds = new Set<number>();
const deletedIds = new Set<number>();

const updateIdPattern =
	/UPDATE\s+questions\s+SET[\s\S]*?WHERE\s+id\s*=\s*(\d+)\s*;/gi;
let uidMatch: RegExpExecArray | null;
while ((uidMatch = updateIdPattern.exec(fullSql)) !== null) {
	updatedIds.add(parseInt(uidMatch[1]));
}

const deleteIdPattern =
	/DELETE\s+FROM\s+questions\s+WHERE\s+id\s*=\s*(\d+)\s*;/gi;
while ((uidMatch = deleteIdPattern.exec(fullSql)) !== null) {
	deletedIds.add(parseInt(uidMatch[1]));
}

const deleteInIdPattern =
	/DELETE\s+FROM\s+questions\s+WHERE\s+id\s+IN\s*\(([^)]+)\)\s*;/gi;
while ((uidMatch = deleteInIdPattern.exec(fullSql)) !== null) {
	for (const n of uidMatch[1].split(",")) {
		const id = parseInt(n.trim());
		if (!isNaN(id)) deletedIds.add(id);
	}
}

const touchedIds = new Set<number>([...updatedIds, ...deletedIds]);

if (touchedIds.size > 0) {
	const __dirname2 = dirname(fileURLToPath(import.meta.url));
	const verifiedPath = resolve(__dirname2, "../../docs/verified-ids.json");
	if (existsSync(verifiedPath)) {
		try {
			const verifiedData = JSON.parse(readFileSync(verifiedPath, "utf-8"));
			const removedFromFailReview: {
				id: number;
				section: string;
				list: string;
			}[] = [];
			const promotedToPass: { id: number; section: string }[] = [];
			const removedFromPass: { id: number; section: string }[] = [];

			for (const [section, lists] of Object.entries(verifiedData) as [
				string,
				{ pass: number[]; fail: number[]; review: number[] },
			][]) {
				// Gap 1a: drain fail/review for any touched ID.
				for (const listName of ["fail", "review"] as const) {
					const arr = lists[listName] ?? [];
					for (let i = arr.length - 1; i >= 0; i--) {
						const id = arr[i];
						if (!touchedIds.has(id)) continue;
						arr.splice(i, 1);
						removedFromFailReview.push({ id, section, list: listName });
						// Gap 1b: if the touch was an UPDATE (fix), promote to pass.
						if (updatedIds.has(id)) {
							lists.pass = lists.pass ?? [];
							if (!lists.pass.includes(id)) {
								lists.pass.push(id);
								promotedToPass.push({ id, section });
							}
						}
					}
				}

				// Gap 2: remove DELETEd IDs from pass so it cannot accumulate ghosts.
				if (lists.pass && deletedIds.size > 0) {
					for (let i = lists.pass.length - 1; i >= 0; i--) {
						const id = lists.pass[i];
						if (deletedIds.has(id)) {
							lists.pass.splice(i, 1);
							removedFromPass.push({ id, section });
						}
					}
				}
			}

			// Keep pass arrays sorted for stable diffs.
			if (promotedToPass.length > 0) {
				const touchedSections = new Set(promotedToPass.map((p) => p.section));
				for (const section of touchedSections) {
					verifiedData[section].pass.sort((a: number, b: number) => a - b);
				}
			}

			const totalChanges =
				removedFromFailReview.length +
				promotedToPass.length +
				removedFromPass.length;

			if (totalChanges > 0) {
				writeFileSync(
					verifiedPath,
					JSON.stringify(verifiedData, null, 2) + "\n",
				);

				if (removedFromFailReview.length > 0) {
					const idList = removedFromFailReview
						.map((s) => `Q${s.id} (${s.section}.${s.list})`)
						.join(", ");
					console.log(
						`\n  Auto-cleaned ${removedFromFailReview.length} fixed IDs from fail/review: ${idList}`,
					);
				}
				if (promotedToPass.length > 0) {
					const idList = promotedToPass
						.map((p) => `Q${p.id} (${p.section})`)
						.join(", ");
					console.log(
						`  Promoted ${promotedToPass.length} UPDATEd IDs to pass: ${idList}`,
					);
				}
				if (removedFromPass.length > 0) {
					const idList = removedFromPass
						.map((p) => `Q${p.id} (${p.section})`)
						.join(", ");
					console.log(
						`  Removed ${removedFromPass.length} DELETEd IDs from pass: ${idList}`,
					);
				}
				console.log(
					`  Remember to include docs/verified-ids.json in your commit.`,
				);
			}
		} catch {
			// Non-fatal — skip if verified-ids.json is malformed
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
