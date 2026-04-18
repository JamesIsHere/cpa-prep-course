import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/I/A/1/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/I/A/1/2",
	section: "aud",

	aicpaTask: "Apply the principles, rules and interpretations included in the AICPA Code of Professional Conduct to situations (e.g., maintaining integrity and objectivity and compliance with standards, maintaining the confidentiality of client information when using automated or third-party tools and techniques including artificial intelligence).",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "",
};
