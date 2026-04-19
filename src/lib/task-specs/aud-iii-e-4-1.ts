import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/E/4/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/E/4/1",
	section: "aud",

	aicpaTask: "Perform appropriate audit procedures, including inquiring of management and others, reviewing minutes and sending external confirmations, to detect the existence of litigation, claims and assessments.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Audit procedures for litigation, claims, and assessments: inquiry of management, review of board minutes, attorney letter (AU-C 501)",
		"Letter of audit inquiry to entity's legal counsel: scope, content requirements, evaluating attorney responses",
		"Related party transactions: identification procedures, disclosure requirements, arm's-length assessment (AU-C 550)",
		"Evaluating loss contingencies: probable vs reasonably possible vs remote classification, accrual vs disclosure",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-specific-matters",
};
