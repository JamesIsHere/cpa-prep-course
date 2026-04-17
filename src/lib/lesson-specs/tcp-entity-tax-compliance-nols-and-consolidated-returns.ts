import type { LessonSpec } from "./types";

// Thirty-fifth authored spec — eighteenth of Stage 3. Census v3 rank
// #5: 100 questions, 14 flagged (14.0%) — 13 on `long-term tax-exempt
// rate`, 1 on `Section 951A`. Clean rightful-owner: both terms are
// explicitly banned by the Entity Formation and Restructuring spec
// (#29) as "§382 mechanics territory, separate NOLs topic." This
// spec IS that separate topic, owning §382 computation depth plus
// the broader NOL and consolidated return compliance territory.
//
// ## Anchor
//
// AICPA TCP/II/A/1 "Net operating and capital loss utilization" is
// the exact task cluster: "Recall the limitations on the use of net
// operating losses when there is an ownership change" and "Calculate
// the amount of a C corporation's net operating loss for a given
// year and any related carryforward." TCP/II/A/3 "Consolidated tax
// returns" covers the consolidated return mechanics — I cross-ref
// to that sub-group in scope but anchor at /1 because it appears
// first.
//
// ## Scope line
//
// This topic owns: NOL carryforward rules post-TCJA (80% of taxable
// income limitation, no carryback, indefinite carryforward),
// capital loss utilization for C corps (three-year carryback, five-
// year carryforward, character limitation), §382 annual limitation
// on use of pre-change NOLs after an ownership change (5% shareholder
// testing mechanics, three-year testing period, long-term tax-exempt
// rate × value of loss corporation equals the annual limit, built-in
// gain/loss adjustments, §383 parallel limit on credit carryovers),
// §269 anti-abuse disallowance of tax benefits from acquisitions
// made principally to evade or avoid federal income tax, consolidated
// return filing eligibility (80% vote AND 80% value affiliated group
// test, eligible/ineligible members — S corps, REITs, insurance
// companies are ineligible), intercompany transactions deferred in
// consolidation and matched at gain/loss recognition, Separate Return
// Limitation Year (SRLY) rules limiting use of pre-consolidation
// losses of acquired members, consolidated NOL (CNOL) computation
// and allocation among members, departing member loss apportionment
// at group exit, and the interaction between §382 and consolidated
// return ownership changes.
//
// Not this topic: §351 formation and §331-§337 liquidation (Entity
// Formation and Liquidation owns these); §368 reorganizations, §355
// divisions, §338 elections (Entity Formation and Restructuring);
// §172 individual NOL mechanics at depth (Individual Taxation topics
// if specced); §461(l) excess business loss limitation (Individual
// Deductions); foreign corporation and CFC-related NOL issues
// (International Tax); state tax NOL conformity and state-level
// NOL tracking (Multi-Jurisdictional Tax Planning at concept level);
// partnership loss allocation under §704 (Partnerships / Advanced
// Basis); S corporation loss flow-through and basis limitations
// (S Corporations REG); trust and estate NOLs (Trusts and Estates
// if specced).

export const spec: LessonSpec = {
	topic: "Entity Tax Compliance: NOLs and Consolidated Returns",
	section: "tcp",
	blueprintRef: "TCP/II/A/1",

	inScope: [
		"Net operating loss (NOL) concept for C corporations: an NOL arises when deductions exceed gross income for a tax year. The NOL is carried forward (and historically back) to absorb taxable income in other years, matching the economic income that an entity earns over its cycle rather than artificially taxing a profitable year in isolation from loss years.",
		"Post-TCJA NOL rules for NOLs arising in tax years beginning after December 31, 2017: NOLs are carried forward INDEFINITELY (no 20-year limit), NOLs cannot be carried back (exceptions apply to farming losses and some property-casualty insurance losses), and NOL utilization is limited to 80% of taxable income in the carryforward year. The 80% limitation means a C corporation with a $10M NOL carryforward and $5M of current taxable income cannot eliminate the entire current tax — it can deduct at most $4M (80% × $5M), leaving $1M of taxable income.",
		"Pre-TCJA NOLs (arising before 2018) retain their original rules: two-year carryback and twenty-year carryforward, with no 80% limitation. A mixed-vintage carryforward requires the corporation to track NOLs by vintage year and apply the applicable rule to each layer.",
		"CARES Act temporary rules: NOLs arising in tax years 2018, 2019, and 2020 were allowed a five-year carryback and were not subject to the 80% limitation until 2021. These temporary rules have expired but fact patterns involving those years may still reference them.",
		"Capital loss rules for C corporations: capital losses can offset only capital gains (not ordinary income). Excess capital losses carry back three years and forward five years, retaining short-term or long-term character. Unlike the NOL 80% rule, the full amount of capital loss carryforward can absorb capital gains in carryforward years.",
		"§382 annual limitation overview: when a 'loss corporation' undergoes an 'ownership change,' the annual use of its pre-change NOLs (and certain other pre-change attributes) is limited to the long-term tax-exempt rate (a published monthly IRS rate) multiplied by the value of the loss corporation's stock immediately before the ownership change. The annual limit applies each post-change year, with any unused limit in a year rolling forward (the stub is essentially preserved, not lost).",
		"§382 ownership change definition: an ownership change occurs when 5-percent shareholders (individual shareholders or groups owning at least 5% of the loss corporation) increase their aggregate ownership by more than 50 percentage points over a three-year 'testing period' ending on the ownership change date. The test is cumulative — not limited to a single transaction — and aggregates the effect of multiple shareholder-level transfers.",
		"§382 loss corporation definition: a C corporation (or any entity that becomes a C corporation during the testing period) that has either NOL carryforwards or a net unrealized built-in loss at a testing date. The existence of pre-change losses is a prerequisite for §382 to apply.",
		"The §382 annual limitation formula: annual limitation = value of the loss corporation's stock immediately before the ownership change × long-term tax-exempt rate (LTTER). Example: a $20 million loss corporation with an ownership change on a date when the LTTER is 4% has an annual limitation of $800,000 per year. If the loss corporation has $15 million of pre-change NOL carryforwards, it would take 18.75 years to absorb them at the $800,000 annual cap — potentially causing some to expire unused or at least delaying absorption materially.",
		"§382 built-in gain and built-in loss adjustments: if the loss corporation has a net unrealized built-in gain (NUBIG) at the ownership change, the annual limitation is INCREASED by recognized built-in gains during the five-year recognition period. If it has a net unrealized built-in loss (NUBIL), the recognized built-in losses in the recognition period are subject to the same annual limit as pre-change NOLs. The §382(h) mechanics model how pre-change economic position flows through the limitation.",
		"The three-year testing period: §382 looks at ownership changes over a rolling three-year window. A 55% shift over 36 months is an ownership change even if no single transaction exceeded 50%. The testing is measured against the lowest percentage of stock owned by each 5% shareholder during the three-year period to determine the cumulative shift.",
		"§383 parallel limitation on credit carryforwards: the same annual limitation mechanism applies to pre-change general business credits, foreign tax credits, and capital loss carryforwards of the loss corporation. §383 ensures that a §382 ownership change limits all tax attributes, not just NOLs.",
		"Continuity of business enterprise (COBE) post-change requirement: the loss corporation must continue to carry on its historic business or use a significant portion of its historic business assets during the two-year period after the ownership change. Failure to maintain COBE reduces the annual limitation to zero for any year after COBE is not satisfied.",
		"§269 anti-abuse disallowance: when a person acquires control of a corporation (50% voting stock or value), or a corporation acquires property with a carryover basis from a non-controlled transferor, and the principal purpose of the acquisition is to evade or avoid federal income tax by securing the benefit of a deduction, credit, or other allowance that would not otherwise be enjoyed, the IRS may disallow the benefit. §269 is a broader anti-abuse rule than §382 and applies when the facts show acquisition motivated primarily by tax benefit access rather than business purpose.",
		"Consolidated return filing eligibility: an affiliated group of C corporations may elect to file a single consolidated federal income tax return. An affiliated group is defined as one or more chains of corporations connected through stock ownership with a common parent, where the common parent directly owns at least 80% of the vote AND 80% of the value of at least one includible subsidiary, and every other includible subsidiary has 80% vote and 80% value owned by one or more other includible corporations in the group.",
		"Includible and non-includible corporations for consolidation: includible members are domestic C corporations. Non-includible (cannot join even if the 80% test is met) are S corporations, foreign corporations (with limited exceptions), REITs, regulated investment companies (RICs), insurance companies taxed under subchapter L at their own rates, tax-exempt organizations, and certain specialized corporations. A parent that acquires an S corporation cannot add it to a consolidated group; the S election would terminate if the subsidiary became part of a group in a way that made it ineligible.",
		"Benefits and trade-offs of consolidated return filing: the primary benefit is that losses of one member can offset income of other members in the same year, whereas separate returns would leave those losses as carryforwards at the loss member. Intercompany transactions are deferred (gain/loss on sales between members is not recognized until the property leaves the group or is depreciated to reduce inside basis). Drawbacks include more complex compliance, the irrevocable nature of the consolidation election (once made, must generally continue), and limitations on using certain deductions at the consolidated level.",
		"Intercompany transactions in a consolidated group: sales between group members do not produce immediate taxable gain or loss. The seller's gain is deferred and the buyer takes a carryover basis in the property. Gain is recognized later — when the property is sold outside the group, when the buyer depreciates the property (matching the deferred gain to the depreciation expense through an intercompany item account), or when the buyer or seller leaves the group. This deferred-gain matching preserves the economic reality that a related-party sale is not a true realization event.",
		"Consolidated NOL (CNOL): a loss year's NOL is computed at the group level by aggregating income and loss across all members. The CNOL is carried forward at the consolidated level (subject to the 80% limitation post-TCJA) and is generally available to offset any member's future income. Upon a member departing the group, the departing member takes a portion of the CNOL attributable to that member — the 'departing member's share' — determined by various methods (typically based on the member's contribution to the CNOL in its loss year(s)).",
		"Separate Return Limitation Year (SRLY) rules: when a member joins a consolidated group with pre-consolidation NOL carryforwards, those carryforwards are SRLY losses — subject to a limitation that they may only offset the joining member's post-consolidation contribution to the group's income. SRLY prevents the group from absorbing the new member's old losses against other members' income, matching the economic reality that pre-acquisition losses belong only to the loss-generating member. A parallel §382 limitation may ALSO apply if the member's joining triggered an ownership change of the member.",
		"Interaction between §382 and SRLY: if a corporation with NOL carryforwards is acquired into a consolidated group, BOTH rules can apply. The §382 limit constrains the annual use of the acquired corporation's NOLs (based on value × LTTER), and the SRLY limit constrains those same NOLs to offsetting only the acquired member's post-acquisition income. In practice, the more restrictive of the two applies each year — typically §382 for a lower-valued acquisition, SRLY for a high-valued acquisition where §382 is generous but the member's standalone earnings are modest.",
		"Departing member's losses at group exit: when a member leaves the consolidated group, it takes its share of any CNOL (apportioned by the group based on its contribution during loss years). It does NOT retain losses it contributed that were absorbed by other members' income during consolidation. The departing member's losses are then subject to §382 if the departure is part of an ownership change.",
	],

	outOfScope: [
		"§172 individual taxation NOL mechanics at individual depth — Schedule C business loss, passthrough loss flow-through to individuals, NOL interaction with itemized deductions and nonbusiness deductions, the complex computation of an individual NOL. Individual Taxation topics territory",
		"§461(l) excess business loss limitation for individuals — the aggregate trade-or-business loss cap applied to individual taxpayers before an NOL is computed. Individual Taxation: Deductions territory",
		"§1502 regulations at full regulatory depth — the comprehensive consolidated return regulatory framework (investment adjustments to stock basis, earnings and profits adjustments for consolidated groups, §1502-21 CNOL specific sub-rules, §1502-32 investment basis adjustments, the E&P tier rules, the tiering up of distributions through a group). Concept-level mechanics of consolidated returns are in scope; the full regulatory framework at computation depth is separate advanced corporate territory",
		"§382 limitations applied to foreign corporations, branch losses, dual resident corporations — international tax overlay on §382 is out of scope",
		"§1503(d) dual consolidated loss rules — limits on using losses of dual-resident corporations to offset both US and foreign income. International Tax territory",
		"§1374 built-in gains tax when an S corporation was previously a C corporation — S Corporations (REG) territory. This spec may reference §1374 at the concept level when discussing consolidated-return interactions",
		"§1375 S corporation passive investment income tax — S Corporations (REG) territory",
		"Partnership loss allocation under §704(b) and §704(c), partner-level basis and at-risk limits on loss flow-through — Partnerships (REG) and Advanced Basis Calculations (TCP) territory",
		"§469 passive activity loss limitations at computation depth — Passive Activity and At-Risk Rules (TCP) territory",
		"§465 at-risk rules at depth — Passive Activity and At-Risk Rules (TCP) territory",
		"§199A QBI deduction — Individual Taxation: Deductions (REG)",
		"State-level NOL conformity and apportionment of NOLs across states — Multi-Jurisdictional Tax Planning references this at concept level but the detailed state mechanics are separate",
		"Trust and estate NOLs — fiduciary income tax territory",
		"Tax-exempt organization unrelated business income losses (UBTI losses) — Tax-exempt organization topic if specced",
		"§108 cancellation of debt income and §108(b) attribute reduction — separate bankruptcy/insolvency topic. NOLs are one of the tax attributes reduced under §108(b) but that mechanism is out of scope here",
		"§381 attribute carryover in reorganizations — Entity Formation and Restructuring topic. This spec references §381 at concept level but does not repeat the reorganization mechanics",
		"§368 seven reorganization types and §355 divisive transactions — Entity Formation and Restructuring territory. This spec references §368 as the mechanism by which NOLs can pass from target to acquirer, but the reorganization mechanics themselves are out of scope",
		"§338 qualified stock purchase elections — Entity Formation and Restructuring territory",
		"§351 formation and §331-§337 liquidation — Entity Formation and Liquidation territory",
	],

	keyStandards: [
		"IRC §172 — Net operating loss deduction (post-TCJA 80% limitation, indefinite carryforward, no carryback)",
		"IRC §382 — Limitation on net operating loss carryforwards and certain built-in losses following ownership change",
		"IRC §383 — Special limitations on certain excess credits and capital losses",
		"IRC §269 — Acquisitions made to evade or avoid income tax",
		"IRC §381 — Carryovers in certain corporate acquisitions (referenced for inheritance of NOLs in §332 liquidation or §368 reorganization)",
		"IRC §1501 — Privilege to file consolidated returns",
		"IRC §1502 — Regulations governing consolidated returns (framework level only)",
		"IRC §1504 — Definition of affiliated group (80% vote and value)",
		"Reg. §1.1502-21 — Consolidated net operating loss (CNOL) mechanics",
		"Reg. §1.1502-13 — Intercompany transactions",
	],

	commonMisconceptions: [
		"Believing post-TCJA NOLs can fully eliminate current-year taxable income. The 80% limitation means a corporation with $5M of taxable income can deduct at most $4M of NOL in that year, leaving $1M of taxable income regardless of NOL carryforward size. A full elimination requires either pre-2018 NOLs (no 80% limit) or a fact pattern within the CARES Act temporary carryback window (2018-2020).",
		"Thinking post-2017 NOLs can be carried back. The default rule eliminated the carryback entirely. Specific exceptions exist for farming losses (two-year carryback) and property-casualty insurance company losses. The CARES Act temporarily restored a five-year carryback for 2018-2020 losses but that relief has expired.",
		"Confusing the §382 ownership change with a simple majority acquisition. §382 is triggered by a cumulative 50-percentage-point shift by 5-percent shareholders over a three-year testing period — not by a single 51% acquisition. Multiple small shifts can add up to an ownership change even when no single transaction is dispositive.",
		"Thinking the §382 limit zeros out NOLs entirely. The §382 annual limit is a PER-YEAR cap, not a total reduction. Pre-change NOLs remain alive but can be absorbed only $X per year (where X = value × long-term tax-exempt rate). Over time, the full NOL may be absorbed, subject to expiration if the NOLs are pre-TCJA (20-year life).",
		"Believing §382 applies only to hostile takeovers. §382 triggers on any ownership change regardless of motive — friendly mergers, public offerings, management buyouts, and private equity acquisitions all potentially trigger it. The test is mechanical based on 5-percent shareholder movement.",
		"Confusing §382 with §269. §382 is a mechanical limitation triggered by an ownership change regardless of purpose — it limits NOLs to the annual cap. §269 is a purpose-based disallowance for acquisitions made principally to evade or avoid tax; it disallows the benefit entirely rather than merely limiting it annually. Both can apply to the same transaction but they operate differently.",
		"Believing all 80%-owned subsidiaries can join a consolidated group. The 80% vote AND value test must be met, AND the subsidiary must be an INCLUDIBLE corporation. S corporations, REITs, RICs, insurance companies taxed at their own rates, foreign corporations, and tax-exempt organizations are non-includible regardless of ownership percentage.",
		"Thinking consolidation makes intercompany losses immediately deductible. Intercompany transactions in a consolidated group are DEFERRED, not eliminated. An intercompany loss on a sale from Member A to Member B is deferred and only recognized when the property leaves the group or is matched to depreciation at the buyer.",
		"Assuming a departing member's losses always go with the member. A departing member takes its allocable SHARE of the CNOL based on the group's method of apportioning losses to the loss-contributing year. Losses that were absorbed by other members' income during consolidation DO NOT travel with the departing member — those losses have been used and no longer exist.",
		"Confusing SRLY with §382. SRLY applies when a member joins a consolidated group with pre-existing NOLs — those losses can only offset the joining member's post-consolidation income (not other members' income). §382 applies when an ownership change of the corporation with NOLs occurs — those losses are subject to the annual cap. Both rules can apply simultaneously to the same NOL when a loss corporation is acquired INTO a consolidated group, and the more restrictive rule governs each year.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		// --- Individual NOL / loss mechanics ---
		{
			term: "Section 461(l)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)461\\(l\\)",
			category: "individual loss limits",
			why: "§461(l) excess business loss limitation — Individual Taxation: Deductions territory.",
		},
		{
			term: "excess business loss",
			pattern: "excess\\s+business\\s+loss",
			category: "individual loss limits",
			why: "§461(l) excess business loss for individuals — Individual Deductions territory.",
		},

		// --- Partnership / pass-through ---
		{
			term: "substantial economic effect",
			pattern: "substantial\\s+economic\\s+effect",
			category: "partnership allocation",
			why: "§704(b) partnership allocation — Partnerships / Advanced Basis territory.",
		},
		{
			term: "Section 704",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)704\\(",
			category: "partnership allocation",
			why: "§704 partnership allocation — Partnerships / Advanced Basis territory.",
		},
		{
			term: "Section 752",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)752\\b",
			category: "partnership liabilities",
			why: "§752 partnership liability allocation — Partnerships territory.",
		},

		// --- Passive activity / at-risk ---
		{
			term: "material participation test",
			pattern: "material\\s+participation\\s+test|seven[-\\s]test",
			category: "passive activity",
			why: "§469 passive activity material participation — Passive Activity and At-Risk Rules (TCP) territory.",
		},
		{
			term: "real estate professional",
			pattern: "real\\s+estate\\s+professional",
			category: "passive activity",
			why: "§469(c)(7) real estate professional exception — Passive Activity and At-Risk Rules territory.",
		},
		{
			term: "qualified nonrecourse financing",
			pattern: "qualified\\s+nonrecourse\\s+financing",
			category: "at-risk",
			why: "§465 at-risk qualified nonrecourse financing — Passive Activity and At-Risk Rules territory.",
		},

		// --- QBI ---
		{
			term: "Section 199A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)199A\\b",
			category: "QBI",
			why: "§199A QBI deduction — Individual Taxation: Deductions territory.",
		},
		{
			term: "qualified business income",
			pattern: "qualified\\s+business\\s+income",
			category: "QBI",
			why: "QBI — Individual Deductions or Entity Choice and Planning territory.",
		},

		// --- International ---
		{
			term: "Subpart F",
			pattern: "Subpart\\s+F\\b",
			category: "international tax",
			why: "Subpart F — International Tax (TCP) territory.",
		},
		{
			term: "GILTI",
			pattern: "\\bGILTI\\b|global\\s+intangible\\s+low[-\\s]taxed\\s+income",
			category: "international tax",
			why: "GILTI — International Tax territory.",
		},
		{
			term: "FDII",
			pattern: "\\bFDII\\b|foreign[-\\s]derived\\s+intangible\\s+income",
			category: "international tax",
			why: "FDII — International Tax territory.",
		},
		{
			term: "BEAT",
			pattern: "\\bBEAT\\b|base\\s+erosion\\s+and\\s+anti[-\\s]abuse\\s+tax",
			category: "international tax",
			why: "BEAT — International Tax territory.",
		},
		{
			term: "Section 951A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)951A\\b",
			category: "international tax",
			why: "§951A GILTI inclusion — International Tax territory.",
		},
		{
			term: "Section 1503(d)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1503\\(d\\)",
			category: "international tax",
			why: "§1503(d) dual consolidated loss rules — International Tax territory.",
		},

		// --- S corp mechanics ---
		{
			term: "Section 1374",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1374\\b",
			category: "S corp",
			why: "§1374 built-in gains tax — S Corporations (REG) territory. Referenced at concept level only when discussing consolidated-return interactions.",
		},
		{
			term: "Section 1375",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)1375\\b",
			category: "S corp",
			why: "§1375 S corp passive investment income tax — S Corporations territory.",
		},

		// --- COD income ---
		{
			term: "Section 108",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)108\\b",
			category: "COD income",
			why: "§108 cancellation-of-debt income and attribute reduction — separate bankruptcy/insolvency topic.",
		},
		{
			term: "cancellation of debt",
			pattern: "cancellation\\s+of\\s+debt|cancellation[-\\s]of[-\\s]debt\\s+income",
			category: "COD income",
			why: "COD income — §108 territory.",
		},

		// --- Reorganization depth ---
		{
			term: "continuity of interest",
			pattern: "continuity\\s+of\\s+interest",
			category: "reorganization depth",
			why: "§368 COI doctrine — Entity Formation and Restructuring territory. NOL inheritance in a reorganization is in scope at concept level; the reorganization mechanics are not.",
		},
		{
			term: "Section 355",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)355\\b",
			category: "reorganization depth",
			why: "§355 corporate divisions — Entity Formation and Restructuring territory.",
		},
		{
			term: "Section 338",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)338\\b",
			category: "reorganization depth",
			why: "§338 qualified stock purchase election — Entity Formation and Restructuring territory.",
		},

		// --- Entity formation ---
		{
			term: "Section 351",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)351\\b",
			category: "formation",
			why: "§351 corporate formation — Entity Formation and Liquidation territory.",
		},
	],

	notes:
		"Entity Tax Compliance: NOLs and Consolidated Returns is the TCP topic covering post-TCJA NOL rules, capital loss utilization for C corps, §382 ownership-change limitation mechanics (annual limit = value × LTTER, testing period, 5% shareholder rules, built-in gain/loss adjustments), §383 parallel limit on credits, §269 anti-abuse disallowance, consolidated return filing eligibility (80% vote AND value affiliated group test, includible/non-includible corporations), intercompany transactions deferred-gain matching, consolidated NOL (CNOL) computation and allocation, SRLY rules, and the interaction between §382 and SRLY when a loss corporation joins a consolidated group. Census v3 flagged 14/100 questions at 14.0% — 13 on `long-term tax-exempt rate` and 1 on `Section 951A`. Clean rightful-owner: Entity Formation and Restructuring (#29) explicitly bans both terms as 'separate NOLs topic.' This spec is that topic. Anchored at TCP/II/A/1 'Net operating and capital loss utilization' with cross-reference scope to TCP/II/A/3 'Consolidated tax returns.' Line held: §172 corporate NOL rules, §382/§383 ownership change limitation mechanics, §269 anti-abuse, §1501-§1504 consolidated return framework at concept depth, §1502 regulations at concept depth, CNOL and SRLY interaction. Out of scope: §172 individual NOL at depth (Individual Taxation), §461(l) excess business loss (Individual Deductions), full §1502 regulatory framework (separate advanced topic), international overlay (§1503(d), foreign branches), §351 formation (Entity Formation and Liquidation), §368/§355/§338 reorganizations (Entity Formation and Restructuring), §1374/§1375 S corp entity-level taxes (S Corporations REG), partnership loss allocation (Partnerships / Advanced Basis), §469/§465 passive/at-risk (Passive Activity), §199A QBI (Individual Deductions), §108 COD income (bankruptcy/insolvency topic).",
};
