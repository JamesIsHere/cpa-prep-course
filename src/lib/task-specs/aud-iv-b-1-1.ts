import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/B/1/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/B/1/1",
	section: "aud",

	aicpaTask: "Identify the factors that a practitioner should consider when issuing an assertion-based examination, direct examination or review report.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Attestation engagement types: examination vs review — levels of assurance, scope of procedures (AT-C sections)",
		"Assertion-based vs direct examination engagements: responsible party assertions, practitioner's subject matter evaluation",
		"Factors affecting practitioner's report: suitability of criteria, sufficiency of evidence, scope limitations",
		"Practitioner independence, competence, and due care requirements for attestation engagements",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-misstatements-and-control-deficiencies",
};
