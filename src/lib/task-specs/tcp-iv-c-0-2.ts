import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/IV/C/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/IV/C/0/2",
	section: "tcp",

	aicpaTask: "Calculate the direct and indirect ownership percentages of corporation stock or partnership interests to determine whether there are related parties for tax purposes.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
