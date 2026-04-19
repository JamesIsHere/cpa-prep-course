import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/D/3/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/D/3/2",
	section: "aud",

	aicpaTask: "Analyze external confirmation responses (e.g., exceptions, nonresponses, incomplete responses) to determine the need for follow-up, further investigation or alternative procedures.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [
		"Analyzing confirmation exceptions: reconciling differences between confirmation response and entity records",
		"Nonresponses to confirmations: alternative procedures (examine subsequent receipts, shipping documents, other evidence)",
		"Evaluating reliability of confirmation responses: management interference, oral confirmations, fax/email risks",
		"Determining need for additional procedures based on confirmation results: expanding sample, changing approach",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-tests-of-controls",
};
