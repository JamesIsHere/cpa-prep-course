import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/E/3/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/E/3/1",
	section: "aud",

	aicpaTask: "Identify the factors an auditor should consider when reporting on an engagement to review interim financial information.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Review of interim financial information: inquiry and analytical procedures, limited assurance (AU-C 930)",
		"Interim review reporting: report on review, modifications for departures, scope limitations",
		"Relationship between annual audit and interim review: knowledge obtained during audit informs interim review",
		"Interim review procedures: reading minutes, inquiring about changes in accounting practices, analytical comparisons",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-other-reporting",
};
