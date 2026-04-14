import type { TopicSpec } from "./types";

// Fourth pilot spec — the most editorially constrained TCP topic. AICPA explicitly states
// in the TCP section introduction (page 100 of the 2026 Blueprints PDF) that
// "International tax issues will focus on general concepts of income sourcing and
// allocation as opposed to specific foreign laws or treaties." The six representative
// tasks at TCP/II/A/4 confirm this: five are "Explain" (Remembering and Understanding)
// and only one is a calculation, and even the calculation is "Calculate U.S. and foreign
// source income given a specific scenario" — i.e., apply sourcing rules, not compute a
// foreign tax credit basket or a GILTI inclusion.
//
// THE SCOPE IS DRAMATICALLY NARROWER THAN MOST CPA-PREP INTERNATIONAL-TAX CONTENT. GILTI,
// Subpart F mechanics, FDII, BEAT, foreign tax credit computation, treaty interpretation,
// and transfer pricing methods are ALL out of scope. The drift surface here is enormous
// because most generators and most published study material treat international tax as a
// rich computational area — Slayer needs to actively defend against that drift.
//
// Structural note: the AICPA puts this topic at TCP/II/A/4 (under "C corporations").
// Slayer's blueprint.ts puts it at tcp.2.B "International tax provisions" as a standalone
// group with sub-topics including "Subpart F and GILTI" and "Foreign tax credit
// mechanics" — both of which are out of scope per AICPA. The Slayer blueprint structure
// is wrong on the merits and should eventually be reorganized; for now the spec anchors
// `topic` to the Slayer tagging string ("International Tax") and `blueprintRef` to the
// AICPA path. The blueprint.ts reorganization is a separate ticket — flagged in notes.
//
// JSON FIX: TCP/II/A and TCP/II/B were missing entirely from
// alignment/aicpa-blueprint-tasks.json before this work. The JSON was patched in the
// same commit that introduced this spec. See the resolver and drift test.

export const spec: TopicSpec = {
	topic: "International Tax",
	section: "tcp",
	blueprintRef: "TCP/II/A/4",

	inScope: [
		"U.S. source vs. foreign source income classification rules at the conceptual level: where is the income earned and which sourcing rule applies (interest, dividends, personal services, rents and royalties, sale of inventory, sale of real property)",
		"The general framework of how a U.S. corporation's foreign-source income enters its U.S. taxable income (worldwide system as background; specific exclusions like Section 245A DRD are out at the mechanics level)",
		"Federal tax withholding requirements on U.S.-source payments to a foreign corporation (the concept of withholding agent obligation; the standard 30% statutory rate as a default; that treaties may reduce this rate, without naming specific treaty rates)",
		"Controlled foreign corporation (CFC) at the concept level: a foreign corporation more than 50% owned (vote or value) by U.S. shareholders, each owning at least 10%; the existence of CFC status triggers U.S. taxation of certain income",
		"Permanent establishment (PE) concept: what kinds of activities create a taxable presence for a foreign corporation in the U.S. (fixed place of business, dependent agent authority, construction site duration thresholds at the conceptual level)",
		"Foreign branch vs. foreign subsidiary: the federal income tax distinction (branch income flows through to the U.S. parent currently; subsidiary income is generally deferred until repatriation, subject to anti-deferral rules)",
		"Calculating U.S.-source vs. foreign-source income from a given scenario by applying the basic sourcing rules to each income item",
		"The conceptual purpose of the U.S. international tax regime: prevent base erosion, tax worldwide income, but mitigate double taxation through the foreign tax credit (the existence of the FTC; not its computation)",
		"Recognition that a foreign corporation with U.S. operations may owe U.S. tax on its effectively connected income (ECI) — the concept and trigger, not the Form 1120-F mechanics",
	],

	outOfScope: [
		"GILTI (Global Intangible Low-Taxed Income) under Section 951A — the inclusion calculation, tested income, qualified business asset investment (QBAI) 10% deduction, the 50% Section 250 deduction",
		"Subpart F income mechanics — the categories of foreign personal holding company income, foreign base company sales income, foreign base company services income, the high-tax exception, the de minimis and full-inclusion rules",
		"FDII (Foreign-Derived Intangible Income) under Section 250",
		"BEAT (Base Erosion and Anti-Abuse Tax) under Section 59A",
		"Foreign tax credit computation: the Section 904 limitation, separate FTC baskets (passive, general, GILTI, branch, foreign branch income), allocation and apportionment of expenses, look-through rules, carryback/carryforward of excess credits",
		"Section 245A dividends-received deduction for foreign-source dividends from specified 10% owned foreign corporations beyond noting that participation exemption exists conceptually",
		"Section 163(j) interest expense limitation as it interacts with international taxpayers",
		"Section 367 outbound transfer rules, branch loss recapture",
		"Transfer pricing methods under Section 482: comparable uncontrolled price (CUP), resale price method, cost plus, comparable profits method (CPM), profit split method, transactional net margin method (TNMM)",
		"Advance pricing agreements (APAs), competent authority procedures, mutual agreement procedure (MAP)",
		"Specific U.S. income tax treaty provisions, treaty shopping, limitation on benefits (LOB) clauses, qualified resident determinations",
		"OECD Model Tax Convention or UN Model Tax Convention provisions",
		"BEPS (Base Erosion and Profit Shifting) initiative, Pillar One, Pillar Two, global minimum tax, qualified domestic minimum top-up tax (QDMTT), income inclusion rule (IIR), undertaxed profits rule (UTPR)",
		"Country-by-country reporting (Form 8975), Master File / Local File transfer pricing documentation",
		"Form 5471 (CFC reporting), Form 8865 (foreign partnership), Form 8858 (foreign disregarded entity), Form 1118 (corporate FTC), Form 5472 (25% foreign-owned U.S. corp) at the line-item or filing-mechanics level",
		"Check-the-box entity classification election mechanics for foreign entities (per se corporation list, default classifications)",
		"Inversion transactions and Section 7874",
		"Earnings stripping rules, anti-conduit financing rules",
		"Section 965 transition tax / repatriation tax mechanics",
		"Passive foreign investment company (PFIC) rules, qualified electing fund (QEF) elections, mark-to-market elections",
		"Foreign currency tax accounting under Section 988 (functional currency determination, character and source of Section 988 gain/loss, qualified business unit (QBU) rules)",
		"Specific bilateral treaty rates for dividends, interest, royalties (e.g., the 0/5/15% U.S.-UK dividend tiers)",
		"State tax conformity to federal international tax provisions",
	],

	keyStandards: [
		"IRC §861–§865 — Source rules for income and deductions",
		"IRC §882 — Tax on income of foreign corporations connected with U.S. business (ECI concept)",
		"IRC §1441–§1446 — Withholding on payments to foreign persons (concept only)",
		"IRC §957 — Controlled foreign corporation definition (concept only)",
		"IRC §7701(b) — U.S. resident vs. nonresident classification (concept only)",
	],

	commonMisconceptions: [
		"Believing that a U.S. corporation pays U.S. tax on ALL of its foreign subsidiary's earnings as soon as they're earned (not generally true — deferral applies until repatriation, subject to anti-deferral rules whose mechanics are out of scope)",
		"Believing that a foreign branch and a foreign subsidiary have the same federal tax treatment for the U.S. parent (they do not — branch income is currently taxable; subsidiary income is generally deferred)",
		"Confusing the CFC ownership threshold (more than 50% by vote or value, with at least 10% U.S. shareholders) with simple majority ownership by any foreign-related party",
		"Treating the existence of permanent establishment as automatic for any U.S. activity by a foreign corporation (PE requires a fixed place of business or dependent agent with contracting authority, not just sales activity)",
		"Assuming the 30% statutory withholding rate always applies to U.S.-source payments to foreign persons (treaty reductions are common; the spec teaches the existence of treaty reductions, not specific rates)",
		"Confusing income sourcing (where income is earned for U.S. tax purposes) with income taxability (whether the income is subject to U.S. tax) — they are related but distinct concepts",
		"Believing that interest paid by a U.S. corporation is always U.S.-source (it is, by reference to the residence of the payer, with limited exceptions for 80/20 corporations — the rule, not the exceptions)",
		"Confusing foreign tax credit availability with the foreign tax credit limitation (the existence of FTC is in scope; the limitation calculation is out)",
	],

	representativeDifficulty: "medium",

	notes:
		"CRITICAL EDITORIAL FLAG: this topic is the highest drift-risk topic in the entire pilot. The AICPA scope is dramatically narrower than published CPA-prep international tax material. Most existing question banks include GILTI inclusion calculations, FTC limitation problems, Subpart F categorization questions, and treaty rate lookups — all of which are out of scope per the 2026 blueprint. Slayer's `blueprint.ts` currently structures this topic as `tcp.2.B` 'International tax provisions' with sub-topics 'Subpart F and GILTI' and 'Foreign tax credit mechanics' — both names refer to material that is out of scope. The blueprint.ts structure should eventually be revised to match AICPA (single 'International tax issues' topic under TCP/II/A/4 C corporations). FOLLOW-UP REQUIRED: a content audit of the 103 questions currently tagged 'International Tax' against the inScope/outOfScope lists in this spec; expect a meaningful fraction (possibly 30%+) to require deletion or rewrite analogous to the BAR/Prospective econometrics cleanup. New question generation in this topic should be paused until the audit completes. The spec also reflects a JSON patch: TCP/II/A and TCP/II/B were missing from alignment/aicpa-blueprint-tasks.json before this work (an extraction bug that dropped two entire groups); they were restored in the same commit that introduced this spec.",
};
