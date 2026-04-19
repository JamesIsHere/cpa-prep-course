import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/C/2/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/C/2/2",
	section: "aud",

	aicpaTask: "Determine the appropriate form and content of an accountant’s report for a compilation engagement.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Compilation report form and content: title, addressee, introductory paragraph, management and accountant responsibilities (AR-C 80)",
		"Compilation report modifications: substantially all disclosures omitted, departures from framework, lack of independence",
		"Compilation of financial statements under special purpose frameworks: cash basis, tax basis, regulatory basis reporting",
		"Required compilation report elements: identification of financial statements, framework used, date and signature",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-review-and-compilation",
};
