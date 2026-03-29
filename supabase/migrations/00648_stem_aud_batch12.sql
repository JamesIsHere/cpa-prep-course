-- Migration: Stem expansion — AUD batch 12 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for AUD section
-- Affected topics: Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Modifications to the Auditor Report, Nature and Scope of Engagements, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Understanding the Entity and Environment, Using the Work of Others

BEGIN;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (3 questions)
-- ============================================================

-- ID 1826: Attestation Engagements (20 words)
-- ORIGINAL STEM: AT-C 305 addresses engagements on prospective financial statements. Which of the following are the two types of prospective financial statements?
UPDATE questions SET
  stem = $EXPL$Greenfield Ventures has asked its CPA firm to examine prospective financial information under AT-C 305. The engagement partner is reviewing the two categories of prospective financial statements recognized by the standards. Which of the following are the two types of prospective financial statements?$EXPL$
WHERE id = 1826;

-- ID 1832: Attestation Engagements (20 words)
-- ORIGINAL STEM: A practitioner is engaged to examine an entity's compliance with specified requirements of a regulatory agency. This engagement falls under:
UPDATE questions SET
  stem = $EXPL$The state insurance commissioner requires Pacific Mutual Insurance to demonstrate compliance with minimum capital adequacy requirements. Pacific Mutual engages Thornton & Associates to examine whether it has met these regulatory requirements. This engagement falls under:$EXPL$
WHERE id = 1832;

-- ID 1836: Attestation Engagements (20 words)
-- ORIGINAL STEM: A practitioner is engaged to perform an AUP engagement on a nonprofit entity's schedule of grant expenditures. The practitioner should:
UPDATE questions SET
  stem = $EXPL$The Riverside Community Foundation received $1.2 million in grant funding during 2025. Its board engages Keller CPA Group to perform agreed-upon procedures on the foundation''s schedule of grant expenditures. The practitioner should:$EXPL$
WHERE id = 1836;

-- ============================================================
-- AUDIT EVIDENCE (1 questions)
-- ============================================================

-- ID 1280: Audit Evidence (19 words)
-- ORIGINAL STEM: When an auditor uses electronic confirmations instead of paper confirmations, what is the PRIMARY risk the auditor should consider?
UPDATE questions SET
  stem = $EXPL$During the 2025 audit of Redstone Manufacturing, the engagement team decides to send accounts receivable confirmations through an electronic confirmation platform rather than by mail. What is the primary risk the auditor should consider when using electronic confirmations?$EXPL$
WHERE id = 1280;

-- ============================================================
-- AUDIT PLANNING (3 questions)
-- ============================================================

-- ID 1473: Audit Planning (19 words)
-- ORIGINAL STEM: When planning a recurring audit engagement for a continuing client, the auditor should take which of the following actions?
UPDATE questions SET
  stem = $EXPL$Hartwell & Klein LLP is beginning planning for the 2025 audit of Crestline Retail, a client the firm has audited for seven consecutive years. When planning this recurring engagement, the auditor should take which of the following actions?$EXPL$
WHERE id = 1473;

-- ID 1456: Audit Planning (20 words)
-- ORIGINAL STEM: During the planning phase, an auditor identifies that the entity uses a service organization for payroll processing. The auditor should:
UPDATE questions SET
  stem = $EXPL$While planning the audit of Lakeview Distribution, the auditor learns that Lakeview outsources all payroll processing to PayRight Services, a third-party provider that handles wage calculations and tax filings for 400 employees. The auditor should:$EXPL$
WHERE id = 1456;

-- ID 1459: Audit Planning (20 words)
-- ORIGINAL STEM: An auditor is planning an audit and needs to determine materiality for a nonprofit organization. Which benchmark is most appropriate?
UPDATE questions SET
  stem = $EXPL$Chen & Associates is planning the 2025 audit of Coastal Relief Foundation, a nonprofit with $8 million in total expenses and no significant revenue-generating activities. When determining materiality for this entity, which benchmark is most appropriate?$EXPL$
WHERE id = 1459;

-- ============================================================
-- AUDIT REPORTS (3 questions)
-- ============================================================

-- ID 1741: Audit Reports (18 words)
-- ORIGINAL STEM: Under auditing standards, what opinion is appropriate when a reasonably possible contingency is adequately disclosed in the notes?
UPDATE questions SET
  stem = $EXPL$Westin Pharmaceuticals is defending a product liability lawsuit with an estimated range of loss between $2 million and $5 million. The auditor determines the loss is reasonably possible and that management has adequately disclosed the contingency in the notes. What opinion is appropriate?$EXPL$
WHERE id = 1741;

-- ID 328: Audit Reports (20 words)
-- ORIGINAL STEM: In a group audit, what is the effect of making reference to a component auditor in the group audit report?
UPDATE questions SET
  stem = $EXPL$Morrison Industries has three subsidiaries, one of which is audited by a separate component auditor. The group engagement partner at Fielding LLP decides to make reference to the component auditor in the group audit report. What is the effect of this reference?$EXPL$
WHERE id = 328;

-- ID 1734: Audit Reports (20 words)
-- ORIGINAL STEM: In an audit report, what type of opinion does the phrase except for the effects of the matter described indicate?
UPDATE questions SET
  stem = $EXPL$The auditor of Beacon Technologies includes a Basis for Qualified Opinion paragraph and uses the phrase ''except for the effects of the matter described'' in the opinion section. What type of opinion does this language indicate?$EXPL$
WHERE id = 1734;

-- ============================================================
-- AUDIT SAMPLING (2 questions)
-- ============================================================

-- ID 1647: Audit Sampling (18 words)
-- ORIGINAL STEM: An auditor decides to stratify the accounts receivable population before sampling. The primary reason for stratification is to:
UPDATE questions SET
  stem = $EXPL$While testing accounts receivable for Ridgeway Electronics, the auditor separates the $12 million receivable balance into three groups: balances over $500,000, balances between $50,000 and $500,000, and balances under $50,000. The primary reason for this stratification is to:$EXPL$
WHERE id = 1647;

-- ID 1638: Audit Sampling (20 words)
-- ORIGINAL STEM: An auditor uses haphazard selection for a nonstatistical sample. Which of the following describes a key risk of haphazard selection?
UPDATE questions SET
  stem = $EXPL$During testing of purchase transactions at Crossroads Supply, the auditor selects sample items by flipping through the voucher file and pulling items without any systematic pattern. Which of the following describes a key risk of this haphazard selection approach?$EXPL$
WHERE id = 1638;

-- ============================================================
-- ETHICS AND INDEPENDENCE (3 questions)
-- ============================================================

-- ID 1311: Ethics and Independence (20 words)
-- ORIGINAL STEM: Under the AICPA Code, what type of threat is created when a CPA firm audits financial statements it also prepared?
UPDATE questions SET
  stem = $EXPL$Brighton CPA Group prepared the year-end financial statements for Apex Logistics from the client''s trial balance. Brighton has now been asked to audit those same financial statements. Under the AICPA Code, what type of threat does this situation create?$EXPL$
WHERE id = 1311;

-- ID 1316: Ethics and Independence (20 words)
-- ORIGINAL STEM: Under the AICPA Code of Professional Conduct, which of the following is considered an 'immediate family member' for independence purposes?
UPDATE questions SET
  stem = $EXPL$Marcus Webb, a senior on the audit engagement team for Skyline Corp, is evaluating whether certain family members'' financial interests could impair independence. Under the AICPA Code, which of the following is considered an ''immediate family member'' for independence purposes?$EXPL$
WHERE id = 1316;

-- ID 1339: Ethics and Independence (20 words)
-- ORIGINAL STEM: Under the AICPA Code, what is required of the client's management when a CPA firm provides internal audit outsourcing services?
UPDATE questions SET
  stem = $EXPL$Oakridge Manufacturing has engaged its external audit firm, Wallace & Pratt LLP, to also perform internal audit outsourcing services. Under the AICPA Code, what is required of Oakridge''s management for the firm to maintain independence?$EXPL$
WHERE id = 1339;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (2 questions)
-- ============================================================

-- ID 1436: Government Auditing Standards (19 words)
-- ORIGINAL STEM: Under the Uniform Guidance, which of the following types of compliance requirements must be tested for each major program?
UPDATE questions SET
  stem = $EXPL$During the single audit of Pinehurst County, the auditor identifies three major federal programs. The auditor is determining which compliance requirements from the Compliance Supplement must be tested for each major program. Under the Uniform Guidance, which types of compliance requirements must be tested?$EXPL$
WHERE id = 1436;

-- ID 1417: Government Auditing Standards (20 words)
-- ORIGINAL STEM: Under Government Auditing Standards, auditors must comply with the independence requirements of which standards in addition to the Yellow Book?
UPDATE questions SET
  stem = $EXPL$Grant & Associates has been engaged to audit a state agency under Government Auditing Standards (Yellow Book). The engagement partner is confirming which independence requirements the firm must satisfy. In addition to the Yellow Book, the auditors must comply with the independence requirements of which standards?$EXPL$
WHERE id = 1417;

-- ============================================================
-- INDEPENDENCE (2 questions)
-- ============================================================

-- ID 13835: Independence (18 words)
-- ORIGINAL STEM: Which of the following is one of the six core principles of the AICPA Code of Professional Conduct?
UPDATE questions SET
  stem = $EXPL$During new-hire orientation at Mercer & Hall CPAs, a training session reviews the six core principles underlying the AICPA Code of Professional Conduct. Which of the following is one of those six core principles?$EXPL$
WHERE id = 13835;

-- ID 4443: Independence (19 words)
-- ORIGINAL STEM: What is the key distinction between a direct financial interest and an indirect financial interest in an audit client?
UPDATE questions SET
  stem = $EXPL$An audit manager at Collins & Reed LLP owns shares in a mutual fund that holds stock in an audit client, Tidewater Corp. The firm''s ethics partner is evaluating whether this constitutes a direct or indirect financial interest. What is the key distinction between the two?$EXPL$
WHERE id = 4443;

-- ============================================================
-- INTERNAL CONTROLS (3 questions)
-- ============================================================

-- ID 106: Internal Controls (20 words)
-- ORIGINAL STEM: Which component of the COSO internal control framework deals with the entity's process for identifying and responding to business risks?
UPDATE questions SET
  stem = $EXPL$During the 2025 audit of Vanguard Electronics, the auditor evaluates how management identifies threats from new competitors and changes in technology regulations. Under the COSO framework, which internal control component does this process fall under?$EXPL$
WHERE id = 106;

-- ID 290: Internal Controls (20 words)
-- ORIGINAL STEM: A SOC 1 Type 1 report differs from a SOC 1 Type 2 report in that a Type 1 report:
UPDATE questions SET
  stem = $EXPL$Summit Logistics uses CloudPay Systems for payroll processing. The auditor of Summit is deciding whether to request a SOC 1 Type 1 or Type 2 report from CloudPay. A SOC 1 Type 1 report differs from a Type 2 report in that a Type 1 report:$EXPL$
WHERE id = 290;

-- ID 1561: Internal Controls (20 words)
-- ORIGINAL STEM: A company's employees are required to take mandatory vacations. This policy is primarily an example of which type of control?
UPDATE questions SET
  stem = $EXPL$Pinnacle Financial Services requires all employees who handle cash or process wire transfers to take at least one consecutive week of vacation annually. This mandatory vacation policy is primarily an example of which type of control?$EXPL$
WHERE id = 1561;

-- ============================================================
-- MATERIALITY (2 questions)
-- ============================================================

-- ID 13039: Materiality (19 words)
-- ORIGINAL STEM: When the auditor decreases the level of overall materiality, the effect on audit sample sizes is that they will:
UPDATE questions SET
  stem = $EXPL$During the audit of Northgate Industries, the engagement partner revises overall materiality downward from $400,000 to $250,000 after discovering that actual pre-tax income was significantly lower than the planning estimate. What effect will this decrease in materiality have on audit sample sizes?$EXPL$
WHERE id = 13039;

-- ID 4524: Materiality (20 words)
-- ORIGINAL STEM: An entity is a startup with no revenue and negative net income. What benchmark might the auditor use for materiality?
UPDATE questions SET
  stem = $EXPL$TerraGen Biotech is a pre-revenue startup that has been operating for two years with $15 million in total assets funded entirely by venture capital. Net income is negative. What benchmark might the auditor use for determining materiality?$EXPL$
WHERE id = 4524;

-- ============================================================
-- MODIFICATIONS TO THE AUDITOR REPORT (2 questions)
-- ============================================================

-- ID 13986: Modifications to the Auditor Report (15 words)
-- ORIGINAL STEM: The date of the auditor's report should be no earlier than the date the auditor:
UPDATE questions SET
  stem = $EXPL$Porter & Simms LLP has completed fieldwork on the 2025 audit of Cascade Industries. The engagement partner is determining the appropriate date for the auditor''s report. The report date should be no earlier than the date the auditor:$EXPL$
WHERE id = 13986;

-- ID 13976: Modifications to the Auditor Report (16 words)
-- ORIGINAL STEM: What word must be included in the title of a standard audit report under AICPA standards?
UPDATE questions SET
  stem = $EXPL$A newly promoted manager at Hammond & Associates is drafting the audit report for Clearwater Technologies. When finalizing the report title, what word must be included under AICPA standards?$EXPL$
WHERE id = 13976;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 4425: Nature and Scope of Engagements (19 words)
-- ORIGINAL STEM: The occurrence assertion for classes of transactions and events is most closely related to which assertion for account balances?
UPDATE questions SET
  stem = $EXPL$During the audit of Sterling Wholesale, the engagement team is mapping transaction-level assertions to balance-level assertions for receivables testing. The occurrence assertion for classes of transactions and events is most closely related to which assertion for account balances?$EXPL$
WHERE id = 4425;

-- ID 13881: Nature and Scope of Engagements (20 words)
-- ORIGINAL STEM: What type of engagement involves a CPA examining, reviewing, or performing agreed-upon procedures on subject matter other than financial statements?
UPDATE questions SET
  stem = $EXPL$Holloway & Tate LLP has been asked to examine a manufacturing client''s compliance with environmental regulations — subject matter that is not historical financial statements. What type of engagement does this represent?$EXPL$
WHERE id = 13881;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 1347: Professional Responsibilities (19 words)
-- ORIGINAL STEM: Under the AICPA Code, what should a CPA do when asked to perform an engagement in an unfamiliar area?
UPDATE questions SET
  stem = $EXPL$Rivera CPA Group, which specializes in real estate audits, is asked by a new client to perform an audit of a cryptocurrency exchange — an industry the firm has never served. Under the AICPA Code, what should the firm do?$EXPL$
WHERE id = 1347;

-- ID 1350: Professional Responsibilities (20 words)
-- ORIGINAL STEM: Under AU-C 210, what is the primary reason a successor auditor communicates with the predecessor auditor before accepting an engagement?
UPDATE questions SET
  stem = $EXPL$Weston Manufacturing has terminated its relationship with its prior auditor and approached Blake & Frost LLP about performing the 2025 audit. Under AU-C 210, what is the primary reason the successor auditor communicates with the predecessor before accepting?$EXPL$
WHERE id = 1350;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 questions)
-- ============================================================

-- ID 4453: Professional Skepticism and Judgment (20 words)
-- ORIGINAL STEM: An auditor receives a management representation that all related party transactions have been disclosed. Professional skepticism requires the auditor to:
UPDATE questions SET
  stem = $EXPL$During the 2025 audit of Sentinel Holdings, the CFO provides a written representation stating that all related-party transactions have been disclosed in the financial statements. Professional skepticism requires the auditor to:$EXPL$
WHERE id = 4453;

-- ============================================================
-- QUALITY MANAGEMENT (2 questions)
-- ============================================================

-- ID 365: Quality Management (19 words)
-- ORIGINAL STEM: Under SQMS No. 1, which component addresses the firm's process for accepting new clients and continuing with existing ones?
UPDATE questions SET
  stem = $EXPL$Drake & Whitfield LLP is implementing its quality management system under SQMS No. 1. The managing partner wants to formalize the process for evaluating prospective clients and deciding whether to retain current ones. Which SQMS No. 1 component addresses this area?$EXPL$
WHERE id = 365;

-- ID 366: Quality Management (19 words)
-- ORIGINAL STEM: A peer review that evaluates a firm's system of quality management and selects engagements for review is called a:
UPDATE questions SET
  stem = $EXPL$Grayson & Park LLP performs financial statement audits and is due for its triennial AICPA peer review. The review will evaluate the firm''s quality management system and inspect selected engagements. This type of peer review is called a:$EXPL$
WHERE id = 366;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (2 questions)
-- ============================================================

-- ID 4541: Responding to Assessed Risks (19 words)
-- ORIGINAL STEM: Regardless of the assessed risks of material misstatement, the auditor is required to design and perform substantive procedures for:
UPDATE questions SET
  stem = $EXPL$During the audit of Prescott Dynamics, the senior auditor notes that controls over several account balances tested as highly effective with low assessed risk. Regardless of the assessed risk level, the auditor is still required to design and perform substantive procedures for:$EXPL$
WHERE id = 4541;

-- ID 13085: Responding to Assessed Risks (19 words)
-- ORIGINAL STEM: When designing audit procedures in response to assessed risks, which source of audit evidence is generally considered most reliable?
UPDATE questions SET
  stem = $EXPL$The engagement team for Brentwood Corp has assessed a high risk of misstatement in the accounts receivable balance and is selecting procedures that will yield the most persuasive evidence. Which source of audit evidence is generally considered most reliable?$EXPL$
WHERE id = 13085;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 1782: Review and Compilation (20 words)
-- ORIGINAL STEM: Under AR-C 90, the date of the review report should be no earlier than the date on which the accountant:
UPDATE questions SET
  stem = $EXPL$Davis & Monroe LLP has completed the review engagement for Timber Creek Outfitters'' 2025 financial statements. The engagement partner is determining the appropriate report date under AR-C 90. The review report date should be no earlier than the date on which the accountant:$EXPL$
WHERE id = 1782;

-- ID 1784: Review and Compilation (20 words)
-- ORIGINAL STEM: When compiling financial statements, the accountant discovers that management has made an accounting estimate that appears unreasonable. The accountant should:
UPDATE questions SET
  stem = $EXPL$While compiling the 2025 financial statements for Eastwood Plumbing, the accountant notices that management estimated a warranty reserve at only $500 despite $3 million in annual revenue and a history of significant warranty claims. The accountant should:$EXPL$
WHERE id = 1784;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1804: Review/Compilation Engagements (19 words)
-- ORIGINAL STEM: The accountant is performing a review of a nonprofit entity's financial statements. The inquiry procedures should include questions about:
UPDATE questions SET
  stem = $EXPL$Sanders & Lane is performing a review of the 2025 financial statements for Harbor Youth Services, a nonprofit that relies on donor contributions and government grants. The inquiry procedures in this review should include questions about:$EXPL$
WHERE id = 1804;

-- ID 1809: Review/Compilation Engagements (20 words)
-- ORIGINAL STEM: An accountant is asked to compile prospective financial statements (a forecast). Under SSARS, can the accountant compile prospective financial statements?
UPDATE questions SET
  stem = $EXPL$The controller of Bridgeport Enterprises asks Mitchell CPA Group to compile a financial forecast that will be presented to potential investors. Under SSARS, can the accountant compile prospective financial statements such as a forecast?$EXPL$
WHERE id = 1809;

-- ============================================================
-- RISK ASSESSMENT (2 questions)
-- ============================================================

-- ID 1501: Risk Assessment (19 words)
-- ORIGINAL STEM: Which of the following is an appropriate auditor response to an assessed risk of material misstatement due to fraud?
UPDATE questions SET
  stem = $EXPL$During the 2025 audit of Prism Retail, the engagement team''s fraud brainstorming session identifies pressure on management to meet aggressive earnings targets. Which of the following is an appropriate auditor response to this assessed risk of material misstatement due to fraud?$EXPL$
WHERE id = 1501;

-- ID 277: Risk Assessment (20 words)
-- ORIGINAL STEM: Which financial statement assertion is most at risk when an entity operates in a highly regulated industry with frequent changes?
UPDATE questions SET
  stem = $EXPL$Vertex Health Systems operates in the healthcare industry, where regulations governing reimbursement rates and reporting requirements change frequently. When assessing risk for Vertex''s audit, which financial statement assertion is most at risk?$EXPL$
WHERE id = 277;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 4664: Specific Areas and Transactions (17 words)
-- ORIGINAL STEM: Which of the following is an example of a going concern mitigating factor that management might present?
UPDATE questions SET
  stem = $EXPL$Atlas Fabrication has reported recurring operating losses and negative cash flows for the past three years. During the going concern evaluation, management presents plans to address the entity''s financial difficulties. Which of the following is an example of a mitigating factor management might present?$EXPL$
WHERE id = 4664;

-- ID 4654: Specific Areas and Transactions (18 words)
-- ORIGINAL STEM: When management's going concern assessment covers less than one year from the financial statement date, the auditor should:
UPDATE questions SET
  stem = $EXPL$The financial statements of Keystone Freight are dated December 31, 2025, but management''s going concern assessment only evaluates conditions through September 2026. When management''s assessment covers less than one year from the financial statement issuance date, the auditor should:$EXPL$
WHERE id = 4654;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (2 questions)
-- ============================================================

-- ID 1688: Substantive Procedures (17 words)
-- ORIGINAL STEM: What does a significant unexpected change in a financial ratio indicate to the auditor during analytical procedures?
UPDATE questions SET
  stem = $EXPL$While performing analytical procedures on Harmon Industries, the auditor notes that the inventory turnover ratio dropped from 8.2 to 4.1 with no corresponding change in sales volume. What does a significant unexpected change like this indicate to the auditor?$EXPL$
WHERE id = 1688;

-- ID 1704: Substantive Procedures (18 words)
-- ORIGINAL STEM: What type of audit procedure uses a statistical model to develop an independent expectation of an account balance?
UPDATE questions SET
  stem = $EXPL$During the audit of Ashford Energy, the engagement team calculates expected payroll expense by multiplying average headcount by average compensation rates and compares the result to the recorded balance. What type of audit procedure uses a model to develop an independent expectation of an account balance?$EXPL$
WHERE id = 1704;

-- ============================================================
-- TERMS OF ENGAGEMENT (2 questions)
-- ============================================================

-- ID 13939: Terms of Engagement (18 words)
-- ORIGINAL STEM: What is the required form of the agreement on audit engagement terms between the auditor and the client?
UPDATE questions SET
  stem = $EXPL$Langford & Pierce LLP has been selected to audit Mapleview Retail for the first time. Before commencing fieldwork, the firm must formalize the engagement terms. What is the required form of this agreement between the auditor and the client?$EXPL$
WHERE id = 13939;

-- ID 13923: Terms of Engagement (20 words)
-- ORIGINAL STEM: Which of the following best describes when the auditor must agree on the terms of an audit engagement with management?
UPDATE questions SET
  stem = $EXPL$Kenworth & Shaw LLP is evaluating whether to accept a new audit client, Silverline Corp, and is considering the timing of the engagement agreement. Which of the following best describes when the auditor must agree on the terms of an audit engagement with management?$EXPL$
WHERE id = 13923;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (2 questions)
-- ============================================================

-- ID 13150: Understanding the Entity and Environment (18 words)
-- ORIGINAL STEM: When during the audit is the auditor required to update the understanding of the entity and its environment?
UPDATE questions SET
  stem = $EXPL$Midway through the 2025 audit of Orion Aerospace, the auditor discovers that the client lost a major defense contract representing 30% of revenue. When during the audit is the auditor required to update the understanding of the entity and its environment?$EXPL$
WHERE id = 13150;

-- ID 4493: Understanding the Entity and Environment (20 words)
-- ORIGINAL STEM: Which of the following is an example of a business risk that the auditor should consider when understanding the entity?
UPDATE questions SET
  stem = $EXPL$During planning for the audit of Coastal Brewing, the auditor is evaluating risks that could threaten the entity''s strategic objectives. Which of the following is an example of a business risk the auditor should consider when understanding the entity?$EXPL$
WHERE id = 4493;

-- ============================================================
-- USING THE WORK OF OTHERS (1 questions)
-- ============================================================

-- ID 4551: Using the Work of Others (20 words)
-- ORIGINAL STEM: A Type 2 SOC 1 report differs from a Type 1 SOC 1 report primarily because a Type 2 report:
UPDATE questions SET
  stem = $EXPL$The auditor of Millbrook Distributors is evaluating controls at DataStream Payroll, a service organization. The auditor must decide between requesting a SOC 1 Type 1 or Type 2 report. A Type 2 SOC 1 report differs from a Type 1 report primarily because a Type 2 report:$EXPL$
WHERE id = 4551;

COMMIT;
