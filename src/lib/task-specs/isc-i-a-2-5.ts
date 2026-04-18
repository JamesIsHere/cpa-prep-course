import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/I/A/2/5 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/I/A/2/5",
	section: "isc",

	aicpaTask: "Detect deficiencies in the suitability of the design and deviations in the operation of controls related to an information system’s processing integrity in a SOC 2® engagement using the Trust Services Criteria.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
