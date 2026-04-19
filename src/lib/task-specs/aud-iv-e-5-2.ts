import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/E/5/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/E/5/2",
	section: "aud",

	aicpaTask: "Understand the requirements when preparing the auditor’s report on compliance and internal control over compliance – major programs and the auditor’s schedule of findings and questioned costs for a single audit.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Single audit reporting: compliance and internal control over compliance for major federal programs (Uniform Guidance)",
		"Schedule of findings and questioned costs: format, content, prior-year findings follow-up",
		"Report on compliance for major programs: unmodified, qualified, adverse, or disclaimer opinions",
		"Data collection form and reporting package submission requirements for single audits",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-other-reporting",
};
