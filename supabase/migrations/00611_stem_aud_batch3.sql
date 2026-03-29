-- Migration: Stem expansion — AUD batch 3 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Modifications to the Auditor Report, Nature and Scope of Engagements, Other Information and Supplementary Information, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (2 questions)
-- ============================================================

-- ID 4586: Analytical Procedures (10 words)
-- ORIGINAL STEM: Analytical procedures are required during which phases of the audit?
UPDATE questions SET
  stem = $EXPL$During the audit of Greenfield Manufacturing''s 2025 financial statements, the engagement team discusses how analytical procedures will be incorporated throughout the engagement. Analytical procedures are required during which phases of the audit?$EXPL$
WHERE id = 4586;

-- ID 4587: Analytical Procedures (10 words)
-- ORIGINAL STEM: During the planning phase, analytical procedures are used primarily to:
UPDATE questions SET
  stem = $EXPL$While planning the 2025 audit of Redstone Logistics, the senior auditor compares preliminary financial data to prior-year results and industry benchmarks. During the planning phase, analytical procedures are used primarily to:$EXPL$
WHERE id = 4587;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 25: Attestation Engagements (12 words)
-- ORIGINAL STEM: Under AT-C 205, what type of conclusion does an examination engagement provide?
UPDATE questions SET
  stem = $EXPL$Mercer & Associates CPA firm has been engaged by Pinnacle Health Systems to examine a written assertion about the effectiveness of its internal controls over patient billing. Under AT-C 205, what type of conclusion does an examination engagement provide?$EXPL$
WHERE id = 25;

-- ID 1824: Attestation Engagements (12 words)
-- ORIGINAL STEM: In an agreed-upon procedures (AUP) engagement under AT-C 215, the practitioner provides:
UPDATE questions SET
  stem = $EXPL$A franchisor engages Dalton CPA Group to perform specific procedures on quarterly royalty reports submitted by a franchisee, including recalculating totals and tracing sales to bank deposits. In an agreed-upon procedures engagement under AT-C 215, the practitioner provides:$EXPL$
WHERE id = 1824;

-- ============================================================
-- AUDIT EVIDENCE (2 questions)
-- ============================================================

-- ID 113: Audit Evidence (12 words)
-- ORIGINAL STEM: Which of the following is the least reliable form of audit evidence?
UPDATE questions SET
  stem = $EXPL$While auditing Cascade Electronics'' 2025 financial statements, the engagement team is evaluating the quality of evidence gathered from various sources, including client inquiries, third-party confirmations, and internal documents. Which of the following is the least reliable form of audit evidence?$EXPL$
WHERE id = 113;

-- ID 114: Audit Evidence (12 words)
-- ORIGINAL STEM: Under AU-C 580, what is the purpose of a management representation letter?
UPDATE questions SET
  stem = $EXPL$Near the completion of the 2025 audit of Westbrook Industries, the engagement partner requests that the CEO and CFO sign a formal written statement addressing various matters discussed during the audit. Under AU-C 580, what is the purpose of this management representation letter?$EXPL$
WHERE id = 114;

-- ============================================================
-- AUDIT PLANNING (2 questions)
-- ============================================================

-- ID 1451: Audit Planning (12 words)
-- ORIGINAL STEM: When planning a group audit, the group engagement partner is responsible for:
UPDATE questions SET
  stem = $EXPL$Harmon Corp. has three subsidiaries, each audited by different regional CPA firms. Caldwell & Price LLP serves as the principal auditor for the consolidated financial statements. When planning this group audit, the group engagement partner is responsible for:$EXPL$
WHERE id = 1451;

-- ID 268: Audit Planning (13 words)
-- ORIGINAL STEM: Under AU-C 600, what must the group engagement partner do regarding component auditors?
UPDATE questions SET
  stem = $EXPL$Sterling Industries has a foreign subsidiary whose financial statements are audited by a local firm in Germany. The group engagement partner at Barrett & Webb LLP is issuing the opinion on the consolidated statements. Under AU-C 600, what must the group engagement partner do regarding the component auditor?$EXPL$
WHERE id = 268;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 1750: Audit Reports (11 words)
-- ORIGINAL STEM: Under AU-C 570, what is the auditor's responsibility regarding going concern?
UPDATE questions SET
  stem = $EXPL$Lakewood Furniture has experienced recurring operating losses and is struggling to meet debt covenants. The auditor of Lakewood''s 2025 financial statements is evaluating these conditions. Under AU-C 570, what is the auditor''s responsibility regarding going concern?$EXPL$
WHERE id = 1750;

-- ID 126: Audit Reports (12 words)
-- ORIGINAL STEM: What is the purpose of an emphasis-of-matter paragraph in an audit report?
UPDATE questions SET
  stem = $EXPL$After completing the audit of Trident Manufacturing''s 2025 financial statements, the engagement partner decides to include an additional paragraph in the report highlighting a significant change in accounting principle. What is the purpose of an emphasis-of-matter paragraph in an audit report?$EXPL$
WHERE id = 126;

-- ============================================================
-- AUDIT SAMPLING (1 questions)
-- ============================================================

-- ID 311: Audit Sampling (12 words)
-- ORIGINAL STEM: Difference estimation as a classical variables sampling method is most appropriate when:
UPDATE questions SET
  stem = $EXPL$An auditor at Palmer & Keane LLP is selecting a sampling method to estimate the total misstatement in Brightstar Corp.''s accounts receivable balance of $4.2 million. The auditor expects to find small differences between book and audited values in sampled items. Difference estimation as a classical variables sampling method is most appropriate when:$EXPL$
WHERE id = 311;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 1325: Ethics and Independence (13 words)
-- ORIGINAL STEM: Which of the following describes the AICPA's conceptual framework approach to evaluating independence?
UPDATE questions SET
  stem = $EXPL$A partner at Whitfield CPA Group encounters a situation not explicitly addressed by the AICPA Code''s specific independence rules. The partner must determine how to evaluate whether the firm''s independence is impaired. Which of the following describes the AICPA''s conceptual framework approach to evaluating independence?$EXPL$
WHERE id = 1325;

-- ID 94: Ethics and Independence (14 words)
-- ORIGINAL STEM: Which of the following is an example of an intimidation threat to auditor independence?
UPDATE questions SET
  stem = $EXPL$During the audit of Northgate Construction, the CFO expresses displeasure with a proposed audit adjustment and warns the engagement partner that the company will switch auditors if the issue is not dropped. Which of the following best describes this type of threat to independence?$EXPL$
WHERE id = 94;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (1 questions)
-- ============================================================

-- ID 1428: Government Auditing Standards (12 words)
-- ORIGINAL STEM: Under Government Auditing Standards, the concept of 'professional judgment' requires auditors to:
UPDATE questions SET
  stem = $EXPL$An auditor at a state legislative audit office is conducting a performance audit of a highway construction program under Government Auditing Standards. The audit supervisor reminds the team about the Yellow Book''s requirements for professional judgment. Under GAGAS, the concept of professional judgment requires auditors to:$EXPL$
WHERE id = 1428;

-- ============================================================
-- INDEPENDENCE (1 questions)
-- ============================================================

-- ID 13834: Independence (12 words)
-- ORIGINAL STEM: What does the term independence in mind mean under the AICPA Code?
UPDATE questions SET
  stem = $EXPL$During a firm training session at Crawford & Ellis LLP, a newly hired staff auditor asks about the two dimensions of auditor independence described in the AICPA Code of Professional Conduct. What does the term ''independence in mind'' mean under the AICPA Code?$EXPL$
WHERE id = 13834;

-- ============================================================
-- INTERNAL CONTROLS (2 questions)
-- ============================================================

-- ID 287: Internal Controls (12 words)
-- ORIGINAL STEM: Complementary user entity controls (CUECs) identified in a SOC 1 report are:
UPDATE questions SET
  stem = $EXPL$While auditing Baxter Medical Supply, the engagement team obtains a SOC 1 Type 2 report from the company''s outsourced payroll processor. The report identifies several complementary user entity controls that the service organization assumes are in place at Baxter. These CUECs are:$EXPL$
WHERE id = 287;

-- ID 289: Internal Controls (12 words)
-- ORIGINAL STEM: Segregation of duties requires that no single individual should have responsibility for:
UPDATE questions SET
  stem = $EXPL$The controller at Windham Electronics handles cash receipts, records accounts receivable entries, and authorizes write-offs. The external auditor identifies this as a control concern. Proper segregation of duties requires that no single individual should have responsibility for:$EXPL$
WHERE id = 289;

-- ============================================================
-- MATERIALITY (2 questions)
-- ============================================================

-- ID 4525: Materiality (7 words)
-- ORIGINAL STEM: The auditor's determination of materiality is made:
UPDATE questions SET
  stem = $EXPL$During the planning of the 2025 audit of Orion Aerospace, the engagement partner sets overall materiality at $750,000 based on a percentage of total revenue. A staff auditor asks whether this threshold might change as the audit progresses. The auditor''s determination of materiality is made:$EXPL$
WHERE id = 4525;

-- ID 13026: Materiality (7 words)
-- ORIGINAL STEM: The auditor's documentation of materiality must include:
UPDATE questions SET
  stem = $EXPL$After determining materiality for the 2025 audit of Summit Retail Group, the engagement partner is assembling the planning documentation. Per auditing standards, the auditor''s documentation of materiality must include:$EXPL$
WHERE id = 13026;

-- ============================================================
-- MODIFICATIONS TO THE AUDITOR REPORT (1 questions)
-- ============================================================

-- ID 4665: Modifications to the Auditor Report (10 words)
-- ORIGINAL STEM: A qualified opinion is appropriate when the auditor concludes that:
UPDATE questions SET
  stem = $EXPL$While completing the 2025 audit of Beacon Industries, the engagement partner identifies a material departure from GAAP involving the company''s failure to capitalize a $3 million finance lease. The misstatement is isolated to this single item and does not affect other financial statement areas. A qualified opinion is appropriate when the auditor concludes that:$EXPL$
WHERE id = 4665;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 4417: Nature and Scope of Engagements (9 words)
-- ORIGINAL STEM: The cutoff assertion for classes of transactions addresses whether:
UPDATE questions SET
  stem = $EXPL$While auditing Meridian Distributors'' 2025 financial statements, the senior auditor discovers that several December 28 shipments were recorded as January revenue. The team is evaluating which assertion has been violated. The cutoff assertion for classes of transactions addresses whether:$EXPL$
WHERE id = 4417;

-- ID 4416: Nature and Scope of Engagements (10 words)
-- ORIGINAL STEM: Which type of engagement provides the highest level of assurance?
UPDATE questions SET
  stem = $EXPL$A bank requires Prestige Development Corp. to obtain assurance services on its 2025 financial statements as a condition of a $10 million line of credit. The CFO asks the company''s CPA firm about the available engagement options. Which type of engagement provides the highest level of assurance?$EXPL$
WHERE id = 4416;

-- ============================================================
-- OTHER INFORMATION AND SUPPLEMENTARY INFORMATION (1 questions)
-- ============================================================

-- ID 4692: Other Information and Supplementary Information (10 words)
-- ORIGINAL STEM: If required supplementary information is omitted entirely, the auditor should:
UPDATE questions SET
  stem = $EXPL$During the audit of Crestview Municipal Authority''s 2025 financial statements, the auditor notices that management has not included the required supplementary information about pension obligations that GASB standards mandate. If required supplementary information is omitted entirely, the auditor should:$EXPL$
WHERE id = 4692;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 questions)
-- ============================================================

-- ID 143: Professional Responsibilities (11 words)
-- ORIGINAL STEM: What is the primary purpose of the AICPA peer review program?
UPDATE questions SET
  stem = $EXPL$Oakmont & Associates, a regional CPA firm performing audits and reviews, recently received notification that its triennial peer review is due. The managing partner is explaining the process to newer partners. What is the primary purpose of the AICPA peer review program?$EXPL$
WHERE id = 143;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (2 questions)
-- ============================================================

-- ID 4455: Professional Skepticism and Judgment (6 words)
-- ORIGINAL STEM: Automation bias in auditing refers to:
UPDATE questions SET
  stem = $EXPL$An audit team at Kessler & Frey LLP relies heavily on data analytics software to identify anomalies in journal entries. A reviewer notices that the team accepted the software''s output without independent evaluation. Automation bias in auditing refers to:$EXPL$
WHERE id = 4455;

-- ID 4460: Professional Skepticism and Judgment (9 words)
-- ORIGINAL STEM: The concept of "presumptive doubt" in professional skepticism means:
UPDATE questions SET
  stem = $EXPL$During a training seminar at Grant Thornton, an instructor explains that auditors must maintain a questioning mindset even when management has been reliable in the past. The concept of ''presumptive doubt'' in professional skepticism means:$EXPL$
WHERE id = 4460;

-- ============================================================
-- QUALITY MANAGEMENT (2 questions)
-- ============================================================

-- ID 1387: Quality Management (13 words)
-- ORIGINAL STEM: Under SQMS No. 1, the 'acceptance and continuance' component requires the firm to:
UPDATE questions SET
  stem = $EXPL$Ashford & Lyle LLP is evaluating whether to accept a new audit engagement with a cryptocurrency exchange that has faced regulatory scrutiny. The firm''s quality management partner reviews the SQMS No. 1 requirements. The ''acceptance and continuance'' component requires the firm to:$EXPL$
WHERE id = 1387;

-- ID 1394: Quality Management (13 words)
-- ORIGINAL STEM: Under SQMS No. 1, the 'governance and leadership' component requires firm leadership to:
UPDATE questions SET
  stem = $EXPL$The managing partner of Thornbury CPA Group is redesigning the firm''s quality management system to comply with SQMS No. 1. The partner is focusing on the governance and leadership component. This component requires firm leadership to:$EXPL$
WHERE id = 1394;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (2 questions)
-- ============================================================

-- ID 4532: Responding to Assessed Risks (8 words)
-- ORIGINAL STEM: The extent of further audit procedures refers to:
UPDATE questions SET
  stem = $EXPL$After assessing a higher risk of material misstatement for Vanguard Corp.''s revenue account, the audit team increases the number of transactions selected for testing from 30 to 75. The extent of further audit procedures refers to:$EXPL$
WHERE id = 4532;

-- ID 4535: Responding to Assessed Risks (9 words)
-- ORIGINAL STEM: Incorporating unpredictability into audit procedures is important because it:
UPDATE questions SET
  stem = $EXPL$The engagement partner on the Ridgeway Holdings audit instructs the team to perform surprise inventory counts at unannounced locations and test journal entries from unusual periods. Incorporating unpredictability into audit procedures is important because it:$EXPL$
WHERE id = 4535;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 1757: Review and Compilation (12 words)
-- ORIGINAL STEM: Under SSARS, when performing a preparation of financial statements engagement, the accountant:
UPDATE questions SET
  stem = $EXPL$Torres Accounting Services has been hired by a small landscaping company to help management put its financial data into proper financial statement format. No report will be issued. Under SSARS, when performing a preparation of financial statements engagement, the accountant:$EXPL$
WHERE id = 1757;

-- ID 1758: Review and Compilation (12 words)
-- ORIGINAL STEM: Is an accountant required to be independent when performing a compilation engagement?
UPDATE questions SET
  stem = $EXPL$Jennings CPA performs bookkeeping services for Crossroad Cafe and has also been asked to compile the restaurant''s annual financial statements. The owner asks whether the existing bookkeeping relationship creates any issues. Is an accountant required to be independent when performing a compilation engagement?$EXPL$
WHERE id = 1758;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (1 questions)
-- ============================================================

-- ID 22: Review/Compilation Engagements (12 words)
-- ORIGINAL STEM: Under AR-C 90, what level of assurance does a review engagement provide?
UPDATE questions SET
  stem = $EXPL$A private real estate firm asks Henderson & Cole CPA to perform a review of its 2025 financial statements to satisfy a bank covenant requirement. Under AR-C 90, what level of assurance does a review engagement provide?$EXPL$
WHERE id = 22;

-- ============================================================
-- RISK ASSESSMENT (2 questions)
-- ============================================================

-- ID 102: Risk Assessment (12 words)
-- ORIGINAL STEM: Which of the following is an example of an inherent risk factor?
UPDATE questions SET
  stem = $EXPL$While planning the 2025 audit of Solaris Biotech, the engagement team identifies several risk factors unrelated to the effectiveness of the company''s internal controls. Which of the following is an example of an inherent risk factor?$EXPL$
WHERE id = 102;

-- ID 7: Risk Assessment (13 words)
-- ORIGINAL STEM: Under AU-C 315, what two components make up the risk of material misstatement?
UPDATE questions SET
  stem = $EXPL$During the risk assessment phase of the Apex Dynamics audit, the senior auditor explains to a staff member how the audit risk model breaks down the risk of material misstatement. Under AU-C 315, what two components make up this risk?$EXPL$
WHERE id = 7;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 7602: Specific Areas and Transactions (10 words)
-- ORIGINAL STEM: Which procedure is most directly related to auditing bank reconciliations?
UPDATE questions SET
  stem = $EXPL$While testing the cash balance of Hartwell Distribution for year-end 2025, the auditor obtains the December bank reconciliation and examines each reconciling item. Which procedure is most directly related to auditing bank reconciliations?$EXPL$
WHERE id = 7602;

-- ID 7610: Specific Areas and Transactions (10 words)
-- ORIGINAL STEM: Under auditing standards, when must the auditor perform substantive procedures?
UPDATE questions SET
  stem = $EXPL$The audit team for Pacific Coast Retailers found the company''s internal controls over inventory to be highly effective after testing. A staff auditor asks whether substantive procedures can be eliminated for this account. Under auditing standards, when must the auditor perform substantive procedures?$EXPL$
WHERE id = 7610;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (7 questions)
-- ============================================================

-- ID 1669: Substantive Procedures (11 words)
-- ORIGINAL STEM: What is the first step when designing a substantive analytical procedure?
UPDATE questions SET
  stem = $EXPL$The audit team for Greenfield Manufacturing plans to use a substantive analytical procedure to test payroll expense by calculating an independent estimate from headcount and average wage data. What is the first step when designing a substantive analytical procedure?$EXPL$
WHERE id = 1669;

-- ID 1675: Substantive Procedures (11 words)
-- ORIGINAL STEM: Which procedure best tests the occurrence assertion for recorded sales transactions?
UPDATE questions SET
  stem = $EXPL$During the audit of Prism Electronics'' 2025 revenue, the engagement team identifies the occurrence assertion as a key risk area due to aggressive sales targets. Which procedure best tests the occurrence assertion for recorded sales transactions?$EXPL$
WHERE id = 1675;

-- ID 30: Substantive Procedures (12 words)
-- ORIGINAL STEM: Which combination of audit procedures is most effective for detecting fictitious revenue?
UPDATE questions SET
  stem = $EXPL$The audit team suspects that Falcon Aerospace may have recorded fictitious sales to inflate fourth-quarter revenue by approximately $2 million. Which combination of audit procedures is most effective for detecting fictitious revenue?$EXPL$
WHERE id = 30;

-- ID 123: Substantive Procedures (12 words)
-- ORIGINAL STEM: To test the completeness of accounts payable, an auditor would most effectively:
UPDATE questions SET
  stem = $EXPL$At December 31, 2025, Thornton Hardware''s accounts payable balance appears unusually low compared to purchasing volumes. The auditor suspects that liabilities may be unrecorded. To test the completeness of accounts payable, an auditor would most effectively:$EXPL$
WHERE id = 123;

-- ID 1683: Substantive Procedures (12 words)
-- ORIGINAL STEM: Which characteristic makes a substantive analytical procedure expectation most precise and reliable?
UPDATE questions SET
  stem = $EXPL$An auditor is designing a substantive analytical procedure to test the reasonableness of Atlas Shipping''s depreciation expense using detailed asset listings and useful life schedules. Which characteristic makes a substantive analytical procedure expectation most precise and reliable?$EXPL$
WHERE id = 1683;

-- ID 1686: Substantive Procedures (12 words)
-- ORIGINAL STEM: An auditor identifies potential related parties by reviewing which of the following?
UPDATE questions SET
  stem = $EXPL$During the audit of Monarch Real Estate Holdings, the engagement team notes several transactions with entities that share common ownership with the client. An auditor identifies potential related parties by reviewing which of the following?$EXPL$
WHERE id = 1686;

-- ID 1696: Substantive Procedures (12 words)
-- ORIGINAL STEM: Which procedure best tests the rights and obligations assertion for real property?
UPDATE questions SET
  stem = $EXPL$Crestfield Corp. reports a $6 million warehouse on its 2025 balance sheet. The auditor wants to verify that Crestfield actually owns the property. Which procedure best tests the rights and obligations assertion for real property?$EXPL$
WHERE id = 1696;

-- ============================================================
-- TERMS OF ENGAGEMENT (1 questions)
-- ============================================================

-- ID 4468: Terms of Engagement (12 words)
-- ORIGINAL STEM: When the auditor is engaged for a recurring audit, the engagement letter:
UPDATE questions SET
  stem = $EXPL$Langley & Foster LLP has been the auditor of Pinnacle Foods for five consecutive years. As the firm begins planning the 2025 engagement, the partner considers whether a new engagement letter is needed. When the auditor is engaged for a recurring audit, the engagement letter:$EXPL$
WHERE id = 4468;

-- ============================================================
-- TESTS OF CONTROLS (2 questions)
-- ============================================================

-- ID 4578: Tests of Controls (9 words)
-- ORIGINAL STEM: The auditor tests IT general controls (ITGCs) primarily because:
UPDATE questions SET
  stem = $EXPL$During the audit of Centurion Financial Services, the engagement team discovers that the company relies heavily on automated three-way matching for vendor payments. The auditor decides to test IT general controls over the ERP system. The auditor tests ITGCs primarily because:$EXPL$
WHERE id = 4578;

-- ID 4573: Tests of Controls (10 words)
-- ORIGINAL STEM: When testing automated (IT) controls, the auditor typically needs to:
UPDATE questions SET
  stem = $EXPL$Brightline Insurance processes policy premium calculations through an automated system that applies rate tables without manual intervention. The auditor plans to test this automated control. When testing automated IT controls, the auditor typically needs to:$EXPL$
WHERE id = 4573;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 questions)
-- ============================================================

-- ID 4488: Understanding the Entity and Environment (10 words)
-- ORIGINAL STEM: Understanding the entity's objectives and strategies helps the auditor identify:
UPDATE questions SET
  stem = $EXPL$While planning the audit of NovaTech Solutions, the engagement team learns the company has shifted its strategy from hardware sales to a cloud-based subscription model. Understanding the entity''s objectives and strategies helps the auditor identify:$EXPL$
WHERE id = 4488;

-- ============================================================
-- USING THE WORK OF OTHERS (2 questions)
-- ============================================================

-- ID 4563: Using the Work of Others (11 words)
-- ORIGINAL STEM: The objectivity of an auditor's specialist should be evaluated by considering:
UPDATE questions SET
  stem = $EXPL$The engagement team auditing Monarch Pharmaceuticals engages a patent valuation expert to assist with testing the fair value of acquired intangible assets. Before relying on the specialist''s work, the objectivity of the auditor''s specialist should be evaluated by considering:$EXPL$
WHERE id = 4563;

-- ID 4555: Using the Work of Others (12 words)
-- ORIGINAL STEM: An auditor's specialist differs from management's specialist in that the auditor's specialist:
UPDATE questions SET
  stem = $EXPL$During the audit of Ridgeline Mining''s 2025 financial statements, the company hired a geologist to estimate ore reserves, while the auditor separately engaged an environmental engineer for testing. An auditor''s specialist differs from management''s specialist in that the auditor''s specialist:$EXPL$
WHERE id = 4555;

COMMIT;
