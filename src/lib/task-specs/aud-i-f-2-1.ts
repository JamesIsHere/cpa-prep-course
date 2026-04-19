import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/I/F/2/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/I/F/2/1",
	section: "aud",

	aicpaTask: "Identify the matters related to deficiencies and material weaknesses in internal control that should be communicated to those charged with governance and management for an engagement and the timing of such communications.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Required written communication of significant deficiencies and material weaknesses to governance and management (AU-C 265)",
		"Timing of internal control deficiency communications: within 60 days of report release date",
		"Severity classification: deficiency vs significant deficiency vs material weakness — definitions and escalation criteria",
		"Distinction between communicating to those charged with governance vs management for control deficiencies",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-communication-with-management",
};
