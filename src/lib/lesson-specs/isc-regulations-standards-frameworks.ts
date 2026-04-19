import type { LessonSpec } from "./types";

// ISC Area II, Group A — Regulations, standards, and frameworks applicable
// to information systems. Covers the landscape of IT governance and audit
// frameworks, security standards, and regulatory requirements that CPAs
// need to understand at the awareness-and-application level. DB topics:
// "Security and Control Frameworks" and "IT Audit Frameworks".
//
// Note 2026-04-19: "System Availability and Change Management" and
// "Change Management" were previously aliased here but moved to
// `isc-information-systems.ts` at ISC/I/A after a homeless audit found
// 100% of those questions (171) were homeless at II/A. ISC/I/A has
// dedicated topics for Availability (topic 3, 6 tasks) and Change
// management (topic 4, 8 tasks); II/A tasks cover only framework-level
// concepts that don't match NIST SP 800-34 RPO/backup content or ITIL
// change management operational practices.

export const spec: LessonSpec = {
	topic: "Security and Control Frameworks",
	topicAliases: [
		"IT Audit Frameworks",
	],
	section: "isc",
	primaryRef: "ISC/II/A",
	secondaryRefs: [],

	inScope: [
		"COSO Internal Control — Integrated Framework (2013): the five components (control environment, risk assessment, control activities, information and communication, monitoring activities) and 17 principles; application to IT-dependent controls; the relationship between COSO and SOC 2 Trust Services Criteria common criteria",
		"COBIT framework at the awareness level: purpose (IT governance and management framework linking IT goals to business goals), the distinction between governance and management, the process reference model structure, and how COBIT maps to COSO for IT controls — NOT implementation-level process assessment or capability maturity scoring",
		"NIST Cybersecurity Framework (CSF): the five core functions (Identify, Protect, Detect, Respond, Recover), the concept of framework profiles and implementation tiers at a high level, and how organizations use the CSF to assess and communicate cybersecurity risk posture",
		"NIST SP 800-53 at the awareness level: the catalog of security and privacy controls organized by control families, the concept of control baselines (low, moderate, high impact), and the use of SP 800-53 in federal information systems under FISMA — NOT individual control implementation details",
		"ISO 27001/27002 at the awareness level: the information security management system (ISMS) approach, the Plan-Do-Check-Act cycle, Annex A control domains (organizational, people, physical, technological), and ISO 27001 certification — NOT clause-by-clause implementation",
		"ITIL at the awareness level: IT service management concepts, the service lifecycle (strategy, design, transition, operation, improvement), incident management, problem management, change management, and service level management — NOT ITIL certification depth or process workflow mechanics",
		"SOX IT compliance requirements: Section 302 (CEO/CFO certification) and Section 404 (management assessment and auditor attestation of ICFR) as they relate to IT controls; how ITGCs support SOX compliance; the concept of key reports and automated controls that must be tested",
		"FISMA (Federal Information Security Management Act/Modernization Act): the requirement for federal agencies to implement information security programs, the role of NIST standards, the authority of agency heads and CISOs, and the FedRAMP program for cloud service provider authorization",
		"PCI DSS at the awareness level: the purpose (protecting cardholder data), the twelve high-level requirements, the scope (entities that store/process/transmit cardholder data), compliance validation levels — NOT specific sub-requirement implementation",
		"HIPAA Security Rule at the awareness level: administrative, physical, and technical safeguards; the distinction between required and addressable implementation specifications; applicability to covered entities and business associates — NOT specific regulation section citations",
		"The relationship between frameworks: how COSO, COBIT, NIST CSF, and ISO 27001 complement rather than compete — COSO provides the internal control foundation, COBIT maps IT processes to COSO objectives, NIST CSF provides cybersecurity risk management structure, ISO 27001 provides a certifiable ISMS",
		"IT audit and assurance standards: ISACA's ITAF (IT Assurance Framework) at the awareness level, the concept of IT audit methodology, and the role of IT audit in supporting the financial statement audit",
		"Change management as a governance process: the relationship between change management policies, ITGC requirements, and frameworks like ITIL and COBIT that formalize change management practices; change advisory boards (CABs), change classification (standard, normal, emergency), and post-implementation review",
		"System availability management: service level agreements (SLAs), availability metrics (uptime percentage, mean time to repair), the relationship between availability commitments and the SOC 2 Availability trust services criterion, and business continuity planning as a framework-driven activity",
	],

	outOfScope: [
		"COBIT process assessment at implementation depth — capability maturity model scoring, process capability levels, detailed governance and management practice descriptions per process",
		"NIST SP 800-53 individual control implementation — specific control descriptions (AC-2, IA-5, AU-6, etc.), security control assessment procedures, system security plan documentation",
		"ISO 27001 Annex A control implementation — specific control objectives and controls at the clause/sub-clause level, Statement of Applicability documentation, internal audit procedures for ISMS certification",
		"ITIL certification depth — detailed process workflows for incident management, problem management root cause analysis techniques, CMDB configuration, ITIL 4 practices and value streams",
		"PCI DSS sub-requirement implementation — specific technical requirements (e.g., Requirement 3.4 render PAN unreadable, Requirement 8.3 MFA implementation), PCI audit procedures, compensating controls documentation",
		"HIPAA Security Rule section citations — specific CFR sections (45 CFR 164.308, 164.310, 164.312), audit protocol procedures, breach notification timeline mechanics",
		"GDPR article-level compliance — specific articles (Art. 5 processing principles, Art. 17 right to erasure, Art. 25 data protection by design), Data Protection Impact Assessments at procedural depth (belongs to ISC/II/C)",
		"SOC engagement mechanics — how frameworks are applied within SOC 1/SOC 2 engagements, trust services criteria testing methodology (belongs to ISC/III/A and ISC/III/B)",
		"Deep cryptographic standards — FIPS 140-2/3 validation levels, algorithm-specific implementation, key management framework mechanics (belongs to ISC/II/B/II/C security and privacy topics)",
		"ISACA CISA certification content — specific CISA domains, audit methodology at CISA depth, IS audit standards and guidelines at procedural depth",
	],

	keyStandards: [
		"COSO Internal Control — Integrated Framework (2013)",
		"COBIT 2019 — IT governance and management framework",
		"NIST Cybersecurity Framework (CSF)",
		"NIST SP 800-53 — Security and Privacy Controls for Information Systems and Organizations",
		"ISO 27001 — Information Security Management Systems",
		"ISO 27002 — Code of Practice for Information Security Controls",
		"ITIL — IT Service Management framework",
		"SOX Sections 302 and 404 — IT compliance requirements",
		"FISMA — Federal Information Security Modernization Act",
		"PCI DSS — Payment Card Industry Data Security Standard",
		"HIPAA Security Rule — 45 CFR Part 164 Subpart C",
	],

	commonMisconceptions: [
		"Believing COSO and COBIT are competing frameworks. COSO provides the foundational internal control framework; COBIT maps IT governance and management processes to COSO's five components. They are complementary — many organizations use COSO as the control framework and COBIT to structure IT-specific governance.",
		"Thinking NIST CSF is mandatory for all organizations. NIST CSF is mandatory only for federal agencies (via executive order); private-sector organizations adopt it voluntarily as a risk management communication tool. NIST SP 800-53 controls are mandatory for federal information systems under FISMA.",
		"Confusing ISO 27001 certification with ISO 27002 compliance. ISO 27001 is the certifiable standard that specifies ISMS requirements; ISO 27002 is guidance on implementing the controls listed in ISO 27001 Annex A. An organization certifies to 27001, not to 27002.",
		"Treating PCI DSS as a general security framework. PCI DSS applies specifically to entities that store, process, or transmit cardholder data. Its scope is limited to the cardholder data environment (CDE). Organizations outside the payment card ecosystem are not subject to PCI DSS.",
		"Assuming all change management is the same. ITIL change management (managing IT service changes), COBIT change governance (aligning changes to business objectives), and ITGC change management (controlling program changes for audit purposes) address different perspectives on the same operational activity. The CPA exam tests the ITGC and governance perspectives.",
		"Believing SOX Section 404 applies only to manual controls. Section 404 requires assessment of ICFR, which includes IT controls that support financial reporting — ITGCs, automated application controls, key reports, and the IT infrastructure that processes financial transactions.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		{
			term: "CISA domain",
			pattern: "CISA\\s+(?:Domain|domain)\\s+\\d",
			category: "IT certification",
			why: "CISA certification domain content is professional certification depth, not CPA exam content.",
		},
		{
			term: "NIST control ID",
			pattern: "\\b(?:AC|AT|AU|CA|CM|CP|IA|IR|MA|MP|PE|PL|PM|PS|PT|RA|SA|SC|SI|SR)-\\d+",
			category: "NIST implementation",
			why: "Specific NIST SP 800-53 control identifiers are implementation depth.",
		},
		{
			term: "ISO 27001 clause",
			pattern: "\\bclause\\s+(?:4|5|6|7|8|9|10)\\.\\d",
			category: "ISO implementation",
			why: "Specific ISO 27001 clause references are implementation depth.",
		},
	],

	notes:
		"ISC/II/A is the frameworks hub — it covers the landscape of IT governance and security standards that CPAs encounter. The exam tests awareness and application (identify which framework applies, compare frameworks, understand how they support audit objectives), not implementation or certification depth. Four DB topics route here: Security and Control Frameworks, IT Audit Frameworks, System Availability and Change Management, and Change Management.",
};
