import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/B/0/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/B/0/2",
	section: "aud",

	aicpaTask: "Conclude whether sufficient appropriate evidence has been obtained to achieve the objectives of the planned procedures.",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [
		"Concluding on sufficiency of evidence: whether planned procedure objectives are met, need for additional evidence",
		"Evaluating cumulative evidence: consistency of evidence from multiple sources supporting or contradicting assertions",
		"Impact of insufficient evidence on auditor's report: scope limitation, qualified opinion, disclaimer of opinion",
		"Documentation of evidence evaluation: rationale for sufficiency conclusions, link between evidence and assertions tested",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-audit-evidence",
};
