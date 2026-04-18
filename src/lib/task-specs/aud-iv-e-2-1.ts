import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/E/2/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/E/2/1",
	section: "aud",

	aicpaTask: "Understand the auditor’s responsibilities related to other information included in documents with audited financial statements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
