import type { LessonSpec } from "./types";

// Thirty-sixth authored spec — nineteenth of Stage 3. Census v3 rank
// #8: 64 questions, 6 flagged (9.4%) on `SOC 1 Type 2` (4), `SQMS 1`
// (1), `AS 2201` (1). Expected mixed — some rightful-owner (ITGC
// understanding), some drift (SOC depth, QM depth, PCAOB depth).

export const spec: LessonSpec = {
	topic: "Internal Controls",
	section: "aud",
	blueprintRef: "AUD/II/C",

	inScope: [
		"The auditor's responsibility to obtain an understanding of internal control relevant to the audit, sufficient to identify and assess the risks of material misstatement (AU-C 315). The understanding is used to design further audit procedures responsive to those risks.",
		"The five components of internal control under the COSO Internal Control — Integrated Framework (2013): control environment, risk assessment, control activities, information and communication, and monitoring activities. Each component has 17 supporting principles that operationalize the framework.",
		"The control environment as the foundation of internal control: tone at the top, management's integrity and ethical values, commitment to competence, board oversight, organizational structure, assignment of authority and responsibility, and human resource policies. Weaknesses in the control environment undermine the reliability of all other components.",
		"Risk assessment as management's process for identifying and analyzing risks to achieving entity objectives — distinct from the auditor's own risk assessment under AU-C 315 (though related).",
		"Control activities as the specific policies and procedures management uses to address risks: authorizations, segregation of duties (ISCA — initiation, custody, authorization, recording), performance reviews, information processing controls, physical controls, and controls over standing data and master files.",
		"Information and communication component: how management captures, processes, and communicates information needed for internal control and financial reporting — including the quality of information generated and the channels for upward, downward, and external communication.",
		"Monitoring activities: ongoing and separate evaluations of whether the components of internal control are present and functioning, and communication of deficiencies to those responsible for taking corrective action.",
		"IT general controls (ITGCs) at concept depth: logical access (authentication, authorization, user provisioning/deprovisioning), change management (development, testing, approval, promotion to production), computer operations (backups, job scheduling, incident handling), and program development (SDLC, testing, migration controls). ITGCs support the reliable operation of application controls.",
		"Application controls at concept depth: input controls (edit checks, validation, completeness checks), processing controls (matching, calculation checks, control totals), output controls (distribution controls, review of output), and interface controls (reconciliation between systems).",
		"Segregation of duties framework: separation of authorization, custody, record-keeping, and reconciliation functions. When one person has two or more incompatible functions, the control is compromised. Common fact pattern: same employee initiates purchase orders AND approves vendor invoices AND records transactions — a significant segregation weakness.",
		"Entity-level controls vs transaction-level controls: entity-level controls include the control environment, risk assessment process, monitoring, and period-end financial reporting process controls. Transaction-level controls (the application controls over specific processes like revenue or purchasing) operate at the assertion level.",
		"The auditor's walkthrough procedure: tracing a transaction from initiation through recording in the financial statements, with inquiry, observation, inspection, and reperformance of specific steps. The walkthrough confirms the auditor's understanding and identifies whether controls are properly designed and implemented.",
		"Evaluation of design and implementation: the auditor determines whether controls, individually or in combination, are CAPABLE of preventing or detecting material misstatements (design) and have been PLACED IN OPERATION (implementation). Design effectiveness is evaluated for every audit — operating effectiveness testing is separate (Tests of Controls topic).",
		"Limitations of internal control: human error, collusion, management override, cost-benefit constraints, controls failing due to changes in conditions, and the susceptibility of any control to circumvention. Internal control provides reasonable — not absolute — assurance.",
		"Management override of internal control as a significant risk requiring specific auditor response: journal entry testing, review of significant accounting estimates for bias, and evaluation of unusual or significant transactions outside the normal course of business.",
		"Documentation of the auditor's understanding: flowcharts, narratives, questionnaires, and matrices. The form of documentation is a matter of professional judgment based on engagement complexity and the auditor's preference.",
		"Consideration of entity size: smaller entities may have less formal control structures, fewer segregation of duties, and greater reliance on owner-manager oversight. The auditor adjusts the understanding procedures to the entity's complexity without reducing the overall objective of understanding internal control.",
	],

	outOfScope: [
		"Tests of controls operating effectiveness at depth — the decision to rely on controls, the extent of control testing, sample sizes for control tests, reliance-strategy vs substantive-strategy decisions. Tests of Controls (AUD) topic",
		"Operating effectiveness testing procedures at depth — rotation of control testing across years, when prior-year evidence can be used, the five-factor test for prior-year rollforward. Tests of Controls topic",
		"PCAOB integrated audit of internal control over financial reporting at depth — AS 2201 management assessment, AS 2201 top-down approach, material weakness vs significant deficiency distinctions specific to PCAOB reporting. Separate integrated audit topic (or PCAOB testing distinction)",
		"SOC 1 Type 2 service auditor report depth — the evaluation of SOC reports from a user auditor reliance perspective at the specific report-contents level. Using the Work of Others (AUD) topic — and ISC SOC topics for the service auditor perspective",
		"Audit sampling at depth — attribute sampling for tests of controls, sample size formulas, tolerable rate of deviation, sampling risk quantification. Audit Sampling (AUD) topic",
		"Materiality and tolerable misstatement mechanics — Materiality topic",
		"Quality management at firm-level and engagement-level depth — SQMS 1 required components of a quality management system, SQMS 2 engagement quality review triggers, monitoring and remediation of QM deficiencies. Quality Management (AUD) topic",
		"Risk assessment procedures at depth — the specific procedures to identify and assess risks of material misstatement at the assertion level, significant risks identification, the audit risk model. Risk Assessment (AUD) topic. The understanding of IC here feeds into risk assessment but the risk assessment mechanics themselves are separate",
		"Misstatement evaluation and control deficiency classification at depth — the evaluation of whether a deficiency is a significant deficiency or material weakness, the communication of internal control matters under AU-C 265. Misstatements and Control Deficiencies (AUD) topic",
		"Further audit procedures in response to assessed risks — substantive procedures, dual-purpose tests, the nature/timing/extent decision. Substantive Procedures / Responding to Assessed Risks territory",
		"Specific IT tool or framework depth — COBIT mechanics, ITIL service management, NIST CSF implementation. ISC IT Audit Frameworks or ISC IT General Controls territory",
		"SOC engagement methodology from the service auditor perspective — ISC SOC cluster",
	],

	keyStandards: [
		"AU-C 315 — Understanding the Entity and Its Environment and Assessing the Risks of Material Misstatement (IC components)",
		"AU-C 265 — Communicating Internal Control Related Matters Identified in an Audit",
		"COSO Internal Control — Integrated Framework (2013)",
		"COSO Enterprise Risk Management — Integrating with Strategy and Performance (2017)",
	],

	commonMisconceptions: [
		"Confusing the auditor's understanding of internal control with testing its operating effectiveness. The auditor MUST obtain an understanding of IC on every audit, regardless of whether the auditor plans to rely on controls. Testing of operating effectiveness is a SEPARATE activity performed only when the auditor plans to rely on the controls.",
		"Believing that strong IC can eliminate the risk of material misstatement. Internal control provides REASONABLE — not absolute — assurance. Management override, collusion, human error, and changes in conditions are inherent limitations that no control system can fully prevent.",
		"Thinking segregation of duties requires every function to be performed by different people. The key concept is separating the incompatible duties — authorization, custody, record-keeping, and reconciliation — among different individuals. Smaller entities often cannot achieve full segregation and compensate with management oversight and independent review.",
		"Conflating the control environment with control activities. The control environment is one of the five COSO components and addresses tone, integrity, and governance. Control activities are a different component addressing specific policies and procedures (authorizations, reviews, segregation, physical controls).",
		"Assuming ITGCs and application controls are interchangeable. ITGCs support the environment in which application controls operate (access, change management, operations). Application controls address specific transactions. A failure in ITGCs compromises reliance on application controls; both layers must be considered.",
		"Believing that documenting internal control requires a specific format. The form of documentation is a matter of professional judgment — narratives, flowcharts, questionnaires, and matrices all satisfy the requirement as long as they convey the auditor's understanding.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		// --- Cross-cluster: Tests of Controls ---
		{
			term: "rotation of control testing",
			pattern: "rotation\\s+of\\s+control\\s+testing|rotating\\s+controls?\\s+tested",
			category: "tests of controls",
			why: "Rotation across years belongs to Tests of Controls topic.",
		},

		// --- Cross-cluster: Materiality / Sampling ---
		{
			term: "tolerable misstatement",
			pattern: "tolerable\\s+misstatement",
			category: "materiality mechanics",
			why: "Tolerable misstatement is a Materiality / Audit Sampling concept.",
		},
		{
			term: "tolerable rate of deviation",
			pattern: "tolerable\\s+rate\\s+of\\s+deviation",
			category: "sampling mechanics",
			why: "Attribute sampling concept — Audit Sampling topic.",
		},

		// --- SOC (ISC SOC cluster) ---
		{
			term: "SOC 1 Type 2",
			pattern: "SOC\\s*1\\s+Type\\s*2|Type\\s*2\\s+SOC\\s*1",
			category: "SOC reliance",
			why: "SOC 1 Type 2 report at depth — Using the Work of Others or ISC SOC cluster.",
		},
		{
			term: "trust services criteria",
			pattern: "trust\\s+services\\s+criteria",
			category: "SOC 2",
			why: "SOC 2 trust services criteria — ISC SOC cluster.",
		},

		// --- PCAOB ---
		{
			term: "AS 2201",
			pattern: "\\bAS\\s*2201\\b",
			category: "PCAOB depth",
			why: "PCAOB integrated audit of ICFR — separate integrated audit topic.",
		},
		{
			term: "AS 2110",
			pattern: "\\bAS\\s*2110\\b",
			category: "PCAOB depth",
			why: "PCAOB risk assessment standard — Risk Assessment or PCAOB depth.",
		},

		// --- Quality Management ---
		{
			term: "SQMS 1",
			pattern: "\\bSQMS\\s*1\\b|SQMS\\s+No\\.?\\s*1",
			category: "quality management",
			why: "SQMS 1 firm-level QM system — Quality Management topic.",
		},
		{
			term: "SQMS 2",
			pattern: "\\bSQMS\\s*2\\b|SQMS\\s+No\\.?\\s*2",
			category: "quality management",
			why: "SQMS 2 engagement quality review — Quality Management topic.",
		},
		{
			term: "ISQM 1",
			pattern: "\\bISQM\\s*1\\b",
			category: "quality management",
			why: "International QM standard — Quality Management topic.",
		},

		// --- IFAC ---
		{
			term: "ISA 315",
			pattern: "\\bISA\\s*315\\b",
			category: "IFAC standards",
			why: "IFAC equivalent of AU-C 315 — non-US.",
		},

		// --- COBIT framework depth ---
		{
			term: "COBIT",
			pattern: "\\bCOBIT\\s+\\d",
			category: "IT framework depth",
			why: "COBIT framework version-specific mechanics — ISC IT Audit Frameworks territory. General reference to COBIT as a framework is allowed.",
		},
	],

	notes:
		"Internal Controls is the AUD/II/C topic covering the auditor's understanding of internal control under AU-C 315, the COSO five components, ITGC and application control concepts, segregation of duties, walkthrough procedures, evaluation of design and implementation (distinct from operating effectiveness testing), limitations of IC, management override, and entity-size considerations. Shares a small AUD cluster with Tests of Controls, Quality Management, Audit Reports, and Misstatements and Control Deficiencies — each with distinct AICPA anchors and separate specs (not a shared-base cluster like SOC). Out of scope: operating effectiveness testing depth (Tests of Controls), PCAOB AS 2201 integrated audit depth, SOC reliance depth (Using the Work of Others, ISC SOC), materiality/sampling mechanics, quality management at firm/engagement depth (Quality Management), risk assessment mechanics (Risk Assessment), misstatement/deficiency evaluation and communication (Misstatements and Control Deficiencies), further audit procedures (Substantive Procedures), COBIT/ITIL framework depth.",
};
