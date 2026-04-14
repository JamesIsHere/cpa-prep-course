// Strict classifier for the BAR / "Prospective Analysis and Forecasting" off-blueprint
// audit. Slayer's course covers basic regression for cost estimation and simple exponential
// smoothing as forecasting techniques, so plain regression / R² / dependent-independent
// variable / Monte Carlo / basic exponential smoothing all stay in scope.
//
// HARD signals — always off-blueprint, candidates for deletion:
//   2SLS, instrumental variables, simultaneity, multicollinearity, heteroscedasticity,
//   autocorrelation, Durbin-Watson, ARIMA, Holt-Winters, Bayesian methods.
//
// MEDIUM signals — likely off-blueprint when used in regression hypothesis-testing or
// model-selection contexts, verify case-by-case:
//   adjusted R² (as model-selection criterion), confidence intervals on regression
//   coefficients, p-values, t-statistics in regression context.
//
// Output: hard-signal IDs (delete list), medium-signal IDs (verify list), per-question
// signals matched.

import { writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions } from "./db-client.js";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

const HARD_SIGNALS: Array<{ name: string; pattern: RegExp }> = [
	{ name: "2SLS",                 pattern: /\b2SLS\b|\btwo[-\s]stage least squares\b/i },
	{ name: "instrumental_variable", pattern: /\binstrumental variables?\b/i },
	{ name: "simultaneity",         pattern: /\bsimultaneity\b|\bsimultaneous equations?\b/i },
	{ name: "multicollinearity",    pattern: /\bmulticollinearity\b/i },
	{ name: "heteroscedasticity",   pattern: /\bheteroscedastic|\bheteroskedastic/i },
	{ name: "autocorrelation",      pattern: /\bautocorrelation\b|\bserial correlation\b/i },
	{ name: "Durbin_Watson",        pattern: /\bDurbin[-\s]?Watson\b/i },
	{ name: "ARIMA",                pattern: /\bARIMA\b/i },
	{ name: "Holt_Winters",         pattern: /\bHolt[-\s]?Winters\b/i },
	{ name: "Bayesian",             pattern: /\bBayesian\b/i },
];

const MEDIUM_SIGNALS: Array<{ name: string; pattern: RegExp }> = [
	{ name: "adjusted_R_squared", pattern: /\badjusted R[\s²-]?(squared|2)?\b/i },
	{ name: "p_value",            pattern: /\bp[-\s]value\b/i },
	{ name: "t_statistic",        pattern: /\bt[-\s]statistic\b|\bt[-\s]test\b/i },
	{ name: "confidence_interval", pattern: /\bconfidence interval\b/i },
];

interface Hit {
	id: number;
	stem: string;
	correct_index: number;
	signals: string[];
}

async function main() {
	const all = await fetchAllQuestions("bar");
	const inTopic = all.filter(
		(q) => q.topic === "Prospective Analysis and Forecasting",
	);

	const hardHits: Hit[] = [];
	const mediumOnlyHits: Hit[] = [];
	const hardCounts = new Map<string, number>();
	const medCounts = new Map<string, number>();

	for (const q of inTopic) {
		const text = `${q.stem}\n${q.explanation}`;
		const hardMatched: string[] = [];
		const medMatched: string[] = [];
		for (const sig of HARD_SIGNALS) {
			if (sig.pattern.test(text)) {
				hardMatched.push(sig.name);
				hardCounts.set(sig.name, (hardCounts.get(sig.name) ?? 0) + 1);
			}
		}
		for (const sig of MEDIUM_SIGNALS) {
			if (sig.pattern.test(text)) {
				medMatched.push(sig.name);
				medCounts.set(sig.name, (medCounts.get(sig.name) ?? 0) + 1);
			}
		}
		if (hardMatched.length > 0) {
			hardHits.push({
				id: q.id,
				stem: q.stem.slice(0, 110),
				correct_index: q.correct_index,
				signals: [...hardMatched, ...medMatched],
			});
		} else if (medMatched.length > 0) {
			mediumOnlyHits.push({
				id: q.id,
				stem: q.stem.slice(0, 110),
				correct_index: q.correct_index,
				signals: medMatched,
			});
		}
	}

	console.log("");
	console.log(`BAR / Prospective Analysis and Forecasting — STRICT classifier`);
	console.log(`Topic size: ${inTopic.length}`);
	console.log("");

	console.log("HARD signals (delete candidates) — counts:");
	for (const [s, c] of [...hardCounts.entries()].sort((a, b) => b[1] - a[1])) {
		console.log(`  ${s.padEnd(25)} ${c}`);
	}
	console.log("");
	console.log("MEDIUM signals (verify) — counts:");
	for (const [s, c] of [...medCounts.entries()].sort((a, b) => b[1] - a[1])) {
		console.log(`  ${s.padEnd(25)} ${c}`);
	}
	console.log("");

	console.log("SUMMARY");
	console.log("───────");
	console.log(`  HARD-signal hits (delete):           ${hardHits.length}`);
	console.log(`  MEDIUM-only hits (verify):           ${mediumOnlyHits.length}`);
	console.log(
		`  Clean (basic forecasting / regression): ${inTopic.length - hardHits.length - mediumOnlyHits.length}`,
	);
	console.log("");

	console.log("HARD-SIGNAL HITS (delete candidates):");
	console.log("──────────────────────────────────────");
	for (const h of hardHits) {
		console.log(`  Q${h.id}  [${h.signals.join(", ")}]`);
		console.log(`    "${h.stem}..."`);
	}
	console.log("");

	console.log("MEDIUM-ONLY HITS (manual verification needed):");
	console.log("───────────────────────────────────────────────");
	for (const h of mediumOnlyHits) {
		console.log(`  Q${h.id}  [${h.signals.join(", ")}]`);
		console.log(`    "${h.stem}..."`);
	}

	writeFileSync(
		resolve(repoRoot, "docs/trust-audit-prospective-strict.json"),
		JSON.stringify(
			{
				totalInTopic: inTopic.length,
				hardHits,
				mediumOnlyHits,
				hardCounts: Object.fromEntries(hardCounts),
				medCounts: Object.fromEntries(medCounts),
			},
			null,
			2,
		),
	);
	console.log("");
	console.log(`→ docs/trust-audit-prospective-strict.json`);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
