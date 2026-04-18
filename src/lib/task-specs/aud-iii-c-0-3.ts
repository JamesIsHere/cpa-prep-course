import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/C/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/C/0/3",
	section: "aud",

	aicpaTask: "Determine the appropriate sampling method to be used in order to accomplish the objective (control, attribute, test of detail) of the planned procedures.",
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
