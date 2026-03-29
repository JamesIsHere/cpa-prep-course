-- Migration: Stem expansion — AUD batch 4 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Internal Controls, Materiality, Modifications to the Auditor Report, Nature and Scope of Engagements, Other Information and Supplementary Information, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (2 questions)
-- ============================================================

-- ID 4594: Analytical Procedures (10 words)
-- ORIGINAL STEM: Ratio analysis as an analytical procedure is most useful when:
UPDATE questions SET
  stem = $EXPL$During the audit of Greenway Distributors, the engagement team is performing analytical procedures on the 2025 financial statements. The senior auditor plans to use ratio analysis to evaluate several key accounts. Ratio analysis as an analytical procedure is most useful when:$EXPL$
WHERE id = 4594;

-- ID 4600: Analytical Procedures (10 words)
-- ORIGINAL STEM: The reliability of data used for analytical procedures increases when:
UPDATE questions SET
  stem = $EXPL$While auditing Pineridge Manufacturing''s December 2025 financial statements, the engagement team is selecting data sources for substantive analytical procedures on payroll expense. The reliability of data used for these analytical procedures increases when:$EXPL$
WHERE id = 4600;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1831: Attestation Engagements (12 words)
-- ORIGINAL STEM: When examining pro forma financial information, the practitioner should obtain satisfaction that:
UPDATE questions SET
  stem = $EXPL$Carter & Bloom LLP is engaged to examine pro forma financial information prepared by Westlake Corp. in connection with its planned acquisition of a competitor. When examining this pro forma financial information, the practitioner should obtain satisfaction that:$EXPL$
WHERE id = 1831;

-- ID 134: Attestation Engagements (13 words)
-- ORIGINAL STEM: Under what professional standards is an examination of compliance with specified requirements performed?
UPDATE questions SET
  stem = $EXPL$Hartley & Associates has been engaged to examine whether a hospital complies with specific state regulatory requirements related to patient billing practices. Under what professional standards is this examination of compliance with specified requirements performed?$EXPL$
WHERE id = 134;

-- ============================================================
-- AUDIT EVIDENCE (3 questions)
-- ============================================================

-- ID 115: Audit Evidence (12 words)
-- ORIGINAL STEM: Which type of audit procedure involves the auditor independently verifying mathematical accuracy?
UPDATE questions SET
  stem = $EXPL$During the audit of Redstone Electronics, a staff auditor independently verifies the mathematical accuracy of the depreciation schedule by recomputing each asset''s annual charge. Which type of audit procedure does this represent?$EXPL$
WHERE id = 115;

-- ID 1597: Audit Evidence (12 words)
-- ORIGINAL STEM: The management representation letter should be dated as of the date of:
UPDATE questions SET
  stem = $EXPL$Nelson & Pratt LLP is completing the audit of Beacon Industries for the year ended December 31, 2025. The engagement partner is preparing to obtain the management representation letter. This letter should be dated as of the date of:$EXPL$
WHERE id = 1597;

-- ID 111: Audit Evidence (13 words)
-- ORIGINAL STEM: Which assertion is the auditor primarily testing when confirming accounts receivable with customers?
UPDATE questions SET
  stem = $EXPL$The audit team at Fielding Corp. sends positive confirmation requests to 40 customers listed in the accounts receivable subsidiary ledger as of December 31, 2025. Which assertion is the auditor primarily testing with this procedure?$EXPL$
WHERE id = 111;

-- ============================================================
-- AUDIT PLANNING (2 questions)
-- ============================================================

-- ID 1445: Audit Planning (13 words)
-- ORIGINAL STEM: When developing the audit plan, the auditor should include which of the following?
UPDATE questions SET
  stem = $EXPL$Monroe & Tate LLP is planning the 2025 audit of Brightfield Corp., a mid-size retailer. The engagement partner is transitioning from the overall audit strategy to the detailed audit plan. When developing this plan, the auditor should include which of the following?$EXPL$
WHERE id = 1445;

-- ID 1448: Audit Planning (14 words)
-- ORIGINAL STEM: Which of the following best describes the relationship between overall materiality and performance materiality?
UPDATE questions SET
  stem = $EXPL$During the planning phase of the Oakmont Corp. audit, the engagement partner sets overall materiality at $500,000. The manager asks about setting performance materiality. Which of the following best describes the relationship between these two thresholds?$EXPL$
WHERE id = 1448;

-- ============================================================
-- AUDIT REPORTS (3 questions)
-- ============================================================

-- ID 1736: Audit Reports (12 words)
-- ORIGINAL STEM: Under AU-C 705, what must the Basis for Qualified Opinion section include?
UPDATE questions SET
  stem = $EXPL$Marsh & Lang LLP has determined that a qualified opinion is appropriate for the 2025 audit of Holloway Inc. due to a material departure from GAAP. Under AU-C 705, what must the Basis for Qualified Opinion section include?$EXPL$
WHERE id = 1736;

-- ID 326: Audit Reports (13 words)
-- ORIGINAL STEM: Critical Audit Matters (CAMs) are required in audit reports issued under which standards?
UPDATE questions SET
  stem = $EXPL$An audit manager is reviewing the reporting requirements for two clients — one publicly traded and one privately held. The manager is determining which engagement requires communication of Critical Audit Matters (CAMs). CAMs are required in audit reports issued under which standards?$EXPL$
WHERE id = 326;

-- ID 334: Audit Reports (13 words)
-- ORIGINAL STEM: An other-matter paragraph differs from an emphasis-of-matter paragraph in that an other-matter paragraph:
UPDATE questions SET
  stem = $EXPL$While drafting the audit report for Lakeside Holdings, the engagement partner considers adding either an emphasis-of-matter or other-matter paragraph. An other-matter paragraph differs from an emphasis-of-matter paragraph in that an other-matter paragraph:$EXPL$
WHERE id = 334;

-- ============================================================
-- AUDIT SAMPLING (2 questions)
-- ============================================================

-- ID 1645: Audit Sampling (12 words)
-- ORIGINAL STEM: The risk of assessing control risk too low is the risk that:
UPDATE questions SET
  stem = $EXPL$During the audit of Clearfield Corp., the team selects a sample of purchase orders to test the approval control. The senior auditor reminds the staff about sampling risks in tests of controls. The risk of assessing control risk too low is the risk that:$EXPL$
WHERE id = 1645;

-- ID 1646: Audit Sampling (12 words)
-- ORIGINAL STEM: The risk of assessing control risk too high is the risk that:
UPDATE questions SET
  stem = $EXPL$After testing a sample of cash disbursement vouchers at Ridgeway Inc., the auditor finds several deviations in the approval process. The team discusses the implications if these deviations overstate the actual failure rate. The risk of assessing control risk too high is the risk that:$EXPL$
WHERE id = 1646;

-- ============================================================
-- ETHICS AND INDEPENDENCE (3 questions)
-- ============================================================

-- ID 91: Ethics and Independence (15 words)
-- ORIGINAL STEM: Which threat to independence arises when an auditor audits work that the auditor previously performed?
UPDATE questions SET
  stem = $EXPL$Harper & Stone LLP assisted Crestview Corp. in designing its new revenue recognition policies last year. This year, the same firm is engaged to audit Crestview''s financial statements including those policies. Which threat to independence arises from this situation?$EXPL$
WHERE id = 91;

-- ID 262: Ethics and Independence (15 words)
-- ORIGINAL STEM: Under the AICPA Code of Professional Conduct, what creates a management participation threat to independence?
UPDATE questions SET
  stem = $EXPL$During a non-audit engagement, a CPA at Thornton & Reeves makes several operating decisions on behalf of an audit client''s management team. Under the AICPA Code of Professional Conduct, what creates a management participation threat to independence?$EXPL$
WHERE id = 262;

-- ID 265: Ethics and Independence (15 words)
-- ORIGINAL STEM: Under SEC independence rules, what is the de minimis exception threshold for non-audit service fees?
UPDATE questions SET
  stem = $EXPL$Warren & Cole LLP provided a small tax advisory service to its SEC-registered audit client, Apex Technologies, without obtaining prior audit committee approval. The firm claims the fees qualify under the de minimis exception. Under SEC independence rules, what is this threshold?$EXPL$
WHERE id = 265;

-- ============================================================
-- INTERNAL CONTROLS (2 questions)
-- ============================================================

-- ID 1533: Internal Controls (12 words)
-- ORIGINAL STEM: The COSO Internal Control framework identifies how many components of internal control?
UPDATE questions SET
  stem = $EXPL$A new staff auditor at Blake & Mercer LLP is studying the COSO Internal Control — Integrated Framework before beginning fieldwork at a manufacturing client. The COSO framework identifies how many components of internal control?$EXPL$
WHERE id = 1533;

-- ID 1543: Internal Controls (12 words)
-- ORIGINAL STEM: Which of the following is an example of an information processing control?
UPDATE questions SET
  stem = $EXPL$During the audit of Summit Logistics, the IT auditor is documenting the company''s information processing controls within its enterprise resource planning system. Which of the following is an example of an information processing control?$EXPL$
WHERE id = 1543;

-- ============================================================
-- MATERIALITY (2 questions)
-- ============================================================

-- ID 4511: Materiality (8 words)
-- ORIGINAL STEM: The relationship between materiality and audit risk is:
UPDATE questions SET
  stem = $EXPL$While planning the 2025 audit of Pendleton Foods, the engagement partner explains to a new team member how materiality levels affect the overall audit approach and risk assessment. The relationship between materiality and audit risk is:$EXPL$
WHERE id = 4511;

-- ID 4509: Materiality (10 words)
-- ORIGINAL STEM: The concept of tolerable misstatement is most closely related to:
UPDATE questions SET
  stem = $EXPL$During the planning of the Ashford Corp. audit, the engagement manager sets a tolerable misstatement amount for each significant account balance. The concept of tolerable misstatement is most closely related to:$EXPL$
WHERE id = 4509;

-- ============================================================
-- MODIFICATIONS TO THE AUDITOR REPORT (2 questions)
-- ============================================================

-- ID 4666: Modifications to the Auditor Report (10 words)
-- ORIGINAL STEM: An adverse opinion is expressed when the auditor concludes that:
UPDATE questions SET
  stem = $EXPL$During the audit of Riverton Industries, the engagement partner identifies material misstatements affecting multiple financial statement line items, including revenue, assets, and stockholders'' equity. The partner is evaluating the appropriate opinion. An adverse opinion is expressed when the auditor concludes that:$EXPL$
WHERE id = 4666;

-- ID 4668: Modifications to the Auditor Report (10 words)
-- ORIGINAL STEM: An emphasis-of-matter paragraph is included in the auditor's report to:
UPDATE questions SET
  stem = $EXPL$After completing the audit of Glendale Corp., the engagement partner decides the financial statements are fairly stated but wants to highlight the company''s pending litigation disclosed in the notes. An emphasis-of-matter paragraph is included in the auditor''s report to:$EXPL$
WHERE id = 4668;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 13872: Nature and Scope of Engagements (10 words)
-- ORIGINAL STEM: What form of assurance does a review engagement report express?
UPDATE questions SET
  stem = $EXPL$Becker & Holt LLP has been engaged to perform a review of the 2025 financial statements of a privately held restaurant chain. The client''s bank requires limited assurance on the statements. What form of assurance does the review engagement report express?$EXPL$
WHERE id = 13872;

-- ID 4415: Nature and Scope of Engagements (11 words)
-- ORIGINAL STEM: The rights and obligations assertion primarily addresses which of the following?
UPDATE questions SET
  stem = $EXPL$During the audit of Conifer Timber Co., the engagement team is testing assertions related to a fleet of logging trucks reported as assets on the balance sheet. The rights and obligations assertion primarily addresses which of the following?$EXPL$
WHERE id = 4415;

-- ============================================================
-- OTHER INFORMATION AND SUPPLEMENTARY INFORMATION (1 questions)
-- ============================================================

-- ID 4687: Other Information and Supplementary Information (11 words)
-- ORIGINAL STEM: Required supplementary information (RSI) differs from other supplementary information because RSI:
UPDATE questions SET
  stem = $EXPL$While auditing a state government entity, the engagement team reviews pension trend data and management''s discussion and analysis included alongside the basic financial statements. Required supplementary information (RSI) differs from other supplementary information because RSI:$EXPL$
WHERE id = 4687;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 questions)
-- ============================================================

-- ID 140: Professional Responsibilities (14 words)
-- ORIGINAL STEM: Under the AICPA Code of Professional Conduct, which act constitutes a violation of confidentiality?
UPDATE questions SET
  stem = $EXPL$A CPA at Whitfield & Associates is at a dinner party and casually discusses the details of an audit client''s financial difficulties with a friend who is not involved in the engagement. Under the AICPA Code of Professional Conduct, which act constitutes a violation of confidentiality?$EXPL$
WHERE id = 140;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (2 questions)
-- ============================================================

-- ID 4461: Professional Skepticism and Judgment (10 words)
-- ORIGINAL STEM: Anchoring bias in auditing most commonly manifests when an auditor:
UPDATE questions SET
  stem = $EXPL$During the audit of Greystone Financial, the senior auditor reviews the prior year''s working papers and uses those conclusions as a starting point without fully reassessing current-year conditions. Anchoring bias in auditing most commonly manifests when an auditor:$EXPL$
WHERE id = 4461;

-- ID 4465: Professional Skepticism and Judgment (10 words)
-- ORIGINAL STEM: The availability heuristic threatens professional skepticism by causing auditors to:
UPDATE questions SET
  stem = $EXPL$A partner at Keene & Associates recently worked on a fraud engagement and now tends to overweight the possibility of fraud at unrelated audit clients. The availability heuristic threatens professional skepticism by causing auditors to:$EXPL$
WHERE id = 4465;

-- ============================================================
-- QUALITY MANAGEMENT (2 questions)
-- ============================================================

-- ID 1403: Quality Management (13 words)
-- ORIGINAL STEM: Under SQMS No. 1, the 'engagement performance' component addresses which of the following?
UPDATE questions SET
  stem = $EXPL$Calloway & Drake LLP is implementing its quality management system under SQMS No. 1. The managing partner is reviewing the eight required components and focusing on how engagements are carried out. The engagement performance component addresses which of the following?$EXPL$
WHERE id = 1403;

-- ID 1409: Quality Management (13 words)
-- ORIGINAL STEM: Under SQMS No. 2, the engagement quality reviewer must complete the review before:
UPDATE questions SET
  stem = $EXPL$Park & Weaver LLP has assigned an engagement quality reviewer for the audit of a public interest entity. The reviewer has identified several significant judgments requiring evaluation. Under SQMS No. 2, the engagement quality reviewer must complete the review before:$EXPL$
WHERE id = 1409;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (2 questions)
-- ============================================================

-- ID 13091: Responding to Assessed Risks (10 words)
-- ORIGINAL STEM: What does a combined approach to auditing an assertion involve?
UPDATE questions SET
  stem = $EXPL$During the audit of Stratton Manufacturing, the engagement team decides to use a combined approach for testing the completeness assertion over revenue. What does a combined approach to auditing an assertion involve?$EXPL$
WHERE id = 13091;

-- ID 4526: Responding to Assessed Risks (12 words)
-- ORIGINAL STEM: Overall responses to assessed risks at the financial statement level may include:
UPDATE questions SET
  stem = $EXPL$After performing risk assessment procedures at Halcyon Enterprises, the engagement partner concludes that pervasive risks exist at the financial statement level, including concerns about management integrity. Overall responses to assessed risks at the financial statement level may include:$EXPL$
WHERE id = 4526;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 347: Review and Compilation (13 words)
-- ORIGINAL STEM: Which of the following engagements does NOT require the accountant to be independent?
UPDATE questions SET
  stem = $EXPL$A sole practitioner CPA has been asked to assist several clients with different levels of service. One client specifically needs financial statements prepared but the CPA has a financial interest in the entity. Which of the following engagements does NOT require the accountant to be independent?$EXPL$
WHERE id = 347;

-- ID 340: Review and Compilation (14 words)
-- ORIGINAL STEM: In a review engagement, which of the following is the accountant required to obtain?
UPDATE questions SET
  stem = $EXPL$Foster & Miles LLP is performing a review engagement for a privately held restaurant group under SSARS. As the engagement nears completion, the accountant prepares the final documentation. In a review engagement, which of the following is the accountant required to obtain?$EXPL$
WHERE id = 340;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1798: Review/Compilation Engagements (12 words)
-- ORIGINAL STEM: When a review engagement is changed to a compilation, the accountant should:
UPDATE questions SET
  stem = $EXPL$Midway through the review engagement for Lakewood Bakeries, the owner requests a downgrade to a compilation engagement because the bank no longer requires a review. When a review engagement is changed to a compilation, the accountant should:$EXPL$
WHERE id = 1798;

-- ID 131: Review/Compilation Engagements (13 words)
-- ORIGINAL STEM: Under SSARS, is the accountant required to be independent in a preparation engagement?
UPDATE questions SET
  stem = $EXPL$Franklin & Associates has been asked to prepare financial statements for a small landscaping company. The CPA''s spouse owns 10% of the company. Under SSARS, is the accountant required to be independent in a preparation engagement?$EXPL$
WHERE id = 131;

-- ============================================================
-- RISK ASSESSMENT (2 questions)
-- ============================================================

-- ID 101: Risk Assessment (13 words)
-- ORIGINAL STEM: What is the relationship between detection risk and the risk of material misstatement?
UPDATE questions SET
  stem = $EXPL$During the planning of the Northgate Corp. audit, the engagement partner assesses the combined inherent and control risk for inventory as high. The partner is determining the appropriate level of detection risk. What is the relationship between detection risk and the risk of material misstatement?$EXPL$
WHERE id = 101;

-- ID 1503: Risk Assessment (13 words)
-- ORIGINAL STEM: When responding to assessed risks at the financial statement level, the auditor may:
UPDATE questions SET
  stem = $EXPL$After completing risk assessment for Eastbrook Financial, the engagement partner identifies pervasive risks at the financial statement level, including a weak control environment and management turnover. When responding to assessed risks at the financial statement level, the auditor may:$EXPL$
WHERE id = 1503;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 4647: Specific Areas and Transactions (11 words)
-- ORIGINAL STEM: When the auditor identifies a related party transaction, the auditor should:
UPDATE questions SET
  stem = $EXPL$During the audit of Vanguard Electronics, the team discovers that the CEO''s brother-in-law sold equipment to the company at above-market prices in October 2025. When the auditor identifies a related party transaction, the auditor should:$EXPL$
WHERE id = 4647;

-- ID 4663: Specific Areas and Transactions (11 words)
-- ORIGINAL STEM: When the auditor identifies management bias in accounting estimates, this finding:
UPDATE questions SET
  stem = $EXPL$While testing the allowance for doubtful accounts at Horizon Retail, the auditor notices that management consistently selects assumptions resulting in the lowest possible reserve over the past three years. When the auditor identifies management bias in accounting estimates, this finding:$EXPL$
WHERE id = 4663;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (3 questions)
-- ============================================================

-- ID 1705: Substantive Procedures (12 words)
-- ORIGINAL STEM: What risk does the auditor face when confirmation responses are received electronically?
UPDATE questions SET
  stem = $EXPL$During the accounts receivable confirmation process for Canton Supply Co., several customers respond to the auditor''s confirmation requests via email rather than traditional mail. What risk does the auditor face when confirmation responses are received electronically?$EXPL$
WHERE id = 1705;

-- ID 121: Substantive Procedures (13 words)
-- ORIGINAL STEM: What is the primary objective of a cutoff test for sales near year-end?
UPDATE questions SET
  stem = $EXPL$The audit team at Dalton Furniture examines shipping documents and sales invoices from December 28, 2025, through January 4, 2026, comparing them to the recorded revenue entries. What is the primary objective of this cutoff test for sales near year-end?$EXPL$
WHERE id = 121;

-- ID 314: Substantive Procedures (13 words)
-- ORIGINAL STEM: Under AU-C 540, what is one acceptable approach for testing an accounting estimate?
UPDATE questions SET
  stem = $EXPL$Prescott Manufacturing''s 2025 financial statements include a $2.4 million warranty reserve that involves significant management judgment. The engagement team is planning its procedures for this estimate. Under AU-C 540, what is one acceptable approach for testing an accounting estimate?$EXPL$
WHERE id = 314;

-- ============================================================
-- TESTS OF CONTROLS (2 questions)
-- ============================================================

-- ID 4584: Tests of Controls (10 words)
-- ORIGINAL STEM: Inspection of documents as a test of controls involves examining:
UPDATE questions SET
  stem = $EXPL$While testing the operating effectiveness of the purchase approval control at Ridgemont Corp., the auditor selects a sample of purchase orders and examines each one for an authorized signature. Inspection of documents as a test of controls involves examining:$EXPL$
WHERE id = 4584;

-- ID 4566: Tests of Controls (11 words)
-- ORIGINAL STEM: The purpose of testing the operating effectiveness of controls is to:
UPDATE questions SET
  stem = $EXPL$During the audit of Thornhill Industries, the engagement team plans to rely on the client''s three-way matching control over cash disbursements to reduce substantive testing. The purpose of testing the operating effectiveness of this control is to:$EXPL$
WHERE id = 4566;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (2 questions)
-- ============================================================

-- ID 4500: Understanding the Entity and Environment (11 words)
-- ORIGINAL STEM: The entity's selection of accounting policies may indicate management bias if:
UPDATE questions SET
  stem = $EXPL$During the risk assessment phase for Orion Healthcare, the auditor reviews the company''s choice of revenue recognition and depreciation methods. The entity''s selection of accounting policies may indicate management bias if:$EXPL$
WHERE id = 4500;

-- ID 13163: Understanding the Entity and Environment (12 words)
-- ORIGINAL STEM: What does understanding the entity's "legal environment" include for audit planning purposes?
UPDATE questions SET
  stem = $EXPL$While planning the audit of a pharmaceutical company, the engagement team gathers information about regulations, pending lawsuits, and licensing requirements affecting the client. What does understanding the entity''s legal environment include for audit planning purposes?$EXPL$
WHERE id = 13163;

-- ============================================================
-- USING THE WORK OF OTHERS (2 questions)
-- ============================================================

-- ID 4560: Using the Work of Others (12 words)
-- ORIGINAL STEM: When using internal auditors to provide direct assistance, the external auditor must:
UPDATE questions SET
  stem = $EXPL$During the audit of Pinnacle Financial Group, the engagement partner arranges for two of the client''s internal auditors to assist with testing branch cash counts under the external auditor''s supervision. When using internal auditors to provide direct assistance, the external auditor must:$EXPL$
WHERE id = 4560;

-- ID 13347: Using the Work of Others (12 words)
-- ORIGINAL STEM: Which reporting structure best supports the objectivity of the internal audit function?
UPDATE questions SET
  stem = $EXPL$While evaluating whether to rely on the internal audit function at Bridgewater Corp., the external auditor assesses its organizational independence. Which reporting structure best supports the objectivity of the internal audit function?$EXPL$
WHERE id = 13347;

COMMIT;
