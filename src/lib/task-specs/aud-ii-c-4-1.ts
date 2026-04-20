import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/C/4/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/C/4/1",
	section: "aud",

	aicpaTask: "Understand the differences between SOC 1® and SOC 2® engagements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"SOC 1 engagements: report on the effectiveness of a service organization's controls relevant to a user entity's internal control over financial reporting (ICFR)",
		"SOC 2 engagements: report on controls relevant to the Trust Services Criteria (security, availability, processing integrity, confidentiality, privacy)",
		"Intended users: SOC 1 = user-entity auditors; SOC 2 = broader stakeholders (management, regulators, customers, business partners)",
		"When each is appropriate — a financial-statement audit typically needs SOC 1; an IT-governance or vendor-risk assessment typically needs SOC 2",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-internal-controls",
};
