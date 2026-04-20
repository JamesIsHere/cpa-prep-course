import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/C/3/3 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/C/3/3",
	section: "aud",

	aicpaTask: "Perform tests of the design and implementation of relevant automated and manual transaction-level internal controls (e.g., authorizations and approvals, reconciliations, verifications, physical or logical controls, segregation of duties).",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Performing design and implementation (D&I) tests of transaction-level controls — inquiry, observation, inspection, re-performance for one instance",
		"Categories of transaction-level controls tested: authorization/approval, reconciliation, segregation of duties, verification, physical/logical access, reperformance",
		"Applying D&I testing to both manual and automated controls; the role of walkthroughs as part of D&I",
		"D&I is the prerequisite for (but distinct from) tests of operating effectiveness — D&I asks 'capable of working?', operating effectiveness asks 'did it work consistently over the period?'",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-internal-controls",
};
