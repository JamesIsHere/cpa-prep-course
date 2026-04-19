import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/E/1/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/E/1/2",
	section: "aud",

	aicpaTask: "Perform procedures (e.g., reviewing the work of a specialist and procedures performed by the engagement team) to validate an entity’s calculations and detailed support for significant accounting estimates, including consideration of information that contradicts assumptions made by management.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Reviewing the work of a management's specialist used in developing accounting estimates: competence, objectivity, scope",
		"Evaluating detailed support for estimates: data sources, calculation methods, assumption reasonableness",
		"Identifying contradictory information: evidence that conflicts with management's assumptions or conclusions",
		"Using an auditor's specialist to evaluate complex estimates: engagement terms, competency assessment, reliance",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-specific-matters",
};
