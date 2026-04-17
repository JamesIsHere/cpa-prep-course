// Direction W classifier: two-pass cascade for section-wide question classification.
//
// Pass 1: match questions to task-level specs (5-part aicpaRef) by AICPA group
// Pass 2: unmatched questions matched to lesson-specs (topic/group level)
//
// Reads task-spec files directly from disk (no registry required — works with
// unregistered scaffolds). Uses `claude --print` for classification.
//
// Usage:
//   npx tsx scripts/qa/classify-section.ts --section=far
//   npx tsx scripts/qa/classify-section.ts --section=far --group=FAR/I/A
//   npx tsx scripts/qa/classify-section.ts --section=far --limit=20 --batch-size=10
//
// Output:
//   docs/classify-<section>.json   — machine-readable pin suggestions
//   docs/classify-<section>.md     — human-readable report

import { config } from "dotenv";
config({ path: ".env.local" });

import { createClient } from "@supabase/supabase-js";
import { readFileSync, writeFileSync, readdirSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import { spawnSync } from "child_process";
import { resolveTaskRef } from "../../src/lib/lesson-specs/blueprint-task-resolver";

const __dirname = dirname(fileURLToPath(import.meta.url));
const root = resolve(__dirname, "../..");

// ── CLI args ───────────────────────────────────────────────────────
const sectionArg = process.argv.find((a) => a.startsWith("--section="))?.split("=")[1];
const groupFilter = process.argv.find((a) => a.startsWith("--group="))?.split("=")[1];
const limitArg = process.argv.find((a) => a.startsWith("--limit="))?.split("=")[1];
const batchSizeArg = process.argv.find((a) => a.startsWith("--batch-size="))?.split("=")[1];
const limit = limitArg ? parseInt(limitArg, 10) : null;
const BATCH_SIZE = batchSizeArg ? parseInt(batchSizeArg, 10) : 10;
const BATCH_TIMEOUT_MS = 180_000;

if (!sectionArg) {
	console.error("Usage: npx tsx scripts/qa/classify-section.ts --section=far [--group=FAR/I/A] [--limit=N] [--batch-size=N]");
	process.exit(1);
}

function logStep(msg: string) {
	const ts = new Date().toISOString().slice(11, 19);
	process.stderr.write(`[${ts}] ${msg}\n`);
}

// ── Load task-specs from files ─────────────────────────────────────
interface TaskSpecMeta {
	aicpaRef: string;
	aicpaTask: string;
	aicpaSkill: string;
	bloomLevel: number;
	lessonSpec: string;
	groupRef: string;
}

function loadTaskSpecsFromFiles(section: string): TaskSpecMeta[] {
	const dir = resolve(root, "src/lib/task-specs");
	const prefix = `${section}-`;
	const files = readdirSync(dir).filter(
		(f) => f.startsWith(prefix) && f.endsWith(".ts") && !f.startsWith("_"),
	);

	const specs: TaskSpecMeta[] = [];
	for (const f of files) {
		const content = readFileSync(resolve(dir, f), "utf-8");
		const refMatch = content.match(/aicpaRef:\s*"([^"]+)"/);
		const taskMatch = content.match(/aicpaTask:\s*\n?\s*"([^"]+(?:"[^"]*"[^"]*)*?)"/s);
		const skillMatch = content.match(/aicpaSkill:\s*"([^"]+)"/);
		const lessonMatch = content.match(/lessonSpec:\s*"([^"]+)"/);
		if (!refMatch || !skillMatch || !lessonMatch) continue;

		const ref = refMatch[1];
		const resolved = resolveTaskRef(ref);
		if (!resolved) continue;

		const parts = ref.split("/");
		const groupRef = parts.slice(0, 3).join("/");

		specs.push({
			aicpaRef: ref,
			aicpaTask: resolved.task.task,
			aicpaSkill: resolved.task.skill,
			bloomLevel: { "Remembering and Understanding": 1, Application: 2, Analysis: 3, Evaluation: 4 }[resolved.task.skill] ?? 2,
			lessonSpec: lessonMatch[1],
			groupRef,
		});
	}

	return specs;
}

// ── DB types ───────────────────────────────────────────────────────
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

interface PinSuggestion {
	question_id: number;
	pin_ref: string | null;
	confidence: "high" | "medium" | "low";
	rationale: string;
	pass: 1 | 2;
	bloom_overshoot: boolean;
	question_bloom: number | null;
	task_bloom: number | null;
}

// ── Classify a batch of questions against a set of task-specs ──────
function classifyBatch(
	questions: DbQuestion[],
	specs: TaskSpecMeta[],
	groupLabel: string,
): PinSuggestion[] {
	const specSummary = specs
		.map((s, i) =>
			`[${i + 1}] ${s.aicpaRef} | L${s.bloomLevel} | ${s.aicpaSkill}\n   Task: ${s.aicpaTask}`,
		)
		.join("\n\n");

	const questionBlock = questions
		.map(
			(q, i) =>
				`### Question ${i + 1} (id=${q.id}, cognitive_level=${q.cognitive_level ?? "null"}, difficulty=${q.difficulty})\n\nSTEM: ${q.stem}\n\nCHOICES: ${JSON.stringify(q.choices)}\n\nCORRECT: [${q.correct_index}] ${q.choices[q.correct_index] ?? "(index out of range)"}\n\nEXPLANATION: ${q.explanation.slice(0, 400)}${q.explanation.length > 400 ? "..." : ""}`,
		)
		.join("\n\n");

	const prompt = `You are classifying CPA exam questions to specific AICPA representative tasks. Each question must be matched to EXACTLY ONE task from the list below, OR marked as "homeless" if no task fits.

## AICPA task-specs for ${groupLabel}

${specSummary}

## Rules

1. Match each question to the SINGLE task whose description best describes what the question is testing.
2. Bloom's level is a tie-breaker: if two tasks could plausibly fit, prefer the one whose bloomLevel is closest to (but not below) the question's cognitive_level.
3. **CRITICAL: if no task's description reasonably describes the question, mark homeless: true and set proposed_ref to null. Do NOT force a match.**
4. The task's bloomLevel is a CEILING, not a match. Questions may be at or below the task's level. Only set bloom_overshoot: true if the question's cognitive_level is STRICTLY GREATER than the task's bloomLevel.
5. confidence: "high" = clear match, "medium" = probable but imperfect, "low" = significant uncertainty.

## Questions to classify

${questionBlock}

## Required output (JSON only, no prose before or after)

Output a JSON array with exactly ${questions.length} objects:
{
  "question_id": <number>,
  "proposed_ref": "<AICPA ref>" | null,
  "confidence": "high" | "medium" | "low",
  "rationale": "<one sentence>",
  "homeless": <boolean>,
  "bloom_overshoot": <boolean>
}

OUTPUT THE JSON NOW:`;

	const result = spawnSync(
		"claude",
		["--print", "--model", "claude-sonnet-4-5", "--output-format", "text"],
		{
			input: prompt,
			encoding: "utf-8",
			maxBuffer: 10 * 1024 * 1024,
			timeout: BATCH_TIMEOUT_MS,
		},
	);

	if (result.error && (result.error as NodeJS.ErrnoException).code === "ETIMEDOUT") {
		logStep(`TIMED OUT (limit ${BATCH_TIMEOUT_MS / 1000}s)`);
		return [];
	}
	if (result.status !== 0) {
		logStep(`FAILED (status ${result.status})`);
		logStep(`stderr: ${result.stderr?.slice(0, 300)}`);
		return [];
	}

	const output = result.stdout.trim();
	const jsonMatch = output.match(/\[[\s\S]*\]/);
	if (!jsonMatch) {
		logStep(`No JSON array found in output`);
		return [];
	}

	let parsed: Array<{
		question_id: number;
		proposed_ref: string | null;
		confidence: "high" | "medium" | "low";
		rationale: string;
		homeless: boolean;
		bloom_overshoot: boolean;
	}>;
	try {
		parsed = JSON.parse(jsonMatch[0]);
	} catch {
		logStep(`JSON parse failed`);
		return [];
	}

	return parsed.map((entry) => {
		const q = questions.find((bq) => bq.id === entry.question_id);
		const spec = entry.proposed_ref
			? specs.find((s) => s.aicpaRef === entry.proposed_ref)
			: null;
		const bloomOvershoot =
			spec != null &&
			q?.cognitive_level != null &&
			q.cognitive_level > spec.bloomLevel;
		return {
			question_id: entry.question_id,
			pin_ref: entry.proposed_ref,
			confidence: entry.confidence,
			rationale: entry.rationale,
			pass: 1 as const,
			bloom_overshoot: bloomOvershoot,
			question_bloom: q?.cognitive_level ?? null,
			task_bloom: spec?.bloomLevel ?? null,
		};
	});
}

// ── Main ───────────────────────────────────────────────────────────
async function main() {
	const sb = createClient(
		process.env.NEXT_PUBLIC_SUPABASE_URL!,
		process.env.SUPABASE_SERVICE_ROLE_KEY!,
	);

	const { data: secs } = await sb.from("sections").select("id,slug");
	const sectionId = (secs ?? []).find(
		(s: { slug: string }) => s.slug === sectionArg,
	)?.id;
	if (!sectionId) {
		console.error(`Unknown section: ${sectionArg}`);
		process.exit(1);
	}

	// Load all task-specs for this section
	const allSpecs = loadTaskSpecsFromFiles(sectionArg!);
	logStep(`Loaded ${allSpecs.length} task-specs for section ${sectionArg}`);

	// Group specs by AICPA group
	const specsByGroup: Record<string, TaskSpecMeta[]> = {};
	for (const s of allSpecs) {
		(specsByGroup[s.groupRef] ??= []).push(s);
	}
	const groupRefs = Object.keys(specsByGroup).sort();
	logStep(`${groupRefs.length} AICPA groups: ${groupRefs.join(", ")}`);

	// Filter to one group if requested
	const activeGroups = groupFilter
		? groupRefs.filter((g) => g === groupFilter)
		: groupRefs;
	if (activeGroups.length === 0) {
		console.error(`No task-specs found for group ${groupFilter}`);
		process.exit(1);
	}

	// Build topic → groupRef mapping from lesson-spec files
	const topicToGroup: Record<string, string> = {};
	const lsDir = resolve(root, "src/lib/lesson-specs");
	const lsFiles = readdirSync(lsDir).filter(
		(f) => f.startsWith(`${sectionArg}-`) && f.endsWith(".ts") && !f.startsWith("_"),
	);
	for (const f of lsFiles) {
		const content = readFileSync(resolve(lsDir, f), "utf-8");
		const topicMatch = content.match(/topic:\s*"([^"]+)"/);
		const refMatch = content.match(/primaryRef:\s*"([^"]+)"/);
		if (topicMatch && refMatch) {
			const groupRef = refMatch[1].split("/").slice(0, 3).join("/");
			topicToGroup[topicMatch[1]] = groupRef;
		}
	}
	logStep(`Topic→group mapping: ${Object.keys(topicToGroup).length} topics mapped`);

	// Fetch ALL questions for the section
	const { data: rows, error } = await sb
		.from("questions")
		.select("id,topic,stem,choices,correct_index,explanation,difficulty,cognitive_level")
		.eq("section_id", sectionId);
	if (error) throw error;
	let questions = (rows ?? []) as DbQuestion[];
	if (limit) questions = questions.slice(0, limit);
	logStep(`Loaded ${questions.length} questions for section ${sectionArg}`);

	// Pre-filter questions to groups via topic → lesson-spec → primaryRef
	const questionsByGroup: Record<string, DbQuestion[]> = {};
	const unmappedQuestions: DbQuestion[] = [];
	for (const q of questions) {
		const groupRef = topicToGroup[q.topic];
		if (groupRef && specsByGroup[groupRef]) {
			(questionsByGroup[groupRef] ??= []).push(q);
		} else {
			unmappedQuestions.push(q);
		}
	}
	logStep(`Pre-filtered: ${questions.length - unmappedQuestions.length} questions mapped to groups, ${unmappedQuestions.length} unmapped`);

	// ── Pass 1: task-level classification by group ──────────────
	const allSuggestions: PinSuggestion[] = [];
	let batchCount = 0;

	for (const groupRef of activeGroups) {
		const specs = specsByGroup[groupRef];
		const groupQuestions = questionsByGroup[groupRef] ?? [];
		if (groupQuestions.length === 0) {
			logStep(`\nPass 1 — Group ${groupRef}: 0 questions, skipping`);
			continue;
		}

		logStep(`\nPass 1 — Group ${groupRef} (${specs.length} tasks, ${groupQuestions.length} questions)`);

		for (let i = 0; i < groupQuestions.length; i += BATCH_SIZE) {
			const batch = groupQuestions.slice(i, i + BATCH_SIZE);
			batchCount++;
			const t0 = Date.now();
			logStep(`  Batch ${batchCount} (${batch.length} questions) — spawning claude...`);

			const results = classifyBatch(batch, specs, groupRef);
			const elapsed = ((Date.now() - t0) / 1000).toFixed(1);
			logStep(`  Batch ${batchCount} returned in ${elapsed}s (${results.length} results)`);

			for (const r of results) {
				if (r.pin_ref && r.pin_ref !== "null") {
					allSuggestions.push(r);
				} else {
					allSuggestions.push({ ...r, pin_ref: null, pass: 1 });
				}
			}

			// Incremental save
			writeFileSync(
				resolve(root, `docs/classify-${sectionArg}.partial.json`),
				JSON.stringify({ progress: allSuggestions.length, total: questions.length, suggestions: allSuggestions }, null, 2),
			);
		}
	}

	const pass1Matched = allSuggestions.filter((s) => s.pin_ref !== null).length;
	const pass1Homeless = allSuggestions.filter((s) => s.pin_ref === null).length;
	logStep(`\nPass 1 complete: ${pass1Matched} matched, ${pass1Homeless} homeless`);

	// ── Pass 2: handle unmapped questions ───────────────────────
	// Questions whose topic didn't map to any AICPA group with task-specs
	// These are either: topics without lesson-specs, or lesson-specs whose
	// primaryRef group has no task-specs yet.
	const classifiedIds = new Set(allSuggestions.map((s) => s.question_id));
	for (const q of unmappedQuestions) {
		if (!classifiedIds.has(q.id)) {
			allSuggestions.push({
				question_id: q.id,
				pin_ref: null,
				confidence: "low",
				rationale: `Topic "${q.topic}" has no lesson-spec mapping to an AICPA group with task-specs`,
				pass: 2,
				bloom_overshoot: false,
				question_bloom: q.cognitive_level,
				task_bloom: null,
			});
		}
	}
	// Also mark questions that were submitted to a group but classified as homeless
	for (const q of questions) {
		if (!allSuggestions.find((s) => s.question_id === q.id)) {
			allSuggestions.push({
				question_id: q.id,
				pin_ref: null,
				confidence: "low",
				rationale: "Missing from classifier output (batch error or timeout)",
				pass: 1,
				bloom_overshoot: false,
				question_bloom: q.cognitive_level,
				task_bloom: null,
			});
		}
	}

	// ── Write outputs ──────────────────────────────────────────
	const jsonOut = {
		section: sectionArg,
		generatedAt: new Date().toISOString(),
		totalQuestions: questions.length,
		pass1Matched,
		pass1Homeless,
		suggestions: allSuggestions.sort((a, b) => a.question_id - b.question_id),
	};
	writeFileSync(
		resolve(root, `docs/classify-${sectionArg}.json`),
		JSON.stringify(jsonOut, null, 2),
	);

	// Markdown report
	const byConf = {
		high: allSuggestions.filter((s) => s.confidence === "high" && s.pin_ref).length,
		medium: allSuggestions.filter((s) => s.confidence === "medium" && s.pin_ref).length,
		low: allSuggestions.filter((s) => s.confidence === "low" && s.pin_ref).length,
	};
	const overshootCount = allSuggestions.filter((s) => s.bloom_overshoot).length;
	const homelessCount = allSuggestions.filter((s) => s.pin_ref === null).length;
	const foundationalCount = allSuggestions.filter(
		(s) => s.pin_ref && s.question_bloom != null && s.task_bloom != null && s.question_bloom < s.task_bloom,
	).length;

	let md = `# Classification report — ${sectionArg!.toUpperCase()}\n\n`;
	md += `Generated: ${new Date().toISOString().slice(0, 10)}\n\n`;
	md += `## Summary\n\n`;
	md += `- Questions classified: **${questions.length}**\n`;
	md += `- Task-specs available: **${allSpecs.length}**\n`;
	md += `- Matched (has pin_ref): **${pass1Matched}** (${Math.round((100 * pass1Matched) / questions.length)}%)\n`;
	md += `- Homeless (no pin_ref): **${homelessCount}** (${Math.round((100 * homelessCount) / questions.length)}%)\n`;
	md += `- Confidence: **${byConf.high} high**, ${byConf.medium} medium, ${byConf.low} low\n`;
	md += `- Bloom's overshoot: **${overshootCount}** (${Math.round((100 * overshootCount) / questions.length)}%)\n`;
	md += `- Foundational recall: **${foundationalCount}** (${Math.round((100 * foundationalCount) / questions.length)}%)\n\n`;

	// Per-group coverage
	md += `## Per-group coverage\n\n`;
	md += `| Group | Task-specs | Matched | Homeless | Overshoot |\n`;
	md += `|---|---|---|---|---|\n`;
	for (const groupRef of activeGroups) {
		const specs = specsByGroup[groupRef];
		const groupSuggestions = allSuggestions.filter(
			(s) => s.pin_ref && s.pin_ref.startsWith(groupRef),
		);
		const groupOvershoots = groupSuggestions.filter((s) => s.bloom_overshoot).length;
		md += `| ${groupRef} | ${specs.length} | ${groupSuggestions.length} | — | ${groupOvershoots} |\n`;
	}
	md += `\n`;

	writeFileSync(resolve(root, `docs/classify-${sectionArg}.md`), md);

	logStep(`\nReport written to docs/classify-${sectionArg}.md`);
	logStep(`Pin suggestions written to docs/classify-${sectionArg}.json`);
	logStep(`Summary: ${questions.length} questions, ${pass1Matched} matched, ${homelessCount} homeless, ${overshootCount} overshoots`);
}

main().catch((e) => {
	console.error("ERROR:", e);
	process.exit(1);
});
