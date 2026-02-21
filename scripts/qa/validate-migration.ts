// Pre-migration validator — checks question INSERTs against the style guide rubric
// Usage: npm run validate-migration supabase/migrations/00040_upgrade_aud_questions.sql

import { readFileSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { questionCounts } from "../../src/lib/blueprint";

const __dirname = dirname(fileURLToPath(import.meta.url));

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

const issues: Issue[] = [];

// Extract INSERT statements for the questions table
// Pattern: INSERT INTO questions (section_id, topic, stem, choices, correct_index, explanation, difficulty)
const insertPattern =
	/INSERT\s+INTO\s+questions\s*\([^)]+\)\s*VALUES\s*\(([^;]+)\);/gi;

// Also match single-row VALUES within multi-row inserts
const valuesRowPattern =
	/\((\d+),\s*'([^']*(?:''[^']*)*)'\s*,\s*'([^']*(?:''[^']*)*)'\s*,\s*'(\[.*?\])'::jsonb\s*,\s*(\d+)\s*,\s*'([^']*(?:''[^']*)*)'\s*,\s*'(easy|medium|hard)'\)/g;

function countWords(text: string): number {
	return text.trim().split(/\s+/).filter(Boolean).length;
}

// Track answer distributions
const distributions: { correct_index: number; topic: string }[] = [];
let questionCount = 0;

// Simple approach: find all VALUES rows that look like question inserts
const lines = sql.split("\n");
for (let lineNum = 0; lineNum < lines.length; lineNum++) {
	const line = lines[lineNum];

	// Check for topic references
	const topicMatch = line.match(/,\s*'([^']+)'\s*,\s*'/);
	if (topicMatch && line.match(/INSERT|VALUES|\(/i)) {
		// Try to extract structured question data from this line + surrounding context
	}
}

// Re-scan full SQL for complete INSERT patterns
let match: RegExpExecArray | null;
const fullSql = sql.replace(/\n/g, " ");

// Match individual value tuples more broadly
const tuplePattern =
	/\(\s*(\d+)\s*,\s*'((?:[^']|'')*?)'\s*,\s*'((?:[^']|'')*?)'\s*,\s*'(\[(?:[^']|'')*?\])'::jsonb\s*,\s*(\d+)\s*,\s*'((?:[^']|'')*?)'\s*,\s*'(easy|medium|hard)'\s*\)/g;

while ((match = tuplePattern.exec(fullSql)) !== null) {
	questionCount++;
	const [
		,
		sectionId,
		topic,
		stem,
		choicesJson,
		correctIndexStr,
		explanation,
		difficulty,
	] = match;

	const correctIndex = parseInt(correctIndexStr);
	const stemClean = stem.replace(/''/g, "'");
	const explanationClean = explanation.replace(/''/g, "'");

	// Approximate line number
	const charsBefore = fullSql.slice(0, match.index);
	const approxLine = (charsBefore.match(/ {50}/g) ?? []).length + 1;

	distributions.push({ correct_index: correctIndex, topic });

	// --- Checks ---

	// Stem length
	const stemWords = countWords(stemClean);
	if (stemWords < 12) {
		issues.push({
			line: approxLine,
			severity: "warn",
			message: `Short stem (${stemWords} words): "${stemClean.slice(0, 60)}..."`,
		});
	}

	// Explanation length
	const explanationWords = countWords(explanationClean);
	if (explanationWords < 25) {
		issues.push({
			line: approxLine,
			severity: "error",
			message: `Short explanation (${explanationWords} words): "${explanationClean.slice(0, 60)}..."`,
		});
	}

	// Parse choices
	let choices: string[] = [];
	try {
		choices = JSON.parse(choicesJson.replace(/''/g, "'"));
	} catch {
		issues.push({
			line: approxLine,
			severity: "error",
			message: `Malformed choices JSON: ${choicesJson.slice(0, 60)}...`,
		});
		continue;
	}

	// All/None of the above
	for (const choice of choices) {
		if (/^(all|none) of the above$/i.test(choice)) {
			issues.push({
				line: approxLine,
				severity: "error",
				message: `Banned pattern: "${choice}"`,
			});
		}
		if (/^both [A-D] and [A-D]$/i.test(choice)) {
			issues.push({
				line: approxLine,
				severity: "error",
				message: `Banned pattern: "${choice}"`,
			});
		}
	}

	// Absolute assurance in wrong answers
	const wrongChoices = choices.filter((_, i) => i !== correctIndex);
	for (const wc of wrongChoices) {
		if (
			/\b(absolute assurance|guarantee[sd]?|ensure[sd]? with certainty)\b/i.test(
				wc,
			)
		) {
			issues.push({
				line: approxLine,
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
			line: approxLine,
			severity: "warn",
			message: `Choice length ratio ${(maxLen / minLen).toFixed(1)}x (longest/shortest)`,
		});
	}

	// Topic validation
	if (!validTopics.has(topic)) {
		issues.push({
			line: approxLine,
			severity: "error",
			message: `Unknown topic "${topic}" — not in questionCounts dict`,
		});
	}
}

// Check answer distribution (mechanical 5x0, 5x1 pattern)
if (distributions.length >= 10) {
	const byTopic = new Map<string, number[]>();
	for (const d of distributions) {
		if (!byTopic.has(d.topic)) byTopic.set(d.topic, []);
		byTopic.get(d.topic)!.push(d.correct_index);
	}

	for (const [topic, indices] of byTopic) {
		if (indices.length < 10) continue;
		// Check for repeating patterns
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

// Report
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
