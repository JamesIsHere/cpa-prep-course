// Phase 3 adversarial verifier. For each sampled question, sends ONLY the stem and the
// four choices to a fresh `claude --print` invocation and asks Claude to solve from its
// baseline domain knowledge. No keyed answer, no stored explanation, no topic tag, no
// citation hints. Claude returns a structured JSON verdict; we compare its answer letter
// to the stored correct_index.
//
// Resume-safe: each verdict is appended to docs/phase3-verdicts.jsonl. On restart the
// driver reads existing verdicts and skips IDs already processed. Use --limit=N to cap
// the batch size for chunked runs.
//
// IMPORTANT: Run from a standalone PowerShell terminal, not inside Claude Code.
//
// Usage:
//   npx tsx scripts/qa/phase3-verify.ts                # process all unfinished
//   npx tsx scripts/qa/phase3-verify.ts --limit=50     # process up to 50 then stop

import {
	readFileSync,
	writeFileSync,
	existsSync,
	appendFileSync,
} from "fs";
import { spawnSync } from "child_process";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions, type DbQuestion } from "./db-client.js";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

const samplePath = resolve(repoRoot, "docs/phase3-sample.json");
const verdictsPath = resolve(repoRoot, "docs/phase3-verdicts.jsonl");

const limitArg = process.argv
	.find((a) => a.startsWith("--limit="))
	?.split("=")[1];
const LIMIT = limitArg ? parseInt(limitArg) : Infinity;

const INDEX_TO_LETTER = ["A", "B", "C", "D"];

interface Verdict {
	id: number;
	section: string;
	topic: string;
	keyed_letter: string;
	predicted_letter: string;
	match: boolean | null;
	confidence: string;
	reasoning: string;
	raw_output?: string;
	error?: string;
	elapsed_ms: number;
	timestamp: string;
}

function buildPrompt(q: DbQuestion): string {
	const lines = [
		"You are a CPA exam candidate. Solve this question using ONLY your knowledge of US GAAP, IRC, AU-C, and other authoritative CPA-relevant standards. You may not look anything up. You may not browse references.",
		"",
		"Pick the single best answer letter (A, B, C, or D). If the question is ambiguous (multiple defensible answers, or none of the four is correct as stated), output \"uncertain\" with a brief reason.",
		"",
		"Output ONLY a JSON object on a single line with this exact shape (no other text, no markdown fences):",
		'{"answer":"A|B|C|D|uncertain","confidence":"high|medium|low","reasoning":"<2-4 sentences>"}',
		"",
		"QUESTION:",
		q.stem,
		"",
		"CHOICES:",
		`A. ${q.choices[0] ?? ""}`,
		`B. ${q.choices[1] ?? ""}`,
		`C. ${q.choices[2] ?? ""}`,
		`D. ${q.choices[3] ?? ""}`,
		"",
		'JSON only:',
	];
	return lines.join("\n");
}

function parseVerdict(out: string): {
	answer: string;
	confidence: string;
	reasoning: string;
} | null {
	// Find the JSON object — Claude may emit extra text around it
	const match = out.match(/\{[\s\S]*?"answer"[\s\S]*?\}/);
	if (!match) return null;
	try {
		const parsed = JSON.parse(match[0]);
		return {
			answer: String(parsed.answer ?? "").toUpperCase(),
			confidence: String(parsed.confidence ?? "unknown"),
			reasoning: String(parsed.reasoning ?? ""),
		};
	} catch {
		return null;
	}
}

function loadDoneIds(): Set<number> {
	const done = new Set<number>();
	if (!existsSync(verdictsPath)) return done;
	const lines = readFileSync(verdictsPath, "utf8").split("\n").filter(Boolean);
	for (const line of lines) {
		try {
			const v = JSON.parse(line);
			if (typeof v.id === "number") done.add(v.id);
		} catch {}
	}
	return done;
}

async function main() {
	if (!existsSync(samplePath)) {
		console.error(
			`Sample file not found: ${samplePath}\nRun phase3-sample.ts first.`,
		);
		process.exit(1);
	}

	const sampleData = JSON.parse(readFileSync(samplePath, "utf8")) as {
		sections: Record<string, number[]>;
		totalSample: number;
	};

	// Build a flat list of {section, id} preserving section order.
	const queue: Array<{ section: string; id: number }> = [];
	for (const [section, ids] of Object.entries(sampleData.sections)) {
		for (const id of ids) queue.push({ section, id });
	}

	const done = loadDoneIds();
	const remaining = queue.filter((q) => !done.has(q.id));

	console.log("");
	console.log(`Phase 3 verifier — adversarial re-solve (Mode B)`);
	console.log(
		`Sample: ${queue.length}, already done: ${done.size}, remaining: ${remaining.length}, this run limit: ${LIMIT === Infinity ? "all" : LIMIT}`,
	);
	console.log("");

	if (remaining.length === 0) {
		console.log("✓ All sampled questions verified. Run phase3-report.ts for the summary.");
		return;
	}

	// Pre-fetch all needed questions in one query for efficiency.
	const idsToFetch = remaining.slice(0, LIMIT).map((r) => r.id);
	const allBySection = new Map<string, DbQuestion>();
	for (const section of Object.keys(sampleData.sections)) {
		const all = await fetchAllQuestions(section);
		for (const q of all) {
			if (idsToFetch.includes(q.id)) allBySection.set(`${q.id}`, q);
		}
	}

	let processed = 0;
	let matches = 0;
	let mismatches = 0;
	let uncertain = 0;
	let errors = 0;

	for (const { section, id } of remaining) {
		if (processed >= LIMIT) break;
		processed++;

		const q = allBySection.get(`${id}`);
		if (!q) {
			console.error(`  [${processed}/${Math.min(LIMIT, remaining.length)}] Q${id} (${section}) — NOT FOUND in DB, skipping`);
			continue;
		}

		const keyedLetter = INDEX_TO_LETTER[q.correct_index] ?? "?";
		const prompt = buildPrompt(q);

		const start = Date.now();
		const result = spawnSync("claude", ["--print"], {
			input: prompt,
			encoding: "utf8",
			timeout: 120000,
			maxBuffer: 10 * 1024 * 1024,
		});
		const elapsed = Date.now() - start;

		let verdict: Verdict;
		if (result.error || result.status !== 0) {
			errors++;
			verdict = {
				id,
				section,
				topic: q.topic,
				keyed_letter: keyedLetter,
				predicted_letter: "ERROR",
				match: null,
				confidence: "n/a",
				reasoning: "",
				error: result.error?.message ?? `exit ${result.status}: ${result.stderr?.slice(0, 200) ?? ""}`,
				elapsed_ms: elapsed,
				timestamp: new Date().toISOString(),
			};
		} else {
			const parsed = parseVerdict(result.stdout);
			if (!parsed) {
				errors++;
				verdict = {
					id,
					section,
					topic: q.topic,
					keyed_letter: keyedLetter,
					predicted_letter: "PARSE-FAIL",
					match: null,
					confidence: "n/a",
					reasoning: "",
					raw_output: result.stdout.slice(0, 500),
					elapsed_ms: elapsed,
					timestamp: new Date().toISOString(),
				};
			} else {
				const predicted = parsed.answer;
				let match: boolean | null = null;
				if (predicted === "UNCERTAIN") {
					uncertain++;
				} else if (predicted === keyedLetter) {
					match = true;
					matches++;
				} else {
					match = false;
					mismatches++;
				}
				verdict = {
					id,
					section,
					topic: q.topic,
					keyed_letter: keyedLetter,
					predicted_letter: predicted,
					match,
					confidence: parsed.confidence,
					reasoning: parsed.reasoning,
					elapsed_ms: elapsed,
					timestamp: new Date().toISOString(),
				};
			}
		}

		appendFileSync(verdictsPath, JSON.stringify(verdict) + "\n");

		const tag =
			verdict.match === true
				? "✓"
				: verdict.match === false
					? "✗"
					: verdict.predicted_letter === "UNCERTAIN"
						? "?"
						: "!";
		console.log(
			`  [${String(processed).padStart(3)}/${Math.min(LIMIT, remaining.length)}] ${tag} Q${id} (${section}) keyed=${keyedLetter} predicted=${verdict.predicted_letter} ${(elapsed / 1000).toFixed(1)}s`,
		);
	}

	console.log("");
	console.log(
		`Run summary — processed=${processed}, matches=${matches}, mismatches=${mismatches}, uncertain=${uncertain}, errors=${errors}`,
	);
	console.log(
		`Verdicts appended → ${verdictsPath}`,
	);
	const stillRemaining = remaining.length - processed;
	if (stillRemaining > 0) {
		console.log(
			`${stillRemaining} questions still pending. Re-run to continue.`,
		);
	} else {
		console.log("");
		console.log("✓ All done. Run phase3-report.ts for the summary.");
	}
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
