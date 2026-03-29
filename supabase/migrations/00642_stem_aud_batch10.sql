-- Migration: Stem expansion — AUD batch 10 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for AUD section
-- Affected topics: Analytical Procedures, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Materiality, Modifications to the Auditor Report, Nature and Scope of Engagements, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (2 questions)
-- ============================================================

-- ID 4604: Analytical Procedures (14 words)
-- ORIGINAL STEM: When management provides explanations for unexpected differences identified through analytical procedures, the auditor should:
UPDATE questions SET
  stem = $EXPL$During the audit of Westbrook Manufacturing, the engagement team identifies a 22% spike in warranty expense that deviates from expectations. Management attributes the increase to a new product line launched in Q3. When management provides explanations for unexpected differences identified through analytical procedures, the auditor should:$EXPL$
WHERE id = 4604;

-- ID 12692: Analytical Procedures (14 words)
-- ORIGINAL STEM: Who is responsible for developing the independent expectation used in a substantive analytical procedure?
UPDATE questions SET
  stem = $EXPL$While auditing Crescent Industries, a senior associate performs a substantive analytical procedure to estimate expected payroll expense using headcount and average compensation data. Who is responsible for developing the independent expectation used in this type of procedure?$EXPL$
WHERE id = 12692;

-- ============================================================
-- AUDIT PLANNING (3 questions)
-- ============================================================

-- ID 1460: Audit Planning (18 words)
-- ORIGINAL STEM: During the planning of a group audit, the group engagement team determines component materiality. Component materiality should be:
UPDATE questions SET
  stem = $EXPL$Patel & Associates LLP is planning the group audit of Vanguard Holdings, which has four operating subsidiaries in different industries. The group engagement team is setting materiality for each subsidiary. Component materiality should be:$EXPL$
WHERE id = 1460;

-- ID 1462: Audit Planning (18 words)
-- ORIGINAL STEM: Which of the following procedures would an auditor most likely perform during the planning phase of an audit?
UPDATE questions SET
  stem = $EXPL$Chen & Webb CPAs has been engaged to audit Ridgeline Corp for the first time. The engagement team is beginning its planning phase and needs to design initial risk assessment procedures. Which of the following procedures would the team most likely perform during this phase?$EXPL$
WHERE id = 1462;

-- ID 1472: Audit Planning (18 words)
-- ORIGINAL STEM: An entity has changed its accounting information system since the prior year audit. During planning, the auditor should:
UPDATE questions SET
  stem = $EXPL$During planning for the 2025 audit of Maplewood Industries, the engagement team learns that the company migrated from its legacy ERP system to a new cloud-based platform in July. During planning, the auditor should:$EXPL$
WHERE id = 1472;

-- ============================================================
-- AUDIT REPORTS (3 questions)
-- ============================================================

-- ID 1712: Audit Reports (17 words)
-- ORIGINAL STEM: In an unmodified audit report, what does the management responsibility section state that management is responsible for?
UPDATE questions SET
  stem = $EXPL$Kline & Ross LLP has completed the audit of Birchwood Corp''s 2025 financial statements and is drafting an unmodified report. In the management responsibility section of this report, what does management acknowledge responsibility for?$EXPL$
WHERE id = 1712;

-- ID 1723: Audit Reports (17 words)
-- ORIGINAL STEM: Under AU-C 560, what should a predecessor auditor do before reissuing a report on prior-period financial statements?
UPDATE questions SET
  stem = $EXPL$Garrison & Holt LLP served as the predecessor auditor for Lakeview Enterprises. The successor firm has requested that Garrison & Holt reissue its report on the prior-period financial statements for comparative presentation. Under AU-C 560, what should the predecessor auditor do before reissuing?$EXPL$
WHERE id = 1723;

-- ID 1732: Audit Reports (17 words)
-- ORIGINAL STEM: A qualified opinion due to a scope limitation differs from a disclaimer of opinion primarily based on:
UPDATE questions SET
  stem = $EXPL$During the audit of Clearwater Holdings, the auditor was unable to obtain sufficient evidence about a significant investment account. The engagement partner is deciding between issuing a qualified opinion and a disclaimer. A qualified opinion due to a scope limitation differs from a disclaimer primarily based on:$EXPL$
WHERE id = 1732;

-- ============================================================
-- AUDIT SAMPLING (2 questions)
-- ============================================================

-- ID 1644: Audit Sampling (17 words)
-- ORIGINAL STEM: Which of the following factors has a direct relationship with sample size in substantive tests of details?
UPDATE questions SET
  stem = $EXPL$The audit team at Brennan & Shaw LLP is designing a substantive test of accounts receivable for Summit Distributors. The senior is determining how many confirmations to send. Which of the following factors has a direct relationship with sample size in this substantive test?$EXPL$
WHERE id = 1644;

-- ID 1655: Audit Sampling (17 words)
-- ORIGINAL STEM: Which of the following sample selection methods would disqualify a sample from being considered a statistical sample?
UPDATE questions SET
  stem = $EXPL$An audit staff member at Navarro CPAs selects items for a sampling application by choosing transactions that appear representative based on professional judgment, without using random number generation. Which sample selection method would disqualify a sample from being considered statistical?$EXPL$
WHERE id = 1655;

-- ============================================================
-- ETHICS AND INDEPENDENCE (3 questions)
-- ============================================================

-- ID 263: Ethics and Independence (19 words)
-- ORIGINAL STEM: Under the AICPA Code, what does the conceptual framework approach require when no specific independence rule addresses a situation?
UPDATE questions SET
  stem = $EXPL$A manager at Douglas & Fitch CPAs discovers that a senior associate''s sibling recently accepted a mid-level IT role at an audit client. No specific AICPA independence rule directly addresses this relationship. Under the conceptual framework approach, what is the firm required to do?$EXPL$
WHERE id = 263;

-- ID 1309: Ethics and Independence (19 words)
-- ORIGINAL STEM: Under the AICPA conceptual framework, which threat arises when an auditor has a financial interest in the audit client?
UPDATE questions SET
  stem = $EXPL$A senior associate on the engagement team for Pinnacle Corp recently inherited 200 shares of Pinnacle common stock from a family member''s estate. Under the AICPA conceptual framework, which threat category does this financial interest create?$EXPL$
WHERE id = 1309;

-- ID 1312: Ethics and Independence (19 words)
-- ORIGINAL STEM: Under the AICPA conceptual framework, which threat arises when a client pressures the auditor to change the audit opinion?
UPDATE questions SET
  stem = $EXPL$During the final review of the audit of Keystone Retail, the CFO states that the company will switch auditors if the firm does not issue an unmodified opinion. Under the AICPA conceptual framework, which threat category does this pressure create?$EXPL$
WHERE id = 1312;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (2 questions)
-- ============================================================

-- ID 1427: Government Auditing Standards (17 words)
-- ORIGINAL STEM: Under the Uniform Guidance, a 'Type A' program is defined as a federal program with expenditures exceeding:
UPDATE questions SET
  stem = $EXPL$The City of Harborview expended $4.2 million in federal awards during fiscal year 2025 across eight grant programs. The external auditor is classifying programs as Type A or Type B for single audit purposes. Under the Uniform Guidance, a Type A program is defined as one with expenditures exceeding:$EXPL$
WHERE id = 1427;

-- ID 1429: Government Auditing Standards (18 words)
-- ORIGINAL STEM: Under Government Auditing Standards, which of the following circumstances would impair the auditor's independence in a government audit?
UPDATE questions SET
  stem = $EXPL$Franklin & Associates has been engaged to perform a GAGAS audit of the Millbrook County School District. The engagement partner is evaluating potential threats to independence. Under Government Auditing Standards, which circumstance would impair the auditor''s independence?$EXPL$
WHERE id = 1429;

-- ============================================================
-- INDEPENDENCE (2 questions)
-- ============================================================

-- ID 13836: Independence (15 words)
-- ORIGINAL STEM: Part 1 of the AICPA Code of Professional Conduct applies to which group of CPAs?
UPDATE questions SET
  stem = $EXPL$A newly licensed CPA is reviewing the AICPA Code of Professional Conduct to understand which rules apply to her role at a public accounting firm. Part 1 of the Code applies to which group of CPAs?$EXPL$
WHERE id = 13836;

-- ID 13847: Independence (16 words)
-- ORIGINAL STEM: Which organization has the authority to impose sanctions on auditors for independence violations involving public companies?
UPDATE questions SET
  stem = $EXPL$An audit partner at Sterling & Gaines LLP is found to have held a direct financial interest in a publicly traded audit client throughout the engagement. Which organization has authority to impose sanctions for this independence violation?$EXPL$
WHERE id = 13847;

-- ============================================================
-- MATERIALITY (2 questions)
-- ============================================================

-- ID 4518: Materiality (16 words)
-- ORIGINAL STEM: Which of the following is a qualitative factor that might make a quantitatively small misstatement material?
UPDATE questions SET
  stem = $EXPL$During the audit of Orion Pharmaceuticals, the engagement team identifies a $15,000 misstatement in executive travel expenses—well below the $400,000 materiality threshold. The senior manager questions whether the misstatement could still be considered material. Which qualitative factor might make a quantitatively small misstatement material?$EXPL$
WHERE id = 4518;

-- ID 4510: Materiality (17 words)
-- ORIGINAL STEM: Which of the following factors would most likely cause an auditor to set a lower materiality level?
UPDATE questions SET
  stem = $EXPL$Porter & Lane LLP is planning the audit of a technology startup that recently completed its IPO. The engagement partner is determining the overall materiality level for the engagement. Which factor would most likely cause the auditor to set a lower materiality level?$EXPL$
WHERE id = 4510;

-- ============================================================
-- MODIFICATIONS TO THE AUDITOR REPORT (2 questions)
-- ============================================================

-- ID 4674: Modifications to the Auditor Report (14 words)
-- ORIGINAL STEM: When the auditor issues a qualified opinion, the opinion paragraph should use the phrase:
UPDATE questions SET
  stem = $EXPL$After completing the audit of Hawthorn Industries, the engagement partner concludes that a departure from GAAP related to inventory valuation is material but not pervasive. The firm decides to issue a qualified opinion. The opinion paragraph should use which phrase?$EXPL$
WHERE id = 4674;

-- ID 13980: Modifications to the Auditor Report (15 words)
-- ORIGINAL STEM: When issuing an adverse opinion, which phrase does the auditor use in the opinion paragraph?
UPDATE questions SET
  stem = $EXPL$The engagement team for Redstone Corp determines that the company''s failure to consolidate a material subsidiary results in pervasive misstatements throughout the financial statements, warranting an adverse opinion. Which phrase does the auditor use in the opinion paragraph?$EXPL$
WHERE id = 13980;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 4408: Nature and Scope of Engagements (18 words)
-- ORIGINAL STEM: An auditor is testing whether recorded inventory actually exists at year-end. Which assertion is the auditor primarily testing?
UPDATE questions SET
  stem = $EXPL$During the December 31, 2025 inventory observation at Pacific Hardware''s main warehouse, the auditor selects items from the perpetual inventory listing and physically locates them on the warehouse shelves. Which assertion is the auditor primarily testing?$EXPL$
WHERE id = 4408;

-- ID 4413: Nature and Scope of Engagements (18 words)
-- ORIGINAL STEM: Which of the following is NOT one of the financial statement assertions for classes of transactions and events?
UPDATE questions SET
  stem = $EXPL$A staff auditor at Collins & Drake is reviewing the assertions relevant to testing revenue transactions at a retail client. The senior asks which items are valid transaction-level assertions. Which of the following is NOT a financial statement assertion for classes of transactions and events?$EXPL$
WHERE id = 4413;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 1353: Professional Responsibilities (16 words)
-- ORIGINAL STEM: Under the AICPA Code, a CPA commits an act discreditable to the profession if the CPA:
UPDATE questions SET
  stem = $EXPL$The state board of accountancy is investigating a complaint against Martin Torres, CPA, alleging conduct that violates professional standards. Under the AICPA Code, a CPA commits an act discreditable to the profession if the CPA:$EXPL$
WHERE id = 1353;

-- ID 1348: Professional Responsibilities (18 words)
-- ORIGINAL STEM: Under the AICPA Code, what should a CPA do when served with a valid subpoena for client records?
UPDATE questions SET
  stem = $EXPL$Rebecca Nolan, CPA, receives a valid subpoena from a federal court requiring her to produce the audit workpapers and financial records of a client. Under the AICPA Code, what should Nolan do?$EXPL$
WHERE id = 1348;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (2 questions)
-- ============================================================

-- ID 13894: Professional Skepticism and Judgment (16 words)
-- ORIGINAL STEM: The quality of an auditor's professional judgment is most directly influenced by which of the following?
UPDATE questions SET
  stem = $EXPL$A second-year associate at Wakefield & Grant LLP is making several key judgment calls during the audit of a complex manufacturing client. The engagement partner reviews these decisions to assess their quality. The quality of an auditor''s professional judgment is most directly influenced by which factor?$EXPL$
WHERE id = 13894;

-- ID 13887: Professional Skepticism and Judgment (18 words)
-- ORIGINAL STEM: Which of the following is most commonly recognized as an impediment to an auditor's exercise of professional skepticism?
UPDATE questions SET
  stem = $EXPL$The engagement team has audited Horizon Enterprises for eight consecutive years and developed strong rapport with senior management. The quality reviewer notes a concern about the team''s objectivity. Which factor is most commonly recognized as an impediment to professional skepticism?$EXPL$
WHERE id = 13887;

-- ============================================================
-- QUALITY MANAGEMENT (2 questions)
-- ============================================================

-- ID 1410: Quality Management (17 words)
-- ORIGINAL STEM: Under SQMS No. 1, which of the following best describes the relationship between quality risks and responses?
UPDATE questions SET
  stem = $EXPL$Barrett & Holmes LLP is implementing its quality management system under the new SQMS No. 1 framework. The managing partner asks the quality team to explain how the standard links identified risks to firm actions. Which best describes the relationship between quality risks and responses?$EXPL$
WHERE id = 1410;

-- ID 1380: Quality Management (18 words)
-- ORIGINAL STEM: Under SQMS No. 1, which of the following are the eight components of a system of quality management?
UPDATE questions SET
  stem = $EXPL$During a partner meeting at Chambers & Liu LLP, the quality management partner presents the firm''s SQMS No. 1 compliance plan and references the standard''s eight required components. Which of the following correctly identifies the eight components of a quality management system?$EXPL$
WHERE id = 1380;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (2 questions)
-- ============================================================

-- ID 4536: Responding to Assessed Risks (17 words)
-- ORIGINAL STEM: A significant risk is defined as an identified risk of material misstatement that, in the auditor's judgment:
UPDATE questions SET
  stem = $EXPL$While assessing risks for the audit of Meridian Financial Group, the engagement team flags the fair value measurement of a complex derivatives portfolio as requiring special attention. A significant risk is defined as an identified risk of material misstatement that, in the auditor''s judgment:$EXPL$
WHERE id = 4536;

-- ID 13096: Responding to Assessed Risks (17 words)
-- ORIGINAL STEM: Which of the following best describes a test of details performed in response to an assessed risk?
UPDATE questions SET
  stem = $EXPL$After assessing a high risk of misstatement in accounts receivable at Dalton Wholesale, the audit team designs specific substantive procedures to respond. Which of the following best describes a test of details performed in response to an assessed risk?$EXPL$
WHERE id = 13096;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 1754: Review and Compilation (17 words)
-- ORIGINAL STEM: During a review engagement, an accountant performs analytical procedures. Which of the following best describes these procedures?
UPDATE questions SET
  stem = $EXPL$Larson & Co. CPAs is performing a review of the 2025 financial statements of Greenfield Landscaping, a nonpublic company. As part of the engagement, the accountant performs analytical procedures. Which of the following best describes these procedures?$EXPL$
WHERE id = 1754;

-- ID 1766: Review and Compilation (18 words)
-- ORIGINAL STEM: In a review engagement, the accountant's inquiries of management should include questions about all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$While conducting a review of Ashford Bakery''s financial statements under SSARS, the accountant prepares a list of inquiries to direct to the owner-manager. The accountant''s inquiries should include questions about all of the following EXCEPT:$EXPL$
WHERE id = 1766;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1808: Review/Compilation Engagements (17 words)
-- ORIGINAL STEM: When the accountant performs a review of interim financial statements of a nonissuer, the review report should:
UPDATE questions SET
  stem = $EXPL$Harper & Dean CPAs has been engaged to review the June 30, 2025 interim financial statements of Broadview Services, a nonpublic entity. When the accountant issues the review report on these interim statements, the report should:$EXPL$
WHERE id = 1808;

-- ID 132: Review/Compilation Engagements (19 words)
-- ORIGINAL STEM: Which of the following best describes the difference between an engagement to prepare financial statements and a compilation engagement?
UPDATE questions SET
  stem = $EXPL$A small restaurant owner asks CPA Janet Wu to help put the business''s financial data into financial statement format. Wu is considering whether to perform a preparation or compilation engagement. Which best describes the difference between these two engagement types?$EXPL$
WHERE id = 132;

-- ============================================================
-- RISK ASSESSMENT (3 questions)
-- ============================================================

-- ID 1511: Risk Assessment (17 words)
-- ORIGINAL STEM: When assessing the risk of material misstatement for a new related party transaction, the auditor should consider:
UPDATE questions SET
  stem = $EXPL$During the audit of Thornton Electronics, the engagement team discovers a $1.8 million sale to an entity owned by Thornton''s CEO that was not previously disclosed. When assessing the risk of material misstatement for this related party transaction, the auditor should consider:$EXPL$
WHERE id = 1511;

-- ID 1581: Risk Assessment (17 words)
-- ORIGINAL STEM: When evaluating the entity's susceptibility to misappropriation of assets, the auditor should consider which of the following?
UPDATE questions SET
  stem = $EXPL$River City Auto Parts has a large volume of small, portable inventory items and limited physical access controls at its warehouse locations. When evaluating this entity''s susceptibility to misappropriation of assets, the auditor should consider which of the following?$EXPL$
WHERE id = 1581;

-- ID 104: Risk Assessment (18 words)
-- ORIGINAL STEM: Which of the following audit procedures would an auditor most likely perform to identify risks of material misstatement?
UPDATE questions SET
  stem = $EXPL$Quinn & Markel LLP has been engaged to audit Bridgeport Construction for the first time. During the initial planning phase, the team needs to identify areas of potential misstatement. Which procedure would the auditor most likely perform to identify risks of material misstatement?$EXPL$
WHERE id = 104;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 4646: Specific Areas and Transactions (15 words)
-- ORIGINAL STEM: Which of the following is an indicator that an entity may have going concern issues?
UPDATE questions SET
  stem = $EXPL$Beacon Electronics has reported operating losses for three consecutive years and recently failed to meet a key debt covenant. The engagement team is evaluating whether substantial doubt exists about the company''s ability to continue as a going concern. Which of the following is an indicator of going concern issues?$EXPL$
WHERE id = 4646;

-- ID 4657: Specific Areas and Transactions (15 words)
-- ORIGINAL STEM: Which of the following audit procedures is most effective for identifying previously undisclosed related parties?
UPDATE questions SET
  stem = $EXPL$During the audit of Crestview Holdings, the engagement team suspects that management may have undisclosed relationships with certain vendors. The team is designing procedures to identify any previously unknown related parties. Which procedure is most effective for this purpose?$EXPL$
WHERE id = 4657;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (2 questions)
-- ============================================================

-- ID 1674: Substantive Procedures (16 words)
-- ORIGINAL STEM: What should the auditor do when damaged or obsolete inventory is observed during the physical count?
UPDATE questions SET
  stem = $EXPL$While observing the physical inventory count at Saxon Manufacturing''s warehouse on December 31, 2025, the audit team notices several pallets of water-damaged electronic components. What should the auditor do when damaged or obsolete inventory is observed during the count?$EXPL$
WHERE id = 1674;

-- ID 1699: Substantive Procedures (16 words)
-- ORIGINAL STEM: Which assertion is primarily tested by vouching recorded fixed asset additions to invoices and receiving reports?
UPDATE questions SET
  stem = $EXPL$The audit team for Coleman Properties selects a sample of fixed asset additions recorded during 2025 and traces each entry to the corresponding vendor invoice and receiving report. Which assertion is primarily tested by this procedure?$EXPL$
WHERE id = 1699;

-- ============================================================
-- TERMS OF ENGAGEMENT (2 questions)
-- ============================================================

-- ID 13924: Terms of Engagement (16 words)
-- ORIGINAL STEM: In the engagement letter, management acknowledges responsibility for which of the following related to financial reporting?
UPDATE questions SET
  stem = $EXPL$Rivera & Associates CPAs is preparing the engagement letter for the audit of Cascade Industries. Before signing, the controller asks what specific responsibilities management must acknowledge in the letter. In the engagement letter, management acknowledges responsibility for which of the following?$EXPL$
WHERE id = 13924;

-- ID 13937: Terms of Engagement (16 words)
-- ORIGINAL STEM: What is the minimum retention period for audit engagement letters and related documentation under AICPA standards?
UPDATE questions SET
  stem = $EXPL$The office manager at Whitfield CPAs is implementing a document retention policy and asks the managing partner how long the firm must keep engagement letters and working papers. Under AICPA standards, what is the minimum retention period for this documentation?$EXPL$
WHERE id = 13937;

-- ============================================================
-- TESTS OF CONTROLS (2 questions)
-- ============================================================

-- ID 4581: Tests of Controls (17 words)
-- ORIGINAL STEM: When the auditor elects not to test controls and instead adopts a fully substantive approach, the auditor:
UPDATE questions SET
  stem = $EXPL$During the audit of Northgate Services, the engagement team determines that the client''s controls over revenue are poorly designed and decides not to test them. Instead, the team adopts a fully substantive approach. In this situation, the auditor:$EXPL$
WHERE id = 4581;

-- ID 12837: Tests of Controls (17 words)
-- ORIGINAL STEM: A limitation of observation as a method for testing controls is that it provides evidence only about:
UPDATE questions SET
  stem = $EXPL$An auditor visits the Oakmont Bank branch to observe the teller supervisor''s daily cash-drawer reconciliation process. The audit manager reminds the team that observation as a control testing method is limited because it provides evidence only about:$EXPL$
WHERE id = 12837;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (2 questions)
-- ============================================================

-- ID 13154: Understanding the Entity and Environment (16 words)
-- ORIGINAL STEM: What is the auditor required to document regarding the understanding of the entity and its environment?
UPDATE questions SET
  stem = $EXPL$Frost & Kim LLP is completing the audit planning workpapers for Silverline Aerospace and needs to ensure the documentation meets GAAS requirements. What is the auditor required to document regarding the understanding of the entity and its environment?$EXPL$
WHERE id = 13154;

-- ID 13159: Understanding the Entity and Environment (17 words)
-- ORIGINAL STEM: What is the auditor's primary reason for identifying the applicable financial reporting framework used by the entity?
UPDATE questions SET
  stem = $EXPL$While planning the audit of a nonprofit hospital that reports under a specialized framework, the engagement team first identifies which financial reporting framework the entity uses. What is the auditor''s primary reason for identifying the applicable framework?$EXPL$
WHERE id = 13159;

-- ============================================================
-- USING THE WORK OF OTHERS (2 questions)
-- ============================================================

-- ID 13346: Using the Work of Others (16 words)
-- ORIGINAL STEM: What is the primary purpose of a SOC 2 report compared to a SOC 1 report?
UPDATE questions SET
  stem = $EXPL$DataVault Inc. provides cloud hosting services and has both a SOC 1 and SOC 2 report available. An auditor of a client that uses DataVault''s services is determining which report to request. What is the primary purpose of a SOC 2 report compared to a SOC 1 report?$EXPL$
WHERE id = 13346;

-- ID 13357: Using the Work of Others (16 words)
-- ORIGINAL STEM: In a group audit, who bears ultimate responsibility for the opinion on the consolidated financial statements?
UPDATE questions SET
  stem = $EXPL$Worldwide Industries has subsidiaries in four countries, each audited by a local firm. Grant & Ellis LLP serves as the group auditor for the consolidated financial statements. In this group audit, who bears ultimate responsibility for the opinion on the consolidated statements?$EXPL$
WHERE id = 13357;

COMMIT;
