import type { LessonSpec } from "./types";

// Twenty-sixth authored spec — ninth spec of Stage 3. Selected from
// census v2 as rank #6: 61 questions, 9 flagged (15%) — `component
// auditor` (8), `tolerable misstatement` (1). Expected to be a
// mixed-pattern cleanup rather than pure rightful-owner: both terms
// now belong to other topics (Using the Work of Others owns group
// audit; Materiality owns tolerable misstatement allocation; Audit
// Sampling owns tolerable misstatement as a sampling variable), so
// spec authoring alone will whitelist none of them — all 9 are
// genuine drift requiring cleanup.
//
// ## Anchor
//
// AICPA AUD/II/A "Planning an engagement" has two sub-topics:
//   1. Overall engagement strategy
//   2. Engagement plan
//
// Scaffolder anchored correctly.
//
// ## Scope line
//
// This topic owns AU-C 300 engagement planning concepts at AU-C
// private-company depth: the overall audit strategy (setting scope,
// timing, direction, and the plan for performance materiality and
// risk assessment procedures at the engagement level); the detailed
// engagement plan (nature, timing, and extent of planned risk
// assessment procedures, further audit procedures for the risks of
// material misstatement, and other planned procedures required by
// GAAS); the engagement team composition and competence assessment
// (ensuring the team collectively possesses the capabilities and
// professional expertise for the engagement); the timing decision
// of interim vs year-end procedures; preliminary analytical
// procedures performed during planning to enhance understanding of
// the entity and identify areas of potential risk; consideration of
// the results of the predecessor auditor's prior audit (when the
// engagement is a new client); and documentation of the overall
// strategy and the engagement plan.
//
// Not this topic: engagement acceptance and continuance mechanics
// (AU-C 210 preconditions — Nature and Scope of Engagements topic
// owns these); engagement letter contents at depth (AU-C 210 —
// Terms of Engagement topic); predecessor/successor auditor
// communications at depth (AU-C 210 — Terms of Engagement topic);
// detailed materiality setting and benchmark percentages
// (Materiality topic owns AU-C 320); risk assessment procedures at
// depth and fraud risk assessment (Risk Assessment topic owns
// AU-C 315 and AU-C 240); understanding of the entity's control
// environment at depth (Internal Controls topic); use of
// specialists, component auditors, and service organizations
// (Using the Work of Others topic owns AU-C 600/610/620/402);
// further audit procedures at depth (Substantive Procedures /
// Responding to Assessed Risks); engagement quality management at
// the firm or engagement level at depth (Quality Management topic).

export const spec: LessonSpec = {
	topic: "Audit Planning",
	section: "aud",
	primaryRef: "AUD/II/A",
	secondaryRefs: [],

	inScope: [
		"The AU-C 300 concept of audit planning as involving the establishment of an overall audit strategy and the development of a more detailed audit plan. Planning is not a discrete phase but a continual and iterative process throughout the engagement; initial planning is performed at the start of the engagement and refined as the auditor obtains additional information.",
		"The overall audit strategy: a high-level statement setting the scope (what will be audited), timing (when procedures will be performed, including interim vs year-end), and direction (including resources allocated to each area) of the engagement. The overall strategy guides the development of the more detailed engagement plan and aligns with the significant decisions needed to perform the audit.",
		"Key elements the overall strategy addresses: the characteristics of the engagement (reporting framework, industry-specific reporting requirements, expected report type, locations of operations); reporting objectives, timing, and the nature of required communications; significant factors, preliminary engagement activities, and knowledge gained from other engagements; the nature, timing, and extent of resources needed to perform the engagement; and the preliminary estimate of materiality and identification of significant risks at a conceptual level (though detailed materiality setting is AU-C 320 territory).",
		"The engagement plan as a more detailed document flowing from the overall strategy: it describes the nature, timing, and extent of planned risk assessment procedures under AU-C 315; the nature, timing, and extent of planned further audit procedures (tests of controls and substantive procedures) in response to assessed risks at the assertion level; and other planned procedures required by GAAS (such as external confirmations, going concern, related-party procedures, subsequent events).",
		"The timing decision of interim vs year-end procedures: procedures performed at an interim date allow workload leveling and earlier identification of issues but require roll-forward procedures from the interim date to year-end; year-end procedures produce evidence as of the balance sheet date but compress the fieldwork window. The choice depends on assessed risk, the entity's control environment, and engagement efficiency.",
		"Engagement team composition and competence: the engagement partner is responsible for ensuring the engagement team collectively has the appropriate capabilities, competence, time, and resources to perform the audit in accordance with professional standards. This includes industry knowledge where relevant (e.g., a team auditing a regulated utility should include someone familiar with regulated-industry accounting), IT expertise for audits of entities with complex IT environments, and supervisory capacity.",
		"Preliminary analytical procedures during planning: analytical procedures performed as risk assessment procedures to enhance the auditor's understanding of the entity and identify areas that may indicate a risk of material misstatement. Examples include comparing current-year financial data to prior-year data, comparing to budget, computing ratios and comparing to industry benchmarks, and investigating unexpected relationships. These differ from substantive analytical procedures which are performed later in the audit as a source of substantive evidence.",
		"Knowledge from the predecessor auditor in a new engagement: once the successor auditor has client permission, the predecessor auditor provides information relevant to the audit, including issues discussed with management and those charged with governance, significant audit adjustments, findings regarding fraud or illegal acts, and disagreements. This input informs the successor's planning of risk assessment procedures and substantive testing. The communication itself is a Terms-of-Engagement-topic concept; the use of the information in planning is in scope here.",
		"Continuity in a recurring audit engagement: prior-year knowledge of the entity, risk assessment, internal control, and significant audit findings is a planning input for the current year. The auditor refreshes understanding for current-year developments and considers whether prior-year materiality or risk assessment should change.",
		"The planning documentation requirements under AU-C 300: the overall audit strategy, the engagement plan, and any significant changes made to the strategy or plan during the engagement, with reasons for the changes. Documentation should enable an experienced auditor with no prior engagement involvement to understand the nature, timing, and extent of procedures performed and the results.",
		"Direction, supervision, and review as aspects of planning that continue through execution: the engagement partner directs the team (informing the team of their responsibilities, the objectives of the work, the significant risks, and the approach); supervises the work performed; and reviews the work for appropriateness of conclusions and compliance with procedures.",
		"Coordination with other engagements at the same entity — tax, advisory, or internal audit — performed by the same firm or affiliated firm: the audit team coordinates planning to ensure independence is maintained, relevant information is shared appropriately, and engagements do not inadvertently compromise the auditor's independence.",
		"The role of planning in efficient and effective auditing: an effective planning process allocates resources to areas of higher risk, focuses procedures on identified risks, enables workload leveling through interim procedures, and provides the basis for professional skepticism and evidence evaluation throughout the engagement.",
		"Modification of the overall strategy or engagement plan during the audit: if the auditor becomes aware during the audit that circumstances differ from those assumed in planning — such as revised materiality, newly identified risks, or unexpected findings — the strategy and plan are updated and the implications for audit procedures already performed and those remaining are evaluated.",
	],

	outOfScope: [
		"Engagement acceptance and continuance mechanics at depth — the AU-C 210 preconditions for an engagement (whether the applicable financial reporting framework is acceptable, whether management acknowledges its responsibility for the financial statements and for internal control, whether management agrees to provide the auditor with access to information and to personnel), the independence evaluation at engagement acceptance, client screening procedures, integrity assessments of prospective clients. Nature and Scope of Engagements topic territory",
		"The engagement letter at depth — AU-C 210 required contents (objective and scope, responsibilities of the auditor and management, reporting framework, limitations of the engagement, access to information), engagement letter updates when circumstances change, fee and billing arrangements. Terms of Engagement topic territory. The planning process's reference to the engagement letter as an input is in scope",
		"Predecessor/successor auditor communications at depth — the client permission requirement, the nature of communications (prior to accepting the engagement and during planning), the predecessor's review of working papers by the successor, disagreements between predecessor and successor. Terms of Engagement territory at depth",
		"AU-C 320 materiality determination at depth — benchmark selection (5% of pre-tax income, 0.5%-1% of revenue, etc.), performance materiality percentage selection, specific materiality, qualitative factors for materiality, revision of materiality during the audit. Materiality topic owns this. Planning references materiality at the conceptual level (the strategy includes the preliminary materiality estimate)",
		"AU-C 315 risk assessment procedures at depth — the understanding of the entity and its environment, the components of internal control, identifying and assessing risks of material misstatement at the financial statement and assertion level, significant risks identification, walkthrough procedures at depth. Risk Assessment topic territory. Planning references the need for risk assessment procedures but the mechanics belong to Risk Assessment",
		"AU-C 240 fraud risk assessment at depth — the brainstorming session, the consideration of fraud risk factors, the presumption of revenue recognition fraud, management override of controls, fraud-specific analytical procedures, responding to identified fraud risks at the assertion level. Risk Assessment (fraud) territory",
		"AU-C 600 group audit concepts — component auditors, component materiality, group engagement partner responsibilities, communication with component auditors, referred-to auditor alternative. Using the Work of Others topic owns AU-C 600. Planning references the need to consider component auditor involvement at the strategy level",
		"AU-C 610 internal auditor reliance at depth and AU-C 620 specialist reliance at depth — the evaluation of competence and objectivity, the scope and nature of the work being relied upon. Using the Work of Others topic. Planning references the need to consider use of others at the strategy level",
		"AU-C 402 service organization considerations — understanding the services provided, evaluating SOC 1 reports, performing procedures at the service organization. Using the Work of Others topic",
		"AU-C 330 responses to assessed risks — nature/timing/extent of further audit procedures, tests of controls, substantive procedures, dual-purpose tests, test-of-details sample design. Substantive Procedures / Responding to Assessed Risks territory. Planning produces the engagement plan that describes these procedures; the mechanics of performing them belong elsewhere",
		"AU-C 520 analytical procedures at depth — substantive analytical procedures (as evidence source), final analytical procedures (near the end of the audit), the development of expectations, the investigation of differences. The use of preliminary analytical procedures as risk assessment procedures during planning is in scope; depth procedures belong to Substantive Procedures",
		"AU-C 530 audit sampling mechanics — sample size formulas, sampling methods (attributes, variables, MUS), sampling risk, tolerable rate of deviation, tolerable misstatement as a sample evaluation variable. Audit Sampling topic territory. Planning references sampling at the conceptual level (the strategy considers how sample sizes will affect resource needs)",
		"AU-C 220 quality management at the engagement level at depth — engagement quality review, the role of the engagement quality reviewer, documentation of the EQR, the threshold for EQR requirements, unresolved matters between the engagement team and the reviewer. Quality Management topic territory. Planning references the need for EQR in the overall strategy when applicable",
		"AU-C 540 auditing accounting estimates at depth — estimation methodology evaluation, management bias, estimation uncertainty, fair value estimates. Specific Areas and Transactions (AUD) or Audit Evidence territory",
		"AU-C 550 related parties at depth — identification of related parties and transactions, evaluation of business purpose, authorization and disclosure. Risk Assessment or Specific Areas territory",
		"AU-C 570 going concern at depth — substantial doubt evaluation, management's plans, disclosure adequacy, reporting implications. Going Concern or Audit Reports territory. Planning considers going concern at the conceptual level (whether it should be included in the strategy) but the detailed evaluation is later in the audit",
		"Specific industry audit considerations at depth — audits of banks, insurance companies, employee benefit plans, governmental entities, broker-dealers. Industry-specific planning considerations are in scope at concept level; industry-specific accounting and reporting complexity is not",
		"PCAOB auditing standards on planning at depth — AS 2101 Audit Planning, AS 2110 Identifying and Assessing Risks of Material Misstatement. PCAOB is tested only as a distinction in the AUD exam",
		"IFAC ISA 300 Planning an Audit of Financial Statements at depth — this spec covers AU-C 300 US GAAS",
	],

	keyStandards: [
		"AU-C 300 — Planning an Audit",
		"AU-C 200 — Overall Objectives of the Independent Auditor (referenced for the iterative planning concept)",
		"AU-C 220 — Quality Management for an Engagement (referenced for engagement team competence)",
		"AU-C 315 — Understanding the Entity (referenced for risk assessment procedures that the plan addresses)",
		"AU-C 320 — Materiality (referenced for the preliminary materiality estimate in the strategy)",
		"AU-C 330 — Performing Procedures in Response to Assessed Risks (referenced for the further audit procedures that the engagement plan describes)",
	],

	commonMisconceptions: [
		"Thinking that audit planning is a discrete phase completed at the start of the engagement. Planning is continual and iterative — initial planning is performed before substantive fieldwork, but the strategy and plan are updated throughout the engagement as the auditor obtains additional information and as circumstances change.",
		"Believing the overall audit strategy and the detailed engagement plan are the same document. The overall strategy is a high-level document setting scope, timing, and direction; the engagement plan flows from the strategy and describes the specific nature, timing, and extent of planned procedures. The strategy establishes the framework; the plan operationalizes it.",
		"Conflating audit planning with engagement acceptance. Engagement acceptance (whether to accept the client at all) is a precondition to planning and belongs to AU-C 210 Terms of Engagement. Audit planning assumes the engagement has been accepted and addresses how the audit will be performed.",
		"Thinking that preliminary analytical procedures performed during planning are the same as substantive analytical procedures. Preliminary analytical procedures are a risk assessment procedure used to identify areas of potential risk and enhance the auditor's understanding. Substantive analytical procedures are performed later as a source of audit evidence. Both use analytical techniques but serve different objectives.",
		"Believing that engagement team composition is fixed at planning and cannot change. The engagement partner continually evaluates whether the team has the needed competence and resources; if new information reveals specialized expertise is required (e.g., a newly identified complex fair value estimate), the team is supplemented.",
		"Thinking interim procedures are always more efficient than year-end procedures. Interim procedures enable workload leveling and earlier issue identification but require roll-forward procedures from the interim date to year-end, adding cost. The choice is an efficiency-vs-effectiveness trade-off that depends on assessed risk, control environment, and the nature of the account balance.",
		"Confusing audit planning with audit strategy at a theoretical or business sense. The audit strategy in AU-C 300 is a specific, engagement-level artifact establishing the scope, timing, and direction of the audit — not a general statement about how the firm approaches auditing as a practice area.",
		"Believing that recurring audits require no planning because the prior year's plan can be reused. Each engagement requires fresh planning, though prior-year knowledge of the entity, risk assessment, and significant audit findings is a valuable input. The auditor refreshes understanding for current-year developments and confirms that prior-year assumptions remain valid.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		// --- Using the Work of Others concepts ---
		{
			term: "component auditor",
			pattern: "component\\s+auditor",
			category: "group audit",
			why: "Component auditor and group audit concepts — Using the Work of Others topic (AU-C 600). Planning references the need to consider use of others at strategy level without the depth.",
		},
		{
			term: "component materiality",
			pattern: "component\\s+materiality",
			category: "group audit",
			why: "Component-level materiality in group audits — AU-C 600 Using the Work of Others territory.",
		},
		{
			term: "referred-to auditor",
			pattern: "referred[-\\s]to\\s+auditor",
			category: "group audit",
			why: "Referred-to auditor divided-responsibility option — Using the Work of Others topic.",
		},
		{
			term: "auditor's specialist",
			pattern: "auditor'?s\\s+specialist|management'?s\\s+specialist",
			category: "specialist reliance",
			why: "AU-C 620 auditor's or management's specialist distinction — Using the Work of Others topic.",
		},
		{
			term: "service organization",
			pattern: "service\\s+organization\\b.{0,80}(SOC|AU[-\\s]C\\s*402|user\\s+auditor|SOC\\s*1)",
			category: "SOC reliance",
			why: "AU-C 402 service organization SOC reliance procedures — Using the Work of Others topic. Generic 'service organization' reference in planning context is OK; detailed SOC reliance is not.",
		},
		{
			term: "SOC 1 Type 2",
			pattern: "SOC\\s*1\\s+Type\\s*2|Type\\s*2\\s+SOC\\s*1",
			category: "SOC reliance",
			why: "SOC 1 Type 2 report content and reliance — Using the Work of Others topic.",
		},
		{
			term: "internal audit function",
			pattern: "internal\\s+audit\\s+function\\b.{0,60}(reliance|AU[-\\s]C\\s*610|objectivity|competence\\s+and)",
			category: "internal audit reliance",
			why: "AU-C 610 internal audit function reliance evaluation — Using the Work of Others topic.",
		},

		// --- Materiality mechanics (Materiality topic) ---
		{
			term: "tolerable misstatement",
			pattern: "tolerable\\s+misstatement",
			category: "materiality mechanics",
			why: "Tolerable misstatement as a materiality allocation — Materiality topic owns this. Planning references materiality at the conceptual level only.",
		},
		{
			term: "benchmark percentage",
			pattern: "5%\\s+of\\s+pre[-\\s]tax\\s+income|0\\.5%\\s+of\\s+revenue|benchmark\\s+percentage\\s+of",
			category: "materiality mechanics",
			why: "Specific materiality benchmark percentages — Materiality topic territory.",
		},

		// --- Audit Sampling mechanics ---
		{
			term: "tolerable rate of deviation",
			pattern: "tolerable\\s+rate\\s+of\\s+deviation",
			category: "sampling mechanics",
			why: "Attributes sampling concept — Audit Sampling topic.",
		},
		{
			term: "sampling risk",
			pattern: "sampling\\s+risk|risk\\s+of\\s+overreliance|risk\\s+of\\s+incorrect\\s+acceptance",
			category: "sampling mechanics",
			why: "Sampling risk concepts — Audit Sampling topic.",
		},

		// --- Risk assessment mechanics (Risk Assessment topic) ---
		{
			term: "audit risk model",
			pattern: "audit\\s+risk\\s+model|AR\\s*=\\s*IR\\s*×\\s*CR\\s*×\\s*DR|inherent\\s+risk\\s+times\\s+control\\s+risk",
			category: "risk assessment mechanics",
			why: "Audit risk model mechanics — Risk Assessment topic.",
		},
		{
			term: "significant risk",
			pattern: "significant\\s+risk\\s+of\\s+material\\s+misstatement|identified\\s+significant\\s+risk\\b",
			category: "risk assessment mechanics",
			why: "Identification of significant risks under AU-C 315 — Risk Assessment topic. Planning references significant risks at concept level in the overall strategy.",
		},
		{
			term: "brainstorming session",
			pattern: "brainstorming\\s+session|fraud\\s+brainstorming",
			category: "fraud risk",
			why: "AU-C 240 fraud brainstorming — Risk Assessment (fraud) topic.",
		},

		// --- PCAOB depth ---
		{
			term: "AS 2101",
			pattern: "\\bAS\\s*2101\\b",
			category: "PCAOB depth",
			why: "PCAOB Audit Planning standard — AU-C 300 is the AUD exam scope.",
		},
		{
			term: "AS 2110",
			pattern: "\\bAS\\s*2110\\b",
			category: "PCAOB depth",
			why: "PCAOB risk assessment standard — Risk Assessment topic if anywhere.",
		},

		// --- IFAC / ISA ---
		{
			term: "ISA 300",
			pattern: "\\bISA\\s*300\\b",
			category: "IFAC standards",
			why: "IFAC International Standard on Auditing 300 — non-US standard.",
		},
	],

	notes:
		"Audit Planning is the AUD/II/A topic covering AU-C 300 overall audit strategy, detailed engagement plan, engagement team composition and competence, timing decisions (interim vs year-end), preliminary analytical procedures as risk-assessment procedures, predecessor-auditor information input, planning documentation, and the iterative nature of planning throughout the engagement. Census v2 flagged 9/61 questions at 15% — 8 on `component auditor` and 1 on `tolerable misstatement`. These are NOT rightful-owner hits: both concepts now have dedicated owners (Using the Work of Others owns AU-C 600 group audit and component auditors; Materiality owns tolerable misstatement as a materiality allocation; Audit Sampling owns tolerable misstatement as a sampling variable). Expected cleanup is all genuine drift — planning questions that drifted into mechanics of use-of-others and materiality depth. The line this spec holds tightly: AU-C 300 planning process at concept level. Related concepts are referenced only at the strategy-level of 'what the plan addresses' rather than at the mechanics level of 'how the procedure works.' Out of scope: engagement acceptance (Nature and Scope / Terms of Engagement topics); engagement letter at depth (Terms of Engagement); materiality setting at depth (Materiality); risk assessment at depth (Risk Assessment); fraud risk at depth (Risk Assessment); use of others at depth (Using the Work of Others); further audit procedures at depth (Substantive Procedures); quality management at depth (Quality Management); audit sampling mechanics (Audit Sampling); PCAOB AS 2101/2110 at depth; IFAC ISA 300 at depth.",
};
