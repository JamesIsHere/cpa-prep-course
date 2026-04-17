import type { LessonSpec } from "./types";

// Twenty-second authored spec — fifth spec of Stage 3. Selected from
// the Stage 2 drift census v2 as rank #2: 52 questions, 26 flagged
// (50.0%) — all 26 on `Section 163(j)`, a term that other TCP entity
// tax planning specs (C Corps, Partnerships) legitimately push
// elsewhere because business interest limitation is its own coherent
// planning topic. §163(j) IS the core of capital structure tax
// planning together with debt/equity classification and §385, so this
// spec is the rightful-owner counterpart that whitelists the entire
// flag set on authoring.
//
// ## Anchor
//
// AICPA 2026 Blueprint TCP/III "Entity Tax Planning" has four groups:
//   A — Formation and liquidation of business entities
//   B — Tax planning for C corporations
//   C — Tax planning for S corporations
//   D — Tax planning for partnerships
//
// There is no dedicated "capital structure" group in the TCP blueprint
// (the scaffolder invented `TCP/III/C "Capital structure optimization"`
// as a Slayer-specific label — that slot is actually S corp tax
// planning). The Slayer lesson `13-capital-structure-tax.mdx` treats
// debt/equity classification, §385, thin capitalization, and §163(j)
// business interest limitation as a single integrated entity-level tax
// planning unit that cuts across C corps (primary), S corps, and
// partnerships (allocation and partner-level tracking). Anchoring at
// area-level TCP/III with explicit cross-references to TCP/III/B
// (primary — most §163(j) testing is C corp), TCP/III/C (S corp-level
// tracking), and TCP/III/D (partnership allocation to partners).
//
// ## Scope line
//
// This topic owns the debt-vs-equity classification multi-factor test
// for federal tax purposes, §385 documentation and recharacterization
// regulations for related-party debt, thin capitalization as a
// substance-over-form concept, and §163(j) business interest expense
// limitation at AICPA depth — the 30% of ATI formula, ATI computation
// on an EBIT basis (post-2021 transition), small business exception
// via the $30 million gross receipts test with controlled-group
// aggregation, real property trade-or-business and farming-business
// elections (with the ADS depreciation trade-off), indefinite
// carryforward of disallowed interest, and the entity-level
// differences in carryforward tracking (C corp tracks at entity level,
// S corp tracks at corporate level, partnership allocates to partners).
//
// Not this topic: BAR corporate-finance capital structure theory
// (WACC, Modigliani-Miller theorems, CAPM, EVA, optimal capital
// structure at a finance-theory level — those belong to BAR Capital
// Structure and Valuation), §108 cancellation-of-debt income at depth
// (separate bankruptcy/insolvency topic if specced), §382 NOL
// limitation mechanics at depth (separate NOL topic), §267/§7872
// below-market loan imputed interest mechanics at depth (Related Party
// Transactions or Individual Tax Interest Income territory), and
// specific country thin-capitalization statutory ratios (international
// tax topic).

export const spec: LessonSpec = {
	topic: "Capital Structure Tax Planning",
	section: "tcp",
	blueprintRef: "TCP/III/B",

	inScope: [
		"The federal tax distinction between debt and equity: interest payments on debt are generally deductible by the payor whereas dividend distributions on equity are not — this creates a fundamental tax incentive to structure financing as debt. Interest income to the holder is ordinary income taxed at full rates; dividend income to the holder may qualify for preferential qualified-dividend rates.",
		"The multi-factor debt vs equity classification test applied by courts and the IRS on a facts-and-circumstances basis. Factors weighing toward debt classification include: fixed maturity date with reasonable term, unconditional obligation to repay principal, fixed or market-rate interest, creditor remedies and security, reasonable debt-to-equity ratio, source of repayment from operating cash flows, and formal documentation (loan agreement, promissory note, booking as debt on the payor's books). Factors weighing toward equity include: no maturity or contingent repayment, returns varying with earnings, subordination to all other claims, disproportionate debt held in the same ratio as stock ownership, thin capitalization, and informal documentation.",
		"The proportionality factor as a frequently-tested indicator: when shareholders hold debt in the same proportion as their stock ownership (e.g., 50/50 shareholders who also hold 50/50 of the corporate notes), courts are more likely to recharacterize the debt as disguised equity.",
		"Tax consequences of debt-to-equity reclassification by the IRS: previously claimed interest deductions by the corporation are disallowed and the payments are reclassified as nondeductible dividend distributions. The holder's interest income is reclassified as dividend income. Repayment of principal is reclassified as a stock redemption subject to §302 constructive dividend analysis. Withholding obligations for foreign payees may change.",
		"Section 385 authorizing Treasury to issue regulations distinguishing debt from equity for federal tax purposes. Current §385 regulations target related-party debt and impose documentation requirements and automatic recharacterization rules for specified related-party transactions.",
		"§385 documentation requirements (Reg. §1.385-2) for related-party debt to be respected as debt: a written unconditional obligation to pay a fixed or determinable sum, creditor's rights to enforce payment, a reasonable expectation of repayment based on the borrower's financial condition at issuance, and evidence of actual payments consistent with the instrument's terms. Failure to maintain this documentation creates a rebuttable presumption of equity.",
		"§385 recharacterization rules (Reg. §1.385-3): certain related-party debt is automatically recharacterized as equity if issued in connection with a distribution to a shareholder, an acquisition of affiliate stock, or (under the funding rule) issued within 72 months of such a transaction. The $50 million threshold exemption for expanded groups with total related-party debt below that level.",
		"The thin capitalization concept: an excessive ratio of debt to equity suggests the debt is disguised equity. The US has no statutory thin cap ratio but case law commonly cites 3:1 or 4:1 as raising IRS scrutiny. Indicators include inside debt held in proportion to equity, inability to obtain similar third-party financing at arm's length, and no sinking fund or repayment schedule observed in practice.",
		"Section 163(j) business interest expense limitation core rule: for tax years beginning after December 31, 2017, the deduction for business interest expense is limited to the sum of (a) business interest income, (b) 30% of adjusted taxable income (ATI), and (c) floor plan financing interest (auto dealers). Disallowed business interest carries forward indefinitely and is treated as business interest paid or accrued in the succeeding tax year, subject to the same limitation each year.",
		"Adjusted taxable income (ATI) computation starting with taxable income and adjusting: add back business interest expense, subtract business interest income, add back net operating loss deduction, and add back Section 199A deduction. For tax years beginning before 2022 (EBITDA basis), depreciation, amortization, and depletion were also added back; starting in 2022 (EBIT basis), depreciation and amortization are NOT added back, making the limitation more restrictive for capital-intensive businesses.",
		"The EBITDA-to-EBIT ATI transition as a frequently-tested high-value point. A capital-intensive business comfortably within the 163(j) limit under the pre-2022 EBITDA rules may find itself with significant disallowed interest under the post-2022 EBIT rules. Candidates should identify which period a fact pattern references.",
		"The §163(j) small business exception via the gross receipts test: taxpayers with average annual gross receipts of $30 million or less for the three prior tax years (inflation-adjusted) are not subject to the limitation. All members of a controlled group or affiliated group are treated as a single employer for the aggregation test. Tax shelter businesses are ineligible for the exception regardless of gross receipts.",
		"The real property trade or business election out of §163(j) — the business is no longer subject to the limitation but must use ADS depreciation for nonresidential real property (40-year recovery), residential rental property (30-year recovery), and qualified improvement property (20-year recovery). The election is irrevocable once made.",
		"The farming business election out of §163(j) — similar mechanics, requiring ADS depreciation for property with a recovery period of 10 years or more. The election is irrevocable once made.",
		"The trade-off analysis for electing out: full interest deductibility in exchange for slower depreciation under ADS. A capital-intensive business with significant interest expense may benefit from the election; a real estate business with high leverage often does. The election is modeled by comparing the present value of deducting all interest currently against the present value of delayed depreciation recovery.",
		"§163(j) indefinite carryforward mechanics: disallowed business interest becomes business interest expense in the succeeding year, subject to the same 30% ATI limitation in that year. Upon a taxpayer's death, any unused carryforward is lost — there is no step-up or transfer. In corporate acquisitions, §382 may limit the acquired corporation's interest expense carryforwards.",
		"Entity-level differences in §163(j) tracking: C corporations compute and track the limitation at the entity level. S corporations track at the corporate level. Partnerships apply the limitation at the partnership level but allocate disallowed interest to partners, who then track the excess business interest expense at the partner level — the partnership does not carry forward the disallowance, the partner does.",
		"Integration of §163(j) into capital structure planning: modeling the 30% ATI threshold before issuing new debt, timing capital expenditures to manage ATI, evaluating the real property election for real estate-intensive businesses, avoiding related-party debt that would trigger §385 recharacterization, and considering entity type because of the different tracking rules.",
		"The interaction between debt/equity classification and §163(j): if the IRS reclassifies debt as equity, the interest deduction is disallowed as an equity distribution regardless of the 30% ATI limitation — these are two distinct disallowance mechanisms stacked on top of each other. §163(j) applies only to amounts properly characterized as interest.",
	],

	outOfScope: [
		"BAR corporate-finance capital structure theory at finance-textbook depth — Modigliani-Miller irrelevance theorems (with and without taxes, including bankruptcy costs), weighted average cost of capital (WACC) computation and optimization, CAPM, pecking order theory, trade-off theory of optimal capital structure, Miller equilibrium, cost of equity estimation. These belong to BAR Capital Structure and Valuation",
		"Economic value added (EVA), market value added (MVA), return on invested capital (ROIC) as capital structure performance measures — BAR Financial Statement Analysis and BAR Capital Structure and Valuation territory",
		"§108 cancellation-of-debt (COD) income at depth — insolvency and bankruptcy exclusions, qualified real property indebtedness reduction, qualified principal residence indebtedness exclusion, tax attribute reduction ordering, stock-for-debt exchanges under §108(e)(8), debt modification principles under Reg. §1.1001-3. These are separate bankruptcy/insolvency and debt-workout tax topics",
		"§382 NOL and tax attribute limitation mechanics at depth — ownership change computation (5% shareholder tracking), §382 limitation = value of old loss corporation × long-term tax-exempt rate, built-in gain and built-in loss adjustments, §383 credit carryover limitation. §163(j) interest carryforwards ARE mentioned here as subject to §382 at the concept level, but the §382 mechanics themselves belong to a separate NOL/tax attributes topic",
		"Below-market loan and imputed interest mechanics at depth — §7872 applicable federal rate (AFR) computation and short-/mid-/long-term tier selection, imputed interest on gift loans vs compensation loans vs corporation-shareholder loans, the $10,000 de minimis exception details, deemed distribution and reconstruction mechanics at the full §7872 regulatory depth. Related Party Transactions territory",
		"Original issue discount (OID) mechanics at depth — §1272 accrual of OID using the constant yield method, §1273 computation of OID, stripped bond rules under §1286, tax treatment of zero-coupon instruments. Investment-income or bond tax accounting territory",
		"§163(h) personal / qualified residence interest rules — home mortgage interest deduction limits ($750,000 acquisition indebtedness cap, $100,000 home equity debt that is now suspended through 2025), investment interest expense limitation under §163(d). These are individual-tax deduction topics, not entity-level capital structure",
		"International thin capitalization statutory rules — foreign country fixed debt-to-equity ratios (e.g., 2:1 Japan, 3:1 Germany), §163(j) earnings stripping pre-2018 (pre-TCJA version limited deductions to 50% of ATI and applied only to related-party debt with inadequate interest coverage), BEAT (base erosion and anti-abuse tax) mechanics, interaction with §267A hybrid payment rules. International Tax territory",
		"Detailed allocation of interest expense among business and investment uses under Notice 89-35 / Reg. §1.163-8T — the interest tracing rules for allocating debt to business vs investment vs passive activity vs personal use categories. Adjacent concept but not the core §163(j) limitation content",
		"Original preamble material on §385 from the 2016 proposed regulations — the withdrawn per se stock rule, the 2018 Notice 2018-15 withdrawal of the documentation rules for periods before January 1, 2019, the 2019 final regulations on certain expanded group rules. Current §385 regulations at concept level are in scope; historical regulatory evolution is not",
		"SEC accounting and reporting for debt vs equity classification — mandatorily redeemable preferred stock under ASC 480, contingent conversion features under ASC 815, convertible debt with beneficial conversion features, the SEC's temporary equity 'mezzanine' presentation. Fair Value / Debt and Equity Financial Reporting territory",
		"ASC 470 debt issuance accounting at depth — effective interest method for debt discount/premium amortization, troubled debt restructuring, extinguishment vs modification accounting, fair value option under ASC 825. FAR Debt topic territory",
		"Corporate governance aspects of capital structure decisions — fiduciary duties in leveraged recapitalizations, LBO conflicts of interest, dual-class share structures. Adjacent business-law territory, not TCP content",
		"Partnership §704(b) substantial economic effect regulations at depth — capital account maintenance rules, qualified income offset, minimum gain chargeback for partnerships with nonrecourse debt. Those allocation mechanics belong to Partnerships (REG) or Advanced Basis Calculations (TCP) specs",
	],

	keyStandards: [
		"IRC §163(j) — Limitation on business interest",
		"IRC §385 — Treatment of certain interests in corporations as stock or indebtedness",
		"Reg. §1.385-2 — Treatment of indebtedness among related parties (documentation rules)",
		"Reg. §1.385-3 — Treatment of indebtedness among related parties (recharacterization rules)",
		"IRC §163(h) — Disallowance of deduction for personal interest (referenced only to distinguish from business interest)",
		"IRC §172 — Net operating loss deduction (referenced for ATI add-back)",
		"IRC §199A — Qualified business income deduction (referenced for ATI add-back)",
		"Reg. §1.163(j)-1 through -11 — §163(j) implementing regulations",
	],

	commonMisconceptions: [
		"Believing that §385 documentation requirements apply to all debt. The §385 documentation rules apply only to related-party debt. Third-party arm's-length debt is not subject to these documentation requirements, though it can still be recharacterized as equity under general substance-over-form principles if it lacks debt characteristics.",
		"Thinking the §163(j) ATI computation includes the business interest deduction. ATI is computed BEFORE the business interest deduction — business interest expense is added back to taxable income as the first adjustment. The limitation is then applied to the resulting ATI to determine how much interest is actually deductible.",
		"Conflating the pre-2022 EBITDA basis with the post-2022 EBIT basis. Pre-2022, depreciation and amortization were added back to ATI, making the 30% threshold more generous. Post-2022, depreciation and amortization are NOT added back, making the limitation more restrictive — especially for capital-intensive businesses. The EBIT transition is a high-value testing point.",
		"Assuming §163(j) applies to all taxpayers. The small business exception via the $30 million average gross receipts test exempts many smaller businesses. Controlled group aggregation applies for the test — related companies cannot split to stay under the threshold. Tax shelter businesses are ineligible regardless of size.",
		"Treating the real property election as a free lunch. Electing out of §163(j) requires mandatory use of ADS depreciation for nonresidential real property (40 years), residential rental property (30 years), and qualified improvement property (20 years). The trade-off is full interest deductibility vs slower cost recovery — the election is irrevocable and the depreciation penalty is permanent.",
		"Believing disallowed §163(j) interest is permanently lost. It carries forward INDEFINITELY and is treated as business interest expense paid or accrued in the succeeding year, subject to the limitation again each year. The carryforward is lost only upon the taxpayer's death (no step-up or transfer) or upon an ownership change under §382 (where §382 may limit its use).",
		"Confusing the entity-level tracking rules. C corps track the carryforward at the entity level. S corps track at the corporate level. Partnerships apply the limitation at the partnership level but allocate the disallowed interest — called excess business interest expense (EBIE) — to the partners, who track the carryforward at the partner level. The partnership does NOT carry the disallowance forward; the partner does.",
		"Thinking a disproportionate debt holding by shareholders is the only indicator of disguised equity. Courts use a multi-factor test — proportionality is one important factor but no single factor is determinative. Other factors include fixed maturity, unconditional repayment obligation, market-rate interest, creditor remedies, debt-to-equity ratio, and formal documentation.",
		"Believing §385 recharacterization applies broadly to related-party debt. The §385 automatic recharacterization rules apply to specific triggering transactions (distributions, affiliate stock acquisitions, funding transactions within 72 months) and to expanded groups with more than $50 million in related-party debt. Ordinary related-party debt that does not trigger these rules is evaluated under the general multi-factor test.",
		"Assuming the §163(j) limitation applies to investment interest. §163(j) applies to BUSINESS interest expense — interest on debt allocable to a trade or business. Investment interest expense is separately limited under §163(d) and is not part of §163(j). The allocation between business and investment interest uses §1.163-8T interest tracing rules.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		// --- Corporate finance theory (BAR territory) ---
		{
			term: "WACC",
			pattern: "\\bWACC\\b|weighted\\s+average\\s+cost\\s+of\\s+capital",
			category: "corporate finance theory",
			why: "Weighted average cost of capital — BAR Capital Structure and Valuation territory. Capital Structure Tax Planning addresses federal tax consequences of financing choices, not corporate-finance theoretical optimality.",
		},
		{
			term: "Modigliani-Miller",
			pattern: "Modigliani[-\\s]Miller|\\bM&M\\s+theorem|\\bM-M\\s+theorem",
			category: "corporate finance theory",
			why: "Modigliani-Miller capital structure irrelevance theorems — BAR capital structure theory, out of scope for tax planning.",
		},
		{
			term: "CAPM",
			pattern: "\\bCAPM\\b|capital\\s+asset\\s+pricing\\s+model",
			category: "corporate finance theory",
			why: "Capital Asset Pricing Model — BAR Financial Valuation Methods territory, not tax content.",
		},
		{
			term: "EVA",
			pattern: "\\bEVA\\b|economic\\s+value\\s+added",
			category: "corporate finance theory",
			why: "Economic Value Added — BAR performance measurement metric, not tax content.",
		},
		{
			term: "pecking order theory",
			pattern: "pecking\\s+order\\s+theory",
			category: "corporate finance theory",
			why: "Pecking order theory of capital structure — finance theory, not tax content.",
		},
		{
			term: "trade-off theory",
			pattern: "trade[-\\s]off\\s+theory\\s+of\\s+capital\\s+structure",
			category: "corporate finance theory",
			why: "Trade-off theory of optimal capital structure — finance theory, not tax content.",
		},
		{
			term: "Miller equilibrium",
			pattern: "Miller\\s+equilibrium",
			category: "corporate finance theory",
			why: "Miller equilibrium — advanced finance theory, out of scope.",
		},

		// --- §108 COD income ---
		{
			term: "Section 108",
			pattern: "Section\\s*108\\b|\\bIRC\\s*108\\b|§\\s*108\\b",
			category: "COD income",
			why: "§108 cancellation-of-debt income — separate bankruptcy/insolvency tax topic, not capital structure tax planning.",
		},
		{
			term: "cancellation of debt",
			pattern: "cancellation\\s+of\\s+debt|cancellation[-\\s]of[-\\s]debt\\s+income|\\bCOD\\s+income\\b",
			category: "COD income",
			why: "Cancellation-of-debt income mechanics — §108 territory, separate topic.",
		},
		{
			term: "qualified real property indebtedness",
			pattern: "qualified\\s+real\\s+property\\s+indebtedness",
			category: "COD income",
			why: "§108(c) qualified real property indebtedness exclusion — COD income depth, out of scope.",
		},

		// --- §382 NOL limitation mechanics (depth indicators only;
		// concept-level §382 reference is in scope for §163(j) carryforward
		// interaction) ---
		{
			term: "long-term tax-exempt rate",
			pattern: "long[-\\s]term\\s+tax[-\\s]exempt\\s+rate",
			category: "§382 mechanics",
			why: "§382 limitation uses the long-term tax-exempt rate — §382 mechanics depth, out of scope.",
		},
		{
			term: "5-percent shareholder",
			pattern: "5[-\\s]?percent\\s+shareholder|5%\\s+shareholder",
			category: "§382 mechanics",
			why: "§382 ownership change testing via 5% shareholder tracking — §382 mechanics depth.",
		},
		{
			term: "§382 testing period",
			pattern: "(Section\\s*382|§\\s*382)\\s+testing\\s+period|testing\\s+period\\s+under\\s+(Section|§)\\s*382",
			category: "§382 mechanics",
			why: "§382 three-year testing period mechanics — depth, out of scope.",
		},
		{
			term: "built-in gain",
			pattern: "built[-\\s]in\\s+gain\\s+adjustment|recognized\\s+built[-\\s]in\\s+gain",
			category: "§382 mechanics",
			why: "§382 built-in gain and recognition period adjustments — §382 depth.",
		},

		// --- §7872 below-market loan mechanics ---
		{
			term: "Section 7872",
			pattern: "Section\\s*7872|§\\s*7872",
			category: "§7872 mechanics",
			why: "§7872 below-market loan imputed interest mechanics — Related Party Transactions or Individual Tax territory at depth. The concept that below-market related-party rates may trigger recharacterization is in scope; §7872 mechanics are not.",
		},

		// --- OID depth ---
		{
			term: "original issue discount",
			pattern: "original\\s+issue\\s+discount|\\bOID\\s+accrual|constant\\s+yield\\s+method",
			category: "OID mechanics",
			why: "Original issue discount accrual mechanics under §1272/§1273 — bond tax accounting territory, out of scope.",
		},

		// --- BEAT / international ---
		{
			term: "BEAT",
			pattern: "\\bBEAT\\b|base\\s+erosion\\s+and\\s+anti[-\\s]abuse\\s+tax",
			category: "international tax",
			why: "Base Erosion and Anti-Abuse Tax — international tax territory (TCP International Tax spec).",
		},
		{
			term: "Section 267A",
			pattern: "Section\\s*267A|§\\s*267A",
			category: "international tax",
			why: "§267A hybrid payment disallowance — international tax territory.",
		},
		{
			term: "earnings stripping",
			pattern: "earnings\\s+stripping",
			category: "pre-TCJA §163(j)",
			why: "Pre-TCJA §163(j) earnings stripping rules (50% ATI cap, related-party debt only) — historical pre-2018 rules, out of scope. Current §163(j) as enacted by TCJA is in scope.",
		},

		// --- ASC 480 / 470 debt accounting ---
		{
			term: "ASC 480",
			pattern: "\\bASC\\s*480\\b",
			category: "GAAP debt classification",
			why: "ASC 480 distinguishing liabilities from equity — FAR financial reporting territory, not tax classification.",
		},
		{
			term: "ASC 470",
			pattern: "\\bASC\\s*470\\b",
			category: "GAAP debt accounting",
			why: "ASC 470 debt accounting — FAR territory, not tax content.",
		},
		{
			term: "mandatorily redeemable preferred",
			pattern: "mandatorily\\s+redeemable\\s+preferred",
			category: "GAAP debt classification",
			why: "Mandatorily redeemable preferred stock classification under ASC 480 — FAR territory.",
		},
		{
			term: "beneficial conversion feature",
			pattern: "beneficial\\s+conversion\\s+feature",
			category: "GAAP debt accounting",
			why: "Convertible debt beneficial conversion feature under ASC 470-20 — FAR territory.",
		},

		// --- Investment interest / personal interest ---
		{
			term: "Section 163(d)",
			pattern: "Section\\s*163\\(d\\)|§\\s*163\\(d\\)",
			category: "individual tax",
			why: "§163(d) investment interest limitation — individual tax deduction topic. §163(j) business interest is the scope here.",
		},
		{
			term: "qualified residence interest",
			pattern: "qualified\\s+residence\\s+interest",
			category: "individual tax",
			why: "§163(h) qualified residence (home mortgage) interest — individual tax deduction topic.",
		},
	],

	notes:
		"Capital Structure Tax Planning is the TCP entity-tax-planning topic covering the debt-vs-equity classification multi-factor test, §385 documentation and recharacterization rules for related-party debt, thin capitalization as a substance-over-form concept, and §163(j) business interest expense limitation at AICPA depth. The Stage 2 drift census v2 flagged 26/52 questions at 50.0% — all on `Section 163(j)` — and the entire flag set should whitelist on authoring because §163(j) IS the core of this topic. Anchored at area-level TCP/III (Entity Tax Planning) because there is no dedicated AICPA group for capital structure (the scaffolder mis-labeled TCP/III/C as 'Capital structure optimization' but that slot is actually S corp tax planning). Content legitimately cuts across TCP/III/B (C corps primary — most §163(j) testing is C corp), TCP/III/C (S corp-level tracking), and TCP/III/D (partnership allocation of disallowed interest to partners). The line this spec holds: federal tax treatment of debt vs equity, §385 mechanics, thin cap concept, and §163(j) at current-law depth (TCJA post-2018 rules with EBIT-basis ATI from 2022 forward, small business exception at $30M, real property and farming elections, indefinite carryforward, entity-level tracking differences). Out of scope: BAR corporate-finance capital structure theory (WACC, Modigliani-Miller, CAPM, EVA, pecking order, trade-off theory), §108 COD income at depth, §382 mechanics at depth, §7872 below-market loan mechanics at depth, OID accrual mechanics, BEAT / §267A / earnings stripping (pre-TCJA §163(j)), ASC 480 / 470 GAAP debt classification and accounting, §163(d) investment interest, and §163(h) personal-residence interest.",
};
