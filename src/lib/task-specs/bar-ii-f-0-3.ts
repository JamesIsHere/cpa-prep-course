import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// BAR/II/F/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "BAR/II/F/0/3",
	section: "bar",

	aicpaTask: "Prepare journal entries to record the identifiable net assets acquired in a business combination that includes a noncontrolling interest.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "bar-business-combinations",
};
