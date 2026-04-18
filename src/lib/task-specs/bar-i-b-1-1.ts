import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// BAR/I/B/1/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "BAR/I/B/1/1",
	section: "bar",

	aicpaTask: "Determine methods to transform (e.g., preparing, cleaning, scrubbing) structured and unstructured data to make it useful for decision-making.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "bar-prospective-analysis-and-forecasting",
};
