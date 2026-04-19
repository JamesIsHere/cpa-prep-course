import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/D/3/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/D/3/1",
	section: "aud",

	aicpaTask: "Confirm significant account balances and transactions using appropriate tools and techniques (e.g., intermediary services, electronic confirmations, manual confirmations) to obtain relevant and reliable evidence.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"External confirmation procedures: positive vs negative confirmations, blank vs pre-populated confirmation forms (AU-C 505)",
		"Confirming accounts receivable, bank balances, loans payable, investments held by custodians",
		"Electronic confirmations and intermediary confirmation services: reliability and authentication considerations",
		"Maintaining control over confirmation process: direct communication between auditor and confirming party",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-tests-of-controls",
};
