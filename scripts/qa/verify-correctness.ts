// Substantive correctness verifier — uses Claude as domain-expert reviewer
// to catch factual errors (wrong answer keys, arithmetic mistakes, misattributed citations)
//
// Usage:
//   npm run verify -- --section=bar --limit=50
//   npm run verify -- --migration=supabase/migrations/00366_generate_far_batch48.sql
//   npm run verify -- --ids=1234,1235,1236
//   npm run verify -- --section=bar --limit=50 --brief

import { readFileSync, existsSync, writeFileSync, unlinkSync } from "fs";
import { resolve, dirname, join } from "path";
import { fileURLToPath } from "url";
import { execSync } from "child_process";
import { tmpdir } from "os";
import { fetchAllQuestions, type DbQuestion } from "./db-client";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

// ─── CLI args ────────────────────────────────────────────────

const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const limitArg = parseInt(
	process.argv.find((a) => a.startsWith("--limit="))?.split("=")[1] || "0",
);
const migrationArg = process.argv
	.find((a) => a.startsWith("--migration="))
	?.split("=")[1];
const idsArg = process.argv
	.find((a) => a.startsWith("--ids="))
	?.split("=")[1];
const briefMode = process.argv.includes("--brief");

if (!sectionArg && !migrationArg && !idsArg) {
	console.error(
		"Usage: npm run verify -- --section=bar --limit=50\n" +
			"       npm run verify -- --migration=path/to/file.sql\n" +
			"       npm run verify -- --ids=1234,1235,1236",
	);
	process.exit(1);
}

// ─── Types ───────────────────────────────────────────────────

type QuestionType = "calculation" | "citation" | "conceptual" | "scenario";
type Verdict = "pass" | "fail" | "review";
type Confidence = "high" | "medium" | "low";
type IssueType =
	| "wrong_key"
	| "arithmetic_error"
	| "citation_error"
	| "distractor_also_correct"
	| "explanation_mismatch"
	| "logical_error";
type Severity = "critical" | "major" | "minor";

interface VerifiableQuestion {
	id: number | null;
	topic: string;
	difficulty: string;
	stem: string;
	choices: string[];
	correct_index: number;
	explanation: string;
	cognitive_level: number | null;
}

interface VerificationIssue {
	type: IssueType;
	severity: Severity;
	description: string;
}

interface QuestionResult {
	id: number | null;
	questionType: QuestionType;
	verdict: Verdict;
	confidence: Confidence;
	issues: VerificationIssue[];
	reasoning: string;
}

interface VerificationReport {
	timestamp: string;
	source: string;
	totalQuestions: number;
	results: QuestionResult[];
	summary: {
		pass: number;
		fail: number;
		review: number;
		criticalIssues: number;
		majorIssues: number;
		minorIssues: number;
	};
}

// ─── Question classification ─────────────────────────────────

const CALC_PATTERN =
	/\$[\d,]+|\d+%|calculate|determine the (amount|basis|gain|loss|cost|value|price|balance|depreciation|expense|income|tax)|compute|what is the total|how much/i;
const CITATION_PATTERN =
	/\b(under|per|according to|pursuant to)\s+(AU-C|ASC|IRC|FASB|GASB|SSARS|AT-C|AR-C|SAS|PCAOB|SQMS|SSAE|GAGAS|NIST|COBIT|FIPS|ISO|COSO)\b/i;
const SCENARIO_PATTERN =
	/most (likely|appropriate|accurate)|best (describes|course|approach)|evaluate|recommend|should .* advise|primary (effect|impact|consideration)/i;

function classifyQuestion(q: VerifiableQuestion): QuestionType {
	if (CALC_PATTERN.test(q.stem)) return "calculation";
	if (CITATION_PATTERN.test(q.stem)) return "citation";
	if (
		(q.cognitive_level === 3 || q.cognitive_level === 4) &&
		SCENARIO_PATTERN.test(q.stem)
	) {
		return "scenario";
	}
	if (SCENARIO_PATTERN.test(q.stem) && q.difficulty !== "easy") {
		return "scenario";
	}
	return "conceptual";
}

// ─── SQL parsing (reused from validate-migration.ts) ─────────

function parseQuestionsFromMigration(filePath: string): VerifiableQuestion[] {
	const sql = readFileSync(filePath, "utf-8");
	const fullSql = sql.replace(/\n/g, " ");
	const questions: VerifiableQuestion[] = [];

	// 8-column INSERT (with cognitive_level)
	const tuplePattern8 =
		/\(\s*(\d+)\s*,\s*'((?:[^']|'')*?)'\s*,\s*'((?:[^']|'')*?)'\s*,\s*'(\[(?:[^']|'')*?\])'::jsonb\s*,\s*(\d+)\s*,\s*'((?:[^']|'')*?)'\s*,\s*'(easy|medium|hard)'\s*,\s*(\d+)\s*\)/g;

	let match: RegExpExecArray | null;
	while ((match = tuplePattern8.exec(fullSql)) !== null) {
		const [, sectionId, topic, stem, choicesJson, correctIndexStr, explanation, difficulty, cogLevelStr] = match;
		try {
			questions.push({
				id: null,
				topic: topic.replace(/''/g, "'"),
				difficulty,
				stem: stem.replace(/''/g, "'"),
				choices: JSON.parse(choicesJson.replace(/''/g, "'")),
				correct_index: parseInt(correctIndexStr),
				explanation: explanation.replace(/''/g, "'"),
				cognitive_level: parseInt(cogLevelStr),
			});
		} catch {
			// Skip malformed entries
		}
	}

	// 7-column INSERT (without cognitive_level)
	const tuplePattern7 =
		/\(\s*(\d+)\s*,\s*'((?:[^']|'')*?)'\s*,\s*'((?:[^']|'')*?)'\s*,\s*'(\[(?:[^']|'')*?\])'::jsonb\s*,\s*(\d+)\s*,\s*'((?:[^']|'')*?)'\s*,\s*'(easy|medium|hard)'\s*\)/g;

	while ((match = tuplePattern7.exec(fullSql)) !== null) {
		const afterMatch = fullSql.slice(
			match.index + match[0].length,
			match.index + match[0].length + 10,
		);
		if (/^\s*,\s*\d+\s*\)/.test(afterMatch)) continue;

		const [, sectionId, topic, stem, choicesJson, correctIndexStr, explanation, difficulty] = match;
		try {
			questions.push({
				id: null,
				topic: topic.replace(/''/g, "'"),
				difficulty,
				stem: stem.replace(/''/g, "'"),
				choices: JSON.parse(choicesJson.replace(/''/g, "'")),
				correct_index: parseInt(correctIndexStr),
				explanation: explanation.replace(/''/g, "'"),
				cognitive_level: null,
			});
		} catch {
			// Skip malformed entries
		}
	}

	// UPDATE with cognitive_level
	const updateWithCLPattern =
		/UPDATE\s+questions\s+SET\s+stem\s*=\s*'((?:[^']|'')*?)'\s*,\s*choices\s*=\s*'(\[(?:[^']|'')*?\])'::jsonb\s*,\s*explanation\s*=\s*'((?:[^']|'')*?)'\s*,\s*correct_index\s*=\s*(\d+)\s*,\s*difficulty\s*=\s*'(easy|medium|hard)'\s*,\s*cognitive_level\s*=\s*(\d+)\s*WHERE\s+id\s*=\s*(\d+)\s*;/g;

	while ((match = updateWithCLPattern.exec(fullSql)) !== null) {
		const [, stem, choicesJson, explanation, correctIndexStr, difficulty, cogLevelStr, idStr] = match;
		try {
			questions.push({
				id: parseInt(idStr),
				topic: "",
				difficulty,
				stem: stem.replace(/''/g, "'"),
				choices: JSON.parse(choicesJson.replace(/''/g, "'")),
				correct_index: parseInt(correctIndexStr),
				explanation: explanation.replace(/''/g, "'"),
				cognitive_level: parseInt(cogLevelStr),
			});
		} catch {
			// Skip malformed
		}
	}

	// UPDATE without cognitive_level
	const updateNoCLPattern =
		/UPDATE\s+questions\s+SET\s+stem\s*=\s*'((?:[^']|'')*?)'\s*,\s*choices\s*=\s*'(\[(?:[^']|'')*?\])'::jsonb\s*,\s*explanation\s*=\s*'((?:[^']|'')*?)'\s*,\s*correct_index\s*=\s*(\d+)\s*,\s*difficulty\s*=\s*'(easy|medium|hard)'\s*WHERE\s+id\s*=\s*(\d+)\s*;/g;

	while ((match = updateNoCLPattern.exec(fullSql)) !== null) {
		const afterMatch = fullSql.slice(
			match.index + match[0].length - 20,
			match.index + match[0].length + 30,
		);
		if (/cognitive_level/i.test(afterMatch)) continue;

		const [, stem, choicesJson, explanation, correctIndexStr, difficulty, idStr] = match;
		try {
			questions.push({
				id: parseInt(idStr),
				topic: "",
				difficulty,
				stem: stem.replace(/''/g, "'"),
				choices: JSON.parse(choicesJson.replace(/''/g, "'")),
				correct_index: parseInt(correctIndexStr),
				explanation: explanation.replace(/''/g, "'"),
				cognitive_level: null,
			});
		} catch {
			// Skip malformed
		}
	}

	return questions;
}

// ─── Verification prompt ─────────────────────────────────────

function buildVerificationPrompt(
	batch: Array<{ question: VerifiableQuestion; type: QuestionType }>,
	topic: string,
): string {
	const questionsBlock = batch
		.map(({ question: q, type }, i) => {
			const choiceLabels = ["A", "B", "C", "D"];
			const choicesStr = q.choices
				.map((c, ci) => `  ${choiceLabels[ci]}. ${c}`)
				.join("\n");
			const keyedLetter = choiceLabels[q.correct_index] || "?";

			return `### Question ${i + 1} (type: ${type}, difficulty: ${q.difficulty}, ID: ${q.id ?? "new"})
STEM: ${q.stem}
CHOICES:
${choicesStr}
KEYED ANSWER: ${keyedLetter} (index ${q.correct_index})
EXPLANATION: ${q.explanation}`;
		})
		.join("\n\n");

	return `You are a CPA exam content reviewer with expertise in all CPA exam sections (AUD, FAR, REG, BAR, ISC, TCP). Your job is to verify the substantive correctness of multiple-choice questions.

CRITICAL INSTRUCTION: For each question, you MUST independently derive the correct answer BEFORE looking at the keyed answer. Then compare your answer to the key.

## Review Protocol

For each question, perform these checks based on its type:

**calculation questions:**
- Re-derive the arithmetic step by step, showing your work
- Verify that $amounts, percentages, and formulas are applied correctly
- Check that the keyed answer matches your independently calculated result
- Verify no distractor accidentally equals the correct calculation

**citation questions:**
- Verify the cited standard/section actually covers the topic described
- Check that the standard number is real and correctly referenced
- Confirm the rule stated in the explanation matches the actual standard

**conceptual questions:**
- Independently determine which answer is best before checking the key
- Verify no distractor is equally or more defensible than the keyed answer
- Check that the explanation logically supports the keyed answer

**scenario questions:**
- Verify the conclusion follows logically from the scenario facts
- Check that the "most likely/appropriate" answer is genuinely best given the facts
- Ensure no distractor is equally defensible given the scenario

**ALL question types — also check:**
- Does correct_index actually point to the right choice? (0=A, 1=B, 2=C, 3=D)
- Does the explanation support the keyed answer (not a different choice)?
- Is any distractor accidentally correct or equally defensible?
- Is the explanation factually accurate?

## Flagging rules
- Only flag issues you are confident about — use "review" verdict when uncertain
- A question passes if the keyed answer is correct and the explanation is accurate
- "fail" = you are confident the keyed answer is wrong, the math is wrong, or a citation is fabricated
- "review" = something seems off but you are not fully certain
- "pass" = the question is substantively correct

## Topic context: "${topic}"

## Questions to verify:

${questionsBlock}

## Output format

Return a JSON array with one object per question, in the same order as presented above:

\`\`\`json
[
  {
    "questionIndex": 1,
    "id": <number or null>,
    "verdict": "pass" | "fail" | "review",
    "confidence": "high" | "medium" | "low",
    "issues": [
      {
        "type": "wrong_key" | "arithmetic_error" | "citation_error" | "distractor_also_correct" | "explanation_mismatch" | "logical_error",
        "severity": "critical" | "major" | "minor",
        "description": "specific description of the issue"
      }
    ],
    "reasoning": "brief explanation of your verification (show work for calculations)"
  }
]
\`\`\`

Return ONLY the JSON array inside a single code fence. No other text.`;
}

// ─── Claude invocation ───────────────────────────────────────

function invokeClaudeVerify(prompt: string): string {
	// Write prompt to temp file to avoid shell escaping issues with large prompts
	const tmpFile = join(tmpdir(), `cpa-verify-${Date.now()}.txt`);
	writeFileSync(tmpFile, prompt, "utf-8");

	// Clear CLAUDECODE env var to allow nested invocation during testing
	const env = { ...process.env };
	delete env.CLAUDECODE;

	try {
		const result = execSync(
			`cat "${tmpFile.replace(/\\/g, "/")}" | claude --print --model sonnet`,
			{
				cwd: repoRoot,
				maxBuffer: 10 * 1024 * 1024,
				timeout: 180_000,
				shell: "bash",
				encoding: "utf-8",
				env,
			},
		);
		return result;
	} catch (err: unknown) {
		const error = err as { stdout?: string; stderr?: string };
		if (error.stdout) return error.stdout;
		throw err;
	} finally {
		try { unlinkSync(tmpFile); } catch { /* ignore */ }
	}
}

function parseClaudeResponse(raw: string): QuestionResult[] | null {
	// Extract JSON from code fence
	const fenceMatch = raw.match(/```(?:json)?\s*\n([\s\S]*?)\n```/);
	const jsonStr = fenceMatch ? fenceMatch[1] : raw.trim();

	try {
		const parsed = JSON.parse(jsonStr);
		if (!Array.isArray(parsed)) return null;
		return parsed;
	} catch {
		// Try to find array in the raw text
		const arrayMatch = raw.match(/\[\s*\{[\s\S]*\}\s*\]/);
		if (arrayMatch) {
			try {
				return JSON.parse(arrayMatch[0]);
			} catch {
				return null;
			}
		}
		return null;
	}
}

// ─── Batch grouping ─────────────────────────────────────────

function groupByTopic(
	questions: VerifiableQuestion[],
): Map<string, VerifiableQuestion[]> {
	const groups = new Map<string, VerifiableQuestion[]>();
	for (const q of questions) {
		const key = q.topic || "unknown";
		if (!groups.has(key)) groups.set(key, []);
		groups.get(key)!.push(q);
	}
	return groups;
}

function batchQuestions(
	questions: VerifiableQuestion[],
	batchSize: number,
): VerifiableQuestion[][] {
	const batches: VerifiableQuestion[][] = [];
	for (let i = 0; i < questions.length; i += batchSize) {
		batches.push(questions.slice(i, i + batchSize));
	}
	return batches;
}

// ─── Main ────────────────────────────────────────────────────

async function main() {
	let questions: VerifiableQuestion[] = [];
	let sourceLabel = "";

	// Mode 1: Parse from migration file
	if (migrationArg) {
		const filePath = resolve(process.cwd(), migrationArg);
		if (!existsSync(filePath)) {
			console.error(`File not found: ${filePath}`);
			process.exit(1);
		}
		questions = parseQuestionsFromMigration(filePath);
		sourceLabel = `migration:${migrationArg}`;
		console.error(`Parsed ${questions.length} questions from ${migrationArg}`);
	}

	// Mode 2: Fetch from DB by section + limit
	else if (sectionArg) {
		const dbQuestions = await fetchAllQuestions(sectionArg);
		let filtered: DbQuestion[] = dbQuestions;

		if (idsArg) {
			const idSet = new Set(idsArg.split(",").map((s) => parseInt(s.trim())));
			filtered = dbQuestions.filter((q) => idSet.has(q.id));
		} else if (limitArg > 0) {
			filtered = dbQuestions.slice(0, limitArg);
		}

		questions = filtered.map((q) => ({
			id: q.id,
			topic: q.topic,
			difficulty: q.difficulty,
			stem: q.stem,
			choices: q.choices as string[],
			correct_index: q.correct_index,
			explanation: q.explanation,
			cognitive_level: q.cognitive_level,
		}));
		sourceLabel = `db:${sectionArg}${limitArg > 0 ? `:limit=${limitArg}` : ""}`;
		console.error(
			`Fetched ${questions.length} questions from DB (${sectionArg.toUpperCase()})`,
		);
	}

	// Mode 3: Fetch by IDs only
	else if (idsArg) {
		// Need to scan all sections — fetch everything
		const dbQuestions = await fetchAllQuestions();
		const idSet = new Set(idsArg.split(",").map((s) => parseInt(s.trim())));
		const filtered = dbQuestions.filter((q) => idSet.has(q.id));

		questions = filtered.map((q) => ({
			id: q.id,
			topic: q.topic,
			difficulty: q.difficulty,
			stem: q.stem,
			choices: q.choices as string[],
			correct_index: q.correct_index,
			explanation: q.explanation,
			cognitive_level: q.cognitive_level,
		}));
		sourceLabel = `db:ids=${idsArg}`;
		console.error(`Fetched ${questions.length} questions by ID`);
	}

	if (questions.length === 0) {
		console.error("No questions to verify");
		process.exit(0);
	}

	// Classify each question
	const classified = questions.map((q) => ({
		question: q,
		type: classifyQuestion(q),
	}));

	// Stats
	const typeCounts = new Map<QuestionType, number>();
	for (const { type } of classified) {
		typeCounts.set(type, (typeCounts.get(type) || 0) + 1);
	}
	console.error("\nClassification:");
	for (const [type, count] of [...typeCounts.entries()].sort(
		(a, b) => b[1] - a[1],
	)) {
		console.error(`  ${type}: ${count}`);
	}

	// Group by topic, then batch within each topic (max 10 per batch)
	const BATCH_SIZE = 10;
	const topicGroups = groupByTopic(questions);
	const allBatches: Array<{
		topic: string;
		items: Array<{ question: VerifiableQuestion; type: QuestionType }>;
	}> = [];

	for (const [topic, topicQuestions] of topicGroups) {
		const batched = batchQuestions(topicQuestions, BATCH_SIZE);
		for (const batch of batched) {
			allBatches.push({
				topic,
				items: batch.map((q) => ({
					question: q,
					type: classifyQuestion(q),
				})),
			});
		}
	}

	console.error(
		`\nProcessing ${questions.length} questions in ${allBatches.length} batches...\n`,
	);

	// Process batches
	const allResults: QuestionResult[] = [];
	let batchNum = 0;

	for (const batch of allBatches) {
		batchNum++;
		console.error(
			`  Batch ${batchNum}/${allBatches.length}: ${batch.items.length} questions (${batch.topic})...`,
		);

		const prompt = buildVerificationPrompt(batch.items, batch.topic);
		const raw = invokeClaudeVerify(prompt);
		const parsed = parseClaudeResponse(raw);

		if (!parsed) {
			console.error(`    WARNING: Failed to parse Claude response for batch ${batchNum}`);
			// Add review results for unparsed batches
			for (const { question, type } of batch.items) {
				allResults.push({
					id: question.id,
					questionType: type,
					verdict: "review",
					confidence: "low",
					issues: [
						{
							type: "logical_error",
							severity: "minor",
							description: "Verification response could not be parsed",
						},
					],
					reasoning: "Claude response was not valid JSON",
				});
			}
			continue;
		}

		// Map parsed results back to question IDs
		for (let i = 0; i < batch.items.length; i++) {
			const { question, type } = batch.items[i];
			const result = parsed[i];

			if (result) {
				allResults.push({
					id: question.id ?? result.id ?? null,
					questionType: type,
					verdict: result.verdict || "review",
					confidence: result.confidence || "low",
					issues: Array.isArray(result.issues) ? result.issues : [],
					reasoning: result.reasoning || "",
				});
			} else {
				allResults.push({
					id: question.id,
					questionType: type,
					verdict: "review",
					confidence: "low",
					issues: [],
					reasoning: "No result returned for this question",
				});
			}
		}

		const batchPass = parsed.filter((r) => r?.verdict === "pass").length;
		const batchFail = parsed.filter((r) => r?.verdict === "fail").length;
		const batchReview = parsed.filter((r) => r?.verdict === "review").length;
		console.error(
			`    Results: ${batchPass} pass, ${batchFail} fail, ${batchReview} review`,
		);
	}

	// Build report
	const report: VerificationReport = {
		timestamp: new Date().toISOString(),
		source: sourceLabel,
		totalQuestions: questions.length,
		results: allResults,
		summary: {
			pass: allResults.filter((r) => r.verdict === "pass").length,
			fail: allResults.filter((r) => r.verdict === "fail").length,
			review: allResults.filter((r) => r.verdict === "review").length,
			criticalIssues: allResults.reduce(
				(sum, r) =>
					sum + r.issues.filter((i) => i.severity === "critical").length,
				0,
			),
			majorIssues: allResults.reduce(
				(sum, r) =>
					sum + r.issues.filter((i) => i.severity === "major").length,
				0,
			),
			minorIssues: allResults.reduce(
				(sum, r) =>
					sum + r.issues.filter((i) => i.severity === "minor").length,
				0,
			),
		},
	};

	// Output
	if (briefMode) {
		// Compact output for pipeline mode
		const brief = {
			pass: report.summary.pass,
			fail: report.summary.fail,
			review: report.summary.review,
			critical: report.summary.criticalIssues,
			failures: allResults
				.filter((r) => r.verdict === "fail")
				.map((r) => ({
					id: r.id,
					issues: r.issues.map((i) => `${i.type}: ${i.description}`),
				})),
		};
		console.log(JSON.stringify(brief));
	} else {
		console.log(JSON.stringify(report, null, 2));
	}

	// Summary to stderr
	console.error("\n═══════════════════════════════════════════");
	console.error(`  Verification Complete: ${sourceLabel}`);
	console.error("═══════════════════════════════════════════");
	console.error(
		`  Pass:   ${report.summary.pass} (${((report.summary.pass / questions.length) * 100).toFixed(1)}%)`,
	);
	console.error(
		`  Fail:   ${report.summary.fail} (${((report.summary.fail / questions.length) * 100).toFixed(1)}%)`,
	);
	console.error(
		`  Review: ${report.summary.review} (${((report.summary.review / questions.length) * 100).toFixed(1)}%)`,
	);
	console.error(
		`  Issues: ${report.summary.criticalIssues} critical, ${report.summary.majorIssues} major, ${report.summary.minorIssues} minor`,
	);
	console.error("═══════════════════════════════════════════\n");

	// Print failed questions for quick review
	const failures = allResults.filter((r) => r.verdict === "fail");
	if (failures.length > 0) {
		console.error("Failed questions:");
		for (const f of failures) {
			console.error(`  Q${f.id ?? "?"}: ${f.issues.map((i) => `${i.type} (${i.severity})`).join(", ")}`);
			console.error(`    ${f.reasoning.slice(0, 200)}`);
		}
		console.error("");
	}

	// Exit code: 1 if any critical issues
	const hasCritical = report.summary.criticalIssues > 0;
	process.exit(hasCritical ? 1 : 0);
}

main();
