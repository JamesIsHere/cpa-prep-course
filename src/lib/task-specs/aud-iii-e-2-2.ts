import type { TaskSpec } from "./types";
import { SKILL_TO_BLOOM } from "./types";

// AUD/III/E/2/2 — Scaffold task-spec (auto-generated).

export const spec: TaskSpec = {
	aicpaRef: "AUD/III/E/2/2",
	section: "aud",

	aicpaTask: "Test management’s assumptions, conclusions and adjustments related to the valuation of investments in securities in an audit.",
	aicpaSkill: "Application",
	bloomLevel: SKILL_TO_BLOOM["Application"],

	inScope: [
		"Testing management's assumptions for investment valuation: discount rates, growth rates, market comparables",
		"Evaluating adjustments to investment fair values: unrealized gains/losses, impairment write-downs",
		"Confirming existence and ownership of securities: custodian confirmations, broker statements",
		"Testing classification of investments: trading, available-for-sale, held-to-maturity and reclassification rules",
	],

	keyStandards: [],

	commonMisconceptions: [],

	bannedTerms: [],

	targetCount: 3,
	difficultyMix: { easy: 30, medium: 50, hard: 20 },

	lessonSpec: "aud-specific-matters",
};
