import type { LessonSpec } from "./types";

// AUD/III/G — Written representations.
// Covers the management representation letter requirements, content,
// dating, and the auditor's response when representations are not provided.

export const spec: LessonSpec = {
	topic: "Written Representations",
	section: "aud",
	primaryRef: "AUD/III/G",
	secondaryRefs: [],

	inScope: [
		"Purpose of written representations — complementary audit evidence, not a substitute for other procedures",
		"Required representations — management's responsibility for fair presentation, completeness of information, fraud, subsequent events, related parties",
		"Dating the representation letter — as of the date of the auditor's report",
		"Who should sign the management representation letter — members of management with appropriate responsibilities",
		"Auditor's response when management refuses to provide requested written representations — scope limitation and report impact",
	],

	outOfScope: [
		"Audit report modifications at depth — those belong to AUD/IV/A (Audit Reports)",
		"Legal letters / letters of audit inquiry — those belong to AUD/III/E (Specific Matters)",
		"Engagement letter content at depth — that belongs to AUD/I/D (Terms of Engagement)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
