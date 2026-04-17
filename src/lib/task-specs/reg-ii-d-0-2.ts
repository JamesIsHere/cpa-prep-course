import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/II/D/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/II/D/0/2",
	section: "reg",

	aicpaTask: "Explain the federal laws and regulations related to employment taxes from both an employer and employee perspective.",
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
