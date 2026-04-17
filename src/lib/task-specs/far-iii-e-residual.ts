import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/III/E (Fair Value Measurements).
// 16 homeless questions on fair value mechanics beyond the 2 representative
// tasks (which focus on determining fair value and disclosures).

export const spec: TaskSpec = {
	aicpaRef: "FAR/III/E",
	section: "far",

	aicpaTask:
		"Residual: fair value measurement content beyond the two representative tasks — fair value option election (ASC 825), fair value hierarchy concepts, valuation technique selection, and own credit risk adjustments.",
	aicpaSkill: "Application",
	bloomLevel: 3,

	inScope: [
		"Fair value option (ASC 825): eligibility criteria, election mechanics, reporting of changes in fair value through earnings, own credit risk treatment (ASU 2016-01)",
		"Fair value hierarchy concepts: Level 1 (quoted prices in active markets), Level 2 (observable inputs), Level 3 (unobservable inputs) — classification criteria and transfers between levels",
		"Valuation technique selection: market approach, income approach (DCF), cost approach — when each is appropriate, calibration of inputs",
		"Fair value measurement at initial recognition: transaction price presumption, day-one gains/losses, blockage factors",
		"Recurring vs nonrecurring fair value measurements: classification, disclosure differences",
	],

	keyStandards: [
		"ASC 820 — Fair Value Measurement",
		"ASC 825 — Fair Value Option",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-fair-value",
	notes: "Direction W residual — group-level. Created 2026-04-17.",
};
