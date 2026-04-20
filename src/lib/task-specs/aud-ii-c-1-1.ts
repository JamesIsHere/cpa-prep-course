import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/C/1/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/C/1/1",
	section: "aud",

	aicpaTask: "Identify and define the components, principles and underlying structure of the COSO internal control framework.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"The five COSO 2013 framework components: Control Environment, Risk Assessment, Control Activities, Information and Communication, Monitoring Activities",
		"The 17 underlying principles of the COSO 2013 framework and how each maps to one of the five components",
		"Integrated relationships: Control Environment sets the foundation; Monitoring feeds back to each component; they function together not in isolation",
		"Definitional concepts: reasonable (not absolute) assurance, IC as a process effected by people, responsibility of board/management/auditors",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-internal-controls",
};
