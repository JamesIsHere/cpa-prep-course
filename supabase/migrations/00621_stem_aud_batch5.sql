-- Migration: Stem expansion — AUD batch 5 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Modifications to the Auditor Report, Nature and Scope of Engagements, Other Information and Supplementary Information, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (2 questions)
-- ============================================================

-- ID 12676: Analytical Procedures (10 words)
-- ORIGINAL STEM: What must the auditor document when performing substantive analytical procedures?
UPDATE questions SET
  stem = $EXPL$During the 2025 audit of Ridgeway Electronics, the senior associate uses a substantive analytical procedure to test payroll expense by comparing an independently developed estimate to the recorded amount. What must the auditor document when performing this procedure?$EXPL$
WHERE id = 12676;

-- ID 12673: Analytical Procedures (11 words)
-- ORIGINAL STEM: What is cross-sectional analysis in the context of audit analytical procedures?
UPDATE questions SET
  stem = $EXPL$While planning the audit of Lakeview Hotels, the engagement team compares the client''s occupancy revenue per room to published industry averages for similar regional chains. What type of analytical procedure is the team performing?$EXPL$
WHERE id = 12673;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1817: Attestation Engagements (13 words)
-- ORIGINAL STEM: The Statements on Standards for Attestation Engagements (SSAEs) are codified under which designation?
UPDATE questions SET
  stem = $EXPL$A practitioner at Kline & Associates is preparing for an examination engagement on a client''s compliance assertion. When citing the applicable professional standards, the Statements on Standards for Attestation Engagements (SSAEs) are codified under which designation?$EXPL$
WHERE id = 1817;

-- ID 1818: Attestation Engagements (13 words)
-- ORIGINAL STEM: Under the attestation standards, which three types of engagements may a practitioner perform?
UPDATE questions SET
  stem = $EXPL$Beacon Consulting Group has been asked by a nonprofit client to evaluate its grant compliance. The managing partner reviews the SSAE framework to determine the available service options. Under the attestation standards, which three types of engagements may a practitioner perform?$EXPL$
WHERE id = 1818;

-- ============================================================
-- AUDIT EVIDENCE (2 questions)
-- ============================================================

-- ID 297: Audit Evidence (13 words)
-- ORIGINAL STEM: What should an auditor do when a positive confirmation is returned as undeliverable?
UPDATE questions SET
  stem = $EXPL$During the December 2025 accounts receivable confirmation process for Halston Distributors, a positive confirmation mailed to a customer with a $215,000 balance is returned by the postal service as undeliverable. What should the auditor do?$EXPL$
WHERE id = 297;

-- ID 299: Audit Evidence (13 words)
-- ORIGINAL STEM: An auditor is testing inventory existence. Which procedure provides the most persuasive evidence?
UPDATE questions SET
  stem = $EXPL$Clearwater Marine Supply reports $8.4 million in inventory across two warehouse locations at December 31, 2025. The engagement team is designing procedures to test the existence assertion. Which procedure provides the most persuasive evidence?$EXPL$
WHERE id = 299;

-- ============================================================
-- AUDIT PLANNING (2 questions)
-- ============================================================

-- ID 1458: Audit Planning (14 words)
-- ORIGINAL STEM: When an auditor uses the work of an auditor's specialist, the auditor's report should:
UPDATE questions SET
  stem = $EXPL$For the 2025 audit of Pinnacle Insurance Corp., the engagement team engages an independent actuary to evaluate the $42 million loss reserve estimate. After incorporating the specialist''s findings, the auditor''s report should:$EXPL$
WHERE id = 1458;

-- ID 99: Audit Planning (15 words)
-- ORIGINAL STEM: When using the work of a specialist, which of the following is the auditor's responsibility?
UPDATE questions SET
  stem = $EXPL$During the audit of Granite Properties, the team retains a real estate appraiser to value a portfolio of commercial buildings. When using the work of this specialist, which of the following is the auditor''s responsibility?$EXPL$
WHERE id = 99;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 1717: Audit Reports (13 words)
-- ORIGINAL STEM: Under AU-C 706, what condition must be met for including an emphasis-of-matter paragraph?
UPDATE questions SET
  stem = $EXPL$After completing fieldwork for Redstone Manufacturing, the engagement partner considers adding a paragraph to draw readers'' attention to a significant related-party transaction disclosed in the notes. Under AU-C 706, what condition must be met for including an emphasis-of-matter paragraph?$EXPL$
WHERE id = 1717;

-- ID 332: Audit Reports (14 words)
-- ORIGINAL STEM: A material weakness identified during an integrated audit of a public company results in:
UPDATE questions SET
  stem = $EXPL$During the 2025 integrated audit of Vanguard Technologies, a publicly traded company, the engagement team identifies a material weakness in the revenue recognition controls. This finding results in:$EXPL$
WHERE id = 332;

-- ============================================================
-- AUDIT SAMPLING (1 questions)
-- ============================================================

-- ID 1648: Audit Sampling (13 words)
-- ORIGINAL STEM: When projecting misstatements found in a sample to the population, the auditor should:
UPDATE questions SET
  stem = $EXPL$An auditor testing Orion Freight''s $6.2 million accounts receivable balance selected a sample of 40 items and found three misstatements totaling $4,800. When projecting these misstatements to the population, the auditor should:$EXPL$
WHERE id = 1648;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 1334: Ethics and Independence (15 words)
-- ORIGINAL STEM: Under the AICPA Code, which type of loan is generally prohibited for a covered member?
UPDATE questions SET
  stem = $EXPL$Sarah Keller, a senior manager on the Apex Corp. audit engagement, is applying for a personal loan from Apex''s subsidiary bank. Under the AICPA Code of Professional Conduct, which type of loan is generally prohibited for a covered member?$EXPL$
WHERE id = 1334;

-- ID 92: Ethics and Independence (16 words)
-- ORIGINAL STEM: Under the AICPA Code of Professional Conduct, independence is required when performing which type of service?
UPDATE questions SET
  stem = $EXPL$A CPA at Fletcher & Lane provides tax preparation, consulting, and attest services to various clients. Under the AICPA Code of Professional Conduct, independence is required when performing which type of service?$EXPL$
WHERE id = 92;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (1 questions)
-- ============================================================

-- ID 1132: Government Auditing Standards (13 words)
-- ORIGINAL STEM: A performance audit finding under GAGAS should include which of the following elements?
UPDATE questions SET
  stem = $EXPL$A GAO audit team evaluates the effectiveness of a federal job training program and identifies that participant completion rates fall well below the agency''s targets. When drafting this performance audit finding under GAGAS, the report should include which of the following elements?$EXPL$
WHERE id = 1132;

-- ============================================================
-- INDEPENDENCE (1 questions)
-- ============================================================

-- ID 4439: Independence (13 words)
-- ORIGINAL STEM: Under the AICPA Code, independence is required for which of the following services?
UPDATE questions SET
  stem = $EXPL$Martin & Webb CPAs provides audit, tax advisory, and bookkeeping services to a range of nonissuer clients. The quality control partner is updating the firm''s independence policies. Under the AICPA Code, independence is required for which of the following services?$EXPL$
WHERE id = 4439;

-- ============================================================
-- INTERNAL CONTROLS (2 questions)
-- ============================================================

-- ID 1544: Internal Controls (12 words)
-- ORIGINAL STEM: The risk assessment component of COSO internal control requires the entity to:
UPDATE questions SET
  stem = $EXPL$Bridgeport Logistics recently adopted the COSO Internal Control — Integrated Framework. The CFO is documenting the entity''s risk assessment component. Under this framework, the risk assessment component requires the entity to:$EXPL$
WHERE id = 1544;

-- ID 1568: Internal Controls (12 words)
-- ORIGINAL STEM: When evaluating the design of entity-level controls, the auditor should consider whether:
UPDATE questions SET
  stem = $EXPL$During the planning phase of the Cascade Financial Services audit, the engagement team assesses the organization''s governance structure, tone at the top, and monitoring activities. When evaluating the design of these entity-level controls, the auditor should consider whether:$EXPL$
WHERE id = 1568;

-- ============================================================
-- MATERIALITY (2 questions)
-- ============================================================

-- ID 13038: Materiality (10 words)
-- ORIGINAL STEM: Materiality in auditing is determined based on the perspective of:
UPDATE questions SET
  stem = $EXPL$During planning for the 2025 audit of Trident Health Systems, the engagement partner sets overall materiality at $950,000. A staff auditor asks whose perspective drives this threshold. Materiality in auditing is determined based on the perspective of:$EXPL$
WHERE id = 13038;

-- ID 4516: Materiality (11 words)
-- ORIGINAL STEM: When the auditor revises materiality during the audit, the auditor should:
UPDATE questions SET
  stem = $EXPL$Midway through fieldwork for Pacific Coast Apparel, the auditor discovers that actual pre-tax income is significantly lower than the planning estimate used to set materiality. When revising materiality during the audit, the auditor should:$EXPL$
WHERE id = 4516;

-- ============================================================
-- MODIFICATIONS TO THE AUDITOR REPORT (1 questions)
-- ============================================================

-- ID 4684: Modifications to the Auditor Report (10 words)
-- ORIGINAL STEM: When an auditor disclaims an opinion, the auditor's report should:
UPDATE questions SET
  stem = $EXPL$The auditor of Summit Development Corp. was engaged after the December 31, 2025 physical inventory count and cannot satisfy the existence assertion through alternative procedures. Inventory represents 65% of total assets. When the auditor disclaims an opinion, the report should:$EXPL$
WHERE id = 4684;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 4409: Nature and Scope of Engagements (12 words)
-- ORIGINAL STEM: Reasonable assurance, as used in auditing standards, means which of the following?
UPDATE questions SET
  stem = $EXPL$A newly hired staff auditor at Whitfield & Associates asks the engagement partner to clarify the level of confidence an audit provides. Reasonable assurance, as used in auditing standards, means which of the following?$EXPL$
WHERE id = 4409;

-- ID 13866: Nature and Scope of Engagements (12 words)
-- ORIGINAL STEM: What level of assurance does a CPA provide in a compilation engagement?
UPDATE questions SET
  stem = $EXPL$Drake Consulting, a small manufacturing firm, engages a CPA to assist in preparing its year-end financial statements without any verification procedures. What level of assurance does the CPA provide in this compilation engagement?$EXPL$
WHERE id = 13866;

-- ============================================================
-- OTHER INFORMATION AND SUPPLEMENTARY INFORMATION (1 questions)
-- ============================================================

-- ID 4691: Other Information and Supplementary Information (11 words)
-- ORIGINAL STEM: The auditor's procedures with respect to required supplementary information (RSI) include:
UPDATE questions SET
  stem = $EXPL$The financial statements of Metro Transit Authority include required supplementary information presenting pension obligation schedules. The engagement team is determining its responsibilities for this RSI. The auditor''s procedures with respect to required supplementary information include:$EXPL$
WHERE id = 4691;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 questions)
-- ============================================================

-- ID 1349: Professional Responsibilities (14 words)
-- ORIGINAL STEM: Which situation requires a CPA to disclose confidential client information without the client's consent?
UPDATE questions SET
  stem = $EXPL$Carla Reeves, CPA, learns during the audit of Northwind Industries that confidential client data may need to be disclosed under certain circumstances. Which situation requires a CPA to disclose confidential client information without the client''s consent?$EXPL$
WHERE id = 1349;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (2 questions)
-- ============================================================

-- ID 13904: Professional Skepticism and Judgment (11 words)
-- ORIGINAL STEM: The level of professional skepticism an auditor applies should increase when:
UPDATE questions SET
  stem = $EXPL$During the 2025 audit of Crestwood Pharmaceuticals, the engagement team notes that management has aggressive earnings targets tied to executive bonuses and that the CFO was recently replaced. The level of professional skepticism the auditor applies should increase when:$EXPL$
WHERE id = 13904;

-- ID 4447: Professional Skepticism and Judgment (12 words)
-- ORIGINAL STEM: Which of the following best illustrates a failure to exercise professional skepticism?
UPDATE questions SET
  stem = $EXPL$The audit manager on the TerraVerde Energy engagement reviews the team''s workpapers and notices several instances where the staff accepted management''s verbal explanations without corroboration. Which of the following best illustrates a failure to exercise professional skepticism?$EXPL$
WHERE id = 4447;

-- ============================================================
-- QUALITY MANAGEMENT (1 questions)
-- ============================================================

-- ID 1389: Quality Management (14 words)
-- ORIGINAL STEM: Under SQMS No. 1, which of the following is included in the 'resources' component?
UPDATE questions SET
  stem = $EXPL$Hartwell & Associates, a mid-size audit firm, is implementing its quality management system under the new SQMS No. 1 requirements. The managing partner is cataloging the firm''s resources. Which of the following is included in the resources component?$EXPL$
WHERE id = 1389;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (2 questions)
-- ============================================================

-- ID 4537: Responding to Assessed Risks (12 words)
-- ORIGINAL STEM: When substantive procedures are performed at an interim date, the auditor must:
UPDATE questions SET
  stem = $EXPL$The audit team for Belmont Retail completes accounts receivable confirmation procedures as of October 31, 2025, three months before the December 31 year-end. When substantive procedures are performed at an interim date, the auditor must:$EXPL$
WHERE id = 4537;

-- ID 13083: Responding to Assessed Risks (13 words)
-- ORIGINAL STEM: What is the primary purpose of performing tests of controls during an audit?
UPDATE questions SET
  stem = $EXPL$During the audit of Kenmore Manufacturing, the engagement team plans to rely on the client''s automated three-way matching control over purchasing transactions. What is the primary purpose of performing tests of controls in this context?$EXPL$
WHERE id = 13083;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 1751: Review and Compilation (14 words)
-- ORIGINAL STEM: Under the SSARS framework, which standards govern review, compilation, and preparation engagements for nonissuers?
UPDATE questions SET
  stem = $EXPL$A CPA at Porter & Dunn is engaged to review the financial statements of a privately held restaurant chain. The partner asks which professional standards apply. Under the SSARS framework, which standards govern review, compilation, and preparation engagements for nonissuers?$EXPL$
WHERE id = 1751;

-- ID 1759: Review and Compilation (14 words)
-- ORIGINAL STEM: Is an accountant required to be independent when performing a review engagement under SSARS?
UPDATE questions SET
  stem = $EXPL$Greenfield Advisors CPAs has been asked by a nonissuer client to perform a review of its 2025 financial statements. The engagement partner evaluates potential independence concerns. Is an accountant required to be independent when performing a review engagement under SSARS?$EXPL$
WHERE id = 1759;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (1 questions)
-- ============================================================

-- ID 1787: Review/Compilation Engagements (13 words)
-- ORIGINAL STEM: During a review engagement, the accountant's inquiries regarding revenue recognition should focus on:
UPDATE questions SET
  stem = $EXPL$Holloway & Fitch CPAs is performing a review of Atlas Event Services, which earns revenue from multi-day event contracts. During the review engagement, the accountant''s inquiries regarding revenue recognition should focus on:$EXPL$
WHERE id = 1787;

-- ============================================================
-- RISK ASSESSMENT (2 questions)
-- ============================================================

-- ID 1496: Risk Assessment (14 words)
-- ORIGINAL STEM: Which of the following best describes the relationship between inherent risk and control risk?
UPDATE questions SET
  stem = $EXPL$While training a new staff member on the audit risk model, a senior auditor at Townsend & Park explains how different risk components interact. Which of the following best describes the relationship between inherent risk and control risk?$EXPL$
WHERE id = 1496;

-- ID 1497: Risk Assessment (14 words)
-- ORIGINAL STEM: When assessing the risk of material misstatement, the auditor considers risks at which levels?
UPDATE questions SET
  stem = $EXPL$During planning for the 2025 audit of Silverline Aerospace, the engagement team identifies both broad organizational concerns and account-specific vulnerabilities. When assessing the risk of material misstatement, the auditor considers risks at which levels?$EXPL$
WHERE id = 1497;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 7589: Specific Areas and Transactions (11 words)
-- ORIGINAL STEM: What is the primary characteristic of a dual-purpose test in auditing?
UPDATE questions SET
  stem = $EXPL$While auditing Cortland Packaging, the senior associate inspects purchase orders for proper authorization signatures and simultaneously verifies the recorded dollar amounts against supporting invoices. What is the primary characteristic of this type of test?$EXPL$
WHERE id = 7589;

-- ID 4662: Specific Areas and Transactions (12 words)
-- ORIGINAL STEM: When auditing significant unusual transactions, the auditor should be particularly alert for:
UPDATE questions SET
  stem = $EXPL$In December 2025, Dalton Corp. enters into a large asset sale-leaseback transaction with a related party at terms significantly above market. When auditing significant unusual transactions like this, the auditor should be particularly alert for:$EXPL$
WHERE id = 4662;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (8 questions)
-- ============================================================

-- ID 315: Substantive Procedures (13 words)
-- ORIGINAL STEM: Under AU-C 540, what is management bias in the context of accounting estimates?
UPDATE questions SET
  stem = $EXPL$During the audit of Waverly Construction, the engagement team notices that management''s estimates for project completion percentages consistently fall at the most favorable end of reasonable ranges. Under AU-C 540, what is management bias in the context of accounting estimates?$EXPL$
WHERE id = 315;

-- ID 316: Substantive Procedures (13 words)
-- ORIGINAL STEM: When testing the allowance for doubtful accounts, the most effective procedure is to:
UPDATE questions SET
  stem = $EXPL$Thornton Medical Group reports a $2.8 million allowance for doubtful accounts at December 31, 2025. The auditor is designing substantive procedures to evaluate this estimate. The most effective procedure is to:$EXPL$
WHERE id = 316;

-- ID 321: Substantive Procedures (13 words)
-- ORIGINAL STEM: What is the most effective procedure for testing the completeness of accounts payable?
UPDATE questions SET
  stem = $EXPL$At year-end, Oakridge Furniture reports accounts payable of $3.1 million. The auditor suspects some vendor invoices received in early January may relate to goods received before December 31. What is the most effective procedure for testing completeness of accounts payable?$EXPL$
WHERE id = 321;

-- ID 323: Substantive Procedures (13 words)
-- ORIGINAL STEM: Under AU-C 500, what is the direction of testing for the existence assertion?
UPDATE questions SET
  stem = $EXPL$An auditor testing the accounts receivable balance of Prestige Automotive selects items from the subsidiary ledger and traces each to supporting shipping documents and sales orders. Under AU-C 500, this direction of testing addresses which assertion?$EXPL$
WHERE id = 323;

-- ID 1682: Substantive Procedures (13 words)
-- ORIGINAL STEM: Which procedure is most relevant for testing the valuation assertion for accounts receivable?
UPDATE questions SET
  stem = $EXPL$Cascade Wholesale reports $5.6 million in trade receivables at year-end, and several large customer accounts are significantly past due. Which procedure is most relevant for testing the valuation assertion for accounts receivable?$EXPL$
WHERE id = 1682;

-- ID 1685: Substantive Procedures (13 words)
-- ORIGINAL STEM: What is the primary purpose of test counts during the auditor's inventory observation?
UPDATE questions SET
  stem = $EXPL$On December 31, 2025, the audit team attends the physical inventory count at Jensen Hardware''s distribution center. Staff auditors independently count selected bins and compare results to the client''s count tags. What is the primary purpose of these test counts?$EXPL$
WHERE id = 1685;

-- ID 1706: Substantive Procedures (13 words)
-- ORIGINAL STEM: Which characteristic makes a management plan most effective for mitigating going concern doubt?
UPDATE questions SET
  stem = $EXPL$Harborview Shipping has reported recurring operating losses and negative cash flows for the past two years. Management presents the auditor with a plan to address these conditions. Which characteristic makes a management plan most effective for mitigating going concern doubt?$EXPL$
WHERE id = 1706;

-- ID 18: Substantive Procedures (14 words)
-- ORIGINAL STEM: Which of the following substantive procedures would be most effective in detecting unrecorded liabilities?
UPDATE questions SET
  stem = $EXPL$During the 2025 year-end audit of Meridian Plastics, the engagement team is concerned that certain vendor invoices may not have been recorded before the closing date. Which substantive procedure would be most effective in detecting unrecorded liabilities?$EXPL$
WHERE id = 18;

-- ============================================================
-- TERMS OF ENGAGEMENT (1 questions)
-- ============================================================

-- ID 4466: Terms of Engagement (13 words)
-- ORIGINAL STEM: Which of the following is a required element of an audit engagement letter?
UPDATE questions SET
  stem = $EXPL$Harrison & Cole LLP has been approached by a new client, Apex Industries, to perform an annual financial statement audit. The partner drafts a formal written agreement before beginning any fieldwork. Which of the following is a required element of this engagement letter?$EXPL$
WHERE id = 4466;

-- ============================================================
-- TESTS OF CONTROLS (2 questions)
-- ============================================================

-- ID 4571: Tests of Controls (11 words)
-- ORIGINAL STEM: Which of the following is NOT a method of testing controls?
UPDATE questions SET
  stem = $EXPL$During the audit of Sterling Medical Devices, the engagement team plans to rely on the client''s invoice approval controls and must test their operating effectiveness. Which of the following is NOT a method of testing controls?$EXPL$
WHERE id = 4571;

-- ID 12830: Tests of Controls (12 words)
-- ORIGINAL STEM: An auditor is required to test the operating effectiveness of controls when:
UPDATE questions SET
  stem = $EXPL$During the planning phase of the Northbridge Financial audit, the engagement team debates whether to test the operating effectiveness of the client''s automated reconciliation controls. An auditor is required to test operating effectiveness of controls when:$EXPL$
WHERE id = 12830;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 questions)
-- ============================================================

-- ID 4501: Understanding the Entity and Environment (13 words)
-- ORIGINAL STEM: When understanding a governmental entity's environment, the auditor should pay particular attention to:
UPDATE questions SET
  stem = $EXPL$The audit firm of Burke & Sloan has been engaged to audit the financial statements of a county school district that receives significant federal funding. When understanding this governmental entity''s environment, the auditor should pay particular attention to:$EXPL$
WHERE id = 4501;

-- ============================================================
-- USING THE WORK OF OTHERS (2 questions)
-- ============================================================

-- ID 4552: Using the Work of Others (13 words)
-- ORIGINAL STEM: The external auditor may use the work of the internal audit function to:
UPDATE questions SET
  stem = $EXPL$Eastgate Financial has a well-staffed internal audit department that recently completed a review of the company''s loan loss reserves. The external auditor evaluates the internal audit function''s competence and objectivity. The external auditor may use their work to:$EXPL$
WHERE id = 4552;

-- ID 13341: Using the Work of Others (13 words)
-- ORIGINAL STEM: What is the purpose of a bridge letter obtained from a service organization?
UPDATE questions SET
  stem = $EXPL$During the audit of Skyler Wealth Management, the auditor obtains a SOC 1 Type 2 report from the client''s custodian bank that covers only the period through September 30, 2025. What is the purpose of a bridge letter obtained from the service organization?$EXPL$
WHERE id = 13341;

COMMIT;
