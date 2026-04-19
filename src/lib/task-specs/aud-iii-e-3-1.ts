import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/E/3/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/E/3/1",
	section: "aud",

	aicpaTask: "Test the ending inventory quantities in an audit by obtaining evidence regarding the existence and condition of inventory and inventory held by others (e.g., inventory counting procedures, confirmation) and conclude whether inventory records accurately reflect count results.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Inventory observation procedures: physical count attendance, test counts, roll-forward/roll-back techniques (AU-C 501)",
		"Confirming inventory held by others: third-party warehouses, consignment inventory, public warehouses",
		"Evaluating existence and condition of inventory: obsolescence, damage, slow-moving items",
		"Reconciling physical count results to inventory records: investigating and resolving count differences",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-specific-matters",
};
