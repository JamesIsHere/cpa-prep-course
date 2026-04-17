import type { LessonSpec } from "./types";

// Thirty-ninth authored spec — twenty-second of Stage 3. Census v3
// rank #10: 38 questions, 3 flagged (7.9%) on `AS 2201` (2),
// `component auditor` (1). Small drift tail.

export const spec: LessonSpec = {
	topic: "Audit Reports",
	section: "aud",
	blueprintRef: "AUD/IV/A",

	inScope: [
		"The standard unmodified (clean) auditor's opinion under AU-C 700: the basic opinion expressing that the financial statements are presented fairly, in all material respects, in accordance with the applicable financial reporting framework. The standard report includes specific sections — opinion, basis for opinion, responsibilities of management for the financial statements, auditor's responsibilities for the audit, and other reporting responsibilities if applicable.",
		"The required sections of the standard AU-C 700 auditor's report (in order): title (Independent Auditor's Report), addressee, opinion section (the opinion itself is stated FIRST), basis for opinion, key audit matters (if applicable), responsibilities of management, auditor's responsibilities for the audit, signature of the firm, city and state, and date of the auditor's report.",
		"The opinion section contents: identifies the entity, the financial statements audited (balance sheet, income statement, statement of changes in equity, cash flows, and notes), the dates or periods covered, and the conclusion (whether the financial statements present fairly in accordance with the framework). For most private companies, the framework is US GAAP.",
		"Modifications to the opinion under AU-C 705: the three categories are QUALIFIED (the auditor encountered a material misstatement that is not pervasive OR was unable to obtain sufficient appropriate evidence about one matter that is not pervasive), ADVERSE (a material misstatement that IS pervasive), and DISCLAIMER (unable to obtain sufficient appropriate evidence and the possible effects could be both material AND pervasive).",
		"The decision framework for modification type: if the auditor determines a material misstatement exists, the issue is between qualified and adverse. Qualified means the misstatement is material but not pervasive. Adverse means the misstatement is pervasive — fundamental to the financial statements taken as a whole. If the auditor is unable to obtain sufficient appropriate evidence (scope limitation), the issue is between qualified and disclaimer. Qualified means the effect on the financial statements is not pervasive. Disclaimer means the possible effects could be both material and pervasive.",
		"Pervasiveness as the dividing line: pervasive effects are those that (1) are not confined to specific elements of the financial statements, (2) if confined, represent or could represent a substantial portion of the financial statements, or (3) in relation to disclosures, are fundamental to users' understanding of the financial statements.",
		"Scope limitations — management-imposed vs circumstance-imposed: a management-imposed scope limitation (management refuses to allow a procedure) is a serious matter because it raises concerns about management's integrity. A circumstance-imposed limitation (records lost in a disaster, inventory observation impossible because the client took inventory before the auditor was engaged) may be addressable with alternative procedures. If alternative procedures provide sufficient evidence, no modification is needed. If not, the scope limitation becomes a reason for qualified or disclaimer.",
		"Emphasis-of-Matter paragraph under AU-C 706: a paragraph added to the auditor's report to draw users' attention to a matter that is appropriately presented or disclosed in the financial statements and is fundamental to users' understanding. Examples include a going concern uncertainty (with the matter properly disclosed), a subsequent event, a change in accounting principle, or an inconsistency. The paragraph does NOT modify the opinion — the opinion remains unmodified.",
		"Other-Matter paragraph under AU-C 706: a paragraph added to communicate a matter other than those presented or disclosed in the financial statements that is relevant to users' understanding of the audit, the auditor's responsibilities, or the auditor's report. Examples include restriction on distribution of the report, reference to a predecessor auditor, supplementary information, or reference to required supplementary information.",
		"Going concern reporting under AU-C 570: when the auditor concludes substantial doubt exists about the entity's ability to continue as a going concern for a reasonable period of time (one year from the date the financial statements are issued) and the doubt is ALLEVIATED by management's plans, an emphasis-of-matter paragraph is added. When doubt is NOT alleviated and management's plans are insufficient, the disclosure is evaluated for adequacy and the auditor may issue an unmodified or qualified opinion depending on disclosure adequacy.",
		"Inadequate going concern disclosure: if management's going concern disclosure is inadequate (missing or incomplete), the auditor modifies the opinion for the GAAP departure — typically qualified or adverse depending on pervasiveness.",
		"Dating the auditor's report: the report is dated no earlier than the date the auditor has obtained sufficient appropriate evidence to support the opinion, including evidence that (1) the audit documentation has been reviewed, (2) the financial statements and related notes have been prepared, and (3) management has taken responsibility for the financial statements. This is typically the date of the last significant audit procedure or the engagement partner's final review.",
		"Subsequent events between the report date and the issuance of the report: if a subsequent event comes to the auditor's attention after the report date but before issuance, the auditor must address it. Options include dual-dating the report (using the original report date except for a specific subsequent event, which is dated later) or extending the entire report date to cover the subsequent event date.",
		"Comparative financial statements and reporting: when comparative financial statements are presented, the auditor's report addresses both periods. The opinion may be the same for both periods or different. If the prior year was audited by a predecessor, the successor's report may reference the predecessor's report (with a specific format under AU-C 700) or may be reissued by the predecessor.",
		"Group audits and the reference-to-other-auditor alternative under AU-C 600: when a component of the group was audited by another auditor, the group engagement partner may either take responsibility for the component auditor's work (assumption of responsibility) or make reference to the component auditor in the group audit report (divided responsibility). Reference to the component auditor is a specific reporting presentation with named identification of the other auditor's work. The detailed decision framework between assumption and reference is in the Using the Work of Others topic; this spec covers only the REPORTING presentation when the reference alternative is chosen.",
		"Reports on a single financial statement or specific element under AU-C 805: the auditor may be engaged to report on a single financial statement (e.g., balance sheet only) or a specific element, account, or item. The report is tailored to the scope and identifies the reporting framework applicable to the specific presentation.",
		"Reports on special purpose frameworks under AU-C 800: cash basis, tax basis, regulatory basis, contractual basis, and other special purpose frameworks. The report describes the framework, notes that it is not a general-purpose framework, and restricts distribution if appropriate.",
		"Key Audit Matters (KAMs) under AU-C 701: matters that, in the auditor's professional judgment, were of most significance in the audit. KAMs are required in the auditor's report for audits of public entities (primarily SEC filers) and optional for other entities. The KAM section describes each matter, why it was significant, and how the audit addressed it.",
	],

	outOfScope: [
		"PCAOB integrated audit of internal control over financial reporting under AS 2201 — the separate auditor's report on ICFR, material weakness reporting in the ICFR opinion, the combined vs separate report format. Separate integrated audit topic (or PCAOB testing distinction)",
		"PCAOB Critical Audit Matters (CAMs) at full PCAOB depth — AUD 3101 reporting standard. CAMs are mentioned at concept level when comparing with AU-C 701 KAMs; the PCAOB mechanics at depth are separate",
		"Review and compilation reports — AR-C 60 / 70 / 80 / 90 reporting formats. Review and Compilation topic",
		"Attestation engagement reports under AT-C 105 / 205 / 210 — Attestation Engagements topic",
		"Government audit reports under Yellow Book and Single Audit under Uniform Guidance — Government Auditing Standards topic",
		"AU-C 800 / 805 / 810 detailed report formats — these are in scope at concept level; the specific report templates are handled at depth in Nature and Scope of Engagements / special purpose framework territory",
		"Communication with those charged with governance about audit matters — AU-C 260 governance communication at depth. Separate communication topic",
		"Communication of internal control matters under AU-C 265 — Misstatements and Control Deficiencies topic",
		"Subsequent events identification procedures at depth — Risk Assessment or Audit Evidence topics. This spec covers the REPORTING implications of subsequent events; the identification procedures are separate",
		"Going concern evaluation procedures under AU-C 570 at depth — management's plans evaluation, substantial doubt determination, mitigating factors analysis. Separate going concern topic or Risk Assessment. This spec covers the REPORTING implications (emphasis paragraph vs modified opinion) at concept level",
		"Using the Work of Others group audit decision framework — the choice between assumption of responsibility and reference to component auditor, component auditor evaluation. Using the Work of Others topic",
		"IFRS reporting framework differences — the auditor's report under IFRS follows similar principles but with IFRS-specific wording",
		"IFAC ISA 700 / 705 / 706 / 701 at IFAC depth — non-US standards",
	],

	keyStandards: [
		"AU-C 700 — Forming an Opinion and Reporting on Financial Statements",
		"AU-C 701 — Communicating Key Audit Matters in the Independent Auditor's Report",
		"AU-C 705 — Modifications to the Opinion in the Independent Auditor's Report",
		"AU-C 706 — Emphasis-of-Matter Paragraphs and Other-Matter Paragraphs",
		"AU-C 800 — Special Considerations — Audits of Financial Statements Prepared in Accordance With Special Purpose Frameworks",
		"AU-C 805 — Special Considerations — Audits of Single Financial Statements and Specific Elements, Accounts, or Items",
		"AU-C 810 — Engagements to Report on Summary Financial Statements",
		"AU-C 570 — The Auditor's Consideration of an Entity's Ability to Continue as a Going Concern (referenced for reporting implications)",
	],

	commonMisconceptions: [
		"Confusing a qualified opinion with an adverse opinion. A qualified opinion means a material misstatement or scope limitation that is NOT PERVASIVE — the financial statements are presented fairly EXCEPT FOR the specific matter. An adverse opinion means the misstatement IS PERVASIVE and the financial statements are NOT presented fairly.",
		"Thinking a disclaimer is issued for a material misstatement. A disclaimer is issued only for SCOPE LIMITATIONS — when the auditor could not obtain sufficient appropriate evidence and the possible effects could be both material AND pervasive. A material misstatement is addressed with qualified or adverse, not disclaimer.",
		"Believing an emphasis-of-matter paragraph modifies the opinion. An emphasis paragraph does NOT modify the opinion — the opinion remains unmodified (clean). The emphasis paragraph merely draws users' attention to a matter that is appropriately disclosed in the financial statements.",
		"Confusing emphasis-of-matter with other-matter. Emphasis-of-matter addresses a matter PRESENTED OR DISCLOSED in the financial statements. Other-matter addresses a matter NOT in the financial statements but relevant to users' understanding of the audit or the auditor's report (e.g., restricted distribution, predecessor auditor reference).",
		"Thinking going concern doubt always requires a modified opinion. When substantial doubt is properly disclosed and management's plans have mitigated or addressed the doubt, the auditor issues an unmodified opinion with an emphasis-of-matter paragraph. Only when disclosure is inadequate or management's plans are insufficient does the opinion itself become modified.",
		"Believing KAMs are required in all audits. KAMs under AU-C 701 are required for audits of public entities (primarily SEC filers) and OPTIONAL for private company audits under AU-C 700. Private company audits may include KAMs if the auditor and entity agree.",
		"Thinking the report date is the balance sheet date. The auditor's report date is the date the auditor obtained sufficient appropriate evidence — typically well after the balance sheet date, after fieldwork completion and final review. The report date is NOT the balance sheet date.",
	],

	representativeDifficulty: "mixed",

	bannedTerms: [
		{
			term: "AS 2201",
			pattern: "\\bAS\\s*2201\\b",
			category: "PCAOB depth",
			why: "PCAOB integrated audit of ICFR — separate integrated audit topic.",
		},
		// Note: `AS 3101` (CAMs) and `component auditor` are NOT banned.
		// Audit Reports covers CAMs at concept level (including PCAOB
		// CAM vs AU-C 701 KAM distinction) and the reporting presentation
		// for group audits when reference alternative is chosen — both
		// legitimately use these terms. Deeper PCAOB AS 3101 mechanics
		// and component auditor decision framework remain outside-scope
		// editorially.
		{
			term: "SOC 1 Type 2",
			pattern: "SOC\\s*1\\s+Type\\s*2|Type\\s*2\\s+SOC\\s*1",
			category: "SOC reliance",
			why: "Using the Work of Others or ISC SOC cluster.",
		},
		{
			term: "SQMS 1",
			pattern: "\\bSQMS\\s*1\\b",
			category: "quality management",
			why: "Quality Management topic.",
		},
		{
			term: "ISA 700",
			pattern: "\\bISA\\s*700\\b",
			category: "IFAC",
			why: "IFAC ISA 700 — non-US.",
		},
		{
			term: "ISA 705",
			pattern: "\\bISA\\s*705\\b",
			category: "IFAC",
			why: "IFAC ISA 705 — non-US.",
		},
		{
			term: "ISA 706",
			pattern: "\\bISA\\s*706\\b",
			category: "IFAC",
			why: "IFAC ISA 706 — non-US.",
		},
		{
			term: "ISA 701",
			pattern: "\\bISA\\s*701\\b",
			category: "IFAC",
			why: "IFAC ISA 701 — non-US.",
		},
		{
			term: "tolerable misstatement",
			pattern: "tolerable\\s+misstatement",
			category: "materiality",
			why: "Materiality topic.",
		},
		{
			term: "sampling risk",
			pattern: "sampling\\s+risk|risk\\s+of\\s+overreliance|risk\\s+of\\s+incorrect\\s+acceptance",
			category: "sampling",
			why: "Audit Sampling topic.",
		},
	],

	notes:
		"Audit Reports (AUD/IV/A) owns AU-C 700 standard report, AU-C 705 opinion modifications (qualified/adverse/disclaimer), AU-C 706 emphasis-of-matter and other-matter paragraphs, AU-C 570 going concern REPORTING implications at concept level, AU-C 800/805/810 special purpose and special elements reports at concept level, AU-C 701 KAMs, and the REPORTING presentation for group audits when reference alternative is chosen. Census v3 flagged 3/38 at 7.9% — `AS 2201` (2) and `component auditor` (1). Out of scope: PCAOB AS 2201/3101 at depth, review and compilation reports (Review and Compilation topic), attestation reports (Attestation Engagements topic), Yellow Book reports (Government Auditing Standards), AU-C 260 governance communication at depth, AU-C 265 IC deficiency communication (Misstatements), subsequent event identification procedures, going concern evaluation procedures at depth, Using the Work of Others decision framework, IFRS-specific reporting, IFAC ISA 700/705/706/701.",
};
