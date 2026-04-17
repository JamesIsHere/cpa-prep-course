import type { TopicSpec } from "./types";
import {
	SOC_IN_SCOPE,
	SOC_OUT_OF_SCOPE,
	SOC_KEY_STANDARDS,
	SOC_COMMON_MISCONCEPTIONS,
	SOC_BANNED_TERMS,
} from "./_isc-soc-base";

// Thirty-fourth authored spec — seventeenth of Stage 3, fifth of the
// ISC SOC cluster. Census v3 rank #7: 58 questions, 7 flagged
// (12.1%) on `SOC 1 Type 2`. Same rightful-owner pattern.
//
// Focus emphasis for this topic: the SOC 2 side of reporting with
// particular attention to the trust services criteria — the five
// categories (Security, Availability, Processing Integrity,
// Confidentiality, Privacy), the common criteria (CC1-CC9), and
// how the TSP section 100 criteria are applied in a SOC 2
// engagement.

export const spec: TopicSpec = {
	topic: "SOC Reporting and Trust Services Criteria",
	section: "isc",
	blueprintRef: "ISC/III/B",
	inScope: SOC_IN_SCOPE,
	outOfScope: SOC_OUT_OF_SCOPE,
	keyStandards: SOC_KEY_STANDARDS,
	commonMisconceptions: SOC_COMMON_MISCONCEPTIONS,
	representativeDifficulty: "mixed",
	bannedTerms: SOC_BANNED_TERMS,
	notes:
		"SOC Reporting and Trust Services Criteria is the ISC topic covering SOC 2 engagements with particular focus on the five trust services categories and the common criteria baseline. Shares scope with the other four ISC SOC topics. Census v3 flagged 7/58 at 12.1% on `SOC 1 Type 2`. Clean rightful-owner for the TSP section 100 trust services criteria content that Using the Work of Others bans.",
};
