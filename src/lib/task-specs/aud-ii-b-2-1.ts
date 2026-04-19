import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/B/2/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/B/2/1",
	section: "aud",

	aicpaTask: "Understand the entity’s responsibilities with respect to the corporate governance provisions of the Sarbanes-Oxley Act of.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Sarbanes-Oxley Act corporate governance requirements: audit committee composition, independence, financial expert",
		"SOX Section 302 management certifications of financial statements and internal controls",
		"SOX Section 404 management assessment of internal control over financial reporting (ICFR)",
		"PCAOB oversight, auditor independence restrictions, and prohibited non-audit services under SOX",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-understanding-the-entity",
};
