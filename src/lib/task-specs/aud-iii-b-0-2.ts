import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/B/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/B/0/2",
	section: "aud",

	aicpaTask: "Conclude whether sufficient appropriate evidence has been obtained to achieve the objectives of the planned procedures.",
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
