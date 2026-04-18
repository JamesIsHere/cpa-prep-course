import type { LessonSpec } from "./types";

// AUD/I/E — Engagement documentation (workpapers).
// Covers documentation requirements, assembly, retention,
// and the concept of a complete and final set of audit documentation.

export const spec: LessonSpec = {
	topic: "Engagement Documentation",
	section: "aud",
	primaryRef: "AUD/I/E",
	secondaryRefs: [],

	inScope: [
		"Purpose of audit documentation — sufficient to enable an experienced auditor with no prior connection to understand the work performed",
		"Documentation requirements — nature, timing, and extent of procedures, results obtained, significant findings",
		"Assembly of the final engagement file — 60-day assembly deadline after the report release date",
		"Retention period for audit documentation — minimum 5 years from the report release date",
		"Additions to documentation after the report date — documentation of the date and reasons for additions",
	],

	outOfScope: [
		"Specific workpaper formats for individual audit areas — those are covered by the relevant procedure topics",
		"Electronic vs paper documentation technology at depth",
		"PCAOB documentation requirements at depth — tested only as a distinction",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
