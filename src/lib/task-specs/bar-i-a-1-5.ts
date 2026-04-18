import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// BAR/I/A/1/5 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "BAR/I/A/1/5",
	section: "bar",

	aicpaTask: "Derive the impact of transactions on the financial statements and notes to the financial statements.",
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
