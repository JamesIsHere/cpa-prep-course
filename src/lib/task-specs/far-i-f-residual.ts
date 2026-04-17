import type { TaskSpec } from "./types";

// Direction W: group-level residual task-spec for FAR/I/F
// (Financial Statement Ratios and Performance Metrics).
//
// FAR/I/F has 6 representative tasks focused on ratio CALCULATION:
//   1. Identify the appropriate ratio (L1)
//   2-5. Calculate profitability, liquidity, solvency, performance ratios (L2)
//   6. Calculate variances between budget and actual (L2)
//
// The bank has 45+ homeless questions testing ratio ANALYSIS — the
// interpretive layer above computation: what accounting changes do to
// ratios, cross-period comparability adjustments, fraud indicators from
// ratio trends, and analytical methodology critique.
//
// 3rd classifier run (2026-04-17): also picks up conceptual ratio
// questions testing definitions, operating cycle concepts, and accrual
// vs cash-basis differences that are prerequisite knowledge for ratio
// analysis but sit below L3.

export const spec: TaskSpec = {
	aicpaRef: "FAR/I/F",
	section: "far",

	aicpaTask:
		"Residual: financial ratio and performance metric content within the Ratios group that goes beyond identification and calculation — interpretation, analytical impact assessment, and comparative analysis.",
	aicpaSkill: "Analysis",
	bloomLevel: 3,

	inScope: [
		"Analyze the impact of accounting method changes on financial ratios (e.g., how switching from LIFO to FIFO affects current ratio, how lease capitalization under ASC 842 changes debt-to-equity)",
		"Evaluate cross-period or cross-entity ratio comparability: adjustments needed when companies use different accounting methods, industry-specific ratio benchmarks, limitations of ratio comparison across industries",
		"Interpret ratio trends as indicators of financial health, operational efficiency, or potential fraud (e.g., Beneish M-Score, Altman Z-Score concepts, red flags from diverging revenue and receivables trends)",
		"Analyze the effect of specific transactions on ratios (e.g., treasury stock repurchase effect on book value per share, allowance method effect on current ratio, depreciation method effect on asset turnover)",
		"Critique analytical methodology: limitations of ratio analysis, why a given ratio comparison is or is not valid, the role of qualitative factors alongside quantitative metrics",
		"Working capital analysis beyond computation: interpreting changes in working capital components, cash conversion cycle concepts, operating cycle analysis",
		"Ratio definitions and taxonomy: what each ratio measures, which category it belongs to (profitability, liquidity, solvency, activity/efficiency), and what a given ratio value signals",
		"Operating cycle and cash conversion cycle concepts: definitions, component relationships, and why accrual accounting creates differences between net income and operating cash flow",
		"Quality of earnings concepts: what a quality-of-earnings ratio indicates, distinguishing sustainable vs. transient earnings, cash-basis vs. accrual-basis earnings quality",
	],

	keyStandards: [
		"ASC 270 — Interim reporting (ratio effects)",
		"ASC 842 — Leases (balance sheet impact on ratios)",
		"ASC 606 — Revenue recognition (ratio effects)",
	],

	commonMisconceptions: [
		"Assuming ratio comparisons are valid across industries without normalization",
		"Treating all ratio improvements as positive (e.g., very low debt-to-equity may indicate under-leverage, not strength)",
		"Confusing the direction of ratio change when an accounting standard changes (e.g., lease capitalization increases both assets AND liabilities)",
	],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 10, medium: 40, hard: 50 },

	lessonSpec: "far-financial-statement-ratios",

	notes:
		"Direction W residual spec — group-level (3-part ref). Covers the analytical/interpretive layer above the 6 computation-focused representative tasks. bloomLevel L3 (Analysis) because the content tests evaluation and interpretation, not just calculation. Created 2026-04-17.",
};
