import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/II/C/0/7 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/II/C/0/7",
	section: "isc",

	aicpaTask: "Detect deficiencies in the suitability of the design and deviations in the operation of controls related to a service organization’s confidentiality and privacy service commitments and system requirements in a SOC 2® engagement using the Trust Services Criteria.",
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
