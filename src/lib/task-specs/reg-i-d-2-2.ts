import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// REG/I/D/2/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "REG/I/D/2/2",
	section: "reg",

	aicpaTask: "Identify situations in which communications regarding tax practice are considered privileged.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "reg-legal-duties",
};
