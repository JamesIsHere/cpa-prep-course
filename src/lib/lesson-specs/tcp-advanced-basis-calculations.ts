import type { TopicSpec } from "./types";

// Eighteenth authored spec — first spec of Stage 3 (next wave) of the
// full-bank review plan, chosen from the Stage 2 drift census as the
// highest-ROI "rightful owner" candidate. 95 questions, 24 flagged by the
// universal ban set (25%) — almost all of the flagged content is
// drift-by-handoff from the Partnerships spec, which explicitly pushed
// Sec 752 / 704(c) / 754 / 743(b) mechanics to this topic. Authoring this
// spec converts most of those false positives into defended scope.
//
// ## Anchor
//
// Slayer's "Advanced Basis Calculations" is a synthesized cross-cutting
// topic (lesson 09-basis-calculations) that spans several AICPA 2026
// blueprint groups:
//
//   TCP/II/B/1  — Basis of shareholder's interest (S corporation stock
//                 and debt basis, noncash contributions, liability
//                 assumption)
//   TCP/II/C/1  — Basis of partner's interest (noncash contributions,
//                 recourse and nonrecourse partnership debt, partner loans)
//   TCP/II/C/2  — Partnership and partner elections (including explicitly
//                 "adjustment to basis of property" — the Sec 754 election)
//   TCP/II/C/4  — Ownership changes (including "Calculate the revised
//                 basis of partnership assets due to a transfer of a
//                 partnership interest" — the Sec 743(b) adjustment)
//
// The spec anchors blueprintRef to group-level TCP/II/C because the
// partnership material is the dominant content (outside/inside basis
// distinction, 754 election mechanics, 743(b) / 734(b) adjustments, 704(c)
// built-in gain allocation, recourse/nonrecourse liability allocation).
// The inScope list deliberately pulls in the S-corporation basis material
// that AICPA places in TCP/II/B/1 — Slayer teaches it as one integrated
// unit. The scaffolder initially stubbed this topic at TCP/II/D, which is
// actually Trusts; corrected during authoring.
//
// ## The "rightful owner" problem
//
// This topic is the designated home for partnership-basis mechanics that
// other specs exclude. The Partnerships (REG) spec explicitly says Sec 752
// liability allocation belongs here; the same spec pushes Sec 754 / 743(b)
// / 734(b) and Sec 704(c) built-in gain methods here. Because those specs
// ban the terms in their own banned lists, the drift census flagged this
// topic as having 24/95 drifted questions — but most of those are
// on-topic content that just happened to be invisible until this spec was
// authored. The line this spec holds: basis computation at the mechanics
// depth Slayer teaches (754 election, 743(b) step-up, 704(c) methods,
// 4-tier loss hierarchy) is IN; allocation-validity mechanics (substantial
// economic effect, DRO, QIO, minimum gain chargeback) are OUT because
// they govern whether a special allocation is respected, not how a
// partner's basis changes.
//
// ## Drift risks (priority order)
//
//   1. Section 704(b) substantial economic effect test depth — allocation
//      validity is Partnerships territory, not basis
//   2. Section 752 regulatory-depth mechanics — constructive liquidation
//      test, three-tier nonrecourse allocation with 704(c) minimum gain,
//      bottom-dollar guarantee rules. The CONCEPT that recourse follows
//      personal liability and nonrecourse follows profit ratios is in
//      scope; the regulatory depth is not.
//   3. Section 751 hot-asset computation on sale of partnership interest
//      — that is a sale-of-interest character question, not a basis
//      question
//   4. Section 469 passive activity depth (material participation 7-tests,
//      qualified nonrecourse financing exception, grouping rules) — the
//      Passive Activity and At-Risk Rules topic owns those mechanics; this
//      topic references the passive limit at the 4-tier-hierarchy concept
//      level only
//   5. Section 736 retiring-partner payments, Sec 707(a)(2) disguised
//      sales, Sec 708(b) termination — partnership mechanics unrelated to
//      basis
//   6. Sec 1374 S corp built-in gains tax, AAA distribution mechanics — S
//      corporation entity-level tax, not basis
//   7. Sec 199A QBI — separate topic

export const spec: TopicSpec = {
	topic: "Advanced Basis Calculations",
	section: "tcp",
	blueprintRef: "TCP/II/C",

	inScope: [
		"S corporation shareholder stock basis adjustment ordering rules: (1) separately stated and nonseparately computed income items increase basis; (2) tax-exempt income increases basis; (3) nondeductible non-capital expenses decrease basis; (4) distributions decrease basis; (5) separately stated and nonseparately computed loss items decrease basis last. Basis cannot go below zero; the ordering matters because income increases basis before distributions reduce it, which can prevent distributions from being taxable.",
		"S corporation shareholder debt basis: created only by direct loans from the shareholder to the corporation — NOT by guarantees of corporate debt owed to third parties. Debt basis is used to deduct losses only after stock basis is exhausted. Repayments of shareholder loans first restore previously reduced debt basis up to face value, and any excess repayment is treated as a sale/exchange producing gain or loss depending on whether basis has been fully restored.",
		"Distinction between S corporation stock basis and debt basis as separate pools, and the rule that S corporation basis (both stock and debt) suspended at the basis tier is lost permanently if the shareholder sells the stock while basis is below the loss amount — unlike partner basis, which can be restored while the interest is still held.",
		"Partnership partner's outside basis: the partner's basis in the partnership interest. Adjusted upward for distributive share of income (taxable AND tax-exempt), additional contributions, and increases in the partner's allocable share of partnership liabilities. Adjusted downward for distributive share of losses, distributions, nondeductible non-capital expenses, and decreases in the partner's allocable share of partnership liabilities. Basis cannot go below zero.",
		"Partnership inside basis: the partnership's basis in its assets. Generally equals the contributing partner's carryover basis for contributed property, plus cost for purchased property, reduced by depreciation and asset sales.",
		"The distinction between outside basis and inside basis, and the ways the two can diverge over time: (1) a purchased partnership interest creates an outside basis equal to the purchase price while inside basis remains the partnership's pre-existing basis in its assets; (2) special allocations of income or loss shift outside basis asymmetrically while inside basis moves with actual asset activity; (3) distributions of appreciated or depreciated property affect outside basis and the partner's new basis in the distributed property asymmetrically from the partnership's inside basis in that property.",
		"Section 754 election to adjust inside basis: when and why a partnership makes the election; the election applies to all transfers and distributions until revoked with IRS consent; the election triggers downstream Section 743(b) adjustments on sales or exchanges of partnership interests AND Section 734(b) adjustments on distributions of partnership property.",
		"Section 743(b) adjustment on sale or exchange of a partnership interest (with a 754 election in effect): the transferee partner receives a special basis adjustment equal to the new outside basis (purchase price) minus the transferee's share of the partnership's inside basis. The adjustment is personal to the transferee — it does not affect the partnership's common basis in its assets and does not affect any other partner's allocations. Compute and apply the adjustment to specific fact patterns.",
		"Section 734(b) adjustment on distributions with a 754 election: a positive (step-up) adjustment when the distributee recognized gain on the distribution or when the distributee took a lower basis in the distributed property than the partnership's basis; a negative (step-down) adjustment when the distributee recognized loss or took a higher basis. The adjustment applies to the partnership's remaining assets and affects all remaining partners.",
		"Section 755 allocation of Section 754 adjustments among partnership assets at the concept level: the adjustment is allocated first between ordinary-income asset classes and capital-gain asset classes based on the difference between the transferee's share of FMV and inside basis within each class, then within each class to specific assets.",
		"Section 704(c) built-in gain and loss allocation for contributed property: when a partner contributes property with a built-in gain or loss, the partnership must allocate the built-in amount back to the contributing partner when the property is sold or depreciated, preventing shifting of pre-contribution gains or losses to other partners. The three permissible methods: traditional method (limited by the ceiling rule); traditional method with curative allocations (which uses other actual partnership items to offset ceiling-rule distortions); and remedial method (which creates notional offsetting tax items to fully eliminate ceiling-rule distortions). The existence and conceptual difference of the three methods is in scope; the regulatory-depth mechanics of each method's computation are borderline.",
		"The ceiling rule as a limitation under the traditional method: the partnership cannot allocate more tax depreciation to the non-contributing partner than the total tax depreciation the property generates, even when the contributing partner's book depreciation would imply a higher tax allocation. This mismatch creates the shortfall that the curative and remedial methods are designed to address.",
		"Partnership liability allocation at the concept level: recourse liabilities are allocated to the partner who bears the risk of repayment (typically the general partner or the partner who personally guaranteed the debt). Nonrecourse liabilities are generally allocated according to partners' profit-sharing ratios. Increases in a partner's allocable share of partnership liabilities are treated as deemed cash contributions (increasing outside basis); decreases are treated as deemed cash distributions (reducing outside basis, with gain recognized if the deemed distribution exceeds basis).",
		"Four-tier loss limitation hierarchy for pass-through entity losses, applied in order: (1) basis limitation — losses cannot exceed the partner's or shareholder's basis in the entity interest (partners under IRC §704(d); S shareholders under IRC §1366(d)); (2) at-risk limitation under IRC §465 — losses cannot exceed the amount the taxpayer has personally at risk (generally cash contributed plus recourse debt the taxpayer is personally liable for); (3) passive activity limitation under IRC §469 — passive losses can only offset passive income; (4) excess business loss limitation under IRC §461(l) — aggregate business losses exceeding the annual threshold (~$313K single / $626K MFJ indexed) are disallowed currently and carried forward as an NOL. A loss failing at any tier is suspended and carries forward until that limitation is satisfied.",
		"The concept that a loss suspended at the basis tier never reaches the at-risk computation; a loss freed at a higher tier must still pass through each lower-tier hurdle in order. The sequential nature of the 4-tier test is the key exam point.",
		"Partner's basis in property received in a nonliquidating distribution: carryover from the partnership's basis in the property, limited to the partner's outside basis remaining after any cash is applied first. Excess inside basis over the partner's outside basis is 'lost' at the partner level (absent a 754 election + 734(b) step-up for the remaining partners).",
		"Partner's basis in property received in a liquidating distribution: the partner's entire remaining outside basis (after cash) is allocated to the distributed property, potentially creating a basis that is higher or lower than the partnership's inside basis in the property. This is the other trigger for Section 734(b) adjustments under a 754 election.",
		"The excess business loss threshold existence at the concept level (annual threshold applied after basis, at-risk, and passive limitations; disallowed excess converts to an NOL carryforward). The specific annual dollar amount is approximate and subject to indexing; candidates should know the threshold exists, not memorize the current-year amount.",
	],

	outOfScope: [
		"Section 704(b) substantial economic effect test and its three components (capital account maintenance rules, liquidation in accordance with positive capital accounts, deficit restoration obligation or qualified income offset) — these govern the validity of special allocations, not basis computation, and belong to the Partnerships topic if anywhere",
		"Section 704(b) capital account maintenance regulations under Treas. Reg. 1.704-1(b)(2)(iv) — the book-tax distinction, revaluations on contributions or distributions, the 'Subchapter K book basis' concept",
		"Minimum gain chargeback rules, partner nonrecourse deductions, and partnership minimum gain concepts under the 704(b) nonrecourse deduction safe harbor",
		"Section 752 mechanics at regulatory depth: the constructive liquidation test for recourse allocation under Treas. Reg. 1.752-2, economic risk of loss analysis, bottom-dollar guarantee rules, three-tier nonrecourse allocation order (first minimum gain, then 704(c) minimum gain, then profit ratio) — the concept of recourse-follows-personal-liability and nonrecourse-follows-profit-ratios is in scope, but the regulatory depth is out",
		"Section 751 hot-asset computation on sale of a partnership interest — the ordinary-income portion attributable to unrealized receivables and substantially appreciated inventory. Sale-of-interest character is a separate teaching (Partnerships topic), not a basis-calculation teaching; this topic tracks outside basis and inside basis, not the character carveout on a sale",
		"Section 751(b) disproportionate distributions recharacterized as sales",
		"Section 736 payments to a retiring or deceased partner — the 736(a) vs 736(b) split, the goodwill rule for general partnerships, service-partner vs capital-intensive partner distinction",
		"Section 707(a)(2) disguised sale rules — the two-year presumption, debt-financed distribution exception, qualified liability rules",
		"Section 707(b) related-party sales between a partner and a partnership",
		"Section 708(b) partnership termination rules and the technical termination repealed by TCJA",
		"Section 7704 publicly traded partnership rules",
		"Section 199A qualified business income deduction — separate topic",
		"Section 1374 S corporation built-in gains tax — S corporation entity-level tax imposed on pre-conversion built-in gains; not a basis calculation",
		"S corporation accumulated adjustments account (AAA) mechanics beyond the bare concept that AAA tracks the S-corporation's post-conversion undistributed income — the detailed adjustments to AAA, the ordering rules for distributions exceeding AAA, and the interaction with accumulated E&P from C-corporation years belong to the S Corporations topic",
		"Section 469 passive activity rules at mechanics depth — the seven material participation tests, qualified nonrecourse financing exception for real estate activities, the $25,000 active rental real estate exception, the phase-out of the $25,000 exception, grouping rules, the real estate professional exception. This topic references the passive limit as level 3 of the 4-tier loss hierarchy at the concept level only",
		"Section 465 at-risk rules at mechanics depth — detailed computation of the at-risk amount for real estate activities, the qualified nonrecourse financing rules, at-risk recapture when the at-risk amount drops below zero. This topic references the at-risk limit as level 2 of the 4-tier loss hierarchy at the concept level only",
		"BBA partnership audit regime — the partnership representative, imputed underpayment computation, push-out election",
		"Case-law depth on S corporation debt basis — Gitlitz, Selfe, and related cases beyond the bare rule that debt basis comes only from direct shareholder loans",
		"Mergers and divisions of partnerships under Treas. Reg. 1.708-1(c) and (d)",
		"Partnership basis on contribution of services (profits interest Rev Proc 93-27 and capital interest for services)",
		"Section 163(j) business interest expense limitation — a separate expense rule, not a basis computation",
		"Family partnership rules under Section 704(e)",
		"Anti-abuse rules under Treas. Reg. 1.701-2",
		"Sec 461(l) excess business loss mechanics beyond the threshold existence — the specific indexed threshold for the current year, the aggregation rules, the interaction with other entity losses, the interaction with NOLs after 461(l) conversion",
	],

	keyStandards: [
		"IRC §704(c) — Contributed property built-in gain/loss allocation (traditional, curative, remedial)",
		"IRC §704(d) — Partner loss limited to basis",
		"IRC §705 — Determination of partner's outside basis",
		"IRC §722 — Partner's initial basis on contribution",
		"IRC §731 — Gain or loss on partnership distributions",
		"IRC §732 — Basis of distributed property in partner's hands",
		"IRC §733 — Basis of distributee partner's interest after distribution",
		"IRC §734(b) — Remaining partners' basis adjustment on distribution (with 754 election)",
		"IRC §743(b) — Transferee partner basis adjustment on sale or exchange (with 754 election)",
		"IRC §752 — Partnership liability allocation (concept level)",
		"IRC §754 — Election to adjust basis of partnership property",
		"IRC §755 — Allocation of 754 adjustments among partnership assets",
		"IRC §1366(d) — S corporation shareholder loss limited to basis",
		"IRC §1367 — S corporation shareholder basis adjustments",
		"IRC §465 — At-risk loss limitation (concept)",
		"IRC §469 — Passive activity loss limitation (concept)",
		"IRC §461(l) — Excess business loss limitation (concept and threshold existence)",
	],

	commonMisconceptions: [
		"Believing an S corporation shareholder acquires debt basis by personally guaranteeing the corporation's debt. Debt basis comes ONLY from direct loans by the shareholder to the corporation. A guarantee is a contingent obligation, not a loan, and does not create basis. This is one of the most commonly tested distinctions on the TCP exam.",
		"Confusing a partner's inside basis and outside basis. Outside basis is the partner's basis in the partnership interest (on the partner's records); inside basis is the partnership's basis in its assets (on the partnership's books). The two start equal at formation and diverge over time.",
		"Believing the Section 754 election benefits all partners equally. A 754 election + 743(b) adjustment benefits only the specific transferee partner on a specific transfer — it does not step up the partnership's common basis in its assets or affect any other partner's share.",
		"Believing the Section 743(b) step-up is an adjustment to the partnership's asset basis. It is a personal adjustment: depreciation and gain/loss flow to the transferee at adjusted amounts while the other partners continue using the partnership's common basis.",
		"Thinking Section 704(c) built-in gain allocations can be waived by the partnership agreement. 704(c) is mandatory — the pre-contribution built-in gain or loss must be allocated back to the contributing partner. The agreement can only choose among the three permissible methods (traditional, curative, remedial).",
		"Believing the ceiling rule applies to all 704(c) methods. It is a limitation of the traditional method specifically; the curative and remedial methods exist precisely to work around the ceiling rule's distortions.",
		"Forgetting that partnership liabilities affect basis. A partnership takes on a loan; the partners' outside bases go up by their allocable shares. A partnership pays off a loan; the partners' outside bases go down, and the decrease is treated as a deemed cash distribution that can trigger gain recognition.",
		"Confusing recourse and nonrecourse liability allocation rules. Recourse follows who bears personal liability (usually the general partner); nonrecourse follows profit-sharing ratios because no partner personally bears the risk.",
		"Believing the 4-tier loss hierarchy is applied in any order. Basis is always first (the loss cannot even be measured without basis), then at-risk, then passive, then excess business loss. A loss stopped at a lower tier never reaches the higher tiers.",
		"Believing passive losses can offset active trade-or-business income or portfolio income. Passive losses can only offset passive income (with narrow exceptions); unused passive losses are suspended and carried forward.",
		"Treating a limited partner as having the same at-risk amount as a general partner. A limited partner's at-risk amount generally does not include their allocable share of partnership recourse debt because they do not bear personal liability for it.",
		"Believing that S corporation losses suspended at the basis tier can be restored if the shareholder sells the stock. Unlike partnership losses, which can be revived when basis is restored while the interest is still held, S corporation losses suspended at the basis tier are lost when the stock is sold (with limited exceptions for same-year events).",
		"Treating tax-exempt income as irrelevant to basis. Tax-exempt income increases both stock basis (S corp) and outside basis (partnership) — it is the only non-taxable item that does.",
		"Believing the excess business loss threshold under Section 461(l) is the same as the at-risk or passive limit. It is a fourth, independent limit that applies after the first three, and it converts the disallowed amount into an NOL carryforward rather than suspending it at the entity-flow-through level.",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		// --- Section 704(b) allocation-validity mechanics — OUT ---
		// Bare "Section 704" is permitted (bare reference is fine); only the
		// subsection pattern (b) is banned. 704(c) subsection references ARE
		// in scope for this topic (unlike Partnerships), so no 704(c) ban.
		{
			term: "Section 704(b)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)704\\s*\\(\\s*b\\s*\\)",
			category: "allocation-validity mechanics",
			why: "Section 704(b) substantial economic effect mechanics govern whether a special allocation is respected — not how basis is computed. The Partnerships topic is the legitimate owner if any topic is; Advanced Basis is about basis movements, not allocation validity.",
		},
		{
			term: "substantial economic effect",
			pattern: "substantial\\s+economic\\s+effect",
			category: "allocation-validity mechanics",
			why: "The core 704(b) allocation-validity test — out of scope for a basis topic.",
		},
		{
			term: "capital account maintenance",
			pattern: "capital\\s+account\\s+maintenance|maintain(?:ing|ed)?\\s+capital\\s+accounts?",
			category: "allocation-validity mechanics",
			why: "Treas. Reg. 1.704-1(b)(2)(iv) capital account maintenance rules — out of scope.",
		},
		{
			term: "deficit restoration obligation",
			pattern: "deficit\\s+restoration\\s+obligation|\\bDRO\\b",
			category: "allocation-validity mechanics",
			why: "DRO as a component of substantial economic effect — out of scope.",
		},
		{
			term: "qualified income offset",
			pattern: "qualified\\s+income\\s+offset|\\bQIO\\b",
			category: "allocation-validity mechanics",
			why: "QIO as the DRO alternative in the 704(b) safe harbor — out of scope.",
		},
		{
			term: "minimum gain chargeback",
			pattern: "minimum\\s+gain\\s+chargeback|partnership\\s+minimum\\s+gain",
			category: "allocation-validity mechanics",
			why: "Minimum gain chargeback from the nonrecourse deduction safe harbor — out of scope.",
		},

		// --- Section 752 mechanics at regulatory depth ---
		// Bare Section 752 is IN scope (liability allocation concept is core),
		// but the regulatory-depth markers are out.
		{
			term: "constructive liquidation",
			pattern: "constructive\\s+liquidation",
			category: "liability allocation depth",
			why: "Sec 752 constructive liquidation test for recourse allocation — regulatory-depth mechanics out of scope.",
		},
		{
			term: "economic risk of loss",
			pattern: "economic\\s+risk\\s+of\\s+loss",
			category: "liability allocation depth",
			why: "Sec 752 economic-risk-of-loss term of art used in the constructive liquidation analysis — regulatory-depth mechanics out of scope. The concept that recourse liability follows the partner with personal liability is in scope, but 'economic risk of loss' as a named test belongs to Partnerships depth.",
		},
		{
			term: "bottom-dollar guarantee",
			pattern: "bottom[-\\s]?dollar\\s+guarantee",
			category: "liability allocation depth",
			why: "Bottom-dollar guarantee anti-abuse rule under the 752 regulations — out of scope.",
		},

		// --- Section 751 hot-asset computation (sale-of-interest territory) ---
		{
			term: "Section 751",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)751\\b",
			category: "sale-of-interest character",
			why: "Section 751 hot-asset computation on sale of partnership interest is a sale-of-interest character teaching — Partnerships topic territory, not basis.",
		},
		{
			term: "unrealized receivable",
			pattern: "unrealized\\s+receivables?",
			category: "sale-of-interest character",
			why: "Sec 751 hot-asset category — belongs to the sale-of-interest character discussion, not basis.",
		},
		{
			term: "substantially appreciated inventory",
			pattern: "substantially\\s+appreciated\\s+inventory",
			category: "sale-of-interest character",
			why: "Sec 751(b) hot-asset category test — sale-of-interest territory, out of scope.",
		},
		{
			term: "hot assets",
			pattern: "hot\\s+assets?",
			category: "sale-of-interest character",
			why: "Hot-asset terminology is associated with the sale-of-interest character carve-out, not basis. If a question is about basis, it should not depend on hot-asset analysis.",
		},

		// --- Partnership mechanics unrelated to basis ---
		{
			term: "Section 736",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)736\\b",
			category: "retiring partner mechanics",
			why: "Section 736 retiring-partner payment classification (736(a) vs 736(b)) — distribution mechanics, not basis.",
		},
		{
			term: "Section 707(a)(2)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)707\\s*\\(\\s*a\\s*\\)\\s*\\(\\s*2\\s*\\)",
			category: "disguised sale mechanics",
			why: "Disguised sale rules — out of scope, Partnerships territory.",
		},
		{
			term: "disguised sale",
			pattern: "disguised\\s+sale",
			category: "disguised sale mechanics",
			why: "Disguised sale — out of scope.",
		},
		{
			term: "Section 708(b)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)708\\s*\\(\\s*b\\s*\\)",
			category: "termination mechanics",
			why: "Section 708(b) termination rules — out of scope.",
		},
		{
			term: "technical termination",
			pattern: "technical\\s+termination",
			category: "termination mechanics",
			why: "Pre-TCJA technical termination — out of scope beyond the bare fact of repeal.",
		},
		{
			term: "Section 7704",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)7704\\b",
			category: "PTP mechanics",
			why: "Publicly traded partnership rules — out of scope.",
		},
		{
			term: "publicly traded partnership",
			pattern: "publicly\\s+traded\\s+partnership|\\bPTP\\b",
			category: "PTP mechanics",
			why: "PTP / MLP rules — out of scope.",
		},

		// --- S corporation entity-level tax mechanics unrelated to basis ---
		{
			term: "Section 1374",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1374\\b",
			category: "S corp entity-level tax",
			why: "Section 1374 S corporation built-in gains tax — S Corporations topic territory, not basis.",
		},
		{
			term: "built-in gains tax",
			pattern: "built[-\\s]in\\s+gains\\s+tax",
			category: "S corp entity-level tax",
			why: "S corporation BIG tax mechanics — out of scope.",
		},
		{
			term: "accumulated adjustments account",
			pattern: "accumulated\\s+adjustments\\s+account",
			category: "S corp distribution mechanics",
			why: "AAA mechanics beyond the bare concept — S Corporations topic territory. AAA tracks post-conversion undistributed income; the detailed adjustments and the C-corp-era E&P interaction belong to the S Corporations distribution waterfall.",
		},

		// --- QBI / 199A ---
		{
			term: "Section 199A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)199A\\b",
			category: "QBI mechanics",
			why: "Section 199A QBI deduction — separate topic, not basis.",
		},
		{
			term: "qualified business income",
			pattern: "qualified\\s+business\\s+income|\\bQBI\\s+deduction",
			category: "QBI mechanics",
			why: "QBI deduction mechanics — out of scope.",
		},

		// --- Section 163(j) business interest ---
		{
			term: "Section 163(j)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)163\\s*\\(\\s*j\\s*\\)",
			category: "adjacent-topic tax rules",
			why: "Business interest expense limitation — not a basis rule; separate topic.",
		},

		// --- Passive activity / at-risk regulatory depth ---
		// Bare "Section 465" and "Section 469" are IN scope at concept level as
		// tiers 2 and 3 of the 4-tier loss hierarchy. Only the regulatory-
		// depth markers are banned.
		{
			term: "material participation",
			pattern: "material\\s+participation\\s+tests?|seven\\s+(?:material\\s+participation\\s+)?tests?|500[-\\s]hour\\s+test",
			category: "passive activity depth",
			why: "The seven material participation tests under Temp. Reg. 1.469-5T belong to the Passive Activity topic, not to a basis topic. The 4-tier hierarchy cross-reference is at the concept level only.",
		},
		{
			term: "qualified nonrecourse financing",
			pattern: "qualified\\s+nonrecourse\\s+financing",
			category: "at-risk depth",
			why: "Sec 465(b)(6) qualified nonrecourse financing exception for real estate at-risk — Passive Activity topic depth.",
		},
		{
			term: "$25,000 rental exception",
			pattern: "\\$\\s*25,?000\\s+(?:rental|exception|allowance|offset)|rental\\s+real\\s+estate\\s+exception",
			category: "passive activity depth",
			why: "Sec 469(i) active rental real estate $25,000 exception and its phase-out — Passive Activity topic depth.",
		},
		{
			term: "real estate professional",
			pattern: "real\\s+estate\\s+professional",
			category: "passive activity depth",
			why: "Sec 469(c)(7) real estate professional exception — Passive Activity topic depth.",
		},

		// --- BBA audit regime ---
		{
			term: "BBA",
			pattern: "\\bBBA\\b|Bipartisan\\s+Budget\\s+Act|partnership\\s+representative",
			category: "audit regime",
			why: "BBA centralized partnership audit regime — out of scope for a basis topic.",
		},

		// --- Case law / regulatory anti-abuse ---
		{
			term: "Gitlitz",
			pattern: "\\bGitlitz\\b",
			category: "case law",
			why: "Gitlitz v. Commissioner S-corp debt basis case — case-law depth out of scope; the rule (debt basis from direct loans only) is in scope at concept level.",
		},
		{
			term: "Selfe",
			pattern: "\\bSelfe\\b",
			category: "case law",
			why: "Selfe v. US S-corp shareholder-guarantee case — case-law depth out of scope.",
		},
		{
			term: "1.701-2",
			pattern: "1\\.701[-\\s]?2|partnership\\s+anti[-\\s]?abuse",
			category: "anti-abuse regulation",
			why: "Treas. Reg. 1.701-2 partnership anti-abuse rule — out of scope.",
		},

		// --- Family partnership / 704(e) ---
		{
			term: "Section 704(e)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)704\\s*\\(\\s*e\\s*\\)",
			category: "family partnership mechanics",
			why: "Family partnership rules — out of scope.",
		},
	],

	notes:
		"Advanced Basis Calculations is a synthesized cross-cutting topic Slayer teaches as one integrated unit in lesson 09-basis-calculations, covering S corporation stock and debt basis, partnership outside vs inside basis, the Sec 754 election with Sec 743(b) and 734(b) downstream adjustments, Sec 704(c) built-in gain/loss allocation methods (traditional, curative, remedial), partnership liability allocation at concept level, and the four-tier loss limitation hierarchy (basis / at-risk / passive / excess business loss). The spec is anchored at group-level TCP/II/C because partnership basis is the dominant content (754/743/734/704(c) lives in TCP/II/C/2 and TCP/II/C/4), with cross-reference to TCP/II/B/1 for the S corporation basis material. The line this spec holds is basis-computation depth at Slayer's teaching level — deep partnership-allocation-validity mechanics (substantial economic effect, DRO, QIO, minimum gain chargeback), deep 752 regulatory mechanics (constructive liquidation, bottom-dollar guarantees, three-tier allocation with 704(c) minimum gain), and sale-of-interest character analysis (Sec 751 hot-asset computation) are all out of scope and live in the Partnerships topic. Sec 465/469 concept-level references are IN scope as tiers 2 and 3 of the 4-tier hierarchy; regulatory depth (7 material-participation tests, qualified nonrecourse financing, $25,000 rental exception, real estate professional) belongs to the Passive Activity and At-Risk Rules topic, which already has its own spec. S corp entity-level tax mechanics (Sec 1374 BIG tax, AAA distribution waterfall) are out — those belong to the S Corporations topic. Authored as the first spec of Stage 3 (next wave) after Stage 2's drift census identified this topic as the highest-ROI 'rightful owner' candidate — most of the census-flagged content is on-topic material that was invisible to other specs because no spec existed to whitelist it.",
};
