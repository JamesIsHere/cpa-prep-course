-- Migration: Stem expansion — AUD batch 2 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Modifications to the Auditor Report, Nature and Scope of Engagements, Other Information and Supplementary Information, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (2 questions)
-- ============================================================

-- ID 4596: Analytical Procedures (9 words)
-- ORIGINAL STEM: A regression analysis used as an analytical procedure involves:
UPDATE questions SET
  stem = $EXPL$During the audit of Pinecrest Manufacturing, the senior auditor uses a statistical model to predict expected payroll expense based on headcount, average wage rates, and overtime hours. A regression analysis used as an analytical procedure involves:$EXPL$
WHERE id = 4596;

-- ID 4598: Analytical Procedures (9 words)
-- ORIGINAL STEM: Disaggregation of data in substantive analytical procedures refers to:
UPDATE questions SET
  stem = $EXPL$While testing revenue for Cascade Retail, the auditor considers whether analyzing total company revenue provides enough precision or whether the data should be broken down by store location and product line. Disaggregation of data in substantive analytical procedures refers to:$EXPL$
WHERE id = 4598;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1821: Attestation Engagements (7 words)
-- ORIGINAL STEM: Which AT-C section specifically addresses examination engagements?
UPDATE questions SET
  stem = $EXPL$Brennan & Associates CPA firm has been engaged by Westlake Corp. to examine management''s assertion that internal controls over financial reporting were effective as of December 31, 2025. Which AT-C section specifically addresses the standards for this examination engagement?$EXPL$
WHERE id = 1821;

-- ID 1830: Attestation Engagements (10 words)
-- ORIGINAL STEM: Pro forma financial information is addressed in which AT-C section?
UPDATE questions SET
  stem = $EXPL$After completing a major acquisition in October 2025, Ridgeline Industries prepares pro forma financial statements showing the combined entity as if the acquisition had occurred at the beginning of the year. A practitioner engaged to examine this information would look to which AT-C section?$EXPL$
WHERE id = 1830;

-- ============================================================
-- AUDIT EVIDENCE (2 questions)
-- ============================================================

-- ID 303: Audit Evidence (11 words)
-- ORIGINAL STEM: Under AU-C 580, what date must the management representation letter bear?
UPDATE questions SET
  stem = $EXPL$Near the completion of the December 31, 2025 audit of Oakridge Distributors, the engagement partner prepares the management representation letter for signature by the CEO and CFO. Under AU-C 580, what date must this letter bear?$EXPL$
WHERE id = 303;

-- ID 112: Audit Evidence (12 words)
-- ORIGINAL STEM: Which procedure is most appropriate for testing the valuation assertion for inventory?
UPDATE questions SET
  stem = $EXPL$Greenfield Electronics reports $4.2 million in finished goods inventory at December 31, 2025. The auditor has already confirmed the inventory''s existence through physical observation. Which procedure is most appropriate for testing the valuation assertion for this inventory?$EXPL$
WHERE id = 112;

-- ============================================================
-- AUDIT PLANNING (2 questions)
-- ============================================================

-- ID 5: Audit Planning (12 words)
-- ORIGINAL STEM: What is the primary purpose of setting performance materiality below overall materiality?
UPDATE questions SET
  stem = $EXPL$During planning for the audit of Summit Healthcare, the engagement partner sets overall materiality at $500,000 and performance materiality at $375,000. What is the primary purpose of setting performance materiality below overall materiality?$EXPL$
WHERE id = 5;

-- ID 98: Audit Planning (12 words)
-- ORIGINAL STEM: Under AU-C 210, what must be included in an audit engagement letter?
UPDATE questions SET
  stem = $EXPL$Harrison & Cole LLP has been approached by a new client, Apex Manufacturing, to perform the annual audit of its December 31, 2025 financial statements. The firm is drafting the engagement letter. Under AU-C 210, what must be included in this document?$EXPL$
WHERE id = 98;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 327: Audit Reports (11 words)
-- ORIGINAL STEM: Under PCAOB AS 3101, what is a Critical Audit Matter (CAM)?
UPDATE questions SET
  stem = $EXPL$The engagement partner of a registered firm is finalizing the audit report for Meridian Technologies, an SEC registrant. The report must include communication of any Critical Audit Matters. Under PCAOB AS 3101, what is a Critical Audit Matter (CAM)?$EXPL$
WHERE id = 327;

-- ID 1728: Audit Reports (11 words)
-- ORIGINAL STEM: Under AU-C 570, what must a going concern emphasis-of-matter paragraph reference?
UPDATE questions SET
  stem = $EXPL$Coastal Marine Inc. has experienced recurring operating losses and negative cash flows, creating substantial doubt about its ability to continue as a going concern. The auditor decides to include an emphasis-of-matter paragraph in the report. Under AU-C 570, what must this paragraph reference?$EXPL$
WHERE id = 1728;

-- ============================================================
-- AUDIT SAMPLING (2 questions)
-- ============================================================

-- ID 16: Audit Sampling (9 words)
-- ORIGINAL STEM: What is the primary advantage of monetary unit sampling?
UPDATE questions SET
  stem = $EXPL$The audit team at Bridgeport Foods is selecting a sampling method for testing the accounts receivable balance of $8.3 million, which includes both large and small customer balances. The senior auditor recommends monetary unit sampling. What is the primary advantage of this approach?$EXPL$
WHERE id = 16;

-- ID 310: Audit Sampling (12 words)
-- ORIGINAL STEM: Which of the following increases the required sample size in attributes sampling?
UPDATE questions SET
  stem = $EXPL$An auditor is planning attributes sampling to test the operating effectiveness of a purchase approval control at Drake Industries. The auditor is determining the appropriate sample size. Which of the following factors would increase the required sample size?$EXPL$
WHERE id = 310;

-- ============================================================
-- ETHICS AND INDEPENDENCE (3 questions)
-- ============================================================

-- ID 1: Ethics and Independence (12 words)
-- ORIGINAL STEM: Which of the following situations would most likely impair an auditor's independence?
UPDATE questions SET
  stem = $EXPL$The managing partner of Kessler & Dunn LLP is reviewing potential independence threats before accepting a new audit engagement with Trident Corp. The partner identifies several relationships between the firm''s personnel and Trident. Which of the following situations would most likely impair the firm''s independence?$EXPL$
WHERE id = 1;

-- ID 254: Ethics and Independence (13 words)
-- ORIGINAL STEM: Under SEC rules, which non-audit service is prohibited for auditors of public companies?
UPDATE questions SET
  stem = $EXPL$Whitfield & Grant LLP audits NovaStar Inc., an SEC registrant. The company''s CFO asks whether the firm can also provide certain consulting services. Under SEC rules, which non-audit service is prohibited for auditors of public companies?$EXPL$
WHERE id = 254;

-- ID 266: Ethics and Independence (13 words)
-- ORIGINAL STEM: Which threat category is most directly addressed by the SOX partner rotation requirement?
UPDATE questions SET
  stem = $EXPL$The lead engagement partner for Clearwater Financial, a public company, has served on the engagement for four consecutive years. Under SOX, mandatory partner rotation addresses which threat category most directly?$EXPL$
WHERE id = 266;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (1 questions)
-- ============================================================

-- ID 1126: Government Auditing Standards (11 words)
-- ORIGINAL STEM: Government Auditing Standards (the Yellow Book) are issued by which organization?
UPDATE questions SET
  stem = $EXPL$A CPA firm has been engaged to audit the financial statements of the City of Brookhaven, which requires the audit to be conducted in accordance with Government Auditing Standards. These standards, commonly known as the Yellow Book, are issued by which organization?$EXPL$
WHERE id = 1126;

-- ============================================================
-- INDEPENDENCE (1 questions)
-- ============================================================

-- ID 4426: Independence (9 words)
-- ORIGINAL STEM: Which of the following best describes independence in appearance?
UPDATE questions SET
  stem = $EXPL$An audit partner at Mason & Rowe LLP holds no financial interest in an audit client but has a close personal friendship with the client''s CEO that is widely known in the business community. Which of the following best describes the concept of independence in appearance?$EXPL$
WHERE id = 4426;

-- ============================================================
-- INTERNAL CONTROLS (2 questions)
-- ============================================================

-- ID 1537: Internal Controls (8 words)
-- ORIGINAL STEM: The monitoring component of COSO internal control involves:
UPDATE questions SET
  stem = $EXPL$During the audit of Pryor Industries, the auditor is evaluating how management assesses the quality of internal control performance over time. Under the COSO framework, the monitoring component of internal control involves:$EXPL$
WHERE id = 1537;

-- ID 284: Internal Controls (12 words)
-- ORIGINAL STEM: Which of the following is an example of an IT application control?
UPDATE questions SET
  stem = $EXPL$While evaluating the IT environment at Baxter Logistics, the auditor distinguishes between IT general controls and application controls embedded within the company''s accounting software. Which of the following is an example of an IT application control?$EXPL$
WHERE id = 284;

-- ============================================================
-- MATERIALITY (2 questions)
-- ============================================================

-- ID 4507: Materiality (7 words)
-- ORIGINAL STEM: Performance materiality is set at an amount:
UPDATE questions SET
  stem = $EXPL$During planning for the audit of Lakeshore Holdings, the engagement partner determines overall materiality to be $600,000. The partner then establishes performance materiality. Performance materiality is set at an amount:$EXPL$
WHERE id = 4507;

-- ID 4520: Materiality (7 words)
-- ORIGINAL STEM: Materiality is determined by the auditor and:
UPDATE questions SET
  stem = $EXPL$The engagement team at Fielding & Ross LLP is planning the audit of Crestwood Hospitality Group and must establish an appropriate materiality level for the engagement. Materiality is determined by the auditor and:$EXPL$
WHERE id = 4520;

-- ============================================================
-- MODIFICATIONS TO THE AUDITOR REPORT (1 questions)
-- ============================================================

-- ID 4667: Modifications to the Auditor Report (7 words)
-- ORIGINAL STEM: A disclaimer of opinion is appropriate when:
UPDATE questions SET
  stem = $EXPL$The audit team at Donnelly & Sloan LLP was engaged after the physical inventory count of Rayburn Wholesale, which represents 65% of total assets, had already been completed. The auditor was unable to satisfy the inventory assertion through alternative procedures. A disclaimer of opinion is appropriate when:$EXPL$
WHERE id = 4667;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 13883: Nature and Scope of Engagements (4 words)
-- ORIGINAL STEM: What is audit risk?
UPDATE questions SET
  stem = $EXPL$A newly hired staff auditor at Calloway & Webb LLP is studying the audit risk model before beginning fieldwork on a new engagement. The senior explains the concept. What is audit risk?$EXPL$
WHERE id = 13883;

-- ID 13869: Nature and Scope of Engagements (8 words)
-- ORIGINAL STEM: What does professional skepticism require of an auditor?
UPDATE questions SET
  stem = $EXPL$During the audit of Veritas Financial Group, the engagement partner reminds the team that all evidence must be evaluated with a questioning mind, especially given an aggressive revenue recognition environment. What does professional skepticism require of an auditor?$EXPL$
WHERE id = 13869;

-- ============================================================
-- OTHER INFORMATION AND SUPPLEMENTARY INFORMATION (1 questions)
-- ============================================================

-- ID 4685: Other Information and Supplementary Information (7 words)
-- ORIGINAL STEM: Under AU-C 720, "other information" refers to:
UPDATE questions SET
  stem = $EXPL$The auditor of Sterling Manufacturing has completed the audit of the financial statements. The company''s annual report also contains a letter from the CEO and selected operating statistics. Under AU-C 720, "other information" refers to:$EXPL$
WHERE id = 4685;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 questions)
-- ============================================================

-- ID 1356: Professional Responsibilities (10 words)
-- ORIGINAL STEM: Under the AICPA Code, which type of commission is prohibited?
UPDATE questions SET
  stem = $EXPL$A CPA at Langford & Birch LLP is asked by a software vendor to accept a referral fee for recommending the vendor''s product to an audit client. Under the AICPA Code of Professional Conduct, which type of commission is prohibited?$EXPL$
WHERE id = 1356;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (2 questions)
-- ============================================================

-- ID 4446: Professional Skepticism and Judgment (6 words)
-- ORIGINAL STEM: Professional skepticism is best described as:
UPDATE questions SET
  stem = $EXPL$During an engagement team meeting for the audit of Grandview Enterprises, the partner emphasizes the importance of maintaining professional skepticism throughout all phases of fieldwork. Professional skepticism is best described as:$EXPL$
WHERE id = 4446;

-- ID 4449: Professional Skepticism and Judgment (6 words)
-- ORIGINAL STEM: Professional judgment in auditing refers to:
UPDATE questions SET
  stem = $EXPL$A senior auditor at Taylor & Marsh LLP must decide whether to expand testing of a complex revenue arrangement at Belmont Technologies. The decision requires weighing the available evidence against the assessed risk. Professional judgment in auditing refers to:$EXPL$
WHERE id = 4449;

-- ============================================================
-- QUALITY MANAGEMENT (2 questions)
-- ============================================================

-- ID 364: Quality Management (12 words)
-- ORIGINAL STEM: A key difference between PCAOB oversight and AICPA peer review is that:
UPDATE questions SET
  stem = $EXPL$Spencer & Wright LLP audits both public and private companies. The firm undergoes PCAOB inspections for its issuer clients and AICPA peer review for its non-issuer practice. A key difference between PCAOB oversight and AICPA peer review is that:$EXPL$
WHERE id = 364;

-- ID 369: Quality Management (12 words)
-- ORIGINAL STEM: When an engagement quality review identifies unresolved significant matters, the engagement report:
UPDATE questions SET
  stem = $EXPL$The engagement quality reviewer for the audit of Northgate Corp. has identified significant matters regarding the client''s revenue recognition that the engagement team has not yet resolved. Under SQMS No. 2, when an engagement quality review identifies unresolved significant matters, the engagement report:$EXPL$
WHERE id = 369;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (2 questions)
-- ============================================================

-- ID 4528: Responding to Assessed Risks (8 words)
-- ORIGINAL STEM: The nature of further audit procedures refers to:
UPDATE questions SET
  stem = $EXPL$After assessing the risk of material misstatement for inventory at Redwood Supply as high, the audit team discusses whether to use external confirmations rather than inquiry to gather evidence. The nature of further audit procedures refers to:$EXPL$
WHERE id = 4528;

-- ID 4530: Responding to Assessed Risks (8 words)
-- ORIGINAL STEM: The timing of further audit procedures refers to:
UPDATE questions SET
  stem = $EXPL$The engagement partner on the audit of Prescott Electronics decides that certain receivable confirmation procedures should be performed at December 31 rather than at the October interim date. The timing of further audit procedures refers to:$EXPL$
WHERE id = 4530;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 1753: Review and Compilation (9 words)
-- ORIGINAL STEM: The primary procedures performed in a review engagement are:
UPDATE questions SET
  stem = $EXPL$Cranston & Wells LLP has been engaged to review the 2025 financial statements of a nonpublic client, Waverly Printing. The engagement partner is planning the scope of procedures. The primary procedures performed in a review engagement are:$EXPL$
WHERE id = 1753;

-- ID 1756: Review and Compilation (12 words)
-- ORIGINAL STEM: A compilation engagement differs from a preparation engagement under SSARS primarily because:
UPDATE questions SET
  stem = $EXPL$A small CPA firm offers both preparation and compilation services to its private company clients. The firm''s newest staff member asks how the two service levels differ. A compilation engagement differs from a preparation engagement under SSARS primarily because:$EXPL$
WHERE id = 1756;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (1 questions)
-- ============================================================

-- ID 129: Review/Compilation Engagements (10 words)
-- ORIGINAL STEM: Under AR-C 80, what statement must a compilation report include?
UPDATE questions SET
  stem = $EXPL$Rivera CPA Group has completed a compilation of the December 31, 2025 financial statements for a nonpublic client, Fenwick Landscaping. The accountant is drafting the compilation report. Under AR-C 80, what statement must this report include?$EXPL$
WHERE id = 129;

-- ============================================================
-- RISK ASSESSMENT (2 questions)
-- ============================================================

-- ID 1494: Risk Assessment (8 words)
-- ORIGINAL STEM: The risk of management override of controls is:
UPDATE questions SET
  stem = $EXPL$During the audit of Highland Beverage Corp., the engagement team discusses fraud risk factors, including the possibility that senior management could circumvent internal controls through journal entry manipulation. The risk of management override of controls is:$EXPL$
WHERE id = 1494;

-- ID 1508: Risk Assessment (11 words)
-- ORIGINAL STEM: The auditor's risk assessment procedures include all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$During the planning phase of the audit of Thornton Industries, the engagement team performs procedures to identify and assess the risks of material misstatement. The auditor''s risk assessment procedures include all of the following EXCEPT:$EXPL$
WHERE id = 1508;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 4649: Specific Areas and Transactions (8 words)
-- ORIGINAL STEM: When auditing fair value estimates, the auditor should:
UPDATE questions SET
  stem = $EXPL$Eastbrook Corp. reports $12 million in Level 3 fair value investments measured using a discounted cash flow model with management-developed assumptions. When auditing these fair value estimates, the auditor should:$EXPL$
WHERE id = 4649;

-- ID 7591: Specific Areas and Transactions (10 words)
-- ORIGINAL STEM: Which of the following best describes a substantive analytical procedure?
UPDATE questions SET
  stem = $EXPL$The auditor of Sterling Properties calculates expected rent revenue by multiplying the number of occupied units by the average monthly lease rate for 12 months. Which of the following best describes this type of substantive analytical procedure?$EXPL$
WHERE id = 7591;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (5 questions)
-- ============================================================

-- ID 1701: Substantive Procedures (9 words)
-- ORIGINAL STEM: Which procedure best tests the existence assertion for payroll?
UPDATE questions SET
  stem = $EXPL$During the audit of Metro Construction, the engagement team is concerned about the potential for ghost employees on the payroll. The company has 480 employees across three job sites. Which procedure best tests the existence assertion for payroll?$EXPL$
WHERE id = 1701;

-- ID 120: Substantive Procedures (10 words)
-- ORIGINAL STEM: What audit procedure tests the existence assertion for recorded equipment?
UPDATE questions SET
  stem = $EXPL$Centennial Machining''s fixed asset register lists $3.8 million in manufacturing equipment at its plant facility as of December 31, 2025. What audit procedure tests the existence assertion for this recorded equipment?$EXPL$
WHERE id = 120;

-- ID 318: Substantive Procedures (10 words)
-- ORIGINAL STEM: Under AU-C 570, what is the going concern evaluation period?
UPDATE questions SET
  stem = $EXPL$The auditor of Beacon Maritime is evaluating whether substantial doubt exists about the company''s ability to continue as a going concern. The financial statements are dated December 31, 2025. Under AU-C 570, what period does the going concern evaluation cover?$EXPL$
WHERE id = 318;

-- ID 324: Substantive Procedures (10 words)
-- ORIGINAL STEM: Under AU-C 330, what does a dual-purpose test simultaneously evaluate?
UPDATE questions SET
  stem = $EXPL$While testing purchase transactions at Harmon Enterprises, the auditor inspects each selected purchase order for an authorized signature and also verifies the accuracy of the recorded dollar amount. Under AU-C 330, what does this dual-purpose test simultaneously evaluate?$EXPL$
WHERE id = 324;

-- ID 1695: Substantive Procedures (10 words)
-- ORIGINAL STEM: What time period does the search for unrecorded liabilities cover?
UPDATE questions SET
  stem = $EXPL$The auditor of Delta Packaging is performing a search for unrecorded liabilities as part of year-end substantive procedures for accounts payable as of December 31, 2025. What time period does this search for unrecorded liabilities cover?$EXPL$
WHERE id = 1695;

-- ============================================================
-- TERMS OF ENGAGEMENT (1 questions)
-- ============================================================

-- ID 4480: Terms of Engagement (7 words)
-- ORIGINAL STEM: The engagement letter should be signed by:
UPDATE questions SET
  stem = $EXPL$Prior to beginning fieldwork on the audit of Archer Biotech, the firm prepares an engagement letter documenting the terms of the audit arrangement. The engagement letter should be signed by:$EXPL$
WHERE id = 4480;

-- ============================================================
-- TESTS OF CONTROLS (2 questions)
-- ============================================================

-- ID 4569: Tests of Controls (7 words)
-- ORIGINAL STEM: A dual-purpose test is a test that:
UPDATE questions SET
  stem = $EXPL$During the audit of Kimball Manufacturing, the auditor selects a sample of sales invoices and checks each one for proper credit approval while also verifying the accuracy of the recorded amount. A dual-purpose test is a test that:$EXPL$
WHERE id = 4569;

-- ID 4572: Tests of Controls (7 words)
-- ORIGINAL STEM: Reperformance as a test of controls involves:
UPDATE questions SET
  stem = $EXPL$To test the operating effectiveness of the bank reconciliation control at Whitfield Corp., the auditor independently prepares the March 2025 bank reconciliation using original bank statements and ledger data. Reperformance as a test of controls involves:$EXPL$
WHERE id = 4572;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 questions)
-- ============================================================

-- ID 4498: Understanding the Entity and Environment (9 words)
-- ORIGINAL STEM: Knowledge of the entity's related parties is important because:
UPDATE questions SET
  stem = $EXPL$During the planning phase of the audit of Olympus Development, the auditor discovers that the company regularly leases office space from a partnership owned by the CEO''s family. Knowledge of the entity''s related parties is important because:$EXPL$
WHERE id = 4498;

-- ============================================================
-- USING THE WORK OF OTHERS (2 questions)
-- ============================================================

-- ID 4547: Using the Work of Others (11 words)
-- ORIGINAL STEM: When using the work of a management's specialist, the auditor should:
UPDATE questions SET
  stem = $EXPL$Pinnacle Insurance Co. engaged an independent actuary to develop the reserve for unpaid claims reported in its December 31, 2025 financial statements. The auditor plans to use the actuary''s work as audit evidence. When using the work of a management''s specialist, the auditor should:$EXPL$
WHERE id = 4547;

-- ID 4557: Using the Work of Others (11 words)
-- ORIGINAL STEM: When evaluating the competence of management's specialist, the auditor should consider:
UPDATE questions SET
  stem = $EXPL$Grandview Real Estate uses an external appraiser to determine the fair value of its investment properties for financial reporting. The auditor needs to evaluate whether this specialist''s work can be relied upon. When evaluating the competence of management''s specialist, the auditor should consider:$EXPL$
WHERE id = 4557;

COMMIT;
