import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/II/C/1/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/II/C/1/3",
	section: "tcp",

	aicpaTask: "Calculate the impact on a partner’s basis in a partnership for tax purposes resulting from recourse and nonrecourse partnership debt incurred during the current year, including loans made by a partner to a partnership.",
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
