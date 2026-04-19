import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/E/0/11 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/E/0/11",
	section: "aud",

	aicpaTask: "Use outputs from audit data analytic procedures (e.g., reports and visualizations) to identify transactions that may have a higher risk of material misstatement and interpret the results to develop planned audit procedures.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Audit data analytics: using automated tools to identify transactions with higher risk of material misstatement",
		"Interpreting data analytics outputs: reports, visualizations, outlier identification, trend analysis for audit planning",
		"Journal entry testing using data analytics: identifying unusual entries, entries near period-end, management override indicators",
		"Using data analytics results to develop responsive audit procedures: targeted testing, expanded sample selection",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-risk-assessment",
};
