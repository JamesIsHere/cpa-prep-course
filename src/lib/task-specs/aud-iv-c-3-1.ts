import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/C/3/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/C/3/1",
	section: "aud",

	aicpaTask: "Identify the factors that an accountant should consider when reporting on an engagement to review an entity’s financial statements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Review engagement reporting factors: limited assurance, inquiry and analytical procedures basis (AR-C 90)",
		"Review report requirements: conclusion on material modifications, management and accountant responsibilities",
		"Independence requirement for review engagements: accountant must be independent to perform a review",
		"Going concern and other emphasis matters in review engagement reports: additional paragraph considerations",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-review-and-compilation",
};
