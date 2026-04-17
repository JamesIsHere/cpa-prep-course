import type { LessonSpec } from "./types";
import {
	SOC_IN_SCOPE,
	SOC_OUT_OF_SCOPE,
	SOC_KEY_STANDARDS,
	SOC_COMMON_MISCONCEPTIONS,
	SOC_BANNED_TERMS,
} from "./_isc-soc-base";

// Thirty-third authored spec — sixteenth of Stage 3, fourth of the
// ISC SOC cluster. Census v3 rank #6: 59 questions, 8 flagged
// (13.6%) on `SOC 1 Type 2`. Same rightful-owner pattern.
//
// Focus emphasis for this topic: the structural composition of a
// SOC report — the five sections (opinion letter, management's
// assertion, system description, description of controls and tests
// (Type 2), supplemental info), what belongs in each, and how the
// description criteria (DC section 200 / 200A) govern the system
// description content.

export const spec: LessonSpec = {
	topic: "SOC Report Content and Structure",
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
		"SOC Report Content and Structure is the ISC topic covering the structural composition of SOC reports — the five sections, the description criteria (DC section 200 for SOC 1 and 200A for SOC 2), CUECs and CSOCs, and the interaction between sections. Shares scope with the other four ISC SOC topics. Census v3 flagged 8/59 at 13.6% on `SOC 1 Type 2`. Clean rightful-owner.",
};
