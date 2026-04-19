import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/E/0/6 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/E/0/6",
	section: "aud",

	aicpaTask: "Determine procedures to satisfy the requirements and objectives of an attestation engagement.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Attestation engagement procedures: examination, review, agreed-upon procedures — determining appropriate scope (AT-C sections)",
		"Selecting procedures to satisfy attestation engagement objectives based on subject matter and criteria",
		"Sufficiency and appropriateness of evidence in attestation engagements: relevant criteria, suitable subject matter",
		"Attestation risk model: engagement risk, inherent risk, control risk, detection risk in non-audit attestation contexts",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-risk-assessment",
};
