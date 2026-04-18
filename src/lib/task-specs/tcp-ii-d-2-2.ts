import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/II/D/2/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/II/D/2/2",
	section: "tcp",

	aicpaTask: "Calculate a trust’s accounting income, distributable net income and taxable income, including the income distribution deduction.",
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
