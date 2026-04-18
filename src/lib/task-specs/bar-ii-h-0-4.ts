import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// BAR/II/H/0/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "BAR/II/H/0/4",
	section: "bar",

	aicpaTask: "Use given inputs (interest rates, notional amounts, fair value measurements) to prepare the journal entries to record the net settlements and changes in fair value for an interest rate swap that qualifies for hedge accounting (fair value hedge, cash flow hedge).",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "bar-derivatives-and-hedging",
};
