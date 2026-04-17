import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/V/A/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/V/A/0/2",
	section: "reg",

	aicpaTask: "Calculate the book/tax differences to be reported on a Schedule M-1 or M-3.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-book-tax-differences",
};
