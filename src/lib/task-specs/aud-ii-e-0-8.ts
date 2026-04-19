import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/E/0/8 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/E/0/8",
	section: "aud",

	aicpaTask: "Assess risks of material misstatement, whether due to fraud or error, at the financial statement level and develop a response by leveraging the combined knowledge and understanding of the engagement team.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [
		"Engagement team brainstorming session: discussing susceptibility to material misstatement due to fraud or error (AU-C 240/315)",
		"Combining knowledge of team members to assess financial statement-level risks and develop overall response",
		"Communication among engagement team about identified risks: ongoing throughout the audit, not just at planning",
		"Professional skepticism in team discussions: questioning assumptions, considering management incentives and pressures",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-risk-assessment",
};
