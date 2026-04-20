import type { LessonSpec } from "./types";

// TCP/IV/C — Related party transactions, including imputed interest.
// AICPA group has 4 tasks directly covering §267 and related topics:
// recall related parties, calculate direct/indirect ownership for
// related-party determination, compute gain/loss on subsequent
// disposition of previously-disallowed-loss property, and calculate
// imputed interest.
//
// Created 2026-04-19 to route the 66 DB "Related Party Transactions"
// questions to their correct AICPA home. Previously aliased under
// tcp-gains-losses-and-netting.ts (IV/B) where 62/66 were homeless
// because IV/B's 8 tasks focus on §1231 / depreciation recapture /
// netting, not related-party loss disallowance.

export const spec: LessonSpec = {
	topic: "Related Party Transactions",
	section: "tcp",
	primaryRef: "TCP/IV/C",
	secondaryRefs: [],

	inScope: [
		"Definition of related parties for tax purposes — §267(b) and §267(c) attribution rules: family members, >50% owned entities, grantor trusts, controlled groups, fiduciaries, partnerships and their partners (>50%), and common control",
		"Constructive/indirect ownership rules — family attribution (spouse, children, grandchildren, parents), entity attribution (partnership ↔ partner, corporation ↔ >50% shareholder), and chain attribution through multiple entities",
		"§267 related-party loss disallowance — losses on sales between related parties are disallowed to the seller; the transferee takes the property with cost basis but may use the previously disallowed loss to offset gain on a subsequent sale to an unrelated party (cannot create a loss)",
		"Step-transaction doctrine as applied to related-party sales — a purported sale through an unrelated intermediary can be collapsed if the substance is a transfer between related parties with no independent business purpose",
		"§267 installment sale and matching rules — accrual-basis taxpayer cannot deduct an expense payable to a related cash-basis taxpayer until the related party includes it in income",
		"Imputed interest under §7872 on related-party loans — below-market-rate loans (gift loans, compensation-related, corporation-shareholder) require imputed interest computation; de minimis exceptions ($10,000 gift-loan exception, $10,000 compensation-related exception)",
		"§483 and §1274 imputed interest on deferred-payment sales — when a sale involves deferred payments without adequate stated interest, interest is imputed; applicable federal rate (AFR) used for the imputation",
		"Gain/loss calculation on subsequent disposition of related-party-acquired property — transferee's basis, recovery of previously-disallowed seller loss, treatment when subsequent sale is at a gain vs a loss",
	],

	outOfScope: [
		"§1231 / §1245 / §1250 / capital gain netting at depth — TCP/IV/B territory",
		"Controlled-group definitions at C-corp depth (brother-sister, parent-subsidiary) — TCP/II/A consolidated-return context",
		"Attribution rules in the corporate redemption context (§318) at depth — that's C-corp planning",
		"Transfer pricing between related international entities (§482) at practitioner depth",
	],

	keyStandards: [
		"IRC §267 — Losses, expenses and interest with respect to transactions between related taxpayers",
		"IRC §7872 — Treatment of loans with below-market interest rates",
		"IRC §483 — Interest on certain deferred payments",
		"IRC §1274 — Determination of issue price in the case of certain debt instruments issued for property",
		"IRC §318 — Constructive ownership of stock (referenced at concept level for corporate context)",
	],

	commonMisconceptions: [],
	bannedTerms: [],
	representativeDifficulty: "medium",
};
