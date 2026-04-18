import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// BAR/II/E/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "BAR/II/E/0/2",
	section: "bar",

	aicpaTask: "Calculate the research and development costs to be reported as an expense in the financial statements.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "bar-research-and-development-costs",
};
