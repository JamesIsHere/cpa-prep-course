import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/I/C/2/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/I/C/2/4",
	section: "reg",

	aicpaTask: "Identify whether substantiation is sufficient given a specific scenario.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-federal-tax-procedures",
};
