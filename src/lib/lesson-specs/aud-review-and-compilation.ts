import type { LessonSpec } from "./types";

// AUD/IV/C — Review and compilation engagements.
// Covers SSARS (AR-C) review and compilation standards, procedures,
// and reporting for non-audit engagements.

export const spec: LessonSpec = {
	topic: "Review and Compilation",
	topicAliases: ["Review/Compilation Engagements"],
	section: "aud",
	primaryRef: "AUD/IV/C",
	secondaryRefs: [],

	inScope: [
		"Review engagements under AR-C 90 — limited assurance, analytical procedures, and inquiries as the primary procedures",
		"Compilation engagements under AR-C 80 — no assurance, presenting management's financial statements in proper form",
		"Preparation of financial statements under AR-C 70 — when the accountant is engaged to prepare (not compile) statements",
		"Review and compilation report content, format, and required elements",
		"Independence requirements — a compilation can be performed without independence (with disclosure); a review requires independence",
	],

	outOfScope: [
		"Full audit procedures and AU-C standards at depth — those belong to audit-specific topics",
		"Attestation engagements at depth — those belong to AUD/IV/E",
		"PCAOB standards for review engagements at depth",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
