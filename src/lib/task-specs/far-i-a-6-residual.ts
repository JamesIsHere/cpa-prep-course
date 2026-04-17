import type { TaskSpec } from "./types";

// Direction W: topic-level residual for FAR/I/A/6 (Consolidated Financial Statements).
// ~10 homeless questions on consolidation mechanics beyond the 3 task-level specs
// (prepare, adjust, detect discrepancies). Tests equity method, intercompany
// eliminations, VIE, and deconsolidation — the analytical layer above preparation.

export const spec: TaskSpec = {
	aicpaRef: "FAR/I/A/6",
	section: "far",

	aicpaTask:
		"Residual: consolidation content beyond the three preparation/adjustment/detection tasks — equity method mechanics, intercompany elimination entries, variable interest entities, noncontrolling interest measurement, and deconsolidation accounting.",
	aicpaSkill: "Analysis",
	bloomLevel: 3,

	inScope: [
		"Equity method accounting (ASC 323): initial recognition, share of income/loss, dividends as basis reduction, OCI pass-through, impairment of equity method investments, transition to/from equity method",
		"Intercompany eliminations: upstream vs downstream inventory profits, intercompany fixed asset transfers with depreciation adjustment, intercompany debt",
		"Variable interest entities (ASC 810): identification of VIEs, primary beneficiary determination (power + economics), consolidation requirements",
		"Noncontrolling interest: measurement at acquisition (fair value vs proportionate share), attribution of income/loss, changes in ownership without loss of control (equity transactions)",
		"Deconsolidation: loss of control, recognition of retained investment at fair value, gain/loss on deconsolidation",
		"Business combinations (ASC 805): measurement period adjustments, bargain purchase gains, contingent consideration remeasurement",
	],

	keyStandards: [
		"ASC 810 — Consolidation",
		"ASC 323 — Equity Method Investments",
		"ASC 805 — Business Combinations",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 10, medium: 50, hard: 40 },
	lessonSpec: "far-consolidated-financial-statements",
	notes: "Direction W residual — topic-level (4-part ref). Separate from the FAR/I/A group residual which covers conceptual framework. Created 2026-04-17.",
};
