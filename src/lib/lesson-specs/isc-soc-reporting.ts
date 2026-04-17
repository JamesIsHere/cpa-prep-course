import type { LessonSpec } from "./types";
import {
	SOC_IN_SCOPE,
	SOC_OUT_OF_SCOPE,
	SOC_KEY_STANDARDS,
	SOC_COMMON_MISCONCEPTIONS,
	SOC_BANNED_TERMS,
} from "./_isc-soc-base";

// Thirty-first authored spec — fourteenth of Stage 3, second of the
// ISC SOC cluster. Census v3 rank #3: 59 questions, 11 flagged
// (18.6%) on `SOC 1 Type 2`. Same rightful-owner pattern as SOC
// Engagements.
//
// Focus emphasis for this topic: the REPORTING end of the SOC
// engagement — the opinion letter, management's assertion,
// description of the system, modifications to the opinion, and the
// different report forms (Type 1 vs Type 2, SOC 1 vs 2 vs 3).

export const spec: LessonSpec = {
	topic: "SOC Reporting",
	section: "isc",
	primaryRef: "ISC/III/B",
	secondaryRefs: [],
	inScope: SOC_IN_SCOPE,
	outOfScope: SOC_OUT_OF_SCOPE,
	keyStandards: SOC_KEY_STANDARDS,
	commonMisconceptions: SOC_COMMON_MISCONCEPTIONS,
	representativeDifficulty: "mixed",
	bannedTerms: SOC_BANNED_TERMS,
	notes:
		"SOC Reporting is the ISC topic covering the reporting end of SOC engagements — opinion letter, management's assertion, system description, opinion modification, and report form distinctions. Shares scope with the other four ISC SOC topics via _isc-soc-base.ts. Census v3 flagged 11/59 at 18.6% on `SOC 1 Type 2`. Clean rightful-owner.",
};
