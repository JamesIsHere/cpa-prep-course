import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/E/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/E/0/1",
	section: "aud",

	aicpaTask: "Determine the pressures, incentives and opportunities for fraud (e.g., fraudulent financial reporting, misappropriation of assets) that could lead to the risk of material misstatement.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Fraud triangle: pressure/incentive, opportunity, rationalization — identifying factors that increase fraud risk (AU-C 240)",
		"Fraudulent financial reporting risk factors: aggressive revenue recognition, management override, unusual transactions",
		"Misappropriation of assets risk factors: inadequate segregation of duties, lack of physical safeguards, poor controls over disbursements",
		"Required fraud inquiries: management, those charged with governance, internal audit about known or suspected fraud",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-risk-assessment",
};
