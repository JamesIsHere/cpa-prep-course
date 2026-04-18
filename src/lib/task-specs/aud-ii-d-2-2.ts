import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/D/2/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/D/2/2",
	section: "aud",

	aicpaTask: "Determine tolerable misstatement or performance materiality for the purposes of assessing the risk of material misstatement and determining the nature, timing and extent of further audit procedures in an audit of an issuer or nonissuer.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-materiality",
};
