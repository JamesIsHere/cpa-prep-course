import type { LessonSpec } from "./types";

// Twenty-seventh authored spec — tenth spec of Stage 3. Selected
// from census v2 as rank #9: 56 questions, 7 flagged (13%) — 7 on
// `Section 482`, 6 on `transfer pricing`. The census prediction was
// misleading: the bank under this topic is primarily STATE income
// tax content (nexus, apportionment, P.L. 86-272, unitary reporting,
// PTE tax election for SALT cap workaround) — not international
// transfer pricing. The §482 hits are a small subset of
// international-adjacent content within a state-tax-dominated topic,
// and the International Tax spec explicitly bans §482 and transfer
// pricing in its outOfScope ("transfer pricing methods are ALL out
// of scope"). This spec owns state multi-jurisdictional content and
// pushes international transfer pricing OUT in the same direction
// as International Tax does (to the degree that neither topic claims
// it at depth — candidates see §482 as a high-level concept only).
//
// ## Anchor
//
// AICPA TCP/III/B "Tax planning for C corporations" explicitly lists
// the task "Identify opportunities to optimize state and local
// income tax rules in tax planning for business expansion given a
// specific scenario, including apportionment of income and location
// of business." This is the AICPA mandate for state tax planning
// content. The scaffolder mis-anchored to TCP/III/D (which is
// actually Tax planning for partnerships); corrected to TCP/III/B.
//
// Note: Capital Structure Tax Planning (already authored) is also
// anchored at TCP/III/B. Two specs, one group, different scope
// lines — Capital Structure owns debt/equity/§163(j); this spec
// owns multi-jurisdictional (state) tax planning.
//
// ## Scope line
//
// This topic owns state and local income tax planning at AICPA
// concept depth: nexus (physical-presence, economic nexus post-
// Wayfair, P.L. 86-272 protection for out-of-state sellers of
// tangible personal property); state conformity to the Internal
// Revenue Code (rolling vs static vs selective); apportionment
// formulas (traditional three-factor weighted by property/payroll/
// sales, modern single-sales-factor, double-weighted sales,
// Finnigan vs Joyce treatment of nontaxable sales); throwback and
// throwout rules; unitary business and combined reporting (water's-
// edge vs worldwide combined reporting); state tax credits (job
// creation, investment, R&D, enterprise zone incentives); SALT cap
// workaround via state pass-through entity (PTE) tax elections
// under Notice 2020-75; state-level decoupling from federal
// provisions (bonus depreciation, §163(j), §199A QBI, NOL rules);
// voluntary disclosure programs and amnesty concepts; and the
// interaction of state tax planning with entity location and
// expansion decisions.
//
// Not this topic: International Tax at depth — CFC, Subpart F,
// GILTI, FDII, BEAT, FTC basket system, §482 transfer pricing
// methods, tax treaties, foreign tax credit computation, check-the-
// box for foreign entities (all owned by International Tax spec);
// §482 transfer pricing at depth (International Tax territory);
// sales and use tax at transactional or compliance depth (separate
// topic if specced; sales tax nexus at concept level may be cross-
// referenced here); property tax, excise tax, and other local
// taxes; individual state-level nuances at depth; mis-tagged audit
// content (the audit questions that appear under this topic tag in
// the bank belong to AUD topics and should be removed during
// cleanup).

export const spec: LessonSpec = {
	topic: "Multi-Jurisdictional Tax Planning",
	section: "tcp",
	primaryRef: "TCP/III/B",
	secondaryRefs: [],

	inScope: [
		"State and local income tax planning concepts: taxpayers may face income tax liability in any state where they have established sufficient nexus (connection) to trigger state taxing authority. Multi-state planning involves structuring operations to manage aggregate state tax liability within legal constraints.",
		"Nexus standards for state income tax: physical-presence nexus (offices, employees, property located in the state), economic nexus (thresholds in dollars of sales or number of transactions, applied broadly after Wayfair), and constitutional limits under the Commerce Clause and Due Process Clause. Physical presence is always sufficient; economic nexus has been adopted broadly for both sales tax (after South Dakota v. Wayfair, 2018) and state income tax.",
		"P.L. 86-272 (the Interstate Income Act of 1959) as a federal statute that limits state income taxing authority over out-of-state sellers: when an out-of-state business solicits orders for tangible personal property and fulfillment comes from outside the state, the state generally cannot impose its net income tax on that business — provided the in-state activities are limited to solicitation (with de minimis incidental activities allowed). P.L. 86-272 does NOT protect: sellers of services or intangibles, sellers of real property, activities beyond solicitation (e.g., repair, training, collection), and online activities that go beyond pure solicitation (per the Multistate Tax Commission's revised P.L. 86-272 guidance).",
		"Economic nexus post-Wayfair: South Dakota v. Wayfair, 2018, overruled the physical-presence requirement of Quill Corp. v. North Dakota for sales tax purposes, allowing states to impose sales tax collection duties based on economic thresholds (typical threshold: $100,000 in sales or 200 transactions). State income tax has followed a similar direction, with many states adopting economic nexus thresholds for income tax purposes as well.",
		"State conformity to the Internal Revenue Code: rolling conformity (the state automatically adopts IRC changes as they occur); static or fixed conformity (the state adopts the IRC as of a specific date and must periodically update by legislation); selective conformity (the state adopts some IRC provisions and decouples from others). Rolling conformity states automatically reflect federal TCJA, CARES Act, and H.R. 1 changes; static conformity states may need to legislate conformity for each change.",
		"State-level decoupling from specific federal provisions: many states decouple from bonus depreciation under §168(k), from the §163(j) business interest limitation, from the §199A QBI deduction (which is a federal individual-level deduction and doesn't naturally apply at the state corporate level), from the TCJA 80% NOL limitation, and from GILTI inclusion. Decoupling creates state-level modifications that produce different state taxable income from federal taxable income.",
		"Apportionment formulas: states require multi-state corporations to apportion income to each state where the corporation has nexus. The traditional three-factor formula weights property, payroll, and sales equally (each state's factor = state/total). The modern trend is toward single-sales-factor apportionment (treating only sales, which shifts tax liability toward market states and away from manufacturing states). Some states use a double-weighted sales factor (sales counted twice, property and payroll once each). The apportionment factor is computed and multiplied by apportionable income to determine state-taxable income.",
		"Computing apportionment percentages: property factor = (state property / total property); payroll factor = (state payroll / total payroll); sales factor = (state sales / total sales). The combined formula (for a three-factor equal-weighted formula) is the average of the three factors; for a single-sales-factor state, only the sales factor applies. A corporation with 20% property, 30% payroll, and 40% sales in a state has an equal-weighted three-factor apportionment of 30%.",
		"Throwback and throwout rules: when sales are shipped from a state to a destination state where the seller is NOT taxable (no nexus), state income tax systems apply one of several rules. Under a throwback rule, the origin state treats those sales as if they were sales in the origin state (added back to the origin state's sales factor numerator, increasing apportionment to the origin state). Under a throwout rule, the origin state removes those sales from the denominator (reducing the denominator, increasing the apportionment percentage through a smaller base). Throwback and throwout produce different results mathematically.",
		"Nowhere income problem: sales into a state where the seller lacks nexus and no throwback/throwout rule applies become untaxed by any state — 'nowhere income.' Throwback and throwout rules are designed to prevent this outcome, but their application varies widely across states.",
		"Unitary business concept: a unitary business exists when multiple corporations in common ownership engage in integrated economic activity — characterized by functional integration, centralization of management, and economies of scale. A unitary business is treated as a single taxpayer for state apportionment purposes, combining income from all unitary members.",
		"Combined reporting: states that require combined reporting of a unitary business compute apportionable income by adding together the income of all unitary members and then applying the state's apportionment formula to the combined total. Water's-edge combined reporting includes only US-based unitary members; worldwide combined reporting includes foreign unitary members as well (less common, and many states allow an election).",
		"State tax credits as planning tools: states commonly offer credits for job creation, investment in qualified property, research and development, enterprise zones, film production, and similar economic-development activities. These credits can materially affect the entity-location decision in multi-state planning.",
		"The pass-through entity (PTE) tax election for SALT cap workaround: in response to the TCJA $10,000 SALT deduction cap for individual itemizers, many states have enacted elective PTE taxes under Notice 2020-75. The partnership or S corporation elects to be taxed at the entity level on state income; the entity-level state tax is fully deductible by the entity (not subject to the SALT cap because it is a business deduction); individual owners receive a credit on their state return for their share of the entity tax. The net effect is to convert a non-deductible individual SALT item into a deductible entity-level expense.",
		"The state treatment of §199A QBI deduction, §163(j) business interest limitation, and bonus depreciation as examples of state decoupling with material consequences for multi-state planning.",
		"Voluntary disclosure programs and state tax amnesty: programs under which a taxpayer with past-due obligations can come forward and pay back taxes with reduced or waived penalties and interest in exchange for ongoing compliance. Useful when a taxpayer discovers historical nexus without registration.",
		"The interaction of nexus, apportionment, and planning: entity-location decisions that minimize nexus exposure, structuring operations to take advantage of single-sales-factor states when sales are the dominant factor, operating through separate legal entities to avoid combined reporting, and using state credits to reduce effective state rates.",
	],

	outOfScope: [
		"International tax at depth — Subpart F income categories and computation, GILTI and §250 deduction mechanics, FDII computation, BEAT mechanics, foreign tax credit limitation and basket system, §902/§960 deemed-paid credit mechanics (deemed-paid credit was repealed but occasionally appears in legacy content), check-the-box election for foreign entities, §367 outbound transfers, §951A GILTI inclusion, §965 transition tax. All owned by the International Tax (TCP) spec",
		"§482 transfer pricing methods at depth — comparable uncontrolled price (CUP), resale price method, cost plus, comparable profits method (CPM), profit split, TNMM, best method analysis, arm's length range. International Tax territory. Multi-jurisdictional references transfer pricing only at the conceptual level as an international-coordination issue",
		"Tax treaty provisions at depth — specific US treaty terms, limitation on benefits (LOB) clauses, treaty shopping, permanent establishment (PE) thresholds, withholding rate reductions, saving clauses. International Tax territory",
		"Advance pricing agreements (APAs), competent authority procedures, mutual agreement procedure (MAP), country-by-country reporting (CbCR). International Tax / transfer pricing enforcement territory",
		"Sales and use tax at transactional depth — taxable vs exempt transactions, resale certificates, streamlined sales tax agreement, audit procedures, specific state exemptions, use tax self-assessment, marketplace facilitator rules. Sales tax is a separate tax system and topic if specced. Wayfair economic nexus at the concept level is in scope here as it parallels state income tax nexus",
		"Property tax and local taxes at depth — real property assessment, personal property tax, excise taxes, transfer taxes, local business taxes, franchise taxes specific to individual states. Individual local tax mechanics are out of scope; the conceptual framework of state tax planning is in scope",
		"Individual state-by-state statutory rules at depth — specific states' unique apportionment methods, specific states' NOL rules, specific states' credit programs with dollar limits and eligibility criteria. Concepts generalizable across states are in scope; memorizing individual state statutes is not",
		"State tax return preparation mechanics — specific forms, Schedule K for state-level pass-through reporting, composite return mechanics, state-level withholding for non-resident owners. Preparation mechanics are tax compliance territory; concepts of multi-state planning are in scope",
		"Federal corporate tax compliance under the IRC — this spec covers state tax planning; the federal regular tax, AMT, NOL, dividend received deduction, consolidated return, and other federal corporate topics belong to C Corporations (REG) and Entity Tax Compliance topics",
		"Individual state resident vs nonresident taxation — determining domicile, part-year resident rules, credits for taxes paid to other states at individual depth. Individual multi-state taxation is adjacent but not the entity-focused planning scope here",
		"Quill Corp. v. North Dakota at pre-2018 historical depth — the physical-presence standard was overruled by South Dakota v. Wayfair in 2018. Historical reference at concept level is fine; detailed pre-Wayfair case law is not",
		"Constitutional Commerce Clause doctrine at law-school depth — the four-part Complete Auto test (substantial nexus, fair apportionment, non-discrimination, fair relation to services provided by the state) is in scope at concept level; the detailed Supreme Court case law evolution is not",
		"Multistate Tax Compact provisions and its member states' optional elections. Concept-level reference to the Multistate Tax Commission (MTC) as a standard-setting body for state tax cooperation is in scope; compact election mechanics are not",
		"Audit methodology, engagement letter, predecessor/successor auditor communications — these are AUD topics that have been mis-tagged under Multi-Jurisdictional Tax Planning in the bank and should be removed during cleanup, not retained here",
	],

	keyStandards: [
		"P.L. 86-272 — Interstate Income Act of 1959 (federal statute limiting state income tax jurisdiction over out-of-state sellers of tangible personal property)",
		"South Dakota v. Wayfair, Inc., 585 U.S. ___ (2018) (economic nexus for sales tax, influencing state income tax nexus)",
		"Complete Auto Transit, Inc. v. Brady, 430 U.S. 274 (1977) (four-part Commerce Clause test for state tax validity)",
		"IRS Notice 2020-75 (PTE tax election permitting state entity-level tax as a federal deduction bypassing the SALT cap)",
		"Multistate Tax Compact (framework for apportionment and nexus coordination; adopted by many states)",
		"Multistate Tax Commission (MTC) guidance — including the 2021 revised guidance on P.L. 86-272 addressing internet activities",
	],

	commonMisconceptions: [
		"Believing that physical presence is still required for state income tax nexus. South Dakota v. Wayfair overruled the physical-presence standard for sales tax, and states have followed by adopting economic nexus thresholds for income tax as well. A business with no physical presence in a state may still have income tax nexus if it exceeds the economic threshold.",
		"Thinking P.L. 86-272 protects all out-of-state sellers. P.L. 86-272 is narrow — it protects only sellers of TANGIBLE PERSONAL PROPERTY whose in-state activities are limited to solicitation. Sellers of services, intangibles, digital goods, or real property are not protected. Businesses with in-state activities beyond solicitation (repair, training, collection, installation) are not protected. Online sellers may lose protection under the MTC's revised guidance if their websites include interactive features beyond pure solicitation.",
		"Conflating single-sales-factor apportionment with a uniform national rule. States vary widely — some use three-factor equal, some use three-factor double-weighted sales, some use single-sales-factor, some use alternative formulas for specific industries. The choice is a state legislative decision that affects the apportionment result.",
		"Confusing throwback and throwout rules. Both address sales into a nontaxable destination state, but they work differently. Throwback adds the nontaxable sales to the origin state's numerator (more tax to origin state). Throwout removes the nontaxable sales from the origin state's denominator (increasing the apportionment percentage). A state uses one or the other, not both.",
		"Believing the state PTE tax election is a federal tax reduction. The PTE election does not reduce FEDERAL income tax — it converts what would be an individual SALT itemized deduction (capped at $10,000) into an entity-level business deduction (uncapped) that reduces federal flow-through income before the individual sees it. The state tax itself is still owed; the benefit is in federal deductibility.",
		"Thinking rolling conformity means a state automatically adopts every federal change. Rolling conformity means automatic adoption, but states with rolling conformity may still decouple from specific provisions by express legislation. Decoupling is common for bonus depreciation, §163(j), §199A, and NOL rules even in rolling-conformity states.",
		"Assuming unitary business treatment requires 100% common ownership. The unitary business concept depends on functional integration, centralized management, and economies of scale — not on ownership percentage alone. Corporations in a unitary relationship may be treated as a single taxpayer for combined reporting purposes even without wholly owned structure, and conversely, wholly owned subsidiaries may not be unitary if their businesses are not integrated.",
		"Thinking state tax credits are uniform across jurisdictions. State tax credits vary widely — eligibility criteria, credit amounts, carryforward periods, refundability, and recapture rules are all state-specific. Planning depends on the specific state's current rules.",
		"Believing that voluntary disclosure always results in penalty waiver. Voluntary disclosure programs typically offer reduced penalties and interest in exchange for compliance, but the specific terms vary by state. Some states require payment of all back taxes with partial interest; others waive interest; most waive most or all penalties but not the tax liability itself.",
		"Conflating state income tax nexus with sales tax nexus. The two tax systems use similar economic nexus concepts but are analyzed separately. A business may have sales tax nexus (collection duty) without income tax nexus or vice versa, depending on the state's statutes and the nature of the activity.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		// --- International tax depth (International Tax spec) ---
		{
			term: "Section 482",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)482\\b",
			category: "transfer pricing",
			why: "§482 transfer pricing — International Tax territory. Multi-jurisdictional references transfer pricing only at concept level as an international-coordination issue.",
		},
		{
			term: "transfer pricing method",
			pattern: "transfer\\s+pricing\\s+method|comparable\\s+uncontrolled\\s+price|\\bCUP\\b|resale\\s+price\\s+method|\\bTNMM\\b|comparable\\s+profits\\s+method",
			category: "transfer pricing",
			why: "Transfer pricing methods at depth — International Tax territory.",
		},
		{
			term: "arm's length range",
			pattern: "arm'?s[-\\s]length\\s+range|arm'?s[-\\s]length\\s+standard",
			category: "transfer pricing",
			why: "Arm's length standard and range — §482 transfer pricing depth, International Tax.",
		},
		{
			term: "Subpart F",
			pattern: "Subpart\\s+F\\b",
			category: "international tax",
			why: "Subpart F income — International Tax topic (CFC regime).",
		},
		{
			term: "GILTI",
			pattern: "\\bGILTI\\b|global\\s+intangible\\s+low[-\\s]taxed\\s+income",
			category: "international tax",
			why: "Global Intangible Low-Taxed Income — International Tax topic.",
		},
		{
			term: "FDII",
			pattern: "\\bFDII\\b|foreign[-\\s]derived\\s+intangible\\s+income",
			category: "international tax",
			why: "Foreign-Derived Intangible Income — International Tax topic.",
		},
		{
			term: "BEAT",
			pattern: "\\bBEAT\\b|base\\s+erosion\\s+and\\s+anti[-\\s]abuse\\s+tax",
			category: "international tax",
			why: "Base Erosion and Anti-Abuse Tax — International Tax topic.",
		},
		{
			term: "Section 951A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)951A\\b",
			category: "international tax",
			why: "§951A GILTI inclusion — International Tax topic.",
		},
		{
			term: "Subpart F income",
			pattern: "foreign\\s+base\\s+company\\s+(sales|services|income)|foreign\\s+personal\\s+holding\\s+company\\s+income",
			category: "international tax",
			why: "Subpart F income categories — International Tax topic.",
		},
		{
			term: "foreign tax credit limitation",
			pattern: "foreign\\s+tax\\s+credit\\s+limitation|\\bFTC\\s+limitation",
			category: "international tax",
			why: "FTC §904 limitation mechanics — International Tax topic.",
		},
		{
			term: "CFC",
			pattern: "\\bCFC\\b|controlled\\s+foreign\\s+corporation",
			category: "international tax",
			why: "Controlled Foreign Corporation — International Tax topic.",
		},
		{
			term: "APA",
			pattern: "advance\\s+pricing\\s+agreement",
			category: "transfer pricing",
			why: "Advance pricing agreements — International Tax / transfer pricing enforcement territory.",
		},

		// --- Sales tax transactional depth ---
		{
			term: "streamlined sales",
			pattern: "streamlined\\s+sales\\s+(?:and\\s+use\\s+)?tax",
			category: "sales tax depth",
			why: "Streamlined Sales and Use Tax Agreement — sales tax compliance depth.",
		},
		{
			term: "marketplace facilitator",
			pattern: "marketplace\\s+facilitator",
			category: "sales tax depth",
			why: "Marketplace facilitator rules — sales tax collection mechanics.",
		},
		{
			term: "resale certificate",
			pattern: "resale\\s+certificate",
			category: "sales tax depth",
			why: "Resale certificates and sales tax exemption mechanics — sales tax depth.",
		},

		// --- Audit content (mis-tagged) ---
		{
			term: "engagement letter element",
			pattern: "required\\s+element\\s+of\\s+(?:this\\s+)?engagement\\s+letter|engagement\\s+letter\\s+(?:must\\s+)?include",
			category: "audit content",
			why: "Engagement letter content is AUD Terms of Engagement territory. Audit content mis-tagged under this topic should be removed.",
		},
		{
			term: "predecessor auditor",
			pattern: "predecessor\\s+auditor",
			category: "audit content",
			why: "Predecessor/successor auditor communication is AUD territory. Mis-tagged content.",
		},
	],

	notes:
		"Multi-Jurisdictional Tax Planning is the TCP topic covering state and local income tax planning at AICPA concept depth: nexus standards, P.L. 86-272, economic nexus post-Wayfair, apportionment formulas (three-factor, single-sales-factor, throwback/throwout), unitary business combined reporting, state conformity to the IRC, state-level decoupling, state tax credits, PTE tax election for SALT cap workaround, and voluntary disclosure. Census v2 flagged 7/56 questions at 13% — all on `Section 482` and `transfer pricing`, which the International Tax spec explicitly bans as 'ALL out of scope' in its own notes. This spec also bans §482/transfer pricing at depth, consistent with the International Tax position — neither TCP tax-planning topic claims transfer pricing at depth, so §482 content in this topic represents drift that should be cleaned up rather than retained. The spec is anchored at TCP/III/B 'Tax planning for C corporations' because AICPA task 2 under III/B explicitly calls out 'state and local income tax rules in tax planning for business expansion ... including apportionment of income and location of business.' Scaffolder mis-anchored to TCP/III/D (partnerships); corrected. Note: Capital Structure Tax Planning is also at TCP/III/B; two specs, one group, different scopes. Line this spec holds: STATE tax planning at concept depth. Out of scope: international tax at depth (CFC/Subpart F/GILTI/FDII/BEAT/FTC/§482/treaties — owned by International Tax), sales tax transactional depth, property and excise tax depth, individual state statutes at memorization depth, audit content mis-tagged under this topic (Q-set to remove during cleanup).",
};
