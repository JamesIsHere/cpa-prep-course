import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/H/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/H/0/1",
	section: "aud",

	aicpaTask: "Recall the impact of subsequently discovered facts on the auditor’s report.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Subsequently discovered facts after report issuance: auditor's responsibilities under AU-C 560",
		"Impact on auditor's report when facts discovered after issuance indicate financial statements require revision",
		"Dual dating of auditor's report when subsequently discovered facts affect specific disclosures",
		"Procedures when management refuses to revise financial statements after subsequently discovered facts",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-subsequent-events",
};
