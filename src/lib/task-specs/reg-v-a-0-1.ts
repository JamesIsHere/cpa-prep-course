import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/V/A/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/V/A/0/1",
	section: "reg",

	aicpaTask: "Identify permanent vs. temporary differences to be reported on Schedule M-3 in a given scenario.",
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
