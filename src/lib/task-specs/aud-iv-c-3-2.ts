import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/C/3/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/C/3/2",
	section: "aud",

	aicpaTask: "Determine the appropriate form and content of an accountant’s report for a review engagement.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Review report form and content: title, addressee, introductory paragraph, limited assurance conclusion (AR-C 90)",
		"Modified review report: departure from applicable framework, scope limitation, inadequate disclosure",
		"Review report conclusion language: 'not aware of any material modifications' negative assurance phrasing",
		"Comparative financial statement reviews: continuing accountant vs successor accountant reporting responsibilities",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-review-and-compilation",
};
