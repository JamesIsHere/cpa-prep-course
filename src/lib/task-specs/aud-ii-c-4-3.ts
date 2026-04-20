import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/C/4/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/C/4/3",
	section: "aud",

	aicpaTask: "Use a SOC 1® Type 2 report to determine the nature and extent of testing procedures to be performed in an audit of an entity’s financial statements.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Using the SOC 1 Type 2 report as audit evidence — evaluating the service auditor's independence and professional competence before relying on it",
		"Reconciling coverage: does the SOC 1 Type 2 period match the user-entity audit period? Procedures for gap coverage (bridge letters, inquiries, additional testing)",
		"Carve-out vs inclusive presentation of sub-service organizations; how each affects the scope of reliance and additional procedures",
		"Impact on nature/timing/extent of user-entity substantive procedures when controls are effective versus when CUECs or sub-service-org exceptions exist",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-internal-controls",
};
