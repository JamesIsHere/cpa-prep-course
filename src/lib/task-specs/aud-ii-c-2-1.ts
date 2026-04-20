import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/C/2/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/C/2/1",
	section: "aud",

	aicpaTask: "Understand the elements of an entity’s control environment, including the design and implementation of entity-level controls and IT general controls.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Control environment elements: tone at the top, integrity and ethical values, commitment to competence, board/audit committee oversight, organizational structure and authority",
		"Entity-level controls (ELCs): HR policies, whistleblower programs, anti-fraud programs, management review controls, budget/forecast monitoring",
		"IT general controls (ITGCs): logical access security, program change management, computer operations, system acquisition/development; how each supports financial-reporting reliability",
		"Design and implementation (D&I) assessment of ELCs/ITGCs — distinct from operating-effectiveness testing; focus on whether the control is capable of preventing or detecting misstatement",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-internal-controls",
};
