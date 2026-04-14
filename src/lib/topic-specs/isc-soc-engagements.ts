import type { TopicSpec } from "./types";
import {
	SOC_IN_SCOPE,
	SOC_OUT_OF_SCOPE,
	SOC_KEY_STANDARDS,
	SOC_COMMON_MISCONCEPTIONS,
	SOC_BANNED_TERMS,
} from "./_isc-soc-base";

// Thirtieth authored spec — thirteenth of Stage 3, first of the ISC
// SOC cluster. Census v3 rank #1: 58 questions, 27 flagged (46.6%) —
// all 27 on `SOC 1 Type 2`, a term the Using the Work of Others spec
// and Audit Planning spec both push out as service-auditor territory.
// This spec is the rightful owner for the SERVICE AUDITOR perspective
// on SOC engagements.
//
// This topic is one of five ISC SOC topics that share the same
// territory at different focus points. Scope, bans, standards, and
// misconceptions come from _isc-soc-base.ts. Focus emphasis for this
// topic: the end-to-end SOC engagement — planning, execution, report
// issuance — with particular attention to the engagement-level
// decisions (SOC 1 vs 2 vs 3, Type 1 vs 2, inclusive vs carve-out,
// scope of trust services criteria).

export const spec: TopicSpec = {
	topic: "SOC Engagements",
	section: "isc",
	blueprintRef: "ISC/III/A",
	inScope: SOC_IN_SCOPE,
	outOfScope: SOC_OUT_OF_SCOPE,
	keyStandards: SOC_KEY_STANDARDS,
	commonMisconceptions: SOC_COMMON_MISCONCEPTIONS,
	representativeDifficulty: "mixed",
	bannedTerms: SOC_BANNED_TERMS,
	notes:
		"SOC Engagements is the primary ISC SOC topic — covering the end-to-end engagement process from planning through report issuance. Census v3 flagged 27/58 questions at 46.6%, all on `SOC 1 Type 2`. Clean rightful-owner: the Using the Work of Others (AUD) spec explicitly bans SOC 1 Type 2 depth as SERVICE AUDITOR territory, and this topic IS that service auditor territory. Spec shares scope with four other ISC SOC topics via _isc-soc-base.ts. Line held: AT-C 205 / AT-C 320 / SSAE 18 service auditor framework, SOC 1 vs 2 vs 3 distinctions, Type 1 vs Type 2 distinctions, trust services criteria application for SOC 2, inclusive vs carve-out subservice handling, management's written assertion, system description requirements, CUEC/CSOC concepts, control deficiency evaluation and opinion modification. Out of scope: AU-C 402 user auditor reliance mechanics (Using the Work of Others), PCAOB AS 2201 integrated audit, AU-C 530 sampling mechanics, quality management at SQMS/ISQM depth, ISACA/COBIT/ITIL framework depth, IFAC international assurance standards (ISAE 3402/3000), Yellow Book government auditing, cryptographic algorithm depth, privacy law article-level citations, PCI DSS/HIPAA specific-provision depth.",
};
