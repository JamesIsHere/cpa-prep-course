import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/A/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/A/0/3",
	section: "aud",

	aicpaTask: "Identify the type of opinion (unqualified or unmodified, qualified, adverse, or disclaimer of opinion) that an auditor should render on the audit of an issuer or nonissuer’s financial statements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
