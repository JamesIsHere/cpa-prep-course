import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/F/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/F/0/3",
	section: "aud",

	aicpaTask: "Perform and document procedures to determine the extent to which an engagement team can use the work of the internal audit function, IT auditor, auditor’s specialist, management’s specialist, component auditor or a referred-to auditor.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Performing procedures to evaluate others' work: reperformance, review of workpapers, testing a sample of their work",
		"Documenting extent of reliance on internal audit, specialists, and component auditors in the audit file",
		"Supervision and direction of component auditors: group engagement team responsibilities (AU-C 600)",
		"Evaluating adequacy and appropriateness of specialist's work: relevance of findings to audit assertions",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-using-the-work-of-others",
};
