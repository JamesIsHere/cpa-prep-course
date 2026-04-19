import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/F/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/F/0/1",
	section: "aud",

	aicpaTask: "Identify the factors to consider in determining the extent to which an engagement team can use the work of the internal audit function, IT auditor, auditor’s specialist, management’s specialist, component auditor or a referred-to auditor.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Factors for using others' work: competence, objectivity, and due professional care of internal auditors, specialists, component auditors",
		"Internal audit function: evaluating organizational status, objectivity, competence, systematic approach (AU-C 610)",
		"Auditor's specialist vs management's specialist: competence, capabilities, objectivity assessment (AU-C 620)",
		"Component auditor and referred-to auditor: factors affecting extent of involvement and reliance in group audits",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-using-the-work-of-others",
};
