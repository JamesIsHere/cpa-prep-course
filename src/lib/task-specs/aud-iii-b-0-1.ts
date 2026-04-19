import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/B/0/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/B/0/1",
	section: "aud",

	aicpaTask: "Determine the sources of sufficient appropriate evidence (e.g., obtained from management’s specialists, obtained from external sources, developed by the audit team from internal or external sources). Exercise professional skepticism and professional judgment while analyzing information to be used as audit evidence taking into account its relevance and reliability, authenticity and whether such information corroborates or contradicts the assertions in the financial statements.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Sources of audit evidence: internal vs external, auditor-generated vs entity-generated, direct vs indirect (AU-C 500)",
		"Relevance and reliability of audit evidence: hierarchy of evidence quality, corroborating vs contradictory evidence",
		"Professional skepticism in evaluating evidence: questioning authenticity, considering source bias, fraud indicators",
		"Evidence from management's specialists vs external sources: reliability assessment, independence considerations",
		"Sufficiency (quantity) and appropriateness (quality) of evidence as basis for audit opinion",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-audit-evidence",
};
