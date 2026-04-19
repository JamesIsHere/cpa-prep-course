import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/IV/E/2/1 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/IV/E/2/1",
	section: "aud",

	aicpaTask: "Understand the auditor’s responsibilities related to other information included in documents with audited financial statements.",
	aicpaSkill: "Remembering and Understanding",
	bloomLevel: SKILL_TO_BLOOM["Remembering and Understanding"],

	inScope: [
		"Other information in documents containing audited financial statements: annual reports, regulatory filings (AU-C 720)",
		"Auditor's responsibility: read other information for material inconsistency with financial statements or material misstatement of fact",
		"Actions when material inconsistency identified: determine whether financial statements or other information requires revision",
		"No separate opinion on other information: auditor's report may include other-matter paragraph referencing review of other information",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-other-reporting",
};
