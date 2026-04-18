import type { LessonSpec } from "./types";

// Seventeenth authored spec — the final spec in the rollout-handoff next-10
// priority list. Slayer's "Risk Assessment" topic maps to AUD/II/E
// "Assessing and responding to risks of material misstatement, whether due
// to fraud or error" in the AICPA 2026 Blueprint.
//
// AICPA AUD Area II "Audit Planning" contains several groups that Slayer
// splits into separate topics:
//
//   AUD/II/A "Engagement acceptance and understanding the engagement"
//   AUD/II/B "Understanding an entity and its environment" — Slayer
//            'Understanding the Entity and Environment' topic
//   AUD/II/C "Understanding the control environment" — Slayer 'Internal
//            Control' topic
//   AUD/II/D "Materiality" — Slayer 'Materiality' topic
//   AUD/II/E "Assessing and responding to risks of material misstatement"
//            — THIS TOPIC (Risk Assessment)
//   AUD/II/F "Planning for and using the work of others"
//   AUD/II/G "Specific areas of engagement risk"
//
// The spec anchors to AUD/II/E and stays tight around the assess-and-
// respond-to-RMM tasks. Related-but-separate AICPA material (understanding
// the entity, COSO framework internals, materiality computation, specific
// control testing, sampling theory, audit evidence procedures, service
// organizations, using the work of others) belongs to its respective
// Slayer topic.
//
// Drift risk per the rollout handoff: COSO framework at depth beyond the
// basic five components. The five components ARE in scope at the concept
// level (control environment, risk assessment, control activities,
// information and communication, monitoring). The 17 principles under the
// 2013 COSO framework, the points of focus, and the detailed component-
// level analysis are out.

export const spec: LessonSpec = {
	topic: "Risk Assessment",
	topicAliases: ["Responding to Assessed Risks"],
	section: "aud",
	primaryRef: "AUD/II/E/0",
	secondaryRefs: [],

	inScope: [
		"The audit risk model: Audit Risk = Inherent Risk × Control Risk × Detection Risk; the relationships among components (higher IR and CR require lower DR, which means more persuasive procedures); the concept that the auditor can control DR through nature/timing/extent of substantive procedures but cannot control IR or CR",
		"Risk of material misstatement (RMM) = Inherent Risk × Control Risk; the two levels at which RMM is assessed (financial statement level and relevant assertion level for each significant class of transactions, account, or disclosure)",
		"Inherent risk factors at the concept level: complexity, subjectivity, change, estimation uncertainty, susceptibility to fraud, related-party transactions, non-routine transactions, and the business environment (regulatory changes, technology changes, economic pressures)",
		"Control risk assessment at the concept level: the auditor's assessment of whether internal controls will prevent or detect and correct material misstatements; control risk can be assessed at maximum (if the auditor does not plan to rely on controls) or below maximum (if the auditor plans to test and rely on controls)",
		"Risk assessment procedures: inquiries of management and others within the entity, analytical procedures, observation, inspection of documents and records, and discussion among the engagement team; these procedures are performed to obtain an understanding of the entity and to identify risks, not to obtain evidence about balances",
		"Significant risks at the concept level: risks that require special audit consideration because they are more complex, unusual, non-routine, or involve significant fraud risk or significant related-party transactions outside the normal course of business; every audit must identify whether any significant risks exist and the audit must include specific responses to them",
		"The fraud triangle at the concept level: the three conditions present when fraud occurs — (1) incentives or pressures (e.g., pressure to meet earnings targets, personal financial pressure), (2) opportunities (e.g., weak internal controls, management override), and (3) attitudes or rationalizations (e.g., the belief that 'everyone does it' or that the behavior is temporary)",
		"The two types of fraud relevant to the auditor: (1) fraudulent financial reporting (intentional misstatements or omissions in the financial statements), and (2) misappropriation of assets (theft or misuse of entity assets)",
		"Presumption of revenue recognition as a fraud risk: under AU-C 240 the auditor must presume that improper revenue recognition is a significant fraud risk in every audit; the auditor must specifically address this risk in planning",
		"Management override of controls as an always-significant fraud risk: the auditor must perform specific procedures to address management override risk (e.g., testing journal entries, reviewing accounting estimates for bias, evaluating business rationale for significant unusual transactions)",
		"Responses to assessed risks at the financial statement level: maintaining heightened professional skepticism, assigning more experienced or specialized staff, increasing supervision, incorporating an element of unpredictability in the selection of audit procedures (e.g., sampling items not usually tested), modifying timing or extent of procedures",
		"Responses to assessed risks at the assertion level: varying the nature (type of procedure — tests of controls, substantive analytical procedures, tests of details), timing (interim vs. year-end), and extent (sample size, scope of procedures) of audit procedures based on the specific risk",
		"Tests of controls vs. substantive procedures at the concept level: tests of controls evaluate operating effectiveness of internal controls (used when the auditor plans to reduce control risk below maximum); substantive procedures test the accuracy of recorded amounts (tests of details and substantive analytical procedures); a combination is generally used",
		"The five components of the COSO Internal Control — Integrated Framework (2013) at the concept level: (1) control environment, (2) risk assessment, (3) control activities, (4) information and communication, (5) monitoring activities; these are what the auditor considers when obtaining an understanding of internal control",
		"IT general controls (ITGCs) at the concept level as applied to risk assessment: access to programs and data, program change management, program development, and computer operations; these controls support the reliability of application controls",
		"Fraud brainstorming discussion: the required engagement team discussion about how and where the financial statements may be susceptible to fraud, including the revenue recognition presumption and management override risks",
		"Risk of material misstatement at the financial statement level vs. the relevant assertion level: FS-level risks pervasively affect many accounts (e.g., a risk related to competence of management); assertion-level risks affect specific assertions for specific account balances or classes of transactions",
		"The linkage from risk assessment to the audit response: higher assessed RMM drives more persuasive and extensive procedures (lower DR); the auditor documents the linkage from identified risks to the planned procedures that address those risks",
	],

	outOfScope: [
		"The 17 COSO principles under the 2013 Internal Control — Integrated Framework beyond the acknowledgment that they exist — the specific wording of each principle, the points of focus under each principle, the cross-references between principles and components",
		"COSO Enterprise Risk Management (ERM) — Integrating with Strategy and Performance (2017 framework) — the ERM framework's 20 principles organized into 5 components (governance and culture, strategy and objective-setting, performance, review and revision, information/communication/reporting)",
		"Internal control testing at depth — control design evaluation, implementation testing, operating effectiveness testing methodology, sample size determination for control tests, deficiency classification, significant deficiency vs material weakness determination (belongs to the Internal Control topic)",
		"Materiality computation mechanics — calculation of overall materiality from chosen benchmarks (e.g., 5% of pre-tax income, 1% of total assets, 0.5% of revenue), performance materiality computation as a percentage of overall materiality, tolerable misstatement allocation to specific accounts (belongs to the Materiality topic)",
		"Sampling theory — sample size formulas, tolerable misstatement in a sampling context, risk of overreliance or incorrect acceptance, attribute vs variables sampling, PPS/MUS (belongs to the Audit Sampling topic)",
		"Specific substantive procedures to address identified risks — the detailed testing steps for AR, inventory, revenue recognition, fair value, estimates, related-party transactions (belongs to the Audit Evidence topic)",
		"Detailed audit evidence procedures — inspection techniques, confirmation mechanics, analytical procedure formulas (belongs to Audit Evidence)",
		"Using the work of others at depth — internal audit function evaluation, specialist competence and objectivity, component auditor materiality thresholds, bridge letters (belongs to the Using the Work of Others topic, AUD/II/F)",
		"Service organization bridging procedures using SOC 1 Type 2 reports — the specific mechanics of reducing substantive testing based on a service auditor's opinion (belongs to the Service Organizations topic)",
		"Group audit considerations — significant vs non-significant components, component auditor work evaluation, group engagement partner responsibility (belongs to the Group Audit topic)",
		"Specific fraud procedure mechanics — journal entry testing at depth (selection criteria, testing procedures, exceptions), retrospective review of estimates, revenue recognition testing procedures beyond the presumption (belongs to the Fraud topic)",
		"Laws and regulations compliance testing procedures — NOCLAR responses, specific procedures for direct-effect vs non-direct-effect laws, reporting requirements (belongs to the Laws and Regulations / NOCLAR topic)",
		"Uniform Guidance single audit mechanics — major program determination, type A and type B programs, percentage of coverage rule, questioned costs (belongs to the Governmental Audit topic)",
		"Documentation requirements for risk assessment at depth — specific working paper content, linkage documentation depth",
		"Going concern substantial doubt evaluation as a risk (has its own separate treatment)",
		"Quality management standards (SQMS 1, SQMS 2) — engagement quality reviews, monitoring and remediation (belongs to the Quality Management topic)",
		"Specific PCAOB standards for issuer audits beyond the concept that AS standards apply to issuers and SAS standards apply to nonissuers",
		"Professional skepticism beyond the concept — the specific behaviors, cognitive biases, and debiasing techniques from academic audit research",
		"Risk-based audit approach comparison to compliance-based or substantive-only approaches at historical depth",
	],

	keyStandards: [
		"AU-C 315 — Understanding the Entity and Its Environment and Assessing the Risks of Material Misstatement",
		"AU-C 320 — Materiality in Planning and Performing an Audit (concept cross-reference)",
		"AU-C 330 — Performing Audit Procedures in Response to Assessed Risks",
		"AU-C 240 — Consideration of Fraud in a Financial Statement Audit",
		"AU-C 200 — Overall Objectives of the Independent Auditor (professional skepticism)",
		"COSO Internal Control — Integrated Framework (2013) — 5 components (concept level only)",
		"PCAOB AS 2110 — Identifying and Assessing Risks of Material Misstatement (for issuer audits, concept)",
	],

	commonMisconceptions: [
		"Confusing inherent risk with control risk. Inherent risk exists before considering internal controls (complexity, subjectivity, susceptibility to fraud); control risk is the risk that IC will fail to prevent or detect a misstatement. Both are assessed by the auditor but are NOT directly controlled by the auditor.",
		"Believing the auditor can control all three components of the audit risk model. The auditor CANNOT control inherent risk or control risk (those are characteristics of the entity and its controls); the auditor CAN control detection risk through the nature, timing, and extent of substantive procedures.",
		"Thinking risk assessment is a one-time activity at the beginning of the audit. Risk assessment is iterative — the auditor revises assessed risks as new information emerges throughout the audit.",
		"Assuming assessed control risk at maximum means no control testing. Assessing CR at maximum means the auditor does NOT plan to rely on controls for that risk — not that controls don't exist. The auditor still obtains an understanding of internal control for all audits.",
		"Confusing the fraud triangle with the fraud diamond. The classic fraud triangle has three components (pressure, opportunity, rationalization); the fraud diamond adds 'capability' as a fourth element. The CPA exam tests the classic three-component triangle.",
		"Believing the revenue recognition fraud risk presumption can be rebutted easily. The auditor MUST presume improper revenue recognition is a significant fraud risk, and rebutting the presumption requires documented analysis that the presumption is not applicable in the specific circumstances.",
		"Ignoring management override as a fraud risk when internal controls appear strong. Management override is an always-significant fraud risk regardless of control strength, because management can override controls. Specific procedures (journal entry testing, estimate review, business rationale for unusual transactions) are required.",
		"Believing that element of unpredictability applies only to fraud risk. Incorporating unpredictability is a response to RMM at the FS level, addressing any type of misstatement risk.",
		"Confusing risk assessment procedures with tests of details. Risk assessment procedures (inquiries, analytical procedures, observation, inspection) are performed to UNDERSTAND the entity and IDENTIFY risks — they do not provide evidence that account balances are accurate. Tests of details provide that evidence.",
		"Treating significant risks as synonymous with material balances. A significant risk requires special audit consideration due to its nature (complexity, non-routine, fraud) — not just its dollar magnitude. A material balance with low complexity and effective controls may not be a significant risk.",
		"Believing the five COSO components are sufficient internal control for every entity. The COSO framework is a BASELINE — actual internal control varies by entity size, complexity, and industry. Small entities may rely more heavily on entity-level controls and direct management oversight.",
		"Assessing risk only at the financial statement level. RMM must be assessed at BOTH the FS level (pervasive risks) and the relevant assertion level (risks tied to specific accounts and assertions).",
	],

	representativeDifficulty: "medium",

	bannedTerms: [
		{
			term: "17 COSO principles",
			pattern: "(?:seventeen|17)\\s+(?:COSO\\s+)?principles|17\\s+principles\\s+of\\s+COSO|COSO\\s+17\\s+principles",
			category: "COSO depth",
			why: "The 17 principles of the 2013 COSO Internal Control — Integrated Framework beyond concept-level acknowledgment are out of scope per the rollout handoff. Only the FIVE components are in scope.",
		},
		{
			term: "points of focus",
			pattern: "points\\s+of\\s+focus",
			category: "COSO depth",
			why: "Points of focus under each COSO principle — 2013 COSO framework at depth, out of scope.",
		},
		{
			term: "COSO ERM",
			pattern: "COSO\\s+ERM|enterprise\\s+risk\\s+management\\s+framework|ERM\\s+framework",
			category: "COSO ERM",
			why: "COSO Enterprise Risk Management framework (2017) — separate from the internal control framework and out of scope for audit risk assessment.",
		},
		{
			term: "fraud diamond",
			pattern: "fraud\\s+diamond",
			category: "fraud theory",
			why: "The fraud diamond (adds 'capability' to the classic fraud triangle) — academic theory beyond the CPA exam. Only the 3-element fraud triangle is in scope.",
		},
		{
			term: "tolerable misstatement",
			pattern: "tolerable\\s+misstatement",
			category: "materiality mechanics",
			why: "Tolerable misstatement belongs to the Materiality topic and Audit Sampling topic. Risk Assessment uses the concepts of assessed risks and planned procedures, not specific tolerable misstatement allocations.",
		},
		{
			term: "performance materiality",
			pattern: "performance\\s+materiality",
			category: "materiality mechanics",
			why: "Performance materiality computation — Materiality topic, not Risk Assessment.",
		},
		{
			term: "sample size",
			pattern: "sample\\s+size\\s+(?:determination|formula|calculation|table)",
			category: "sampling theory",
			why: "Sample size determination — Audit Sampling topic.",
		},
		{
			term: "PPS sampling",
			pattern: "\\bPPS\\s+sampling|probability\\s+proportional\\s+to\\s+size",
			category: "sampling theory",
			why: "PPS sampling — Audit Sampling topic.",
		},
		{
			term: "attribute sampling",
			pattern: "attribute\\s+sampling",
			category: "sampling theory",
			why: "Attribute sampling — Audit Sampling topic.",
		},
		{
			term: "SOC 1 Type 2",
			pattern: "\\bSOC\\s*1\\b.{0,20}Type\\s*[12]|SSAE\\s*18",
			category: "service organizations",
			why: "SOC 1 Type 2 report mechanics for service organization bridging — Service Organizations topic.",
		},
		{
			term: "component auditor",
			pattern: "component\\s+auditor|group\\s+engagement\\s+partner",
			category: "group audit",
			why: "Component auditor considerations in a group audit — Group Audit topic (AUD/II/F).",
		},
		{
			term: "Uniform Guidance",
			pattern: "Uniform\\s+Guidance|major\\s+program\\s+determination|percentage\\s+of\\s+coverage",
			category: "single audit",
			why: "Uniform Guidance single audit requirements — Governmental Audit topic.",
		},
		{
			term: "bridge letter",
			pattern: "bridge\\s+letter",
			category: "service organizations",
			why: "Bridge letters between SOC 1 report period and audit period — Service Organizations topic.",
		},
		{
			term: "SQMS 1",
			pattern: "SQMS\\s*[12]|SQCS\\s*[12]|statement\\s+on\\s+quality\\s+management",
			category: "quality management",
			why: "Statements on Quality Management Standards (SQMS 1, SQMS 2) — Quality Management topic, not Risk Assessment.",
		},
		{
			term: "engagement quality review",
			pattern: "engagement\\s+quality\\s+(?:reviewer|review\\s+partner|reviewer's)",
			category: "quality management",
			why: "Engagement quality reviewer (EQR) under SQMS 2 — Quality Management topic.",
		},
		{
			term: "NOCLAR",
			pattern: "\\bNOCLAR\\b|noncompliance\\s+with\\s+laws",
			category: "adjacent topic",
			why: "NOCLAR (noncompliance with laws and regulations) — Laws and Regulations topic.",
		},
	],

	notes:
		"AUD/II/E 'Assessing and responding to risks of material misstatement' is the anchor for this topic. Slayer's Risk Assessment lesson teaches the audit risk model, inherent risk factors, control risk concept, significant risks, fraud risk (triangle, types, revenue recognition presumption, management override), and responses to RMM at both the financial statement and assertion levels. COSO is treated at the concept level of the FIVE components only — the 17 principles of the 2013 framework and the COSO ERM framework are out of scope. Adjacent AICPA material has its own topics: Materiality (II/D), Internal Control (II/C), Understanding the Entity (II/B), Using the Work of Others (II/F), Audit Evidence (III/B), Audit Sampling (III/C), Service Organizations, Group Audit, Quality Management, Laws and Regulations, Governmental Audit. The drift risk per the rollout handoff is COSO depth; the bannedTerms include 17 principles, points of focus, COSO ERM, and the fraud diamond.",
};
