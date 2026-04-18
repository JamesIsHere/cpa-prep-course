import type { LessonSpec } from "./types";

// TCP/III/D — "Tax planning for partnerships."
//
// No direct DB topic match. This is the PLANNING group for partnerships,
// distinct from TCP/II/C (compliance — basis, elections, transactions,
// ownership changes) and REG Partnerships (formation, allocation, §704(b)).
//
// AICPA representative tasks cover planning strategies: allocation
// optimization, guaranteed payment structuring, §754 election planning,
// and partnership agreement design for tax efficiency.

export const spec: LessonSpec = {
	topic: "Partnership Tax Planning",
	section: "tcp",
	primaryRef: "TCP/III/D",
	secondaryRefs: [],

	inScope: [
		"Special allocation planning under §704(b) — designing partnership agreement allocations that have substantial economic effect, using targeted allocations to shift specific items (depreciation, credits, income) to partners who benefit most",
		"Guaranteed payment structuring — distinguishing guaranteed payments (§707(c), ordinary income to recipient, deduction to partnership) from distributive share; planning for timing of income recognition and SE tax implications",
		"Section 754 election planning — when to make/not make the §754 election for basis adjustments on transfers (§743(b)) and distributions (§734(b)), impact on incoming partner's inside basis, ability to revoke only with IRS consent",
		"Partnership interest transfers — planning around §743(b) basis adjustments for the transferee, mandatory basis adjustment for partnerships with substantial built-in loss (>$250,000)",
		"Distribution planning — current vs. liquidating distributions, property distribution planning to avoid gain recognition (§731 gain only when cash exceeds outside basis), timing distributions to optimize basis",
		"Hot asset rules under §751 at planning level — structuring transactions to manage ordinary income recognition on sale or exchange of partnership interest with substantially appreciated inventory or unrealized receivables",
		"Disguised sale rules under §707(a)(2)(B) at concept level — structuring contributions and distributions to avoid disguised sale treatment (the 2-year presumption), planning for genuine investment intent",
		"Partnership agreement design — allocating items to minimize aggregate partner tax burden (shifting income to lower-bracket partners, shifting losses to partners with sufficient basis and activity to use them), loss limitation awareness in allocation design",
		"Self-employment tax planning for partners — general partners' distributive share subject to SE tax, limited partners' distributive share generally exempt (except for guaranteed payments), LLC member SE tax treatment under proposed regulations",
		"Conversion and restructuring — converting partnership to other entity types (S corp, C corp) for tax planning purposes, tax consequences of the conversion at concept level",
	],

	outOfScope: [
		"Partnership basis computation mechanics — covered in TCP/II/C (Advanced Basis Calculations) spec",
		"Section 704(b) substantial economic effect regulations at detailed compliance level — covered in REG Partnerships spec",
		"Section 704(c) built-in gain/loss allocation methods (traditional, remedial, curative) at computation depth — REG/compliance topic",
		"Detailed disguised sale regulations and the 7-year debt-financed distribution rules",
		"Partnership anti-abuse rules under Reg 1.701-2 at depth",
		"Tiered partnership structures and aggregation rules at depth",
		"Partnership merger and division rules under §708 at computation depth",
		"Family partnership rules under §704(e) at depth — gift of partnership interest, donee's distributive share limitations",
		"Entity choice comparison framework at depth — covered in TCP/III/A spec",
		"Publicly traded partnership (PTP) taxation — §7704 rules, exchange-traded partnership issues",
	],

	keyStandards: [
		"IRC §704(b) — Distributive share / substantial economic effect",
		"IRC §707(c) — Guaranteed payments",
		"IRC §754 — Election for basis adjustments",
		"IRC §743(b) — Basis adjustment on transfer of partnership interest",
		"IRC §734(b) — Basis adjustment on distribution",
		"IRC §751 — Hot assets (unrealized receivables, substantially appreciated inventory)",
		"IRC §731 — Distribution gain/loss recognition rules",
		"IRC §707(a)(2)(B) — Disguised sales",
		"IRC §1402(a)(13) — Limited partner SE tax exception",
	],

	commonMisconceptions: [
		"Believing all partnership allocations are valid for tax purposes. Allocations must have substantial economic effect under §704(b) — allocations that lack economic substance (e.g., shifting losses to high-bracket partners without corresponding economic risk) will be reallocated by the IRS according to partners' interests in the partnership.",
		"Treating the §754 election as always beneficial. The election applies to ALL future transfers and distributions (not just the triggering event), and can create administrative burden. It can also produce downward adjustments for future transferees if assets have declined in value.",
		"Believing property distributions always trigger gain to the distributee partner. Under §731, a partner recognizes gain on a distribution only when cash (including deemed cash from debt relief) exceeds outside basis. Property distributions generally do NOT trigger gain to the distributee.",
		"Confusing guaranteed payments with distributions for SE tax purposes. Guaranteed payments are subject to self-employment tax AND ordinary income treatment. Distributions from a partner's distributive share of partnership income have different SE tax treatment depending on the partner's status (general vs. limited).",
		"Believing the §754 election can be easily revoked. Once made, the §754 election is binding for all subsequent years unless the IRS grants permission to revoke — which requires showing a change in circumstances and is not routinely granted.",
		"Assuming hot asset treatment only applies to sales. Section 751 applies to both sales/exchanges of partnership interests AND certain distributions — any transaction that shifts the economic interest in hot assets between partners can trigger ordinary income recognition.",
	],

	representativeDifficulty: "hard",

	notes:
		"TCP/III/D is the planning counterpart to TCP/II/C (compliance). Questions should present multi-partner scenarios requiring allocation optimization, §754 election analysis, or distribution structuring. This is a higher-difficulty group testing synthesis of partnership tax rules into planning recommendations.",
};
