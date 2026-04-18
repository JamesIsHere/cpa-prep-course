import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/II/D/1/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/II/D/1/1",
	section: "tcp",

	aicpaTask: "Recall and explain the characteristics of various types of trusts, including simple trusts, complex trusts and grantor trusts.",
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
