import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/D/1/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/D/1/4",
	section: "aud",

	aicpaTask: "Inquire of management and others to gather evidence and document the results.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Inquiry as audit procedure: obtaining information from knowledgeable persons inside and outside the entity",
		"Types of inquiry: formal written vs informal oral, open-ended vs closed questions, corroborative inquiry",
		"Inquiry of management and others: fraud awareness, unusual transactions, accounting policy changes, litigation",
		"Limitations of inquiry alone: must be corroborated with other audit procedures for sufficient evidence",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-tests-of-controls",
};
