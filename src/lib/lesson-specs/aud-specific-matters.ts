import type { LessonSpec } from "./types";

// AUD/III/E — Specific matters requiring special consideration.
// Covers litigation, claims, assessments, related party transactions
// in evidence gathering, and using the work of a specialist.

export const spec: LessonSpec = {
	topic: "Specific Audit Considerations",
	topicAliases: ["Litigation and Claims"],
	section: "aud",
	primaryRef: "AUD/III/E",
	secondaryRefs: [],

	inScope: [
		"Audit procedures for litigation, claims, and assessments — inquiry of management and legal counsel, letter of audit inquiry",
		"Using the work of an auditor's specialist — evaluating competence, capabilities, and objectivity; assessing the specialist's work",
		"Audit considerations for an entity using a service organization — AU-C 402 and Type 1/Type 2 reports",
		"Consideration of laws and regulations in an audit — the auditor's responsibility to consider noncompliance",
		"Segment information — audit procedures for segment disclosures",
	],

	outOfScope: [
		"Detailed SOC report content and testing — those belong to ISC SOC topics",
		"Detailed legal analysis of litigation outcomes — the auditor assesses disclosure, not legal merit at depth",
		"Using the work of internal auditors and component auditors at depth — those belong to AUD/II/F (Using the Work of Others)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
