import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/E/1/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/E/1/1",
	section: "aud",

	aicpaTask: "Identify the factors (change in accounting principle, the correction of a material misstatement, or a material change in classification) that would affect the comparability or consistency of financial statements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Consistency of financial statements: change in accounting principle, correction of material misstatement, reclassification (AU-C 708)",
		"Comparability vs consistency: consistency refers to accounting methods, comparability to presentation and classification",
		"Emphasis-of-matter paragraph for consistency: required when change in accounting principle materially affects comparability",
		"Reporting on correction of material misstatement in previously issued financial statements: restatement disclosures",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-other-reporting",
};
