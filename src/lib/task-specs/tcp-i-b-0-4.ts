import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/I/B/0/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/I/B/0/4",
	section: "tcp",

	aicpaTask: "Review an individual’s basis schedules and supporting documentation for a pass-through entity, including any source data used to create the schedules, to confirm the correct allocation of a loss between the amounts suspended for at-risk limitations, suspended for passive activity rules, and allowed for tax purposes.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
