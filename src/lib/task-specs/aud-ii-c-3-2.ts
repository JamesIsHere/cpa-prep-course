import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/II/C/3/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/II/C/3/2",
	section: "aud",

	aicpaTask: "Perform a walkthrough of a significant business process and document (e.g., flow charts, process diagrams, narratives) the flow of relevant transactions and data from initiation through financial statement reporting and disclosure. Obtain an understanding of an entity’s IT infrastructure (e.g., ERP , cloud computing or hosting arrangements, custom or packaged applications) and document the procedures performed to obtain that understanding. Obtain an understanding of IT applications that are, directly or indirectly, the source of financial transactions or the data used to record financial transactions (e.g., how the entity uses IT applications to capture, store, and process information).",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Walkthrough procedure: tracing a single transaction end-to-end through a significant process to confirm understanding of design",
		"Documentation methods: process flowcharts, narrative descriptions, process diagrams, and the when/why of each",
		"Purpose of a walkthrough — confirm the auditor's understanding and obtain evidence of design/implementation; it is not a test of operating effectiveness",
		"Distinguishing walkthroughs from tests of controls: scope is ONE transaction, not a sample; focus is design/flow confirmation, not effectiveness over a period",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-internal-controls",
};
