import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/I/F/1/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/I/F/1/2",
	section: "aud",

	aicpaTask: "Prepare presentation materials and supporting schedules for use in communicating the planned scope and timing of an engagement to management and those charged with governance.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Preparing governance communication materials: presentation of audit scope, timeline, and key risk areas",
		"Supporting schedules for governance communications: fee arrangements, engagement team composition, planned reliance on controls",
		"Written vs oral communications with those charged with governance about scope and timing",
		"Two-way communication process: obtaining governance input on risk areas, fraud concerns, and entity operations",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-communication-with-management",
};
