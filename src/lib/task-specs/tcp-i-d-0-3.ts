import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/I/D/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/I/D/0/3",
	section: "tcp",

	aicpaTask: "Demonstrate an understanding of planning for funding post-secondary education, including qualified tuition programs, student loans, grants and scholarships.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
