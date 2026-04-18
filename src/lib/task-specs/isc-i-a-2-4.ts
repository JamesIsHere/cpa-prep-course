import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// ISC/I/A/2/4 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "ISC/I/A/2/4",
	section: "isc",

	aicpaTask: "Reconcile the actual sequence of steps and the information, documents, tools and technology used in a key business process of an accounting information system (e.g., sales, cash collections, purchasing, disbursements, human resources, payroll, production, treasury, fixed assets, general ledger, reporting) to the documented process (e.g., flowchart, business process diagram, narrative).",
	aicpaSkill: "Analysis",
	bloomLevel: SKILL_TO_BLOOM["Analysis"],

	inScope: [],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "isc-information-systems",
};
