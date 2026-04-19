import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/I/F/1/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/I/F/1/1",
	section: "aud",

	aicpaTask: "Identify the matters related to the planned scope and timing of an engagement that should be communicated to management and those charged with governance.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Required communications about planned scope and timing of the audit to those charged with governance (AU-C 260)",
		"Communication of auditor responsibilities, planned audit approach, and significant audit risks to management and governance",
		"Timing of required communications: before or during audit fieldwork vs at audit completion",
		"Matters to communicate: overall audit strategy, use of internal audit, materiality levels, areas of significant risk",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-communication-with-management",
};
