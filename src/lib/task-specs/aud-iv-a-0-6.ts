import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/A/0/6 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/A/0/6",
	section: "aud",

	aicpaTask: "Determine the appropriate form and content of a report on the audit of internal control over financial reporting, including report modifications and the use of separate or combined reports for the audit of an entity’s financial statements and the audit of internal control.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
