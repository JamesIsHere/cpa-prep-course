import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/E/1/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/E/1/1",
	section: "aud",

	aicpaTask: "Recalculate and reperform procedures to validate the methods, data and assumptions of an entity’s significant accounting estimates with a higher risk of material misstatement or complexity, such as fair value estimates.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Recalculation and reperformance of accounting estimates: validating methods, data inputs, and key assumptions (AU-C 540)",
		"Auditing fair value estimates: testing valuation models, discount rates, projected cash flows, market comparables",
		"Evaluating management bias in significant accounting estimates with higher inherent risk or complexity",
		"Developing independent estimates or ranges to corroborate management's estimate",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-specific-matters",
};
