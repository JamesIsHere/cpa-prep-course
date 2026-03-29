-- Migration: Stem expansion — AUD batch 6 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Internal Controls, Materiality, Modifications to the Auditor Report, Nature and Scope of Engagements, Other Information and Supplementary Information, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (2 questions)
-- ============================================================

-- ID 12684: Analytical Procedures (11 words)
-- ORIGINAL STEM: What does horizontal analysis involve when used as an analytical procedure?
UPDATE questions SET
  stem = $EXPL$During planning for the 2025 audit of Ridgeline Manufacturing, the engagement team compares each income statement line item to the prior two years'' figures. What does this type of horizontal analysis involve when used as an analytical procedure?$EXPL$
WHERE id = 12684;

-- ID 14010: Analytical Procedures (11 words)
-- ORIGINAL STEM: In a compilation engagement performed under SSARS, are analytical procedures required?
UPDATE questions SET
  stem = $EXPL$Brennan & Associates has been engaged to compile the 2025 financial statements of a small landscaping company under SSARS. The engagement partner asks a new staff member about the required procedures. In a compilation engagement performed under SSARS, are analytical procedures required?$EXPL$
WHERE id = 14010;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1825: Attestation Engagements (13 words)
-- ORIGINAL STEM: Under the revised AT-C 215, an agreed-upon procedures report may be used by:
UPDATE questions SET
  stem = $EXPL$Kessler CPA Group completes an agreed-upon procedures engagement on a franchisee''s royalty calculations for the franchisor. The practitioner is finalizing the report distribution. Under the revised AT-C 215, an agreed-upon procedures report may be used by:$EXPL$
WHERE id = 1825;

-- ID 135: Attestation Engagements (14 words)
-- ORIGINAL STEM: In a review-level attestation engagement on prospective financial statements, the practitioner's report should include:
UPDATE questions SET
  stem = $EXPL$Novak Industries prepares a financial forecast for 2026 and engages Palmer & Co. to perform a review-level attestation on the prospective statements. The practitioner''s report should include:$EXPL$
WHERE id = 135;

-- ============================================================
-- AUDIT EVIDENCE (3 questions)
-- ============================================================

-- ID 1588: Audit Evidence (13 words)
-- ORIGINAL STEM: Which of the following factors most directly affects the appropriateness of audit evidence?
UPDATE questions SET
  stem = $EXPL$During the audit of Coastal Freight Corp., the senior associate gathers evidence from multiple sources to support the accounts receivable balance. Which of the following factors most directly affects the appropriateness of audit evidence?$EXPL$
WHERE id = 1588;

-- ID 1609: Audit Evidence (13 words)
-- ORIGINAL STEM: Which of the following best describes the auditor's responsibility regarding subsequent events procedures?
UPDATE questions SET
  stem = $EXPL$The audit of Prism Technologies'' December 31, 2025 financial statements is nearing completion in February 2026. The engagement partner reviews the team''s procedures for events occurring after the balance sheet date. Which of the following best describes the auditor''s responsibility regarding subsequent events procedures?$EXPL$
WHERE id = 1609;

-- ID 13: Audit Evidence (14 words)
-- ORIGINAL STEM: Which of the following forms of audit evidence is generally considered the most reliable?
UPDATE questions SET
  stem = $EXPL$While auditing Beacon Distributors'' cash balances, the engagement team evaluates several types of evidence, including bank statements, management representations, and third-party confirmations. Which of the following forms of audit evidence is generally considered the most reliable?$EXPL$
WHERE id = 13;

-- ============================================================
-- AUDIT PLANNING (2 questions)
-- ============================================================

-- ID 273: Audit Planning (15 words)
-- ORIGINAL STEM: When determining materiality for a not-for-profit organization, the auditor would most likely use which benchmark?
UPDATE questions SET
  stem = $EXPL$Harris & Lowe LLP is planning the audit of a regional food bank with $8 million in annual program expenses and negligible net income. When determining materiality for this not-for-profit organization, the auditor would most likely use which benchmark?$EXPL$
WHERE id = 273;

-- ID 1453: Audit Planning (15 words)
-- ORIGINAL STEM: Which of the following factors would most likely cause an auditor to increase overall materiality?
UPDATE questions SET
  stem = $EXPL$During the planning phase of the Oakmont Electronics audit, the engagement partner learns that the company''s total revenue grew 40% due to a major acquisition. Which of the following factors would most likely cause an auditor to increase overall materiality?$EXPL$
WHERE id = 1453;

-- ============================================================
-- AUDIT REPORTS (3 questions)
-- ============================================================

-- ID 337: Audit Reports (14 words)
-- ORIGINAL STEM: Under PCAOB standards, what information about auditor tenure is disclosed in the audit report?
UPDATE questions SET
  stem = $EXPL$Grant Thornton has served as the independent auditor of Vertex Pharmaceuticals, a publicly traded company, since 2016. The firm is preparing its 2025 audit report under PCAOB standards. What information about auditor tenure is disclosed in the audit report?$EXPL$
WHERE id = 337;

-- ID 1746: Audit Reports (14 words)
-- ORIGINAL STEM: In an unmodified audit report, what standards does the Basis for Opinion section reference?
UPDATE questions SET
  stem = $EXPL$Chen & Associates issues an unmodified opinion on the 2025 financial statements of a privately held manufacturer. A staff auditor reviewing the report draft asks about the Basis for Opinion section. What standards does this section reference?$EXPL$
WHERE id = 1746;

-- ID 1747: Audit Reports (14 words)
-- ORIGINAL STEM: Under AU-C 708, how should the auditor address a restatement of prior-year financial statements?
UPDATE questions SET
  stem = $EXPL$Silverton Corp. restated its 2024 financial statements to correct a revenue recognition error. The current auditor is issuing the 2025 report on comparative statements. Under AU-C 708, how should the auditor address this restatement?$EXPL$
WHERE id = 1747;

-- ============================================================
-- AUDIT SAMPLING (2 questions)
-- ============================================================

-- ID 1660: Audit Sampling (13 words)
-- ORIGINAL STEM: Which of the following is the risk of incorrect acceptance in substantive testing?
UPDATE questions SET
  stem = $EXPL$An auditor uses monetary-unit sampling to test the inventory balance of Hartwell Industries. After evaluating the sample results, the manager discusses sampling risks with the team. Which of the following is the risk of incorrect acceptance in substantive testing?$EXPL$
WHERE id = 1660;

-- ID 1661: Audit Sampling (13 words)
-- ORIGINAL STEM: Which of the following is the risk of incorrect rejection in substantive testing?
UPDATE questions SET
  stem = $EXPL$During the audit of Pinnacle Retail''s accounts receivable, the sample results suggest the balance may be materially misstated, prompting the team to consider expanding procedures. Which of the following is the risk of incorrect rejection in substantive testing?$EXPL$
WHERE id = 1661;

-- ============================================================
-- ETHICS AND INDEPENDENCE (3 questions)
-- ============================================================

-- ID 257: Ethics and Independence (16 words)
-- ORIGINAL STEM: Which of the following is a financial reporting oversight role (FROR) as defined by the SEC?
UPDATE questions SET
  stem = $EXPL$A senior audit manager at Delaney & Park LLP is considering accepting a position at Orion Systems, an SEC registrant the firm currently audits. The firm evaluates whether the new role would be a financial reporting oversight role. Which of the following positions qualifies as an FROR under SEC rules?$EXPL$
WHERE id = 257;

-- ID 258: Ethics and Independence (16 words)
-- ORIGINAL STEM: Under SEC rules, who must approve all non-audit services provided to a public company audit client?
UPDATE questions SET
  stem = $EXPL$Weston & Clark LLP proposes to provide tax compliance services to Meridian Healthcare, a publicly traded audit client. Before the engagement can begin, a required approval must be obtained. Under SEC rules, who must approve all non-audit services provided to a public company audit client?$EXPL$
WHERE id = 258;

-- ID 260: Ethics and Independence (16 words)
-- ORIGINAL STEM: Under the AICPA conceptual framework, which of the following best describes a self-interest threat to independence?
UPDATE questions SET
  stem = $EXPL$An engagement partner at Fielding CPA Group learns that his spouse recently inherited 500 shares of stock in an audit client. The firm evaluates the situation under the AICPA conceptual framework. Which of the following best describes a self-interest threat to independence?$EXPL$
WHERE id = 260;

-- ============================================================
-- INTERNAL CONTROLS (3 questions)
-- ============================================================

-- ID 108: Internal Controls (13 words)
-- ORIGINAL STEM: What is the purpose of a walkthrough in the audit of internal controls?
UPDATE questions SET
  stem = $EXPL$During the audit of Crestview Manufacturing, the senior auditor traces a purchase transaction from the initial requisition through approval, recording, and payment. What is the purpose of this walkthrough procedure in the audit of internal controls?$EXPL$
WHERE id = 108;

-- ID 1545: Internal Controls (13 words)
-- ORIGINAL STEM: Which of the following best describes an application control in an IT environment?
UPDATE questions SET
  stem = $EXPL$Lakeshore Financial recently implemented a new accounts payable module that automatically rejects invoices exceeding pre-set dollar limits without supervisor approval. The auditor is classifying this control. Which of the following best describes an application control in an IT environment?$EXPL$
WHERE id = 1545;

-- ID 1549: Internal Controls (13 words)
-- ORIGINAL STEM: When testing the design effectiveness of a control, the auditor is evaluating whether:
UPDATE questions SET
  stem = $EXPL$The audit team at Burke & Associates is evaluating a three-way match control in Trident Corp.''s procurement process. The team has not yet tested whether the control is operating consistently. When testing the design effectiveness of a control, the auditor is evaluating whether:$EXPL$
WHERE id = 1549;

-- ============================================================
-- MATERIALITY (2 questions)
-- ============================================================

-- ID 13029: Materiality (12 words)
-- ORIGINAL STEM: Under auditing standards, the auditor is required to communicate uncorrected misstatements to:
UPDATE questions SET
  stem = $EXPL$During the audit of Summerfield Retail, the engagement team identifies $85,000 in individually immaterial misstatements that management has declined to correct. Under auditing standards, the auditor is required to communicate these uncorrected misstatements to:$EXPL$
WHERE id = 13029;

-- ID 4506: Materiality (13 words)
-- ORIGINAL STEM: Materiality for the financial statements as a whole is typically determined based on:
UPDATE questions SET
  stem = $EXPL$The engagement partner for the 2025 audit of Brightstone Corp. is setting overall materiality during the planning phase. The entity is a profitable manufacturing company with stable operations. Materiality for the financial statements as a whole is typically determined based on:$EXPL$
WHERE id = 4506;

-- ============================================================
-- MODIFICATIONS TO THE AUDITOR REPORT (2 questions)
-- ============================================================

-- ID 13982: Modifications to the Auditor Report (11 words)
-- ORIGINAL STEM: Under GAAS, the auditor's going concern evaluation covers what time period?
UPDATE questions SET
  stem = $EXPL$While completing the 2025 audit of Redstone Construction, the engagement partner notes recurring operating losses and a working capital deficiency. The team begins a going concern evaluation. Under GAAS, the auditor''s going concern evaluation covers what time period?$EXPL$
WHERE id = 13982;

-- ID 4669: Modifications to the Auditor Report (12 words)
-- ORIGINAL STEM: An other-matter paragraph differs from an emphasis-of-matter paragraph because an other-matter paragraph:
UPDATE questions SET
  stem = $EXPL$After issuing an unmodified opinion on Terrace Holdings'' 2025 financial statements, the auditor considers adding an additional paragraph to the report. The auditor must determine whether an emphasis-of-matter or other-matter paragraph is appropriate. An other-matter paragraph differs from an emphasis-of-matter paragraph because an other-matter paragraph:$EXPL$
WHERE id = 4669;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 4410: Nature and Scope of Engagements (14 words)
-- ORIGINAL STEM: Which of the following best describes the difference between reasonable assurance and limited assurance?
UPDATE questions SET
  stem = $EXPL$A prospective client, Maplewood Industries, asks its CPA to explain the difference between an audit and a review engagement. The CPA explains the assurance levels involved. Which of the following best describes the difference between reasonable assurance and limited assurance?$EXPL$
WHERE id = 4410;

-- ID 4420: Nature and Scope of Engagements (14 words)
-- ORIGINAL STEM: The presentation and disclosure assertion for financial statements addresses all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$During the audit of Cascade Electronics, the team documents the assertions relevant to the notes to the financial statements. The presentation and disclosure assertion for financial statements addresses all of the following EXCEPT:$EXPL$
WHERE id = 4420;

-- ============================================================
-- OTHER INFORMATION AND SUPPLEMENTARY INFORMATION (2 questions)
-- ============================================================

-- ID 4702: Other Information and Supplementary Information (13 words)
-- ORIGINAL STEM: When the auditor's report includes reporting on RSI, the report should indicate that:
UPDATE questions SET
  stem = $EXPL$The auditor of a municipality''s 2025 financial statements includes a section on the required supplementary information (RSI) that accompanies the basic financial statements. When the auditor''s report includes reporting on RSI, the report should indicate that:$EXPL$
WHERE id = 4702;

-- ID 4686: Other Information and Supplementary Information (14 words)
-- ORIGINAL STEM: The auditor's responsibility regarding other information in documents containing audited financial statements is to:
UPDATE questions SET
  stem = $EXPL$Elton Industries publishes an annual report that includes the audited financial statements alongside management''s discussion and analysis and a letter to shareholders. The auditor''s responsibility regarding this other information in documents containing audited financial statements is to:$EXPL$
WHERE id = 4686;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (2 questions)
-- ============================================================

-- ID 4452: Professional Skepticism and Judgment (12 words)
-- ORIGINAL STEM: Documentation of professional judgments in the audit workpapers serves which primary purpose?
UPDATE questions SET
  stem = $EXPL$During the quality review of the Greystone Industries audit file, the reviewer notes that the engagement team documented key judgments about revenue recognition estimates. Documentation of professional judgments in the audit workpapers serves which primary purpose?$EXPL$
WHERE id = 4452;

-- ID 4454: Professional Skepticism and Judgment (12 words)
-- ORIGINAL STEM: Which of the following situations would most likely require heightened professional skepticism?
UPDATE questions SET
  stem = $EXPL$The engagement team for Delta Fabrication''s 2025 audit identifies several conditions during planning, including management''s aggressive revenue targets tied to executive bonuses. Which of the following situations would most likely require heightened professional skepticism?$EXPL$
WHERE id = 4454;

-- ============================================================
-- QUALITY MANAGEMENT (2 questions)
-- ============================================================

-- ID 136: Quality Management (15 words)
-- ORIGINAL STEM: Which of the following is a responsibility of the engagement partner under quality management standards?
UPDATE questions SET
  stem = $EXPL$Morgan LLP assigns partner Sarah Whitfield to lead the audit of a mid-size technology company. Under SAS No. 146, her responsibilities are defined by quality management standards. Which of the following is a responsibility of the engagement partner under these standards?$EXPL$
WHERE id = 136;

-- ID 137: Quality Management (15 words)
-- ORIGINAL STEM: Under SQMS No. 1, which of the following best describes the monitoring and remediation component?
UPDATE questions SET
  stem = $EXPL$As part of its annual quality management evaluation, Prescott & Vale LLP assesses whether its internal policies are functioning as intended and addresses identified deficiencies. Under SQMS No. 1, which of the following best describes the monitoring and remediation component?$EXPL$
WHERE id = 137;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (2 questions)
-- ============================================================

-- ID 4538: Responding to Assessed Risks (14 words)
-- ORIGINAL STEM: For a significant risk, the auditor's substantive procedures must include which of the following?
UPDATE questions SET
  stem = $EXPL$The audit team identifies revenue recognition at Foxworth Media as a significant risk due to complex multi-element arrangements. The team designs responsive procedures. For a significant risk, the auditor''s substantive procedures must include which of the following?$EXPL$
WHERE id = 4538;

-- ID 4543: Responding to Assessed Risks (15 words)
-- ORIGINAL STEM: The auditor's overall response to assessed risks at the financial statement level is documented in:
UPDATE questions SET
  stem = $EXPL$After completing risk assessment for the Hayward Corp. engagement, the audit manager identifies pervasive risks including a weak control environment and management turnover. The auditor''s overall response to assessed risks at the financial statement level is documented in:$EXPL$
WHERE id = 4543;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 1770: Review and Compilation (14 words)
-- ORIGINAL STEM: Which of the following is required for all SSARS engagements (preparation, compilation, and review)?
UPDATE questions SET
  stem = $EXPL$Langford CPA Group performs a variety of SSARS engagements ranging from preparation services to full reviews for its small business clients. Which of the following is required for all SSARS engagements, including preparation, compilation, and review?$EXPL$
WHERE id = 1770;

-- ID 344: Review and Compilation (15 words)
-- ORIGINAL STEM: When a client requests a downgrade from an audit to a review, the auditor should:
UPDATE questions SET
  stem = $EXPL$Midway through the audit of Canton Supply, management requests that the engagement be changed to a review, citing budget constraints. When a client requests a downgrade from an audit to a review, the auditor should:$EXPL$
WHERE id = 344;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1791: Review/Compilation Engagements (13 words)
-- ORIGINAL STEM: The standard review report for a nonissuer includes which of the following conclusions?
UPDATE questions SET
  stem = $EXPL$After completing the review of Elm Street Bakery''s 2025 financial statements under SSARS, the accountant prepares the report. The standard review report for a nonissuer includes which of the following conclusions?$EXPL$
WHERE id = 1791;

-- ID 1789: Review/Compilation Engagements (15 words)
-- ORIGINAL STEM: An accountant designing analytical procedures for a review of a manufacturing company would most likely:
UPDATE questions SET
  stem = $EXPL$Torres & Associates is performing a review engagement for Granite Machining, a precision parts manufacturer with $12 million in annual revenue. An accountant designing analytical procedures for this review would most likely:$EXPL$
WHERE id = 1789;

-- ============================================================
-- RISK ASSESSMENT (2 questions)
-- ============================================================

-- ID 8: Risk Assessment (15 words)
-- ORIGINAL STEM: Under AU-C 330, what is the appropriate audit response when a significant risk is identified?
UPDATE questions SET
  stem = $EXPL$During the risk assessment phase of the Waverly Hotels audit, the engagement team identifies a significant risk related to management''s goodwill impairment estimates. Under AU-C 330, what is the appropriate audit response when a significant risk is identified?$EXPL$
WHERE id = 8;

-- ID 276: Risk Assessment (15 words)
-- ORIGINAL STEM: Under AU-C 330, what must the auditor perform when a significant risk has been identified?
UPDATE questions SET
  stem = $EXPL$The audit team for Northpoint Energy classifies the allowance for doubtful accounts as a significant risk due to high estimation uncertainty and subjective judgment. Under AU-C 330, what must the auditor perform when a significant risk has been identified?$EXPL$
WHERE id = 276;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 7598: Specific Areas and Transactions (12 words)
-- ORIGINAL STEM: What is the roll-forward period in the context of an audit engagement?
UPDATE questions SET
  stem = $EXPL$The audit team for Pacific Lumber tested the accounts receivable balance at September 30, 2025, three months before the December 31 year-end. What is the roll-forward period in the context of this audit engagement?$EXPL$
WHERE id = 7598;

-- ID 7601: Specific Areas and Transactions (12 words)
-- ORIGINAL STEM: Which of the following best describes tests of details in an audit?
UPDATE questions SET
  stem = $EXPL$During the audit of Ridgeview Auto Parts, the engagement team vouches individual sales invoices to shipping documents and customer orders. Which of the following best describes these tests of details in an audit?$EXPL$
WHERE id = 7601;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (2 questions)
-- ============================================================

-- ID 1671: Substantive Procedures (14 words)
-- ORIGINAL STEM: Which of the following factors most increases the reliability of a substantive analytical procedure?
UPDATE questions SET
  stem = $EXPL$An auditor uses a substantive analytical procedure to estimate Parkway Transit''s annual depreciation expense by multiplying asset balances by applicable rates. Which of the following factors most increases the reliability of this substantive analytical procedure?$EXPL$
WHERE id = 1671;

-- ID 1691: Substantive Procedures (14 words)
-- ORIGINAL STEM: Which assertion is affected when a transaction is recorded in the wrong accounting period?
UPDATE questions SET
  stem = $EXPL$During cutoff testing for Garrison Electronics, the auditor discovers that a $450,000 sale shipped on January 3, 2026 was recorded as December 2025 revenue. Which assertion is affected when a transaction is recorded in the wrong accounting period?$EXPL$
WHERE id = 1691;

-- ============================================================
-- TESTS OF CONTROLS (2 questions)
-- ============================================================

-- ID 14037: Tests of Controls (12 words)
-- ORIGINAL STEM: Under AU-C 330, controls that address a significant risk must be tested:
UPDATE questions SET
  stem = $EXPL$The audit team for Vanguard Logistics identifies revenue recognition as a significant risk and plans to rely on related controls. Under AU-C 330, controls that address a significant risk must be tested:$EXPL$
WHERE id = 14037;

-- ID 14038: Tests of Controls (12 words)
-- ORIGINAL STEM: The extent of the auditor's tests of controls is primarily influenced by:
UPDATE questions SET
  stem = $EXPL$While planning tests of controls over Ashford Corp.''s disbursement cycle, the audit manager determines how many transactions to select for testing. The extent of the auditor''s tests of controls is primarily influenced by:$EXPL$
WHERE id = 14038;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (2 questions)
-- ============================================================

-- ID 4496: Understanding the Entity and Environment (14 words)
-- ORIGINAL STEM: When understanding the entity's measurement and review of financial performance, the auditor should consider:
UPDATE questions SET
  stem = $EXPL$During the planning phase of the Bridgeport Plastics audit, the engagement team reviews the company''s internal dashboards, KPIs, and budget-to-actual variance reports. When understanding the entity''s measurement and review of financial performance, the auditor should consider:$EXPL$
WHERE id = 4496;

-- ID 4486: Understanding the Entity and Environment (15 words)
-- ORIGINAL STEM: Why is it important for the auditor to understand the entity's industry and regulatory environment?
UPDATE questions SET
  stem = $EXPL$Before beginning fieldwork on the audit of Keystone Pharmaceuticals, the engagement team researches FDA regulations, industry trends, and competitive pressures. Why is it important for the auditor to understand the entity''s industry and regulatory environment?$EXPL$
WHERE id = 4486;

-- ============================================================
-- USING THE WORK OF OTHERS (2 questions)
-- ============================================================

-- ID 13362: Using the Work of Others (13 words)
-- ORIGINAL STEM: What is a subservice organization in the context of a SOC 1 engagement?
UPDATE questions SET
  stem = $EXPL$DataVault Payroll Services processes payroll for hundreds of clients but outsources its data hosting to CloudNest Inc. The service auditor is scoping the SOC 1 engagement. What is a subservice organization in this context?$EXPL$
WHERE id = 13362;

-- ID 13365: Using the Work of Others (13 words)
-- ORIGINAL STEM: In a group audit, what characteristic defines a component as individually financially significant?
UPDATE questions SET
  stem = $EXPL$Atlas Global Corp. has subsidiaries across twelve countries, with its European division representing 35% of consolidated revenue. The group engagement partner is classifying components. In a group audit, what characteristic defines a component as individually financially significant?$EXPL$
WHERE id = 13365;

COMMIT;
