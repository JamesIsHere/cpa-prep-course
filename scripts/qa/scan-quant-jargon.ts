// Generic quantitative-jargon scan across the entire question bank. Searches stems and
// explanations for terminology that's atypical of CPA-exam content — graduate
// math/statistics/computer-science vocabulary that signals "this question may be testing
// material above CPA exam scope."
//
// Hard signals only. Borderline terms (Monte Carlo, linear programming, sensitivity
// analysis, beta/CAPM, standard deviation) are intentionally excluded because they have
// legitimate CPA-exam coverage.

import { writeFileSync } from "fs";
import { resolve, dirname } from "path";
import { fileURLToPath } from "url";
import { fetchAllQuestions } from "./db-client.js";

const __dirname = dirname(fileURLToPath(import.meta.url));
const repoRoot = resolve(__dirname, "../..");

const HARD_SIGNALS: Array<{ name: string; pattern: RegExp; category: string }> = [
	// Options pricing / derivatives quant
	{ name: "Black-Scholes",        pattern: /\bBlack[-\s]?Scholes\b/i,                category: "options-pricing" },
	{ name: "binomial-lattice",     pattern: /\bbinomial (?:lattice|tree)\b|\blattice model\b/i, category: "options-pricing" },
	{ name: "options-Greeks",       pattern: /\b(?:delta hedge|gamma hedge|vega hedge|theta decay|rho sensitivity)\b/i, category: "options-pricing" },
	{ name: "stochastic-calculus",  pattern: /\bstochastic (?:calculus|process|differential)\b|\bWiener process\b|\bBrownian motion\b/i, category: "options-pricing" },
	// Time series advanced
	{ name: "ARIMA",                pattern: /\bARIMA\b/i,                              category: "time-series" },
	{ name: "Holt-Winters",         pattern: /\bHolt[-\s]?Winters\b/i,                  category: "time-series" },
	{ name: "cointegration",        pattern: /\bcointegration\b|\bGranger causality\b/i, category: "time-series" },
	{ name: "Box-Jenkins",          pattern: /\bBox[-\s]?Jenkins\b/i,                   category: "time-series" },
	// Regression diagnostics (graduate stats)
	{ name: "multicollinearity",    pattern: /\bmulticollinearity\b/i,                  category: "regression-diagnostics" },
	{ name: "heteroscedasticity",   pattern: /\bheteroscedastic|\bheteroskedastic/i,    category: "regression-diagnostics" },
	{ name: "autocorrelation",      pattern: /\bautocorrelation\b|\bserial correlation\b/i, category: "regression-diagnostics" },
	{ name: "Durbin-Watson",        pattern: /\bDurbin[-\s]?Watson\b/i,                 category: "regression-diagnostics" },
	{ name: "2SLS",                 pattern: /\b2SLS\b|\btwo[-\s]stage least squares\b/i, category: "regression-diagnostics" },
	{ name: "instrumental-variable", pattern: /\binstrumental variables?\b/i,            category: "regression-diagnostics" },
	{ name: "simultaneity",         pattern: /\bsimultaneity\b|\bsimultaneous equations?\b/i, category: "regression-diagnostics" },
	// Bayesian / advanced inference
	{ name: "Bayesian",             pattern: /\bBayesian (?:inference|estimation|prior|posterior)\b/i, category: "advanced-inference" },
	{ name: "MLE",                  pattern: /\bmaximum likelihood\b|\bMLE\b/i,         category: "advanced-inference" },
	{ name: "MCMC",                 pattern: /\bMCMC\b|\bMarkov chain Monte Carlo\b/i,  category: "advanced-inference" },
	// Distributions atypical of CPA
	{ name: "Weibull",              pattern: /\bWeibull\b/i,                            category: "advanced-distributions" },
	{ name: "Poisson",              pattern: /\bPoisson distribution\b/i,               category: "advanced-distributions" },
	{ name: "lognormal",            pattern: /\blognormal\b/i,                          category: "advanced-distributions" },
	{ name: "chi-squared",          pattern: /\bchi[-\s]?squared?\b|\bχ²/i,             category: "advanced-distributions" },
	// Linear algebra / optimization (graduate)
	{ name: "eigenvalue",           pattern: /\beigen(?:value|vector)\b/i,              category: "linear-algebra" },
	{ name: "Lagrangian",           pattern: /\bLagrangian\b|\bLagrange multiplier\b/i, category: "linear-algebra" },
	{ name: "matrix-decomp",        pattern: /\bsingular value decomposition\b|\bSVD\b/i, category: "linear-algebra" },
	// Advanced calculus
	{ name: "partial-derivative",   pattern: /\bpartial derivative\b/i,                 category: "calculus" },
	{ name: "differential-equation", pattern: /\bdifferential equations?\b/i,            category: "calculus" },
	// CS / ML
	{ name: "neural-network",       pattern: /\bneural networks?\b|\bdeep learning\b/i, category: "ml-cs" },
	{ name: "gradient-descent",     pattern: /\bgradient descent\b|\bbackpropagation\b/i, category: "ml-cs" },
	{ name: "reinforcement-learning", pattern: /\breinforcement learning\b/i,            category: "ml-cs" },
	{ name: "convolutional",        pattern: /\bconvolutional\b/i,                      category: "ml-cs" },
	// Hypothesis testing in regression context
	{ name: "p-value-regression",   pattern: /\bp[-\s]value\b/i,                        category: "hypothesis-testing" },
	{ name: "t-statistic-regression", pattern: /\bt[-\s]statistic\b|\bt[-\s]test\b/i,    category: "hypothesis-testing" },
];

interface Hit {
	id: number;
	section: string;
	topic: string;
	stem: string;
	signals: string[];
	categories: string[];
}

async function main() {
	const sections = ["aud", "far", "reg", "bar", "isc", "tcp"] as const;
	const allHits: Hit[] = [];
	const sectionCounts: Record<string, number> = {};
	const topicCounts: Record<string, number> = {};
	const signalCounts: Record<string, number> = {};
	const categoryCounts: Record<string, number> = {};
	let total = 0;

	for (const section of sections) {
		const questions = await fetchAllQuestions(section);
		total += questions.length;
		let secHits = 0;
		for (const q of questions) {
			const text = `${q.stem}\n${q.explanation}`;
			const matched: string[] = [];
			const cats = new Set<string>();
			for (const sig of HARD_SIGNALS) {
				if (sig.pattern.test(text)) {
					matched.push(sig.name);
					cats.add(sig.category);
					signalCounts[sig.name] = (signalCounts[sig.name] ?? 0) + 1;
				}
			}
			if (matched.length > 0) {
				secHits++;
				for (const c of cats) categoryCounts[c] = (categoryCounts[c] ?? 0) + 1;
				topicCounts[`${section}/${q.topic}`] = (topicCounts[`${section}/${q.topic}`] ?? 0) + 1;
				allHits.push({
					id: q.id,
					section,
					topic: q.topic,
					stem: q.stem.slice(0, 110),
					signals: matched,
					categories: [...cats],
				});
			}
		}
		sectionCounts[section.toUpperCase()] = secHits;
	}

	console.log("");
	console.log("QUANT-JARGON SCAN — bank-wide off-blueprint signal sweep");
	console.log("=========================================================");
	console.log("");
	console.log(`Total questions scanned: ${total}`);
	console.log(`Total flagged: ${allHits.length} (${((allHits.length / total) * 100).toFixed(2)}%)`);
	console.log("");

	console.log("Per-section flag counts:");
	for (const [s, c] of Object.entries(sectionCounts).sort((a, b) => b[1] - a[1])) {
		console.log(`  ${s.padEnd(6)} ${c}`);
	}
	console.log("");

	console.log("Top flagged topics (section / topic → flag count):");
	for (const [t, c] of Object.entries(topicCounts)
		.sort((a, b) => b[1] - a[1])
		.slice(0, 15)) {
		console.log(`  ${String(c).padStart(4)}  ${t}`);
	}
	console.log("");

	console.log("Hits by category:");
	for (const [c, n] of Object.entries(categoryCounts).sort((a, b) => b[1] - a[1])) {
		console.log(`  ${c.padEnd(25)} ${n}`);
	}
	console.log("");

	console.log("Hits by individual signal:");
	for (const [s, n] of Object.entries(signalCounts).sort((a, b) => b[1] - a[1])) {
		console.log(`  ${s.padEnd(28)} ${n}`);
	}
	console.log("");

	writeFileSync(
		resolve(repoRoot, "docs/trust-audit-quant-jargon.json"),
		JSON.stringify({ total, sectionCounts, topicCounts, categoryCounts, signalCounts, hits: allHits }, null, 2),
	);
	console.log(`Full hits → docs/trust-audit-quant-jargon.json`);
}

main().catch((e) => {
	console.error(e);
	process.exit(1);
});
