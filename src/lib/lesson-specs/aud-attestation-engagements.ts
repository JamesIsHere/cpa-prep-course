import type { LessonSpec } from "./types";

// AUD/IV/B — Attestation, examination, and agreed-upon procedures reports.
// Task-specs cover form/content of assertion-based examination, direct
// examination, review reports, and agreed-upon procedures reports under
// AT-C standards. Created to route the 35 homeless "Attestation Engagements"
// questions out of IV/E (Other Reporting Considerations) to their correct
// AICPA anchor.

export const spec: LessonSpec = {
	topic: "Attestation Engagements",
	section: "aud",
	primaryRef: "AUD/IV/B",
	secondaryRefs: [],

	inScope: [
		"Assertion-based examination reports — practitioner's opinion on subject matter based on management's written assertion, under AT-C section 205",
		"Direct examination reports — practitioner's opinion on subject matter without requiring a written assertion from the responsible party, under AT-C section 206",
		"Review reports on subject matter — practitioner's conclusion expressed in negative assurance form, under AT-C section 210",
		"Agreed-upon procedures (AUP) reports — practitioner performs specified procedures and reports findings without expressing an opinion or conclusion, under AT-C section 215",
		"Form and content requirements for attestation reports: required sections (title, addressee, subject matter/assertion identification, practitioner's responsibilities, opinion or conclusion, restrictions on use if applicable)",
		"Distinguishing examination (reasonable assurance, opinion) from review (limited assurance, negative conclusion) from AUP (no assurance, report of findings)",
		"Compliance examinations — reporting on an entity's compliance with specified requirements (e.g., laws, regulations, contracts, grant terms)",
		"SOC reports (SOC 1, SOC 2, SOC 3) as attestation engagements — practitioner's report on controls at a service organization",
	],

	outOfScope: [
		"Audit reports on financial statements — AUD/IV/A (Audit Reports) territory",
		"Review or compilation of financial statements under SSARS — AUD/IV/C (Review and Compilation)",
		"Detailed SOC report testing procedures and control evaluation — ISC SOC cluster",
		"Other-matter and emphasis-of-matter paragraphs in audit reports — AUD/IV/A",
		"Government auditing standards reporting requirements — AUD/IV/D",
	],

	keyStandards: [
		"AT-C 105 — Concepts Common to All Attestation Engagements",
		"AT-C 205 — Assertion-Based Examination Engagements",
		"AT-C 206 — Direct Examination Engagements",
		"AT-C 210 — Review Engagements",
		"AT-C 215 — Agreed-Upon Procedures Engagements",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
