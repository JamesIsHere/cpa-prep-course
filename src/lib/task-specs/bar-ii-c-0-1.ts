import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// BAR/II/C/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "BAR/II/C/0/1",
	section: "bar",

	aicpaTask: "Interpret agreements, contracts and/or other supporting documentation to determine the amount and timing of revenue to be recognized in the financial statements using the five-step model.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "bar-revenue-recognition",
};
