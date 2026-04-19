import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/E/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/E/0/2",
	section: "aud",

	aicpaTask: "Determine the risk of material misstatement, whether due to fraud or error, at the financial statement level and relevant assertion level (control risk and inherent risk) for each significant class of transactions, significant account and disclosure.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Risk of material misstatement (RMM) assessment at financial statement level and assertion level (AU-C 315)",
		"Inherent risk assessment: susceptibility of assertions to misstatement before considering controls",
		"Control risk assessment: risk that entity's internal controls will not prevent or detect material misstatement",
		"Assertion-level risk for transaction classes, account balances, and disclosures: existence, completeness, valuation, rights, presentation",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-risk-assessment",
};
