import type { LessonSpec } from "./types";

// Fifth pilot spec — REG S corporations. SECOND CONSECUTIVE TOPIC where the 2026 AICPA
// Blueprint scope is dramatically narrower than the handoff doc and standard CPA-prep
// material assume. The handoff doc framed REG S corps as "narrow exception webs (PTTP,
// AAA freezing, two-class-of-stock, built-in gains tax)" — but NONE of those exception
// webs appear in the AICPA representative tasks at REG/V/C.
//
// The actual AICPA scope is just three topics:
//   1. Eligibility and election (who qualifies, requirements, when revoked/terminated)
//   2. Determination of ordinary business income / separately stated items / AAA impact
//   3. Basis of shareholder's interest (stock basis from ops/contributions/distributions;
//      debt basis from repayments)
//
// Things the AICPA does NOT mention: post-termination transition period (PTTP), built-in
// gains tax under Section 1374, passive investment income tax under Section 1375,
// excess passive investment income termination, two-class-of-stock disqualification
// (other than as one of the eligibility requirements), AAA freezing or AAA bypass
// election, Section 1377(a)(2) per-share-per-day vs. closing-of-the-books elections,
// Section 1361(b)(3) QSub elections, Section 444 fiscal year elections.
//
// JSON FIX: REG/V/B C corporations and REG/V/C S corporations were either entirely
// missing or mis-merged into group A in alignment/aicpa-blueprint-tasks.json before
// this work. The REG/V/A "Differences between book and tax income" group had two C
// corporation topics incorrectly nested inside it as topics 1 and 2, with a state-and-
// local task name corrupted by PDF column extraction. The JSON was patched in the
// same commit that introduced this spec. See the resolver and drift test.
//
// Structural note: Slayer's blueprint.ts puts S corps at reg.5.B with sub-topics
// "S election requirements and termination," "Shareholder basis and distributions," and
// "Built-in gains and passive income." The third sub-topic is out of scope per the
// 2026 AICPA blueprint. Eventually blueprint.ts should be revised; for now the spec
// anchors `topic` to the Slayer tagging string and `primaryRef` to the AICPA path.

export const spec: LessonSpec = {
	topic: "S Corporations",
	section: "reg",
	primaryRef: "REG/V/C",
	secondaryRefs: [],

	inScope: [
		"S corporation eligibility requirements: domestic corporation, allowable shareholder types (individuals, certain trusts and estates, certain tax-exempt organizations; NOT partnerships, NOT C corporations, NOT most foreign trusts), no more than 100 shareholders, only one class of stock outstanding, and not an ineligible corporation type",
		"Allowable shareholder identification: U.S. citizens or resident aliens, estates, qualifying trusts (grantor, voting, QSST, ESBT), and the family aggregation rule that treats family members as a single shareholder for the 100-shareholder count",
		"The single-class-of-stock requirement at the descriptive level (differences in voting rights are permitted; differences in distribution or liquidation rights generally violate the requirement) — name the rule and recognize violations, do not test exotic restructurings",
		"S election mechanics: filing Form 2553, the timing rules (made by the 15th day of the third month of the tax year for which it is to be effective), and the unanimous shareholder consent requirement",
		"S election revocation: voluntary revocation by majority shareholder vote, the effective date rules (prospective unless made within the first 2.5 months), and rescission of a revocation",
		"Inadvertent termination: situations that cause the S election to terminate (acquiring an ineligible shareholder, exceeding the 100-shareholder limit, creating a second class of stock) — recognize the trigger, no need to walk Section 1362(f) relief mechanics",
		"Calculation of S corporation ordinary business income (loss) — gross income minus deductible business expenses, before separately stated items",
		"Identification and separation of separately stated items that pass through to shareholders on Schedule K-1 (interest income, dividend income, capital gains and losses, Section 1231 gains and losses, charitable contributions, Section 179 deduction, foreign taxes paid, etc.)",
		"Accumulated adjustments account (AAA) mechanics at the calculation level: increases for ordinary income and separately stated income items, decreases for losses, deductions, and non-dividend distributions",
		"Form 1120S review: identifying ordinary business income items, separately stated items, and nondeductible items in a given trial balance or supporting schedule",
		"Stock basis adjustments: increases for income items (ordinary and separately stated), decreases for distributions and then losses/deductions, ordering rules for basis adjustments",
		"Cash contributions by a shareholder increase stock basis dollar-for-dollar",
		"Cash distributions to a shareholder decrease stock basis (and are tax-free to the extent of basis; excess is capital gain)",
		"Debt basis: shareholder loans to the S corporation create debt basis; current-year repayments of shareholder loans reduce debt basis (and may trigger gain if debt basis was previously reduced by losses)",
	],

	outOfScope: [
		"Built-in gains tax (BIG) under Section 1374 — calculation, recognition period, net unrealized built-in gain limitation, taxable income limitation, NUBIG carryforwards",
		"Passive investment income tax (sting tax) under Section 1375 and the related termination of S status under Section 1362(d)(3) for three consecutive years of excess net passive income with C-corp E&P",
		"Post-termination transition period (PTTP) under Section 1377(b) — distributions during PTTP, treatment as coming out of AAA",
		"AAA freezing or AAA bypass election (Section 1368(e)(3))",
		"Section 1377(a)(2) elections to close the books on the date of a shareholder's termination of interest (vs. the default per-share-per-day allocation)",
		"Section 1362(f) inadvertent termination relief — request mechanics, IRS discretion, retroactive validation",
		"QSub elections under Section 1361(b)(3) — qualification, election mechanics, treatment as a disregarded entity, deemed liquidation consequences",
		"Section 444 fiscal year elections and required payments under Section 7519",
		"S corporation conversion to C corporation: the five-year reverse re-election bar and any depth on conversion mechanics",
		"C-to-S conversion mechanics beyond the basic election: LIFO recapture tax, accumulated E&P tracking from prior C years, the order of distributions from AAA / AE&P / OAA / paid-in capital",
		"Other adjustments account (OAA) detailed mechanics",
		"Schedule M-2 line-by-line reconciliation",
		"AAA vs. accumulated E&P ordering rules for distributions when an S corp has C corp E&P from prior years (other than recognizing that this distinction exists)",
		"Self-employment tax treatment differences between S corporation distributions and reasonable compensation — the reasonable compensation issue belongs in TCP under owner-entity transactions, not here",
		"Section 199A QBI deduction for S corporation flow-through income at the calculation level (the existence of QBI is in the individual taxation topic; here, only that S corp K-1 items are eligible for QBI)",
		"At-risk and passive activity loss limitations applied to S corporation losses (those live in REG individual / TCP loss limitations, not here)",
		"Audit procedures for an S corporation, including TEFRA-replacement BBA partnership audit rules (which don't apply to S corps but generators sometimes confuse the two)",
		"State-level S corporation conformity issues, composite returns, nonresident shareholder withholding",
		"Multi-state S corporation apportionment",
	],

	keyStandards: [
		"IRC §1361 — S corporation defined (eligibility, single class of stock, ineligible corporations)",
		"IRC §1362 — Election; revocation; termination",
		"IRC §1363 — Effect of election on corporation (general no-tax-at-entity-level rule)",
		"IRC §1366 — Pass-through of items to shareholders",
		"IRC §1367 — Adjustments to basis of stock and indebtedness",
		"IRC §1368 — Distributions (AAA mechanics, treatment as return of basis vs. capital gain)",
	],

	commonMisconceptions: [
		"Believing a partnership or C corporation can be an S corporation shareholder (neither can — the eligible shareholder list is closed)",
		"Counting family members as multiple shareholders against the 100-shareholder limit (they're aggregated as one)",
		"Treating differences in voting rights as creating a second class of stock (voting differences are permitted; only differences in distribution or liquidation rights violate the requirement)",
		"Believing that an S election filed mid-year always becomes effective in the current year (it must be filed by the 15th day of the 3rd month; later filings are effective the next year)",
		"Adjusting stock basis for distributions BEFORE losses (the ordering is income items first, then distributions, then losses and deductions)",
		"Letting stock basis go below zero (it cannot — losses in excess of basis suspend until additional basis is created)",
		"Forgetting that debt basis must be restored before stock basis from later income items (after a loss has reduced debt basis, future income restores debt basis first)",
		"Confusing the AAA with retained earnings or with stock basis (AAA is an entity-level tracking account; stock basis is shareholder-level; retained earnings is GAAP)",
		"Believing all distributions from an S corporation are tax-free to the shareholder (they're tax-free only to the extent of stock basis; excess is capital gain)",
		"Treating the S election as automatically continuing forever (it can be revoked, can be terminated by an ineligible shareholder acquisition, and can be terminated by passive investment income — the last of which is out of scope here but the existence of termination triggers is in scope)",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		{
			term: "Section 1374",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1374\\b",
			category: "code section",
			why: "Built-in gains tax code section. Out of scope per reg-s-corporations spec: AICPA REG/V/C tests eligibility, ordinary income/AAA, and basis — not the BIG tax mechanics.",
		},
		{
			term: "built-in gains tax",
			pattern: "built[-\\s]in\\s+gains?\\s+tax",
			category: "named provision",
			why: "BIG tax under Sec 1374 — out of scope.",
		},
		{
			term: "BIG tax",
			pattern: "\\bBIG\\s+tax\\b",
			category: "named provision",
			why: "Same as built-in gains tax — out of scope.",
		},
		{
			term: "net unrealized built-in gain",
			pattern: "net\\s+unrealized\\s+built[-\\s]in\\s+gain",
			category: "Sec 1374 terminology",
			why: "NUBIG is a Sec 1374 construct — out of scope.",
		},
		{
			term: "NUBIG",
			pattern: "\\bNUBIG\\b",
			category: "Sec 1374 terminology",
			why: "Net unrealized built-in gain acronym — out of scope.",
		},
		{
			term: "recognition period",
			pattern: "(?:5[-\\s]year\\s+)?recognition\\s+period",
			category: "Sec 1374 terminology",
			why: "The 5-year (formerly 10-year) BIG recognition period is a Sec 1374 concept — out of scope.",
		},
		{
			term: "Section 1375",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1375\\b",
			category: "code section",
			why: "Passive investment income tax (sting tax) code section — out of scope.",
		},
		{
			term: "passive investment income tax",
			pattern: "passive\\s+investment\\s+income\\s+tax",
			category: "named provision",
			why: "Sec 1375 sting tax — out of scope.",
		},
		{
			term: "sting tax",
			pattern: "\\bsting\\s+tax\\b",
			category: "named provision",
			why: "Sec 1375 nickname — out of scope.",
		},
		{
			term: "excess net passive income",
			pattern: "excess\\s+net\\s+passive\\s+income|\\bENPI\\b",
			category: "Sec 1375 terminology",
			why: "Sec 1375 terminology — out of scope.",
		},
		{
			term: "Section 1362(d)(3)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1362\\(d\\)\\(3\\)",
			category: "code section",
			why: "Termination of S status for three consecutive years of excess net passive income — Sec 1375 adjunct, out of scope.",
		},
		{
			term: "three consecutive years",
			pattern: "three\\s+consecutive\\s+years.{0,60}passive\\s+investment\\s+income|three\\s+consecutive\\s+years.{0,60}passive\\s+income",
			category: "Sec 1362(d)(3) trigger",
			why: "The Sec 1362(d)(3) termination trigger — out of scope.",
		},
		{
			term: "post-termination transition period",
			pattern: "post[-\\s]termination\\s+transition\\s+period",
			category: "named provision",
			why: "PTTP under Sec 1377(b) — out of scope.",
		},
		{
			term: "PTTP",
			pattern: "\\bPTTP\\b",
			category: "named provision",
			why: "Post-termination transition period acronym — out of scope.",
		},
		{
			term: "Section 1377(b)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1377\\(b\\)",
			category: "code section",
			why: "PTTP code section — out of scope.",
		},
		{
			term: "Section 1377(a)(2)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1377\\(a\\)\\(2\\)",
			category: "code section",
			why: "Closing-of-the-books election — out of scope.",
		},
		{
			term: "closing of the books",
			pattern: "closing[-\\s]of[-\\s]the[-\\s]books|close\\s+the\\s+books.{0,40}election",
			category: "Sec 1377(a)(2) election",
			why: "Closing-of-the-books election under Sec 1377(a)(2) — out of scope.",
		},
		{
			term: "per-share per-day",
			pattern: "per[-\\s]share[-\\s]per[-\\s]day",
			category: "Sec 1377(a)(2) default",
			why: "Per-share-per-day default allocation under Sec 1377(a)(2) — out of scope.",
		},
		{
			term: "AAA freezing",
			pattern: "AAA\\s+(?:freez|bypass)",
			category: "Sec 1368(e)(3) election",
			why: "AAA freezing / bypass election under Sec 1368(e)(3) is out of scope. NOTE: the accumulated adjustments account itself IS in scope — this pattern targets only the bypass-specific phrasing.",
		},
		{
			term: "Section 1368(e)(3)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1368\\(e\\)\\(3\\)",
			category: "code section",
			why: "AAA bypass election code section — out of scope.",
		},
		{
			term: "Section 1362(f)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1362\\(f\\)",
			category: "code section",
			why: "Inadvertent termination relief — out of scope (the termination trigger itself is in scope; the relief mechanics are not).",
		},
		{
			term: "inadvertent termination",
			pattern: "inadvertent\\s+termination.{0,40}relief|inadvertent\\s+termination.{0,40}Section",
			category: "Sec 1362(f)",
			why: "Inadvertent termination RELIEF under Sec 1362(f) — out of scope. The concept that inadvertent termination CAN occur is in scope; IRS relief mechanics are not.",
		},
		{
			term: "QSub",
			pattern: "\\bQSub\\b|qualified\\s+subchapter\\s+S\\s+subsidiary",
			category: "named election",
			why: "QSub election under Sec 1361(b)(3) — out of scope.",
		},
		{
			term: "Section 1361(b)(3)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1361\\(b\\)\\(3\\)",
			category: "code section",
			why: "QSub election code section — out of scope.",
		},
		{
			term: "Section 444",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)444\\b",
			category: "code section",
			why: "Sec 444 fiscal year elections — out of scope.",
		},
		{
			term: "Section 7519",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)7519\\b",
			category: "code section",
			why: "Required payments under Sec 7519 (pairs with Sec 444) — out of scope.",
		},
		{
			term: "LIFO recapture tax",
			pattern: "LIFO\\s+recapture",
			category: "C-to-S conversion",
			why: "LIFO recapture tax on C-to-S conversion — out of scope (the basic election is in scope; conversion-specific taxes are not).",
		},
		{
			term: "five-year re-election bar",
			pattern: "(?:5|five)[-\\s]year\\s+(?:re[-\\s]?election|waiting)\\s+(?:bar|period)",
			category: "C-to-S conversion",
			why: "The 5-year bar on re-electing S status after termination — out of scope.",
		},
		{
			term: "Schedule M-2",
			pattern: "Schedule\\s+M[-\\s]2",
			category: "form schedule",
			why: "Schedule M-2 line-by-line reconciliation — out of scope. The AAA concept is in scope; the Schedule M-2 mechanics are not.",
		},
		{
			term: "other adjustments account",
			pattern: "other\\s+adjustments\\s+account|\\bOAA\\b",
			category: "AAA-adjacent",
			why: "OAA detailed mechanics — out of scope (AAA is in scope; OAA is not).",
		},
		{
			term: "accumulated E&P",
			pattern: "accumulated\\s+earnings\\s+and\\s+profits|\\bAE&P\\b|\\bAEP\\b(?=.{0,20}distribution)",
			category: "C-corp E&P interaction",
			why: "Accumulated E&P from prior C years and the AAA/AE&P/OAA/paid-in-capital distribution ordering rules — out of scope per spec.",
		},
		{
			term: "reasonable compensation",
			pattern: "reasonable\\s+compensation",
			category: "TCP scope",
			why: "Reasonable compensation vs. distributions is a TCP owner-entity transactions topic, not a REG S Corporations topic — belongs elsewhere.",
		},
		{
			term: "self-employment tax",
			pattern: "self[-\\s]employment\\s+tax.{0,40}(?:shareholder|S\\s+corporation|S\\s+corp)",
			category: "TCP scope",
			why: "SE tax treatment of S corp distributions is TCP owner-entity territory — out of scope here.",
		},
		{
			term: "Section 199A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)199A\\b",
			category: "code section",
			why: "QBI deduction at the calculation level is out of scope for this topic (belongs in individual taxation).",
		},
		{
			term: "qualified business income",
			pattern: "qualified\\s+business\\s+income\\s+deduction|\\bQBI\\s+deduction",
			category: "Sec 199A",
			why: "QBI deduction — out of scope at the calculation level.",
		},
		{
			term: "at-risk limitation",
			pattern: "at[-\\s]risk\\s+(?:limitation|rule)",
			category: "loss limitation scope",
			why: "At-risk limitations on S corp losses belong in REG individual loss limitations topic, not here.",
		},
		{
			term: "passive activity loss",
			pattern: "passive\\s+activity\\s+loss\\s+(?:limitation|rule)",
			category: "loss limitation scope",
			why: "PAL limitations on S corp losses — not tested under this topic.",
		},
		{
			term: "BBA partnership audit",
			pattern: "BBA\\s+partnership\\s+audit|Bipartisan\\s+Budget\\s+Act\\s+(?:of\\s+2015\\s+)?audit",
			category: "audit procedure",
			why: "BBA/TEFRA audit rules — out of scope (and do not apply to S corps in any event, but generators sometimes confuse the two).",
		},
		{
			term: "TEFRA audit",
			pattern: "TEFRA\\s+audit",
			category: "audit procedure",
			why: "TEFRA audit rules — out of scope.",
		},
		{
			term: "composite return",
			pattern: "composite\\s+return",
			category: "state tax",
			why: "State composite returns for nonresident S corp shareholders — state-level conformity, out of scope.",
		},
		{
			term: "nonresident shareholder withholding",
			pattern: "nonresident\\s+shareholder\\s+withholding|nonresident\\s+withholding.{0,40}shareholder",
			category: "state tax",
			why: "State nonresident shareholder withholding — out of scope.",
		},
		{
			term: "multi-state apportionment",
			pattern: "multi[-\\s]state\\s+(?:apportionment|allocation)",
			category: "state tax",
			why: "State apportionment for S corps — belongs in the REG/V/B State and local tax topic, not here.",
		},
	],

	notes:
		"CRITICAL EDITORIAL FLAG: this is the second consecutive pilot topic where AICPA scope is dramatically narrower than published CPA-prep material. The handoff doc explicitly named PTTP, AAA freezing, two-class-of-stock disqualification, and built-in gains tax as the 'narrow exception webs' to spec. AICPA does not test any of those exception webs in REG/V/C. The handoff was written from working knowledge of the broad S-corp landscape, not from the 2026 blueprint. Slayer's blueprint.ts has a sub-topic 'Built-in gains and passive income' (reg.5.B.3) that maps to material out of scope per the 2026 blueprint. FOLLOW-UP REQUIRED: an audit of the 82 questions tagged 'S Corporations' against this spec's outOfScope list — expect a meaningful fraction (probably smaller than International Tax, but non-trivial) to test BIG, PII tax, PTTP, AAA freezing, or QSub mechanics. The Q15795 reference in the handoff doc — 'PTTP framing' — is now also flagged as a question worth re-reviewing under the new spec lens (though it may already be deleted post-Phase-3). New question generation in this topic should be paused until the audit completes. The spec also reflects a JSON patch: REG/V/B and REG/V/C were missing/corrupted in alignment/aicpa-blueprint-tasks.json before this work (PDF column extraction merged C-corp content into group A and dropped S-corp entirely); they were restored in the same commit that introduced this spec.",
};
