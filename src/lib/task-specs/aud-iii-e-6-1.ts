import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/E/6/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/E/6/1",
	section: "aud",

	aicpaTask: "Test transactions related to federal awards for compliance with statutes, regulations, and the terms and conditions of the federal awards.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Single Audit Act compliance testing: federal awards, Uniform Guidance (2 CFR 200), major program determination",
		"Testing compliance with statutes, regulations, terms and conditions of federal awards",
		"Compliance supplement requirements: types of compliance requirements (allowable costs, eligibility, matching, reporting)",
		"Questioned costs identification and reporting in single audit engagements",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-specific-matters",
};
