import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/D/1/6 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/D/1/6",
	section: "aud",

	aicpaTask: "Perform tests of operating effectiveness of internal controls, including the analysis of exceptions to identify deficiencies in an audit of financial statements or an audit of internal control.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Tests of operating effectiveness of internal controls: selecting items, performing test, evaluating exceptions",
		"Control exceptions analysis: determining whether exception indicates a deficiency or isolated occurrence",
		"Nature of control testing: manual vs automated controls, frequency-based vs continuous controls",
		"Integrated audit considerations: testing controls for both financial statement audit and ICFR audit (AS 2201)",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-tests-of-controls",
};
