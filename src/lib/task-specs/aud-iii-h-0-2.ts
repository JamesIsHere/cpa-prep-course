import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/H/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/H/0/2",
	section: "aud",

	aicpaTask: "Perform procedures to identify subsequent events that should be reflected in an entity’s current period financial statements and disclosures.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Subsequent events procedures: inquiries, reading minutes, reviewing subsequent interim statements (AU-C 560)",
		"Type I (recognized) subsequent events: conditions existing at balance sheet date requiring adjustment",
		"Type II (nonrecognized) subsequent events: conditions arising after balance sheet date requiring disclosure only",
		"Subsequent events review period: balance sheet date through date of auditor's report",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-subsequent-events",
};
