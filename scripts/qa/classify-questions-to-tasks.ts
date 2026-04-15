// Phase 1 classifier: propose a task-spec match for each question in a given
// topic, using Claude as a judge.
//
// Usage:
//   npx tsx scripts/qa/classify-questions-to-tasks.ts --topic="S Corporations" --section=reg
//
// Output:
//   - Stdout: summary + per-question classification with confidence
//   - File: docs/phase-1-report.md
//
// This is a pilot implementation scoped to a single topic with a group of
// task-specs all anchored under one AICPA group. The classifier reads the
// question bank, pairs each question with the group's task-specs, and asks
// Claude which task best matches. For each question it returns:
//   - proposed_ref: the task-spec aicpaRef
//   - confidence: "high" | "medium" | "low"
//   - rationale: one sentence
//   - homeless: true if no task matches (bank orphan candidate)
//   - bloom_mismatch: true if the best-match task's bloomLevel != question's cognitive_level
//
// Cost: ~3-5 cents per batch of 10 questions via the Claude API. For 83
// questions that's ~$0.25-$0.40 total.

import { config } from "dotenv";
config({ path: ".env.local" });

import { createClient } from "@supabase/supabase-js";
import { writeFileSync } from "fs";
import { spawnSync } from "child_process";
import { taskSpecsByGroup } from "../../src/lib/task-specs/index";
import type { TaskSpec } from "../../src/lib/task-specs/index";

const topicArg = process.argv
	.find((a) => a.startsWith("--topic="))
	?.split("=")[1]
	?.replace(/^"|"$/g, "");
const sectionArg = process.argv
	.find((a) => a.startsWith("--section="))
	?.split("=")[1];
const groupArg =
	process.argv.find((a) => a.startsWith("--group="))?.split("=")[1] ??
	"REG/V/C";
const limitArg = process.argv.find((a) => a.startsWith("--limit="))?.split("=")[1];
const limit = limitArg ? parseInt(limitArg, 10) : null;

function logStep(msg: string) {
	const ts = new Date().toISOString().slice(11, 19);
	process.stderr.write(`[${ts}] ${msg}\n`);
}

if (!topicArg || !sectionArg) {
	console.error(
		"Usage: npx tsx scripts/qa/classify-questions-to-tasks.ts --topic=\"S Corporations\" --section=reg [--group=REG/V/C]",
	);
	process.exit(1);
}

interface DbQuestion {
	id: number;
	topic: string;
	stem: string;
	choices: string[];
	correct_index: number;
	explanation: string;
	difficulty: string;
	cognitive_level: number | null;
}

interface Classification {
	question_id: number;
	proposed_ref: string | null;
	confidence: "high" | "medium" | "low";
	rationale: string;
	homeless: boolean;
	bloom_mismatch: boolean;
	question_bloom: number | null;
	task_bloom: number | null;
}

async function main() {
	const sb = createClient(
		process.env.NEXT_PUBLIC_SUPABASE_URL!,
		process.env.SUPABASE_SERVICE_ROLE_KEY!,
	);

	// Section ID lookup
	const { data: secs } = await sb.from("sections").select("id,slug");
	const codeToId = new Map<string, string>();
	for (const s of (secs ?? []) as Array<{ id: string; slug: string }>) {
		codeToId.set(s.slug, String(s.id));
	}
	const sectionId = codeToId.get(sectionArg);
	if (!sectionId) {
		console.error(`Unknown section: ${sectionArg}`);
		process.exit(1);
	}

	// Fetch questions
	const { data: rows, error } = await sb
		.from("questions")
		.select("id,topic,stem,choices,correct_index,explanation,difficulty,cognitive_level")
		.eq("section_id", sectionId)
		.eq("topic", topicArg);
	if (error) throw error;
	let questions = (rows ?? []) as DbQuestion[];
	if (limit) questions = questions.slice(0, limit);
	logStep(`Loaded ${questions.length} questions for topic "${topicArg}"${limit ? ` (limited to ${limit})` : ""}`);

	// Load task-specs for the group
	const specs = taskSpecsByGroup(groupArg);
	logStep(`Loaded ${specs.length} task-specs for group ${groupArg}`);
	if (specs.length === 0) {
		console.error(`No task-specs found for group ${groupArg}. Aborting.`);
		process.exit(1);
	}

	// Build the classifier prompt template once
	const specSummary = specs
		.map((s, i) => {
			return `[${i + 1}] ${s.aicpaRef} | L${s.bloomLevel} | ${s.aicpaSkill}
   Task: ${s.aicpaTask}
   In scope: ${s.inScope.slice(0, 3).join("; ")}${s.inScope.length > 3 ? "; ..." : ""}`;
		})
		.join("\n\n");

	const classifications: Classification[] = [];

	// Process in batches of 5 for cost control
	const BATCH_SIZE = 5;
	const BATCH_TIMEOUT_MS = 90_000;
	const totalBatches = Math.ceil(questions.length / BATCH_SIZE);
	for (let i = 0; i < questions.length; i += BATCH_SIZE) {
		const batch = questions.slice(i, i + BATCH_SIZE);
		const batchNum = Math.floor(i / BATCH_SIZE) + 1;
		const t0 = Date.now();
		logStep(`Batch ${batchNum}/${totalBatches} (${batch.length} questions) — spawning claude...`);

		const batchPrompt = `You are classifying CPA exam questions to specific AICPA representative tasks. Each question must be matched to EXACTLY ONE task from the list below, OR marked as "homeless" if no task fits.

## AICPA task-specs for group ${groupArg} (${specs[0].section.toUpperCase()} S corporations)

${specSummary}

## Rules

1. Match each question to the SINGLE task whose \`inScope\` best describes what the question is testing.
2. Bloom's level is a tie-breaker: if two tasks could plausibly fit, prefer the one whose \`bloomLevel\` matches the question's \`cognitive_level\`.
3. **CRITICAL: if no task's inScope reasonably describes the question, mark \`homeless: true\` and set proposed_ref to null. Do NOT force a match — a bad match is worse than a homeless flag.**
4. If the best-match task's bloomLevel != the question's cognitive_level, set \`bloom_mismatch: true\` (this means the question probably needs re-leveling).
5. \`confidence\` is:
   - "high": the question clearly tests one of the task's inScope entries, and the Bloom's level matches
   - "medium": the question probably tests the task but the fit is imperfect, OR the Bloom's matches but the content is borderline
   - "low": the question MIGHT belong to this task but there's significant uncertainty. Use "low" liberally rather than forcing "high"

## Questions to classify

${batch.map((q, bi) => `
### Question ${bi + 1} (id=${q.id}, cognitive_level=${q.cognitive_level ?? "null"}, difficulty=${q.difficulty})

STEM: ${q.stem}

CHOICES: ${JSON.stringify(q.choices)}

CORRECT: [${q.correct_index}] ${q.choices[q.correct_index] ?? "(index out of range)"}

EXPLANATION: ${q.explanation.slice(0, 400)}${q.explanation.length > 400 ? "..." : ""}
`).join("\n")}

## Required output (JSON only, no prose before or after)

Output a JSON array with exactly ${batch.length} objects in the same order as the questions above. Each object has these fields:

{
  "question_id": <number>,
  "proposed_ref": "<AICPA ref like REG/V/C/1/1>" | null,
  "confidence": "high" | "medium" | "low",
  "rationale": "<one sentence>",
  "homeless": <boolean>,
  "bloom_mismatch": <boolean>
}

OUTPUT THE JSON NOW:`;

		// Call Claude via the CLI — headless, non-interactive
		const result = spawnSync(
			"claude",
			["--print", "--model", "claude-sonnet-4-5", "--output-format", "text"],
			{
				input: batchPrompt,
				encoding: "utf-8",
				maxBuffer: 10 * 1024 * 1024,
				timeout: BATCH_TIMEOUT_MS,
			},
		);

		const elapsed = ((Date.now() - t0) / 1000).toFixed(1);

		if (result.error && (result.error as NodeJS.ErrnoException).code === "ETIMEDOUT") {
			logStep(`Batch ${batchNum} TIMED OUT after ${elapsed}s (limit ${BATCH_TIMEOUT_MS / 1000}s)`);
			process.exit(1);
		}
		if (result.status !== 0) {
			logStep(`Batch ${batchNum} FAILED (status ${result.status}, ${elapsed}s)`);
			console.error(`stderr: ${result.stderr}`);
			console.error(`stdout: ${result.stdout?.slice(0, 500)}`);
			process.exit(1);
		}

		logStep(`Batch ${batchNum} returned in ${elapsed}s`);
		const output = result.stdout.trim();
		// Extract JSON from the output
		const jsonMatch = output.match(/\[[\s\S]*\]/);
		if (!jsonMatch) {
			console.error(`Could not find JSON array in Claude output:\n${output}`);
			process.exit(1);
		}

		let parsed: Array<{
			question_id: number;
			proposed_ref: string | null;
			confidence: "high" | "medium" | "low";
			rationale: string;
			homeless: boolean;
			bloom_mismatch: boolean;
		}>;
		try {
			parsed = JSON.parse(jsonMatch[0]);
		} catch (e) {
			console.error(`Failed to parse JSON: ${e}\nOutput: ${jsonMatch[0]}`);
			process.exit(1);
		}

		// Merge in the question's cognitive_level and compute bloom_mismatch
		// independently (don't trust Claude's bloom_mismatch, verify it)
		for (const entry of parsed) {
			const q = batch.find((bq) => bq.id === entry.question_id);
			const spec = entry.proposed_ref
				? specs.find((s) => s.aicpaRef === entry.proposed_ref)
				: null;
			const bloomMismatch =
				spec != null &&
				q?.cognitive_level != null &&
				q.cognitive_level !== spec.bloomLevel;
			classifications.push({
				question_id: entry.question_id,
				proposed_ref: entry.proposed_ref,
				confidence: entry.confidence,
				rationale: entry.rationale,
				homeless: entry.homeless,
				bloom_mismatch: bloomMismatch,
				question_bloom: q?.cognitive_level ?? null,
				task_bloom: spec?.bloomLevel ?? null,
			});
		}

		// Incremental partial report — overwrite after each batch so progress survives crashes
		writeFileSync(
			"docs/phase-1-report.partial.md",
			`# Phase 1 partial — ${classifications.length}/${questions.length} classified (batch ${batchNum}/${totalBatches})\n\nGenerated: ${new Date().toISOString()}\n\n` +
				JSON.stringify(classifications, null, 2),
		);
		logStep(`Batch ${batchNum} written to partial report (${classifications.length}/${questions.length} total)`);
	}

	// ─── Aggregate and write the report ───
	const byRef: Record<string, Classification[]> = {};
	const homeless: Classification[] = [];
	for (const c of classifications) {
		if (c.homeless || c.proposed_ref == null) homeless.push(c);
		else (byRef[c.proposed_ref] ??= []).push(c);
	}

	const byConfidence = {
		high: classifications.filter((c) => c.confidence === "high").length,
		medium: classifications.filter((c) => c.confidence === "medium").length,
		low: classifications.filter((c) => c.confidence === "low").length,
	};
	const bloomMismatchCount = classifications.filter((c) => c.bloom_mismatch).length;

	let md = `# Phase 1 report — task-spec pilot on ${groupArg} ${specs[0].section.toUpperCase()} ${topicArg}\n\n`;
	md += `Generated: ${new Date().toISOString().slice(0, 10)}\n\n`;
	md += `## Summary\n\n`;
	md += `- Questions classified: **${classifications.length}**\n`;
	md += `- Task-specs available: **${specs.length}**\n`;
	md += `- Homeless (no task fit): **${homeless.length}** (${Math.round((100 * homeless.length) / classifications.length)}%)\n`;
	md += `- Confidence: **${byConfidence.high} high**, ${byConfidence.medium} medium, ${byConfidence.low} low\n`;
	md += `- Bloom's mismatch (question level ≠ task level): **${bloomMismatchCount}** (${Math.round((100 * bloomMismatchCount) / classifications.length)}%)\n\n`;

	md += `## Per-task coverage vs target\n\n`;
	md += `| Task ref | Target | Classified | Mismatch (Bloom's) | High-conf | Delta |\n`;
	md += `|---|---|---|---|---|---|\n`;
	for (const spec of specs) {
		const matched = byRef[spec.aicpaRef] ?? [];
		const highConf = matched.filter((m) => m.confidence === "high").length;
		const mismatches = matched.filter((m) => m.bloom_mismatch).length;
		const delta = matched.length - spec.targetCount;
		md += `| ${spec.aicpaRef} (L${spec.bloomLevel}) | ${spec.targetCount} | ${matched.length} | ${mismatches} | ${highConf} | ${delta > 0 ? "+" : ""}${delta} |\n`;
	}
	md += `\n`;

	md += `## Homeless questions (no task fit)\n\n`;
	if (homeless.length === 0) md += `*none*\n\n`;
	else {
		md += `| Question ID | Bloom | Rationale |\n`;
		md += `|---|---|---|\n`;
		for (const h of homeless) {
			md += `| Q${h.question_id} | L${h.question_bloom ?? "—"} | ${h.rationale.replace(/\|/g, "\\|").slice(0, 120)} |\n`;
		}
		md += `\n`;
	}

	md += `## Bloom's mismatches (question level ≠ task level)\n\n`;
	const mismatches = classifications.filter((c) => c.bloom_mismatch);
	if (mismatches.length === 0) md += `*none*\n\n`;
	else {
		md += `These questions matched a task-spec on content, but the question's \`cognitive_level\` differs from the task-spec's \`bloomLevel\`. Per strict Bloom's pinning, one of three fixes applies: (a) rewrite the stem to force the correct skill level, (b) re-classify the question to a different task at the matching level, or (c) delete.\n\n`;
		md += `| Question ID | Proposed task | Q bloom | Task bloom | Rationale |\n`;
		md += `|---|---|---|---|---|\n`;
		for (const m of mismatches) {
			md += `| Q${m.question_id} | ${m.proposed_ref} | L${m.question_bloom} | L${m.task_bloom} | ${m.rationale.replace(/\|/g, "\\|").slice(0, 100)} |\n`;
		}
		md += `\n`;
	}

	md += `## Low-confidence matches\n\n`;
	const lowConf = classifications.filter(
		(c) => c.confidence === "low" && !c.homeless,
	);
	if (lowConf.length === 0) md += `*none*\n\n`;
	else {
		md += `| Question ID | Proposed task | Rationale |\n`;
		md += `|---|---|---|\n`;
		for (const l of lowConf) {
			md += `| Q${l.question_id} | ${l.proposed_ref} | ${l.rationale.replace(/\|/g, "\\|").slice(0, 120)} |\n`;
		}
		md += `\n`;
	}

	md += `## Full classification\n\n`;
	md += `| Q ID | Proposed ref | Conf | Q bloom | Task bloom | Rationale |\n`;
	md += `|---|---|---|---|---|---|\n`;
	for (const c of classifications.sort((a, b) => a.question_id - b.question_id)) {
		md += `| Q${c.question_id} | ${c.proposed_ref ?? "—"} | ${c.confidence} | L${c.question_bloom ?? "—"} | L${c.task_bloom ?? "—"} | ${c.rationale.replace(/\|/g, "\\|").slice(0, 100)} |\n`;
	}
	md += `\n`;

	writeFileSync("docs/phase-1-report.md", md);
	logStep(`Report written to docs/phase-1-report.md`);
	logStep(`Summary: ${classifications.length} classified, ${homeless.length} homeless, ${bloomMismatchCount} bloom mismatches, ${byConfidence.high} high-confidence`);
}

main().catch((e) => {
	console.error("ERROR:", e);
	process.exit(1);
});
