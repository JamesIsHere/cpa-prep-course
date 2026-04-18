import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/III/A/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/III/A/0/2",
	section: "tcp",

	aicpaTask: "Identify the type of business entity that is best described by a given set of legal characteristics.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
