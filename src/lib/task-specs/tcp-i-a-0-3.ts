import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/I/A/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/I/A/0/3",
	section: "tcp",

	aicpaTask: "Consider the impact to an individual’s taxable income for certain items of gross income, including imputed interest on below-market rate loan and compensation earned while employed outside the U.S.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
