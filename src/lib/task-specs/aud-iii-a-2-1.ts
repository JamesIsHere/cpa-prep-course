import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/A/2/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/A/2/1",
	section: "aud",

	aicpaTask: "Perform procedures (e.g., agreeing information to original sources, validating search or query criteria used to obtain data) to validate the reliability (completeness, accuracy, authenticity and susceptibility to management bias) of data and information obtained from internal and external sources (e.g., analyses, schedules, reconciliations prepared using various technologies including artificial intelligence).",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-analytical-procedures",
};
