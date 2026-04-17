import type { LessonSpec } from "./types";
import {
	SOC_IN_SCOPE,
	SOC_OUT_OF_SCOPE,
	SOC_KEY_STANDARDS,
	SOC_COMMON_MISCONCEPTIONS,
	SOC_BANNED_TERMS,
} from "./_isc-soc-base";

// Thirty-second authored spec — fifteenth of Stage 3, third of the
// ISC SOC cluster. Census v3 rank #4: 60 questions, 11 flagged
// (18.3%) on `SOC 1 Type 2`, `sampling risk`, `attribute sampling`.
// The sampling flags are small tail drift into audit-sampling depth.
//
// Focus emphasis for this topic: the service auditor's procedures
// to obtain evidence about the design and operating effectiveness
// of controls at the service organization — access controls, change
// management, system monitoring, incident response, backup/recovery,
// vendor management — as tested in SOC 2 engagements.

export const spec: LessonSpec = {
	topic: "SOC Testing Controls",
	section: "isc",
	blueprintRef: "ISC/III/A",
	inScope: SOC_IN_SCOPE,
	outOfScope: SOC_OUT_OF_SCOPE,
	keyStandards: SOC_KEY_STANDARDS,
	commonMisconceptions: SOC_COMMON_MISCONCEPTIONS,
	representativeDifficulty: "mixed",
	bannedTerms: SOC_BANNED_TERMS,
	notes:
		"SOC Testing Controls is the ISC topic covering the service auditor's testing of controls at the service organization — access, change management, monitoring, incident response, backup/recovery, vendor management. Shares scope with the other four ISC SOC topics. Census v3 flagged 11/60 at 18.3% on `SOC 1 Type 2`, `sampling risk`, and `attribute sampling`. The sampling-mechanics flags are small tail drift; this topic tests CONTROLS execution, not sampling theory.",
};
