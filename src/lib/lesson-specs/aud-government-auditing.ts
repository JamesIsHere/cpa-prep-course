import type { LessonSpec } from "./types";

// AUD/IV/D — Compliance reporting and government auditing.
// Covers Government Auditing Standards (Yellow Book), Single Audit Act,
// Uniform Guidance, and compliance reporting.

export const spec: LessonSpec = {
	topic: "Government Auditing Standards",
	section: "aud",
	primaryRef: "AUD/IV/D",
	secondaryRefs: [],

	inScope: [
		"Government Auditing Standards (Yellow Book / GAO) — types of government audits, additional reporting requirements, independence requirements",
		"Single Audit Act and Uniform Guidance (2 CFR 200) — applicability, major program determination, compliance requirements",
		"Compliance auditing — testing compliance with laws, regulations, and grant provisions",
		"Reporting on internal control over compliance and on compliance with program requirements",
		"The relationship between GAAS and Government Auditing Standards — GAS builds on GAAS with additional requirements",
	],

	outOfScope: [
		"Detailed governmental accounting standards (GASB) at depth — those are FAR territory",
		"Federal Acquisition Regulation (FAR) requirements at depth",
		"Performance auditing at depth — the CPA exam focuses on financial and compliance audits",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
