import type { LessonSpec } from "./types";

// Twelfth authored spec. Like the C Corporations spec, Partnerships is a
// hybrid topic in Slayer's organization. AICPA 2026 Blueprint has a
// foundational REG layer and an advanced TCP layer:
//
//   REG/V/D "Partnerships"
//     - Topic 1: Determination of ordinary business income (loss) and
//                separately stated items (including guaranteed payments)
//     - Topic 2: Basis of partner's interest
//
//   TCP/II/C "Partnerships"
//     - Topic 1: Basis of partner's interest (deeper, including recourse/
//                nonrecourse and liabilities)
//     - Topic 2: Partnership and partner elections
//     - Topic 3: Transactions between a partner and a partnership
//                (services, contributions, distributions, liquidating
//                distributions)
//     - Topic 4: Ownership changes
//
// Slayer teaches the foundational material as a single unit in lesson
// 13-partnerships covering formation (Sec 721 contributions), partner basis
// with distributive shares, and distributions/liquidations. The spec
// anchors to the group-level REG/V/D reference and the inScope list
// deliberately includes the partner-partnership transaction concepts that
// AICPA places in TCP/II/C/3.
//
// Drift surfaces (priority from the rollout handoff):
//   1. Section 704(b) special allocation mechanics (substantial economic
//      effect, capital account maintenance, DRO, QIO, minimum gain
//      chargeback) — the single biggest drift surface on this topic
//   2. Section 704(c) built-in gain/loss allocation methods (traditional,
//      curative, remedial)
//   3. Section 754 election mechanics and the 743(b) step-up / 734(b)
//      adjustment on sales and distributions
//
// Additional drift surfaces: Sec 751 hot assets, Sec 752 liability
// allocation, Sec 707(a)(2) disguised sales, Sec 736 retiring-partner
// payments, Sec 708(b) technical terminations (repealed), publicly traded
// partnerships under Sec 7704, BBA partnership audit regime, Sec 465 at-
// risk rules, Sec 469 passive activity rules.
//
// The line held by this spec is: concept-level teaching of partnership
// formation, operations, basis, and distributions at the REG foundational
// depth. Deep mechanics in any contributing area belong to TCP topics
// (Advanced Basis Calculations, Owner-Entity Transactions for related-
// party mechanics, the dedicated TCP Partnerships topic if one exists).

export const spec: LessonSpec = {
	topic: "Partnerships",
	section: "reg",
	blueprintRef: "REG/V/D",

	inScope: [
		"Partnership formation under Section 721: nonrecognition of gain or loss when a partner contributes property to a partnership in exchange for a partnership interest; no control test requirement (unlike Sec 351 for C corporations); exception for investment partnerships (Sec 721(b) concept)",
		"Partner's initial outside basis in partnership interest after contribution: carryover basis from contributed property, plus any cash contributed, minus any partnership liabilities that relieve the contributing partner, plus the partner's allocable share of existing partnership liabilities",
		"Partnership's basis in contributed property: carryover basis from the contributing partner",
		"Contribution of services for a partnership interest: concept-level distinction between receiving a capital interest (taxable compensation income to the service partner equal to the FMV of the interest received) and receiving a profits-only interest (generally not taxable at receipt under Rev Proc 93-27 at the conceptual level)",
		"Partner's outside basis adjustments during ongoing operations: increased by distributive share of ordinary income AND separately stated income items (including tax-exempt income); increased by the partner's allocable share of partnership liabilities; decreased by distributive share of losses and nondeductible expenses; decreased by cash and property distributions received; decreased by decreases in the partner's share of liabilities; basis cannot go below zero (excess loss suspended)",
		"Partnership ordinary business income computation: gross receipts minus deductions, excluding items that must be separately stated; the concept that ordinary business income is reported at the partnership level but passes through to partners per their distributive shares",
		"Separately stated items concept: items that retain their character at the partner level and must be disclosed separately on Schedule K-1 (capital gains and losses, Sec 1231 gains and losses, dividends, interest income, charitable contributions, investment interest expense, Section 179 deduction, tax credits, foreign taxes)",
		"Guaranteed payments under Section 707(c) at the concept level: fixed payments to a partner for services rendered or for the use of capital, determined without regard to partnership income; treated as ordinary income to the receiving partner; deductible by the partnership in computing ordinary business income; subject to self-employment tax in the partner's hands",
		"Partner's share of partnership liabilities affecting basis at the concept level: the distinction between recourse liabilities (allocated to the partner who bears the economic risk of loss) and nonrecourse liabilities (generally allocated according to profit-sharing ratios); the concept that an increase in allocated liabilities increases the partner's basis and a decrease is treated as a deemed cash distribution",
		"Nonliquidating (current) distributions to a partner at the concept level: cash distributions are tax-free to the extent of the partner's outside basis, with any excess treated as capital gain; property distributions are generally tax-free, with the partner taking a carryover basis in the property (limited to the partner's remaining outside basis); the partner's outside basis is reduced by the amount of cash or the basis of property received",
		"Liquidating distributions completing the termination of a partner's interest at the concept level: cash distributions trigger gain if they exceed outside basis and trigger loss only if the partner receives solely cash, unrealized receivables, and inventory (and the total is less than outside basis); property distributions absorb the partner's remaining outside basis after cash is applied first",
		"Sale or exchange of a partner's partnership interest at the concept level: generally a capital gain or loss equal to the amount realized (cash plus assumed share of partnership liabilities) minus the partner's outside basis; the existence of the Sec 751 'hot asset' rule that produces ordinary income on the portion attributable to unrealized receivables and substantially appreciated inventory (the EXISTENCE of the rule, not the computation)",
		"Partnership tax year determination at the concept level: the majority-interest rule (partners owning more than 50% must have the same tax year), the principal-partners rule (if no majority interest, partners owning 5% or more must have the same year), the least-aggregate-deferral rule (fallback)",
		"Partnership operational concepts: no entity-level federal income tax (flow-through taxation); Form 1065 U.S. Return of Partnership Income; Schedule K-1 reporting distributive shares to partners; the partner reports their distributive share whether or not distributions are made (the 'phantom income' concept)",
		"Limited partnership vs. general partnership at the concept level: general partners have unlimited liability and management authority; limited partners have liability limited to their investment and may not actively manage without losing the limitation; LLCs taxed as partnerships are the modern vehicle of choice",
		"LLC tax classification at the concept level: a domestic LLC with two or more members is classified as a partnership by default; a single-member LLC is disregarded as separate from its owner by default; check-the-box election permits election of corporate classification",
	],

	outOfScope: [
		"Section 704(b) special allocation mechanics — substantial economic effect test (the three prongs: capital account maintenance, liquidation in accordance with positive capital accounts, and deficit restoration obligation), qualified income offset (QIO), minimum gain chargeback, partner nonrecourse deductions, book-tax disparities",
		"Section 704(c) built-in gain and loss allocation for contributed property — the three methods (traditional, traditional with curative allocations, remedial method), reverse Sec 704(c) allocations on revaluations, ceiling-rule limitations, layered 704(c) on property with multiple built-in gains",
		"Section 704(e) family partnership rules and the assignment-of-income doctrine as applied to family partnerships",
		"Section 707(a)(2) disguised sale rules — the two-year presumption, debt-financed distribution exception, qualified liability rules, preformation capital expenditure rules",
		"Section 707(b) related-party sales rules between a partner and a partnership",
		"Section 736 payments to a retiring or deceased partner — the split between Sec 736(a) payments (distributive share or guaranteed payment treatment) and Sec 736(b) payments (treated as distributions in exchange for partnership property), the service partner vs. capital-intensive partner distinction",
		"Section 751 hot asset computation — the specific ordinary-income asset categories (unrealized receivables, substantially appreciated inventory), the calculation of the ordinary-income portion on sale of a partnership interest, Sec 751(b) unproportionate distributions",
		"Section 752 partnership liability allocation mechanics — the constructive liquidation test for recourse liability allocation, economic risk of loss analysis, three-tier allocation rules for nonrecourse liabilities (first minimum gain, then Sec 704(c) minimum gain, then profit ratio), bottom-dollar guarantee rules",
		"Section 754 election and subsequent basis adjustments — the election procedure, Sec 743(b) adjustment for sale or exchange of a partnership interest, Sec 734(b) adjustment for distributions with substantial basis reduction, the allocation of a 743(b) adjustment among partnership assets under Sec 755",
		"Section 708(b) technical termination of partnerships (repealed by TCJA for tax years beginning after 2017) beyond the concept of its existence and repeal",
		"Publicly traded partnerships under Section 7704 — the passive-type income test, qualifying income categories, transition relief, UBIA calculations",
		"Electing large partnership rules under former Sec 771-777",
		"BBA partnership audit regime — the partnership representative concept, imputed underpayment computation, push-out election, modification procedures, consistency requirement",
		"Section 465 at-risk rules beyond the concept of loss limitation — the at-risk amount computation, recourse vs. nonrecourse financing at risk, qualified nonrecourse financing exception",
		"Section 469 passive activity loss limitations at mechanics depth — active/material participation tests, recharacterization of passive income, grouping rules (belongs to the Passive Activity topic)",
		"Section 199A qualified business income deduction as applied to partnerships — QBI computation, W-2 wage limitation, unadjusted basis immediately after acquisition (UBIA), specified service trade or business (SSTB) definition, phase-in thresholds",
		"Section 179 deduction mechanics beyond the concept that it is separately stated — the dollar cap, phase-out threshold, business income limitation, partnership-level vs partner-level application",
		"Partnership mergers and divisions under Treas. Reg. 1.708-1(c) and (d)",
		"Family partnership rules under Sec 704(e)",
		"Anti-abuse rules under Treas. Reg. 1.701-2",
		"Special allocation of depreciation and other items under Treas. Reg. 1.704-1(b)(4)",
		"Sec 465 and Sec 469 application at mechanics depth (belongs to Passive Activity and At-Risk Rules topic)",
	],

	keyStandards: [
		"IRC §701 — No partnership-level tax; flow-through taxation",
		"IRC §702 — Character of income items at the partner level (separately stated concept)",
		"IRC §704(d) — Partner loss limited to basis (concept)",
		"IRC §705 — Determination of partner's outside basis",
		"IRC §706 — Taxable year of partnership",
		"IRC §707(c) — Guaranteed payments",
		"IRC §721 — Nonrecognition on contribution of property to partnership",
		"IRC §722 — Partner's basis in partnership interest",
		"IRC §723 — Partnership's basis in contributed property",
		"IRC §731 — Gain recognition on partnership distributions (concept)",
		"IRC §732 — Basis of distributed property",
		"IRC §741 — Character of gain or loss on sale or exchange of partnership interest",
		"IRC §751 — Unrealized receivables and inventory items (existence of hot asset rule)",
		"Form 1065 — U.S. Return of Partnership Income",
		"Schedule K-1 (Form 1065) — Partner's share of income, deductions, credits",
	],

	commonMisconceptions: [
		"Believing a partner recognizes income only when cash is distributed. Partners are taxed on their distributive share of partnership income whether or not it is actually distributed — this is the 'phantom income' feature of flow-through taxation.",
		"Confusing a partner's inside basis (the partnership's basis in its assets) with the partner's outside basis (the partner's basis in their partnership interest). The two start equal at formation but diverge over time due to distributive-share allocations, distributions, and liability allocations.",
		"Forgetting that partner basis includes the partner's share of partnership liabilities. A partnership takes on a mortgage; the partners' bases go up, not down. A partnership pays off a mortgage; the partners' bases go down.",
		"Believing a nonrecognition contribution under Section 721 requires the contributing partner to have control of the partnership. Section 721 has NO control requirement — this distinguishes partnership formation from C corporation formation under Sec 351.",
		"Treating guaranteed payments as a distribution to a partner. Guaranteed payments are ordinary income separately paid to the partner for services or capital use; they are deducted by the partnership when computing ordinary business income and are not reductions to the partner's capital account.",
		"Believing all partnership income is subject to self-employment tax. For a general partner, the distributive share of trade-or-business income plus guaranteed payments is SE income. For a limited partner, the distributive share is generally NOT SE income (only guaranteed payments for services are).",
		"Classifying all partnership items as ordinary business income. Items that retain their character at the partner level (capital gains, Sec 1231 items, charitable contributions, interest income, dividends) must be reported separately on Schedule K-1 so each partner applies the character to their own situation.",
		"Believing a partner can deduct a loss in excess of their basis. A partner's deductible loss is limited to outside basis under Sec 704(d); excess loss is suspended and carried forward until sufficient basis is restored.",
		"Confusing the contribution of services for a capital interest with the contribution of services for a profits interest. A capital interest in exchange for services is taxable compensation income to the partner; a pure profits interest generally is not (per Rev Proc 93-27 at the conceptual level).",
		"Believing that cash distributions in excess of basis create ordinary income. Excess cash distributions are capital gain (because the partner is effectively reducing their investment), not ordinary income.",
		"Treating a partnership distribution of appreciated property as a gain recognition event for the partnership. Under Sec 731, neither the partnership nor the partner generally recognizes gain on a nonliquidating distribution of property; the partner takes a carryover basis in the property limited to their remaining outside basis.",
		"Believing that a partnership interest is always a capital asset for sale purposes. The sale generally produces capital gain or loss, but the Sec 751 hot-asset rule carves out an ordinary-income portion attributable to unrealized receivables and substantially appreciated inventory.",
		"Forgetting that an LLC with two or more members is classified as a partnership by default. Many candidates treat an LLC as its own entity type for tax purposes; the tax classification is determined under the check-the-box rules.",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		{
			term: "Section 704(b)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)704\\s*\\(\\s*b\\s*\\)",
			category: "special allocation mechanics",
			why: "Section 704(b) substantial economic effect test and capital account maintenance rules are the biggest drift surface for this topic. The concept that distributive shares generally follow the partnership agreement is in scope; the 704(b) mechanics are not.",
		},
		{
			term: "Section 704(c)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)704\\s*\\(\\s*c\\s*\\)",
			category: "special allocation mechanics",
			why: "Section 704(c) built-in gain/loss allocation mechanics (traditional, curative, remedial methods) — out of scope.",
		},
		{
			term: "substantial economic effect",
			pattern: "substantial\\s+economic\\s+effect",
			category: "special allocation mechanics",
			why: "Substantial economic effect test is the core 704(b) mechanics marker — out of scope.",
		},
		{
			term: "capital account maintenance",
			pattern: "capital\\s+account\\s+maintenance|maintain(?:ing|ed)?\\s+capital\\s+accounts?",
			category: "special allocation mechanics",
			why: "Treas. Reg. 1.704-1(b)(2)(iv) capital account maintenance rules — out of scope.",
		},
		{
			term: "deficit restoration obligation",
			pattern: "deficit\\s+restoration\\s+obligation|\\bDRO\\b",
			category: "special allocation mechanics",
			why: "DRO as a component of the substantial economic effect test — out of scope.",
		},
		{
			term: "qualified income offset",
			pattern: "qualified\\s+income\\s+offset|\\bQIO\\b",
			category: "special allocation mechanics",
			why: "QIO as an alternative to DRO under the 704(b) safe harbor — out of scope.",
		},
		{
			term: "minimum gain chargeback",
			pattern: "minimum\\s+gain\\s+chargeback|partnership\\s+minimum\\s+gain",
			category: "special allocation mechanics",
			why: "Minimum gain chargeback and partnership minimum gain concepts from the nonrecourse deduction safe harbor — out of scope.",
		},
		{
			term: "curative allocation",
			pattern: "curative\\s+allocation",
			category: "704(c) mechanics",
			why: "704(c) curative allocation method — out of scope.",
		},
		{
			term: "remedial method",
			pattern: "remedial\\s+(?:method|allocation)",
			category: "704(c) mechanics",
			why: "704(c) remedial method — out of scope.",
		},
		{
			term: "ceiling rule",
			pattern: "ceiling\\s+rule",
			category: "704(c) mechanics",
			why: "704(c) traditional method ceiling rule — out of scope.",
		},
		{
			term: "Section 751",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)751\\b",
			category: "hot asset mechanics",
			why: "Section 751 hot asset computation beyond the existence of the rule — out of scope.",
		},
		{
			term: "unrealized receivable",
			pattern: "unrealized\\s+receivables?",
			category: "hot asset mechanics",
			why: "Unrealized receivables (Sec 751 hot asset category) at the mechanics level — out of scope.",
		},
		{
			term: "substantially appreciated inventory",
			pattern: "substantially\\s+appreciated\\s+inventory",
			category: "hot asset mechanics",
			why: "Substantially appreciated inventory test — out of scope.",
		},
		{
			term: "Section 752",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)752\\b",
			category: "liability allocation mechanics",
			why: "Section 752 partnership liability allocation mechanics (constructive liquidation, economic risk of loss, three-tier allocation) — out of scope beyond the concept.",
		},
		{
			term: "constructive liquidation",
			pattern: "constructive\\s+liquidation",
			category: "liability allocation mechanics",
			why: "Sec 752 constructive liquidation test for recourse liability allocation — out of scope.",
		},
		{
			term: "economic risk of loss",
			pattern: "economic\\s+risk\\s+of\\s+loss",
			category: "liability allocation mechanics",
			why: "Sec 752 economic risk of loss standard for recourse liability allocation — out of scope beyond the concept that recourse allocation follows risk.",
		},
		{
			term: "Section 754",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)754\\b",
			category: "754 election mechanics",
			why: "Section 754 election and downstream basis adjustments — out of scope.",
		},
		{
			term: "Section 743(b)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)743\\s*\\(\\s*b\\s*\\)",
			category: "754 election mechanics",
			why: "Section 743(b) step-up on sale of partnership interest with 754 election — out of scope.",
		},
		{
			term: "Section 734(b)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)734\\s*\\(\\s*b\\s*\\)",
			category: "754 election mechanics",
			why: "Section 734(b) adjustment on distributions with 754 election — out of scope.",
		},
		{
			term: "Section 755",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)755\\b",
			category: "754 election mechanics",
			why: "Section 755 allocation of 743(b) adjustment among partnership assets — out of scope.",
		},
		{
			term: "Section 736",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)736\\b",
			category: "retiring partner mechanics",
			why: "Section 736 payments to retiring or deceased partners (736(a) vs 736(b) split) — out of scope.",
		},
		{
			term: "Section 707(a)(2)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)707\\s*\\(\\s*a\\s*\\)\\s*\\(\\s*2\\s*\\)",
			category: "disguised sale mechanics",
			why: "Section 707(a)(2) disguised sale rules — out of scope.",
		},
		{
			term: "disguised sale",
			pattern: "disguised\\s+sale",
			category: "disguised sale mechanics",
			why: "Disguised sale analysis under Sec 707(a)(2) — out of scope.",
		},
		{
			term: "Section 708(b)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)708\\s*\\(\\s*b\\s*\\)",
			category: "technical termination",
			why: "Section 708(b) technical termination (repealed by TCJA) — out of scope beyond the bare fact of its existence and repeal.",
		},
		{
			term: "technical termination",
			pattern: "technical\\s+termination",
			category: "technical termination",
			why: "Technical termination of a partnership under pre-TCJA Sec 708(b)(1)(B) — out of scope beyond the bare fact of repeal.",
		},
		{
			term: "Section 7704",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)7704\\b",
			category: "PTP mechanics",
			why: "Section 7704 publicly traded partnership rules — out of scope.",
		},
		{
			term: "publicly traded partnership",
			pattern: "publicly\\s+traded\\s+partnership|\\bPTP\\b",
			category: "PTP mechanics",
			why: "PTP / master limited partnership rules — out of scope.",
		},
		{
			term: "Section 199A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)199A\\b",
			category: "QBI mechanics",
			why: "Section 199A qualified business income deduction as applied to partnerships — QBI computation is a separate topic.",
		},
		{
			term: "qualified business income",
			pattern: "qualified\\s+business\\s+income|\\bQBI\\s+deduction",
			category: "QBI mechanics",
			why: "QBI deduction mechanics — separate topic.",
		},
		{
			term: "Section 465",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)465\\b",
			category: "at-risk mechanics",
			why: "Section 465 at-risk rules beyond the concept — Passive Activity and At-Risk Rules topic.",
		},
		{
			term: "Section 469",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)469\\b",
			category: "passive activity mechanics",
			why: "Section 469 passive activity loss limitations at mechanics depth — Passive Activity topic.",
		},
		{
			term: "BBA",
			pattern: "\\bBBA\\b|Bipartisan\\s+Budget\\s+Act|partnership\\s+representative",
			category: "BBA audit regime",
			why: "BBA partnership audit regime — out of scope.",
		},
	],

	notes:
		"Slayer's Partnerships topic spans the foundational REG depth (REG/V/D — ordinary business income, separately stated items, partner's basis) and some advanced TCP depth (TCP/II/C/3 partner-partnership transactions including formation, distributions, and liquidations). Slayer teaches the material as one integrated unit in lesson 13-partnerships: Sec 721 formation, basis maintenance, distributive shares, guaranteed payments, nonliquidating and liquidating distributions, sale of partnership interest at concept level. Deep mechanics in any direction — 704(b) special allocations, 704(c) built-in gain methods, 754 election with 743(b) step-up and 734(b) adjustment, 751 hot asset computation, 752 liability allocation mechanics, 736 retiring-partner payments, 707(a)(2) disguised sales — belong to advanced TCP topics (notably Advanced Basis Calculations for 752 and 754 work) or are out of scope entirely. The drift surface is wide because published CPA-prep material routinely teaches 704(b) capital account maintenance at significant depth; defend actively.",
};
