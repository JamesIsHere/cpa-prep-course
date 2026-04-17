import type { LessonSpec } from "./types";

// Ninth authored spec. Slayer's "C Corporations" topic is a hybrid: it spans
// REG/V/B (C corporation taxable-income computation, NOL/capital loss,
// credits, state and local concept) AND portions of TCP/II/A/2 (shareholder-
// corporation transactions — contributions under Sec 351, nonliquidating and
// liquidating distributions, E&P waterfall). This reflects the pedagogical
// reality that Slayer teaches formation → taxable income → distributions as
// one integrated unit in lesson 11-c-corporations, even though AICPA splits
// the foundational computation (REG) from the advanced planning material
// (TCP). Because the REG side is the anchor, the primaryRef uses the
// group-level REG/V/B reference; the spec's inScope list explicitly calls
// out the TCP-cross-over topics so the resolver sees them as intended scope.
//
// Drift surfaces (priority order from the rollout handoff):
//   1. Sec 338 / 338(h)(10) deemed-asset-sale elections (graduate M&A)
//   2. Sec 355 spin-off mechanics (device test, continuity of interest,
//      five-year active trade or business, Morris Trust)
//   3. Sec 1202 QSBS exclusion mechanics (TCP-level wealth planning)
//   4. Sec 368 reorganization type taxonomy (Type A through Type G) and
//      the judicial continuity tests
//   5. Sec 382 NOL ownership-change limitation (TCP territory — already
//      owned by the Entity Tax Compliance: NOLs topic, not here)
//   6. Consolidated return mechanics beyond the bare concept (SRLY rules,
//      excess loss account, matching rule, acceleration rule)
//   7. AET/PHC mechanics beyond the concept (detailed Sec 531/541
//      computation, accumulated earnings credit, adjusted ordinary gross
//      income, PHC income categories)
//   8. Corporate AMT under the TCJA 15% CAMT regime beyond its existence
//
// The line held by this spec is: a question can test Slayer's integrated
// C-corp teaching at the REG depth (Sec 351 formation concepts, taxable
// income computation with DRD/NOL/charitable/capital-loss rules,
// distribution waterfall through E&P, concept-level AET/PHC), but it cannot
// drift into graduate M&A, advanced corporate reorganization taxonomy, or
// consolidated-return elections beyond bare filing requirements.

export const spec: LessonSpec = {
	topic: "C Corporations",
	section: "reg",
	primaryRef: "REG/V/B",
	secondaryRefs: [],

	inScope: [
		"Section 351 nonrecognition on formation: the three requirements (property transferred to the corporation, in exchange for stock, transferor(s) in control immediately after — 80% of voting power AND 80% of each class of nonvoting stock); services do not count as property toward the control test",
		"Boot in a Section 351 transfer: gain is recognized to the extent of boot received but not in excess of realized gain; loss is never recognized in a Section 351 exchange",
		"Shareholder's basis in stock received: carryover basis from property transferred, minus boot received, plus gain recognized, minus liabilities assumed by the corporation",
		"Corporation's basis in property received: transferor's adjusted basis plus any gain recognized by the transferor",
		"Assumption of liabilities concept under Sec 357: liabilities assumed are generally not treated as boot, but liabilities in excess of basis trigger gain recognition; tax-avoidance-motivated liabilities are treated as boot",
		"Corporate taxable income computation: gross income less ordinary and necessary business deductions, at the flat 21% tax rate under current law; filing on Form 1120",
		"Corporate charitable contribution deduction limitation: 10% of taxable income computed before the charitable deduction, the dividends received deduction, NOL carrybacks, and capital loss carrybacks; 5-year carryforward for excess contributions",
		"Dividends received deduction (DRD) tiers and computation: 50% for less than 20% ownership, 65% for 20% to less than 80%, 100% for 80% or more (affiliated group); taxable income limitation applied at the same percentage; the limitation is suspended when the DRD creates or increases an NOL",
		"C corporation NOL rules at the foundational level: post-2017 NOLs carry forward indefinitely; 80%-of-taxable-income deduction limitation in the carryforward year; no carryback for post-2017 NOLs generally",
		"C corporation capital loss rules: corporations can only offset capital gains (not ordinary income); 3-year carryback and 5-year carryforward; all carried losses treated as short-term",
		"General business credit concept: credits reduce tax dollar-for-dollar; overall limitation against tax; carryback 1 year, carryforward 20 years",
		"Earnings and profits (E&P) at the concept level: similar to taxable income with specific adjustments (e.g., add back tax-exempt interest and excess of accelerated depreciation, subtract federal income tax paid); the distinction between current E&P (measured at year-end) and accumulated E&P (cumulative)",
		"Section 301 distribution waterfall: a distribution is a dividend to the extent of current E&P first, then accumulated E&P; then tax-free return of capital up to stock basis; then capital gain to the extent the distribution exceeds basis",
		"Current E&P deficit treatment: current-year deficits and accumulated E&P are netted pro-rata over current-year distributions; current E&P is measured at year-end and allocated to distributions during the year",
		"Nonliquidating distributions of appreciated property: the corporation recognizes gain as if it sold the property at fair market value; the shareholder receives the property with a basis equal to fair market value; the distribution amount to the shareholder is the property's fair market value",
		"Complete liquidation tax treatment at the concept level: under Sec 331 the shareholder generally recognizes capital gain/loss equal to the difference between the liquidation proceeds and the stock basis; under Sec 336 the corporation generally recognizes gain/loss on distributed property as if sold at fair market value",
		"Constructive dividends concept: excessive compensation, bargain sales to shareholders, shareholder use of corporate property, and below-market loans from corporation to shareholder may be recharacterized as dividends; the concept of reasonable compensation for closely held C corporations",
		"Accumulated earnings tax (AET) concept under Sec 531: an additional tax imposed on a C corporation that accumulates earnings beyond the reasonable needs of the business; the concept that personal service corporations have a lower accumulated earnings credit (the concept, not the computation)",
		"Personal holding company (PHC) tax concept under Sec 541: an additional tax imposed on closely held corporations meeting both the stock-ownership test and the PHC-income test; the concept that PHCs pay a tax on undistributed PHC income",
		"Stock redemptions — concept-level qualification as a sale or a dividend: Sec 302 gives four safe harbors (substantially disproportionate, complete termination of interest, not essentially equivalent to a dividend, partial liquidation of the corporation); a qualifying redemption is treated as a sale and generates capital gain/loss, while a nonqualifying redemption is treated as a dividend up to E&P",
		"State and local tax nexus concept and apportionment/allocation concept for C corporations — the rationale for nexus (minimum connection required before a state may tax), the purpose of apportionment (dividing multistate business income among states), and the application of apportionment factors to state taxable income in a given scenario",
		"Corporate alternative minimum tax (CAMT) at the concept level: the TCJA repealed the traditional corporate AMT, and the Inflation Reduction Act introduced a new 15% corporate alternative minimum tax on applicable corporations (those with a three-year average adjusted financial statement income above $1 billion) — existence and applicability only, not computation",
	],

	outOfScope: [
		"Section 338 and Section 338(h)(10) deemed asset sale elections — election mechanics, qualified stock purchase tests, allocation of purchase price under Sec 1060 residual method",
		"Section 355 corporate spin-off, split-off, and split-up mechanics — the device test, continuity of interest, continuity of business enterprise, five-year active trade or business requirement, Morris Trust transactions, anti-Morris-Trust rules under Sec 355(e)",
		"Section 368 reorganization taxonomy beyond naming that reorganizations exist — the definitions of Type A statutory merger, Type B stock-for-stock, Type C stock-for-assets, Type D divisive/acquisitive, Type E recapitalization, Type F change in form, Type G bankruptcy",
		"Judicial doctrines underlying reorganizations — continuity of interest percentage tests, continuity of business enterprise tests, business purpose doctrine, step transaction doctrine beyond the concept",
		"Section 382 NOL ownership-change limitation mechanics — measurement date, testing period, 5% shareholders, the long-term tax-exempt rate, the Sec 382 limitation calculation, built-in gain/loss rules under Sec 382(h) (this material belongs to TCP 'Entity Tax Compliance: NOLs and Consolidated Returns')",
		"Section 383 credit limitation following an ownership change",
		"Section 384 built-in loss limitations on acquired corporations",
		"Section 269 anti-abuse rule against acquisitions to evade or avoid tax",
		"Section 1202 qualified small business stock (QSBS) gain exclusion mechanics — the per-issuer cap, the five-year holding period, active business requirement, gross assets test, excluded industries",
		"Section 1244 ordinary loss treatment for small business stock beyond the existence of the concept — the $50,000/$100,000 ordinary loss cap, the original issue requirement, the qualifying corporation tests",
		"Sec 351 multiple classes of stock analysis, built-in loss imports under Sec 362(e), assumption of liabilities subject to the anti-abuse rule in Sec 357(b) beyond the concept",
		"Consolidated return mechanics beyond the bare concept — the affiliated-group 80% test beyond the concept, intercompany transaction deferral and matching/acceleration rules, the SRLY (separate return limitation year) rules, the excess loss account (ELA) mechanics, the investment adjustment rules under Treas. Reg. 1.1502-32, the loss duplication rules",
		"Brother-sister and parent-subsidiary controlled group computation mechanics under Sec 1563",
		"Constructive dividend case-law analysis beyond the concept — facts-and-circumstances determinations of reasonable compensation, Mulherin factors, Elliotts multi-factor test",
		"Corporate AMT under the 15% CAMT regime beyond its existence — the applicable financial statement income definition, adjustments from GAAP book income to CAMT base, the CAMT NOL deduction, the CAMT credit carryforward",
		"Accumulated earnings tax (AET) mechanics beyond the concept — Sec 535 accumulated taxable income computation, the Sec 531 reasonable needs of the business standard applied to specific case law, accumulated earnings credit computation",
		"Personal holding company (PHC) tax mechanics beyond the concept — Sec 543 PHC income categories and the 60% test, adjusted ordinary gross income computation, Sec 547 dividends-paid deduction for PHC",
		"Dividends from debt-financed portfolio stock — the Sec 246A reduction to the DRD based on the portion of the investment financed with indebtedness",
		"Sec 245A participation exemption for foreign-source dividends from specified 10% owned foreign corporations (this belongs to the TCP International Tax topic)",
		"Sec 163(j) business interest expense limitation mechanics — the 30% ATI limitation, the real-property trade-or-business election, the small-business gross-receipts exception beyond the concept",
		"Like-kind exchanges under Sec 1031 applied to C-corporation assets — Sec 1031 is now limited to real property, and the mechanics belong to the Property Transactions topic",
		"Sec 267 related-party loss disallowance and matching rule mechanics beyond the concept",
		"Transfer pricing between controlled corporations under Sec 482",
		"Section 1060 purchase price allocation under the residual method for asset acquisitions",
		"IC-DISC (interest-charge domestic international sales corporation) structures",
		"The graduate concept of E&P adjustments at computation depth (full list of E&P adjustments with calculation) — stays at the concept level of 'E&P is similar to taxable income with adjustments, current E&P is measured at year-end'",
	],

	keyStandards: [
		"IRC §351 — Corporate formation nonrecognition",
		"IRC §357 — Assumption of liability in Sec 351 exchanges",
		"IRC §358 — Shareholder's stock basis in Sec 351 exchange",
		"IRC §362 — Corporation's basis in property received",
		"IRC §301 — Distribution treatment and waterfall",
		"IRC §302 — Stock redemption sale vs. dividend treatment",
		"IRC §311 — Corporation's gain recognition on nonliquidating distribution of property",
		"IRC §316 — Dividend defined (earnings and profits)",
		"IRC §331 and §336 — Complete liquidation treatment",
		"IRC §243 — Dividends received deduction",
		"IRC §170 — Charitable contribution deduction",
		"IRC §172 — Net operating loss deduction",
		"IRC §1211/1212 — Corporate capital loss limitation",
		"IRC §531 and §541 — Accumulated earnings tax and personal holding company tax (concept level)",
		"Form 1120 — U.S. Corporation Income Tax Return",
	],

	commonMisconceptions: [
		"Believing Section 351 requires only stock to be received. Boot (cash or other non-stock property) can be received, but it triggers gain recognition up to the realized gain.",
		"Believing services count as property under Section 351. Services do not count — a shareholder contributing only services is not counted in the 80% control group and recognizes ordinary compensation income.",
		"Confusing the shareholder's stock basis with the corporation's asset basis after a Sec 351 exchange. The shareholder takes a carryover basis in the stock (adjusted for boot and recognized gain); the corporation takes a carryover basis in the property (adjusted for any gain the transferor recognized).",
		"Believing loss can be recognized in a Section 351 exchange. Loss is never recognized, even if boot is received.",
		"Applying the charitable contribution limitation using taxable income computed AFTER the DRD and NOL. The 10% limit is computed BEFORE the DRD, NOL carrybacks, and capital loss carrybacks.",
		"Computing the DRD using the wrong ownership tier. The correct tiers are: less than 20% = 50%; 20% to less than 80% = 65%; 80% or more = 100%.",
		"Forgetting that the DRD taxable income limitation does NOT apply when the DRD creates or increases an NOL. In that case, the full DRD is allowed.",
		"Believing corporations can deduct capital losses against ordinary income. Corporations can only offset capital losses against capital gains; excess losses carry back 3 years and forward 5 years.",
		"Applying the post-2017 80%-of-taxable-income NOL limitation to pre-2018 NOLs. Only NOLs arising in tax years beginning after 2017 are subject to the 80% limitation and the indefinite carryforward.",
		"Classifying a distribution in excess of E&P as immediate capital gain. The excess first reduces the shareholder's stock basis tax-free; only the amount above basis is capital gain.",
		"Using accumulated E&P before current E&P when classifying a distribution. The distribution is a dividend first out of current E&P (regardless of when the distribution occurred), then out of accumulated E&P.",
		"Believing the corporation does not recognize gain when distributing appreciated property to shareholders. Under Sec 311(b), the corporation recognizes gain as if it sold the property at fair market value. (Losses are generally not recognized on nonliquidating distributions.)",
		"Treating the 21% corporate rate as still subject to the old graduated corporate rate schedule. The TCJA replaced the graduated schedule with a flat 21% rate for tax years beginning after 2017.",
		"Believing the corporate AMT was permanently repealed. The traditional AMT was repealed by the TCJA for tax years beginning after 2017, but the Inflation Reduction Act introduced a new 15% CAMT on applicable corporations for tax years beginning after 2022.",
		"Confusing the accumulated earnings tax (Sec 531) with the personal holding company tax (Sec 541). AET applies when a corporation accumulates earnings beyond reasonable business needs; PHC tax applies when a closely held corporation meets both a stock-ownership test and an income-composition test. Both are penalty taxes, but they apply to different situations.",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		{
			term: "Section 338",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)338(?:\\s*\\(\\s*h\\s*\\)\\s*\\(\\s*10\\s*\\))?",
			category: "graduate M&A",
			why: "Section 338 and Section 338(h)(10) deemed-asset-sale elections are graduate M&A tax territory. Foundational REG C-corp testing does not include these elections.",
		},
		{
			term: "338(h)(10)",
			pattern: "338\\s*\\(\\s*h\\s*\\)\\s*\\(\\s*10\\s*\\)",
			category: "graduate M&A",
			why: "The 338(h)(10) election is graduate-level M&A tax — out of scope.",
		},
		{
			term: "Section 355",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)355\\b",
			category: "graduate M&A",
			why: "Section 355 spin-off, split-off, and split-up mechanics (device test, five-year active business, continuity of interest, Morris Trust) are graduate M&A tax — out of scope.",
		},
		{
			term: "spin-off",
			pattern: "\\bspin[-\\s]off\\b|\\bsplit[-\\s]off\\b|\\bsplit[-\\s]up\\b",
			category: "graduate M&A",
			why: "Corporate spin-off, split-off, and split-up transactions are Section 355 territory — graduate M&A, out of scope for foundational C-corp REG questions.",
		},
		{
			term: "Morris Trust",
			pattern: "Morris\\s+Trust",
			category: "graduate M&A",
			why: "Morris Trust and anti-Morris-Trust transactions under Sec 355(e) — graduate M&A, out of scope.",
		},
		{
			term: "Section 368",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)368\\b",
			category: "graduate M&A",
			why: "Section 368 reorganization taxonomy (Type A through Type G) is graduate M&A tax — out of scope.",
		},
		{
			term: "Type A reorganization",
			pattern: "Type\\s*[A-G]\\s+reorganization|statutory\\s+merger\\s+reorganization",
			category: "graduate M&A",
			why: "Type A/B/C/D/E/F/G reorganization taxonomy — graduate M&A, out of scope.",
		},
		{
			term: "continuity of interest",
			pattern: "continuity\\s+of\\s+interest",
			category: "graduate M&A",
			why: "Continuity of interest test for tax-free reorganizations — graduate M&A doctrine.",
		},
		{
			term: "continuity of business enterprise",
			pattern: "continuity\\s+of\\s+business\\s+enterprise",
			category: "graduate M&A",
			why: "Continuity of business enterprise doctrine for tax-free reorganizations — graduate M&A.",
		},
		{
			term: "step transaction doctrine",
			pattern: "step\\s+transaction\\s+doctrine",
			category: "judicial doctrine",
			why: "Step transaction doctrine beyond the concept is graduate corporate tax — out of scope for foundational REG.",
		},
		{
			term: "Section 382",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)382\\b",
			category: "NOL limitation",
			why: "Section 382 NOL ownership-change limitation mechanics belong to TCP 'Entity Tax Compliance: NOLs and Consolidated Returns', not the C Corporations topic.",
		},
		{
			term: "Section 383",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)383\\b",
			category: "NOL limitation",
			why: "Section 383 credit limitation following an ownership change — TCP territory.",
		},
		{
			term: "Section 384",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)384\\b",
			category: "NOL limitation",
			why: "Section 384 built-in loss limitations on acquired corporations — graduate corporate tax.",
		},
		{
			term: "Section 269",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)269\\b",
			category: "anti-abuse",
			why: "Section 269 anti-abuse rule on acquisitions to evade tax — graduate corporate tax.",
		},
		{
			term: "Section 1202",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1202\\b",
			category: "QSBS",
			why: "Section 1202 qualified small business stock gain exclusion mechanics are TCP-level wealth planning, not REG C-corp foundational material.",
		},
		{
			term: "QSBS",
			pattern: "\\bQSBS\\b|qualified\\s+small\\s+business\\s+stock",
			category: "QSBS",
			why: "Qualified small business stock — TCP wealth planning, out of scope for REG C-corp.",
		},
		{
			term: "Section 1244",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1244\\b",
			category: "small business stock",
			why: "Section 1244 ordinary loss treatment for small business stock beyond the concept — out of scope for foundational REG C-corp.",
		},
		{
			term: "SRLY rules",
			pattern: "\\bSRLY\\b|separate\\s+return\\s+limitation\\s+year",
			category: "consolidated returns",
			why: "SRLY (separate return limitation year) rules are consolidated-return mechanics — out of scope beyond the existence of consolidated filing.",
		},
		{
			term: "excess loss account",
			pattern: "excess\\s+loss\\s+account|\\bELA\\b",
			category: "consolidated returns",
			why: "Excess loss account mechanics under Treas. Reg. 1.1502-32 — consolidated return mechanics, out of scope.",
		},
		{
			term: "matching rule",
			pattern: "matching\\s+rule|acceleration\\s+rule",
			category: "consolidated returns",
			why: "Intercompany transaction deferral and matching/acceleration rules under Treas. Reg. 1.1502-13 — consolidated return mechanics, out of scope.",
		},
		{
			term: "investment adjustment",
			pattern: "investment\\s+adjustment\\s+rule",
			category: "consolidated returns",
			why: "Investment adjustment rules under Treas. Reg. 1.1502-32 — consolidated return mechanics, out of scope.",
		},
		{
			term: "Section 1060",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1060\\b",
			category: "M&A mechanics",
			why: "Section 1060 residual-method purchase price allocation — graduate M&A tax, out of scope.",
		},
		{
			term: "Section 246A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)246A\\b",
			category: "DRD mechanics",
			why: "Section 246A debt-financed portfolio stock DRD reduction — graduate corporate tax detail, out of scope.",
		},
		{
			term: "Section 163(j)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)163\\s*\\(\\s*j\\s*\\)",
			category: "adjacent topic",
			why: "Section 163(j) business interest expense limitation mechanics — separate topic, out of scope for foundational C-corp.",
		},
		{
			term: "Section 482",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)482\\b",
			category: "transfer pricing",
			why: "Section 482 transfer pricing between controlled corporations — TCP International Tax territory.",
		},
		{
			term: "Section 245A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)245A\\b",
			category: "international tax",
			why: "Section 245A participation exemption for foreign-source dividends — TCP International Tax territory.",
		},
		{
			term: "CAMT",
			pattern: "\\bCAMT\\b|corporate\\s+alternative\\s+minimum\\s+tax",
			category: "CAMT mechanics",
			why: "The 15% Corporate Alternative Minimum Tax is in scope at the concept-of-existence level (applicable corporations, $1B threshold). CAMT computation mechanics, adjusted financial statement income adjustments, CAMT NOL, and CAMT credit carryforward are out of scope. Flag any hit for review — bare concept references to CAMT may be acceptable.",
		},
		{
			term: "adjusted financial statement income",
			pattern: "adjusted\\s+financial\\s+statement\\s+income|\\bAFSI\\b",
			category: "CAMT mechanics",
			why: "AFSI is the CAMT base — mechanics territory, out of scope.",
		},
		{
			term: "adjusted ordinary gross income",
			pattern: "adjusted\\s+ordinary\\s+gross\\s+income|\\bAOGI\\b",
			category: "PHC mechanics",
			why: "AOGI is the PHC computation base — mechanics territory, out of scope beyond the PHC concept.",
		},
		{
			term: "accumulated earnings credit",
			pattern: "accumulated\\s+earnings\\s+credit",
			category: "AET mechanics",
			why: "The accumulated earnings credit is a component of the AET computation — mechanics territory, out of scope beyond the AET concept.",
		},
		{
			term: "like-kind exchange",
			pattern: "like[-\\s]kind\\s+exchange|\\b1031\\s+exchange",
			category: "adjacent topic",
			why: "Section 1031 like-kind exchange mechanics — Property Transactions topic, out of scope for C corporations.",
		},
	],

	notes:
		"Slayer's C Corporations topic integrates formation (Sec 351), taxable income, DRD, NOL/capital loss, and distributions through E&P into one unit in lesson 11-c-corporations. AICPA 2026 Blueprint splits the foundational computation side (REG/V/B 'C corporations' — taxable income, NOL, credits, state and local) from the advanced planning side (TCP/II/A — NOL/capital loss under ownership change, shareholder-corp transactions, consolidated returns, international tax). The spec anchors primaryRef to REG/V/B because that is the foundational REG depth, but inScope deliberately includes the shareholder-corp transaction topics (formation, distributions, liquidations) that AICPA places in TCP/II/A/2. This matches how Slayer teaches the material and how the questions are tagged. The alternative — carving the formation/distribution questions into a separate TCP topic — would fragment the bank without pedagogical benefit. Drift risks per the rollout handoff: Sec 338(h)(10), Sec 355 spin-off mechanics, Sec 1202 QSBS, consolidated-return elections beyond basic filing. All are addressed in outOfScope and bannedTerms.",
};
