import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/III/B/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/III/B/0/3",
	section: "tcp",

	aicpaTask: "Calculate the effect of changing tax rates and legislation on the timing of income and expense items for tax planning purposes given a specific scenario.",
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
