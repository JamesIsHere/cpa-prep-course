import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/II/B/2/6 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/II/B/2/6",
	section: "isc",

	aicpaTask: "Determine the common preventive, detective or corrective controls (e.g., intrusion prevention systems, device and software hardening, log analysis, intrusion detection systems, virus quarantining, patches) to mitigate risk of cyber-attacks for an organization.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "isc-security",
};
