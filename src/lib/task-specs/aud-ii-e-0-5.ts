import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/E/0/5 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/E/0/5",
	section: "aud",

	aicpaTask: "Determine appropriate substantive procedures to test relevant assertions for each significant class of transactions, significant account and disclosure.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Designing substantive procedures responsive to assessed risk at the assertion level (AU-C 330)",
		"Tests of details vs substantive analytical procedures: selecting appropriate mix based on assertion and risk",
		"Financial statement assertions: existence/occurrence, completeness, valuation/allocation, rights/obligations, presentation/disclosure",
		"Linking specific substantive procedures to identified risks for each significant class of transactions and account",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-risk-assessment",
};
