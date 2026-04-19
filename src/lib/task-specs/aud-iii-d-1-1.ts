import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/D/1/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/D/1/1",
	section: "aud",

	aicpaTask: "Use observation and inspection to obtain evidence.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Observation as audit evidence: watching entity personnel perform processes or controls in real time",
		"Inspection of records and documents: examining physical assets, contracts, invoices, agreements",
		"Limitations of observation evidence: point-in-time only, entity behavior may change when observed",
		"Inspection of tangible assets: physical examination for existence, condition, and completeness",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-tests-of-controls",
};
