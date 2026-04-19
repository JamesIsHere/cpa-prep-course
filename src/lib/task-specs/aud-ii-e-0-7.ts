import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/E/0/7 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/E/0/7",
	section: "aud",

	aicpaTask: "Determine procedures to satisfy the requirements and objectives of an accounting and review services engagement.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Review engagement procedures under SSARS: inquiry and analytical procedures as primary evidence sources (AR-C 90)",
		"Compilation engagement requirements: understanding of industry, reading financial statements for obvious errors (AR-C 80)",
		"Preparation engagement requirements: assisting management in presenting financial statements (AR-C 70)",
		"Determining procedures for accounting and review services engagements: limited vs no assurance frameworks",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-risk-assessment",
};
