import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/C/3/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/C/3/4",
	section: "aud",

	aicpaTask: "Identify and document the relevant automated and manual controls within the flow of an entity’s transactions for a significant business process and consider the effect of these controls on the completeness, accuracy and reliability of an entity’s data.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Identifying the specific automated and manual controls operating within a transaction flow (e.g., the three-way match, reconciliation, credit limit check, approval thresholds)",
		"Classifying controls: preventive vs detective; manual vs automated; primary vs compensating; key vs non-key",
		"Documenting control descriptions, control owners, frequency, and evidence of operation — the artifacts that feed subsequent D&I and operating-effectiveness testing",
		"Linking each identified control to the assertion and risk of material misstatement it addresses (completeness, accuracy, reliability of underlying data)",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-internal-controls",
};
