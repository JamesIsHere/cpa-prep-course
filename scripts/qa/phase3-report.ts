// Phase 3 report — reads docs/phase3-verdicts.jsonl, computes summary statistics
// (per-section match rate, overall miss rate with 95% Wilson CI), and emits a
// disagreements file with full question context for human adjudication.
//
// Usage:
//   npx tsx scripts/qa/phase3-report.ts

import { readFileSync, writeFileSync, existsSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions, type DbQuestion } from "./db-client.js";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

const verdictsPath = resolve(repoRoot, "docs/phase3-verdicts.jsonl");
const reportPath = resolve(repoRoot, "docs/phase3-report.md");
const disagreementsPath = resolve(repoRoot, "docs/phase3-disagreements.json");

interface Verdict {
	id: number;
	section: string;
	topic: string;
	keyed_letter: string;
	predicted_letter: string;
	match: boolean | null;
	confidence: string;
	reasoning: string;
	error?: string;
	raw_output?: string;
	elapsed_ms: number;
	timestamp: string;
}

// 95% Wilson score interval for a binomial proportion p = k/n.
function wilsonInterval(k: number, n: number): { lo: number; hi: number; center: number } {
	if (n === 0) return { lo: 0, hi: 0, center: 0 };
	const z = 1.96;
	const p = k / n;
	const denom = 1 + (z * z) / n;
	const center = (p + (z * z) / (2 * n)) / denom;
	const halfWidth =
		(z * Math.sqrt((p * (1 - p)) / n + (z * z) / (4 * n * n))) / denom;
	return {
		center,
		lo: Math.max(0, center - halfWidth),
		hi: Math.min(1, center + halfWidth),
	};
}

async function main() {
	if (!existsSync(verdictsPath)) {
		console.error(
			`Verdicts file not found: ${verdictsPath}\nRun phase3-verify.ts first.`,
		);
		process.exit(1);
	}

	const lines = readFileSync(verdictsPath, "utf8").split("\n").filter(Boolean);
	const verdicts: Verdict[] = lines.map((l) => JSON.parse(l));

	const sections = ["aud", "far", "reg", "bar", "isc", "tcp"] as const;
	type Bucket = { total: number; match: number; mismatch: number; uncertain: number; error: number };
	const perSection: Record<string, Bucket> = {};
	for (const s of sections) {
		perSection[s] = { total: 0, match: 0, mismatch: 0, uncertain: 0, error: 0 };
	}

	const disagreements: Verdict[] = [];

	for (const v of verdicts) {
		const b = perSection[v.section];
		if (!b) continue;
		b.total++;
		if (v.error || v.predicted_letter === "PARSE-FAIL" || v.predicted_letter === "ERROR") {
			b.error++;
		} else if (v.predicted_letter === "UNCERTAIN") {
			b.uncertain++;
		} else if (v.match === true) {
			b.match++;
		} else if (v.match === false) {
			b.mismatch++;
			disagreements.push(v);
		}
	}

	// Aggregate
	const agg = sections.reduce<Bucket>(
		(acc, s) => ({
			total: acc.total + perSection[s].total,
			match: acc.match + perSection[s].match,
			mismatch: acc.mismatch + perSection[s].mismatch,
			uncertain: acc.uncertain + perSection[s].uncertain,
			error: acc.error + perSection[s].error,
		}),
		{ total: 0, match: 0, mismatch: 0, uncertain: 0, error: 0 },
	);

	// Miss rate uses ONLY the resolved (match + mismatch) population — uncertain and error
	// are excluded because they're not pass/fail signals.
	const resolved = agg.match + agg.mismatch;
	const missRateCI = wilsonInterval(agg.mismatch, resolved);

	// Build disagreements file with full question context for human adjudication.
	const allQuestions: Record<number, DbQuestion> = {};
	if (disagreements.length > 0) {
		for (const s of sections) {
			const qs = await fetchAllQuestions(s);
			for (const q of qs) {
				if (disagreements.some((d) => d.id === q.id)) {
					allQuestions[q.id] = q;
				}
			}
		}
	}

	const disagreementsOut = disagreements.map((d) => {
		const q = allQuestions[d.id];
		return {
			id: d.id,
			section: d.section,
			topic: d.topic,
			keyed_letter: d.keyed_letter,
			verifier_letter: d.predicted_letter,
			verifier_confidence: d.confidence,
			verifier_reasoning: d.reasoning,
			stem: q?.stem ?? "(not found)",
			choices: q?.choices ?? [],
			keyed_choice_text: q?.choices?.[q.correct_index] ?? "",
			stored_explanation: q?.explanation ?? "",
		};
	});

	writeFileSync(disagreementsPath, JSON.stringify(disagreementsOut, null, 2));

	// Build markdown report
	const md: string[] = [];
	md.push(`# Phase 3 Adversarial Re-Solve Report`);
	md.push("");
	md.push(`Generated: ${new Date().toISOString()}`);
	md.push("");
	md.push(`## Summary`);
	md.push("");
	md.push(`| Metric | Value |`);
	md.push(`|--------|------:|`);
	md.push(`| Sample size (verdicts logged) | ${agg.total} |`);
	md.push(`| Verifier matched keyed answer | ${agg.match} |`);
	md.push(`| Verifier disagreed with keyed answer | ${agg.mismatch} |`);
	md.push(`| Verifier marked uncertain | ${agg.uncertain} |`);
	md.push(`| Errors / parse failures | ${agg.error} |`);
	md.push(`| Resolved (match + mismatch) | ${resolved} |`);
	md.push("");
	md.push(`## Estimated miss rate (Mode B) — questions where the verifier disagrees with the keyed answer`);
	md.push("");
	md.push(`- Point estimate: **${(missRateCI.center * 100).toFixed(2)}%**`);
	md.push(`- 95% Wilson CI: **${(missRateCI.lo * 100).toFixed(2)}% — ${(missRateCI.hi * 100).toFixed(2)}%**`);
	md.push("");
	md.push(`Caveat: this is the disagreement rate, not the true error rate. Each disagreement still needs human adjudication to determine whether the verifier was right (real error in the bank), the keyed answer was right (verifier hallucination), or both are defensible (ambiguous question). The true error rate is bounded above by the disagreement rate point estimate.`);
	md.push("");
	md.push(`## Per-section breakdown`);
	md.push("");
	md.push(`| Section | Total | Match | Mismatch | Uncertain | Error | Match rate |`);
	md.push(`|---------|------:|------:|---------:|----------:|------:|-----------:|`);
	for (const s of sections) {
		const b = perSection[s];
		const r = b.match + b.mismatch;
		const rate = r > 0 ? ((b.match / r) * 100).toFixed(1) + "%" : "n/a";
		md.push(
			`| ${s.toUpperCase()} | ${b.total} | ${b.match} | ${b.mismatch} | ${b.uncertain} | ${b.error} | ${rate} |`,
		);
	}
	md.push(
		`| **TOTAL** | **${agg.total}** | **${agg.match}** | **${agg.mismatch}** | **${agg.uncertain}** | **${agg.error}** | **${resolved > 0 ? ((agg.match / resolved) * 100).toFixed(1) + "%" : "n/a"}** |`,
	);
	md.push("");
	md.push(`## Disagreements`);
	md.push("");
	md.push(`${disagreements.length} disagreements written to \`docs/phase3-disagreements.json\` for human adjudication. Walk each one to classify as (true error / verifier wrong / ambiguous).`);
	md.push("");
	if (disagreements.length > 0) {
		md.push(`### Disagreement IDs by section`);
		md.push("");
		for (const s of sections) {
			const ids = disagreements.filter((d) => d.section === s).map((d) => d.id).sort((a, b) => a - b);
			if (ids.length > 0) {
				md.push(`- **${s.toUpperCase()}** (${ids.length}): ${ids.join(", ")}`);
			}
		}
		md.push("");
	}
	md.push(`## Files`);
	md.push("");
	md.push(`- Verdicts (raw, append-only): \`docs/phase3-verdicts.jsonl\``);
	md.push(`- Disagreements (with full context): \`docs/phase3-disagreements.json\``);
	md.push(`- This report: \`docs/phase3-report.md\``);

	writeFileSync(reportPath, md.join("\n") + "\n");

	console.log("");
	console.log(md.slice(0, 60).join("\n"));
	console.log("");
	console.log(`Full report → ${reportPath}`);
	console.log(`Disagreements → ${disagreementsPath}`);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
