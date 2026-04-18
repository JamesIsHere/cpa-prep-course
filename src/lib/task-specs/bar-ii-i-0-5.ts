import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// BAR/II/I/0/5 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "BAR/II/I/0/5",
	section: "bar",

	aicpaTask: "Interpret agreements, contracts and/or other supporting documentation to determine the appropriate accounting treatment of a leasing arrangement and prepare the journal entries that the lessee should record.",
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
