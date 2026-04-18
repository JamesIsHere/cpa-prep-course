import type { LessonSpec } from "./types";

// AUD/IV/E — Other reporting considerations.
// Covers modifications to the auditor's report, other information in
// documents containing audited financial statements, supplementary
// information, attestation engagements, and special purpose frameworks.

export const spec: LessonSpec = {
	topic: "Other Reporting Considerations",
	topicAliases: ["Modifications to the Auditor Report", "Other Information and Supplementary Information", "Attestation Engagements"],
	section: "aud",
	primaryRef: "AUD/IV/E",
	secondaryRefs: [],

	inScope: [
		"Emphasis-of-matter and other-matter paragraphs in the auditor's report",
		"Other information in documents containing audited financial statements — the auditor's responsibility to read and consider consistency",
		"Supplementary information and required supplementary information (RSI) — reporting responsibilities",
		"Attestation engagements — examination, review, and agreed-upon procedures under AT-C standards",
		"Special purpose frameworks — cash basis, tax basis, regulatory basis, contractual basis, and other comprehensive bases of accounting (OCBOA)",
	],

	outOfScope: [
		"Standard unmodified/modified audit opinion types at depth — those belong to AUD/IV/A (Audit Reports)",
		"SOC engagements and SOC report content at depth — those belong to ISC topics",
		"Detailed review and compilation reporting — those belong to AUD/IV/C",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
