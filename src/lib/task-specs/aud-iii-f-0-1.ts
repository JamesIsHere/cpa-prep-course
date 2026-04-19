import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/F/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/F/0/1",
	section: "aud",

	aicpaTask: "Prepare a summary of corrected and uncorrected misstatements.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Summary of audit differences (SAD): accumulating corrected and uncorrected misstatements identified during the audit (AU-C 450)",
		"Factual misstatements vs judgmental misstatements vs projected misstatements: classification and documentation",
		"Communication of corrected misstatements to those charged with governance",
		"Tracking misstatements by financial statement line item, nature (over/understatement), and audit area",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-audit-misstatements",
};
