import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/H/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/H/0/3",
	section: "aud",

	aicpaTask: "Determine whether identified subsequent events are appropriately reflected in an entity’s financial statements and disclosures.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [
		"Determining appropriate treatment of subsequent events: adjustment to financial statements vs note disclosure",
		"Evaluating whether Type I events are properly reflected in account balances and estimates",
		"Evaluating adequacy of Type II disclosures: pro forma financial data, nature and estimated financial effect",
		"Impact of subsequent events on auditor's report: emphasis-of-matter paragraph, report dating considerations",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-subsequent-events",
};
