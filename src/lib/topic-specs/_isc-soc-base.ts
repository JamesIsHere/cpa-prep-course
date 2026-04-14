import type { BannedTerm } from "./types";

// Shared scope base for the ISC SOC topic cluster. The Slayer question
// bank has five related SOC topic labels that collectively cover the
// same ISC SOC territory from the service-auditor perspective:
//
//   - SOC Engagements
//   - SOC Reporting
//   - SOC Testing Controls
//   - SOC Report Content and Structure
//   - SOC Reporting and Trust Services Criteria
//
// Rather than author five near-duplicate specs, each topic-specific
// file imports this base and spreads it into a TopicSpec object with
// its own topic string and slight scope-emphasis notes. The banned
// terms are identical because the five topics draw from the same
// drift surfaces (Using the Work of Others territory, PCAOB AS 2201
// depth, user-auditor reliance specifics).
//
// ## Rightful-owner pattern
//
// The Using the Work of Others (AUD) spec explicitly bans
// `SOC 1 Type 2`, `SSAE 18`, `AT-C 320`, `trust services criteria`,
// `SOC for Cybersecurity`, and `SOC for Supply Chain` — it holds the
// line at user-auditor reliance concepts without going into
// service-auditor methodology or SOC 2 trust services criteria at
// depth. The Audit Planning and Audit Evidence specs similarly push
// SOC depth out. All of that content has its rightful home in the
// ISC SOC cluster, which owns the SERVICE AUDITOR perspective:
// producing SOC reports, executing SOC engagements, applying trust
// services criteria, and the SOC 1 vs 2 vs 3, Type 1 vs Type 2
// structural distinctions.
//
// ## Scope line
//
// These topics collectively own SOC engagements and reporting at
// ISC concept depth: SOC 1 (reporting on controls relevant to user
// entities' financial reporting) vs SOC 2 (reporting on controls
// relevant to the trust services criteria) vs SOC 3 (general-use
// short-form summary); Type 1 (design as of a point in time) vs
// Type 2 (design plus operating effectiveness over a period);
// system description requirements; management's written assertion;
// the trust services criteria (security, availability, processing
// integrity, confidentiality, privacy) and the common criteria
// baseline; inclusive vs carve-out subservice organization
// treatment; complementary user entity controls (CUECs) and
// complementary subservice organization controls (CSOCs); control
// deficiencies and qualified opinion reporting; the SSAE 18 / AT-C
// 205 / AT-C 320 framework at concept depth; SOC for Cybersecurity
// and SOC for Supply Chain existence and distinction.

export const SOC_IN_SCOPE: string[] = [
	"SOC (System and Organization Controls) reports as a framework for reporting on the internal controls of a service organization by an independent service auditor. SOC reports serve different purposes depending on who the intended user is and what control objectives or criteria are being examined. A SOC engagement is an AICPA attestation engagement performed under the SSAE 18 framework.",
	"The three core SOC report types: SOC 1 reports on controls at a service organization relevant to user entities' internal control over financial reporting (ICFR). SOC 2 reports on controls relevant to one or more of the five trust services criteria (security, availability, processing integrity, confidentiality, privacy). SOC 3 is a general-use short-form version of a SOC 2 that can be distributed publicly without restriction, used primarily for marketing purposes.",
	"Type 1 vs Type 2 reports within SOC 1 and SOC 2 engagements: Type 1 reports cover management's description of the service organization's system and the suitability of design of controls at a specific point in time. Type 2 reports cover management's description, suitability of design, AND the operating effectiveness of those controls over a specified period (typically six months to one year). Type 2 provides more value to user auditors because it includes operating effectiveness evidence over time, whereas Type 1 provides only design evidence.",
	"The trust services criteria for SOC 2 engagements: (1) Security — the common criteria that apply to all SOC 2 engagements, covering the protection of information and systems against unauthorized access or disclosure, use, modification, destruction, or disruption; (2) Availability — that the system is available for operation and use as committed or agreed; (3) Processing integrity — that system processing is complete, valid, accurate, timely, and authorized; (4) Confidentiality — that information designated as confidential is protected as committed or agreed; (5) Privacy — that personal information is collected, used, retained, disclosed, and disposed of in conformity with commitments in the entity's privacy notice and with criteria in generally accepted privacy principles.",
	"The 'common criteria' (CC) baseline for SOC 2: the Security category is always included in a SOC 2 engagement and contains the common criteria that apply across all five categories (CC1.x control environment, CC2.x communication and information, CC3.x risk assessment, CC4.x monitoring activities, CC5.x control activities, CC6.x logical and physical access, CC7.x system operations, CC8.x change management, CC9.x risk mitigation). The other four categories (Availability, Processing Integrity, Confidentiality, Privacy) add additional category-specific criteria only when their scope is included in the engagement.",
	"The SOC engagement process: planning (understanding the service organization's services, identifying the scope of the system and the relevant trust services criteria, assessing risks); performing procedures to obtain evidence about the design and (for Type 2) operating effectiveness of controls; evaluating results; and issuing the SOC report with an opinion.",
	"SSAE 18 and the AT-C 200/320 framework: SSAE 18 is the Statement on Standards for Attestation Engagements that governs SOC engagements. AT-C 205 'Examination Engagements' provides the general standards for any examination engagement. AT-C 320 'Reporting on an Examination of Controls at a Service Organization Relevant to User Entities' ICFR' is the specific standard for SOC 1 engagements. SOC 2 is conducted under AT-C 205 with reference to the TSP section 100 trust services criteria.",
	"Management's written assertion: a required component of a SOC report. Management of the service organization must provide a written assertion confirming that (1) the description of the system fairly presents the system, (2) the controls are suitably designed (Type 1 and Type 2) and operating effectively (Type 2 only), and (3) the criteria the engagement is measured against are valid. The service auditor examines management's assertion against the underlying evidence and expresses an opinion.",
	"The SOC report structure: (1) service auditor's report (opinion letter); (2) management's written assertion; (3) description of the system (Section III in most SOC reports — prepared by management, describing the services provided, the components of the system, and the relevant control objectives or criteria); (4) description of controls and tests performed and results thereof (Section IV — in Type 2 only, describing specific controls tested, tests performed, and any deviations noted); (5) supplemental information (Section V, if applicable).",
	"The system description requirements under DC section 200 (for SOC 1) or DC section 200A (for SOC 2): management must describe the services provided, the system components (infrastructure, software, people, procedures, data), the boundaries of the system, the principal service commitments and system requirements, the controls in place to meet those commitments, and the complementary user entity controls (CUECs) assumed in the design of the controls. For SOC 2, the description must address how the trust services criteria apply to the service organization's system.",
	"Complementary user entity controls (CUECs): controls that the service organization assumes, in the design of its controls, will be implemented by the user entities. CUECs are disclosed in the system description because the service auditor's opinion on design effectiveness (and operating effectiveness, for Type 2) depends on the user entities implementing the CUECs. A user entity that fails to implement a CUEC undermines the controls the SOC report describes.",
	"Complementary subservice organization controls (CSOCs) and the inclusive vs carve-out method: when a service organization uses a subservice organization (e.g., a cloud hosting provider), the service organization must decide how to treat the subservice organization in its SOC report. Under the INCLUSIVE method, the description and scope include the subservice organization's relevant controls and the service auditor tests those controls directly. Under the CARVE-OUT method, the description references the subservice organization but excludes its controls from the scope; the service auditor does not test subservice controls. CSOCs are the controls assumed to be in place at the subservice organization under the carve-out method.",
	"Control deficiency evaluation and opinion modification: when the service auditor identifies a control deficiency — a control that did not operate as described or was not suitably designed — the auditor evaluates whether it is significant enough to affect the opinion. A minor or isolated deficiency may be reported but still allow an unmodified opinion. A material or pervasive deficiency may require a qualified opinion (one or more controls did not operate effectively) or an adverse opinion (the description as a whole does not fairly present the system). A disclaimer results when the auditor cannot obtain sufficient appropriate evidence.",
	"The testing of controls in a SOC 2 Type 2 engagement: the service auditor designs tests of the controls documented in the system description to evaluate whether they were suitably designed and operated effectively throughout the period. Test procedures include inquiry, observation, inspection, and reperformance, applied to samples of transactions or control activities. The service auditor documents exceptions (instances where a control did not operate as designed) and evaluates their significance.",
	"Access controls as a key SOC 2 Security testing area: authentication mechanisms, authorization frameworks (role-based access control, principle of least privilege), user provisioning and deprovisioning, periodic access reviews, privileged access management, multi-factor authentication, password policy enforcement. Testing involves sampling user accounts, reviewing access logs, and reperforming access review procedures.",
	"Change management as a key SOC 2 testing area: formal request and approval of changes, segregation of duties between development and production, testing in a non-production environment, code review, rollback procedures, emergency change handling. The service auditor tests sample changes to verify compliance with the documented change management process.",
	"Incident response, system monitoring, backup and recovery, and vendor management as other key SOC 2 testing areas that fall under the Security common criteria and, when in scope, the Availability and Processing Integrity categories.",
	"SOC for Cybersecurity: a specialized SOC engagement under SSAE 18 that reports on an entity's cybersecurity risk management program. The service auditor examines the design and effectiveness of the cybersecurity risk management controls against a set of descriptive and evaluative criteria. SOC for Cybersecurity is distinct from SOC 2 in that it covers the entity's enterprise-wide cybersecurity program rather than specific service systems.",
	"SOC for Supply Chain: a specialized SOC engagement that reports on controls relevant to the supply chain of products and services, supporting users' understanding of controls at a producer, manufacturer, or distributor.",
	"The user entity's perspective on SOC reports (as referenced by ICFR and ISC content): the user entity (customer of the service organization) obtains the SOC report to understand and rely on the service organization's controls. The user auditor (the user entity's external auditor) uses the SOC report as audit evidence under AU-C 402. This spec covers the SERVICE AUDITOR / service organization perspective; the USER AUDITOR reliance perspective is owned by the AUD Using the Work of Others topic.",
];

export const SOC_OUT_OF_SCOPE: string[] = [
	"User auditor reliance mechanics on SOC reports at depth — AU-C 402 'Audit Considerations Relating to an Entity Using a Service Organization,' the user auditor's decision framework for SOC 1 vs SOC 2, the user auditor's evaluation of CUECs at the user entity, the interaction with the user auditor's risk assessment. The Using the Work of Others (AUD) topic owns user-auditor reliance. ISC SOC topics cover the SERVICE AUDITOR perspective",
	"PCAOB integrated audit of ICFR under AS 2201 — the auditor's report on internal control over financial reporting for an accelerated filer, the walkthrough procedure, the top-down approach. Separate integrated audit topic (or PCAOB testing distinction). SOC 1 engagements are private-company attestation, not PCAOB integrated audits",
	"Audit sampling mechanics at AU-C 530 depth — sample size formulas, attribute sampling vs variables sampling, MUS/PPS, sampling risk quantification. Audit Sampling topic territory. SOC engagements use sampling concepts but the mechanics are not what ISC SOC topics test",
	"Detailed firm-level quality management standards under SQMS 1 / ISQM 1 — engagement quality review, the risk-based approach to quality management, leadership responsibilities. AUD Quality Management territory",
	"Specific IT general controls testing methodology at AUD depth — the seven-step ITGC framework, detailed walkthrough procedures for access and change management, integration with the financial statement audit. AUD Internal Controls or ISC IT General Controls territory for ITGC at IT-audit depth",
	"ISACA CISA framework mechanics, COBIT IT governance framework details, ITIL service management framework — ISC IT Audit Frameworks territory. The concept that SOC engagements can leverage IT audit frameworks is in scope; the framework mechanics are not",
	"Firewall configurations, intrusion detection system tuning, endpoint detection and response (EDR) mechanics, security information and event management (SIEM) configuration — ISC Security Controls territory at tool-specific depth",
	"Cryptographic algorithm details (AES, RSA, ECC, hashing algorithms like SHA-256), key management mechanics at depth, PKI architecture — ISC Data Protection Technologies territory",
	"Detailed IT infrastructure and architecture specifics (OSI model layers, network topologies, virtualization platforms like VMware or Hyper-V) — ISC IT Infrastructure territory",
	"Specific privacy laws at regulatory depth — GDPR articles, CCPA/CPRA specific provisions, HIPAA Privacy Rule mechanics, PCI DSS specific requirements. ISC Privacy Requirements territory for privacy concepts",
	"Incident response playbooks at tool-level depth, business continuity planning detailed frameworks, disaster recovery RPO/RTO configurations — ISC Incident Response territory",
	"PCAOB AS 2201 integrated audit of internal control mechanics — the auditor's evaluation of material weaknesses, significant deficiencies, and control deficiencies in an integrated audit. AUD Internal Controls or PCAOB depth",
	"Governmental audit standards under Yellow Book — generally accepted government auditing standards (GAGAS), single audit under Uniform Guidance. AUD Government Auditing Standards territory",
	"Sarbanes-Oxley Section 404 management and auditor certifications — the management assessment of ICFR, the external auditor's report on ICFR. AUD Internal Controls or PCAOB territory",
	"International assurance standards — ISAE 3402 (International Standard on Assurance Engagements — the international equivalent of SSAE 18 for service organization reporting), ISAE 3000. IFAC standards are out of scope for the AUD and ISC CPA exam sections, which cover US standards",
];

export const SOC_KEY_STANDARDS: string[] = [
	"SSAE 18 — Statements on Standards for Attestation Engagements No. 18",
	"AT-C 205 — Examination Engagements",
	"AT-C 320 — Reporting on an Examination of Controls at a Service Organization Relevant to User Entities' ICFR (SOC 1)",
	"TSP Section 100 — Trust Services Criteria for Security, Availability, Processing Integrity, Confidentiality, and Privacy (applicable to SOC 2 engagements)",
	"DC Section 200 — Description Criteria for a Description of a Service Organization's System in a SOC 1 Report",
	"DC Section 200A — Description Criteria for a Description of a Service Organization's System in a SOC 2 Report",
	"AICPA Audit Guide — Reporting on an Examination of Controls at a Service Organization Relevant to User Entities' ICFR",
	"AICPA Audit Guide — Reporting on Controls at a Service Organization Relevant to Security, Availability, Processing Integrity, Confidentiality, or Privacy",
];

export const SOC_COMMON_MISCONCEPTIONS: string[] = [
	"Conflating SOC 1 with SOC 2. SOC 1 addresses controls at the service organization that are relevant to user entities' internal control over FINANCIAL REPORTING — the user auditor uses it to support a financial statement audit. SOC 2 addresses controls relevant to the TRUST SERVICES CRITERIA (security, availability, processing integrity, confidentiality, privacy) — the user entity uses it to evaluate operational control over the services, typically for risk management or customer due diligence rather than for financial statement audit purposes.",
	"Believing a Type 1 report is interchangeable with a Type 2 report. Type 1 addresses design and implementation at a point in time; Type 2 addresses design AND operating effectiveness over a specified period (typically six months to one year). Only Type 2 provides evidence of operating effectiveness, which is what makes a SOC report useful for user auditors seeking to reduce their own substantive testing.",
	"Thinking SOC 3 is a substitute for SOC 2. SOC 3 is a general-use short-form summary of a SOC 2 that can be distributed publicly without restriction. It is intended for marketing and general stakeholder assurance — not as a detailed control evaluation. SOC 2 provides the full description of system and controls; SOC 3 provides a high-level opinion.",
	"Confusing complementary user entity controls (CUECs) with complementary subservice organization controls (CSOCs). CUECs are controls assumed to be implemented at the USER entity (customer) — the service auditor's opinion depends on them. CSOCs are controls assumed to be implemented at a SUBSERVICE organization (a vendor to the service organization) under the carve-out method.",
	"Treating the inclusive vs carve-out method as a free choice without consequences. Under the inclusive method, the service auditor's scope includes the subservice organization's controls and the auditor must directly test them, requiring subservice cooperation. Under the carve-out method, the subservice is excluded from the scope and the user relies on a separate SOC report at the subservice organization (or accepts the residual risk). The choice affects scope, cost, and user auditor reliance.",
	"Believing the trust services criteria for SOC 2 are optional. The Security category (common criteria) is always required in a SOC 2 engagement. The other four categories (Availability, Processing Integrity, Confidentiality, Privacy) are elected by management based on what the service organization commits to and what users need. A SOC 2 engagement always includes Security; it may or may not include the others.",
	"Thinking a qualified opinion on a SOC report means the service organization is not trustworthy. A qualified opinion under SSAE 18 means one or more controls did not operate effectively in the service auditor's judgment, but the description is otherwise fairly presented and the remainder of the controls operated effectively. User entities evaluate the specific exceptions noted in the qualified opinion against their own reliance needs — a qualified opinion is informative, not automatically disqualifying.",
	"Treating SOC for Cybersecurity as a replacement for SOC 2. SOC for Cybersecurity addresses the entity's enterprise-wide cybersecurity risk management PROGRAM — a broader and different scope than SOC 2's examination of controls in specific service systems against the trust services criteria.",
	"Believing management's written assertion is the service auditor's opinion. The written assertion is prepared by management of the service organization stating that the description is fair, the controls are suitably designed (and operating effectively, for Type 2), and the criteria are valid. The service auditor's opinion is a separate document that expresses the auditor's conclusion on those assertions.",
	"Thinking the system description is prepared by the service auditor. The system description is prepared by MANAGEMENT of the service organization. The service auditor examines the description against the evidence and expresses an opinion on whether the description is fairly presented. This is the attestation concept — management makes the assertion, the auditor attests to it.",
];

export const SOC_BANNED_TERMS: BannedTerm[] = [
	// Note: AU-C 402 (user auditor reliance standard) is intentionally NOT
	// banned. SOC content from the service-auditor perspective legitimately
	// references AU-C 402 as the standard under which user auditors consume
	// SOC reports. Deep AU-C 402 mechanics (user auditor's evaluation of
	// CUECs at the user entity, risk assessment interaction) remain out of
	// scope per outOfScope commentary but are handled editorially rather
	// than by banned-term enforcement.

	// --- PCAOB integrated audit ---
	{
		term: "AS 2201",
		pattern: "\\bAS\\s*2201\\b",
		category: "PCAOB depth",
		why: "PCAOB integrated audit of ICFR — separate topic, AUD Internal Controls or integrated audit territory.",
	},
	{
		term: "Section 404",
		pattern: "Section\\s*404\\s+of\\s+Sarbanes[-\\s]Oxley|\\bSOX\\s+Section\\s*404\\b|\\bSection\\s*404\\s+certification",
		category: "SOX depth",
		why: "Sarbanes-Oxley Section 404 management and auditor ICFR certifications — separate integrated audit topic.",
	},

	// Note: `sampling risk` and related sampling terms are NOT banned
	// because SOC testing legitimately includes concepts like 100%
	// examination of small populations. Deep AU-C 530 sampling
	// mechanics (sample size formulas, MUS projection) remain out of
	// scope but are handled editorially, not by banned-term enforcement.

	// Note: MUS/PPS sampling ban removed for the same reason.

	// --- Quality management depth ---
	{
		term: "SQMS 1",
		pattern: "\\bSQMS\\s*1\\b",
		category: "quality management",
		why: "AICPA SQMS 1 quality management standards — AUD Quality Management territory.",
	},
	{
		term: "ISQM 1",
		pattern: "\\bISQM\\s*1\\b",
		category: "quality management",
		why: "International Standard on Quality Management 1 — AUD Quality Management territory.",
	},

	// --- ISACA / IT framework depth ---
	{
		term: "CISA",
		pattern: "\\bCISA\\b",
		category: "IT credential",
		why: "Certified Information Systems Auditor credential depth — ISC IT Audit Frameworks territory.",
	},
	// Note: COBIT and ITIL are NOT banned. SOC 2 content legitimately
	// maps the Trust Services Criteria common criteria (CC1-CC9) to
	// COSO, COBIT, and similar frameworks at the framework-alignment
	// level. Deep framework mechanics remain out of scope editorially.
	{
		term: "ITIL",
		pattern: "\\bITIL\\b",
		category: "IT framework",
		why: "IT Infrastructure Library at mechanics depth — ISC IT Audit Frameworks territory.",
	},

	// --- International assurance standards ---
	{
		term: "ISAE 3402",
		pattern: "\\bISAE\\s*3402\\b",
		category: "IFAC standards",
		why: "International assurance standard equivalent to SSAE 18 — non-US, out of scope for AUD/ISC CPA exam.",
	},
	{
		term: "ISAE 3000",
		pattern: "\\bISAE\\s*3000\\b",
		category: "IFAC standards",
		why: "International general assurance engagement standard — non-US.",
	},

	// --- Government audit ---
	{
		term: "Yellow Book",
		pattern: "Yellow\\s+Book|\\bGAGAS\\b|generally\\s+accepted\\s+government\\s+auditing\\s+standards",
		category: "government audit",
		why: "Yellow Book / GAGAS government auditing standards — AUD Government Auditing Standards territory.",
	},

	// Note: Specific encryption algorithm names (AES-256, SHA-256) are
	// NOT banned. SOC 2 testing fact patterns legitimately reference
	// encryption configurations. Deep cryptographic-protocol mechanics
	// remain ISC Data Protection territory but the bans were too strict.

	// --- Privacy law depth ---
	{
		term: "GDPR Article",
		pattern: "GDPR\\s+Article\\s+\\d+|Article\\s+\\d+\\s+of\\s+GDPR",
		category: "privacy law depth",
		why: "Specific GDPR article citations — ISC Privacy Requirements territory.",
	},
	{
		term: "CCPA section",
		pattern: "CCPA\\s+(?:Section|§)\\s*\\d+|Section\\s*\\d+\\s+of\\s+CCPA",
		category: "privacy law depth",
		why: "Specific CCPA section citations — ISC Privacy Requirements territory.",
	},

	// --- PCI DSS / HIPAA at compliance-mechanics depth ---
	{
		term: "PCI DSS requirement",
		pattern: "PCI\\s+DSS\\s+Requirement\\s+\\d+|Requirement\\s+\\d+\\s+of\\s+PCI\\s+DSS",
		category: "compliance depth",
		why: "PCI DSS specific-requirement depth — ISC Privacy or Security Controls territory.",
	},
	{
		term: "HIPAA Security Rule",
		pattern: "HIPAA\\s+Security\\s+Rule\\b|§\\s*164\\.30\\d",
		category: "compliance depth",
		why: "HIPAA Security Rule specific provisions — ISC Privacy Requirements territory.",
	},
];
