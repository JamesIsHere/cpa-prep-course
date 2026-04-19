import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/I/F/2/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/I/F/2/2",
	section: "aud",

	aicpaTask: "Prepare written communication materials for use in communicating identified internal control deficiencies and material weaknesses for an engagement to those charged with governance and management.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Drafting written communication of significant deficiencies and material weaknesses: required elements and language",
		"Content of control deficiency letter: description of deficiency, potential effects, severity level designation",
		"Prohibition on reporting that no significant deficiencies were identified during the audit",
		"Management response inclusion and follow-up on previously communicated deficiencies",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-communication-with-management",
};
