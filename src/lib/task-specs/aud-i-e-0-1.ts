import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/I/E/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/I/E/0/1",
	section: "aud",

	aicpaTask: "Identify the elements that comprise sufficient appropriate documentation in physical or electronic form for an engagement.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Elements of audit documentation: nature/timing/extent of procedures performed, results obtained, conclusions reached (AU-C 230)",
		"Working paper content requirements: sufficient detail for an experienced auditor with no prior connection to understand the work",
		"Documentation of significant findings, professional judgments, and conclusions in audit workpapers",
		"Physical vs electronic audit documentation formats, indexing, cross-referencing of workpapers",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-engagement-documentation",
};
