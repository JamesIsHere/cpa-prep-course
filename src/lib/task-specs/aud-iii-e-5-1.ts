import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/E/5/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/E/5/1",
	section: "aud",

	aicpaTask: "Identify factors that should be considered while performing planned procedures that may indicate substantial doubt about an entity’s ability to continue as a going concern for a reasonable period of time.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Going concern evaluation: indicators of substantial doubt about ability to continue as a going concern (AU-C 570)",
		"Financial indicators of going concern doubt: recurring losses, negative cash flows, working capital deficiency, loan defaults",
		"Operating indicators: loss of key customers/suppliers, labor difficulties, legal proceedings, regulatory actions",
		"Management's plans to mitigate going concern: evaluation of feasibility and adequacy of planned actions",
		"Auditor reporting responsibilities when substantial doubt exists: emphasis-of-matter paragraph, adequate disclosure",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-specific-matters",
};
