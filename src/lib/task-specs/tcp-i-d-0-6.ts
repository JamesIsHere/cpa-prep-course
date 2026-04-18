import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/I/D/0/6 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/I/D/0/6",
	section: "tcp",

	aicpaTask: "Prepare a schedule to be used in the decision-making process to select a retirement plan from different options given a specific planning scenario, identifying the related advantages and disadvantages.",
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
