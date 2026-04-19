import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/D/2/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/D/2/1",
	section: "aud",

	aicpaTask: "Determine the suitability of substantive analytical procedures to provide evidence to support an identified assertion.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Suitability of substantive analytical procedures: predictability of relationships, precision of expectation, reliability of data (AU-C 520)",
		"When substantive analytical procedures are appropriate: stable relationships, reliable data, disaggregated data available",
		"Assertions better suited for analytical procedures vs tests of details: completeness, valuation, reasonableness",
		"Risk considerations in choosing analytical procedures: higher risk assertions generally require more precise expectations",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-tests-of-controls",
};
