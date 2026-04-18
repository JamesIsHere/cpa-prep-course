import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/I/E/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/I/E/0/3",
	section: "aud",

	aicpaTask: "Prepare documentation that is sufficient to enable an experienced auditor or practitioner having no previous connection with an engagement to understand the nature, timing, extent and results of procedures performed, the significant findings and conclusions reached and the significant professional judgments made.",
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
