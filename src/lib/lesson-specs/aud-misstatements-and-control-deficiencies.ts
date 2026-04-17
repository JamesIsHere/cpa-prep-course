import type { LessonSpec } from "./types";

// Fortieth authored spec — twenty-third of Stage 3. Census v3 rank
// #12: 64 questions, 5 flagged (7.8%) on `tolerable misstatement`
// (3), `AS 2201` (2), `sampling risk` (1). Small drift tail across
// three adjacent drift surfaces.

export const spec: LessonSpec = {
	topic: "Misstatements and Control Deficiencies",
	section: "aud",
	primaryRef: "AUD/IV/B",
	secondaryRefs: [],

	inScope: [
		"AU-C 450 concept of a misstatement: a difference between the reported amount, classification, presentation, or disclosure of a financial statement item and the amount, classification, presentation, or disclosure required for that item to be in accordance with the applicable financial reporting framework. Misstatements can arise from error or fraud.",
		"Types of misstatement under AU-C 450: (1) factual misstatements (unambiguous), (2) judgmental misstatements (differences in management's judgment about accounting estimates that the auditor considers unreasonable), and (3) projected misstatements (auditor's best estimate of misstatements in a population based on extrapolation from sample results).",
		"Classification of misstatements: (a) known misstatements (specifically identified by the auditor or management), (b) likely misstatements (projected from samples or resulting from differences in estimates), and (c) potential misstatements (identified during the audit but not yet confirmed).",
		"Clearly trivial threshold: misstatements that are so small that they clearly do not warrant accumulation or consideration. The trivial threshold is established at planning and is MUCH lower than materiality — typically a small percentage of materiality (often 5-10%). Misstatements below the trivial threshold are not required to be accumulated.",
		"The schedule of uncorrected misstatements (SUM): the auditor accumulates all identified misstatements that exceed the trivial threshold and have not been corrected by management. The SUM is evaluated against materiality at the end of the audit — both individually and in the aggregate — to determine whether the financial statements are materially misstated.",
		"Evaluation of uncorrected misstatements: the auditor considers whether the aggregate of uncorrected misstatements is material to the financial statements as a whole. Qualitative factors are also considered (e.g., whether a misstatement changes the direction of an earnings trend, affects a debt covenant, or involves fraud).",
		"Prior-period uncorrected misstatements and the iron curtain vs rollover methods: under the iron curtain method, the auditor evaluates the cumulative balance sheet effect of misstatements that have built up over multiple years. Under the rollover method, the auditor evaluates only the current-year income statement effect. The CPA exam tests the concept that both methods must be considered (the 'dual method' approach) under SEC guidance.",
		"Communication of identified misstatements to management: the auditor communicates on a timely basis all misstatements accumulated during the audit, other than those clearly trivial, and requests management to correct them. Management's refusal to correct misstatements is a significant matter requiring further evaluation.",
		"Communication to those charged with governance: the auditor communicates uncorrected misstatements, the effect they may have on the opinion, and whether any are material. Governance is informed so that they can ask management to correct them.",
		"Evaluation of whether misstatements indicate a material weakness in internal control: repeated similar misstatements, misstatements caused by management override, or misstatements indicating a pattern of ineffective controls may constitute a material weakness regardless of the dollar magnitude of the individual misstatements.",
		"AU-C 265 concept of a control deficiency: a deficiency in internal control exists when the design or operation of a control does not allow management or employees, in the normal course of performing their assigned functions, to prevent or detect and correct misstatements on a timely basis.",
		"Significant deficiency definition under AU-C 265: a deficiency (or combination of deficiencies) in internal control that is less severe than a material weakness, yet important enough to merit attention by those charged with governance.",
		"Material weakness definition under AU-C 265: a deficiency (or combination of deficiencies) in internal control, such that there is a reasonable possibility that a material misstatement of the entity's financial statements will not be prevented or detected and corrected on a timely basis.",
		"Evaluation framework for severity of a deficiency: (1) MAGNITUDE — could the deficiency result in a misstatement that is material? (2) LIKELIHOOD — is there a reasonable possibility the deficiency will result in a misstatement? (3) COMPENSATING CONTROLS — do other controls mitigate the deficiency? The auditor considers all three factors in classifying the deficiency.",
		"The 'prudent official' test: in evaluating severity, the auditor considers whether a prudent official, having knowledge of the same facts, would conclude that a reasonable possibility exists that a material misstatement could result.",
		"Written communication requirements under AU-C 265: the auditor must communicate in writing any significant deficiencies and material weaknesses to those charged with governance and, if they do not include a member of management with oversight responsibility, to management. The communication is typically delivered shortly after the audit report date but must be within 60 days of the report release date at the latest.",
		"Timing and form of the AU-C 265 communication: written, addressed to those charged with governance (and management if appropriate), and dated no later than 60 days after the report release date. The communication identifies each significant deficiency and material weakness, describes the deficiency, and discusses its potential effect.",
		"Deficiencies that are NOT significant deficiencies or material weaknesses: the auditor may choose to communicate other observed deficiencies in a separate management letter, but this is not required under AU-C 265 — the standard only requires communication of significant deficiencies and material weaknesses.",
		"Relationship between identified misstatements and control deficiencies: an identified misstatement is itself evidence of a potential control deficiency. A material misstatement detected by the audit (but not by the client's controls) suggests the controls did not function — the auditor evaluates whether this represents a material weakness.",
	],

	outOfScope: [
		"AU-C 315 understanding of internal control at depth — the COSO five components, entity-level vs transaction-level controls, IT general controls understanding. Internal Controls topic",
		"AU-C 330 tests of controls at depth — the nature/timing/extent of control testing, sample selection for TOC. Tests of Controls topic",
		"AU-C 320 materiality at depth — setting overall materiality, performance materiality, tolerable misstatement allocation at planning. Materiality topic",
		"AU-C 530 audit sampling at depth — sample size formulas, sampling risk quantification, MUS/PPS, attribute sampling. Audit Sampling topic. Projected misstatement as a concept is in scope here; the projection mechanics belong to Audit Sampling",
		"AU-C 240 fraud procedures at depth — the fraud triangle, brainstorming, management override of controls, presumption of fraud in revenue recognition, fraud-specific procedures. Risk Assessment topic (fraud aspects). The connection from a misstatement to potential fraud is in scope here at concept level",
		"AU-C 700 audit reporting — the decision about what opinion modification results from uncorrected misstatements. Audit Reports topic. This spec connects misstatement evaluation to reporting at concept level; the reporting mechanics are separate",
		"AU-C 705 opinion modifications — Audit Reports topic",
		"AU-C 706 emphasis-of-matter paragraphs — Audit Reports topic",
		"AU-C 260 communication with those charged with governance at depth — the governance communication framework, timing of communications, topics covered. Separate governance communication topic. This spec covers the SPECIFIC communication of misstatements and control deficiencies; the broader governance framework is separate",
		"PCAOB AS 2201 integrated audit — specific material weakness reporting in the ICFR opinion is PCAOB territory",
		"PCAOB AS 2805 management representations at depth — separate topic",
		"Quality management and engagement quality review as sources of control over audit quality — Quality Management topic",
		"Using the Work of Others — specialist, service organization, component auditor reliance. Using the Work of Others topic",
		"IFAC ISA 450 / 265 — non-US standards",
	],

	keyStandards: [
		"AU-C 450 — Evaluation of Misstatements Identified During the Audit",
		"AU-C 265 — Communicating Internal Control Related Matters Identified in an Audit",
		"AU-C 320 — Materiality in Planning and Performing an Audit (referenced for the materiality threshold against which misstatements are evaluated)",
		"AU-C 330 — Performing Audit Procedures in Response to Assessed Risks (referenced for how tests identify misstatements)",
		"AU-C 260 — The Auditor's Communication With Those Charged With Governance (referenced for the governance communication of misstatements)",
		"AU-C 700 — Forming an Opinion and Reporting (referenced for reporting implications of uncorrected misstatements)",
	],

	commonMisconceptions: [
		"Thinking all identified misstatements must be communicated. Misstatements below the CLEARLY TRIVIAL THRESHOLD are not required to be accumulated or communicated. The trivial threshold is established at planning and is typically a small fraction of overall materiality (often 5-10%).",
		"Believing the schedule of uncorrected misstatements is evaluated ONLY in aggregate. The schedule is evaluated BOTH individually (any single misstatement that is material by itself) AND in aggregate (the combined effect of all uncorrected misstatements considered together).",
		"Confusing the iron curtain and rollover methods for prior-period misstatements. The iron curtain method evaluates the cumulative balance sheet effect; the rollover method evaluates only the current-year income statement effect. Under SEC guidance, BOTH methods must be considered (the 'dual method' approach) — a misstatement is material if it is material under either method.",
		"Thinking a control deficiency is the same as a misstatement. A misstatement is an ERROR IN THE FINANCIAL STATEMENTS. A control deficiency is a WEAKNESS IN INTERNAL CONTROL that could lead to misstatements. They are related — a misstatement may reveal an underlying deficiency — but they are distinct concepts.",
		"Believing a significant deficiency and a material weakness are distinguished only by dollar amount. The distinction is based on severity, which considers MAGNITUDE, LIKELIHOOD, and COMPENSATING CONTROLS. A material weakness has a REASONABLE POSSIBILITY of resulting in a MATERIAL misstatement. A significant deficiency is less severe but still warrants attention by governance.",
		"Thinking AU-C 265 requires communication of all observed deficiencies. AU-C 265 requires communication only of SIGNIFICANT DEFICIENCIES and MATERIAL WEAKNESSES. Other observed deficiencies may be communicated in a management letter at the auditor's discretion but are not required.",
		"Confusing the severity classification with the communication timing. The severity classification (significant vs material) is based on magnitude, likelihood, and compensating controls. The communication timing is a 60-day window after report release date for the written communication.",
		"Thinking qualitative factors apply only to materiality. Qualitative factors ALSO apply to misstatement evaluation — a quantitatively small misstatement may be material if it involves fraud, affects a trend, changes segment disclosures, or violates a contractual threshold.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		{
			term: "tolerable misstatement",
			pattern: "tolerable\\s+misstatement\\b",
			category: "materiality mechanics",
			why: "Tolerable misstatement allocation at planning — Materiality topic. This spec covers misstatement EVALUATION; tolerable misstatement is the allocation concept handled in Materiality and applied in Audit Sampling.",
		},
		{
			term: "AS 2201",
			pattern: "\\bAS\\s*2201\\b",
			category: "PCAOB depth",
			why: "PCAOB integrated audit — separate topic.",
		},
		{
			term: "AS 2805",
			pattern: "\\bAS\\s*2805\\b",
			category: "PCAOB depth",
			why: "PCAOB management representations — separate topic.",
		},
		{
			term: "sampling risk",
			pattern: "sampling\\s+risk|risk\\s+of\\s+overreliance|risk\\s+of\\s+incorrect\\s+acceptance",
			category: "sampling mechanics",
			why: "Sampling risk at computation depth — Audit Sampling topic.",
		},
		{
			term: "monetary unit sampling",
			pattern: "monetary[-\\s]unit\\s+sampling|\\bMUS\\b|\\bPPS\\s+sampling",
			category: "sampling mechanics",
			why: "MUS/PPS projection — Audit Sampling topic. Projected misstatement concept is in scope; the projection computation is separate.",
		},
		{
			term: "SOC 1 Type 2",
			pattern: "SOC\\s*1\\s+Type\\s*2|Type\\s*2\\s+SOC\\s*1",
			category: "SOC reliance",
			why: "ISC SOC cluster or Using the Work of Others.",
		},
		{
			term: "trust services criteria",
			pattern: "trust\\s+services\\s+criteria",
			category: "SOC",
			why: "ISC SOC cluster.",
		},
		{
			term: "SQMS 1",
			pattern: "\\bSQMS\\s*1\\b",
			category: "quality management",
			why: "Quality Management topic.",
		},
		{
			term: "component auditor",
			pattern: "component\\s+auditor",
			category: "group audit",
			why: "Using the Work of Others topic.",
		},
		{
			term: "ISA 450",
			pattern: "\\bISA\\s*450\\b",
			category: "IFAC",
			why: "IFAC ISA 450 — non-US.",
		},
		{
			term: "ISA 265",
			pattern: "\\bISA\\s*265\\b",
			category: "IFAC",
			why: "IFAC ISA 265 — non-US.",
		},
	],

	notes:
		"Misstatements and Control Deficiencies (AUD/IV/B) owns AU-C 450 misstatement evaluation (factual/judgmental/projected types, clearly trivial threshold, schedule of uncorrected misstatements, iron curtain vs rollover, qualitative factors) AND AU-C 265 control deficiency evaluation (significant deficiency vs material weakness, severity framework, written communication requirements and timing). Census v3 flagged 5/64 at 7.8% — `tolerable misstatement` (3), `AS 2201` (2), `sampling risk` (1). Out of scope: AU-C 315 IC understanding (Internal Controls), AU-C 330 TOC (Tests of Controls), AU-C 320 materiality at depth (Materiality), AU-C 530 sampling mechanics (Audit Sampling), AU-C 240 fraud (Risk Assessment), AU-C 700/705/706 reporting (Audit Reports), AU-C 260 governance communication at depth, PCAOB AS 2201/2805, Quality Management, Using the Work of Others, IFAC standards.",
};
