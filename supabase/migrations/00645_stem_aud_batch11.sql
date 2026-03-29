-- Migration: Stem expansion — AUD batch 11 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Modifications to the Auditor Report, Nature and Scope of Engagements, Other Information and Supplementary Information, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (5 questions)
-- ============================================================

-- ID 14012: Analytical Procedures (14 words)
-- ORIGINAL STEM: What is a key limitation of analytical procedures with respect to related party transactions?
UPDATE questions SET
  stem = $EXPL$Greystone Manufacturing sells inventory to its wholly owned subsidiary, Greystone Distribution, at prices set by the parent company''s CFO. The auditor is considering whether analytical procedures would be effective for testing these intercompany sales. What is a key limitation of analytical procedures with respect to related party transactions?$EXPL$
WHERE id = 14012;

-- ID 4599: Analytical Procedures (16 words)
-- ORIGINAL STEM: During the final analytical review, the auditor reads the financial statements and notes to evaluate whether:
UPDATE questions SET
  stem = $EXPL$The audit of Lakewood Hospitality Group''s 2025 financial statements is nearly complete. The engagement team performs its final overall review by reading the financial statements and accompanying notes. During this final analytical review, the auditor evaluates whether:$EXPL$
WHERE id = 4599;

-- ID 14013: Analytical Procedures (16 words)
-- ORIGINAL STEM: What is the relationship between the investigation threshold in a substantive analytical procedure and tolerable misstatement?
UPDATE questions SET
  stem = $EXPL$While planning the audit of Birch Creek Electronics, the senior auditor sets an investigation threshold for a substantive analytical procedure on payroll expense. The manager asks how this threshold relates to tolerable misstatement. What is the correct relationship between the investigation threshold and tolerable misstatement?$EXPL$
WHERE id = 14013;

-- ID 12693: Analytical Procedures (18 words)
-- ORIGINAL STEM: In the audit risk model, what is the primary effect of using a more precise substantive analytical procedure?
UPDATE questions SET
  stem = $EXPL$During the audit of Ridgeline Logistics, the team develops a detailed estimate of depreciation expense using asset-level data and specific useful lives instead of comparing total depreciation to the prior year. In the audit risk model, what is the primary effect of using this more precise substantive analytical procedure?$EXPL$
WHERE id = 12693;

-- ID 4592: Analytical Procedures (20 words)
-- ORIGINAL STEM: Which of the following is an example of a non-financial data source that an auditor might use in analytical procedures?
UPDATE questions SET
  stem = $EXPL$The auditor of Summit Hotel Group is performing analytical procedures on room revenue for 2025. To develop an independent expectation, the auditor considers using both financial and non-financial data. Which of the following is an example of a non-financial data source the auditor might use?$EXPL$
WHERE id = 4592;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1834: Attestation Engagements (19 words)
-- ORIGINAL STEM: AT-C 105 establishes the general framework for attestation engagements. One fundamental requirement is that the subject matter must be:
UPDATE questions SET
  stem = $EXPL$Whitfield & Associates is evaluating whether to accept an engagement to examine a technology company''s assertion about its cybersecurity risk management program. Under AT-C 105, one fundamental requirement for accepting this attestation engagement is that the subject matter must be:$EXPL$
WHERE id = 1834;

-- ID 349: Attestation Engagements (20 words)
-- ORIGINAL STEM: A practitioner is engaged to examine a company's compliance with specific contractual requirements. The suitable criteria for this engagement are:
UPDATE questions SET
  stem = $EXPL$Oakmont Partners engages a CPA firm to examine its compliance with financial covenants in a $15 million loan agreement with First National Bank. The practitioner must identify suitable criteria for this compliance examination. The suitable criteria for this engagement are:$EXPL$
WHERE id = 349;

-- ============================================================
-- AUDIT EVIDENCE (1 questions)
-- ============================================================

-- ID 1610: Audit Evidence (18 words)
-- ORIGINAL STEM: An auditor determines that a receivable confirmed at year-end was collected in full during January. This subsequent collection:
UPDATE questions SET
  stem = $EXPL$During the December 31, 2025 audit of Canton Industries, the auditor confirmed a $340,000 receivable from a major customer. In January 2026, the auditor discovers the customer paid the balance in full. This subsequent collection:$EXPL$
WHERE id = 1610;

-- ============================================================
-- AUDIT PLANNING (2 questions)
-- ============================================================

-- ID 1476: Audit Planning (18 words)
-- ORIGINAL STEM: The auditor's assessment of materiality may differ for different financial statements. Which of the following statements is correct?
UPDATE questions SET
  stem = $EXPL$While planning the 2025 audit of Pinnacle Retail Corp., the engagement partner considers whether to set different materiality levels for the income statement and balance sheet. The auditor''s assessment of materiality may differ for different financial statements. Which of the following statements is correct?$EXPL$
WHERE id = 1476;

-- ID 1465: Audit Planning (19 words)
-- ORIGINAL STEM: When planning an audit, the auditor is required to consider the entity's related party relationships and transactions primarily because:
UPDATE questions SET
  stem = $EXPL$During the planning phase for the 2025 audit of Mercer Holdings, the engagement team discovers that the CEO''s brother owns a logistics company providing $2.8 million in services to Mercer. The auditor is required to consider such related party relationships primarily because:$EXPL$
WHERE id = 1465;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 1710: Audit Reports (18 words)
-- ORIGINAL STEM: Which of the following is NOT a required element of an auditor's standard unmodified report under AU-C 700?
UPDATE questions SET
  stem = $EXPL$Hayes & Donovan LLP has completed its audit of a privately held manufacturer and is drafting the standard unmodified report. The engagement manager reviews the report for completeness. Which of the following is NOT a required element of this report under AU-C 700?$EXPL$
WHERE id = 1710;

-- ID 1739: Audit Reports (18 words)
-- ORIGINAL STEM: Under AU-C 710, how should the auditor handle the prior-period opinion when a prior-year scope limitation is resolved?
UPDATE questions SET
  stem = $EXPL$In the prior year, Clifton & Reed LLP issued a qualified opinion on Westpark Corp. due to a scope limitation on inventory. During the current year audit, the limitation has been fully resolved. Under AU-C 710, how should the auditor handle the prior-period opinion?$EXPL$
WHERE id = 1739;

-- ============================================================
-- AUDIT SAMPLING (1 questions)
-- ============================================================

-- ID 309: Audit Sampling (18 words)
-- ORIGINAL STEM: If the projected misstatement plus the allowance for sampling risk exceeds tolerable misstatement, the auditor should conclude that:
UPDATE questions SET
  stem = $EXPL$An auditor testing accounts receivable for Broadline Distribution uses monetary-unit sampling and projects total misstatements of $185,000 with a $90,000 allowance for sampling risk. Tolerable misstatement is $250,000. Since the projected misstatement plus the allowance for sampling risk exceeds tolerable misstatement, the auditor should conclude that:$EXPL$
WHERE id = 309;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 1333: Ethics and Independence (19 words)
-- ORIGINAL STEM: Which of the following former employment relationships would most likely impair a CPA's independence when auditing a former employer?
UPDATE questions SET
  stem = $EXPL$Karen Davis, CPA, left her position at Redfield Industries three years ago and now works at a public accounting firm. Redfield has asked her firm to perform its annual audit. Which of the following former employment relationships would most likely impair Karen''s independence?$EXPL$
WHERE id = 1333;

-- ID 255: Ethics and Independence (20 words)
-- ORIGINAL STEM: Under the Sarbanes-Oxley Act, after how many consecutive years must the lead engagement partner rotate off a public company audit?
UPDATE questions SET
  stem = $EXPL$Grant Palmer has served as the lead engagement partner on the audit of a publicly traded pharmaceutical company since 2020. The firm''s quality management partner is reviewing partner rotation requirements. Under the Sarbanes-Oxley Act, after how many consecutive years must the lead engagement partner rotate off the engagement?$EXPL$
WHERE id = 255;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (1 questions)
-- ============================================================

-- ID 1419: Government Auditing Standards (19 words)
-- ORIGINAL STEM: Under Government Auditing Standards, auditors performing financial audits of government entities must meet continuing professional education (CPE) requirements of:
UPDATE questions SET
  stem = $EXPL$An auditor at Thornton & Associates is assigned to the financial statement audit of a county school district conducted under GAGAS. The firm''s HR director verifies that each team member meets the applicable CPE requirements. Under Government Auditing Standards, the CPE requirement is:$EXPL$
WHERE id = 1419;

-- ============================================================
-- INDEPENDENCE (1 questions)
-- ============================================================

-- ID 4444: Independence (18 words)
-- ORIGINAL STEM: Under the AICPA Code, when a covered member becomes aware that independence has been impaired, the member should:
UPDATE questions SET
  stem = $EXPL$A senior associate on the audit of Keystone Financial discovers that her spouse recently purchased 100 shares of Keystone stock. She is a covered member under the AICPA Code. Upon becoming aware that independence has been impaired, the member should:$EXPL$
WHERE id = 4444;

-- ============================================================
-- INTERNAL CONTROLS (2 questions)
-- ============================================================

-- ID 1557: Internal Controls (18 words)
-- ORIGINAL STEM: Under AU-C 265, the auditor is required to communicate significant deficiencies and material weaknesses in internal control to:
UPDATE questions SET
  stem = $EXPL$During the 2025 audit of Tidewater Manufacturing, the engagement team identifies a material weakness in the company''s revenue recognition controls and a significant deficiency in the purchase approval process. Under AU-C 265, the auditor is required to communicate these findings to:$EXPL$
WHERE id = 1557;

-- ID 110: Internal Controls (19 words)
-- ORIGINAL STEM: An auditor is testing IT general controls. Which of the following would be classified as an IT general control?
UPDATE questions SET
  stem = $EXPL$While auditing Cascade Systems Inc., the engagement team evaluates the company''s IT environment. The team distinguishes between IT general controls and application controls as part of the risk assessment. Which of the following would be classified as an IT general control?$EXPL$
WHERE id = 110;

-- ============================================================
-- MATERIALITY (1 questions)
-- ============================================================

-- ID 4513: Materiality (17 words)
-- ORIGINAL STEM: An auditor is auditing a not-for-profit organization. Which benchmark would most likely be appropriate for determining materiality?
UPDATE questions SET
  stem = $EXPL$The engagement team at Foster & Lane CPAs is planning the 2025 audit of the Riverside Community Foundation, a not-for-profit organization with no significant investment income. The team is selecting an appropriate benchmark for materiality. Which benchmark would most likely be appropriate?$EXPL$
WHERE id = 4513;

-- ============================================================
-- MODIFICATIONS TO THE AUDITOR REPORT (1 questions)
-- ============================================================

-- ID 13985: Modifications to the Auditor Report (15 words)
-- ORIGINAL STEM: Critical Audit Matters (CAMs) are required in auditor reports issued under which set of standards?
UPDATE questions SET
  stem = $EXPL$Jensen & Park LLP audits both publicly traded companies and private entities. A new staff member asks when the firm must include Critical Audit Matters in its audit reports. CAMs are required in auditor reports issued under which set of standards?$EXPL$
WHERE id = 13985;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 4422: Nature and Scope of Engagements (18 words)
-- ORIGINAL STEM: Which of the following assertions would an auditor primarily test by confirming accounts receivable balances directly with customers?
UPDATE questions SET
  stem = $EXPL$As part of the year-end audit of Hartwell Industries, the engagement team sends positive confirmation requests to 40 customers with outstanding receivable balances. Which assertion would the auditor primarily test through this confirmation procedure?$EXPL$
WHERE id = 4422;

-- ID 4419: Nature and Scope of Engagements (19 words)
-- ORIGINAL STEM: When an auditor is engaged to audit only the balance sheet and not the other financial statements, this represents:
UPDATE questions SET
  stem = $EXPL$A bank requests that Sterling Fabrication obtain an audit of its December 31, 2025 balance sheet only, not the income statement or cash flow statement. When an auditor is engaged to audit only the balance sheet, this represents:$EXPL$
WHERE id = 4419;

-- ============================================================
-- OTHER INFORMATION AND SUPPLEMENTARY INFORMATION (5 questions)
-- ============================================================

-- ID 13996: Other Information and Supplementary Information (17 words)
-- ORIGINAL STEM: Under AU-C 730, whose responsibility is it to prepare required supplementary information in accordance with prescribed guidelines?
UPDATE questions SET
  stem = $EXPL$The City of Ashford presents management''s discussion and analysis alongside its basic financial statements as required supplementary information. During the audit, a question arises about who bears responsibility for preparing the RSI. Under AU-C 730, whose responsibility is it to prepare required supplementary information?$EXPL$
WHERE id = 13996;

-- ID 4694: Other Information and Supplementary Information (18 words)
-- ORIGINAL STEM: If the RSI is presented but the auditor identifies material departures from prescribed guidelines, the auditor's report should:
UPDATE questions SET
  stem = $EXPL$During the audit of a municipal water authority, the auditor reviews the required supplementary information and discovers that management used an unapproved actuarial method for the pension schedule, a material departure from GASB guidelines. The auditor''s report should:$EXPL$
WHERE id = 4694;

-- ID 4703: Other Information and Supplementary Information (18 words)
-- ORIGINAL STEM: If the other information is received by the auditor after the date of the auditor's report, the auditor:
UPDATE questions SET
  stem = $EXPL$Novak & Reeves LLP issued its audit report on Clearfield Corp. on March 5, 2026. On March 20, the auditor receives Clearfield''s annual report containing the president''s letter and operational highlights. Since the other information was received after the report date, the auditor:$EXPL$
WHERE id = 4703;

-- ID 4688: Other Information and Supplementary Information (19 words)
-- ORIGINAL STEM: If the auditor identifies a material inconsistency between the other information and the audited financial statements, the auditor should:
UPDATE questions SET
  stem = $EXPL$While reading Vanguard Corp.''s annual report, the auditor notices that the chairman''s letter states revenue grew 18%, but the audited income statement shows only 9% growth. This material inconsistency between the other information and the audited financial statements means the auditor should:$EXPL$
WHERE id = 4688;

-- ID 13995: Other Information and Supplementary Information (20 words)
-- ORIGINAL STEM: Which of the following is an example of required supplementary information (RSI) as designated by an applicable financial reporting framework?
UPDATE questions SET
  stem = $EXPL$A new associate at Blake & Harmon LLP is preparing workpapers for the audit of a state pension fund and needs to identify which supplementary schedules qualify as RSI. Which of the following is an example of required supplementary information as designated by an applicable financial reporting framework?$EXPL$
WHERE id = 13995;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 questions)
-- ============================================================

-- ID 1351: Professional Responsibilities (18 words)
-- ORIGINAL STEM: Under professional standards, what is a predecessor auditor's obligation when contacted by a successor auditor with client authorization?
UPDATE questions SET
  stem = $EXPL$Fielding Corp. has decided to engage a new audit firm, Marshall & Cho LLP, for its 2025 audit. After obtaining client authorization, Marshall contacts the predecessor auditor. Under professional standards, what is the predecessor auditor''s obligation upon receiving this inquiry?$EXPL$
WHERE id = 1351;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 questions)
-- ============================================================

-- ID 13898: Professional Skepticism and Judgment (19 words)
-- ORIGINAL STEM: When an auditor encounters a complex or unusual transaction requiring significant professional judgment, auditing standards recommend that the auditor:
UPDATE questions SET
  stem = $EXPL$During the audit of Orion Pharmaceuticals, the engagement team encounters a structured licensing arrangement involving variable consideration and milestone payments that requires significant professional judgment. Auditing standards recommend that the auditor:$EXPL$
WHERE id = 13898;

-- ============================================================
-- QUALITY MANAGEMENT (1 questions)
-- ============================================================

-- ID 361: Quality Management (19 words)
-- ORIGINAL STEM: Audit documentation must be assembled in the final engagement file within how many days of the report release date?
UPDATE questions SET
  stem = $EXPL$Warren & Associates LLP issued its audit report on Sycamore Holdings on February 15, 2026. The engagement team is now organizing the workpapers into the final engagement file. Under professional standards, audit documentation must be assembled within how many days of the report release date?$EXPL$
WHERE id = 361;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (2 questions)
-- ============================================================

-- ID 4529: Responding to Assessed Risks (18 words)
-- ORIGINAL STEM: An auditor identifies a significant risk related to revenue recognition. In responding to this risk, the auditor should:
UPDATE questions SET
  stem = $EXPL$During the planning of the 2025 audit of Apex Software Corp., the engagement team identifies revenue recognition as a significant risk due to complex multi-element arrangements and aggressive sales targets. In responding to this assessed risk, the auditor should:$EXPL$
WHERE id = 4529;

-- ID 13093: Responding to Assessed Risks (18 words)
-- ORIGINAL STEM: Which statement is true about the use of inquiry as an audit procedure when responding to assessed risks?
UPDATE questions SET
  stem = $EXPL$A staff auditor on the Belmont Manufacturing engagement proposes relying primarily on inquiries of management to address several assessed risks during fieldwork. The engagement manager reviews the proposed approach. Which statement is true about the use of inquiry when responding to assessed risks?$EXPL$
WHERE id = 13093;

-- ============================================================
-- REVIEW AND COMPILATION (1 questions)
-- ============================================================

-- ID 1775: Review and Compilation (20 words)
-- ORIGINAL STEM: Which of the following would a CPA most likely perform during a review engagement but NOT during a compilation engagement?
UPDATE questions SET
  stem = $EXPL$A small business owner asks Collins CPA Group about the difference in procedures between a review and a compilation of financial statements. Which of the following would a CPA most likely perform during a review engagement but NOT during a compilation?$EXPL$
WHERE id = 1775;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (1 questions)
-- ============================================================

-- ID 1790: Review/Compilation Engagements (19 words)
-- ORIGINAL STEM: Under AR-C 90, what should an accountant do when an analytical procedure reveals an unexpected result during a review?
UPDATE questions SET
  stem = $EXPL$While performing a review of Ashford Landscaping''s 2025 financial statements, the accountant notices that gross margin dropped from 42% to 28% with no apparent explanation. Under AR-C 90, what should the accountant do when an analytical procedure reveals such an unexpected result?$EXPL$
WHERE id = 1790;

-- ============================================================
-- RISK ASSESSMENT (3 questions)
-- ============================================================

-- ID 278: Risk Assessment (18 words)
-- ORIGINAL STEM: When the auditor assesses inherent risk as high and control risk as high, detection risk must be set:
UPDATE questions SET
  stem = $EXPL$During the audit of Crestview Properties, the engagement team assesses both inherent risk and control risk as high for the valuation of investment properties. To maintain audit risk at an acceptably low level, detection risk must be set:$EXPL$
WHERE id = 278;

-- ID 1488: Risk Assessment (18 words)
-- ORIGINAL STEM: Under AU-C 315, the auditor is required to obtain an understanding of the entity and its environment to:
UPDATE questions SET
  stem = $EXPL$The engagement team for the 2025 audit of Redwood Timber Corp. tours the company''s sawmill operations, reviews industry reports, and interviews management about business strategy. Under AU-C 315, the auditor obtains this understanding of the entity and its environment to:$EXPL$
WHERE id = 1488;

-- ID 1498: Risk Assessment (19 words)
-- ORIGINAL STEM: An auditor identifies the risk of material misstatement at the financial statement level. This type of risk most likely:
UPDATE questions SET
  stem = $EXPL$During the 2025 audit of Concord Holdings, the engagement team identifies concerns about management integrity and an aggressive corporate culture that pervade the entire organization. This financial statement-level risk of material misstatement most likely:$EXPL$
WHERE id = 1498;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4653: Specific Areas and Transactions (16 words)
-- ORIGINAL STEM: A related party transaction conducted at terms significantly different from market terms is most concerning because:
UPDATE questions SET
  stem = $EXPL$Midland Corp. leases office space from a building owned by its CEO at $85 per square foot, while comparable market rates are $52 per square foot. A related party transaction conducted at terms significantly different from market terms is most concerning because:$EXPL$
WHERE id = 4653;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (1 questions)
-- ============================================================

-- ID 17: Substantive Procedures (17 words)
-- ORIGINAL STEM: Under AU-C 520, what type of data produces the most precise expectation in a substantive analytical procedure?
UPDATE questions SET
  stem = $EXPL$An auditor at Prescott & Shaw is developing an expectation for Northbrook Manufacturing''s depreciation expense and wants to maximize precision. Under AU-C 520, what type of data produces the most precise expectation in a substantive analytical procedure?$EXPL$
WHERE id = 17;

-- ============================================================
-- TERMS OF ENGAGEMENT (2 questions)
-- ============================================================

-- ID 13933: Terms of Engagement (17 words)
-- ORIGINAL STEM: What is the primary reason the engagement letter should identify those charged with governance of the entity?
UPDATE questions SET
  stem = $EXPL$Crawford & Wells LLP is drafting the engagement letter for its new audit client, Beacon Health Systems, which has both a board of directors and an audit committee. What is the primary reason the engagement letter should identify those charged with governance?$EXPL$
WHERE id = 13933;

-- ID 4471: Terms of Engagement (18 words)
-- ORIGINAL STEM: Which of the following would most likely cause an auditor to decline to accept a new audit engagement?
UPDATE questions SET
  stem = $EXPL$Porter & Langley LLP is evaluating whether to accept Stratton Dynamics as a new audit client. During the acceptance process, the firm identifies several potential concerns. Which of the following would most likely cause the firm to decline the engagement?$EXPL$
WHERE id = 4471;

-- ============================================================
-- TESTS OF CONTROLS (5 questions)
-- ============================================================

-- ID 14025: Tests of Controls (17 words)
-- ORIGINAL STEM: When the auditor plans to rely on the operating effectiveness of controls, the minimum requirement is to:
UPDATE questions SET
  stem = $EXPL$The engagement team auditing Dover Electronics plans to rely on the company''s automated three-way matching control over purchasing to reduce substantive testing. When the auditor plans to rely on the operating effectiveness of this control, the minimum requirement is to:$EXPL$
WHERE id = 14025;

-- ID 14035: Tests of Controls (17 words)
-- ORIGINAL STEM: When the auditor tests controls at an interim date rather than at year-end, the auditor must also:
UPDATE questions SET
  stem = $EXPL$In September 2025, the auditor of Falcon Aerospace tested key purchasing controls and found them operating effectively. The fiscal year ends December 31. Because the auditor tested controls at an interim date, the auditor must also:$EXPL$
WHERE id = 14035;

-- ID 4567: Tests of Controls (19 words)
-- ORIGINAL STEM: Which of the following audit procedures would be most effective for testing the operating effectiveness of a segregation-of-duties control?
UPDATE questions SET
  stem = $EXPL$Linden Manufacturing requires that the employee who approves vendor invoices cannot also sign checks. The auditor wants to confirm this segregation-of-duties control is operating effectively. Which audit procedure would be most effective for testing this control?$EXPL$
WHERE id = 4567;

-- ID 4575: Tests of Controls (19 words)
-- ORIGINAL STEM: Inquiry alone is sufficient as a test of the operating effectiveness of controls in which of the following situations?
UPDATE questions SET
  stem = $EXPL$A staff auditor on the Wellspring Energy engagement asks the manager whether inquiry of client personnel alone can ever be sufficient to test the operating effectiveness of a control. In which of the following situations is inquiry alone sufficient?$EXPL$
WHERE id = 4575;

-- ID 4582: Tests of Controls (19 words)
-- ORIGINAL STEM: An auditor is testing the design effectiveness of a control. This means the auditor is evaluating whether the control:
UPDATE questions SET
  stem = $EXPL$During the risk assessment phase of the Oakdale Textiles audit, the engagement team reviews management''s credit approval process to assess design effectiveness. Testing the design effectiveness of a control means the auditor is evaluating whether the control:$EXPL$
WHERE id = 4582;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 questions)
-- ============================================================

-- ID 4494: Understanding the Entity and Environment (18 words)
-- ORIGINAL STEM: The auditor's understanding of the entity and its environment is obtained primarily during which phase of the audit?
UPDATE questions SET
  stem = $EXPL$Grayfield & Associates is conducting its first-year audit of a regional healthcare provider and needs to learn about the client''s operations, industry regulations, and accounting policies. The auditor''s understanding of the entity and its environment is obtained primarily during which phase of the audit?$EXPL$
WHERE id = 4494;

-- ============================================================
-- USING THE WORK OF OTHERS (2 questions)
-- ============================================================

-- ID 4549: Using the Work of Others (18 words)
-- ORIGINAL STEM: When the auditor engages an auditor's specialist to assist with audit procedures, the responsibility for the audit opinion:
UPDATE questions SET
  stem = $EXPL$The audit team for Pacific Foods retains an independent valuation expert to appraise the fair value of acquired intangible assets. When the auditor engages such a specialist to assist with audit procedures, responsibility for the audit opinion:$EXPL$
WHERE id = 4549;

-- ID 4565: Using the Work of Others (18 words)
-- ORIGINAL STEM: When using a management's specialist's work as audit evidence, the auditor should evaluate all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$Thornhill Corp.''s management retained an independent actuary to calculate the pension obligation reported in the 2025 financial statements. The auditor plans to use the actuary''s work as audit evidence. When evaluating a management''s specialist''s work, the auditor should evaluate all of the following EXCEPT:$EXPL$
WHERE id = 4565;

COMMIT;
