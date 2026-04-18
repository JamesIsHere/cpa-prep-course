import type { LessonSpec } from "./types";

// AUD/I/F — Communication with management and those charged with governance.
// Covers required communications about significant audit findings,
// internal control deficiencies, and other matters of governance interest.

export const spec: LessonSpec = {
	topic: "Communication with Management and Governance",
	section: "aud",
	primaryRef: "AUD/I/F",
	secondaryRefs: [],

	inScope: [
		"Required communications with those charged with governance — auditor responsibilities, planned scope and timing, significant findings",
		"Communication of internal control deficiencies — significant deficiencies and material weaknesses",
		"Communication of fraud or suspected fraud to management and those charged with governance",
		"Two-way communication between the auditor and governance — the auditor's obligation to establish effective communication",
		"Timing of required communications — during the audit and at or near the completion of the engagement",
	],

	outOfScope: [
		"Detailed evaluation and classification of control deficiencies — those belong to AUD/IV/B (Misstatements and Control Deficiencies)",
		"Audit report modifications at depth — those belong to AUD/IV/A (Audit Reports)",
		"Management representation letter content at depth — that belongs to AUD/III/G (Written Representations)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
