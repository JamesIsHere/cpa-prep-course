import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/I/A/3/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/I/A/3/3",
	section: "aud",

	aicpaTask: "Apply the ethical requirements and independence rules of the Government Accountability Office Government Auditing Standards to situations that could present threats to compliance during an audit of, or attestation engagement for, a government entity or an entity receiving federal awards.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-ethics-and-independence",
};
