import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/V/A/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/V/A/0/3",
	section: "reg",

	aicpaTask: "Review an entity's adjusted book trial balance and supporting documentation to identify and calculate possible book/tax differences.",
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
