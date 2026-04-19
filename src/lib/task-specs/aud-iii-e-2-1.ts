import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/E/2/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/E/2/1",
	section: "aud",

	aicpaTask: "Identify the considerations relating to the measurement and disclosure of the fair value of investments in securities in an audit.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Fair value measurement and disclosure considerations for investments in securities: Level 1/2/3 hierarchy (ASC 820)",
		"Auditing investment valuation: quoted market prices vs model-based valuations vs unobservable inputs",
		"Considerations for investments without readily determinable fair values: NAV practical expedient, alternative investments",
		"Impairment assessment for equity and debt securities: other-than-temporary impairment indicators",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-specific-matters",
};
