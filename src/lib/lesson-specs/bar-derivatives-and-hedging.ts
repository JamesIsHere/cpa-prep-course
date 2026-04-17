import type { TopicSpec } from "./types";

// Third pilot spec — ASC 815 hedge accounting. The AICPA representative tasks for this
// topic are unusually narrow: identify derivatives (freestanding and embedded), recall
// hedge accounting qualification criteria, recall presentation of swap/option/forward
// gains and losses, and prepare JEs for an interest rate swap (fair value or cash flow
// hedge) from given inputs. That narrowness is the key editorial fact — the topic looks
// big because ASC 815 is a 700-page standard, but the testable surface is small. The
// drift risk is treating this like an FRM/CFA derivatives chapter instead of a CPA hedge
// accounting topic.
//
// AICPA places this at BAR/II/H as a direct topic (no sub-numbering). Slayer's
// blueprint.ts puts it at bar.2.F with three internal sub-topics, but they all roll up
// to a single Slayer tagging string "Derivatives and Hedging".

export const spec: TopicSpec = {
	topic: "Derivatives and Hedging",
	section: "bar",
	blueprintRef: "BAR/II/H/0",

	inScope: [
		"Definition of a derivative under ASC 815: underlying, notional amount, no or small initial net investment, net settlement",
		"Common derivative instruments at the recognition level: forwards, futures, options (calls and puts), interest rate swaps, currency swaps, commodity swaps",
		"Embedded derivative identification and the bifurcation criteria: not clearly and closely related to host, hybrid not measured at fair value through earnings, freestanding instrument with same terms would be a derivative",
		"Hedge accounting qualification criteria: formal designation and documentation at inception, eligible hedged item, eligible hedging instrument, expected to be highly effective",
		"The three hedge designations under ASC 815: fair value hedge, cash flow hedge, net investment hedge",
		"Fair value hedge accounting mechanics: changes in fair value of hedging instrument and changes in fair value of hedged item attributable to hedged risk both flow to current earnings",
		"Cash flow hedge accounting mechanics: effective portion of changes in fair value of hedging instrument deferred in OCI, reclassified to earnings when hedged forecasted transaction affects earnings",
		"Net investment hedge accounting mechanics: changes in fair value of hedging instrument flow to OCI as part of cumulative translation adjustment",
		"Journal entries for an interest rate swap (pay-fixed-receive-floating or pay-floating-receive-fixed) using given notional, rates, and fair value measurements — both fair value and cash flow hedge designations",
		"Presentation of derivative gains and losses on the balance sheet (asset or liability at fair value) and the income statement / OCI by hedge type",
		"Discontinuation of hedge accounting and the prospective treatment when hedging relationship ceases to qualify",
		"Recognition of speculative (non-hedge) derivatives at fair value through earnings",
		"Conceptual purpose of hedging: managing interest rate risk, foreign currency risk, commodity price risk, and the type of hedge each maps to",
		"The simplified hedge accounting approach for private companies under ASU 2014-03 (interest rate swap on variable-rate debt) — eligibility and basic mechanics",
		"The shortcut method conceptual eligibility (interest rate swap matching critical terms of debt) — knowing it exists and the high bar to qualify",
	],

	outOfScope: [
		"Effectiveness assessment methodologies at any quantitative depth: regression-based effectiveness testing, dollar-offset method calculations, change-in-fair-value-to-change-in-fair-value ratios beyond binary 'is it within the 80–125 range' awareness",
		"Hypothetical derivative method for measuring ineffectiveness in cash flow hedges",
		"Critical terms match method beyond the qualitative statement that it allows an assumption of perfect effectiveness",
		"Long-haul vs. short-cut method quantitative comparisons",
		"Quantitative ineffectiveness measurement and the journal entries to record ineffective portions in earnings beyond conceptual recognition",
		"Black-Scholes or binomial pricing of option-based hedging instruments (those live in valuation if anywhere; for hedge accounting, fair values are given inputs)",
		"Yield curve construction, bootstrapping zero rates, forward rate derivation",
		"LIBOR / SOFR transition mechanics and reference rate reform optional expedients (ASU 2020-04 / Topic 848) at any quantitative depth",
		"Cross-currency swap mechanics with separate interest rate and FX legs requiring decomposed valuation",
		"Total return swaps, credit default swaps (CDS), credit-linked notes",
		"Variance swaps, volatility swaps, weather derivatives, catastrophe bonds",
		"Counterparty credit risk adjustments (CVA / DVA / FVA) in derivative valuation",
		"ISDA Master Agreement mechanics, netting opinions, collateral / variation margin posting",
		"Day-1 P&L recognition issues for level-3 derivative valuations",
		"Bifurcation of compound instruments under ASC 470-20 (convertible debt) — that lives in debt/equity topics, not derivatives",
		"Detailed FX accounting for foreign-currency-denominated derivatives separate from the underlying ASC 830 translation rules",
		"Insurance-linked derivative carve-outs and weather-related contract scope exceptions beyond mentioning they exist",
		"Commodity broker-trader inventory exception and other ASC 815 scope exceptions at the named-paragraph level",
	],

	keyStandards: [
		"ASC 815 — Derivatives and Hedging",
		"ASC 815-10 — Overall (definition of a derivative, scope exceptions)",
		"ASC 815-15 — Embedded Derivatives",
		"ASC 815-20 — Hedging — General (qualification criteria)",
		"ASC 815-25 — Fair Value Hedges",
		"ASC 815-30 — Cash Flow Hedges",
		"ASC 815-35 — Net Investment Hedges",
		"ASU 2017-12 — Targeted Improvements to Accounting for Hedging Activities",
	],

	commonMisconceptions: [
		"Treating any forward, future, or swap as automatically qualifying for hedge accounting (it does not — formal designation and documentation at inception are required)",
		"Believing the effective portion of a fair value hedge goes to OCI (it goes to earnings; OCI is the cash flow hedge treatment)",
		"Confusing which leg of an interest rate swap a company holds when described as 'pay-fixed-receive-floating' vs. 'pay-floating-receive-fixed' and which type of debt each hedges",
		"Treating speculative derivatives as fair-value-through-OCI when they are fair-value-through-earnings",
		"Forgetting that the hedged item in a fair value hedge has its carrying amount adjusted for changes attributable to the hedged risk (not just the derivative)",
		"Believing hedge accounting changes the cash flows of the hedge — it only changes when and where gains and losses are recognized",
		"Confusing a net investment hedge with a foreign currency cash flow hedge (net investment hedges the equity of a foreign operation, not a forecasted transaction)",
		"Treating the embedded derivative bifurcation criteria as a single test rather than three cumulative conditions",
		"Assuming all embedded derivatives must be bifurcated (only those failing the clearly-and-closely-related test, where the host is not at FV through earnings, and where a freestanding equivalent would be a derivative)",
		"Believing the simplified hedge accounting approach for private companies allows them to skip designation and documentation (it doesn't — it just simplifies effectiveness assessment)",
	],

	representativeDifficulty: "hard",

	bannedTerms: [
		{ term: "regression-based effectiveness", pattern: "regression[-\\s]based\\s+effectiveness", category: "effectiveness methodology", why: "Regression-based effectiveness testing — out of scope." },
		{ term: "dollar-offset method", pattern: "dollar[-\\s]offset\\s+method", category: "effectiveness methodology", why: "Dollar-offset method calculations — out of scope." },
		{ term: "hypothetical derivative", pattern: "hypothetical\\s+derivative\\s+method", category: "effectiveness methodology", why: "Hypothetical derivative method for measuring ineffectiveness — out of scope." },
		{ term: "critical terms match", pattern: "critical\\s+terms\\s+match\\s+method", category: "effectiveness methodology", why: "Critical terms match method beyond qualitative mention — out of scope." },
		{ term: "long-haul method", pattern: "long[-\\s]haul\\s+method", category: "effectiveness methodology", why: "Long-haul vs short-cut method quantitative comparisons — out of scope." },
		{ term: "80-125 range", pattern: "80[-\\s]?(?:to|–|-)\\s*125(?:\\s*percent)?\\s*range|80/125\\s*range", category: "effectiveness threshold", why: "The 80–125% effectiveness range beyond binary awareness — out of scope at quantitative depth." },
		{ term: "yield curve construction", pattern: "yield\\s+curve\\s+construction|bootstrap(?:ping)?\\s+(?:the\\s+)?zero\\s+rates?|forward\\s+rate\\s+derivation", category: "advanced pricing", why: "Yield curve construction for derivative valuation — out of scope." },
		{ term: "LIBOR SOFR transition", pattern: "LIBOR\\s+(?:to\\s+)?SOFR\\s+transition|SOFR\\s+transition|reference\\s+rate\\s+reform|ASU\\s+2020[-\\s]04|Topic\\s+848", category: "reference rate reform", why: "Reference rate reform / LIBOR-SOFR transition mechanics — out of scope." },
		{ term: "cross-currency swap", pattern: "cross[-\\s]currency\\s+swap\\s+(?:mechanics|decomposition|valuation)", category: "advanced instrument", why: "Cross-currency swap mechanics — out of scope." },
		{ term: "credit default swap", pattern: "credit[-\\s]default\\s+swap|\\bCDS\\b", category: "credit derivative", why: "Credit default swaps — out of scope." },
		{ term: "total return swap", pattern: "total[-\\s]return\\s+swap", category: "credit derivative", why: "Total return swaps — out of scope." },
		{ term: "credit-linked note", pattern: "credit[-\\s]linked\\s+note", category: "credit derivative", why: "Credit-linked notes — out of scope." },
		{ term: "variance swap", pattern: "variance\\s+swap|volatility\\s+swap", category: "exotic derivative", why: "Variance / volatility swaps — out of scope." },
		{ term: "weather derivative", pattern: "weather\\s+derivative|catastrophe\\s+bond", category: "exotic derivative", why: "Weather derivatives / catastrophe bonds — out of scope." },
		{ term: "CVA", pattern: "\\bCVA\\b|credit\\s+valuation\\s+adjustment", category: "counterparty risk", why: "Counterparty credit valuation adjustment — out of scope." },
		{ term: "DVA", pattern: "\\bDVA\\b|debit\\s+valuation\\s+adjustment", category: "counterparty risk", why: "Debit valuation adjustment — out of scope." },
		{ term: "FVA", pattern: "\\bFVA\\b|funding\\s+valuation\\s+adjustment", category: "counterparty risk", why: "Funding valuation adjustment — out of scope." },
		{ term: "ISDA Master", pattern: "ISDA\\s+Master\\s+Agreement|ISDA\\s+netting|netting\\s+opinion", category: "ISDA mechanics", why: "ISDA Master Agreement / netting mechanics — out of scope." },
		{ term: "variation margin", pattern: "variation\\s+margin\\s+posting|collateral\\s+posting\\s+calculation", category: "ISDA mechanics", why: "Collateral / variation margin posting — out of scope." },
		{ term: "day-1 P&L", pattern: "day[-\\s]1\\s+P&L|level[-\\s]3\\s+derivative\\s+valuation", category: "advanced valuation", why: "Day-1 P&L recognition for level-3 derivatives — out of scope." },
	],

	notes:
		"The single biggest editorial trap in this topic is the gap between ASC 815's volume and the AICPA's narrow representative tasks. ASC 815 has hundreds of pages on effectiveness assessment methodologies, hypothetical derivatives, long-haul vs short-cut, and quantitative ineffectiveness measurement — none of which the AICPA blueprint tests. New questions should focus on: (a) what is a derivative, (b) what is an embedded derivative that must be bifurcated, (c) does this hedge qualify for hedge accounting, (d) which type of hedge is this, (e) where do the gains and losses go (P&L vs OCI), (f) JE for an interest rate swap from given inputs. Effectiveness testing should appear only as 'highly effective' / 'expected to be highly effective' phrasing, not as a calculation. Distractors should test the P&L-vs-OCI confusion (the most common candidate failure) and the pay-fixed-vs-pay-floating swap mapping, not effectiveness math. Counterparty credit risk, ISDA mechanics, and exotic derivatives are FRM/CFA territory and must not appear.",
};
