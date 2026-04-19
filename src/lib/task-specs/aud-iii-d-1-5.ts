import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/D/1/5 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/D/1/5",
	section: "aud",

	aicpaTask: "Analyze responses obtained during structured interviews or informal conversations with management and others, including those in non-financial roles, and ask relevant and effective follow-up questions to understand their perspectives and motivations.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [
		"Analyzing interview responses: evaluating consistency, plausibility, and completeness of management representations",
		"Effective follow-up questioning: probing contradictions, unexpected responses, and non-financial personnel perspectives",
		"Interviewing non-financial personnel: operations, IT, legal, HR staff for corroborating evidence about controls and risks",
		"Evaluating motivations and bias in interviewee responses: management incentives, self-interest, knowledge limitations",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-tests-of-controls",
};
