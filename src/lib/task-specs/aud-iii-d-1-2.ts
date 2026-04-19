import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/D/1/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/D/1/2",
	section: "aud",

	aicpaTask: "Use recalculation (manually or using automated tools and techniques) to test the mathematical accuracy of information to obtain evidence.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Recalculation as audit procedure: independently checking mathematical accuracy of documents, records, schedules",
		"Manual recalculation vs using automated tools (CAATs, spreadsheets) to verify mathematical accuracy",
		"Recalculation of depreciation, amortization, tax provisions, pension liabilities, and other computed amounts",
		"Recalculation as test of detail vs test of control: verifying entity's calculations for accuracy",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-tests-of-controls",
};
