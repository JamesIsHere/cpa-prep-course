import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/E/5/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/E/5/1",
	section: "aud",

	aicpaTask: "Identify requirements under Government Accountability Office Government Auditing Standards related to reporting on internal control over financial reporting and compliance with provisions of the law, regulations, contracts, grant agreements and federal awards that have a material effect on the financial statements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Government Auditing Standards (Yellow Book/GAGAS): additional reporting on internal control and compliance",
		"Reporting on internal control over financial reporting under GAGAS: significant deficiencies and material weaknesses",
		"Compliance reporting under GAGAS: testing compliance with laws, regulations, contracts, grant agreements",
		"Relationship between GAGAS report and standard audit report: supplemental reports required beyond AU-C standards",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-other-reporting",
};
