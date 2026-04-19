import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/B/2/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/B/2/2",
	section: "aud",

	aicpaTask: "Determine the appropriate form and content of an agreed-upon procedures report for an attestation engagement.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"AUP report content: procedures performed, findings obtained, no opinion/conclusion, intended use restriction (AT-C 215)",
		"AUP report elements: title, addressee, subject matter description, procedures listed, findings for each procedure",
		"Distinction between findings and recommendations in AUP reports: practitioner reports findings only",
		"General-use AUP reports under revised AT-C 215: conditions permitting general use, regulatory requirements",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-misstatements-and-control-deficiencies",
};
