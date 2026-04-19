import type { LessonSpec } from "./types";

// ISC Area II, Group C — Confidentiality and privacy. Covers privacy
// regulations, data protection principles, personally identifiable
// information (PII) handling, and the organizational controls and
// technologies that protect confidential information. DB topics:
// "Privacy Requirements and Data Protection" and "Data Protection
// Technologies".
//
// Note 2026-04-19: "Data Protection Technologies" was previously
// routed to II/B (Security) where 69/97 were homeless. II/C has an
// explicit DLP task + "Explain encryption fundamentals, techniques
// and applications" + "Identify methods for the protection of
// confidential data" + "Determine controls and data management
// practices to securely collect, process, store, transmit and delete
// confidential information" — DPL, media sanitization, and FPE
// questions all map here cleanly.
//
// Scope line: CPA-exam ISC depth — understanding privacy principles,
// major regulations at the awareness level (not article/section citations),
// the relationship between privacy and the SOC 2 Privacy and
// Confidentiality trust services criteria, and the organizational controls
// and technologies that implement privacy commitments. NOT privacy-law-
// practice depth or data protection officer (DPO) operational procedures.

export const spec: LessonSpec = {
	topic: "Privacy Requirements and Data Protection",
	topicAliases: [
		"Data Protection Technologies",
	],
	section: "isc",
	primaryRef: "ISC/II/C",
	secondaryRefs: [],

	inScope: [
		"Generally Accepted Privacy Principles (GAPP): the ten privacy principles (management, notice, choice and consent, collection, use/retention/disposal, access, disclosure to third parties, security for privacy, quality, monitoring and enforcement) and their relationship to the AICPA Trust Services Criteria Privacy category",
		"The SOC 2 Privacy trust services criteria: how the Privacy category extends beyond the Security common criteria, the additional criteria specific to personal information, and the relationship between Privacy criteria and GAPP",
		"The SOC 2 Confidentiality trust services criteria: the distinction between confidentiality (protecting information designated as confidential per agreements or policies) and privacy (protecting personal information of individuals), and how both categories layer on top of the Security common criteria",
		"Personally identifiable information (PII): definition, categories (direct identifiers like SSN/name/address vs quasi-identifiers that can identify in combination), and the heightened control requirements for PII in financial systems",
		"Major privacy regulations at the awareness level: GDPR (EU data protection regulation — key principles, data subject rights categories, lawful bases for processing, cross-border transfer mechanisms), CCPA/CPRA (California consumer privacy — consumer rights categories, business obligations, service provider distinctions), HIPAA Privacy Rule (protected health information, covered entities, business associates, minimum necessary standard), GLBA (financial institution privacy — privacy notices, opt-out rights, safeguards rule)",
		"Privacy by design and privacy by default: the concept of embedding privacy protections into system architecture and business processes from the outset, rather than retrofitting after deployment",
		"Data minimization and purpose limitation: collecting only the personal information necessary for the stated purpose, retaining it only as long as needed, and restricting use to the original purpose or compatible purposes",
		"Consent management: types of consent (opt-in, opt-out, implied), consent documentation and audit trail, withdrawal of consent, and the varying consent requirements across jurisdictions",
		"Cross-border data transfer mechanisms at the awareness level: adequacy decisions, standard contractual clauses (SCCs), binding corporate rules (BCRs), and the concept that international data transfers require legal bases — NOT the specific legal text of any mechanism",
		"Data subject/consumer rights at the awareness level: right to access, right to deletion/erasure, right to correction/rectification, right to data portability, right to opt out of sale/sharing — understanding that these exist and create organizational obligations without memorizing statute-specific procedures",
		"Privacy impact assessments (PIAs) / data protection impact assessments (DPIAs): the concept and purpose (identifying and mitigating privacy risks before processing begins), when they are required, and the role of the assessment in the privacy control environment",
		"Breach notification obligations at the awareness level: the concept that privacy breaches trigger notification requirements (to regulators, affected individuals, and sometimes the public), that notification timelines and content requirements vary by jurisdiction, and that organizations must have breach response procedures — NOT specific statute timelines or notification letter content",
		"De-identification, anonymization, and pseudonymization: the distinctions between these techniques, the concept that properly anonymized data is no longer personal information under most regulations, and the re-identification risk that limits the effectiveness of pseudonymization",
		"Third-party data sharing controls: vendor/processor agreements, data processing agreements (DPAs), subprocessor management, and the organization's responsibility for personal information shared with or processed by third parties",
		"Encryption and data protection technologies as they apply to privacy: encryption at rest and in transit for PII, access controls specific to personal information, data masking and tokenization for privacy protection — at the conceptual level (technical depth belongs to ISC/II/B)",
	],

	outOfScope: [
		"GDPR article-level citations — specific article numbers (Art. 5, Art. 6, Art. 13, Art. 17, Art. 25, Art. 35), recital references, European Data Protection Board (EDPB) guidance at operational depth",
		"CCPA/CPRA section-level citations — specific California Civil Code sections (1798.100-1798.199), Attorney General regulation specifics, enforcement action precedents",
		"HIPAA Security Rule technical safeguards at implementation depth — specific CFR sections (45 CFR 164.308, 164.310, 164.312), risk analysis methodology at OCR audit protocol depth (belongs to ISC/II/A for the framework perspective)",
		"Privacy program management at DPO operational depth — building a privacy office, privacy training program design, privacy audit procedures, vendor assessment questionnaires at template depth",
		"EU member state derogations and national data protection authority procedures — country-specific GDPR implementation variations, supervisory authority complaint procedures",
		"Children's privacy regulations at depth — COPPA compliance mechanics, age verification requirements, parental consent procedures",
		"Sector-specific privacy regulations beyond HIPAA and GLBA at depth — FERPA (education), FCRA (credit reporting), TCPA (telecommunications) compliance mechanics",
		"Cryptographic implementation for privacy — specific encryption algorithms, key management systems, tokenization platform selection (belongs to ISC/II/B security topics)",
		"SOC 2 Privacy category testing procedures — how privacy controls are tested and reported in a SOC 2 engagement (belongs to ISC/III/A and ISC/III/B SOC topics)",
	],

	keyStandards: [
		"AICPA Generally Accepted Privacy Principles (GAPP)",
		"AICPA Trust Services Criteria — Privacy category",
		"AICPA Trust Services Criteria — Confidentiality category",
		"GDPR — General Data Protection Regulation (EU) at the awareness level",
		"CCPA/CPRA — California Consumer Privacy Act / California Privacy Rights Act at the awareness level",
		"HIPAA Privacy Rule — 45 CFR Part 164 Subpart E at the awareness level",
		"GLBA — Gramm-Leach-Bliley Act privacy and safeguards provisions",
		"NIST Privacy Framework — at the awareness level",
	],

	commonMisconceptions: [
		"Confusing confidentiality with privacy. Confidentiality protects information that an organization designates as confidential (trade secrets, proprietary data, NDA-protected information). Privacy specifically protects PERSONAL INFORMATION of identifiable individuals. The SOC 2 framework treats them as separate trust services criteria categories — a SOC 2 can include Confidentiality, Privacy, both, or neither (beyond the mandatory Security common criteria).",
		"Believing GDPR applies only to EU-based companies. GDPR applies to any organization that processes personal data of individuals in the EU, regardless of where the organization is located. A US-based CPA firm with EU clients may be subject to GDPR.",
		"Thinking anonymization and pseudonymization are equivalent. Anonymized data cannot be re-identified and is generally outside the scope of privacy regulations. Pseudonymized data (where direct identifiers are replaced with tokens or codes) CAN be re-identified with the key and remains personal information subject to regulation. The distinction matters for compliance obligations.",
		"Assuming consent is always required for data processing. Under GDPR, consent is only one of six lawful bases for processing (along with contract necessity, legal obligation, vital interests, public task, and legitimate interests). Under CCPA/CPRA, the framework is primarily notice-and-opt-out rather than consent-based. Different regulations use different models.",
		"Treating breach notification as a one-size-fits-all requirement. Notification timelines, content, recipients, and thresholds vary significantly across jurisdictions. GDPR requires supervisory authority notification within 72 hours of becoming aware; US state laws have varying timelines and triggers. Organizations must map their notification obligations by jurisdiction.",
		"Believing encryption alone satisfies privacy requirements. Encryption protects data in storage and transit but does not address collection limitation, purpose limitation, data minimization, access rights, consent management, or third-party sharing controls. Privacy compliance requires organizational and procedural controls beyond encryption.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		{
			term: "GDPR Article",
			pattern: "GDPR\\s+Article\\s+\\d+|Article\\s+\\d+\\s+of\\s+(?:the\\s+)?GDPR",
			category: "privacy law depth",
			why: "Specific GDPR article citations are regulatory-practice depth, not CPA exam content.",
		},
		{
			term: "CCPA section",
			pattern: "CCPA\\s+(?:Section|§)\\s*\\d+|Section\\s*\\d+\\s+of\\s+(?:the\\s+)?CCPA|Cal\\.\\s*Civ\\.\\s*Code\\s*§\\s*1798",
			category: "privacy law depth",
			why: "Specific CCPA/Cal. Civil Code section citations are regulatory-practice depth.",
		},
		{
			term: "45 CFR 164",
			pattern: "45\\s+CFR\\s+(?:§\\s*)?164\\.\\d{3}",
			category: "HIPAA regulation depth",
			why: "Specific CFR section citations for HIPAA are regulatory-practice depth.",
		},
		{
			term: "COPPA",
			pattern: "\\bCOPPA\\b",
			category: "children's privacy",
			why: "Children's Online Privacy Protection Act is outside ISC exam scope.",
		},
		{
			term: "FERPA",
			pattern: "\\bFERPA\\b",
			category: "sector privacy",
			why: "Family Educational Rights and Privacy Act is outside ISC exam scope.",
		},
	],

	notes:
		"ISC/II/C covers 8 task-specs and maps to the single DB topic 'Privacy Requirements and Data Protection' (95 Qs). The scope line is awareness-and-application: candidates should understand privacy principles, major regulation structures, and how privacy controls fit into the IT control environment — not practice law. Heavy overlap with SOC 2 Privacy/Confidentiality criteria creates a natural boundary with the ISC/III SOC specs.",
};
