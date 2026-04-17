import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/V/A/0/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/V/A/0/4",
	section: "reg",

	aicpaTask: "Review a C corporation's adjusted book trial balance and supporting documentation, including relevant source data used to create the trial balance, to determine the completeness and accuracy of the book/tax differences reported on Form 1120.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-book-tax-differences",
};
