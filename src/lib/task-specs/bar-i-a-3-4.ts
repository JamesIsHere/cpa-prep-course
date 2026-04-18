import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// BAR/I/A/3/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "BAR/I/A/3/4",
	section: "bar",

	aicpaTask: "Interpret sales results by performing price, volume and mix analysis.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "bar-financial-statement-analysis",
};
