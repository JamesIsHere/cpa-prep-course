import type { LessonSpec } from "./types";

// AUD/I/A — Ethics, independence, and professional responsibilities.
// Covers AICPA Code of Professional Conduct, independence requirements
// (both in mind and in appearance), and professional responsibilities
// for auditors including integrity, objectivity, and due care.

export const spec: LessonSpec = {
	topic: "Ethics and Independence",
	topicAliases: ["Independence", "Professional Responsibilities"],
	section: "aud",
	primaryRef: "AUD/I/A",
	secondaryRefs: [],

	inScope: [
		"AICPA Code of Professional Conduct — principles, rules, and interpretations governing auditor behavior",
		"Independence in mind (intellectual honesty) and in appearance (perception by a reasonable observer)",
		"Threats to independence: self-review, self-interest, advocacy, familiarity, undue influence — and safeguards",
		"Financial interests (direct vs indirect) and their effect on independence",
		"Non-attest services and their permissibility under the AICPA Code and applicable regulations",
	],

	outOfScope: [
		"SEC independence rules and PCAOB independence standards at depth — tested only as a conceptual distinction from AICPA requirements",
		"IESBA Code of Ethics at depth — non-US standard",
		"Detailed disciplinary proceedings and enforcement mechanisms of state boards of accountancy",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
