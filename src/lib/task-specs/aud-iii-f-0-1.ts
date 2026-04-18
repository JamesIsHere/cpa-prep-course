import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/F/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/F/0/1",
	section: "aud",

	aicpaTask: "Prepare a summary of corrected and uncorrected misstatements.",
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
