import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/B/1/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/B/1/2",
	section: "aud",

	aicpaTask: "Determine the appropriate form and content of an accountant’s report for an assertion-based examination, direct examination, or review for an attestation engagement.",
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
