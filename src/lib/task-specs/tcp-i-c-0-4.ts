import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/I/C/0/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/I/C/0/4",
	section: "tcp",

	aicpaTask: "Identify the potential tax savings from gifting ownership of noncash property to an individual given a specific planning scenario, including identification of the property to be gifted to minimize the donor’s future estate.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "tcp-wealth-transfer-and-gifting",
};
