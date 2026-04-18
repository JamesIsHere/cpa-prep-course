import type { LessonSpec } from "./types";

// Nineteenth authored spec — second spec of Stage 3. Chosen as the #1
// ranked "rightful owner" candidate from the Stage 2 drift census: 43
// questions, 25 flagged by the universal ban set (58.1% — the highest
// drift rate of any unspecced topic). Every one of those 25 flags was on
// `functional currency`, which the Derivatives and International Tax
// specs ban because those topics shouldn't teach foreign-currency
// accounting at depth. This topic is literally that depth — authoring
// the spec converts all 25 hits from false positives into defended
// scope.
//
// ## Anchor
//
// AICPA 2026 Blueprint places foreign-currency material in two spots:
//   FAR/I/A/2  — "Calculate transaction gains or losses recognized from
//                monetary transactions denominated in a foreign currency"
//                (the transaction-date / settlement-date recognition)
//   BAR/II/G   — Consolidated financial statements, including "Recall
//                the basic functional currency concepts including the
//                indicators to be considered when determining a
//                subsidiary's functional currency" and "Calculate foreign
//                currency translation adjustments (local currency to
//                functional currency and/or functional currency to
//                reporting currency) to prepare consolidated financial
//                statements"
//
// Slayer's topic is BAR-tagged, and the stem samples center on the
// translation / remeasurement / functional currency framework used in
// consolidating a foreign subsidiary (along with transaction-level
// gains and losses). The spec anchors to BAR/II/G and treats the
// transaction-gain-loss content as cross-reference coverage.
//
// ## Scope line
//
// The spec owns ASC 830 (Foreign Currency Matters) at foundational
// CPA depth: the three frameworks (transaction gains/losses on monetary
// balances, current-rate translation for foreign-functional
// subsidiaries, temporal remeasurement for USD-functional subsidiaries
// keeping local books), where CTA lives (OCI), when it is reclassified
// to earnings (on disposal of the foreign operation), the highly
// inflationary economy exception, and the basic treatment of forex
// hedges (cash-flow hedge of forecasted forex purchase, net investment
// hedge of foreign operation). Deep hedge accounting mechanics belong
// to the Derivatives topic (already specced). Tax consequences of
// forex (Sec 988, GILTI/Subpart F interaction) belong to TCP
// International Tax (already specced). IAS 21 depth and functional-
// currency-change accounting are out.

export const spec: LessonSpec = {
	topic: "Foreign Currency Transactions",
	topicAliases: ["Advanced Consolidations"],
	section: "bar",
	primaryRef: "BAR/II/G",
	secondaryRefs: [],

	inScope: [
		"Transaction gains and losses on monetary transactions denominated in a foreign currency: a U.S. company that enters into a purchase or sale denominated in a foreign currency records the transaction at the spot rate on the transaction date. At each subsequent reporting date (through final settlement), the related monetary payable or receivable is remeasured at the current spot rate, and the resulting exchange gain or loss is recognized in earnings in the period of the rate change.",
		"Settlement-date recognition: when a foreign-currency monetary balance is ultimately settled, the cumulative gain or loss from transaction date through settlement is fully recognized in earnings. The final gain or loss equals the spot rate on the settlement date minus the spot rate used to record the transaction initially (plus any interim remeasurements already recorded).",
		"The distinction between monetary items (cash, receivables, payables, debt) and nonmonetary items (inventory, PP&E, intangibles, prepaid expenses, deferred revenue). Monetary items are subject to remeasurement at each reporting date using the current spot rate; nonmonetary items generally remain at historical exchange rates.",
		"Functional currency determination for a foreign subsidiary: the functional currency is the currency of the primary economic environment in which the subsidiary operates and generates and expends cash. Key indicators include (a) cash flow indicators — in which currency does the subsidiary receive and expend cash; (b) sales market indicators — the local market and pricing environment; (c) financing indicators — in which currency are borrowings denominated; (d) intercompany transaction indicators — the volume and currency of transactions with the parent. Judgment-based determination when indicators conflict, with the subsidiary's primary operating environment as the tiebreaker.",
		"Two distinct conversion frameworks depending on functional currency: (1) TRANSLATION using the current rate method applies when the subsidiary's functional currency IS its local currency (the subsidiary is operationally self-contained). (2) REMEASUREMENT using the temporal method applies when the subsidiary's functional currency is DIFFERENT from the currency in which its books are kept (typically when the U.S. dollar is the functional currency but the subsidiary keeps books in the local currency, such as for a financing shell that operates primarily in USD).",
		"Translation under the current rate method (foreign functional): all assets and liabilities are translated at the current spot rate on the balance sheet date. Revenues, expenses, gains, and losses are translated at the spot rate on the date of the transaction (or, practically, a weighted-average rate for the period). Equity is translated at historical rates. The cumulative translation adjustment (CTA) is reported in other comprehensive income (OCI) as a component of accumulated other comprehensive income (AOCI), not in earnings.",
		"Remeasurement under the temporal method (USD functional, local books): monetary assets and liabilities are remeasured at the current spot rate; nonmonetary assets and liabilities (inventory, PP&E, intangibles, their related depreciation/amortization expense, and prepaid/deferred items) are remeasured at historical exchange rates; the associated revenue and expense line items follow the nonmonetary items at historical rates. The remeasurement gain or loss is reported in earnings (NOT in OCI), in contrast to the current-rate translation adjustment which goes to OCI.",
		"The cumulative translation adjustment (CTA) concept: the net adjustment from translating a foreign-functional subsidiary's financial statements into the reporting currency accumulates in OCI over time. CTA has no earnings impact during normal operations. Only on disposal (sale, liquidation, or abandonment) of the foreign subsidiary is the accumulated CTA reclassified from AOCI to earnings as part of the gain or loss on disposal.",
		"Exchange gain or loss on an intercompany balance between the parent and a foreign subsidiary: an intercompany monetary balance that is of a 'long-term investment nature' and whose settlement is NOT planned or anticipated in the foreseeable future is treated as part of the net investment in the foreign operation. The exchange gain or loss on such a long-term intercompany balance goes to OCI (CTA) rather than to earnings. Short-term intercompany balances follow normal transaction-gain-loss treatment with the exchange gain or loss going to earnings.",
		"Highly inflationary economy exception: when a subsidiary operates in a country with cumulative inflation of approximately 100% or more over a three-year period, the local currency is deemed not to be the functional currency regardless of the subsidiary's operating environment. The reporting currency (typically the USD) is treated as the functional currency, which means the temporal method is applied and remeasurement gains and losses go through earnings — effectively shielding consolidated equity from extreme exchange rate volatility that would otherwise flood CTA.",
		"Foreign currency hedges at the concept level: (1) a cash flow hedge of a forecasted foreign-currency transaction (e.g., a forward contract hedging a future forex purchase) — the effective portion of the gain or loss on the hedging instrument is deferred in OCI and reclassified to earnings when the hedged forecasted transaction affects earnings. (2) A fair value hedge of an existing foreign-currency recognized asset or liability — both the hedged item and the hedge instrument are remeasured to fair value through earnings, producing an economic offset. (3) A net investment hedge of a foreign operation — the effective portion of the gain or loss on the hedging instrument (which can be a derivative or a nonderivative financial instrument denominated in the foreign currency) goes to CTA in OCI, paralleling the translation adjustment of the hedged net investment.",
		"Net investment hedge treatment: when a parent hedges its net investment in a foreign subsidiary, the effective portion of the hedge gain/loss offsets the translation adjustment on the net investment in CTA. This is the only hedge type that routes gains and losses through CTA rather than earnings.",
		"Presentation of foreign currency translation adjustments: CTA is presented in the statement of comprehensive income as a separate component of OCI, and the accumulated balance is presented within accumulated other comprehensive income (AOCI) in the equity section of the balance sheet. The reclassification to earnings on disposal is a line item in the statement of comprehensive income in the period of disposal.",
		"Functional currency is a judgment-based determination made by management based on the weight of the indicators, not a simple default rule. Once determined, the functional currency generally should not change — a change in functional currency is accounted for prospectively as a change in estimate, not a restatement.",
	],

	outOfScope: [
		"IAS 21 (The Effects of Changes in Foreign Exchange Rates) and IFRS foreign-currency accounting — this spec covers US GAAP (ASC 830) only. Candidates should understand ASC 830; IFRS differences at the level of exam detail belong to the BAR section's separate IFRS coverage if any",
		"Detailed mechanics of changing a subsidiary's functional currency after a facts-and-circumstances shift — prospective change in estimate is in scope at the concept level, but the technical entries (whether to recast prior period comparatives, how to establish new historical rates, etc.) are out",
		"Multi-tier foreign subsidiary translations (a U.S. parent owning a holding company in one foreign jurisdiction which in turn owns operating subsidiaries in a third foreign jurisdiction) beyond the bare fact that each tier is translated independently",
		"Tax accounting for foreign currency gains and losses under IRC Section 988 — this is the tax treatment of forex (section 988 transactions, mark-to-market for section 987 branch remittances, integrated hedging elections). ASC 830 governs financial accounting; Section 988 governs tax accounting. Tax-side foreign-currency mechanics belong to TCP International Tax",
		"GILTI, Subpart F, and foreign tax credit computations for consolidated foreign subsidiaries — all international tax mechanics (TCP International Tax territory)",
		"Section 987 qualified business units (QBUs) and branch remittance mechanics — tax territory",
		"Derivative pricing at mechanics depth — Black-Scholes valuation of foreign currency options, forward curve construction for foreign currency forwards, quantitative hedge effectiveness assessment (dollar-offset method, regression-based methods). Conceptual treatment of forex derivatives as hedges is in scope; pricing and effectiveness mechanics belong to Derivatives and Hedging",
		"Hedge ineffectiveness measurement and the current requirement to recognize only the ineffective portion in earnings versus the pre-2018 'shortcut method' — this is hedge-accounting depth belonging to Derivatives and Hedging",
		"Embedded derivative bifurcation in foreign-currency contracts (when an embedded forex forward in a sales contract must be separated and accounted for as a standalone derivative) — Derivatives and Hedging territory",
		"Accounting for foreign currency transactions of a partnership or pass-through entity at the partner level (character determination, allocation to partners)",
		"Highly inflationary economy mechanics beyond the 100%-over-3-years threshold: the specific IRS or IASB indicator table, the exchange rate to use in the period of transition, the methodology for reconciling the remeasured financial statements to the prior-period current-rate translated statements",
		"Foreign-exchange-rate publication sources, monthly average vs weighted-average vs spot-at-transaction-date choice optimization, and settlement-date nuances for forward-starting transactions",
		"Deferred tax effects of foreign-currency translation adjustments (ASC 740 intersection with CTA)",
		"Push-down accounting for foreign subsidiaries — not a foreign-currency topic, belongs to Business Combinations",
		"Fair value measurement of foreign-denominated monetary assets under ASC 820 at mechanics depth — exchange rate for the fair value measurement is in scope at the concept level (it is the spot rate), but broader ASC 820 three-level hierarchy mechanics belong to Fair Value",
	],

	keyStandards: [
		"ASC 830 — Foreign Currency Matters (the primary standard)",
		"ASC 830-10 — Overall (scope and functional currency determination)",
		"ASC 830-20 — Foreign Currency Transactions (transaction gains and losses on monetary balances)",
		"ASC 830-30 — Translation of Financial Statements (current rate method and temporal method)",
		"ASC 815-20-25-66 — Net investment hedges of a foreign operation",
		"ASC 220 — Comprehensive Income (OCI and AOCI presentation)",
	],

	commonMisconceptions: [
		"Believing all foreign currency gains and losses go to OCI. Only translation adjustments (current rate method) and net investment hedge gains/losses go to CTA in OCI. Transaction gains and losses on monetary items, remeasurement gains and losses under the temporal method, and cash flow hedge gains and losses after reclassification all go through earnings.",
		"Confusing the current rate method (translation) with the temporal method (remeasurement). Current rate applies when the subsidiary's local currency IS its functional currency; temporal applies when the functional currency is DIFFERENT from the currency of the subsidiary's books (typically USD-functional with local-currency books).",
		"Treating inventory as a monetary asset. Inventory is nonmonetary — it is remeasured at historical exchange rates under the temporal method, not at the current spot rate. The same is true of PP&E, intangibles, and the depreciation/amortization expense flowing from them.",
		"Thinking the CTA balance is permanently stuck in OCI. CTA is reclassified to earnings when the foreign subsidiary is disposed of (sold, liquidated, or abandoned). This reclassification is often a significant component of the gain or loss on disposal.",
		"Believing long-term intercompany balances produce transaction gains/losses in earnings. Intercompany monetary balances that are of a long-term investment nature and not planned for settlement in the foreseeable future are treated as part of the net investment — their exchange gains and losses go to CTA, not earnings.",
		"Forgetting that highly inflationary economies force the USD as functional currency regardless of operating facts. When cumulative inflation exceeds ~100% over three years, the judgment-based functional currency determination is overridden and the reporting currency (USD for a U.S. parent) is deemed the functional currency, triggering temporal-method remeasurement and earnings-based gain/loss recognition.",
		"Treating a net investment hedge the same as a cash flow hedge. Net investment hedge gains and losses go directly to CTA in OCI — paralleling the translation adjustment of the hedged net investment. Cash flow hedge gains and losses go to a separate component of OCI and are reclassified to earnings when the hedged forecasted transaction affects earnings.",
		"Believing a functional currency determination is a simple rule-based calculation. It is a management judgment based on the weight of several indicators (cash flow, sales market, financing, intercompany activity). When indicators conflict, the predominant economic environment controls.",
		"Confusing settlement-date gain or loss with interim remeasurement. The cumulative gain or loss from transaction date through settlement is the total. Any interim remeasurements at reporting dates are recognized in those periods, and the remaining gain or loss from the latest reporting date to settlement is recognized in the settlement period.",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		// --- IFRS equivalent standards ---
		{
			term: "IAS 21",
			pattern: "\\bIAS\\s*21\\b",
			category: "IFRS",
			why: "IAS 21 is the IFRS foreign currency standard. This spec covers US GAAP (ASC 830) only. IFRS-vs-GAAP differences at exam detail belong to dedicated IFRS coverage if any.",
		},
		{
			term: "IAS 29",
			pattern: "\\bIAS\\s*29\\b",
			category: "IFRS",
			why: "IAS 29 is the IFRS hyperinflation standard. Out of scope for a US GAAP spec.",
		},

		// --- Tax mechanics of forex ---
		{
			term: "Section 988",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)988\\b",
			category: "tax mechanics",
			why: "IRC Section 988 governs the tax treatment of foreign currency transactions — out of scope for a financial accounting spec. Tax-side forex belongs to TCP International Tax.",
		},
		{
			term: "Section 987",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)987\\b",
			category: "tax mechanics",
			why: "Section 987 QBU / branch remittance mechanics — tax territory, out of scope.",
		},
		{
			term: "GILTI",
			pattern: "\\bGILTI\\b",
			category: "international tax",
			why: "Global Intangible Low-Taxed Income — international tax, out of scope. Belongs to TCP International Tax.",
		},
		{
			term: "Subpart F",
			pattern: "Subpart\\s+F\\b",
			category: "international tax",
			why: "Subpart F CFC rules — international tax, out of scope.",
		},
		{
			term: "Section 901",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)901\\b",
			category: "international tax",
			why: "Foreign tax credit under Sec 901 — tax territory.",
		},
		{
			term: "Section 904",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)904\\b",
			category: "international tax",
			why: "FTC limitation under Sec 904 — tax territory.",
		},
		{
			term: "Section 245A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)245A\\b",
			category: "international tax",
			why: "Sec 245A participation exemption — tax territory.",
		},
		{
			term: "CFC",
			pattern: "controlled\\s+foreign\\s+corporation|\\bCFC\\b",
			category: "international tax",
			why: "Controlled foreign corporation concept — international tax, out of scope.",
		},

		// --- Derivative pricing depth ---
		{
			term: "Black-Scholes",
			pattern: "Black[-\\s]Scholes",
			category: "derivative pricing",
			why: "Black-Scholes option pricing — Derivatives and Hedging topic depth, out of scope. The concept of a forex option as a hedging instrument is in scope; the pricing mechanics are not.",
		},
		{
			term: "dollar-offset method",
			pattern: "dollar[-\\s]offset\\s+method",
			category: "hedge effectiveness",
			why: "Hedge effectiveness testing methodology — Derivatives and Hedging depth.",
		},
		{
			term: "shortcut method",
			pattern: "shortcut\\s+method",
			category: "hedge effectiveness",
			why: "Pre-2018 shortcut method for assessing hedge effectiveness — Derivatives territory.",
		},
		{
			term: "forward curve",
			pattern: "forward\\s+curve",
			category: "derivative pricing",
			why: "Forward curve construction for FX forwards — Derivatives pricing depth.",
		},
		{
			term: "embedded derivative",
			pattern: "embedded\\s+derivative",
			category: "derivative bifurcation",
			why: "Embedded derivative bifurcation — Derivatives and Hedging topic depth.",
		},

		// --- Capital budgeting / valuation leakage ---
		{
			term: "WACC",
			pattern: "\\bWACC\\b|weighted\\s+average\\s+cost\\s+of\\s+capital",
			category: "valuation",
			why: "Weighted average cost of capital — a valuation topic, not a foreign-currency accounting topic.",
		},
		{
			term: "CAPM",
			pattern: "\\bCAPM\\b|capital\\s+asset\\s+pricing\\s+model",
			category: "valuation",
			why: "CAPM — valuation territory, out of scope.",
		},

		// --- Tax audit / BBA (not relevant to financial accounting) ---
		{
			term: "BBA",
			pattern: "\\bBBA\\b|Bipartisan\\s+Budget\\s+Act|partnership\\s+representative",
			category: "unrelated tax regime",
			why: "BBA partnership audit regime — not a foreign-currency topic.",
		},

		// --- Section 199A / QBI (not relevant) ---
		{
			term: "Section 199A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)199A\\b",
			category: "unrelated tax regime",
			why: "QBI deduction — unrelated to foreign-currency accounting.",
		},
	],

	notes:
		"Foreign Currency Transactions is the designated home in the Slayer curriculum for ASC 830 content. The Stage 2 drift census flagged it as the #1 rightful-owner topic (43 questions, 25 flagged at 58.1% — every flag on 'functional currency' which the Derivatives and International Tax specs legitimately ban as not-their-topic). The spec holds the line at foundational US-GAAP-only scope: transaction gains/losses on monetary balances, functional currency determination, the current-rate translation method for foreign-functional subsidiaries, the temporal remeasurement method for USD-functional subsidiaries, CTA presentation in OCI and reclassification on disposal, long-term intercompany balances treated as part of the net investment, highly inflationary economy exception, and the three forex hedge types at concept level (cash flow hedge, fair value hedge, net investment hedge). Deeper content belongs elsewhere: hedge accounting mechanics live in Derivatives and Hedging (already specced), tax-side forex lives in TCP International Tax (already specced, banning Section 988/987/GILTI/Subpart F/CFC), and IFRS coverage (IAS 21, IAS 29) is out of scope for a US GAAP foundational topic.",
};
