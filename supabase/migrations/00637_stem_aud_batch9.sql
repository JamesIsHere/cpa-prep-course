-- Migration: Stem expansion — AUD batch 9 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Modifications to the Auditor Report, Nature and Scope of Engagements, Other Information and Supplementary Information, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (2 questions)
-- ============================================================

-- ID 12683: Analytical Procedures (13 words)
-- ORIGINAL STEM: In a review engagement performed under SSARS, analytical procedures serve what primary purpose?
UPDATE questions SET
  stem = $EXPL$Rivera & Associates has been engaged to perform a review of Coastal Freight Inc.''s 2025 financial statements under SSARS. The engagement partner is planning which procedures the team will perform. In a review engagement performed under SSARS, analytical procedures serve what primary purpose?$EXPL$
WHERE id = 12683;

-- ID 4591: Analytical Procedures (14 words)
-- ORIGINAL STEM: The final analytical review performed near the end of the audit is designed to:
UPDATE questions SET
  stem = $EXPL$During the audit of Ridgemont Plastics Inc. for the year ended December 31, 2025, the engagement team has completed all substantive testing and is now performing the required overall review of the financial statements. The final analytical review performed near the end of the audit is designed to:$EXPL$
WHERE id = 4591;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 351: Attestation Engagements (16 words)
-- ORIGINAL STEM: A SOC 3 report differs from a SOC 2 report in that a SOC 3 report:
UPDATE questions SET
  stem = $EXPL$CloudVault Solutions, a data hosting provider, is deciding whether to obtain a SOC 2 or SOC 3 report from its service auditor. The company wants to post the report publicly on its website for prospective clients. A SOC 3 report differs from a SOC 2 report in that a SOC 3 report:$EXPL$
WHERE id = 351;

-- ID 1845: Attestation Engagements (18 words)
-- ORIGINAL STEM: A practitioner performs an AUP engagement and during the procedures discovers potential fraud. The practitioner's obligation is to:
UPDATE questions SET
  stem = $EXPL$Keane & Park CPAs is performing agreed-upon procedures on the royalty reports of a franchise operator for the franchisor. While recalculating reported sales, the practitioner discovers evidence of fictitious transactions that suggest potential fraud. The practitioner''s obligation is to:$EXPL$
WHERE id = 1845;

-- ============================================================
-- AUDIT EVIDENCE (8 questions)
-- ============================================================

-- ID 1621: Audit Evidence (15 words)
-- ORIGINAL STEM: Under the reliability hierarchy, which of the following types of audit evidence is most reliable?
UPDATE questions SET
  stem = $EXPL$While auditing Lakewood Manufacturing''s 2025 financial statements, the engagement team is evaluating the quality of evidence gathered for several assertions. The team discusses the reliability hierarchy of different evidence types. Under the reliability hierarchy, which of the following types of audit evidence is most reliable?$EXPL$
WHERE id = 1621;

-- ID 296: Audit Evidence (16 words)
-- ORIGINAL STEM: When using data analytics to identify unusual journal entries, which characteristic would most likely warrant investigation?
UPDATE questions SET
  stem = $EXPL$The audit team at Brennan & Co. is using data analytics software to analyze all 14,200 journal entries posted by Summit Distribution during 2025. The goal is to flag entries that may indicate error or fraud. Which characteristic would most likely warrant investigation?$EXPL$
WHERE id = 296;

-- ID 1611: Audit Evidence (16 words)
-- ORIGINAL STEM: In evaluating the sufficiency and appropriateness of audit evidence, which of the following relationships is correct?
UPDATE questions SET
  stem = $EXPL$During a team discussion for the audit of Greystone Industries, the manager asks staff to explain how the quantity and quality of evidence interact. In evaluating the sufficiency and appropriateness of audit evidence, which of the following relationships is correct?$EXPL$
WHERE id = 1611;

-- ID 1615: Audit Evidence (16 words)
-- ORIGINAL STEM: When a client's external attorney refuses to respond to an audit inquiry letter, the auditor should:
UPDATE questions SET
  stem = $EXPL$During the audit of Vanguard Electronics for the year ended December 31, 2025, the auditor sent an inquiry letter to the client''s external legal counsel regarding pending litigation. The attorney has declined to respond. The auditor should:$EXPL$
WHERE id = 1615;

-- ID 1629: Audit Evidence (16 words)
-- ORIGINAL STEM: When auditing related party transactions, the auditor is most concerned with which of the following risks?
UPDATE questions SET
  stem = $EXPL$While auditing Pinnacle Holdings, the engagement team discovers that the company sold a warehouse to a partnership controlled by the CEO''s spouse at a price significantly below market value. When auditing related party transactions like this, the auditor is most concerned with which of the following risks?$EXPL$
WHERE id = 1629;

-- ID 1612: Audit Evidence (17 words)
-- ORIGINAL STEM: Which of the following types of evidence provides the strongest support for the existence assertion of equipment?
UPDATE questions SET
  stem = $EXPL$Baxter Manufacturing reported $4.2 million of production equipment on its December 31, 2025, balance sheet. The auditor needs to gather evidence supporting the existence assertion for these assets. Which of the following types of evidence provides the strongest support?$EXPL$
WHERE id = 1612;

-- ID 1618: Audit Evidence (17 words)
-- ORIGINAL STEM: Which of the following audit procedures is most effective for testing the completeness assertion for accounts payable?
UPDATE questions SET
  stem = $EXPL$At December 31, 2025, Clearwater Distributors reported accounts payable of $3.8 million. The auditor is concerned that some vendor invoices received near year-end may not have been recorded. Which audit procedure is most effective for testing the completeness assertion for accounts payable?$EXPL$
WHERE id = 1618;

-- ID 1630: Audit Evidence (17 words)
-- ORIGINAL STEM: An auditor evaluates management's estimate of warranty obligations. Which of the following procedures would be most relevant?
UPDATE questions SET
  stem = $EXPL$Sterling Appliances recorded a $1.6 million warranty reserve at December 31, 2025, based on management''s estimate of future repair costs for units sold during the year. The auditor is evaluating this estimate. Which of the following procedures would be most relevant?$EXPL$
WHERE id = 1630;

-- ============================================================
-- AUDIT PLANNING (2 questions)
-- ============================================================

-- ID 1469: Audit Planning (17 words)
-- ORIGINAL STEM: Which of the following best describes the auditor's responsibility regarding materiality during the course of the audit?
UPDATE questions SET
  stem = $EXPL$During the audit of Hartfield Corp., the engagement partner set overall materiality at $400,000 based on preliminary 2025 financial data. As fieldwork progresses, actual results differ from the planning estimates. Which of the following best describes the auditor''s responsibility regarding materiality during the course of the audit?$EXPL$
WHERE id = 1469;

-- ID 269: Audit Planning (18 words)
-- ORIGINAL STEM: An auditor determines that the client uses a service organization for payroll processing. During planning, the auditor should:
UPDATE questions SET
  stem = $EXPL$While planning the audit of Oakridge Staffing, the engagement team learns that the company outsources all payroll processing to a third-party service organization, PayServ Inc. During planning, the auditor should:$EXPL$
WHERE id = 269;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 1729: Audit Reports (16 words)
-- ORIGINAL STEM: Under AU-C 708, how does a properly disclosed change in accounting principle affect the auditor's report?
UPDATE questions SET
  stem = $EXPL$For its fiscal year ended December 31, 2025, Westin Retail changed its inventory costing method from LIFO to FIFO. The change is properly disclosed in the notes to the financial statements. Under AU-C 708, how does this change in accounting principle affect the auditor''s report?$EXPL$
WHERE id = 1729;

-- ID 19: Audit Reports (17 words)
-- ORIGINAL STEM: Under AU-C 700, which statement is included in an auditor's standard unmodified opinion report on a nonissuer?
UPDATE questions SET
  stem = $EXPL$Alderman & Stein LLP has completed the audit of Maplewood Catering, a privately held company, for the year ended December 31, 2025. The auditor plans to issue a standard unmodified opinion. Under AU-C 700, which statement is included in this report on a nonissuer?$EXPL$
WHERE id = 19;

-- ============================================================
-- AUDIT SAMPLING (1 questions)
-- ============================================================

-- ID 15: Audit Sampling (17 words)
-- ORIGINAL STEM: In attribute sampling for tests of controls, which factor would cause the auditor to increase sample size?
UPDATE questions SET
  stem = $EXPL$The audit team is designing an attribute sampling plan to test the purchase order approval control at Delton Supply Co. The team is determining the appropriate sample size. In attribute sampling for tests of controls, which factor would cause the auditor to increase sample size?$EXPL$
WHERE id = 15;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 1345: Ethics and Independence (18 words)
-- ORIGINAL STEM: Under the AICPA Code, when is a retired partner of a CPA firm not considered a covered member?
UPDATE questions SET
  stem = $EXPL$Carl Jansen recently retired from Mitchell & Reed LLP, which audits Greenfield Technologies. Carl held no role on the Greenfield engagement during his final three years. Under the AICPA Code, when is a retired partner of a CPA firm not considered a covered member?$EXPL$
WHERE id = 1345;

-- ID 95: Ethics and Independence (19 words)
-- ORIGINAL STEM: What is the primary purpose of the cooling-off period before a former audit partner can join an audit client?
UPDATE questions SET
  stem = $EXPL$After rotating off the Monarch Energy audit engagement, lead partner Diane Foster receives a job offer to become Monarch''s controller. A mandatory waiting period applies before she can accept. What is the primary purpose of the cooling-off period before a former audit partner can join an audit client?$EXPL$
WHERE id = 95;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (1 questions)
-- ============================================================

-- ID 1135: Government Auditing Standards (15 words)
-- ORIGINAL STEM: In a single audit, the Schedule of Expenditures of Federal Awards (SEFA) serves which purpose?
UPDATE questions SET
  stem = $EXPL$The City of Briarwood expended $2.1 million in federal awards during fiscal year 2025 and is subject to a single audit under the Uniform Guidance. The auditor is reviewing the required supplementary schedule. The Schedule of Expenditures of Federal Awards (SEFA) serves which purpose?$EXPL$
WHERE id = 1135;

-- ============================================================
-- INDEPENDENCE (1 questions)
-- ============================================================

-- ID 4434: Independence (15 words)
-- ORIGINAL STEM: Which of the following individuals is considered a "covered member" under the AICPA independence rules?
UPDATE questions SET
  stem = $EXPL$Blake & Harmon LLP audits Tandem Financial Group. The firm is evaluating whether certain personnel are subject to the independence restrictions that apply to covered members. Which of the following individuals is considered a "covered member" under the AICPA independence rules?$EXPL$
WHERE id = 4434;

-- ============================================================
-- INTERNAL CONTROLS (2 questions)
-- ============================================================

-- ID 1564: Internal Controls (17 words)
-- ORIGINAL STEM: An auditor performs a walkthrough of the revenue cycle. The primary purpose of a walkthrough is to:
UPDATE questions SET
  stem = $EXPL$During the audit of Spectrum Electronics, the senior auditor traces a single sales transaction from initiation through the general ledger to confirm the auditor''s understanding of the revenue cycle. The primary purpose of this walkthrough is to:$EXPL$
WHERE id = 1564;

-- ID 292: Internal Controls (18 words)
-- ORIGINAL STEM: When a material weakness in internal control is identified during a non-issuer audit, the auditor must communicate it:
UPDATE questions SET
  stem = $EXPL$While testing controls at Pacific Coast Distributors, a non-issuer, the auditor identifies a material weakness in the company''s cash disbursement process. The auditor must communicate this material weakness:$EXPL$
WHERE id = 292;

-- ============================================================
-- MATERIALITY (2 questions)
-- ============================================================

-- ID 13041: Materiality (15 words)
-- ORIGINAL STEM: Under auditing standards, the auditor establishes materiality for the financial statements as a whole when:
UPDATE questions SET
  stem = $EXPL$Garcia & Wong LLP is beginning the audit of Prism Technologies for the year ended December 31, 2025. The engagement partner is determining the appropriate benchmark and percentage for overall materiality. Under auditing standards, the auditor establishes materiality for the financial statements as a whole when:$EXPL$
WHERE id = 13041;

-- ID 13049: Materiality (15 words)
-- ORIGINAL STEM: Before communicating uncorrected misstatements to those charged with governance, the auditor is required to first:
UPDATE questions SET
  stem = $EXPL$Near the end of the audit of Trident Manufacturing, the engagement team has accumulated several uncorrected misstatements totaling $185,000, which is below overall materiality. Before communicating these uncorrected misstatements to those charged with governance, the auditor is required to first:$EXPL$
WHERE id = 13049;

-- ============================================================
-- MODIFICATIONS TO THE AUDITOR REPORT (1 questions)
-- ============================================================

-- ID 4673: Modifications to the Auditor Report (14 words)
-- ORIGINAL STEM: Which of the following situations would most likely result in a disclaimer of opinion?
UPDATE questions SET
  stem = $EXPL$Novak & Associates is completing the audit of a manufacturing client whose inventory constitutes 75% of total assets. The client engaged the firm after the physical count was completed, and alternative procedures cannot provide sufficient evidence. Which of the following situations would most likely result in a disclaimer of opinion?$EXPL$
WHERE id = 4673;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 4424: Nature and Scope of Engagements (16 words)
-- ORIGINAL STEM: When an entity has multiple components or locations, the auditor's scope determination must include consideration of:
UPDATE questions SET
  stem = $EXPL$Consolidated Logistics operates through twelve regional warehouses across five states, each maintaining its own accounting records. During planning, the auditor is determining the audit scope. When an entity has multiple components or locations, the auditor''s scope determination must include consideration of:$EXPL$
WHERE id = 4424;

-- ID 4423: Nature and Scope of Engagements (17 words)
-- ORIGINAL STEM: In determining the scope of an audit engagement, the auditor must consider all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$Porter & Ellis LLP has been engaged to audit Atlas Engineering for the year ended December 31, 2025. The engagement partner is finalizing the scope of the engagement. In determining the scope of an audit engagement, the auditor must consider all of the following EXCEPT:$EXPL$
WHERE id = 4423;

-- ============================================================
-- OTHER INFORMATION AND SUPPLEMENTARY INFORMATION (1 questions)
-- ============================================================

-- ID 14000: Other Information and Supplementary Information (16 words)
-- ORIGINAL STEM: What level of assurance does the auditor provide on required supplementary information (RSI) under AU-C 730?
UPDATE questions SET
  stem = $EXPL$The City of Thornton presents a management''s discussion and analysis section alongside its basic financial statements as required supplementary information. The auditor has read the RSI and applied limited procedures. What level of assurance does the auditor provide on required supplementary information (RSI) under AU-C 730?$EXPL$
WHERE id = 14000;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 questions)
-- ============================================================

-- ID 144: Professional Responsibilities (16 words)
-- ORIGINAL STEM: What is a CPA's professional responsibility upon discovering an error in a previously filed tax return?
UPDATE questions SET
  stem = $EXPL$While preparing 2025 tax returns for a client, CPA Maria Sandoval discovers that the client''s 2024 federal return contained a computational error that understated taxable income by $28,000. What is the CPA''s professional responsibility upon discovering this error in the previously filed return?$EXPL$
WHERE id = 144;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 questions)
-- ============================================================

-- ID 4458: Professional Skepticism and Judgment (16 words)
-- ORIGINAL STEM: Which of the following is an appropriate response when contradictory evidence is discovered during an audit?
UPDATE questions SET
  stem = $EXPL$During the audit of Beacon Financial, the engagement team obtains a bank confirmation showing a balance that conflicts with management''s reconciliation by $340,000. Which of the following is an appropriate response when contradictory evidence like this is discovered during an audit?$EXPL$
WHERE id = 4458;

-- ============================================================
-- QUALITY MANAGEMENT (1 questions)
-- ============================================================

-- ID 1386: Quality Management (17 words)
-- ORIGINAL STEM: Under SQMS No. 2, the engagement quality reviewer must perform the review with what level of involvement?
UPDATE questions SET
  stem = $EXPL$Morrison & Hall LLP assigns partner Janet Lowe to serve as the engagement quality reviewer for the audit of a public-interest entity. Under SQMS No. 2, the engagement quality reviewer must perform the review with what level of involvement?$EXPL$
WHERE id = 1386;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (2 questions)
-- ============================================================

-- ID 4534: Responding to Assessed Risks (16 words)
-- ORIGINAL STEM: When the auditor plans to rely on controls to reduce substantive testing, the auditor must first:
UPDATE questions SET
  stem = $EXPL$During the audit of Keystone Pharma, the engagement team plans to rely on the automated three-way matching control in the purchasing cycle to reduce the extent of substantive testing over disbursements. Before doing so, the auditor must first:$EXPL$
WHERE id = 4534;

-- ID 13098: Responding to Assessed Risks (16 words)
-- ORIGINAL STEM: What must the auditor's documentation include regarding the relationship between assessed risks and further audit procedures?
UPDATE questions SET
  stem = $EXPL$A PCAOB inspection reviewer is examining the workpapers for the audit of Orion Systems. The reviewer asks the engagement team to demonstrate how risk assessments drove procedure design. What must the auditor''s documentation include regarding the relationship between assessed risks and further audit procedures?$EXPL$
WHERE id = 13098;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 341: Review and Compilation (16 words)
-- ORIGINAL STEM: If during a review engagement the accountant becomes aware of a material misstatement, the accountant should:
UPDATE questions SET
  stem = $EXPL$While performing analytical procedures for a review of Horizon Catering''s 2025 financial statements, the accountant discovers that depreciation expense appears to have been omitted entirely, a potentially material amount. If during a review engagement the accountant becomes aware of a material misstatement, the accountant should:$EXPL$
WHERE id = 341;

-- ID 343: Review and Compilation (16 words)
-- ORIGINAL STEM: A client requests that the accountant omit substantially all disclosures from compiled financial statements. This is:
UPDATE questions SET
  stem = $EXPL$The owner of Summit Landscaping asks CPA Lydia Chen to compile the company''s year-end financial statements but requests that substantially all note disclosures be omitted to reduce costs. Under SSARS, this request is:$EXPL$
WHERE id = 343;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (1 questions)
-- ============================================================

-- ID 24: Review/Compilation Engagements (16 words)
-- ORIGINAL STEM: Under AR-C 90, which procedures are required in a review engagement but not in a compilation?
UPDATE questions SET
  stem = $EXPL$Torres & Associates has been asked to perform a review rather than a compilation for a small retail client. The engagement partner is explaining to the staff how the procedures differ between the two service levels. Under AR-C 90, which procedures are required in a review engagement but not in a compilation?$EXPL$
WHERE id = 24;

-- ============================================================
-- RISK ASSESSMENT (2 questions)
-- ============================================================

-- ID 1500: Risk Assessment (17 words)
-- ORIGINAL STEM: When the auditor assesses inherent risk as high for a particular assertion, the auditor should respond by:
UPDATE questions SET
  stem = $EXPL$During the audit of Cascade Mining Corp., the team assesses inherent risk as high for the valuation assertion of the company''s mineral rights, which involve complex geological estimates. The auditor should respond by:$EXPL$
WHERE id = 1500;

-- ID 1509: Risk Assessment (17 words)
-- ORIGINAL STEM: An auditor identifies a significant risk related to the valuation of goodwill. The auditor's response should include:
UPDATE questions SET
  stem = $EXPL$Apex Media Group acquired a digital advertising firm in March 2025 and recorded $12 million of goodwill. During the year-end audit, the engagement team identifies the goodwill valuation as a significant risk. The auditor''s response should include:$EXPL$
WHERE id = 1509;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 4659: Specific Areas and Transactions (13 words)
-- ORIGINAL STEM: The primary risk associated with related party transactions from an audit perspective is:
UPDATE questions SET
  stem = $EXPL$During the audit of Redwood Industries, the team discovers that the company leased office space from a partnership owned by its CFO at above-market rates. From an audit perspective, the primary risk associated with related party transactions is:$EXPL$
WHERE id = 4659;

-- ID 7608: Specific Areas and Transactions (13 words)
-- ORIGINAL STEM: In audit planning, the extent of substantive procedures primarily refers to which factor?
UPDATE questions SET
  stem = $EXPL$While planning the audit of Vertex Logistics, the engagement manager discusses with staff how the team will calibrate its testing in higher-risk areas. In audit planning, the extent of substantive procedures primarily refers to which factor?$EXPL$
WHERE id = 7608;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (2 questions)
-- ============================================================

-- ID 1697: Substantive Procedures (15 words)
-- ORIGINAL STEM: Under AU-C 570, how should the auditor evaluate management's plans to mitigate going concern doubt?
UPDATE questions SET
  stem = $EXPL$Northgate Retail has reported recurring operating losses and negative cash flows for three consecutive years. Management has presented the auditor with a plan to secure additional financing and close underperforming locations. Under AU-C 570, how should the auditor evaluate management''s plans to mitigate going concern doubt?$EXPL$
WHERE id = 1697;

-- ID 319: Substantive Procedures (16 words)
-- ORIGINAL STEM: If substantial doubt about going concern exists and the entity provides adequate disclosure, the auditor should:
UPDATE questions SET
  stem = $EXPL$After evaluating management''s plans, the auditor of Crestline Industries concludes that substantial doubt about the company''s ability to continue as a going concern remains. The financial statements include adequate disclosure of the going concern uncertainty. The auditor should:$EXPL$
WHERE id = 319;

-- ============================================================
-- TERMS OF ENGAGEMENT (2 questions)
-- ============================================================

-- ID 4474: Terms of Engagement (16 words)
-- ORIGINAL STEM: Which of the following is a management responsibility that should be acknowledged in the engagement letter?
UPDATE questions SET
  stem = $EXPL$Harper & Finch LLP is drafting the engagement letter for its new audit client, Bridgeport Logistics. The letter must clearly delineate management''s responsibilities. Which of the following is a management responsibility that should be acknowledged in the engagement letter?$EXPL$
WHERE id = 4474;

-- ID 4482: Terms of Engagement (16 words)
-- ORIGINAL STEM: Which of the following would require the auditor to establish new engagement terms with the client?
UPDATE questions SET
  stem = $EXPL$Patel & Associates has audited Denton Manufacturing for six consecutive years under the same engagement letter. Several significant changes have occurred at Denton during the current year. Which of the following would require the auditor to establish new engagement terms with the client?$EXPL$
WHERE id = 4482;

-- ============================================================
-- TESTS OF CONTROLS (2 questions)
-- ============================================================

-- ID 12821: Tests of Controls (16 words)
-- ORIGINAL STEM: A control that is designed to stop errors or irregularities before they occur is classified as:
UPDATE questions SET
  stem = $EXPL$At Windham Electronics, the purchasing system requires a supervisor to approve every purchase order above $5,000 before it is transmitted to the vendor. A control designed to stop errors or irregularities before they occur is classified as:$EXPL$
WHERE id = 12821;

-- ID 4568: Tests of Controls (17 words)
-- ORIGINAL STEM: When testing a manual control that is performed monthly (12 times per year), the auditor should test:
UPDATE questions SET
  stem = $EXPL$Silverline Corp.''s controller performs a monthly bank reconciliation review for all eight cash accounts. The auditor plans to rely on this control and needs to determine how many instances to test. When testing a manual control performed monthly (12 times per year), the auditor should test:$EXPL$
WHERE id = 4568;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 questions)
-- ============================================================

-- ID 4504: Understanding the Entity and Environment (16 words)
-- ORIGINAL STEM: The auditor's understanding of the entity includes understanding the entity's ownership structure. This is important because:
UPDATE questions SET
  stem = $EXPL$While planning the audit of Meridian Holdings, the engagement team learns that the company is privately held by three family trusts with complex cross-ownership arrangements. Understanding the entity''s ownership structure is important because:$EXPL$
WHERE id = 4504;

-- ============================================================
-- USING THE WORK OF OTHERS (2 questions)
-- ============================================================

-- ID 4546: Using the Work of Others (15 words)
-- ORIGINAL STEM: Before using the work of internal auditors, the external auditor must evaluate the internal auditors':
UPDATE questions SET
  stem = $EXPL$During the audit of Continental Insurance, the engagement team considers using testing performed by the company''s internal audit department to supplement their own procedures. Before using the work of internal auditors, the external auditor must evaluate the internal auditors'':$EXPL$
WHERE id = 4546;

-- ID 4558: Using the Work of Others (16 words)
-- ORIGINAL STEM: If a SOC 1 Type 2 report contains exceptions in control testing, the user auditor should:
UPDATE questions SET
  stem = $EXPL$While auditing Parkview Medical Group, the engagement team reviews the SOC 1 Type 2 report from the client''s claims processing service organization and notes several exceptions in the control testing results. The user auditor should:$EXPL$
WHERE id = 4558;

COMMIT;
