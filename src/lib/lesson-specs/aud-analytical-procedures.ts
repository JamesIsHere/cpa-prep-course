import type { LessonSpec } from "./types";

// AUD/III/A — Analytical procedures.
// Covers the use of analytical procedures in planning, as substantive
// procedures, and as required in the overall review at the end of the audit.

export const spec: LessonSpec = {
	topic: "Analytical Procedures",
	section: "aud",
	primaryRef: "AUD/III/A",
	secondaryRefs: [],

	inScope: [
		"Three uses of analytical procedures: required in planning, optional as substantive procedures, required in overall review",
		"Types of analytical procedures — trend analysis, ratio analysis, reasonableness tests, regression analysis",
		"Developing expectations — using prior-period data, budgets, industry data, non-financial data, and predictive models",
		"Investigating significant differences between expected and recorded amounts",
		"Substantive analytical procedures — precision of expectation, reliability of underlying data, threshold for investigation",
	],

	outOfScope: [
		"Advanced statistical regression techniques at mathematical depth — the concept of regression as an analytical tool is in scope, the statistics are not",
		"Audit sampling methodology — sampling is AUD/III/C territory; analytical procedures are a non-sampling technique",
		"Detailed ratio computation and interpretation at FAR accounting depth — the use of ratios in audit is in scope, the ratios as accounting concepts are FAR territory",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
