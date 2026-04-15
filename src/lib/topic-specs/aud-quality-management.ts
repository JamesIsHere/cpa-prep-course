import type { TopicSpec } from "./types";

// Thirty-eighth authored spec — twenty-first of Stage 3. Census v3
// rank #11: 38 questions, 3 flagged (7.9%) — all 3 on `SQMS 1`.
// Clean rightful-owner: every other spec pushes SQMS 1 here as QM
// territory. Authoring should whitelist all 3.

export const spec: TopicSpec = {
	topic: "Quality Management",
	section: "aud",
	blueprintRef: "AUD/I/G",

	inScope: [
		"The AICPA quality management framework effective for systems of quality management designed and implemented by December 15, 2025: Statement on Quality Management Standards (SQMS) No. 1 'A Firm's System of Quality Management,' SQMS No. 2 'Engagement Quality Reviews,' and AU-C 220 'Quality Management for an Engagement Conducted in Accordance With Generally Accepted Auditing Standards.' This framework replaced the older QC Section 10 quality control standards.",
		"SQMS 1 — firm-level system of quality management: a risk-based approach in which the firm identifies quality risks and designs responses to address them. The system has eight components: (1) the risk assessment process, (2) governance and leadership, (3) relevant ethical requirements, (4) acceptance and continuance of client relationships and specific engagements, (5) engagement performance, (6) resources, (7) information and communication, and (8) the monitoring and remediation process.",
		"The firm's risk assessment process under SQMS 1: identifying quality risks (conditions, events, circumstances, actions or inactions) that could adversely affect the firm's ability to achieve its quality objectives, and designing responses proportionate to those risks. The risk assessment process is the driver of the entire QM system.",
		"Governance and leadership component: the firm's leadership (the managing partner or equivalent) is ultimately responsible for the system of quality management. Leadership sets the tone, demonstrates commitment through actions, and allocates resources.",
		"Relevant ethical requirements component: the firm must establish policies to ensure compliance with applicable ethical requirements, including independence. This includes monitoring independence threats, managing confidentiality, and addressing conflicts of interest.",
		"Acceptance and continuance component: the firm must establish policies for deciding whether to accept new clients and continue existing relationships. Key factors include client integrity, the firm's ability to perform the engagement competently, and compliance with independence requirements.",
		"Engagement performance component: policies and procedures to ensure engagements are performed in accordance with professional standards and the firm's methodology. Includes supervision and review during the engagement, consultation on difficult matters, and engagement quality review (when required).",
		"Resources component: the firm must have adequate human, technological, and intellectual resources to perform quality engagements. Human resources include hiring, training, assignment, and evaluation. Intellectual resources include methodologies, templates, and technical libraries.",
		"Information and communication component: the firm's policies for obtaining, generating, using, and communicating information relevant to the system of quality management. Includes internal communication to personnel and external communication to regulators and other stakeholders.",
		"Monitoring and remediation process: ongoing evaluation of whether the QM system is operating effectively, and the remediation of any identified deficiencies. Monitoring includes engagement inspections, root cause analysis of deficiencies, and corrective actions.",
		"SQMS 2 — Engagement Quality Reviews (EQR): the standards for when an EQR is required and how it must be performed. Under SQMS 2, the firm must establish policies requiring EQR for certain engagements — the specific engagements are determined by the firm based on risk factors, but the EQR is a precondition to report release for covered engagements.",
		"The engagement quality reviewer: a qualified individual not on the engagement team who performs an objective evaluation of the significant judgments the engagement team made and the conclusions they reached. The reviewer must have sufficient and appropriate experience and authority.",
		"Timing of the EQR: must be COMPLETED BEFORE the auditor's report is released. The reviewer's work is documented in the engagement file.",
		"AU-C 220 engagement-level quality management: the engagement partner's responsibilities for quality on the specific engagement. The engagement partner takes responsibility for: overall quality, independence compliance, team competence, direction/supervision/review, consultation, engagement quality review (when applicable), documentation, and communication with governance.",
		"The relationship between SQMS 1 (firm-level) and AU-C 220 (engagement-level): SQMS 1 establishes the firm's overall QM system; AU-C 220 operationalizes the system at the individual engagement level. The engagement partner relies on the firm's SQMS 1 infrastructure while also taking engagement-specific responsibility.",
		"Documentation requirements: the firm must document its system of quality management sufficient to support consistent application. Engagement-level QM decisions (consultation outcomes, EQR completion, supervision evidence) must be documented in the engagement file.",
		"Consultation as a QM process: when the engagement team encounters difficult or contentious matters, the firm's QM system requires consultation with qualified individuals (within or outside the firm). Consultation outcomes must be documented and agreed with the consulted person.",
	],

	outOfScope: [
		"International Standard on Quality Management 1 (ISQM 1) at IFAC depth — the international equivalent of SQMS 1. IFAC standards are referenced as distinctions only",
		"ISA 220 at IFAC depth",
		"The older QC Section 10 framework — SQMS 1 replaced QC Section 10 for systems designed by December 15, 2025. Historical concept-level reference is fine; detailed QC 10 mechanics are not",
		"PCAOB quality control standards (QC Section 20 / 30 / 40 and similar PCAOB guidance) — PCAOB is tested as a distinction only",
		"PCAOB inspection findings (Part I vs Part II deficiencies) and PCAOB oversight of registered firms — separate regulatory oversight topic",
		"AICPA Peer Review Program at mechanics depth — peer review cycles, review types, reviewer selection, peer review reports. Separate oversight topic",
		"SEC auditor independence rules at regulatory depth — Regulation S-X Rule 2-01, the loan rule, audit partner rotation, cooling-off periods. Independence topic at depth",
		"AICPA Code of Professional Conduct at rule-by-rule depth — Ethics and Independence topic",
		"Engagement letter contents and acceptance at depth — Terms of Engagement topic",
		"Risk assessment at engagement level — Risk Assessment topic",
		"Misstatement evaluation, materiality, sampling at depth — other AUD topics",
		"Government audit quality management under GAGAS / Yellow Book — Government Auditing Standards topic",
	],

	keyStandards: [
		"SQMS No. 1 — A Firm's System of Quality Management",
		"SQMS No. 2 — Engagement Quality Reviews",
		"AU-C 220 — Quality Management for an Engagement Conducted in Accordance With GAAS",
		"AICPA Code of Professional Conduct (referenced for ethics and independence)",
	],

	commonMisconceptions: [
		"Thinking SQMS 1 applies only to large firms. SQMS 1 applies to ALL firms performing engagements under AICPA standards, regardless of size. Smaller firms implement the eight components in a less elaborate form but all components must be present and function.",
		"Believing the EQR can be completed after the auditor's report is released. The EQR must be COMPLETED BEFORE report release. It is a precondition, not a follow-up.",
		"Confusing SQMS 1 (firm-level) with AU-C 220 (engagement-level). Both apply simultaneously — the firm's SQMS 1 system provides the infrastructure, and AU-C 220 governs the engagement partner's quality responsibilities on the specific engagement.",
		"Thinking quality management is a substitute for professional skepticism. Professional skepticism is an individual auditor attribute — a questioning mind applied to evidence. Quality management is the firm-level and engagement-level system that supports the exercise of professional skepticism through appropriate policies, training, and oversight.",
		"Believing the EQR reviewer examines every working paper. The EQR focuses on the SIGNIFICANT judgments and conclusions — not a line-by-line review of all documentation. The reviewer uses judgment to identify high-risk areas requiring scrutiny.",
		"Treating SQMS 1 as a checklist. SQMS 1 is a risk-based framework — the firm identifies its specific quality risks and designs responses proportionate to those risks. Two firms of similar size may have meaningfully different SQMS 1 systems based on their different risk profiles.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		{
			term: "ISQM 1",
			pattern: "\\bISQM\\s*1\\b",
			category: "IFAC",
			why: "International Standard on Quality Management 1 — non-US.",
		},
		{
			term: "ISA 220",
			pattern: "\\bISA\\s*220\\b",
			category: "IFAC",
			why: "IFAC ISA 220 — non-US.",
		},
		{
			term: "QC Section 10",
			pattern: "QC\\s+Section\\s*10|\\bQC\\s*10\\b",
			category: "superseded standard",
			why: "Superseded by SQMS 1. Historical reference at concept level allowed.",
		},
		// Note: `peer review program` is NOT banned. AICPA Peer Review
		// is the oversight program that evaluates a firm's quality
		// management system, making it legitimately adjacent content
		// for QM questions. Detailed peer review mechanics (reviewer
		// selection, report format, cycles) remain outside-scope
		// editorially but are handled without banned-term enforcement.
		{
			term: "SOC 1 Type 2",
			pattern: "SOC\\s*1\\s+Type\\s*2|Type\\s*2\\s+SOC\\s*1",
			category: "SOC reliance",
			why: "ISC SOC cluster or Using the Work of Others.",
		},
		{
			term: "trust services criteria",
			pattern: "trust\\s+services\\s+criteria",
			category: "SOC territory",
			why: "ISC SOC cluster.",
		},
		{
			term: "AS 2201",
			pattern: "\\bAS\\s*2201\\b",
			category: "PCAOB depth",
			why: "PCAOB integrated audit — separate topic.",
		},
		{
			term: "component auditor",
			pattern: "component\\s+auditor",
			category: "group audit",
			why: "Using the Work of Others topic.",
		},
		{
			term: "loan rule",
			pattern: "\\bloan\\s+rule\\b.{0,30}SEC|SEC.{0,30}loan\\s+rule",
			category: "SEC independence",
			why: "SEC Reg. S-X Rule 2-01 loan rule — Independence topic.",
		},
		{
			term: "audit partner rotation",
			pattern: "audit\\s+partner\\s+rotation",
			category: "SEC independence",
			why: "SEC partner rotation — Independence topic.",
		},
	],

	notes:
		"Quality Management (AUD/I/G) owns SQMS 1 firm-level system (eight components), SQMS 2 engagement quality reviews, and AU-C 220 engagement-level quality management. Census v3 flagged 3/38 at 7.9% — all 3 on `SQMS 1`, which other specs push here as the rightful owner. Clean rightful-owner pattern. Out of scope: ISQM 1 / ISA 220 (IFAC), QC Section 10 (superseded), Peer Review Program mechanics, PCAOB quality control standards, SEC independence regulatory mechanics (Independence topic), AU-C 315/330/450/265/500 substantive AUD process topics.",
};
