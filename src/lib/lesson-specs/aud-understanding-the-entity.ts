import type { LessonSpec } from "./types";

// AUD/II/B — Understanding an entity and its environment.
// Covers the auditor's procedures to obtain an understanding of
// the entity, its environment, and its internal control relevant
// to the audit, as the basis for identifying and assessing risks.

export const spec: LessonSpec = {
	topic: "Understanding the Entity and Environment",
	section: "aud",
	primaryRef: "AUD/II/B",
	secondaryRefs: [],

	inScope: [
		"Understanding the entity's nature — organizational structure, ownership, governance, business model",
		"Understanding the entity's industry, regulatory environment, and applicable financial reporting framework",
		"Understanding the entity's selection and application of accounting policies, including reasons for changes",
		"Understanding the entity's objectives, strategies, and related business risks that may result in material misstatement",
		"Inquiry, observation, inspection, and analytical procedures used to obtain understanding of the entity",
	],

	outOfScope: [
		"Detailed internal control evaluation (COSO framework components at depth) — those belong to AUD/II/C (Internal Controls)",
		"Assessing and responding to identified risks of material misstatement — those belong to AUD/II/E (Risk Assessment)",
		"Detailed fraud risk assessment procedures at depth — those belong to Risk Assessment",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
