/**
 * Select questions to DELETE for over-target topics.
 *
 * Scores every question in a section, ranks within each topic, and outputs
 * the IDs of the weakest questions that exceed the per-topic target from
 * generation-plan.json.
 *
 * Scoring (0-10 composite, same logic as QA audit):
 *   Baseline 7, then deductions/bonuses for stem length, explanation quality,
 *   citations, contrast language, choice cuing, "both A and B" patterns, etc.
 *
 * Output modes:
 *   --format=json   → JSON array of { id, topic, score } (default)
 *   --format=sql    → DELETE migration SQL ready to apply
 *   --format=summary → human-readable per-topic summary
 *
 * Usage:
 *   npx tsx scripts/qa/select-trim-candidates.ts --section=far
 *   npx tsx scripts/qa/select-trim-candidates.ts --section=far --format=sql
 *   npx tsx scripts/qa/select-trim-candidates.ts --section=far --format=summary
 *   npx tsx scripts/qa/select-trim-candidates.ts --section=far --dry-run
 */

import { readFileSync } from "fs";
import { dirname, resolve } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions, type DbQuestion } from "./db-client";

const __dirname = dirname(fileURLToPath(import.meta.url));
const docsDir = resolve(__dirname, "../../docs");

// ─── CLI args ────────────────────────────────────────────────────

const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const formatArg = (
	process.argv.find((a) => a.startsWith("--format="))?.split("=")[1] || "json"
) as "json" | "sql" | "summary";
const dryRun = process.argv.includes("--dry-run");

if (!sectionArg) {
	console.error(
		"Usage: npx tsx scripts/qa/select-trim-candidates.ts --section=far [--format=json|sql|summary] [--dry-run]",
	);
	process.exit(1);
}

// ─── Citation patterns per section ───────────────────────────────

const CITATION_PATTERNS: Record<string, RegExp> = {
	aud: /AU-C|SAS\s|PCAOB|AT-C|AR-C|SSARS|SQMS|GAGAS|AICPA Code/i,
	far: /ASC\s?\d|FASB|GASB/i,
	reg: /IRC|Sec\.\s?\d|Section\s?\d|Circular 230|UCC/i,
	bar: /ASC\s?\d|FASB|GASB/i,
	isc: /SOC\s?\d|AICPA|SSAE|AT-C|NIST|COBIT/i,
	tcp: /IRC|Sec\.\s?\d|Section\s?\d/i,
};

// ─── Quality scoring (mirrors QA audit composite) ────────────────

function scoreQuestion(q: DbQuestion, section: string): number {
	let score = 7;

	const stemWords = q.stem.split(/\s+/).length;
	const isL1 = q.cognitive_level === 1;
	const minStemWords = isL1 ? 8 : 12;
	if (stemWords < minStemWords) score -= 2;

	const explanationWords = (q.explanation || "").split(/\s+/).length;
	if (explanationWords < 30) score -= 2;

	// Absolute assurance trap
	const absPattern = /\b(always|never|all|none|every|only)\b/i;
	const wrongChoices = q.choices.filter((_, i) => i !== q.correct_index);
	if (wrongChoices.some((c) => absPattern.test(c))) score -= 2;

	// "All of the above" / "Both A and B"
	if (q.choices.some((c) => /all of the above|both [a-d] and [a-d]/i.test(c)))
		score -= 3;

	// Choice length cuing
	const choiceLengths = q.choices.map((c) => c.length);
	const maxLen = Math.max(...choiceLengths);
	const minLen = Math.min(...choiceLengths);
	if (minLen > 0 && maxLen > 3 * minLen) score -= 1;

	// Citation bonus
	const citationRe = CITATION_PATTERNS[section];
	if (citationRe && citationRe.test(q.explanation || "")) score += 1;

	// Contrast language bonus
	if (/\b(while|whereas|however|in contrast|unlike|although)\b/i.test(q.explanation || ""))
		score += 1;

	// Named entity bonus (proper noun in stem)
	if (/[A-Z][a-z]+(?:\s[A-Z][a-z]+)+/.test(q.stem)) score += 1;

	// Structured explanation bonus (has "Correct" marker)
	if (/Correct\s*\([A-D]\)/i.test(q.explanation || "")) score += 0.5;

	// Has cognitive_level set
	if (q.cognitive_level == null) score -= 1;

	return Math.max(0, Math.min(10, score));
}

// ─── Main ────────────────────────────────────────────────────────

async function main() {
	// Load generation plan for targets
	const planPath = resolve(docsDir, "generation-plan.json");
	const plan = JSON.parse(readFileSync(planPath, "utf-8"));
	const sectionPlan = plan.sections.find(
		(s: { section: string }) => s.section === sectionArg,
	);
	if (!sectionPlan) {
		console.error(`Section ${sectionArg} not found in generation-plan.json`);
		process.exit(1);
	}

	// Build target map: topic → target count
	const targetMap = new Map<string, number>();
	for (const tp of sectionPlan.topics) {
		targetMap.set(tp.topic, tp.targetCount);
	}

	// Fetch all questions for this section
	const questions = await fetchAllQuestions(sectionArg);
	console.error(`Loaded ${questions.length} ${sectionArg.toUpperCase()} questions`);

	// Group by topic and score
	const byTopic = new Map<string, Array<{ id: number; score: number; q: DbQuestion }>>();
	for (const q of questions) {
		if (!byTopic.has(q.topic)) byTopic.set(q.topic, []);
		byTopic.get(q.topic)!.push({
			id: q.id,
			score: scoreQuestion(q, sectionArg),
			q,
		});
	}

	// For each over-target topic, sort by score desc and mark the tail for deletion
	const toDelete: Array<{ id: number; topic: string; score: number }> = [];
	const topicSummaries: Array<{
		topic: string;
		current: number;
		target: number;
		keeping: number;
		trimming: number;
		minKeptScore: number;
		maxTrimScore: number;
	}> = [];

	for (const [topic, scored] of byTopic) {
		const target = targetMap.get(topic);
		if (target === undefined) {
			console.error(`  Warning: topic "${topic}" not in plan, skipping`);
			continue;
		}

		// Sort best-first (score desc, then lower ID first as tiebreaker for stability)
		scored.sort((a, b) => b.score - a.score || a.id - b.id);

		const current = scored.length;
		if (current <= target) continue; // under or at target, nothing to trim

		const keeping = scored.slice(0, target);
		const trimming = scored.slice(target);

		for (const t of trimming) {
			toDelete.push({ id: t.id, topic, score: t.score });
		}

		topicSummaries.push({
			topic,
			current,
			target,
			keeping: keeping.length,
			trimming: trimming.length,
			minKeptScore: keeping.length > 0 ? keeping[keeping.length - 1].score : 0,
			maxTrimScore: trimming.length > 0 ? trimming[0].score : 0,
		});
	}

	// Sort summaries by trimming count desc
	topicSummaries.sort((a, b) => b.trimming - a.trimming);

	console.error(
		`\nTrim plan: ${toDelete.length} questions to delete across ${topicSummaries.length} topics`,
	);

	if (dryRun) {
		// Summary output for dry run
		console.error("\n--- DRY RUN (no output) ---\n");
		for (const s of topicSummaries) {
			console.error(
				`  ${s.topic}: ${s.current} → ${s.target} (trim ${s.trimming}, cutoff score ${s.minKeptScore.toFixed(1)}, worst kept > best trimmed: ${s.minKeptScore.toFixed(1)} vs ${s.maxTrimScore.toFixed(1)})`,
			);
		}
		process.exit(0);
	}

	// Output
	if (formatArg === "summary") {
		console.log(`# Trim Plan: ${sectionArg.toUpperCase()}`);
		console.log(
			`\nTotal to delete: ${toDelete.length} / ${questions.length} (keeping ${questions.length - toDelete.length})`,
		);
		console.log(
			"\n| Topic | Current | Target | Trim | Min Kept Score | Max Trim Score |",
		);
		console.log(
			"|-------|---------|--------|------|----------------|----------------|",
		);
		for (const s of topicSummaries) {
			console.log(
				`| ${s.topic} | ${s.current} | ${s.target} | -${s.trimming} | ${s.minKeptScore.toFixed(1)} | ${s.maxTrimScore.toFixed(1)} |`,
			);
		}
	} else if (formatArg === "sql") {
		// Sort IDs for clean SQL
		const ids = toDelete.map((d) => d.id).sort((a, b) => a - b);
		const lines: string[] = [
			`-- Trim ${sectionArg.toUpperCase()}: delete ${ids.length} lowest-scoring questions to reach 1,500 target`,
			`-- Topics affected: ${topicSummaries.map((s) => `${s.topic} (-${s.trimming})`).join(", ")}`,
			"",
			"BEGIN;",
			"",
		];

		// Chunk into batches of 500 IDs for readable SQL
		const chunkSize = 500;
		for (let i = 0; i < ids.length; i += chunkSize) {
			const chunk = ids.slice(i, i + chunkSize);
			lines.push(`DELETE FROM questions WHERE id IN (${chunk.join(", ")});`);
		}

		lines.push("");
		lines.push("COMMIT;");
		console.log(lines.join("\n"));
	} else {
		// JSON (default)
		console.log(JSON.stringify(toDelete, null, 2));
	}
}

main();
