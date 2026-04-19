import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/F/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/F/0/2",
	section: "aud",

	aicpaTask: "Determine the nature and scope of the work of the internal audit function, IT auditor, auditor’s specialist, management’s specialist, component auditor or a referred-to auditor.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Determining nature and scope of internal audit work usable by external auditor: risk areas, control testing, substantive procedures",
		"Scoping specialist work: engagement terms, field of expertise, assumptions and methods to be used",
		"Component auditor scope: materiality allocation, risk communication, required procedures at component level",
		"IT auditor work: scope of IT general controls testing, application controls, automated audit procedures",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-using-the-work-of-others",
};
