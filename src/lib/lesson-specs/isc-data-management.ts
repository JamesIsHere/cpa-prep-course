import type { LessonSpec } from "./types";

// ISC Area I, Group B — Data management. Covers data governance, data
// lifecycle management, data quality, and the role of data management in
// supporting reliable financial reporting. DB topic: "Data Management and
// Lifecycle" (86 Qs). Also absorbs "System Availability and Change
// Management" (86 Qs) and "Change Management" (85 Qs) questions that
// relate to data lifecycle aspects — though those topics have stronger
// ties to ISC/II/A frameworks, the data-centric questions route here.

export const spec: LessonSpec = {
	topic: "Data Management and Lifecycle",
	section: "isc",
	primaryRef: "ISC/I/B",
	secondaryRefs: [],

	inScope: [
		"Data governance fundamentals: data ownership, data stewardship, data classification (public, internal, confidential, restricted), and the organizational structures that assign accountability for data quality and security",
		"Data lifecycle management: creation/collection, storage, use/processing, sharing/transmission, archival, and destruction/disposal — with emphasis on controls at each stage that ensure data integrity, confidentiality, and availability",
		"Data quality dimensions relevant to financial reporting: accuracy, completeness, timeliness, validity, consistency, and uniqueness — and how data quality issues propagate through accounting systems to affect financial statement reliability",
		"Data retention and destruction policies: regulatory retention requirements (tax records, SEC filings, SOX document preservation), retention schedules, secure destruction methods (logical wiping, degaussing, physical destruction), and litigation hold obligations",
		"Database integrity controls: input validation, referential integrity constraints, check digits, hash totals, control totals, record counts, and reconciliation procedures that ensure data remains accurate and complete through processing",
		"Data backup strategies: full, incremental, and differential backups; backup frequency and retention; offsite/cloud backup; backup testing and verification; and the relationship between backup strategy and recovery point objectives (RPO)",
		"Business continuity and disaster recovery at the data management level: recovery time objectives (RTO), recovery point objectives (RPO), failover mechanisms, data replication, and the testing of disaster recovery plans",
		"Data migration controls: planning, mapping, validation, reconciliation, and post-migration testing when data moves between systems (e.g., ERP upgrades, system conversions, cloud migrations)",
		"Extract, Transform, Load (ETL) processes at the conceptual level: how data moves between systems, transformation rules, reconciliation between source and target, and the audit implications of ETL for financial data integrity",
		"Master data management: centralized vs distributed master data, golden record concepts, the risk of duplicate or inconsistent master data across modules (customer, vendor, chart of accounts), and the impact on financial reporting",
		"Data warehousing and analytics at the conceptual level: the distinction between operational (OLTP) and analytical (OLAP) systems, data marts, and the control considerations when financial reports are generated from analytical rather than source systems",
	],

	outOfScope: [
		"Database administration at DBA depth — SQL query optimization, indexing strategies, database normalization beyond conceptual understanding of 1NF/2NF/3NF, stored procedure programming, replication architecture configuration",
		"Big data technologies at engineering depth — Hadoop cluster configuration, Spark processing pipelines, NoSQL database internals (MongoDB, Cassandra), data lake architecture design",
		"Machine learning and artificial intelligence data pipelines — model training data preparation, feature engineering, bias detection, model validation at technical depth",
		"Specific cloud storage platform configuration — AWS S3 bucket policies, Azure Blob Storage tiers, Google Cloud Storage lifecycle rules",
		"Cryptographic implementation for data protection — encryption algorithm selection, key management systems, tokenization platform configuration (belongs to ISC/II/C)",
		"Privacy regulation compliance mechanics — GDPR data subject rights implementation, CCPA consumer request processing, privacy impact assessment methodology (belongs to ISC/II/C)",
		"SOC reporting on data management controls — how data controls are presented and tested in SOC 1/SOC 2 engagements (belongs to ISC/III/A and ISC/III/B)",
	],

	keyStandards: [
		"COSO Internal Control — Integrated Framework (2013) — information and communication component, particularly the quality of information used in internal control",
		"COBIT — data governance and management process areas at the awareness level",
		"AICPA AU-C 315 — understanding IT-dependent controls over data processing",
		"SOX Section 802 — document and record retention requirements",
		"IRS record retention requirements — general awareness of federal tax record retention periods",
	],

	commonMisconceptions: [
		"Believing data governance is purely an IT function. Data governance requires business ownership — accounting and finance personnel define data quality requirements, classification rules, and retention policies. IT implements and enforces them, but accountability sits with the data owners (typically business process owners).",
		"Thinking backup equals disaster recovery. Backup addresses data preservation (having a copy); disaster recovery addresses the plan and infrastructure for restoring operations (RTO, failover, alternate processing). A backup without a tested recovery plan provides false assurance.",
		"Assuming data destruction is as simple as deleting files. Regulatory retention requirements, litigation holds, and data residency rules constrain when and how data can be destroyed. Premature destruction of financial records can violate SOX, SEC, or IRS requirements; incomplete destruction (failing to wipe backup media) can create confidentiality and privacy risks.",
		"Conflating data migration with a routine system update. Data migration between systems (especially ERP conversions) requires formal controls — mapping, validation, reconciliation, parallel running — because errors in migration directly affect opening balances, master data integrity, and ongoing transaction processing in the new system.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		{
			term: "Hadoop",
			pattern: "\\bHadoop\\b",
			category: "big data engineering",
			why: "Hadoop cluster administration is engineering depth, not CPA exam content.",
		},
		{
			term: "Spark",
			pattern: "\\bApache\\s+Spark\\b|\\bSpark\\s+(?:cluster|job|pipeline)\\b",
			category: "big data engineering",
			why: "Apache Spark pipeline configuration is engineering depth.",
		},
		{
			term: "MongoDB",
			pattern: "\\bMongoDB\\b",
			category: "vendor-specific",
			why: "Specific NoSQL database platform, not testable.",
		},
	],

	notes:
		"ISC/I/B is a relatively compact group (6 task-specs) but covers a broad conceptual area. The DB topic 'Data Management and Lifecycle' (86 Qs) is the primary match. Questions on backup, DR, and change management that are data-centric route here; those that are framework/governance-centric route to ISC/II/A.",
};
