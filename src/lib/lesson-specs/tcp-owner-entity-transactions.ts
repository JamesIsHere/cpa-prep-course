import type { LessonSpec } from "./types";

// Tenth authored spec. Slayer's "Owner-Entity Transactions" is a synthesized
// cross-cutting topic that spans several AICPA groups:
//
//   TCP/II/A/2  — Shareholder-C corp transactions (contributions, distributions,
//                 liquidations, loans with imputed interest)
//   TCP/II/B/2  — Shareholder-S corp transactions
//   TCP/II/C/3  — Partner-partnership transactions (services by partner,
//                 contributions, distributions)
//   TCP/III/D   — Tax planning for partnerships (guaranteed payments)
//   TCP/IV/C    — Related party transactions, including imputed interest
//
// Slayer's lesson 08-owner-entity teaches the thematic view: when an owner
// transacts with their own entity, the tax system applies special rules to
// prevent avoidance (imputed interest, reasonable compensation scrutiny,
// related-party loss disallowance, constructive dividends). The spec anchors
// primaryRef to TCP/IV/C because related-party transactions is the
// thematic backbone of the topic as Slayer teaches it; the inScope list
// deliberately pulls in the owner-transaction material from the other
// groups. Deep mechanics in any of the contributing areas belong to their
// home topics — formation mechanics live in C Corporations / S Corporations /
// Partnerships, basis mechanics live in Advanced Basis Calculations, and the
// entity-level distribution mechanics live in the entity-specific topics.
//
// Drift risks (priority order from the rollout handoff):
//   1. Economic substance doctrine beyond the concept (Sec 7701(o) codified
//      test at mechanics depth)
//   2. Section 302/303/304 redemption attribution webs (graduate corporate
//      tax — belongs to advanced C Corporations if anywhere, not here)
//   3. Section 318 attribution rules beyond the concept (family attribution
//      ordering, entity attribution reattribution, double attribution)
//
// Additional drift surfaces identified during authoring:
//   - Section 7872 below-market loan mechanics (AFR tables, compound
//     interest, demand vs. term loan distinction, de minimis exceptions,
//     compensation-related vs. gift loans)
//   - Section 267 loss disallowance mechanics (matching rule gain character)
//   - Section 704(b) partnership special allocations (Partnerships topic)
//   - Section 707(a)(2) partnership disguised sales (Partnerships topic)
//   - Section 752 partnership liabilities affecting basis (Advanced Basis)
//   - Section 1374 S corporation built-in gains tax (S Corporations topic)
//   - Self-employment tax computation mechanics (individual taxation topic)
//   - Reasonable compensation multi-factor case-law tests (Mulherin, Elliotts)

export const spec: LessonSpec = {
	topic: "Owner-Entity Transactions",
	section: "tcp",
	primaryRef: "TCP/IV/C",
	secondaryRefs: [],

	inScope: [
		"Guaranteed payments to partners at the concept level: payments to a partner for services rendered or capital provided without regard to partnership income; treated as ordinary income to the receiving partner; deductible by the partnership in computing ordinary business income; subject to self-employment tax in the partner's hands; reported separately on Schedule K-1",
		"Self-employment tax framework at the concept level for owner-entity income: partners pay SE tax on their distributive share of trade-or-business income plus guaranteed payments received; S corporation shareholders do NOT pay SE tax on pass-through income but DO pay payroll tax on reasonable wages paid by the S corporation for services rendered; sole proprietors pay SE tax on net earnings from self-employment",
		"Reasonable compensation concept as applied to owner-entity transactions: in a closely held C corporation, excessive compensation risks reclassification as a constructive (nondeductible) dividend; in an S corporation, inadequate compensation risks reclassification of distributions as wages subject to payroll tax; a partner's guaranteed payment must reflect genuine services or capital use, not a disguised distribution",
		"Related-party definitions under IRC Section 267 at the concept level: family members (spouse, ancestors, lineal descendants, brothers and sisters — whether whole or half blood); an individual and a corporation more than 50% owned directly or indirectly by that individual; two corporations that are members of the same controlled group; a partnership and a partner owning more than 50% of the partnership capital or profits",
		"Section 267 loss disallowance rule at the concept level: losses on sales or exchanges between related parties are disallowed; when the related transferee subsequently sells the asset to an unrelated third party, the previously disallowed loss can offset the transferee's gain (but only to the extent of gain, never creating a new loss)",
		"Imputed interest on below-market loans between related parties at the concept level: when an owner lends money to their entity (or vice versa) at a rate below the applicable federal rate, the tax law treats the transaction as if the stated interest had been paid at AFR and the difference had been transferred as compensation, dividend, gift, or capital contribution depending on the relationship; the concept of the imputed-interest adjustment, not the AFR computation",
		"Shareholder loans to corporation vs. capital contributions — the debt-vs-equity analysis at the concept level: a purported loan that lacks genuine debt characteristics (no repayment schedule, no interest, subordinated to other debt, contingent on profits) may be recharacterized as a capital contribution, with shareholder loan repayments recharacterized as dividends",
		"Constructive dividends concept as applied to owner-corporation transactions: corporate payments to or for the benefit of a shareholder that lack genuine business purpose may be recharacterized as dividends (bargain sales, shareholder personal use of corporate property, corporate payment of shareholder personal expenses, excessive compensation to shareholder-employees, below-market rentals between shareholder and corporation)",
		"Owner contributions of property to entity at the concept level: C corporation under Section 351 (80% control test, nonrecognition, boot treatment); S corporation under similar Sec 351 rules; partnership under Section 721 (generally nonrecognition, no control test); cross-reference that the full mechanics live in the entity-specific topics",
		"Owner distributions from entity at the concept level: C corporation distribution waterfall under Sec 301 (dividend to extent of E&P, then return of basis, then capital gain); S corporation distributions in the AAA / E&P framework at concept level (tax-free to extent of AAA, then C-corp-era E&P dividend, then return of basis, then capital gain); partnership distributions under Sec 731 (generally tax-free up to partner's outside basis, gain only when cash exceeds basis)",
		"Owner sale of interest to the entity (redemption) at the concept level: the distinction between sale treatment (qualifying redemption under Sec 302 gives capital gain/loss) and dividend treatment (a non-qualifying redemption is treated as a distribution up to E&P); the existence of the four Sec 302 safe harbors (substantially disproportionate, complete termination, not essentially equivalent to a dividend, partial liquidation) — the CATEGORIES only, not the percentage tests",
		"Owner sale of interest to a third party at the concept level: C corporation stock sale generally produces capital gain/loss to the shareholder; S corporation stock sale produces capital gain/loss subject to certain recharacterizations; partnership interest sale generally produces capital gain or loss with a hot-asset (Sec 751) ordinary-income carve-out concept",
		"Family attribution at the concept level for owner-entity transactions: stock owned by spouse, children, grandchildren, and parents is attributed to a taxpayer for purposes of applying related-party rules and redemption tests; the existence of attribution from entities (partnerships, corporations, estates, trusts) at the concept level",
		"Economic substance doctrine at the concept level under Sec 7701(o): a transaction must have both a substantive (non-tax) purpose and a meaningful change in economic position apart from its tax effects; the existence of the codified conjunctive test, not its mechanics or penalty structure",
		"Reporting and documentation of owner-entity loan transactions: the concept that loans between a shareholder and a closely held corporation require genuine loan documentation (promissory note, stated interest rate, repayment terms, collateral if commercially reasonable) to withstand IRS scrutiny; the concept that failure to document may lead to recharacterization",
	],

	outOfScope: [
		"Section 302 redemption safe harbor computation — the substantially disproportionate test (50% AND 80% mechanics with attribution), the not-essentially-equivalent test (meaningful reduction of interest), the partial liquidation corporate-contraction test",
		"Section 303 redemption to pay death taxes — the 35% of adjusted gross estate threshold, the eligible stock determination, the qualifying expense categories",
		"Section 304 brother-sister redemption rules — the deemed contribution-and-redemption framework, acquiring and issuing corporation attribution, E&P allocation",
		"Section 318 attribution rules beyond the concept of family and entity attribution — attribution chains and reattribution rules (the 'sideways' and 'double' attribution prohibitions), the rules for grantor trusts, beneficial ownership through partnerships and estates, option attribution",
		"Section 7872 below-market loan mechanics — the applicable federal rate tables (short-term, mid-term, long-term), compounding method, the $10,000 de minimis exception, the $100,000 de minimis for gift loans, demand loan vs. term loan distinction, compensation-related loan vs. gift loan vs. corporation-shareholder loan vs. tax-avoidance loan categories",
		"Applicable federal rate (AFR) computation, lookup, or application at mechanics depth — the monthly publication by the IRS, the short/mid/long-term distinction, the blended annual rate",
		"Section 267 matching rule mechanics — the character of gain when the related transferee subsequently sells to a third party, the interaction with installment sale rules, the attribution of prior ownership",
		"Economic substance doctrine mechanics under Sec 7701(o) and the strict-liability penalty under Sec 6662(b)(6) / 6662(i) — the 20% / 40% penalty structure for transactions lacking economic substance",
		"Section 704(b) partnership special allocation rules — substantial economic effect test, capital account maintenance, deficit restoration obligation, qualified income offset, minimum gain chargebacks (belongs to Partnerships topic)",
		"Section 704(c) built-in gain/loss allocation methods for contributed property — traditional method, curative method, remedial method (belongs to Partnerships topic)",
		"Section 707(a)(2) disguised sale rules — the two-year presumption, debt-financed distribution exception, qualified liability rules, preformation expenditures rules (belongs to Partnerships topic)",
		"Section 752 partnership liability allocation rules — recourse vs. nonrecourse classification, constructive liquidation analysis, economic risk of loss, three-tier nonrecourse allocation (belongs to Advanced Basis Calculations)",
		"Section 751 hot asset rules beyond the concept — the specific ordinary-income asset categories (unrealized receivables, substantially appreciated inventory), the ordinary-income portion computation on sale of partnership interest",
		"Section 1374 S corporation built-in gains tax — the five-year recognition period, the built-in gain computation, the net unrealized built-in gain tracking (belongs to S Corporations topic)",
		"S corporation accumulated adjustments account (AAA) mechanics beyond the concept — the specific adjustments to AAA, the ordering rules for distributions exceeding AAA, the interaction with accumulated E&P from C-corp years (belongs to S Corporations topic)",
		"Self-employment tax computation mechanics — the 15.3% combined rate (12.4% Social Security capped at the wage base, 2.9% Medicare, 0.9% Additional Medicare Tax on high earners), the 92.35% net earnings adjustment, the 50% self-employment tax deduction",
		"Reasonable compensation multi-factor case-law tests — the Mulherin factors, the Elliotts multi-factor test, the independent investor test, the Menard analysis, the hypothetical-investor test",
		"Constructive dividend case-law beyond the concept — the specific factors under which below-market loans, corporate payment of personal expenses, bargain purchases, and shareholder use of corporate property are recharacterized; the separation between loan-vs-dividend recharacterization and constructive distribution analysis",
		"Sec 7701(o) business purpose test applied to specific case law — the DAD/BOSS/SOS/son-of-BOSS shelters, Long Term Capital Holdings, Coltec",
		"Shareholder continuity of interest computations in reorganization contexts — this is M&A territory and belongs to any future corporate reorganization spec",
		"Step transaction doctrine as applied to multi-step owner-entity transactions beyond the general concept — the binding commitment test, mutual interdependence test, end-result test",
		"Accuracy-related penalties under Sec 6662 for transactions lacking economic substance",
	],

	keyStandards: [
		"IRC §267 — Losses, expenses, and interest with respect to transactions between related taxpayers",
		"IRC §707 — Transactions between partner and partnership (including guaranteed payments)",
		"IRC §7872 — Treatment of loans with below-market interest rates (concept)",
		"IRC §301 — Distributions of property (C corp waterfall)",
		"IRC §318 — Constructive ownership of stock (attribution, concept)",
		"IRC §7701(o) — Economic substance doctrine (concept)",
		"IRC §162(a)(1) — Reasonable compensation standard for deductibility",
		"IRC §351 — Corporate formation nonrecognition (concept, cross-reference to C Corporations)",
		"IRC §721 — Partnership formation nonrecognition (concept, cross-reference to Partnerships)",
		"IRC §731 — Partnership distribution gain recognition (concept)",
	],

	commonMisconceptions: [
		"Believing guaranteed payments to a partner are subject to employment tax withholding like wages. They are not. Partners are not employees for payroll tax purposes — a partner's guaranteed payments flow through as self-employment income reported on Schedule SE, and no FICA withholding is done by the partnership.",
		"Believing S corporation shareholder-employees can receive all compensation as distributions to avoid payroll tax. The IRS requires reasonable compensation for services; understatement of wages to an S-corp shareholder-employee risks reclassification of distributions as wages subject to payroll tax.",
		"Treating a disallowed Sec 267 loss as permanently lost. The disallowed loss can offset the related transferee's gain when they later sell to an unrelated party, but only up to the amount of that gain — the disallowed loss cannot create a new loss.",
		"Believing all loans between related parties automatically trigger imputed interest. The below-market loan rules apply only when the stated interest rate is below the applicable federal rate; a loan at or above AFR is not recharacterized.",
		"Confusing constructive dividend recharacterization with disallowance of a deduction. When compensation is determined to be unreasonable, the excess is nondeductible to the corporation AND treated as a dividend to the shareholder — the corporation loses the deduction and the shareholder loses the lower-wage treatment.",
		"Believing a purported loan from a shareholder to a corporation is always respected as debt. The IRS can recharacterize an advance as a capital contribution if the transaction lacks genuine debt characteristics (no fixed maturity, no commercially reasonable interest, no repayment history, subordination to other debt).",
		"Believing that contributions of property to a corporation under Section 351 can always be done tax-free. The control test (80%) must be met, services do not count as property, and boot received triggers gain recognition.",
		"Believing partnerships and shareholders of S corporations compute their self-employment tax the same way. Partnership distributive share is generally SE income; S corporation shareholder distributive share is not SE income (but reasonable wages are subject to payroll tax).",
		"Treating related-party sales at fair market value as immune from scrutiny. Even at arm's-length prices, related-party transactions are reviewed for loss disallowance, imputed interest, and constructive distribution treatment.",
		"Believing the economic substance doctrine is limited to tax shelters. The codified test under Sec 7701(o) applies to any transaction where its application is 'relevant' — a transaction must have both a non-tax business purpose AND a meaningful change in economic position.",
		"Confusing a partner's guaranteed payment with a preferred partnership distribution. A guaranteed payment is ordinary income subject to SE tax; a preferred distribution is part of the partner's distributive share allocated via Sec 704(b). The label on the partnership agreement does not determine tax treatment — the substance does.",
		"Believing a corporate redemption of a shareholder's stock is always treated as a sale. A redemption that fails the Sec 302 safe harbors is treated as a distribution (a dividend to the extent of E&P), not a sale.",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		{
			term: "Section 302(b)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)302\\s*\\(\\s*b\\s*\\)",
			category: "redemption mechanics",
			why: "Sec 302(b) subsection citations (substantially disproportionate 50%/80% tests, not-essentially-equivalent test) signal mechanics depth beyond the concept-level safe harbor category names. The category names themselves ('substantially disproportionate', 'not essentially equivalent') are in scope per the spec's inScope list.",
		},
		{
			term: "Section 303",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)303\\b",
			category: "redemption mechanics",
			why: "Section 303 redemption to pay death taxes — graduate estate/corporate tax, out of scope.",
		},
		{
			term: "Section 304",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)304\\b",
			category: "redemption mechanics",
			why: "Section 304 brother-sister redemption rules — graduate corporate tax, out of scope.",
		},
		{
			term: "Section 318(a)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)318\\s*\\(\\s*a\\s*\\)",
			category: "attribution mechanics",
			why: "Sec 318(a) subsection citations signal mechanics depth (specific attribution paragraph reference) beyond the concept of family and entity attribution. Bare 'Section 318' at concept level is acceptable.",
		},
		{
			term: "meaningful reduction",
			pattern: "meaningful\\s+reduction\\s+of\\s+(?:interest|stock\\s+ownership|shareholder)",
			category: "redemption mechanics",
			why: "Davis v. US 'meaningful reduction' test for Sec 302(b)(1) — case-law mechanics, out of scope.",
		},
		{
			term: "Section 7872",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)7872\\b",
			category: "below-market loan mechanics",
			why: "Section 7872 below-market loan mechanics (AFR rate tables, demand vs term loan distinction, compensation vs gift loan categories) beyond the concept of imputed interest — out of scope.",
		},
		{
			term: "Section 704(b)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)704\\s*\\(\\s*b\\s*\\)",
			category: "partnership mechanics",
			why: "Section 704(b) special allocation mechanics (substantial economic effect, capital account maintenance) belong to the Partnerships topic.",
		},
		{
			term: "Section 704(c)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)704\\s*\\(\\s*c\\s*\\)",
			category: "partnership mechanics",
			why: "Section 704(c) built-in gain/loss allocation mechanics (traditional, curative, remedial methods) belong to the Partnerships topic.",
		},
		{
			term: "substantial economic effect",
			pattern: "substantial\\s+economic\\s+effect",
			category: "partnership mechanics",
			why: "Section 704(b) substantial economic effect test — Partnerships topic.",
		},
		{
			term: "Section 707(a)(2)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)707\\s*\\(\\s*a\\s*\\)\\s*\\(\\s*2\\s*\\)",
			category: "partnership mechanics",
			why: "Section 707(a)(2) partnership disguised sale rules — Partnerships topic mechanics, out of scope.",
		},
		{
			term: "disguised sale",
			pattern: "disguised\\s+sale",
			category: "partnership mechanics",
			why: "Partnership disguised sale rules — Partnerships topic.",
		},
		{
			term: "Section 752",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)752\\b",
			category: "partnership mechanics",
			why: "Section 752 partnership liability allocation rules — Advanced Basis Calculations topic.",
		},
		{
			term: "Section 751",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)751\\b",
			category: "partnership mechanics",
			why: "Section 751 hot asset rules beyond the concept — Partnerships topic mechanics.",
		},
		{
			term: "hot assets",
			pattern: "hot\\s+assets?",
			category: "partnership mechanics",
			why: "Hot assets / unrealized receivables under Sec 751 at mechanics depth — Partnerships topic.",
		},
		{
			term: "Section 1374",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1374\\b",
			category: "S corp mechanics",
			why: "Section 1374 S corporation built-in gains tax — S Corporations topic.",
		},
		{
			term: "built-in gains tax",
			pattern: "built[-\\s]in\\s+gains\\s+tax",
			category: "S corp mechanics",
			why: "S corporation BIG tax mechanics — S Corporations topic.",
		},
		{
			term: "AAA mechanics",
			pattern: "accumulated\\s+adjustments\\s+account",
			category: "S corp mechanics",
			why: "S corporation AAA mechanics beyond the concept — S Corporations topic.",
		},
		{
			term: "Section 7701(o)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)7701\\s*\\(\\s*o\\s*\\)",
			category: "economic substance mechanics",
			why: "Section 7701(o) codified economic substance doctrine mechanics — concept-only is in scope; mechanics depth is out.",
		},
		{
			term: "Section 6662",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)6662\\b",
			category: "penalty mechanics",
			why: "Section 6662 accuracy-related penalties including the strict-liability economic substance penalty — penalty mechanics, out of scope.",
		},
		{
			term: "Mulherin",
			pattern: "\\bMulherin\\b",
			category: "case law",
			why: "Mulherin multi-factor reasonable compensation test — case-law depth, out of scope. The concept of reasonable compensation is in scope.",
		},
		{
			term: "Elliotts factors",
			pattern: "Elliotts?\\s+(?:factors|test)",
			category: "case law",
			why: "Elliotts multi-factor test for reasonable compensation — case-law depth, out of scope.",
		},
		{
			term: "independent investor test",
			pattern: "independent\\s+investor\\s+test",
			category: "case law",
			why: "Independent investor test for reasonable compensation (Dexsil/Exacto) — case-law depth, out of scope.",
		},
		{
			term: "Section 1402",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1402\\b",
			category: "SE tax mechanics",
			why: "Section 1402 self-employment tax computation mechanics — concept is in scope; mechanics depth (15.3% rate, wage base, 92.35% adjustment, 50% deduction) is out.",
		},
		{
			term: "Section 1401",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1401\\b",
			category: "SE tax mechanics",
			why: "Section 1401 self-employment tax rate mechanics — out of scope.",
		},
		{
			term: "qualified income offset",
			pattern: "qualified\\s+income\\s+offset",
			category: "partnership mechanics",
			why: "Section 704(b) QIO provision — Partnerships topic.",
		},
		{
			term: "minimum gain chargeback",
			pattern: "minimum\\s+gain\\s+chargeback",
			category: "partnership mechanics",
			why: "Section 704(b) minimum gain chargeback — Partnerships topic.",
		},
	],

	notes:
		"Owner-Entity Transactions is a thematic topic, not an AICPA group. Slayer teaches it as a cross-cutting unit (lesson 08-owner-entity) covering guaranteed payments, reasonable compensation, related-party loss disallowance, imputed interest on related-party loans, owner contributions and distributions with respect to C corps, S corps, and partnerships, and the economic substance doctrine. The spec anchors to TCP/IV/C ('Related party transactions, including imputed interest') because related-party transactions is the thematic backbone, but the inScope list pulls together material that AICPA places in TCP/II/A/2, TCP/II/B/2, TCP/II/C/3, TCP/III/D, and TCP/IV/C. Deep mechanics in any contributing area belong to their home topics — the formation and redemption mechanics live in C Corporations / S Corporations / Partnerships, the basis mechanics live in Advanced Basis Calculations, and the entity-level distribution mechanics live in the entity-specific topics. The drift surface here is narrower than C Corporations because the spec deliberately stays at the thematic concept level and rejects mechanics depth in any contributing area.",
};
