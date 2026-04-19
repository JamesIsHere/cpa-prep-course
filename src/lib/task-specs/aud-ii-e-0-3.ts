import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/E/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/E/0/3",
	section: "aud",

	aicpaTask: "Determine a response to risks of material misstatement at the financial statement level (e.g., maintaining professional skepticism, engagement team supervision, incorporating elements of unpredictability), considering the auditor’s understanding of the control environment.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Overall responses to financial statement-level risks: professional skepticism, senior personnel assignment, unpredictability (AU-C 330)",
		"Adjusting nature, timing, extent of procedures based on assessed risk: more persuasive evidence for higher risk",
		"Control environment considerations: tone at the top impact on overall audit strategy and response",
		"Engagement team supervision and review adjustments when financial statement-level risks are elevated",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-risk-assessment",
};
