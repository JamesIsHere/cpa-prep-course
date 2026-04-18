import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/IV/B/0/5 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/IV/B/0/5",
	section: "tcp",

	aicpaTask: "Calculate the loss allowed on the disposition of Section 1244 small business stock for tax purposes.",
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
