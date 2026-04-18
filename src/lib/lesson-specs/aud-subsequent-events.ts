import type { LessonSpec } from "./types";

// AUD/III/H — Subsequent events and subsequently discovered facts.
// Covers the auditor's responsibilities for events occurring between
// the financial statement date and the auditor's report date, and
// facts discovered after the report date.

export const spec: LessonSpec = {
	topic: "Subsequent Events in Auditing",
	section: "aud",
	primaryRef: "AUD/III/H",
	secondaryRefs: [],

	inScope: [
		"Type I subsequent events (recognized) — events providing additional evidence about conditions existing at the balance sheet date",
		"Type II subsequent events (non-recognized) — events providing evidence about conditions arising after the balance sheet date",
		"Audit procedures for subsequent events — inquiry, reading minutes, obtaining updated legal representations",
		"Dual dating of the auditor's report when a subsequent event is disclosed",
		"Subsequently discovered facts — the auditor's responsibilities after the report has been issued (AU-C 560)",
	],

	outOfScope: [
		"ASC 855 accounting treatment of subsequent events at depth — the accounting standard is FAR territory; the audit procedures are in scope",
		"Reissuance of financial statements at depth — the mechanics of restatement belong to FAR",
		"Going concern evaluation at depth — that belongs to AUD/II/G (Specific Areas of Risk)",
	],

	keyStandards: [],
	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
