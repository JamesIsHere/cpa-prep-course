import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/II/E (Investments).
// ~12 homeless questions on security reclassification, equity method
// impairment, NAV practical expedient, measurement alternative,
// and consolidation requirements beyond the representative tasks.

export const spec: TaskSpec = {
	aicpaRef: "FAR/II/E",
	section: "far",

	aicpaTask:
		"Residual: investment content beyond the representative tasks — security reclassification (AFS↔HTM tainting rules), equity method impairment and discontinuation, NAV practical expedient, measurement alternative for equity securities without readily determinable fair value, and consolidation requirements under ASC 810.",
	aicpaSkill: "Analysis",
	bloomLevel: 3,

	inScope: [
		"Investment security reclassification (ASC 320): AFS to HTM transfer mechanics, HTM tainting rules (intent and ability evidence, two-year restriction), unrealized gain/loss treatment on reclassification between categories",
		"Equity method impairment and discontinuation (ASC 323): other-than-temporary impairment indicators, write-down to fair value, discontinuation when influence is lost, basis difference amortization cessation",
		"NAV practical expedient (ASC 820): eligibility criteria for using NAV as fair value, exclusion from fair value hierarchy, disclosure requirements, redemption restrictions and their effect on classification",
		"Measurement alternative for equity securities without readily determinable fair value (ASC 321): election criteria, cost minus impairment plus/minus observable price changes, impairment assessment (qualitative then quantitative)",
		"Consolidation requirements under ASC 810: variable interest entity (VIE) model vs voting interest model, primary beneficiary determination, power and economics criteria for VIE consolidation",
	],

	keyStandards: [
		"ASC 320 — Investments: Debt Securities",
		"ASC 323 — Investments: Equity Method",
		"ASC 321 — Investments: Equity Securities",
		"ASC 810 — Consolidation",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-investments",
	notes: "Direction W residual — group-level. Created 2026-04-17.",
};
