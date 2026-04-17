import type { TaskSpec } from "./types";

// Direction W: group-level residual for FAR/II/I (Equity).
// ~11 homeless questions on treasury stock concepts, quasi-reorganization,
// appropriated retained earnings, comprehensive income with AOCI
// reclassifications, stock option measurement, and property dividends
// beyond the representative tasks.

export const spec: TaskSpec = {
	aicpaRef: "FAR/II/I",
	section: "far",

	aicpaTask:
		"Residual: equity content beyond the representative tasks — treasury stock concepts (dividend exclusion, book value effect), quasi-reorganization purpose and presentation, appropriated retained earnings, comprehensive income calculation with AOCI reclassifications, stock option measurement basis, and property dividends.",
	aicpaSkill: "Application",
	bloomLevel: 2,

	inScope: [
		"Treasury stock concepts (ASC 505): dividend exclusion for treasury shares, effect on book value per share, cost method vs par value method conceptual distinction, reissuance above and below cost",
		"Quasi-reorganization (ASC 852): purpose and conditions for fresh-start reporting, elimination of accumulated deficit, restatement of assets to fair value, post-reorganization retained earnings dating requirement",
		"Appropriated retained earnings: board designation mechanics, restriction on dividends, reversal upon purpose completion, disclosure requirements",
		"Comprehensive income and AOCI (ASC 220): other comprehensive income components (unrealized gains on AFS securities, foreign currency translation, pension adjustments, cash flow hedge gains/losses), reclassification adjustments from AOCI to net income",
		"Stock option measurement basis (ASC 718): grant-date fair value measurement, service period expense recognition, modification accounting concepts",
		"Property dividends: measurement at fair value on declaration date, gain/loss recognition on distribution, journal entry mechanics",
	],

	keyStandards: [
		"ASC 505 — Equity",
		"ASC 220 — Comprehensive Income",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	targetCount: 3,
	difficultyMix: { easy: 20, medium: 50, hard: 30 },
	lessonSpec: "far-equity",
	notes: "Direction W residual — group-level. Created 2026-04-17.",
};
