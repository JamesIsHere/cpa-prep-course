import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/D/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/D/0/2",
	section: "aud",

	aicpaTask: "Identify the factors that a practitioner should consider when reporting on an attestation engagement related to an entity’s compliance with the requirements of specified laws, regulations, rules, contracts or grants, and reports on the effectiveness of internal controls over compliance with the requirements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-government-auditing",
};
