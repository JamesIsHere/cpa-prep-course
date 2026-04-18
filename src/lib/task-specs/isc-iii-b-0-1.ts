import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/III/B/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/III/B/0/1",
	section: "isc",

	aicpaTask: "Explain the effect of CUECs on the SOC report (SOC 1®, SOC 2®).",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "isc-soc-reporting",
};
