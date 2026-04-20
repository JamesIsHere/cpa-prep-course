import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/C/3/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/C/3/1",
	section: "aud",

	aicpaTask: "Identify and document the significant business processes and data flows that directly or indirectly impact an entity’s financial statements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Identifying significant business processes (revenue/receivables, purchases/payables, payroll, inventory, cash, financial-reporting close)",
		"Mapping end-to-end data flows: initiation → authorization → recording → reporting → disclosure for each significant process",
		"Determining which processes directly or indirectly affect account balances, transaction classes, or disclosures that are material to the financial statements",
		"Scoping process boundaries for audit planning — which cycles require detailed documentation versus which can be covered at entity level",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-internal-controls",
};
