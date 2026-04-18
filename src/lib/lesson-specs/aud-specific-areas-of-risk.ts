import type { LessonSpec } from "./types";

// AUD/II/G — Specific areas of engagement risk.
// Covers accounting estimates, fair value measurements, related
// party transactions, going concern, and other specific risk areas.

export const spec: LessonSpec = {
	topic: "Specific Areas and Transactions",
	section: "aud",
	primaryRef: "AUD/II/G",
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
