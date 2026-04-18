import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/II/E/2/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/II/E/2/1",
	section: "tcp",

	aicpaTask: "Recall the different types of unrelated business income for tax-exempt organizations for tax purposes.",
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
