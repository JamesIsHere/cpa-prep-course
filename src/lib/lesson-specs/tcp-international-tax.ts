import type { LessonSpec } from "./types";

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
// `topic` to the Slayer tagging string ("International Tax") and `primaryRef` to the
// AICPA path. The blueprint.ts reorganization is a separate ticket — flagged in notes.
//
// JSON FIX: TCP/II/A and TCP/II/B were missing entirely from
// alignment/aicpa-blueprint-tasks.json before this work. The JSON was patched in the
// same commit that introduced this spec. See the resolver and drift test.

export const spec: LessonSpec = {
	topic: "International Tax",
	section: "tcp",
	primaryRef: "TCP/II/A/4",
	secondaryRefs: [],

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

	bannedTerms: [
		{
			term: "GILTI",
			pattern: "\\bGILTI\\b",
			category: "named provision",
			why: "Global Intangible Low-Taxed Income (Section 951A) is out of scope per 2026 AICPA Blueprint TCP/II/A/4 — testing limited to general sourcing concepts, not specific anti-deferral provisions.",
		},
		{
			term: "Global Intangible Low-Taxed Income",
			pattern: "Global\\s+Intangible\\s+Low[-\\s]Taxed\\s+Income",
			category: "named provision",
			why: "Same as GILTI — out of scope.",
		},
		{
			term: "Section 951A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)?951A\\b",
			category: "code section",
			why: "GILTI code section — out of scope.",
		},
		{
			term: "Subpart F",
			pattern: "\\bSubpart\\s*F\\b",
			category: "named provision",
			why: "Subpart F mechanics (categories of FPHC income, foreign base company income, high-tax exception) are out of scope; the general CFC concept is in scope but the Subpart F mechanics are not.",
		},
		{
			term: "Foreign Personal Holding Company",
			pattern: "Foreign\\s+Personal\\s+Holding\\s+Company|FPHC",
			category: "Subpart F category",
			why: "A Subpart F income category — out of scope.",
		},
		{
			term: "Foreign Base Company",
			pattern: "Foreign\\s+Base\\s+Company",
			category: "Subpart F category",
			why: "Subpart F category (FBCSI / FBCSvcI) — out of scope.",
		},
		{
			term: "FDII",
			pattern: "\\bFDII\\b",
			category: "named provision",
			why: "Foreign-Derived Intangible Income (Section 250) — out of scope.",
		},
		{
			term: "Foreign-Derived Intangible Income",
			pattern: "Foreign[-\\s]Derived\\s+Intangible\\s+Income",
			category: "named provision",
			why: "Same as FDII — out of scope.",
		},
		{
			term: "Section 250",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)250\\b",
			category: "code section",
			why: "FDII deduction section — out of scope.",
		},
		{
			term: "BEAT",
			pattern: "\\bBEAT\\b",
			category: "named provision",
			why: "Base Erosion and Anti-Abuse Tax (Section 59A) — out of scope.",
		},
		{
			term: "Base Erosion",
			pattern: "Base\\s+Erosion\\s+(?:and\\s+Anti[-\\s]Abuse|Tax|Payment)",
			category: "named provision",
			why: "BEAT full name — out of scope.",
		},
		{
			term: "Section 59A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)59A\\b",
			category: "code section",
			why: "BEAT code section — out of scope.",
		},
		{
			term: "foreign tax credit",
			pattern: "foreign\\s+tax\\s+credit",
			category: "FTC computation",
			why: "FTC computation, limitation, and basket rules are out of scope. The EXISTENCE of FTC is borderline-in-scope; the COMPUTATION is out. Flag for review — legitimate uses at the conceptual level may survive the audit.",
		},
		{
			term: "FTC",
			pattern: "\\bFTC\\b",
			category: "FTC computation",
			why: "Same as foreign tax credit — flag for review.",
		},
		{
			term: "Section 904",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)904\\b",
			category: "code section",
			why: "FTC limitation calculation section — out of scope.",
		},
		{
			term: "FTC basket",
			pattern: "(?:FTC|foreign\\s+tax\\s+credit)\\s+basket|separate\\s+basket",
			category: "FTC computation",
			why: "Section 904 basket rules — out of scope.",
		},
		{
			term: "passive basket",
			pattern: "passive\\s+(?:category\\s+)?basket",
			category: "FTC computation",
			why: "FTC basket rules — out of scope.",
		},
		{
			term: "look-through rules",
			pattern: "look[-\\s]through\\s+rules?",
			category: "FTC computation",
			why: "Section 904 look-through rules — out of scope.",
		},
		{
			term: "Section 245A",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)245A\\b",
			category: "code section",
			why: "Participation exemption DRD for foreign source dividends — out of scope beyond concept.",
		},
		{
			term: "participation exemption",
			pattern: "participation\\s+exemption",
			category: "named concept",
			why: "Section 245A participation exemption beyond high-level concept is out of scope.",
		},
		{
			term: "Section 163(j)",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)163\\(?j\\)?",
			category: "code section",
			why: "Interest expense limitation — out of scope in the international tax context (may be in scope elsewhere).",
		},
		{
			term: "Section 367",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)367\\b",
			category: "code section",
			why: "Outbound transfer rules, branch loss recapture — out of scope.",
		},
		{
			term: "outbound transfer",
			pattern: "outbound\\s+transfer",
			category: "named concept",
			why: "Section 367 outbound transfer rules — out of scope.",
		},
		{
			term: "branch loss recapture",
			pattern: "branch\\s+loss\\s+recapture",
			category: "named concept",
			why: "Section 367 branch loss recapture — out of scope.",
		},
		{
			term: "Section 482",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)482\\b",
			category: "code section",
			why: "Transfer pricing — out of scope.",
		},
		{
			term: "transfer pricing",
			pattern: "transfer\\s+pricing",
			category: "named concept",
			why: "Transfer pricing methods and rules — out of scope.",
		},
		{
			term: "comparable uncontrolled price",
			pattern: "comparable\\s+uncontrolled\\s+price|\\bCUP\\s+method\\b",
			category: "transfer pricing method",
			why: "Transfer pricing method — out of scope.",
		},
		{
			term: "resale price method",
			pattern: "resale\\s+price\\s+method",
			category: "transfer pricing method",
			why: "Transfer pricing method — out of scope.",
		},
		{
			term: "cost plus method",
			pattern: "cost\\s+plus\\s+method",
			category: "transfer pricing method",
			why: "Transfer pricing method — out of scope.",
		},
		{
			term: "comparable profits method",
			pattern: "comparable\\s+profits\\s+method|\\bCPM\\b",
			category: "transfer pricing method",
			why: "Transfer pricing method — out of scope.",
		},
		{
			term: "profit split",
			pattern: "profit\\s+split\\s+method|profit\\s+split\\s+analysis",
			category: "transfer pricing method",
			why: "Transfer pricing method — out of scope.",
		},
		{
			term: "TNMM",
			pattern: "\\bTNMM\\b|transactional\\s+net\\s+margin\\s+method",
			category: "transfer pricing method",
			why: "Transfer pricing method — out of scope.",
		},
		{
			term: "arm's length",
			pattern: "arm'?s[-\\s]length\\s+(?:standard|principle|test)",
			category: "transfer pricing principle",
			why: "Formal arm's-length testing is out of scope.",
		},
		{
			term: "advance pricing agreement",
			pattern: "advance\\s+pricing\\s+agreement|\\bAPA\\b",
			category: "named procedure",
			why: "APAs — out of scope.",
		},
		{
			term: "competent authority",
			pattern: "competent\\s+authority",
			category: "named procedure",
			why: "Competent authority / MAP procedures — out of scope.",
		},
		{
			term: "mutual agreement procedure",
			pattern: "mutual\\s+agreement\\s+procedure|\\bMAP\\b",
			category: "named procedure",
			why: "MAP procedures — out of scope.",
		},
		{
			term: "treaty",
			pattern: "\\btax\\s+treaty|\\btax\\s+treaties|income\\s+tax\\s+treaty",
			category: "treaty",
			why: "Specific treaty provisions are out of scope per AICPA ('as opposed to specific foreign laws or treaties'). The WORD treaty may appear legitimately — flag for review rather than auto-delete.",
		},
		{
			term: "limitation on benefits",
			pattern: "limitation\\s+on\\s+benefits|\\bLOB\\s+clause",
			category: "treaty provision",
			why: "LOB provisions — out of scope.",
		},
		{
			term: "treaty shopping",
			pattern: "treaty\\s+shopping",
			category: "treaty concept",
			why: "Treaty shopping — out of scope.",
		},
		{
			term: "OECD",
			pattern: "\\bOECD\\b",
			category: "named body",
			why: "OECD model, BEPS initiative — out of scope.",
		},
		{
			term: "BEPS",
			pattern: "\\bBEPS\\b",
			category: "named initiative",
			why: "Base Erosion and Profit Shifting initiative — out of scope.",
		},
		{
			term: "Pillar One",
			pattern: "Pillar\\s+One",
			category: "named initiative",
			why: "OECD Pillar One — out of scope.",
		},
		{
			term: "Pillar Two",
			pattern: "Pillar\\s+Two",
			category: "named initiative",
			why: "OECD Pillar Two global minimum tax — out of scope.",
		},
		{
			term: "global minimum tax",
			pattern: "global\\s+minimum\\s+tax",
			category: "named concept",
			why: "Pillar Two — out of scope.",
		},
		{
			term: "QDMTT",
			pattern: "\\bQDMTT\\b|qualified\\s+domestic\\s+minimum\\s+top[-\\s]up\\s+tax",
			category: "Pillar Two mechanism",
			why: "Pillar Two QDMTT — out of scope.",
		},
		{
			term: "IIR",
			pattern: "\\bIIR\\b|income\\s+inclusion\\s+rule",
			category: "Pillar Two mechanism",
			why: "Pillar Two income inclusion rule — out of scope.",
		},
		{
			term: "UTPR",
			pattern: "\\bUTPR\\b|undertaxed\\s+profits\\s+rule|undertaxed\\s+payments\\s+rule",
			category: "Pillar Two mechanism",
			why: "Pillar Two undertaxed profits rule — out of scope.",
		},
		{
			term: "country-by-country reporting",
			pattern: "country[-\\s]by[-\\s]country\\s+(?:reporting|report)|\\bCbCR\\b",
			category: "reporting",
			why: "CbCR — out of scope.",
		},
		{
			term: "Master File",
			pattern: "Master\\s+File",
			category: "reporting",
			why: "Transfer pricing documentation — out of scope.",
		},
		{
			term: "Local File",
			pattern: "Local\\s+File",
			category: "reporting",
			why: "Transfer pricing documentation — out of scope.",
		},
		{
			term: "Form 5471",
			pattern: "Form\\s*5471",
			category: "form",
			why: "CFC reporting form — out of scope at the line-item level.",
		},
		{
			term: "Form 8865",
			pattern: "Form\\s*8865",
			category: "form",
			why: "Foreign partnership reporting form — out of scope.",
		},
		{
			term: "Form 8858",
			pattern: "Form\\s*8858",
			category: "form",
			why: "Foreign disregarded entity reporting form — out of scope.",
		},
		{
			term: "Form 1118",
			pattern: "Form\\s*1118",
			category: "form",
			why: "Corporate FTC form — out of scope.",
		},
		{
			term: "Form 5472",
			pattern: "Form\\s*5472",
			category: "form",
			why: "25% foreign-owned U.S. corp reporting form — out of scope.",
		},
		{
			term: "Form 8975",
			pattern: "Form\\s*8975",
			category: "form",
			why: "Country-by-country reporting form — out of scope.",
		},
		{
			term: "check-the-box",
			pattern: "check[-\\s]the[-\\s]box",
			category: "named concept",
			why: "Foreign entity classification election mechanics — out of scope.",
		},
		{
			term: "per se corporation",
			pattern: "per\\s+se\\s+corporation",
			category: "named concept",
			why: "Check-the-box per se corporation list — out of scope.",
		},
		{
			term: "Section 7874",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)7874\\b",
			category: "code section",
			why: "Inversion rules — out of scope.",
		},
		{
			term: "inversion",
			pattern: "corporate\\s+inversion|inverted\\s+corporation",
			category: "named concept",
			why: "Inversion transactions — out of scope.",
		},
		{
			term: "earnings stripping",
			pattern: "earnings\\s+stripping",
			category: "named concept",
			why: "Earnings stripping rules — out of scope.",
		},
		{
			term: "anti-conduit",
			pattern: "anti[-\\s]conduit",
			category: "named concept",
			why: "Anti-conduit financing rules — out of scope.",
		},
		{
			term: "Section 965",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)965\\b",
			category: "code section",
			why: "Transition tax / repatriation tax — out of scope.",
		},
		{
			term: "transition tax",
			pattern: "transition\\s+tax",
			category: "named concept",
			why: "Section 965 transition tax — out of scope.",
		},
		{
			term: "repatriation tax",
			pattern: "repatriation\\s+tax",
			category: "named concept",
			why: "Section 965 — out of scope.",
		},
		{
			term: "PFIC",
			pattern: "\\bPFIC\\b",
			category: "named provision",
			why: "Passive Foreign Investment Company rules — out of scope.",
		},
		{
			term: "passive foreign investment",
			pattern: "passive\\s+foreign\\s+investment\\s+company",
			category: "named provision",
			why: "PFIC — out of scope.",
		},
		{
			term: "QEF",
			pattern: "\\bQEF\\b|qualified\\s+electing\\s+fund",
			category: "PFIC election",
			why: "PFIC QEF election — out of scope.",
		},
		{
			term: "mark-to-market election",
			pattern: "mark[-\\s]to[-\\s]market\\s+election",
			category: "PFIC election",
			why: "PFIC mark-to-market election — out of scope.",
		},
		{
			term: "Section 988",
			pattern: "(?:Section\\s*|§\\s*|Sec\\.?\\s*|IRC\\s*§?\\s*)988\\b",
			category: "code section",
			why: "Foreign currency tax accounting — out of scope.",
		},
		{
			term: "functional currency",
			pattern: "functional\\s+currency",
			category: "named concept",
			why: "Section 988 functional currency determination — out of scope.",
		},
		{
			term: "QBU",
			pattern: "\\bQBU\\b|qualified\\s+business\\s+unit",
			category: "named concept",
			why: "Section 988 qualified business unit rules — out of scope.",
		},
		{
			term: "tested income",
			pattern: "tested\\s+income",
			category: "GILTI terminology",
			why: "GILTI tested income — out of scope.",
		},
		{
			term: "QBAI",
			pattern: "\\bQBAI\\b|qualified\\s+business\\s+asset\\s+investment",
			category: "GILTI terminology",
			why: "GILTI QBAI 10% deduction — out of scope.",
		},
		{
			term: "high-tax exception",
			pattern: "high[-\\s]tax\\s+exception",
			category: "Subpart F/GILTI terminology",
			why: "Subpart F or GILTI high-tax exception — out of scope.",
		},
		{
			term: "de minimis rule",
			pattern: "de\\s+minimis\\s+rule.{0,30}(?:Subpart|CFC|foreign)",
			category: "Subpart F terminology",
			why: "Subpart F de minimis/full-inclusion rules — out of scope.",
		},
		{
			term: "full-inclusion rule",
			pattern: "full[-\\s]inclusion\\s+rule",
			category: "Subpart F terminology",
			why: "Subpart F full-inclusion rule — out of scope.",
		},
	],

	notes:
		"CRITICAL EDITORIAL FLAG: this topic is the highest drift-risk topic in the entire pilot. The AICPA scope is dramatically narrower than published CPA-prep international tax material. Most existing question banks include GILTI inclusion calculations, FTC limitation problems, Subpart F categorization questions, and treaty rate lookups — all of which are out of scope per the 2026 blueprint. Slayer's `blueprint.ts` currently structures this topic as `tcp.2.B` 'International tax provisions' with sub-topics 'Subpart F and GILTI' and 'Foreign tax credit mechanics' — both names refer to material that is out of scope. The blueprint.ts structure should eventually be revised to match AICPA (single 'International tax issues' topic under TCP/II/A/4 C corporations). FOLLOW-UP REQUIRED: a content audit of the 103 questions currently tagged 'International Tax' against the inScope/outOfScope lists in this spec; expect a meaningful fraction (possibly 30%+) to require deletion or rewrite analogous to the BAR/Prospective econometrics cleanup. New question generation in this topic should be paused until the audit completes. The spec also reflects a JSON patch: TCP/II/A and TCP/II/B were missing from alignment/aicpa-blueprint-tasks.json before this work (an extraction bug that dropped two entire groups); they were restored in the same commit that introduced this spec.",
};
