import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/I/D/2/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/I/D/2/4",
	section: "aud",

	aicpaTask: "Document the terms of an engagement in a written engagement letter or other suitable form of written agreement.",
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
