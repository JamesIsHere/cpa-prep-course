// Audit BAR's "Prospective Analysis and Forecasting" topic for off-blueprint econometric
// content. The AICPA 2026 BAR Blueprint task definition for this group is:
//
//   "Use forecasting and projection techniques to model financial results including revenue
//    growth, cost and expense characteristics and profitability."
//   "Analyze results of forecasts and projections using ratio analysis and explanations of
//    correlations to, or variations from, key financial indices."
//
// The blueprint contains zero references to regression mechanics, OLS, 2SLS, instrumental
// variables, R²/adjusted R², simultaneity, multicollinearity, heteroscedasticity, or any
// other graduate-econometrics terminology.
//
// This script tags every question in the topic with which signals (if any) it contains and
// reports a per-signal breakdown so we can decide deletion vs rewrite policy.

import { writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions } from "./db-client.js";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

// Off-blueprint signal patterns. Word boundaries on most; some compound phrases.
const SIGNALS: Array<{ name: string; pattern: RegExp }> = [
	{ name: "regression", pattern: /\bregression\b/i },
	{ name: "OLS",        pattern: /\bOLS\b|\bordinary least squares\b/i },
	{ name: "2SLS",       pattern: /\b2SLS\b|\btwo-stage least squares\b/i },
	{ name: "instrumental_variable", pattern: /\binstrumental variables?\b/i },
	{ name: "simultaneity", pattern: /\bsimultaneity\b|\bsimultaneous equations?\b/i },
	{ name: "R_squared",  pattern: /\bR[\s-]?squared\b|R²|\bR\^2\b/i },
	{ name: "adjusted_R", pattern: /\badjusted R[\s²-]?(squared|2)?\b/i },
	{ name: "multicollinearity", pattern: /\bmulticollinearity\b/i },
	{ name: "heteroscedasticity", pattern: /\bheteroscedastic|\bheteroskedastic/i },
	{ name: "autocorrelation", pattern: /\bautocorrelation\b|\bserial correlation\b/i },
	{ name: "Durbin_Watson", pattern: /\bDurbin[\s-]?Watson\b/i },
	{ name: "p_value",    pattern: /\bp[-\s]value\b/i },
	{ name: "t_statistic", pattern: /\bt[-\s]statistic\b|\bt[-\s]test\b/i },
	{ name: "confidence_interval", pattern: /\bconfidence interval\b/i },
	{ name: "beta_coefficient", pattern: /\bbeta coefficients?\b/i },
	{ name: "exponential_smoothing", pattern: /\bexponential smoothing\b/i },
	{ name: "Holt_Winters", pattern: /\bHolt[-\s]Winters\b/i },
	{ name: "ARIMA", pattern: /\bARIMA\b/i },
	{ name: "Monte_Carlo", pattern: /\bMonte Carlo\b/i },
	{ name: "Bayesian", pattern: /\bBayesian\b/i },
	{ name: "log_linear", pattern: /\blog[-\s]linear\b|\blog transformation\b/i },
	{ name: "predictor_variable", pattern: /\bpredictor variables?\b/i },
	{ name: "dependent_variable", pattern: /\bdependent variables?\b/i },
	{ name: "independent_variable", pattern: /\bindependent variables?\b/i },
];

interface QHit {
	id: number;
	stem: string;
	signals: string[];
}

async function main() {
	const all = await fetchAllQuestions("bar");
	const inTopic = all.filter(
		(q) => q.topic === "Prospective Analysis and Forecasting",
	);

	console.log("");
	console.log(
		`BAR / Prospective Analysis and Forecasting — ${inTopic.length} questions in topic`,
	);
	console.log("");

	const hits: QHit[] = [];
	const signalCounts = new Map<string, number>();
	let cleanCount = 0;

	for (const q of inTopic) {
		const text = `${q.stem}\n${q.explanation}`;
		const matched: string[] = [];
		for (const sig of SIGNALS) {
			if (sig.pattern.test(text)) {
				matched.push(sig.name);
				signalCounts.set(sig.name, (signalCounts.get(sig.name) ?? 0) + 1);
			}
		}
		if (matched.length > 0) {
			hits.push({ id: q.id, stem: q.stem.slice(0, 100), signals: matched });
		} else {
			cleanCount++;
		}
	}

	console.log("SIGNAL COUNTS (questions matching each off-blueprint pattern)");
	console.log("───────────────────────────────────────────────────────────────");
	const sorted = [...signalCounts.entries()].sort((a, b) => b[1] - a[1]);
	for (const [sig, count] of sorted) {
		console.log(`  ${sig.padEnd(25)} ${count}`);
	}
	console.log("");

	console.log("SUMMARY");
	console.log("───────");
	console.log(`  Total in topic:       ${inTopic.length}`);
	console.log(`  Off-blueprint hits:   ${hits.length} (${((hits.length / inTopic.length) * 100).toFixed(1)}%)`);
	console.log(`  Clean (no signals):   ${cleanCount}`);
	console.log("");

	console.log("SAMPLE FLAGGED IDs (first 20)");
	console.log("──────────────────────────────");
	for (const h of hits.slice(0, 20)) {
		console.log(`  Q${h.id}  [${h.signals.join(", ")}]`);
		console.log(`    "${h.stem}..."`);
	}

	writeFileSync(
		resolve(repoRoot, "docs/trust-audit-prospective-offblueprint.json"),
		JSON.stringify({ totalInTopic: inTopic.length, signalCounts: Object.fromEntries(sorted), hits }, null, 2),
	);
	console.log("");
	console.log(`Full list → docs/trust-audit-prospective-offblueprint.json`);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
