-- Migration: Stem expansion — AUD batch 8 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Internal Controls, Materiality, Modifications to the Auditor Report, Other Information and Supplementary Information, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (2 questions)
-- ============================================================

-- ID 12664: Analytical Procedures (13 words)
-- ORIGINAL STEM: What is scanning as it relates to analytical procedures performed during an audit?
UPDATE questions SET
  stem = $EXPL$During the overall review stage of the audit of Beacon Manufacturing, the senior auditor reads through the general ledger looking for unusual items or entries that warrant further investigation. What is this technique known as in the context of analytical procedures?$EXPL$
WHERE id = 12664;

-- ID 12672: Analytical Procedures (13 words)
-- ORIGINAL STEM: What is a proof-in-total when used as an analytical procedure during an audit?
UPDATE questions SET
  stem = $EXPL$While auditing Kepler Staffing''s payroll expense, the auditor multiplies the average headcount by the average pay rate and compares the result to the recorded balance. What is this type of analytical procedure called?$EXPL$
WHERE id = 12672;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1819: Attestation Engagements (14 words)
-- ORIGINAL STEM: In an examination engagement under AT-C 205, the practitioner provides what level of assurance?
UPDATE questions SET
  stem = $EXPL$Whitfield & Associates has been engaged to examine Pinnacle Corp''s assertion that its cybersecurity controls are effective as of December 31, 2025. Under AT-C 205, what level of assurance does the practitioner provide in this examination engagement?$EXPL$
WHERE id = 1819;

-- ID 357: Attestation Engagements (15 words)
-- ORIGINAL STEM: The Trust Services Criteria used in SOC 2 engagements include all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$DataVault Cloud Services is preparing for a SOC 2 Type 2 engagement to demonstrate control effectiveness to its enterprise clients. The engagement will evaluate controls under the Trust Services Criteria. These criteria include all of the following EXCEPT:$EXPL$
WHERE id = 357;

-- ============================================================
-- AUDIT EVIDENCE (3 questions)
-- ============================================================

-- ID 1628: Audit Evidence (14 words)
-- ORIGINAL STEM: Which of the following is an example of a Type I (recognized) subsequent event?
UPDATE questions SET
  stem = $EXPL$The auditor of Lakewood Distributors is evaluating events occurring between the December 31, 2025 balance sheet date and the report release date. Which of the following is an example of a Type I (recognized) subsequent event?$EXPL$
WHERE id = 1628;

-- ID 14: Audit Evidence (15 words)
-- ORIGINAL STEM: Under AU-C 505, what must the auditor do when positive confirmation requests are not returned?
UPDATE questions SET
  stem = $EXPL$During the accounts receivable confirmation process for Redstone Retail, the auditor sent positive confirmations to 40 customers. Five customers have not responded despite a second request. Under AU-C 505, what must the auditor do regarding these non-responses?$EXPL$
WHERE id = 14;

-- ID 1279: Audit Evidence (15 words)
-- ORIGINAL STEM: In the context of accounting estimates under SAS No. 143, the "data" component refers to:
UPDATE questions SET
  stem = $EXPL$Greystone Financial reported a $2.4 million allowance for loan losses at year-end. The auditor is evaluating this estimate under SAS No. 143 by examining the three key components. The "data" component of this estimate refers to:$EXPL$
WHERE id = 1279;

-- ============================================================
-- AUDIT PLANNING (3 questions)
-- ============================================================

-- ID 97: Audit Planning (16 words)
-- ORIGINAL STEM: How should a prior going concern qualification by the predecessor auditor affect the current auditor's planning?
UPDATE questions SET
  stem = $EXPL$Mercer & Lane LLP is the newly engaged auditor of Coastal Transport Inc. The predecessor auditor''s report from the prior year included a going concern emphasis-of-matter paragraph. How should this prior qualification affect Mercer & Lane''s current audit planning?$EXPL$
WHERE id = 97;

-- ID 1444: Audit Planning (16 words)
-- ORIGINAL STEM: An engagement letter for an audit of financial statements should include all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$Hargrove CPA Firm is drafting an engagement letter for its new audit client, Orion Healthcare Group. The partner wants to ensure the letter covers all required elements. An engagement letter for this audit should include all of the following EXCEPT:$EXPL$
WHERE id = 1444;

-- ID 1450: Audit Planning (17 words)
-- ORIGINAL STEM: During audit planning, the auditor should obtain an understanding of the entity's internal audit function primarily to:
UPDATE questions SET
  stem = $EXPL$While planning the 2025 audit of Pacific Industries, the engagement team learns that the company has a five-person internal audit department. During planning, the auditor should obtain an understanding of this internal audit function primarily to:$EXPL$
WHERE id = 1450;

-- ============================================================
-- AUDIT REPORTS (3 questions)
-- ============================================================

-- ID 335: Audit Reports (16 words)
-- ORIGINAL STEM: Under AU-C 700, the date of the auditor's report should be no earlier than what event?
UPDATE questions SET
  stem = $EXPL$The engagement partner for the Tidewater Corp audit is determining the appropriate date to place on the auditor''s report. Under AU-C 700, the report date should be no earlier than what event?$EXPL$
WHERE id = 335;

-- ID 1718: Audit Reports (16 words)
-- ORIGINAL STEM: Which of the following circumstances would most likely require an emphasis-of-matter paragraph in the auditor's report?
UPDATE questions SET
  stem = $EXPL$Caldwell & Associates has completed the 2025 audit of Vertex Pharmaceuticals and is drafting the audit report. The engagement team is considering whether additional paragraphs are needed. Which circumstance would most likely require an emphasis-of-matter paragraph?$EXPL$
WHERE id = 1718;

-- ID 1721: Audit Reports (16 words)
-- ORIGINAL STEM: Under AU-C 701, what must the auditor describe for each key audit matter in the report?
UPDATE questions SET
  stem = $EXPL$The auditor of Crestline Technologies has identified two key audit matters to communicate in the audit report. Under AU-C 701, what must the auditor describe for each key audit matter?$EXPL$
WHERE id = 1721;

-- ============================================================
-- AUDIT SAMPLING (2 questions)
-- ============================================================

-- ID 1665: Audit Sampling (14 words)
-- ORIGINAL STEM: When defining the population for sampling, the auditor should ensure that the population is:
UPDATE questions SET
  stem = $EXPL$The audit team for Holloway Electronics is designing a sampling plan to test accounts receivable confirmations. Before selecting items, the senior auditor is defining the population. When defining the population for sampling, the auditor should ensure that the population is:$EXPL$
WHERE id = 1665;

-- ID 117: Audit Sampling (15 words)
-- ORIGINAL STEM: In attribute sampling for tests of controls, what does the tolerable rate of deviation represent?
UPDATE questions SET
  stem = $EXPL$An auditor is planning attribute sampling to test the purchase approval control at Ridgewood Supply Co. The auditor sets the tolerable rate of deviation at 5%. In attribute sampling for tests of controls, what does this tolerable rate represent?$EXPL$
WHERE id = 117;

-- ============================================================
-- ETHICS AND INDEPENDENCE (3 questions)
-- ============================================================

-- ID 1314: Ethics and Independence (18 words)
-- ORIGINAL STEM: Under the AICPA Code, which type of financial interest held by a covered member does NOT impair independence?
UPDATE questions SET
  stem = $EXPL$Sarah Chen, a senior manager on the engagement team for Broadleaf Inc., recently inherited investments from her late uncle. She is evaluating which holdings might impair her independence. Under the AICPA Code, which type of financial interest held by a covered member does NOT impair independence?$EXPL$
WHERE id = 1314;

-- ID 1322: Ethics and Independence (18 words)
-- ORIGINAL STEM: Which safeguard is most effective in mitigating a familiarity threat caused by long association with an audit client?
UPDATE questions SET
  stem = $EXPL$Mark Torres has been the lead engagement partner for Summit Logistics for nine consecutive years. The firm''s quality management team has flagged a familiarity threat. Which safeguard is most effective in mitigating this threat caused by long association with the client?$EXPL$
WHERE id = 1322;

-- ID 1335: Ethics and Independence (18 words)
-- ORIGINAL STEM: Under the AICPA Code, what is the rule regarding contingent fees for services provided to an attest client?
UPDATE questions SET
  stem = $EXPL$Brighton CPA Firm performs the annual audit for Maplewood Enterprises. A partner has proposed charging a contingent fee for a separate tax consulting project with Maplewood. Under the AICPA Code, what is the rule regarding contingent fees for services provided to an attest client?$EXPL$
WHERE id = 1335;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (2 questions)
-- ============================================================

-- ID 1440: Government Auditing Standards (14 words)
-- ORIGINAL STEM: Under the Uniform Guidance, the schedule of expenditures of federal awards (SEFA) must include:
UPDATE questions SET
  stem = $EXPL$Valley Regional Health Center expended $3.2 million in federal awards during fiscal year 2025 and is preparing its single audit reporting package. Under the Uniform Guidance, the schedule of expenditures of federal awards (SEFA) must include:$EXPL$
WHERE id = 1440;

-- ID 1129: Government Auditing Standards (15 words)
-- ORIGINAL STEM: Under GAGAS, auditors must complete how many hours of continuing professional education every two years?
UPDATE questions SET
  stem = $EXPL$A newly hired staff auditor at the state comptroller''s office will be performing audits under Government Auditing Standards. Under GAGAS, auditors must complete how many hours of continuing professional education every two years?$EXPL$
WHERE id = 1129;

-- ============================================================
-- INTERNAL CONTROLS (2 questions)
-- ============================================================

-- ID 288: Internal Controls (17 words)
-- ORIGINAL STEM: Which of the following is the strongest form of evidence about the operating effectiveness of a control?
UPDATE questions SET
  stem = $EXPL$The audit team at Prescott Manufacturing is testing a manual three-way matching control over vendor invoices. The team is determining which procedure to perform. Which of the following provides the strongest evidence about the operating effectiveness of this control?$EXPL$
WHERE id = 288;

-- ID 1535: Internal Controls (17 words)
-- ORIGINAL STEM: Segregation of duties is a key control activity. Which of the following represents proper segregation of duties?
UPDATE questions SET
  stem = $EXPL$During the walkthroughs at Riverdale Savings Bank, the auditor evaluates whether incompatible functions are properly separated across the cash disbursement cycle. Which of the following represents proper segregation of duties?$EXPL$
WHERE id = 1535;

-- ============================================================
-- MATERIALITY (2 questions)
-- ============================================================

-- ID 4515: Materiality (14 words)
-- ORIGINAL STEM: Specific materiality for particular classes of transactions, account balances, or disclosures is set when:
UPDATE questions SET
  stem = $EXPL$During planning for the audit of Northgate Pharmaceuticals, the engagement partner considers whether certain account balances require a lower materiality threshold than the overall materiality level. Specific materiality for particular classes of transactions, account balances, or disclosures is set when:$EXPL$
WHERE id = 4515;

-- ID 13020: Materiality (15 words)
-- ORIGINAL STEM: The clearly trivial threshold established by the auditor represents the amount below which misstatements are:
UPDATE questions SET
  stem = $EXPL$The audit team for Clearwater Corp set overall materiality at $500,000 and performance materiality at $375,000. They also established a clearly trivial threshold of $25,000. This clearly trivial threshold represents the amount below which misstatements are:$EXPL$
WHERE id = 13020;

-- ============================================================
-- MODIFICATIONS TO THE AUDITOR REPORT (2 questions)
-- ============================================================

-- ID 4679: Modifications to the Auditor Report (12 words)
-- ORIGINAL STEM: When an auditor issues an adverse opinion, the adverse opinion relates to:
UPDATE questions SET
  stem = $EXPL$After completing the audit of Garrison Industries, the engagement partner determines that the entity''s failure to consolidate a material subsidiary creates pervasive misstatements. The partner plans to issue an adverse opinion. When issued, the adverse opinion relates to:$EXPL$
WHERE id = 4679;

-- ID 4683: Modifications to the Auditor Report (12 words)
-- ORIGINAL STEM: An emphasis-of-matter paragraph is typically used for all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$The engagement partner for Willow Creek Industries is considering whether to add an emphasis-of-matter paragraph to the audit report. An emphasis-of-matter paragraph is typically used for all of the following EXCEPT:$EXPL$
WHERE id = 4683;

-- ============================================================
-- OTHER INFORMATION AND SUPPLEMENTARY INFORMATION (2 questions)
-- ============================================================

-- ID 4701: Other Information and Supplementary Information (15 words)
-- ORIGINAL STEM: The auditor reads the other information to identify material inconsistencies. A "material inconsistency" exists when:
UPDATE questions SET
  stem = $EXPL$While reviewing Trident Corp''s annual report, the auditor notices that management''s discussion describes revenue growth of 12%, while the audited income statement shows revenue declined 3%. The auditor reads the other information to identify material inconsistencies. A "material inconsistency" exists when:$EXPL$
WHERE id = 4701;

-- ID 4698: Other Information and Supplementary Information (16 words)
-- ORIGINAL STEM: The auditor's responsibility for other information is different from the responsibility for the financial statements because:
UPDATE questions SET
  stem = $EXPL$Silverline Corp includes a president''s letter and operational statistics alongside the audited financial statements in its annual report. The auditor''s responsibility for this other information is different from the responsibility for the financial statements because:$EXPL$
WHERE id = 4698;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 1374: Professional Responsibilities (14 words)
-- ORIGINAL STEM: Under the AICPA Code, a CPA who uses the work of a specialist must:
UPDATE questions SET
  stem = $EXPL$The audit of Cascade Mining requires a geological engineer to estimate ore reserve values. The engagement partner plans to rely on the specialist''s findings. Under the AICPA Code, a CPA who uses the work of a specialist must:$EXPL$
WHERE id = 1374;

-- ID 1346: Professional Responsibilities (15 words)
-- ORIGINAL STEM: Under the AICPA Code of Professional Conduct, what does the principle of due care require?
UPDATE questions SET
  stem = $EXPL$A new staff accountant at Monroe & Associates asks the partner about the firm''s ethical obligations when taking on engagements outside their typical industry. Under the AICPA Code of Professional Conduct, what does the principle of due care require?$EXPL$
WHERE id = 1346;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (2 questions)
-- ============================================================

-- ID 4462: Professional Skepticism and Judgment (15 words)
-- ORIGINAL STEM: When an auditor encounters a situation not specifically addressed by auditing standards, the auditor should:
UPDATE questions SET
  stem = $EXPL$While auditing Evergreen Biotech, the senior auditor encounters an unusual revenue arrangement involving milestone payments that is not specifically addressed by existing auditing standards. In this situation, the auditor should:$EXPL$
WHERE id = 4462;

-- ID 4464: Professional Skepticism and Judgment (15 words)
-- ORIGINAL STEM: Which of the following best describes how professional skepticism should be applied throughout the audit?
UPDATE questions SET
  stem = $EXPL$During a team discussion for the Atlas Dynamics audit, a new associate asks how professional skepticism should be maintained when management has always been cooperative and transparent. Which of the following best describes how professional skepticism should be applied throughout the audit?$EXPL$
WHERE id = 4464;

-- ============================================================
-- QUALITY MANAGEMENT (2 questions)
-- ============================================================

-- ID 1384: Quality Management (15 words)
-- ORIGINAL STEM: Under SQMS No. 1, who has ultimate responsibility for the firm's system of quality management?
UPDATE questions SET
  stem = $EXPL$Sterling & Webb LLP recently redesigned its quality management system to comply with SQMS No. 1. During a peer review, the reviewer asks who bears ultimate responsibility for the firm''s system of quality management. Under SQMS No. 1, the answer is:$EXPL$
WHERE id = 1384;

-- ID 138: Quality Management (16 words)
-- ORIGINAL STEM: An audit firm is required to perform an engagement quality review for which of the following?
UPDATE questions SET
  stem = $EXPL$The managing partner of Franklin & Associates is updating the firm''s policies on engagement quality reviews under SQMS No. 2. An audit firm is required to perform an engagement quality review for which of the following engagements?$EXPL$
WHERE id = 138;

-- ============================================================
-- REVIEW AND COMPILATION (1 questions)
-- ============================================================

-- ID 339: Review and Compilation (16 words)
-- ORIGINAL STEM: In a preparation engagement, the legend "No assurance is provided on these financial statements" must appear:
UPDATE questions SET
  stem = $EXPL$Thornton CPA assists a small landscaping company by preparing its year-end financial statements under AR-C 70. The accountant is formatting the final output. In a preparation engagement, the legend "No assurance is provided on these financial statements" must appear:$EXPL$
WHERE id = 339;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1793: Review/Compilation Engagements (15 words)
-- ORIGINAL STEM: Under AR-C 80, what must the compilation report include when substantially all disclosures are omitted?
UPDATE questions SET
  stem = $EXPL$Patel CPA compiled the 2025 financial statements for a privately held restaurant. Management elected to omit substantially all footnote disclosures. Under AR-C 80, what must the compilation report include when substantially all disclosures are omitted?$EXPL$
WHERE id = 1793;

-- ID 1801: Review/Compilation Engagements (15 words)
-- ORIGINAL STEM: Under AR-C 90, the accountant's review report must include a statement that a review is:
UPDATE questions SET
  stem = $EXPL$Barnes & Klein LLP has completed the review of Hilltop Rentals'' 2025 financial statements. The accountant is drafting the report. Under AR-C 90, the accountant''s review report must include a statement that a review is:$EXPL$
WHERE id = 1801;

-- ============================================================
-- RISK ASSESSMENT (3 questions)
-- ============================================================

-- ID 1519: Risk Assessment (16 words)
-- ORIGINAL STEM: When the auditor identifies a risk of material misstatement at the assertion level, the auditor must:
UPDATE questions SET
  stem = $EXPL$During the risk assessment phase for Vanguard Electronics, the engagement team identifies a significant risk of misstatement in the inventory valuation assertion due to rapid product obsolescence. When the auditor identifies such a risk at the assertion level, the auditor must:$EXPL$
WHERE id = 1519;

-- ID 103: Risk Assessment (17 words)
-- ORIGINAL STEM: Which component of audit risk is most directly affected by significant regulatory changes in a client's industry?
UPDATE questions SET
  stem = $EXPL$Meridian Financial Services recently became subject to new federal lending regulations that significantly alter how the company measures expected credit losses. Which component of audit risk is most directly affected by these regulatory changes?$EXPL$
WHERE id = 103;

-- ID 1492: Risk Assessment (17 words)
-- ORIGINAL STEM: Which of the following is an inherent risk factor that would increase the risk of material misstatement?
UPDATE questions SET
  stem = $EXPL$The engagement team for Aurora Investments is assessing inherent risk during planning. The company holds a large portfolio of Level 3 fair value instruments with unobservable inputs. Which of the following is an inherent risk factor that would increase the risk of material misstatement?$EXPL$
WHERE id = 1492;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 4652: Specific Areas and Transactions (13 words)
-- ORIGINAL STEM: When auditing opening balances in an initial (first-year) audit engagement, the auditor should:
UPDATE questions SET
  stem = $EXPL$Collins & Price LLP was recently engaged to perform the first audit of Brightstar Logistics, which was previously unaudited. When auditing opening balances in this initial engagement, the auditor should:$EXPL$
WHERE id = 4652;

-- ID 4656: Specific Areas and Transactions (13 words)
-- ORIGINAL STEM: Comparative financial information in the current year financial statements requires the auditor to:
UPDATE questions SET
  stem = $EXPL$Apex Corp presents comparative financial statements for 2024 and 2025. The auditor issued an unmodified opinion on both years. When comparative financial information is included in the current year financial statements, the auditor is required to:$EXPL$
WHERE id = 4656;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (2 questions)
-- ============================================================

-- ID 1676: Substantive Procedures (15 words)
-- ORIGINAL STEM: Under AU-C 500, what is the correct approach for testing the completeness assertion for revenue?
UPDATE questions SET
  stem = $EXPL$The audit team for Horizon Freight is designing substantive procedures to test whether all shipping services performed during 2025 were recorded as revenue. Under AU-C 500, what is the correct approach for testing the completeness assertion for revenue?$EXPL$
WHERE id = 1676;

-- ID 1694: Substantive Procedures (15 words)
-- ORIGINAL STEM: Which substantive procedure is most effective for detecting fictitious vendors in an accounts payable system?
UPDATE questions SET
  stem = $EXPL$During the audit of Granite Construction, the engagement team suspects that disbursement fraud may involve payments to non-existent suppliers. Which substantive procedure is most effective for detecting fictitious vendors in the accounts payable system?$EXPL$
WHERE id = 1694;

-- ============================================================
-- TESTS OF CONTROLS (2 questions)
-- ============================================================

-- ID 12819: Tests of Controls (15 words)
-- ORIGINAL STEM: In attributes sampling for tests of controls, the tolerable rate of deviation is defined as:
UPDATE questions SET
  stem = $EXPL$An auditor is designing attributes sampling to test Westbrook Inc.''s purchase order approval control. The auditor sets the tolerable deviation rate at 6%. In attributes sampling for tests of controls, this tolerable rate of deviation is defined as:$EXPL$
WHERE id = 12819;

-- ID 4580: Tests of Controls (16 words)
-- ORIGINAL STEM: Which of the following provides the strongest evidence about the operating effectiveness of a manual control?
UPDATE questions SET
  stem = $EXPL$The engagement team is testing a manual control at Fairview Health Systems where supervisors initial invoices after verifying vendor terms and quantities. Which of the following provides the strongest evidence about the operating effectiveness of this manual control?$EXPL$
WHERE id = 4580;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (2 questions)
-- ============================================================

-- ID 13148: Understanding the Entity and Environment (15 words)
-- ORIGINAL STEM: What is the primary purpose of the auditor understanding the entity's key performance indicators (KPIs)?
UPDATE questions SET
  stem = $EXPL$During the planning phase for the audit of Lakeshore Hotels, the auditor reviews occupancy rates, average daily rate, and revenue per available room. What is the primary purpose of the auditor understanding the entity''s key performance indicators (KPIs)?$EXPL$
WHERE id = 13148;

-- ID 13152: Understanding the Entity and Environment (15 words)
-- ORIGINAL STEM: Which of the following best describes why the auditor should understand the entity's governance structure?
UPDATE questions SET
  stem = $EXPL$While planning the audit of Oakmont Financial Group, the engagement team reviews the composition and oversight activities of the board of directors and audit committee. Which of the following best describes why the auditor should understand the entity''s governance structure?$EXPL$
WHERE id = 13152;

-- ============================================================
-- USING THE WORK OF OTHERS (2 questions)
-- ============================================================

-- ID 13358: Using the Work of Others (14 words)
-- ORIGINAL STEM: In a SOC 1 engagement, what is the primary responsibility of the service auditor?
UPDATE questions SET
  stem = $EXPL$Sterling Payroll Solutions processes payroll for over 200 client companies and has engaged an independent CPA firm to issue a SOC 1 Type 2 report. In this engagement, what is the primary responsibility of the service auditor?$EXPL$
WHERE id = 13358;

-- ID 13370: Using the Work of Others (14 words)
-- ORIGINAL STEM: What does the inclusive method mean in the context of a SOC 1 report?
UPDATE questions SET
  stem = $EXPL$CloudFirst Data Centers outsources certain security monitoring functions to a subservice organization. The SOC 1 report for CloudFirst uses the inclusive method. What does the inclusive method mean in this context?$EXPL$
WHERE id = 13370;

COMMIT;
