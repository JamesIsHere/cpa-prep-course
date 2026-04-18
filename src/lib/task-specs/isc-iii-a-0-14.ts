import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/III/A/0/14 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/III/A/0/14",
	section: "isc",

	aicpaTask: "Perform procedures to obtain an understanding of how a service organization provides its personnel and external users information on how to report failures, incidents, concerns and other complaints related to a system subject to a SOC 2® engagement.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "isc-soc-engagements",
};
