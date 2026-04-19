import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/E/0/9 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/E/0/9",
	section: "aud",

	aicpaTask: "Assess the potential impact of identified risks of material misstatement at the relevant assertion level for each significant class of transactions, significant account and disclosure, considering the controls the auditor intends to test.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [
		"Assertion-level risk assessment: linking identified risks to specific assertions for significant accounts and disclosures",
		"Inherent risk factors at assertion level: complexity, subjectivity, change, susceptibility to fraud",
		"Considering planned control reliance when assessing assertion-level RMM: impact on substantive testing scope",
		"Spectrum of inherent risk: assessing where risks fall on the lower-to-higher scale for each assertion",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-risk-assessment",
};
