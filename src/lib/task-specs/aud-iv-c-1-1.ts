import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/C/1/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/C/1/1",
	section: "aud",

	aicpaTask: "Identify the factors that an accountant should consider when performing a preparation engagement.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Preparation engagement requirements (AR-C 70): accountant assists management in presenting financial statements",
		"No assurance provided in preparation engagements: no report required, disclaimer on each page or in report",
		"Preparation engagement considerations: understanding of industry, applicable framework, significant accounting policies",
		"Preparation vs compilation: key differences in engagement terms, reporting requirements, and assurance level",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-review-and-compilation",
};
