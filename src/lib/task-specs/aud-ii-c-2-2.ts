import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/C/2/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/C/2/2",
	section: "aud",

	aicpaTask: "Perform procedures to obtain an understanding of entity-level controls and how an entity has responded to risks arising from the use of IT, including identifying and testing the design and implementation of relevant IT general controls.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Procedures used to obtain understanding (not test effectiveness): inquiry of management and IT personnel, inspection of policies/organization charts, observation of control environment behavior",
		"Assessing how the entity has responded to IT risks — emerging tech including AI, cloud hosting, reliance on service organizations, change in IT environment",
		"Identifying and performing D&I testing on ITGCs supporting significant IT applications (logical access, change management, operations)",
		"Documenting the understanding obtained (flow of information, IT environment map) — contrasted with tests of operating effectiveness performed later",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-internal-controls",
};
