import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/B/2/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/B/2/1",
	section: "aud",

	aicpaTask: "Identify the factors that a practitioner should consider when issuing an agreed-upon procedures report for an attestation engagement.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Agreed-upon procedures (AUP) engagement factors: specified parties, procedures agreed to, findings format (AT-C 215)",
		"AUP engagement preconditions: agreeing on procedures with specified parties, no opinion or conclusion expressed",
		"Practitioner independence requirements for AUP engagements vs examination/review engagements",
		"Restricted-use requirement for AUP reports: distribution limited to specified parties who agreed to procedures",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-misstatements-and-control-deficiencies",
};
