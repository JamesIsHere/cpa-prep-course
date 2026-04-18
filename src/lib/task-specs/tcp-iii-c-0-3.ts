import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// TCP/III/C/0/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "TCP/III/C/0/3",
	section: "tcp",

	aicpaTask: "Derive the tax implications to a shareholder and S corporation for a proposed transaction after formation of the corporation, including noncash property contributions and distributions, and loans and repayment of loans from and to a shareholder.",
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
