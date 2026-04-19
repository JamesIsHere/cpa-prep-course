import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/I/E/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/I/E/0/2",
	section: "aud",

	aicpaTask: "Identify the requirements for the assembly and retention of documentation in physical or electronic form for an engagement.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Assembly of final engagement file: 60-day deadline after report release date (AU-C 230)",
		"Documentation retention requirements: minimum 5-year retention period for audit workpapers",
		"Additions to documentation after report date: documentation completion vs changes to existing documentation",
		"Audit file locking and access controls after assembly, prohibition on deletion of documentation",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-engagement-documentation",
};
