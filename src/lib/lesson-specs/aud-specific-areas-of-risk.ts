import type { LessonSpec } from "./types";

// AUD/III/E — Specific matters that require special consideration.
// Covers auditing accounting estimates, fair value measurements,
// investments in securities, inventory, litigation/claims/assessments,
// going concern, and Uniform Guidance single audits.
// Re-anchored 2026-04-19 from II/G (engagement risk, narrow 4-task group)
// to III/E (6 topics matching the bank's content: estimates, investments,
// inventory, litigation, going concern, single audits). Classifier
// rationales on 52 homeless questions explicitly cited going-concern and
// opening-balance content not covered by any II/G task.

export const spec: LessonSpec = {
	topic: "Specific Areas and Transactions",
	section: "aud",
	primaryRef: "AUD/III/E",
	secondaryRefs: [],

	inScope: [
		"Auditing accounting estimates — evaluating reasonableness, management's process, key assumptions, and estimation uncertainty",
		"Auditing fair value measurements and disclosures — including the use of specialists",
		"Related party transactions — identification, understanding, and evaluation for appropriate disclosure",
		"Going concern evaluation — conditions and events, management's plans, and the auditor's conclusion",
		"Opening balances and initial engagements — procedures for first-year audits and comparative information",
	],

	outOfScope: [
		"Detailed fair value hierarchy (ASC 820) at accounting depth — audit procedures for fair value are in scope, the accounting standard itself is FAR territory",
		"Detailed sampling methodology for specific account balances — those belong to AUD/III/C (Audit Sampling)",
		"Specific substantive procedures at depth for individual account balances — those belong to AUD/III/D",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
