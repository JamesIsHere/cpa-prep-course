import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/D/2/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/D/2/3",
	section: "aud",

	aicpaTask: "Perform analytical procedures near the end of an audit engagement that assist the auditor when forming an overall conclusion about whether the financial statements are consistent with the auditor’s understanding of the entity.",
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
