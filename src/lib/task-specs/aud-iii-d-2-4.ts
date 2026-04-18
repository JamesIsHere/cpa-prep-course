import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/D/2/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/D/2/4",
	section: "aud",

	aicpaTask: "Evaluate and investigate differences resulting from analytical procedures (e.g., fluctuations or relationships that are inconsistent with other information or expected values).",
	aicpaSkill: "Evaluation",
	bloomLevel: SKILL_TO_BLOOM["Evaluation"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-tests-of-controls",
};
