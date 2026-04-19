import type { LessonSpec } from "./types";

// ISC Area I, Group A — Information systems. Covers the IT infrastructure
// and architecture that underpins accounting information systems, including
// hardware components, operating systems, network architecture, database
// management systems, ERP platforms, IT general controls (ITGCs),
// system availability / contingency planning, and change management.
//
// Five DB topics route here: "IT Infrastructure and Architecture",
// "ERP and Accounting Information Systems", "IT General Controls",
// "System Availability and Change Management", and "Change Management".
// ISC/I/A has 4 AICPA topics covering each of these areas:
// topic 1 (IT infrastructure, 4 tasks), topic 2 (ERP/AIS, 5 tasks),
// topic 3 (Availability, 6 tasks), topic 4 (Change management, 8 tasks).
//
// Note 2026-04-19: "System Availability and Change Management" and
// "Change Management" were previously routed to II/A (Frameworks) where
// 100% of 171 questions were homeless because II/A tasks cover only
// framework-level concepts. Moved here to match AICPA's dedicated
// topics 3 and 4.
//
// Scope line: CPA-exam ISC depth — conceptual understanding of IT
// components, their roles in accounting systems, and how ITGCs (access
// controls, change management, operations, SDLC) support reliable
// financial reporting. NOT network engineering, hardware configuration,
// programming, or vendor-specific platform administration.

export const spec: LessonSpec = {
	topic: "IT Infrastructure and Architecture",
	topicAliases: [
		"ERP and Accounting Information Systems",
		"IT General Controls",
		"System Availability and Change Management",
		"Change Management",
	],
	section: "isc",
	primaryRef: "ISC/I/A",
	secondaryRefs: [],

	inScope: [
		"Key components of IT infrastructure: servers (physical and virtual), operating systems, network infrastructure (LAN, WAN, routers, switches, firewalls), end-user devices (workstations, laptops, mobile), and their roles in supporting accounting information systems",
		"Database management systems (DBMS) concepts: relational databases, tables/records/fields, SQL at a conceptual level, data integrity constraints, referential integrity, and the role of the DBMS in enforcing data quality for financial reporting",
		"Enterprise Resource Planning (ERP) systems: integrated modules (GL, AP, AR, inventory, HR/payroll, fixed assets), master data management, real-time posting, workflow automation, and the audit implications of ERP integration (single point of entry, automated controls, segregation of duties within the system)",
		"Accounting information systems (AIS) fundamentals: transaction processing cycles (revenue, expenditure, conversion, financing), input-process-output model, batch vs real-time processing, audit trail maintenance, and the distinction between manual and automated controls within the AIS",
		"IT general controls (ITGCs) as the foundation for application controls: the four ITGC domains — (1) access to programs and data, (2) program changes/change management, (3) program development/SDLC, (4) computer operations — and how weaknesses in ITGCs can undermine the reliability of application controls and financial data",
		"Access controls at the ITGC level: authentication (passwords, MFA, biometrics), authorization (role-based access control, principle of least privilege), user provisioning and deprovisioning, segregation of duties enforcement, privileged access management, and periodic access reviews",
		"Change management at the ITGC level: formal change request and approval process, segregation of duties between development and production environments, testing in non-production environments, code review, migration procedures, rollback capability, and emergency change handling",
		"Program development / systems development lifecycle (SDLC): phases (planning, analysis, design, development, testing, implementation, maintenance), the role of user acceptance testing (UAT), post-implementation review, and governance over the SDLC process",
		"Computer operations: job scheduling, backup and recovery procedures, incident management, batch processing controls, output distribution controls, and environmental controls (power, cooling, physical security of data centers)",
		"Cloud computing models at the conceptual level: IaaS, PaaS, SaaS; public, private, hybrid cloud; shared responsibility model (what the cloud provider controls vs what the entity controls); implications for ITGCs and audit evidence when services move to the cloud",
		"Virtualization concepts: virtual machines, hypervisors, containers at a conceptual level; the implications for logical access controls and segregation of environments",
		"Network security fundamentals: firewalls, intrusion detection/prevention systems (IDS/IPS), VPNs, network segmentation, DMZ architecture — at the conceptual level of understanding what each does and why it matters for control over financial data",
	],

	outOfScope: [
		"Network engineering at configuration depth — IP addressing schemes, subnet mask calculations, routing protocols (OSPF, BGP), switch port configuration, VLAN trunking — these are network administrator tasks, not CPA exam content",
		"Programming and software development mechanics — writing code in any language, algorithm design, data structures, object-oriented programming concepts beyond understanding that SDLC governs development",
		"Vendor-specific ERP administration — SAP transaction codes, Oracle EBS navigation, Microsoft Dynamics configuration. The exam tests ERP concepts, not platform-specific operations",
		"Database administration at DBA depth — query optimization, indexing strategies, database normalization beyond 3NF conceptual understanding, stored procedure programming, replication and clustering configurations",
		"Hardware specifications and procurement — CPU architecture, memory types, storage technologies (SSD vs HDD), server sizing and capacity planning",
		"Detailed cryptographic mechanics — AES/RSA algorithm internals, key exchange protocols, PKI certificate chain validation at technical depth (belongs to ISC/II/C Data Protection Technologies)",
		"SOC engagement mechanics — how ITGCs are tested and reported in a SOC 1 or SOC 2 engagement (belongs to ISC/III/A and ISC/III/B SOC topics)",
		"Specific security frameworks at depth — NIST CSF implementation tiers, ISO 27001 Annex A controls, COBIT process areas (belongs to ISC/II/A Regulations, Standards, Frameworks)",
	],

	keyStandards: [
		"COSO Internal Control — Integrated Framework (2013) — particularly the IT-dependent aspects of the five components (control environment, risk assessment, control activities, information and communication, monitoring)",
		"AICPA AU-C 315 — Understanding the Entity and Its Environment and Assessing the Risks of Material Misstatement (IT environment understanding requirements)",
		"PCAOB AS 2110 — Identifying and Assessing Risks of Material Misstatement (IT environment assessment)",
		"COBIT — referenced at the framework-awareness level (not implementation depth)",
		"ITIL — referenced at the framework-awareness level for IT service management concepts",
	],

	commonMisconceptions: [
		"Believing ITGCs and application controls are interchangeable. ITGCs are pervasive controls over the IT environment (access, change management, operations, SDLC) that support the reliable functioning of application controls. Application controls are specific to individual business processes (input validation, automated calculations, report generation). Weak ITGCs can undermine otherwise well-designed application controls.",
		"Thinking cloud computing eliminates the need for ITGCs. The shared responsibility model means the entity retains responsibility for controls over its data and access, even when infrastructure is managed by a cloud provider. The entity must understand and monitor the provider's controls (often via a SOC report) and implement its own controls for areas it manages.",
		"Conflating ERP implementation with ERP as an accounting system. An ERP system integrates business processes and provides real-time financial data, but the exam tests understanding of how ERP modules interact, how master data integrity affects financial reporting, and how access controls and segregation of duties work within an ERP — not ERP project management or implementation methodology.",
		"Assuming batch processing is obsolete. Many accounting systems still use batch processing for payroll, month-end close, bank reconciliations, and large-volume transaction posting. The distinction between batch and real-time processing affects audit timing, completeness testing, and the nature of controls over transaction processing.",
		"Treating access controls as purely an IT issue. Access controls enforce segregation of duties — a core accounting control objective. The exam tests the auditor's understanding of how role-based access, user provisioning, and privileged access management relate to the risk of unauthorized transactions and financial statement misstatement.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		{
			term: "subnet mask",
			pattern: "\\bsubnet\\s+mask\\b",
			category: "network engineering",
			why: "IP subnetting is network administrator depth, not CPA exam content.",
		},
		{
			term: "OSPF",
			pattern: "\\bOSPF\\b",
			category: "routing protocol",
			why: "Routing protocol configuration is network engineering depth.",
		},
		{
			term: "BGP",
			pattern: "\\bBGP\\b",
			category: "routing protocol",
			why: "Border Gateway Protocol is network engineering depth.",
		},
		{
			term: "SAP transaction code",
			pattern: "\\bSAP\\s+(?:transaction|t-code|tcode)\\b",
			category: "vendor-specific",
			why: "Vendor-specific ERP administration, not testable.",
		},
		{
			term: "Oracle EBS",
			pattern: "\\bOracle\\s+E-?Business\\s+Suite\\b|\\bOracle\\s+EBS\\b",
			category: "vendor-specific",
			why: "Vendor-specific ERP platform, not testable.",
		},
	],

	notes:
		"This is the broadest ISC lesson-spec, covering three DB topics (IT Infrastructure, ERP/AIS, and ITGCs) that the AICPA groups under ISC/I/A. The 23 task-specs under this group range from R&U (identify components) to Application (evaluate ITGC deficiencies). The scope line is conceptual understanding for the CPA candidate, not IT professional certification depth.",
};
