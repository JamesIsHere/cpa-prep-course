import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/III/A/0/11 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/III/A/0/11",
	section: "isc",

	aicpaTask: "Explain the purpose and common sections of a system description subject to SOC 1® or SOC 2® engagements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "isc-soc-engagements",
};
