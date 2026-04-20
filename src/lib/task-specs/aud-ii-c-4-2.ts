import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/C/4/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/C/4/2",
	section: "aud",

	aicpaTask: "Identify and document the purpose and significance of an entity’s use of a service organization, including the impact of using a SOC 1® Type 2 report in an audit of an entity’s financial statements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Identifying when a user entity relies on a service organization (payroll processor, claims processor, cloud/SaaS hosting, custodian, collections)",
		"Purpose of the SOC 1 Type 2 report: evidence of DESIGN plus OPERATING EFFECTIVENESS of the service organization's controls over a specified period",
		"Type 1 vs Type 2 distinction: Type 1 = design only, point-in-time; Type 2 = design + operating effectiveness across a period",
		"Complementary User Entity Controls (CUECs) — controls the user entity must have in place for the service organization's controls to be effective; identifying and testing CUECs",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-internal-controls",
};
