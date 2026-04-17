import type { LessonSpec } from "./types";

// Twenty-third authored spec — sixth spec of Stage 3. Selected from
// census v2 as rank #5: 56 questions, 15 flagged (27%). Top terms:
// `Section 199A` (6), `qualified business income` (6), `Section 704(b)`
// (4). Four prior specs (Partnerships, S Corporations, Advanced Basis,
// Foreign Currency Transactions) explicitly push §199A/QBI to "a
// separate topic" in their outOfScope, and the Slayer lesson
// 12-entity-choice.mdx uses QBI at the comparison level as a core
// decision input (C corp 21% vs pass-through 37% − 20% QBI). This spec
// is the rightful-owner counterpart for QBI as an entity-selection
// decision variable. The §704(b) flags are expected cleanup tail
// (partnership allocation depth that belongs to Partnerships / Advanced
// Basis).
//
// ## Anchor
//
// AICPA TCP/III/A "Formation and liquidation of business entities"
// explicitly lists the tasks "Derive the tax implications of entity
// selection and formation decisions across multiple entity types and
// compare the results" and "Prepare a schedule that is used as an input
// to an entity selection decision that calculates the tax implications
// of noncash property transactions for multiple entity types." That is
// literally this topic. The scaffolder mis-anchored to TCP/III/B (C
// corp tax planning); corrected to TCP/III/A.
//
// Note: Entity Formation and Liquidation (future census rank #7 spec)
// will likely also anchor at TCP/III/A but will scope to the
// MECHANICS of each entity's formation (§351, §721, §1361 eligibility
// election, §331/§332 liquidation, §736 retirement payments). Entity
// Choice and Planning owns the CROSS-ENTITY COMPARISON decision
// framework and the variables that drive it (double taxation, QBI,
// SE tax, loss utilization, basis comparison, shareholder
// eligibility). Two specs, one AICPA group, different scope lines.
//
// ## Scope line
//
// This topic owns the cross-entity comparison framework for C corps,
// S corps, partnerships, LLCs (default and check-the-box), and sole
// proprietorships; the double-taxation analysis for C corps
// (21% entity rate + qualified dividend or §301 distribution treatment
// at the shareholder level); §199A qualified business income
// deduction at the comparison level (the 20% deduction, taxable
// income threshold phase-in, SSTB concept, the effective rate impact
// on pass-through vs C corp choice); SE tax treatment differences
// (general partner vs limited partner vs S corp reasonable
// compensation planning); loss utilization differences (entity-level
// NOL for C corps vs pass-through loss flow-through subject to basis,
// at-risk, passive, and excess business loss limits); basis mechanics
// at the comparison level (partner outside basis includes share of
// partnership liabilities whereas S corp shareholder basis includes
// only direct shareholder loans to the corporation); S corp
// eligibility requirements (100-shareholder limit, eligible
// shareholder types, one class of stock, domestic corporation);
// check-the-box classification election for eligible entities; the
// effect of current-law provisions (TCJA flat 21% rate, §199A,
// §163(j) interest limitation interaction, 80% NOL rule, excess
// business loss limit) on the entity-choice decision; and entity
// conversion tax consequences at concept level (C-to-S election,
// S termination, LLC-to-corp check-the-box change).
//
// Not this topic: detailed §199A mechanics (W-2 wage limit
// computation formulas, UBIA of qualified property computation,
// SSTB phase-in math, aggregation rules under Reg. §1.199A-4) —
// those belong to Individual Taxation: Deductions; §704(b)
// substantial economic effect allocation regulations — Partnerships
// or Advanced Basis Calculations depth; §351 / §721 / §731 / §1361
// entity-specific formation mechanics — Entity Formation and
// Liquidation (future) or the existing C Corporations, S
// Corporations, Partnerships specs; hot asset mechanics under §751;
// built-in gains tax under §1374; AAA mechanics for S corp
// distributions; §382 NOL limitation mechanics; detailed
// reasonable-compensation IRS enforcement standards and case law.

export const spec: LessonSpec = {
	topic: "Entity Choice and Planning",
	section: "tcp",
	blueprintRef: "TCP/III/A",

	inScope: [
		"The cross-entity comparison framework for federal income tax purposes: C corporation (entity-level tax at flat 21% plus shareholder-level tax on qualified dividends), S corporation (pass-through to shareholders with preservation of character, no entity-level tax except §1374 built-in gains and §1375 passive investment income tax at concept level), partnership / multi-member LLC (pass-through with flexible allocations subject to §704(b) substantial economic effect at concept level), single-member LLC (disregarded entity for federal tax, reported on the owner's return), and sole proprietorship (Schedule C on the owner's Form 1040).",
		"The double-taxation analysis for C corporations: a flat 21% entity-level tax on taxable income, followed by a shareholder-level tax on distributions treated as qualified dividends (at the 0/15/20% preferential rate) or as ordinary dividends when holding-period or other qualification rules are not met. Distributions in excess of current and accumulated earnings and profits are treated first as a return of capital (reducing basis) and then as capital gain under §301.",
		"The break-even comparison between C corp treatment and pass-through treatment: C corp favors retention (21% current tax deferred until distribution), pass-through favors distribution (single level of tax at individual rates, potentially reduced by the §199A QBI deduction). The candidate should recognize that the optimal choice depends on the distribution policy, the owner's marginal rate, the availability of QBI, and the time horizon.",
		"§199A qualified business income deduction at the comparison level: up to 20% of qualified business income from a pass-through trade or business, effectively reducing the top individual rate on pass-through income from 37% to approximately 29.6% (before NIIT). QBI is not available to C corporations or to wages earned as an employee. The deduction is a below-the-line individual deduction available to S corp shareholders, partners, and sole proprietors on their individual returns.",
		"The §199A taxable income threshold structure at concept level: below the threshold (approximately $197,300 single / $394,600 MFJ for 2025), the full 20% deduction applies without W-2 wage or UBIA limitations and without SSTB exclusion. Above the upper threshold, the deduction is limited to the greater of 50% of W-2 wages or 25% of W-2 wages plus 2.5% of UBIA of qualified property. Between thresholds, a phase-in applies. The specific formula details belong to Individual Taxation: Deductions; the entity-choice analysis uses the concept that high-income owners may face limited QBI, altering the pass-through vs C corp comparison.",
		"Specified service trade or business (SSTB) concept: certain personal-service businesses (health, law, accounting, actuarial, performing arts, consulting, athletics, financial services, brokerage, any trade whose principal asset is the reputation or skill of employees/owners) lose the QBI deduction above the upper threshold. Engineering and architecture are specifically excluded from the SSTB definition. The SSTB concept is a key entity-choice variable for professional service firms — a high-income SSTB owner may find C corp treatment more attractive because the pass-through advantage (QBI) is phased out.",
		"Self-employment tax treatment differences across entity types: a sole proprietor pays SE tax on all net earnings from self-employment; a general partner pays SE tax on distributive share of ordinary partnership income; a limited partner generally does not pay SE tax on distributive share (with exceptions for guaranteed payments and for active LLC members); an S corporation shareholder-employee pays FICA only on wages (reasonable compensation), not on distributions; a C corporation shareholder-employee pays FICA on wages and does not pay SE tax on dividends.",
		"S corporation reasonable compensation planning: S corp shareholder-employees must receive reasonable compensation subject to FICA before taking distributions; the IRS challenges unreasonably low compensation that converts wages to FICA-free distributions. The tax savings come from avoiding the 15.3% FICA/SE tax on the distribution portion, making S corps attractive for profitable service businesses. The concept of reasonable compensation as the dividing line is in scope; the detailed IRS enforcement standards and case law are not.",
		"Loss utilization differences across entity types: C corp losses create a net operating loss at the entity level (80% of taxable income limitation under the TCJA, no carryback, indefinite carryforward); pass-through losses flow through to owners subject in order to (1) basis (outside basis for partners, stock + direct loan basis for S shareholders), (2) the at-risk limitation under §465, (3) the passive activity loss limitation under §469, and (4) the excess business loss limitation under §461(l). An entity-choice analysis for a startup with expected early losses often favors pass-through treatment because losses are currently deductible against the owner's other income rather than trapped at the entity level.",
		"Basis mechanics at the comparison level: a partner's outside basis in a partnership interest includes the partner's share of partnership liabilities (recourse allocated to the economic risk bearer, nonrecourse shared among partners), which creates basis to absorb losses without additional out-of-pocket contribution. An S corporation shareholder's stock basis does NOT include the shareholder's share of entity-level debt; only direct loans from the shareholder to the corporation create debt basis. This difference materially affects the entity-choice analysis for leveraged businesses.",
		"S corporation eligibility requirements for entity selection: a domestic corporation with no more than 100 eligible shareholders (individuals, estates, certain trusts including grantor trusts / qualified Subchapter S trusts (QSSTs) / electing small business trusts (ESBTs), and certain tax-exempt organizations); ineligible shareholders are partnerships, corporations (with limited exceptions), and nonresident aliens; one class of stock (though differences in voting rights are permitted if all shares have identical rights to distribution and liquidation proceeds); and not a disqualified corporation (e.g., banks using the reserve method, insurance companies taxed as such, certain DISCs). An entity-choice analysis must verify eligibility before recommending the S corp alternative.",
		"Check-the-box classification election under Reg. §301.7701-3: eligible entities (domestic unincorporated entities with two or more members default to partnership classification; single-member unincorporated entities default to disregarded; all can elect corporation). Per se corporations (state-law corporations) cannot elect out. The 60-month rule restricts a second election after a first change. Check-the-box is a flexibility feature of the LLC structure that expands entity-choice options.",
		"Entity conversion tax consequences at concept level: C-to-S election triggers the §1374 built-in gains tax regime (at concept level only — the specific mechanics belong to the S Corporations topic); S termination can result from losing S eligibility (e.g., transferring shares to an ineligible shareholder), from a §1362 revocation, or from exceeding 25% passive investment income for three consecutive years when the corporation has accumulated E&P; LLC-to-corporation check-the-box change is treated as a §351 transfer of all assets in exchange for stock followed by distribution of the stock to the members.",
		"Interaction of current-law provisions with the entity-choice decision: the TCJA flat 21% corporate rate changed the historical presumption against C corps; §199A partially restored the pass-through advantage but with phase-in complications for SSTBs and high-income owners; §163(j) business interest limitation treats entity types differently (partnership allocates disallowed interest to partners, C corp and S corp track at entity level); the 80% NOL rule and loss of carryback affect startup loss utilization for C corps; §461(l) excess business loss limitation affects high-income pass-through owners.",
		"Strategic entity-selection analysis: for a startup with expected early losses, pass-through is often preferred to enable loss flow-through to owners (subject to basis); for a mature profitable business retaining earnings for reinvestment, C corp may be preferred for the 21% current rate; for a service business with modest income below the SSTB phase-out, S corp is often optimal to combine QBI deduction with reasonable-compensation FICA savings; for a real-estate-heavy leveraged business, partnership/LLC is often preferred because entity debt creates outside basis for loss absorption.",
		"Common planning moves within an entity type rather than conversion: C corp retention vs dividend policy; S corp reasonable compensation calibration; partnership special allocations (at concept level — the §704(b) substantial economic effect mechanics belong elsewhere); LLC member-manager status for SE tax treatment.",
	],

	outOfScope: [
		"§199A mechanics at computation depth: the W-2 wage limitation formula (greater of 50% of W-2 wages or 25% + 2.5% of UBIA), UBIA of qualified property computation under Reg. §1.199A-2, SSTB phase-in arithmetic, aggregation rules under Reg. §1.199A-4, rental real estate safe harbor under Rev. Proc. 2019-38, trust and estate QBI allocation. These belong to Individual Taxation: Deductions. Entity Choice uses QBI at the concept and comparison level only",
		"§704(b) substantial economic effect allocation regulations at depth — capital account maintenance (Reg. §1.704-1(b)(2)(iv)), qualified income offset, minimum gain chargeback, partner nonrecourse debt allocation rules, §704(c) built-in gain/loss allocation methods (traditional, traditional with curative, remedial). Partnerships and Advanced Basis Calculations territory",
		"§351 corporate formation mechanics at depth — 80% control test, boot recognition under §351(b), assumption of liabilities under §357, built-in loss limitation under §362(e)(2), collapsing the control group for partner contributions. Entity Formation and Liquidation or C Corporations territory",
		"§721 partnership formation mechanics at depth — nonrecognition rules, exceptions (investment company partnerships under §721(b), disguised sales under §707(a)(2)(B)), §704(c) built-in gain tracking for contributed property. Partnerships or Advanced Basis territory",
		"§1361 S corp eligibility and election rules at regulatory depth — QSST and ESBT trust election mechanics, one-class-of-stock Treasury regulations, late election relief under Rev. Proc. 2013-30, inadvertent termination relief under §1362(f). S Corporations (REG) topic territory",
		"§331 / §332 corporate liquidation mechanics — complete liquidation gain recognition, §332 parent-subsidiary nonrecognition, §337 subsidiary recognition, §336 entity-level gain recognition. Entity Formation and Liquidation territory",
		"§736 partnership retirement payments — §736(a) vs §736(b) character, unrealized receivables and goodwill allocation. Partnerships or Advanced Basis Calculations territory",
		"§751 hot assets mechanics — unrealized receivables definition at depth, substantially appreciated inventory definition at depth, look-through rules under §751(b), §751(a) ordinary income recharacterization. Partnerships or Advanced Basis territory",
		"§1374 built-in gains tax computation mechanics — recognition period computation, net unrealized built-in gain determination, built-in gains tax base, NOL absorption against BIG tax. S Corporations territory; Entity Choice references §1374 only as a planning consideration for C-to-S conversion",
		"§1375 passive investment income tax computation mechanics — excess net passive income formula, the 25% threshold calculation, termination after three consecutive years. S Corporations territory",
		"AAA, OAA, PTI, E&P tracking mechanics for S corporation distributions — ordering rules under §1368, distribution sourcing, the AAA bypass election. S Corporations territory",
		"§382 NOL limitation mechanics after ownership changes — 5% shareholder tracking, long-term tax-exempt rate, built-in gain adjustments. Separate NOL topic; Entity Choice references NOL carryforward availability only as a comparison variable",
		"Detailed reasonable compensation enforcement — IRS reasonable compensation multi-factor analysis, the Sean McAlary and David E. Watson case law, industry compensation databases, comparable compensation studies. Reasonable compensation is in scope as a concept; the enforcement depth is not",
		"State entity tax considerations — state-level composite returns, state tax on S corp distributions, state PTE (pass-through entity) tax workarounds for the SALT cap, franchise taxes, single-sales-factor apportionment, nexus-based state tax liability. State tax is a separate consideration not tested at federal-level TCP depth",
		"§469 passive activity loss rules at depth — material participation tests at the seven-test level, real estate professional rules under §469(c)(7), grouping elections under Reg. §1.469-4, former passive activity. The Passive Activity and At-Risk Rules topic owns this",
		"§465 at-risk rules at depth — loss amounts, nonrecourse financing for real estate carve-out, recapture of previously allowed losses, qualified nonrecourse financing definition. Passive Activity and At-Risk Rules territory",
		"§461(l) excess business loss limitation at depth — the computation mechanics, the aggregation of trades or businesses, the conversion to NOL for the next year, the sunset under TCJA extensions. The concept that high-income pass-through owners are subject to an annual business loss cap is in scope; the mechanics are individual-tax territory",
		"Non-tax considerations for entity selection — limited liability protection, corporate governance requirements, fiduciary duties, securities law exemptions, transferability of interests, raising outside capital. These are business-law and strategic considerations, not TCP content",
		"FICA / SECA computation mechanics at depth — the 15.3% total rate breakdown (12.4% Social Security up to the wage base + 2.9% Medicare + 0.9% Additional Medicare Tax above threshold), the employer vs employee portions, the §1402 self-employment income definition. Payroll tax mechanics at depth belong to Individual Tax or to a separate payroll topic; Entity Choice uses FICA/SECA at the rate-level comparison only",
	],

	keyStandards: [
		"IRC §11 — Corporate tax (21% flat rate)",
		"IRC §199A — Qualified business income deduction",
		"IRC §1361 — Subchapter S eligibility requirements",
		"IRC §1362 — S corporation election and termination",
		"IRC §1366 — Pass-through of items to S shareholders",
		"IRC §701 — Partners subject to tax in their separate capacities (pass-through)",
		"Reg. §301.7701-3 — Check-the-box classification election",
		"IRC §301 — Distributions of property (return of capital / dividend / §301(c)(3) gain ordering)",
		"IRC §163(j) — Business interest limitation (entity-level interaction)",
		"IRC §461(l) — Excess business loss limitation (pass-through owners)",
		"IRC §172 — Net operating loss rules (80% limit, no carryback)",
	],

	commonMisconceptions: [
		"Thinking that C corps are always disadvantaged because of double taxation. At the 21% TCJA flat rate, a C corp retaining earnings for reinvestment can be more tax-efficient than a pass-through at the owner's 37% top rate. The double taxation only applies to distributed earnings, and even then the combined rate (21% + 23.8% on 79 cents) is roughly 39.8% — comparable to pass-through without QBI.",
		"Believing the §199A QBI deduction is universally available at 20%. High-income SSTB owners lose the deduction entirely above the upper threshold; high-income non-SSTB owners face the W-2 wage / UBIA limitation which may reduce the effective deduction below 20%. The deduction is also not available to C corporations or to wages earned as an employee.",
		"Conflating SE tax with FICA. A general partner's distributive share of ordinary partnership income is subject to SE tax (15.3% on earnings up to the Social Security wage base). An S corp shareholder-employee pays FICA only on wages, not on distributions — creating the reasonable-compensation planning opportunity. A limited partner generally does not pay SE tax on distributive share (excluding guaranteed payments).",
		"Thinking S corp distributions are never subject to tax. Distributions reduce stock basis and are tax-free only to the extent of basis; distributions in excess of basis produce capital gain. Distributions of appreciated property trigger gain at the entity level under §311(b). Distributions from an S corp with accumulated E&P from a prior C corp period may be dividends from AEP rather than AAA distributions.",
		"Assuming a partnership and an S corp provide the same loss utilization. Partner outside basis includes the partner's share of partnership liabilities, which creates basis to absorb losses without additional contribution. S corp shareholder basis does NOT include the shareholder's share of corporate debt; only direct shareholder loans create debt basis. A leveraged real estate business structured as a partnership can generally pass through more losses than the same business structured as an S corp.",
		"Believing an LLC is its own tax entity type. For federal tax purposes an LLC is classified under the check-the-box regulations: a single-member LLC defaults to disregarded entity (reported on the owner's return), and a multi-member LLC defaults to partnership. Either may elect corporate classification, and a corporate-elected LLC may further elect S corp status.",
		"Thinking an S corp can have unlimited shareholders. The 100-shareholder limit applies, though family members (up to six generations) count as one. Ineligible shareholders — partnerships, corporations, nonresident aliens — automatically terminate the S election when they acquire stock.",
		"Treating losses from a new C corp as immediately beneficial. C corp losses create a net operating loss at the entity level — they do not flow through to the shareholders and cannot offset the shareholders' other income. Under TCJA, C corp NOLs are limited to 80% of taxable income, cannot be carried back, and are carried forward indefinitely. A startup with expected early losses often favors pass-through structure to enable immediate loss deduction by owners.",
		"Thinking the check-the-box election provides unlimited flexibility. Per se corporations (state-law corporations) cannot elect out of corporate classification. The 60-month restriction prevents rapid back-and-forth elections. Electing out of disregarded status triggers a deemed §351 transfer for the existing single member.",
		"Confusing the QBI deduction with a reduction in gross income or taxable income. QBI is an individual-level deduction from taxable income (computed after AGI); it does not reduce gross income, does not change the pass-through entity's K-1 reporting, and does not affect the owner's SE tax base.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		// --- §199A computation depth (Individual Taxation: Deductions) ---
		{
			term: "UBIA",
			pattern: "\\bUBIA\\b|unadjusted\\s+basis\\s+immediately\\s+after\\s+acquisition",
			category: "§199A mechanics",
			why: "UBIA of qualified property computation — §199A mechanics depth belongs to Individual Taxation: Deductions. Entity Choice uses QBI at comparison level only.",
		},
		{
			term: "aggregation rules",
			pattern: "aggregation\\s+rules?\\s+under.{0,20}(199A|\\.199A-4)",
			category: "§199A mechanics",
			why: "Reg. §1.199A-4 aggregation rules for combining trades or businesses — mechanics depth, out of scope.",
		},
		{
			term: "safe harbor for rental real estate",
			pattern: "safe\\s+harbor\\s+for\\s+rental\\s+real\\s+estate|Rev\\.?\\s*Proc\\.?\\s*2019[-\\s]38",
			category: "§199A mechanics",
			why: "Rev. Proc. 2019-38 rental real estate safe harbor for QBI — mechanics depth.",
		},

		// --- §704(b) substantial economic effect ---
		{
			term: "substantial economic effect",
			pattern: "substantial\\s+economic\\s+effect",
			category: "§704(b) depth",
			why: "§704(b) substantial economic effect regulations — partnership allocation depth, Partnerships or Advanced Basis territory.",
		},
		{
			term: "Section 704(b)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)704\\(b\\)",
			category: "§704(b) depth",
			why: "§704(b) capital account maintenance / allocation regulations — Partnerships or Advanced Basis territory.",
		},
		{
			term: "qualified income offset",
			pattern: "qualified\\s+income\\s+offset",
			category: "§704(b) depth",
			why: "Qualified income offset provision under Reg. §1.704-1(b)(2)(ii)(d) — §704(b) mechanics, out of scope.",
		},
		{
			term: "minimum gain chargeback",
			pattern: "minimum\\s+gain\\s+chargeback",
			category: "§704(b) depth",
			why: "Partnership minimum gain chargeback under Reg. §1.704-2 — nonrecourse liability allocation depth, out of scope.",
		},

		// --- §751 hot assets / §736 retirement ---
		{
			term: "hot assets",
			pattern: "\\bhot\\s+assets?\\b",
			category: "§751 mechanics",
			why: "§751 unrealized receivables and substantially appreciated inventory — partnership sale-of-interest depth, Partnerships or Advanced Basis territory.",
		},
		{
			term: "Section 751",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)751\\b",
			category: "§751 mechanics",
			why: "§751 hot assets ordinary income recharacterization — Partnerships territory.",
		},
		{
			term: "Section 736",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)736\\b",
			category: "partnership retirement",
			why: "§736 retirement/liquidation payments to a partner — Partnerships or Advanced Basis territory.",
		},

		// --- §1374 / §1375 S corp entity-level taxes at depth ---
		{
			term: "Section 1374",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1374\\b",
			category: "S corp depth",
			why: "§1374 built-in gains tax mechanics — S Corporations (REG) territory. Entity Choice mentions BIG tax only as a planning consideration for C-to-S conversion.",
		},
		{
			term: "Section 1375",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1375\\b",
			category: "S corp depth",
			why: "§1375 passive investment income tax mechanics — S Corporations territory.",
		},
		{
			term: "accumulated adjustments account",
			pattern: "accumulated\\s+adjustments\\s+account|\\bAAA\\s+bypass|\\bAAA\\s+account\\b",
			category: "S corp distribution depth",
			why: "S corp AAA distribution ordering under §1368 — S Corporations territory.",
		},

		// --- Corporate liquidation / formation ---
		{
			term: "Section 332",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)332\\b",
			category: "liquidation depth",
			why: "§332 parent-subsidiary liquidation nonrecognition — Entity Formation and Liquidation territory.",
		},
		{
			term: "Section 351 boot",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)351\\(b\\)|boot\\s+under\\s+(?:Section\\s*|§\\s*)351",
			category: "formation mechanics",
			why: "§351(b) boot recognition on corporate formation — Entity Formation or C Corporations territory.",
		},

		// --- §382 NOL limitation depth ---
		{
			term: "long-term tax-exempt rate",
			pattern: "long[-\\s]term\\s+tax[-\\s]exempt\\s+rate",
			category: "§382 depth",
			why: "§382 limitation base rate — ownership-change NOL limitation mechanics, separate topic.",
		},

		// --- State tax ---
		{
			term: "PTE tax election",
			pattern: "PTE\\s+tax\\s+election|pass[-\\s]through\\s+entity\\s+tax\\s+election|SALT\\s+cap\\s+workaround",
			category: "state tax",
			why: "State-level pass-through entity tax workarounds for the SALT cap — state tax territory, not federal TCP.",
		},

		// --- Passive activity depth ---
		{
			term: "material participation test",
			pattern: "material\\s+participation\\s+test|seven[-\\s]test",
			category: "passive activity depth",
			why: "§469 material participation seven-test framework — Passive Activity and At-Risk Rules topic territory.",
		},
		{
			term: "real estate professional",
			pattern: "real\\s+estate\\s+professional",
			category: "passive activity depth",
			why: "§469(c)(7) real estate professional exception — Passive Activity and At-Risk Rules territory.",
		},
	],

	notes:
		"Entity Choice and Planning is the TCP topic covering the cross-entity comparison decision framework for C corp, S corp, partnership/LLC, and sole proprietorship selection. Census v2 flagged 15/56 questions at 27% — six on `Section 199A`, six on `qualified business income`, four on `Section 704(b)`. The §199A/QBI hits are pure rightful-owner: four existing specs (Partnerships, S Corporations, Advanced Basis Calculations, Foreign Currency Transactions) explicitly push QBI to 'a separate topic' in their outOfScope rationale, and the Slayer lesson uses QBI at the comparison level as a core decision variable (C corp 21% vs pass-through effective rate with 20% deduction). The §704(b) hits are expected cleanup tail — partnership allocation depth that belongs to Partnerships / Advanced Basis. Anchored at TCP/III/A 'Formation and liquidation of business entities' because AICPA task 3 under that group literally says 'Derive the tax implications of entity selection and formation decisions across multiple entity types and compare the results.' The scaffolder mis-anchored to TCP/III/B (C corp tax planning); corrected. Note that Entity Formation and Liquidation (future census rank #7 spec) will likely also anchor at TCP/III/A but will own the mechanics of each entity's formation; this spec owns the cross-entity comparison decision framework. Two specs, one group, different scope lines. Line this spec holds: cross-entity comparison variables (double taxation, QBI at concept level, SE tax treatment, loss utilization, basis mechanics, S corp eligibility, check-the-box); out of scope is the internal mechanics of each entity type (§351/§721 formation, §704(b) allocations, §1374 BIG tax, §1375 PII tax, AAA ordering, §751 hot assets, §736 retirement, §382 NOL limits), detailed §199A computation (W-2 wage/UBIA formulas, SSTB phase-in math, aggregation rules), passive activity depth, state tax, and non-tax considerations.",
};
