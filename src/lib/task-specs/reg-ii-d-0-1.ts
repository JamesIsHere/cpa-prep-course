import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/II/D/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/II/D/0/1",
	section: "reg",

	aicpaTask: "Summarize the federal laws and regulations for qualified health care plans, including required business mandates and premium tax credits.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-federal-laws-regulations",
};
