import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/D/1/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/D/1/2",
	section: "aud",

	aicpaTask: "Calculate materiality for an entity’s financial statements as a whole.",
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
