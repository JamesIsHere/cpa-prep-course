import type { LessonSpec } from "./types";

// Thirty-seventh authored spec — twentieth of Stage 3. Census v3 rank
// #9: 64 questions, 6 flagged (9.4%) on `sampling risk` (3),
// `SOC 1 Type 2` (2), `tolerable rate of deviation` (1). Likely
// rewrites rather than deletes — the sampling concepts appear at
// concept level in TOC questions.

export const spec: LessonSpec = {
	topic: "Tests of Controls",
	section: "aud",
	blueprintRef: "AUD/III/D/1",

	inScope: [
		"The purpose of tests of controls: obtaining audit evidence about the operating effectiveness of controls — whether controls operated as designed throughout the period of intended reliance — to support the auditor's planned level of control risk. Without evidence of operating effectiveness, the auditor cannot rely on controls and must use a fully substantive approach.",
		"The decision framework for whether to test controls: (1) the auditor plans to rely on controls to reduce substantive testing, (2) substantive procedures alone would not provide sufficient appropriate evidence, or (3) in an integrated audit of ICFR. When neither condition applies, the auditor may choose a purely substantive approach and skip tests of controls entirely.",
		"The nature of test procedures: inquiry of client personnel, observation of controls being performed, inspection of documents evidencing control performance, and reperformance (the auditor independently applies the control). Inquiry alone is NOT sufficient — must be combined with one or more of the other procedure types.",
		"Reperformance as the most persuasive control test procedure: the auditor independently executes the control using the same information management used. Example: reperforming a monthly bank reconciliation by comparing the bank statement to the general ledger and investigating reconciling items.",
		"Inspection of documentation as the most common test procedure: examining signed, dated, and initialed documents that evidence the control's performance. The auditor traces the control's performance through the audit trail.",
		"Timing of tests of controls — interim vs year-end: the auditor may perform TOC at an interim date (compressing the control's period of operation into a shorter window) or at year-end. Interim testing with roll-forward procedures covers the remaining period through year-end. The roll-forward procedures may include additional TOC or just inquiry to confirm the control continues to operate.",
		"Extent of tests of controls: a function of the frequency of the control, the nature of the evidence, the period of intended reliance, the assessed risk, and the prior period evidence available. Manual controls typically require larger samples than automated controls (which operate consistently and require fewer tests per control).",
		"Sample selection for tests of controls at concept level: the auditor selects items representative of the population to support conclusions about operating effectiveness. The specific sample size formulas and sampling risk quantification belong to the Audit Sampling topic; this spec covers the concept that TOC samples are typically small when reliance is conservative and larger when reliance is aggressive.",
		"Automated controls — a single test may suffice: when a control is entirely performed by an application and ITGCs are effective, a single reperformance may provide evidence for the entire period (benchmarking). This is much more efficient than testing manual controls.",
		"Manual controls — sample-based testing: because humans perform manual controls inconsistently, the auditor selects a sample of instances to test. The sample size reflects the auditor's assessed risk and desired assurance.",
		"Prior-period evidence and rotation: AU-C 330 permits the auditor to rotate tests of controls — for controls over lower risk areas, prior-period evidence can be used in the current year subject to the five-factor test (no significant changes in control, no changes in the process, no changes in IT environment, the control addresses lower risk, the auditor performs confirmatory procedures this year). Rotation applies at most once in three years.",
		"Dual-purpose tests: a single procedure that simultaneously tests a control's operating effectiveness AND provides substantive evidence about the underlying transaction. Example: selecting a sample of sales invoices, verifying proper credit approval (TOC), and recalculating the recorded amount (substantive test of details). Dual-purpose tests must be designed to achieve both objectives — not sacrifice one for the other.",
		"Evaluating the results of tests of controls: the auditor evaluates the deviation rate observed against the tolerable rate determined at planning. If the observed rate is acceptable, the auditor supports the planned reliance. If not, the auditor revises the planned level of control risk — typically requiring more extensive substantive procedures.",
		"The connection between tests of controls and the planned level of substantive testing: effective controls (supported by TOC) allow the auditor to reduce substantive procedures. When controls cannot be relied on — by design, by failed testing, or because the auditor chose not to test — substantive procedures must be increased accordingly.",
		"Integration with AU-C 315 risk assessment: TOC is performed in response to the assessed risk of material misstatement. The auditor's understanding of internal control (AU-C 315) identifies which controls are relevant to specific assertions, and TOC evaluates whether those controls operated effectively.",
		"Concurrent testing of multiple controls: in practice, the auditor often tests several related controls in a single sample (e.g., testing purchase order authorization, three-way match, and vendor master file setup in one sample of disbursements). This improves efficiency but requires careful audit program design.",
	],

	outOfScope: [
		"Audit sampling theory at computation depth — sample size formulas, sampling risk formulas, statistical vs nonstatistical sampling method selection, tolerable rate of deviation computation, upper limit of deviation calculation. Audit Sampling topic",
		"Attribute sampling methodology at full mechanics depth — sample size tables from AICPA guides, probability-of-selection formulas, use of audit software for sample selection. Audit Sampling topic",
		"Substantive procedure design and execution — substantive analytical procedures, tests of details of balances, confirmation procedures. Substantive Procedures topic",
		"AU-C 315 risk assessment at depth — the risk assessment procedures themselves, risk identification and assessment, significant risks determination. Risk Assessment topic",
		"AU-C 265 communication of internal control matters at depth — the format and content of the communication to governance, the specific timing requirements. Misstatements and Control Deficiencies topic",
		"AU-C 402 user auditor reliance on service organization SOC reports — Using the Work of Others topic, ISC SOC cluster for service-side",
		"SOC 1 Type 2 report content and structure — ISC SOC cluster",
		"Quality management at firm or engagement level — Quality Management topic",
		"Internal control understanding and design evaluation — Internal Controls topic (this spec tests OPERATING effectiveness; the understanding and design evaluation is Internal Controls territory)",
		"PCAOB AS 2201 integrated audit of ICFR — separate integrated audit topic",
		"PCAOB AS 2315 audit sampling — PCAOB depth",
		"IFAC ISA 330 — non-US",
	],

	keyStandards: [
		"AU-C 330 — Performing Audit Procedures in Response to Assessed Risks and Evaluating the Audit Evidence Obtained",
		"AU-C 315 — Understanding the Entity and Assessing Risks (referenced for the risk assessment that drives TOC decisions)",
		"AU-C 530 — Audit Sampling (referenced for the sampling concepts that TOC applies)",
		"AU-C 500 — Audit Evidence (referenced for the general evidence standard)",
	],

	commonMisconceptions: [
		"Thinking tests of controls are required in every audit. TOC is required only when the auditor plans to rely on controls, when substantive procedures alone would not provide sufficient appropriate evidence, or in an integrated audit. A purely substantive approach skips TOC entirely.",
		"Believing inquiry alone is sufficient. AU-C 330 explicitly requires that inquiry be combined with at least one other procedure type (observation, inspection, or reperformance) to obtain sufficient appropriate evidence of operating effectiveness.",
		"Confusing test of controls with test of details. TOC evaluates whether a CONTROL operated effectively. Test of details evaluates whether an underlying TRANSACTION OR BALANCE is materially correct. Dual-purpose tests serve both objectives simultaneously but are distinct from single-purpose tests.",
		"Thinking automated controls require the same sample size as manual controls. Once an automated control is tested to operate effectively and the supporting ITGCs are reliable, a single test may suffice for the entire period. Manual controls require sample-based testing because human performance varies.",
		"Believing rotation of TOC is always permitted. Rotation is subject to a five-factor test — no significant changes in the control, no changes in the process, no changes in the IT environment, the control addresses lower risk, and confirmatory procedures performed annually. For higher-risk areas, TOC must be performed each year.",
		"Thinking the results of TOC affect only control risk assessment. TOC results directly affect the planned substantive procedures. If controls can be relied on, substantive testing is reduced. If controls fail, substantive testing is increased to compensate — often with more extensive tests of details near year-end.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		{
			term: "sampling risk",
			pattern: "sampling\\s+risk\\s+of\\s+(?:overreliance|underreliance|incorrect\\s+acceptance|incorrect\\s+rejection)|risk\\s+of\\s+overreliance|risk\\s+of\\s+incorrect\\s+acceptance",
			category: "sampling mechanics",
			why: "Specific sampling risk categories — Audit Sampling topic. General concept mention is allowed.",
		},
		{
			term: "tolerable rate of deviation",
			pattern: "tolerable\\s+rate\\s+of\\s+deviation",
			category: "sampling mechanics",
			why: "Attribute sampling tolerable rate — Audit Sampling topic. TOC references tolerable rate at comparison level; specific computation is separate.",
		},
		{
			term: "monetary unit sampling",
			pattern: "monetary[-\\s]unit\\s+sampling|\\bMUS\\b|\\bPPS\\s+sampling",
			category: "sampling mechanics",
			why: "MUS/PPS is substantive sampling — Audit Sampling topic.",
		},
		{
			term: "SOC 1 Type 2",
			pattern: "SOC\\s*1\\s+Type\\s*2|Type\\s*2\\s+SOC\\s*1",
			category: "SOC reliance",
			why: "SOC 1 Type 2 at depth — Using the Work of Others or ISC SOC cluster.",
		},
		{
			term: "trust services criteria",
			pattern: "trust\\s+services\\s+criteria",
			category: "SOC 2",
			why: "ISC SOC cluster.",
		},
		{
			term: "AS 2201",
			pattern: "\\bAS\\s*2201\\b",
			category: "PCAOB depth",
			why: "PCAOB integrated audit — separate topic.",
		},
		{
			term: "AS 2315",
			pattern: "\\bAS\\s*2315\\b",
			category: "PCAOB depth",
			why: "PCAOB audit sampling — PCAOB depth.",
		},
		{
			term: "ISA 330",
			pattern: "\\bISA\\s*330\\b",
			category: "IFAC",
			why: "IFAC equivalent — non-US.",
		},
		{
			term: "SQMS 1",
			pattern: "\\bSQMS\\s*1\\b",
			category: "quality management",
			why: "Quality Management topic.",
		},
		{
			term: "tolerable misstatement",
			pattern: "tolerable\\s+misstatement",
			category: "materiality",
			why: "Materiality topic / Audit Sampling topic.",
		},
		{
			term: "component auditor",
			pattern: "component\\s+auditor",
			category: "group audit",
			why: "Using the Work of Others topic.",
		},
	],

	notes:
		"Tests of Controls (AUD/III/D/1) owns the operating effectiveness evaluation of internal controls under AU-C 330 — nature of test procedures (inquiry, observation, inspection, reperformance), timing (interim vs year-end with rollforward), extent (automated single-test vs manual sample-based), rotation with five-factor test, dual-purpose tests, integration with risk assessment, and the connection to planned substantive procedures. Sibling of Internal Controls (which owns UNDERSTANDING and DESIGN evaluation) and Audit Sampling (which owns sampling mechanics). Out of scope: sampling theory at computation depth, substantive procedure design, AU-C 315 risk assessment depth, AU-C 402/SOC reliance, AU-C 265 communication, quality management, PCAOB integrated audit, IFAC standards.",
};
