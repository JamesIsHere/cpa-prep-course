import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/E/1/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/E/1/3",
	section: "aud",

	aicpaTask: "Conclude on the reasonableness of significant accounting estimates with a lower risk of material misstatement or complexity in an audit.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [
		"Concluding on reasonableness of accounting estimates with lower inherent risk: allowance for doubtful accounts, warranty reserves",
		"Retrospective review of prior-period estimates: comparing estimates to subsequent actual outcomes",
		"Assessing whether estimation uncertainty is adequately disclosed in the financial statements",
		"Distinguishing lower-risk estimates from higher-risk estimates and calibrating audit response accordingly",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-specific-matters",
};
