import type { TopicSpec } from "./types";

// Sixteenth authored spec. Slayer's "Audit Evidence" topic spans several
// AICPA groups in Area III "Performing Further Procedures and Obtaining
// Evidence":
//
//   AUD/III/B "Sufficient appropriate evidence" — the core scope of this
//             topic (sources of evidence, relevance and reliability,
//             professional skepticism, corroboration vs. contradiction)
//   AUD/III/D/1 "Test of controls and test of details" — procedures to
//             obtain evidence (inspection, observation, inquiry,
//             recalculation, reperformance)
//   AUD/III/D/2 "Analytical procedures" — analytical procedures as evidence
//   AUD/III/D/3 "External confirmations" — AR confirmations, bank
//             confirmations, AP confirmations, positive vs. negative,
//             exceptions and nonresponses
//   AUD/III/E/various "Specific matters that require special consideration"
//             — accounting estimates evaluation at concept level
//
// Slayer's blueprint.ts places this at aud.3.E "Audit evidence evaluation"
// with three sub-topics: sufficiency/appropriateness, external
// confirmations, and accounting estimates evaluation. The spec anchors to
// the group-level AUD/III/B reference.
//
// CRITICAL SCOPE BOUNDARY (per the rollout handoff): formal sampling theory
// (risk of overreliance, risk of incorrect acceptance, tolerable
// misstatement, PPS / MUS / attribute / variables sampling, sample size
// formulas) is in the SEPARATE AICPA group AUD/III/C "Sampling techniques"
// and belongs to the Audit Sampling topic in Slayer, not Audit Evidence.
// This spec actively defends against drift into sampling theory.

export const spec: TopicSpec = {
	topic: "Audit Evidence",
	section: "aud",
	blueprintRef: "AUD/III/B",

	inScope: [
		"Sufficient appropriate audit evidence concept: SUFFICIENT measures the QUANTITY of evidence (affected by assessed risk of material misstatement and by the quality of evidence — higher quality reduces the quantity required); APPROPRIATE measures QUALITY, which comprises relevance (evidence that relates to the specific assertion being tested) AND reliability",
		"Reliability hierarchy of audit evidence: (1) evidence from knowledgeable independent sources outside the entity is more reliable than from inside; (2) internally generated evidence is more reliable when the related internal controls are effective; (3) evidence obtained directly by the auditor is more reliable than indirect or inferential evidence; (4) written evidence is more reliable than oral; (5) original documents are more reliable than photocopies, facsimiles, or digitized images",
		"The seven types of audit procedures to obtain evidence: (1) inspection (of records/documents and of tangible assets), (2) observation (watching a process or procedure being performed), (3) external confirmation (direct written response from a third party), (4) recalculation (checking mathematical accuracy), (5) reperformance (auditor's independent execution of procedures or controls), (6) analytical procedures, (7) inquiry (oral or written questioning of management and others)",
		"Professional skepticism: an attitude that includes a questioning mind, being alert to conditions that may indicate possible misstatement, and a critical assessment of audit evidence; the auditor neither assumes honesty nor assumes dishonesty of management",
		"Corroboration vs. contradiction of evidence: inquiry alone is NOT sufficient audit evidence and must be corroborated by other procedures; the auditor must investigate whether evidence corroborates or contradicts the assertions",
		"Assertions at the transaction, account balance, and presentation/disclosure levels (existence/occurrence, completeness, rights and obligations, valuation and allocation, accuracy, cutoff, classification, presentation); evidence must be linked to specific assertions",
		"Directional testing: when testing for overstatement, work from the recorded amounts to supporting evidence (existence/occurrence); when testing for understatement, work from source documents or the population to the recorded amounts (completeness)",
		"External confirmations at the concept level: positive confirmation (response requested whether or not the recipient agrees) vs. negative confirmation (response requested only if the recipient disagrees); negative confirmations are appropriate only when the risk of material misstatement is low, internal control is effective, a large population of small balances exists, and there is no reason to expect nonresponses",
		"External confirmation use cases: accounts receivable balances and terms, bank balances and loan terms, investments held by third parties, inventory held by consignees or at public warehouses, accounts payable (less common than AR confirmations because AP confirmations confirm only what's recorded, missing unrecorded liabilities)",
		"Confirmation nonresponses and exceptions at the concept level: for positive confirmations, a second request is generally sent; if no response, alternative procedures (e.g., examining subsequent cash receipts for AR) must be performed; exceptions (differences between confirmed and recorded amounts) require investigation to determine whether they indicate misstatement",
		"Intermediary confirmation services (electronic confirmation platforms such as Confirmation.com) and the auditor's responsibility to evaluate the reliability of the intermediary's platform and controls",
		"AR confirmation requirements under AU-C 505: AR confirmations are presumptively required for an audit of financial statements unless (1) AR is immaterial, (2) confirmations would be ineffective, or (3) the combined assessed risk of material misstatement is low and other substantive procedures provide sufficient evidence — the auditor must document the reasons if confirmations are not used",
		"Inventory observation under AU-C 501: the auditor is presumptively required to attend a physical inventory count and perform test counts, observe counting procedures, and inspect the condition of inventory; alternatives when attending is impracticable (performing count procedures on a different date, reconciling through physical-count documentation)",
		"Accounting estimates evaluation at the concept level under AU-C 540: the auditor's responsibility to (1) understand the requirements for the estimate under the applicable financial reporting framework, (2) understand how management makes the estimate (methods, assumptions, data, management's specialists), (3) evaluate whether the estimate is reasonable in the context of the FS, (4) consider the risk of management bias, (5) develop a range or point estimate to compare with management's estimate",
		"Sources of evidence: evidence obtained from management's specialists (e.g., actuarial, valuation, engineering), evidence obtained from external sources (bank confirmations, attorney letters, published market data), and evidence developed by the audit team itself (analytical procedures, recalculation, observation)",
		"Substantive analytical procedures at the concept level: developing an expectation for an account balance or ratio based on plausible relationships (e.g., gross margin, interest expense from average debt and interest rates), comparing the expectation to the recorded amount, investigating significant differences; the four-step framework of developing expectation, defining a significant difference, performing the procedure, investigating differences",
		"Analytical procedures near the end of an engagement to form an overall conclusion: comparing results to auditor's understanding, identifying any previously unrecognized risks, evaluating overall financial statement reasonableness",
		"Management representations and management's written representation letter at the concept level: a representation letter is required at the end of the engagement, it is a mandatory procedure but is not a substitute for other audit evidence, representations cover management's responsibility for the financial statements and internal control, completeness of information, accounting estimates, and other specified matters",
	],

	outOfScope: [
		"Formal audit sampling theory — risk of overreliance (on controls), risk of incorrect acceptance (for substantive tests), tolerable misstatement, tolerable rate of deviation, sample size formulas, sample size tables, stratified sampling computation, probability proportional to size (PPS) sampling, monetary unit sampling (MUS), classical variables sampling, attribute sampling, mean-per-unit estimation, ratio and difference estimation, haphazard vs systematic sampling; all of this is the Audit Sampling topic",
		"Sample size determination computations at any depth — determining sample size from confidence level, tolerable error, and expected error; adjusting sample size for stratification or overestimate risk",
		"Audit risk model mechanics — the AR = IR × CR × DR relationship computed numerically, quantitative assessments of inherent risk, control risk, and detection risk beyond the concept",
		"Understanding the entity and its environment at depth — the acceptance/continuance considerations, preliminary engagement activities, documentation of the understanding; this is the Risk Assessment topic",
		"Internal control evaluation at depth — the five COSO components (control environment, risk assessment, control activities, information and communication, monitoring), IT general controls, application controls, control design vs operating effectiveness testing methodology; this is the Internal Control topic",
		"Control deficiencies, significant deficiencies, and material weaknesses classification and communication — this is the Internal Control / Misstatements topic",
		"Fraud-specific procedures beyond concept — the fraud triangle at depth, AU-C 240 specific responses (unpredictability in procedures, revenue recognition presumption, journal entry testing), management override procedures; this is the Fraud topic",
		"Group audit and component auditor considerations — significant components vs non-significant components, the component auditor's work, the group auditor's responsibility for the component work; this is the Group Audit topic",
		"SOC reports (SOC 1, SOC 2, Type 1, Type 2) at mechanics depth — the bridging procedures when a SOC 1 report is used to reduce substantive testing, the service organization controls auditor's opinion; this is the Service Organizations / SOC topic",
		"Using the work of a management's specialist or an auditor's specialist at depth — evaluating competence, capabilities, objectivity; understanding the specialist's work; evaluating adequacy for the auditor's purposes",
		"Using the work of internal auditors beyond the concept — the direct assistance rules, the evaluation of internal audit's objectivity and competence, the extent of reliance",
		"Going concern substantial doubt evaluation at depth — the one-year-from-issuance lookout period, management's plans to alleviate, disclosure requirements, report modifications; this is the Going Concern topic",
		"Related-party audit procedures at depth — identifying related parties, evaluating the business purpose of significant related-party transactions, communication with those charged with governance",
		"Fair value measurement audit procedures at depth — specialized skills for Level 3 measurements, auditor's independent estimate vs management's, disclosure testing",
		"Written representations content beyond concept — the detailed list of required representations under AU-C 580, specific wording, modifications to the representation letter for specific circumstances",
		"Subsequent events audit procedures at depth — Type I (recognized subsequent events) vs Type II (nonrecognized), subsequent period between balance sheet date and report date, dual dating",
		"Using internal specialists and IT auditors at depth — the nature of IT audit support, how their work interacts with the financial statement audit",
		"Electronic evidence and audit data analytics at mechanics depth — the reliability of electronic records, digital signatures, the specific tools and platforms used",
		"Legal letters from external counsel at depth — the inquiry requirements under AU-C 501, limitations of audit inquiry of lawyers, the AICPA treaty with the ABA",
	],

	keyStandards: [
		"AU-C 500 — Audit Evidence",
		"AU-C 501 — Audit Evidence — Specific Considerations for Selected Items",
		"AU-C 505 — External Confirmations",
		"AU-C 520 — Analytical Procedures",
		"AU-C 540 — Auditing Accounting Estimates and Related Disclosures",
		"AU-C 580 — Written Representations",
		"AU-C 200 — Overall Objectives of the Independent Auditor (professional skepticism concept)",
	],

	commonMisconceptions: [
		"Believing that inquiry alone is sufficient audit evidence. Inquiry is one of seven audit procedures, but it must be corroborated by other evidence; responses to inquiries cannot stand alone as sufficient appropriate evidence.",
		"Confusing 'sufficient' with 'appropriate.' Sufficient refers to the QUANTITY of evidence (more evidence when risk is higher); appropriate refers to QUALITY — relevance plus reliability. Both must be met.",
		"Believing negative confirmations are always less reliable and rarely used. Negative confirmations are appropriate in specific circumstances (low risk, effective controls, large population of small balances, no reason to expect nonresponses); they are less persuasive than positive but still provide evidence when conditions are met.",
		"Assuming nonresponses to confirmations can be ignored. For positive confirmations, nonresponses generally require a second request and, if still no response, alternative procedures (examining subsequent cash receipts, shipping documents, etc.) to obtain the evidence.",
		"Confusing confirmation exceptions with misstatements. An exception is a difference between the confirmed and recorded amounts — it must be investigated because some exceptions have innocent explanations (timing differences) and others indicate real misstatements.",
		"Believing AR confirmations are optional. Under AU-C 505, AR confirmations are presumptively required; the auditor must justify and document any decision not to confirm.",
		"Believing inventory observation can be skipped when inventory is immaterial. Physical inventory observation is presumptively required when inventory is material and practicable; alternatives apply when attending is impracticable, not when it is just inconvenient.",
		"Computing a point estimate for accounting estimates as the auditor's default approach. The auditor may develop a range or a point estimate, but the goal is to evaluate the reasonableness of management's estimate — not to substitute the auditor's own.",
		"Treating evidence from management's specialist as evidence from an external independent source. A management specialist (e.g., actuary employed by the company) is considered management-provided evidence; its reliability depends on the specialist's competence, capabilities, and objectivity.",
		"Believing that substantive analytical procedures alone are sufficient for high-risk accounts. Analytical procedures are generally more persuasive for accounts with predictable relationships and lower inherent risk; for higher-risk accounts, tests of details are typically also required.",
		"Thinking the management representation letter is audit evidence in its own right. The representation letter is a required procedure but it does not substitute for other audit evidence; it is a confirmation that management has provided all relevant information.",
		"Confusing directional testing: testing for overstatement goes FROM the recorded amounts TO the supporting documents (existence); testing for understatement goes FROM source documents TO the recorded amounts (completeness). Students often reverse this.",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		{
			term: "tolerable misstatement",
			pattern: "tolerable\\s+misstatement",
			category: "sampling theory",
			why: "Tolerable misstatement is a sampling theory concept — the maximum misstatement the auditor is willing to accept and still conclude the population is not materially misstated. Belongs to the Audit Sampling topic per the rollout handoff priority.",
		},
		{
			term: "tolerable rate",
			pattern: "tolerable\\s+rate\\s+of\\s+deviation|tolerable\\s+deviation\\s+rate",
			category: "sampling theory",
			why: "Tolerable rate of deviation — attribute sampling concept, out of scope for Audit Evidence.",
		},
		{
			term: "risk of overreliance",
			pattern: "risk\\s+of\\s+overreliance|risk\\s+of\\s+assessing\\s+control\\s+risk\\s+too\\s+low",
			category: "sampling theory",
			why: "Risk of overreliance (also called risk of assessing control risk too low) is a Type I error in control testing sampling — sampling topic.",
		},
		{
			term: "risk of incorrect acceptance",
			pattern: "risk\\s+of\\s+incorrect\\s+acceptance",
			category: "sampling theory",
			why: "Risk of incorrect acceptance is a Type II error in substantive test sampling — sampling topic.",
		},
		{
			term: "risk of incorrect rejection",
			pattern: "risk\\s+of\\s+incorrect\\s+rejection",
			category: "sampling theory",
			why: "Risk of incorrect rejection — sampling theory concept.",
		},
		{
			term: "risk of underreliance",
			pattern: "risk\\s+of\\s+underreliance|risk\\s+of\\s+assessing\\s+control\\s+risk\\s+too\\s+high",
			category: "sampling theory",
			why: "Risk of underreliance — sampling theory concept.",
		},
		{
			term: "PPS sampling",
			pattern: "\\bPPS\\s+sampling|probability[-\\s]proportional[-\\s]to[-\\s]size\\s+sampling",
			category: "sampling theory",
			why: "Probability proportional to size sampling — sampling topic.",
		},
		{
			term: "monetary unit sampling",
			pattern: "monetary\\s+unit\\s+sampling|\\bMUS\\b",
			category: "sampling theory",
			why: "Monetary unit sampling (MUS) — sampling topic.",
		},
		{
			term: "attribute sampling",
			pattern: "attribute\\s+sampling|attribute[-\\s]based\\s+sample",
			category: "sampling theory",
			why: "Attribute sampling (for control testing) — sampling topic.",
		},
		{
			term: "variables sampling",
			pattern: "variables\\s+sampling|classical\\s+variables\\s+sampling|\\bCVS\\b",
			category: "sampling theory",
			why: "Classical variables sampling (for substantive testing) — sampling topic.",
		},
		{
			term: "mean-per-unit",
			pattern: "mean[-\\s]per[-\\s]unit",
			category: "sampling theory",
			why: "Mean-per-unit estimation — variables sampling estimation technique, sampling topic.",
		},
		{
			term: "ratio estimation",
			pattern: "ratio\\s+estimation|difference\\s+estimation",
			category: "sampling theory",
			why: "Ratio and difference estimation — variables sampling estimation techniques.",
		},
		{
			term: "sample size formula",
			pattern: "sample\\s+size\\s+(?:formula|table|computation|calculation)",
			category: "sampling theory",
			why: "Sample size determination formulas and tables — sampling topic.",
		},
		{
			term: "expected deviation rate",
			pattern: "expected\\s+deviation\\s+rate|expected\\s+error\\s+rate",
			category: "sampling theory",
			why: "Expected deviation / error rate — sampling planning parameter.",
		},
		{
			term: "stratified sampling",
			pattern: "stratified\\s+sampling",
			category: "sampling theory",
			why: "Stratified sampling — sampling technique, out of scope.",
		},
		{
			term: "haphazard sampling",
			pattern: "haphazard\\s+sampling",
			category: "sampling theory",
			why: "Haphazard sampling — sampling technique, out of scope.",
		},
		{
			term: "systematic sampling",
			pattern: "systematic\\s+sampling",
			category: "sampling theory",
			why: "Systematic sampling — sampling technique, out of scope.",
		},
		{
			term: "audit risk model",
			pattern: "audit\\s+risk\\s+model|\\bAR\\s*=\\s*IR|IR\\s*[x×]\\s*CR\\s*[x×]\\s*DR",
			category: "risk assessment mechanics",
			why: "Audit risk model mechanics (AR = IR × CR × DR) — Risk Assessment topic, not Audit Evidence.",
		},
		{
			term: "detection risk",
			pattern: "detection\\s+risk\\s+(?:formula|computation|assessment|level)",
			category: "risk assessment mechanics",
			why: "Detection risk mechanics — Risk Assessment topic.",
		},
		{
			term: "COSO components",
			pattern: "COSO\\s+(?:framework|components|control\\s+environment)|five\\s+COSO\\s+components",
			category: "internal control mechanics",
			why: "The five COSO framework components (control environment, risk assessment, control activities, information and communication, monitoring) — Internal Control topic, not Audit Evidence.",
		},
		{
			term: "SOC 1 report",
			pattern: "\\bSOC\\s*1\\b|SOC\\s*2\\b|SSAE\\s*18",
			category: "service organization",
			why: "SOC reports (SOC 1, SOC 2, Type 1, Type 2) — Service Organizations topic, not Audit Evidence.",
		},
		{
			term: "component auditor",
			pattern: "component\\s+auditor|group\\s+engagement\\s+partner",
			category: "group audit",
			why: "Component auditor / group audit considerations — Group Audit topic.",
		},
		{
			term: "significant component",
			pattern: "significant\\s+component",
			category: "group audit",
			why: "Significant components in a group audit — Group Audit topic.",
		},
		{
			term: "going concern",
			pattern: "going\\s+concern\\s+(?:doubt|assessment|evaluation|disclosure|opinion)",
			category: "going concern",
			why: "Going concern substantial doubt evaluation at depth — separate Going Concern topic.",
		},
		{
			term: "fraud triangle",
			pattern: "fraud\\s+triangle",
			category: "fraud",
			why: "Fraud triangle (incentive/opportunity/rationalization) — Fraud topic, out of scope for Audit Evidence.",
		},
		{
			term: "management override",
			pattern: "management\\s+override\\s+of\\s+controls",
			category: "fraud",
			why: "Management override of controls procedures under AU-C 240 — Fraud topic.",
		},
	],

	notes:
		"Audit Evidence covers the foundational concepts of sufficient appropriate evidence, the seven types of audit procedures, external confirmations, analytical procedures, and accounting estimates evaluation at concept level. The AICPA scope spans AUD/III/B 'Sufficient appropriate evidence' and parts of AUD/III/D (tests of details, analytical procedures, external confirmations) and AUD/III/E (accounting estimates). The spec anchors to group-level AUD/III/B because that is the core. Drift risks per the rollout handoff: formal sampling theory (ASA/BSA depth) belongs in the Audit Sampling topic, NOT here. This spec actively defends against drift into sampling parameters, sample size formulas, sampling risk, tolerable misstatement, and specific sampling techniques (PPS, MUS, attribute, variables, stratified). Also out of scope: the audit risk model mechanics, COSO framework internals, SOC reports, group audit, going concern, and fraud-specific procedures — all have their own topics.",
};
