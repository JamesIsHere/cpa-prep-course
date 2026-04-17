// Shared group-scoped base for REG/V/C S corporations task-specs.
//
// All 9 AICPA representative tasks in REG/V/C share the same drift surface
// (BIG tax, PTTP, QSub, etc.) and the same key standards (IRC §1361-§1368).
// This base holds their shared outOfScope, keyStandards, bannedTerms, and
// commonMisconceptions so each individual task-spec stays ~30-40 lines and
// only has to specify its task-specific inScope, targetCount, and
// difficultyMix.
//
// **Inherits from topic-spec `reg-s-corporations.ts`** — the topic-spec's
// scope knowledge is absorbed here verbatim. When the topic-spec is retired
// in Phase 6, this base becomes the sole source of the group's drift data.
// The topic-spec's `inScope` list is NOT absorbed here because per-task
// inScope is the whole point of the rearchitecture — each task-spec breaks
// the topic-wide inScope into task-specific concepts.

import type { GroupBase } from "./types";

export const REG_S_CORPS_BASE: GroupBase = {
	groupRef: "REG/V/C",
	groupName: "S corporations",
	lessonSpec: "reg-s-corporations",

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
	],

	bannedTerms: [
		{
			term: "Section 1374",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1374\\b",
			category: "code section",
			why: "Built-in gains tax code section. Out of scope: AICPA REG/V/C tests eligibility, ordinary income/AAA, and basis — not BIG tax mechanics.",
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
			why: "Built-in gains tax acronym — out of scope.",
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
			term: "Section 1375",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1375\\b",
			category: "code section",
			why: "Passive investment income tax (sting tax) — out of scope.",
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
			term: "AAA bypass",
			pattern: "AAA\\s+(?:freez|bypass)",
			category: "Sec 1368(e)(3) election",
			why: "AAA freezing / bypass election under Sec 1368(e)(3) is out of scope. NOTE: the accumulated adjustments account itself IS in scope — this pattern targets only the bypass-specific phrasing.",
		},
		{
			term: "QSub",
			pattern: "\\bQSub\\b|qualified\\s+subchapter\\s+S\\s+subsidiary",
			category: "named election",
			why: "QSub election under Sec 1361(b)(3) — out of scope.",
		},
		{
			term: "Section 444",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)444\\b",
			category: "code section",
			why: "Sec 444 fiscal year elections — out of scope.",
		},
		{
			term: "LIFO recapture",
			pattern: "LIFO\\s+recapture",
			category: "C-to-S conversion",
			why: "LIFO recapture tax on C-to-S conversion — out of scope.",
		},
		{
			term: "Schedule M-2",
			pattern: "Schedule\\s+M[-\\s]2",
			category: "form schedule",
			why: "Schedule M-2 line-by-line reconciliation — out of scope. The AAA concept is in scope; the Schedule M-2 mechanics are not.",
		},
		{
			term: "Section 199A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)199A\\b",
			category: "code section",
			why: "QBI deduction at the calculation level is out of scope for this topic (belongs in individual taxation).",
		},
		{
			term: "reasonable compensation",
			pattern: "reasonable\\s+compensation",
			category: "TCP scope",
			why: "Reasonable compensation vs. distributions is a TCP owner-entity transactions topic, not a REG S Corporations topic.",
		},
	],

	notes:
		"Inherits scope knowledge from topic-spec `reg-s-corporations.ts` (authored 2026-04 as the fifth pilot spec). The per-task inScope lists in this group's task-specs were NOT absorbed from the topic-spec's inScope — each task gets its own sub-concept breakdown. The outOfScope, keyStandards, bannedTerms, and commonMisconceptions lists ARE absorbed verbatim. When this group's topic-spec retires in Phase 6, this base becomes the sole source of drift data.",
};
