-- Migration: Stem expansion — AUD batch 7 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Modifications to the Auditor Report, Nature and Scope of Engagements, Other Information and Supplementary Information, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (2 questions)
-- ============================================================

-- ID 14017: Analytical Procedures (11 words)
-- ORIGINAL STEM: What distinguishes a substantive analytical procedure from a simple reasonableness test?
UPDATE questions SET
  stem = $EXPL$During the audit of Ridgeway Manufacturing, the senior associate performs a detailed payroll expense calculation using headcount data, average pay rates, and known raises. The engagement partner asks how this differs from simply checking whether the total ''looks about right.'' What distinguishes a substantive analytical procedure from a simple reasonableness test?$EXPL$
WHERE id = 14017;

-- ID 4603: Analytical Procedures (13 words)
-- ORIGINAL STEM: Which of the following types of analytical procedures provides the most precise expectation?
UPDATE questions SET
  stem = $EXPL$While planning the audit of Eastbrook Retail Corp., the engagement team debates which analytical approach to use for testing depreciation expense. The team considers comparing current-year totals to prior-year totals, developing an independent estimate using the asset register, and comparing to industry averages. Which type of analytical procedure provides the most precise expectation?$EXPL$
WHERE id = 4603;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 353: Attestation Engagements (14 words)
-- ORIGINAL STEM: Under the Single Audit Act, entities spending $750,000 or more in federal awards must:
UPDATE questions SET
  stem = $EXPL$Clearwater County received a $500,000 FEMA disaster relief grant and a $320,000 EPA clean water grant during fiscal year 2025, bringing total federal expenditures to $820,000. Under the Single Audit Act, entities spending $750,000 or more in federal awards must:$EXPL$
WHERE id = 353;

-- ID 356: Attestation Engagements (14 words)
-- ORIGINAL STEM: Which of the following is NOT an acceptable engagement type for prospective financial statements?
UPDATE questions SET
  stem = $EXPL$Pinnacle Holdings asks its CPA firm to provide assurance on a five-year financial forecast the company plans to include in a loan application. The engagement partner reviews the attestation standards for prospective financial information. Which of the following is NOT an acceptable engagement type for prospective financial statements?$EXPL$
WHERE id = 356;

-- ============================================================
-- AUDIT EVIDENCE (2 questions)
-- ============================================================

-- ID 1591: Audit Evidence (14 words)
-- ORIGINAL STEM: Which of the following types of audit evidence is generally considered the least reliable?
UPDATE questions SET
  stem = $EXPL$During the audit of Grayson Industries, the team gathers evidence from multiple sources including bank confirmations, management inquiries, shipping documents, and externally prepared reports. The senior associate asks which form of evidence carries the least weight. Which type of audit evidence is generally considered the least reliable?$EXPL$
WHERE id = 1591;

-- ID 1598: Audit Evidence (14 words)
-- ORIGINAL STEM: If management refuses to provide one or more requested written representations, the auditor should:
UPDATE questions SET
  stem = $EXPL$Near the conclusion of the audit of Dawson Electronics, the CFO declines to sign portions of the management representation letter, citing concerns about personal liability. If management refuses to provide one or more requested written representations, the auditor should:$EXPL$
WHERE id = 1598;

-- ============================================================
-- AUDIT PLANNING (2 questions)
-- ============================================================

-- ID 6: Audit Planning (16 words)
-- ORIGINAL STEM: Which of the following would an auditor least likely consider when developing the overall audit strategy?
UPDATE questions SET
  stem = $EXPL$Hartwell & Associates is developing the overall audit strategy for its new client, a mid-size technology distributor. The engagement partner considers staffing needs, interim testing dates, component auditors, and various other factors. Which of the following would the auditor least likely consider when developing the overall audit strategy?$EXPL$
WHERE id = 6;

-- ID 96: Audit Planning (16 words)
-- ORIGINAL STEM: Which of the following is the auditor required to do as part of preliminary engagement activities?
UPDATE questions SET
  stem = $EXPL$Burke & Callahan LLP has been approached by Lakeshore Distributing to perform its December 2025 annual audit. Before committing resources, the firm begins preliminary engagement activities. Which of the following is the auditor required to do as part of these activities?$EXPL$
WHERE id = 96;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 1733: Audit Reports (15 words)
-- ORIGINAL STEM: Under AU-C 705, what should an auditor do first when management imposes a scope limitation?
UPDATE questions SET
  stem = $EXPL$During the audit of Westfield Corp., management informs the engagement team that it will not permit confirmation of a material receivable balance with a key customer. Under AU-C 705, what should the auditor do first when management imposes a scope limitation?$EXPL$
WHERE id = 1733;

-- ID 333: Audit Reports (16 words)
-- ORIGINAL STEM: What may an auditor do when a prior-year qualification on comparative financial statements has been resolved?
UPDATE questions SET
  stem = $EXPL$In the prior year, Collins & Park LLP issued a qualified opinion on Oakmont Corp. because management refused to capitalize a finance lease. In the current year, Oakmont restated the prior-year financials and properly recorded the lease. What may the auditor do when a prior-year qualification on comparative financial statements has been resolved?$EXPL$
WHERE id = 333;

-- ============================================================
-- AUDIT SAMPLING (1 questions)
-- ============================================================

-- ID 1650: Audit Sampling (14 words)
-- ORIGINAL STEM: Which of the following best describes the concept of tolerable misstatement in substantive sampling?
UPDATE questions SET
  stem = $EXPL$While designing a sampling plan to test accounts receivable at Meridian Wholesale, the auditor sets overall materiality at $400,000 and performance materiality at $300,000. The auditor then establishes the tolerable misstatement for the sample. Which of the following best describes this concept in substantive sampling?$EXPL$
WHERE id = 1650;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 1320: Ethics and Independence (16 words)
-- ORIGINAL STEM: Under the AICPA Code, when does the period of the professional engagement begin for independence purposes?
UPDATE questions SET
  stem = $EXPL$Fletcher CPA Group signs an engagement letter with Skyline Properties in October 2025 to audit the December 2025 financial statements. The partner questions when independence requirements first apply. Under the AICPA Code, when does the period of the professional engagement begin for independence purposes?$EXPL$
WHERE id = 1320;

-- ID 1321: Ethics and Independence (17 words)
-- ORIGINAL STEM: Under the AICPA Code, what type of threat does representing an audit client before the IRS create?
UPDATE questions SET
  stem = $EXPL$Torres & Vega LLP audits Crestline Manufacturing and has also been asked to represent Crestline in a dispute with the IRS over disallowed deductions. Under the AICPA Code, what type of threat does representing an audit client before the IRS create?$EXPL$
WHERE id = 1321;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (1 questions)
-- ============================================================

-- ID 1134: Government Auditing Standards (14 words)
-- ORIGINAL STEM: The single audit reporting package must be submitted to the Federal Audit Clearinghouse within:
UPDATE questions SET
  stem = $EXPL$Franklin County''s fiscal year ended June 30, 2025, and the GAGAS auditor completed the single audit in November. The county controller asks about the filing deadline. The single audit reporting package must be submitted to the Federal Audit Clearinghouse within:$EXPL$
WHERE id = 1134;

-- ============================================================
-- INDEPENDENCE (1 questions)
-- ============================================================

-- ID 13840: Independence (14 words)
-- ORIGINAL STEM: Under what circumstance may a CPA's professional license be automatically revoked without a hearing?
UPDATE questions SET
  stem = $EXPL$Marcus Webb, CPA, has been convicted of a felony involving financial fraud. The state board of accountancy begins proceedings to address his license status. Under what circumstance may a CPA''s professional license be automatically revoked without a hearing?$EXPL$
WHERE id = 13840;

-- ============================================================
-- INTERNAL CONTROLS (6 questions)
-- ============================================================

-- ID 283: Internal Controls (14 words)
-- ORIGINAL STEM: If IT general controls are found to be ineffective, the auditor should most likely:
UPDATE questions SET
  stem = $EXPL$During the audit of Beacon Software Inc., the engagement team discovers that access security controls over the ERP system are ineffective and that program change management procedures are not consistently followed. If IT general controls are found to be ineffective, the auditor should most likely:$EXPL$
WHERE id = 283;

-- ID 1534: Internal Controls (14 words)
-- ORIGINAL STEM: Which COSO component is considered the foundation for all other components of internal control?
UPDATE questions SET
  stem = $EXPL$While evaluating internal controls at Harmon Foods, the auditor notes that the CEO openly pressures staff to meet earnings targets and that board oversight is minimal. The auditor considers which element of the COSO framework is most affected. Which COSO component is considered the foundation for all other components of internal control?$EXPL$
WHERE id = 1534;

-- ID 1554: Internal Controls (14 words)
-- ORIGINAL STEM: When evaluating the control environment, the auditor should consider all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$The audit team at Whitfield Logistics is assessing the control environment as part of understanding internal controls. The team reviews management''s philosophy, organizational structure, HR policies, and several other factors. When evaluating the control environment, the auditor should consider all of the following EXCEPT:$EXPL$
WHERE id = 1554;

-- ID 10: Internal Controls (16 words)
-- ORIGINAL STEM: Which of the following is a component of internal control as defined by the COSO framework?
UPDATE questions SET
  stem = $EXPL$Novak & Sterling LLP is performing an audit of CedarPoint Distributors and is documenting its understanding of the client''s internal control structure using the COSO framework. Which of the following is a component of internal control as defined by COSO?$EXPL$
WHERE id = 10;

-- ID 109: Internal Controls (16 words)
-- ORIGINAL STEM: Which of the following is an example of a preventive control rather than a detective control?
UPDATE questions SET
  stem = $EXPL$Cascade Manufacturing''s controller is implementing new internal controls over the cash disbursements process. She wants to distinguish between controls that stop errors before they occur and those that identify errors after the fact. Which of the following is an example of a preventive control rather than a detective control?$EXPL$
WHERE id = 109;

-- ID 1556: Internal Controls (16 words)
-- ORIGINAL STEM: An auditor is evaluating whether a material weakness in internal control exists. A material weakness is:
UPDATE questions SET
  stem = $EXPL$During the audit of Brookfield Healthcare, the engagement team identifies several control deficiencies in the revenue cycle and must determine their severity for reporting to those charged with governance. A material weakness in internal control is best defined as:$EXPL$
WHERE id = 1556;

-- ============================================================
-- MATERIALITY (2 questions)
-- ============================================================

-- ID 4521: Materiality (13 words)
-- ORIGINAL STEM: In a group audit, the component auditor's materiality for a component should be:
UPDATE questions SET
  stem = $EXPL$Sterling International has four subsidiaries, each audited by separate component auditors. The group engagement partner sets overall materiality at $2 million for the consolidated financial statements. When assigning materiality to each component, the component auditor''s materiality should be:$EXPL$
WHERE id = 4521;

-- ID 13035: Materiality (13 words)
-- ORIGINAL STEM: The clearly trivial threshold is typically set at what percentage of overall materiality?
UPDATE questions SET
  stem = $EXPL$While planning the audit of Redstone Construction, the engagement team sets overall materiality at $500,000 and performance materiality at $375,000. The team now needs to establish a threshold below which misstatements need not be accumulated. The clearly trivial threshold is typically set at what percentage of overall materiality?$EXPL$
WHERE id = 13035;

-- ============================================================
-- MODIFICATIONS TO THE AUDITOR REPORT (1 questions)
-- ============================================================

-- ID 4676: Modifications to the Auditor Report (12 words)
-- ORIGINAL STEM: The concept of "pervasiveness" in the context of modified opinions refers to:
UPDATE questions SET
  stem = $EXPL$The engagement partner for the Winslow Group audit has identified a material misstatement and must decide between issuing a qualified opinion or an adverse opinion. The deciding factor is whether the effects are pervasive. The concept of ''pervasiveness'' in the context of modified opinions refers to:$EXPL$
WHERE id = 4676;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 4406: Nature and Scope of Engagements (15 words)
-- ORIGINAL STEM: What is the overall objective of an auditor when conducting an audit of financial statements?
UPDATE questions SET
  stem = $EXPL$Adler & Keane LLP has been engaged to audit the December 2025 financial statements of Thornton Industries, a privately held manufacturer. The engagement partner reviews the firm''s responsibilities with the new staff. What is the overall objective of an auditor when conducting an audit of financial statements?$EXPL$
WHERE id = 4406;

-- ID 4418: Nature and Scope of Engagements (16 words)
-- ORIGINAL STEM: Which of the following inherent limitations of an audit prevents the auditor from obtaining absolute assurance?
UPDATE questions SET
  stem = $EXPL$A client''s board member asks the engagement partner why the audit opinion provides only ''reasonable assurance'' rather than a guarantee that the financial statements are correct. Which of the following inherent limitations of an audit prevents the auditor from obtaining absolute assurance?$EXPL$
WHERE id = 4418;

-- ============================================================
-- OTHER INFORMATION AND SUPPLEMENTARY INFORMATION (1 questions)
-- ============================================================

-- ID 14006: Other Information and Supplementary Information (14 words)
-- ORIGINAL STEM: Where is the auditor's in-relation-to opinion on supplementary information typically presented under AU-C 725?
UPDATE questions SET
  stem = $EXPL$Greystone Properties asks its auditor to report on a supplementary schedule of rental income that accompanies the audited financial statements. Under AU-C 725, where is the auditor''s in-relation-to opinion on supplementary information typically presented?$EXPL$
WHERE id = 14006;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 1358: Professional Responsibilities (14 words)
-- ORIGINAL STEM: Under the AICPA Code, what type of advertising claim is prohibited for CPA firms?
UPDATE questions SET
  stem = $EXPL$Hammond CPA Group is redesigning its website and considering various marketing claims about its services, fees, and expertise. The managing partner asks what restrictions the profession imposes. Under the AICPA Code, what type of advertising claim is prohibited for CPA firms?$EXPL$
WHERE id = 1358;

-- ID 1365: Professional Responsibilities (14 words)
-- ORIGINAL STEM: Under the AICPA Code, the principle of 'the public interest' means that CPAs should:
UPDATE questions SET
  stem = $EXPL$A newly licensed CPA at Crestwood & Associates reviews the AICPA Code of Professional Conduct and asks the firm''s ethics partner about the core principles. Under the AICPA Code, the principle of ''the public interest'' means that CPAs should:$EXPL$
WHERE id = 1365;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (2 questions)
-- ============================================================

-- ID 4457: Professional Skepticism and Judgment (12 words)
-- ORIGINAL STEM: When exercising professional judgment in evaluating audit evidence, the auditor should consider:
UPDATE questions SET
  stem = $EXPL$During the audit of Prescott Chemicals, the engagement partner reviews an unusual journal entry that reclassifies $1.2 million in expenses to a prepaid asset account near year-end. When exercising professional judgment in evaluating this audit evidence, the auditor should consider:$EXPL$
WHERE id = 4457;

-- ID 13901: Professional Skepticism and Judgment (14 words)
-- ORIGINAL STEM: Professional skepticism requires the auditor to maintain an attitude that is best characterized as:
UPDATE questions SET
  stem = $EXPL$During a staff training session at Kessler & Holt LLP, the firm''s quality partner explains the mindset that auditors must bring to every engagement. Professional skepticism requires the auditor to maintain an attitude that is best characterized as:$EXPL$
WHERE id = 13901;

-- ============================================================
-- QUALITY MANAGEMENT (1 questions)
-- ============================================================

-- ID 358: Quality Management (15 words)
-- ORIGINAL STEM: SQMS No. 1 requires a firm's system of quality management to include how many components?
UPDATE questions SET
  stem = $EXPL$Crawford & Ellis LLP is implementing SQMS No. 1 and the managing partner needs to design a system addressing all required areas, from governance to monitoring. SQMS No. 1 requires a firm''s system of quality management to include how many components?$EXPL$
WHERE id = 358;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (2 questions)
-- ============================================================

-- ID 13082: Responding to Assessed Risks (15 words)
-- ORIGINAL STEM: Which of the following are the two types of substantive procedures an auditor may perform?
UPDATE questions SET
  stem = $EXPL$After completing risk assessment for the Belmont Industries audit, the engagement team plans substantive procedures to address identified risks of material misstatement in inventory and revenue. Which of the following are the two types of substantive procedures an auditor may perform?$EXPL$
WHERE id = 13082;

-- ID 4531: Responding to Assessed Risks (16 words)
-- ORIGINAL STEM: When responding to the assessed risk of management override of controls, the auditor is required to:
UPDATE questions SET
  stem = $EXPL$The audit team for Vanguard Enterprises recognizes that management override of controls is a presumed risk on every engagement, regardless of the entity''s control environment. When responding to this assessed risk, the auditor is required to:$EXPL$
WHERE id = 4531;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 345: Review and Compilation (15 words)
-- ORIGINAL STEM: SSARS (Statements on Standards for Accounting and Review Services) apply to which type of entities?
UPDATE questions SET
  stem = $EXPL$Rivera CPA Group has been asked by a local restaurant chain to perform a review engagement on its annual financial statements. The partner confirms the applicable standards. SSARS (Statements on Standards for Accounting and Review Services) apply to which type of entities?$EXPL$
WHERE id = 345;

-- ID 1785: Review and Compilation (15 words)
-- ORIGINAL STEM: Which hierarchy correctly orders SSARS engagements from the lowest to the highest level of service?
UPDATE questions SET
  stem = $EXPL$A new client asks Greenfield & Associates to explain the different levels of service available for its financial statements under SSARS. Which hierarchy correctly orders SSARS engagements from the lowest to the highest level of service?$EXPL$
WHERE id = 1785;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (1 questions)
-- ============================================================

-- ID 1792: Review/Compilation Engagements (15 words)
-- ORIGINAL STEM: Which of the following is NOT included in a standard compilation report under AR-C 80?
UPDATE questions SET
  stem = $EXPL$Parker & Lane CPAs has compiled the 2025 financial statements of Doyle Plumbing, a privately held company. The staff accountant drafts the compilation report for partner review. Which of the following is NOT included in a standard compilation report under AR-C 80?$EXPL$
WHERE id = 1792;

-- ============================================================
-- RISK ASSESSMENT (2 questions)
-- ============================================================

-- ID 105: Risk Assessment (16 words)
-- ORIGINAL STEM: Under AU-C 315, which factors should the auditor consider when assessing risk at the assertion level?
UPDATE questions SET
  stem = $EXPL$The audit team for Northstar Electronics is assessing the risk of material misstatement for the inventory balance at the assertion level. Under AU-C 315, which factors should the auditor consider when assessing risk at the assertion level?$EXPL$
WHERE id = 105;

-- ID 274: Risk Assessment (16 words)
-- ORIGINAL STEM: Which of the following is always presumed to be a significant risk requiring special audit attention?
UPDATE questions SET
  stem = $EXPL$During the planning phase for the audit of Summit Apparel, the engagement team identifies several risks and must determine which qualify as significant risks under auditing standards. Which of the following is always presumed to be a significant risk requiring special audit attention?$EXPL$
WHERE id = 274;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 7607: Specific Areas and Transactions (12 words)
-- ORIGINAL STEM: Tracing from source documents to the accounting records primarily tests which assertion?
UPDATE questions SET
  stem = $EXPL$While testing accounts payable at Henderson Supply, the auditor selects a sample of receiving reports and purchase orders, then traces each to the accounts payable subledger. Tracing from source documents to the accounting records primarily tests which assertion?$EXPL$
WHERE id = 7607;

-- ID 4650: Specific Areas and Transactions (13 words)
-- ORIGINAL STEM: Audit procedures for identifying related parties typically include all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$During the audit of Chandler Holdings, the engagement team discovers that the CEO''s brother-in-law owns a major supplier. The team expands procedures to identify all related parties. Audit procedures for identifying related parties typically include all of the following EXCEPT:$EXPL$
WHERE id = 4650;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (2 questions)
-- ============================================================

-- ID 1698: Substantive Procedures (14 words)
-- ORIGINAL STEM: Under AU-C 620, when may the auditor consider engaging a specialist during the audit?
UPDATE questions SET
  stem = $EXPL$While auditing Trident Insurance Corp., the engagement team encounters complex actuarial assumptions underlying the loss reserve estimate of $45 million. The partner evaluates whether outside expertise is needed. Under AU-C 620, when may the auditor consider engaging a specialist during the audit?$EXPL$
WHERE id = 1698;

-- ID 1702: Substantive Procedures (14 words)
-- ORIGINAL STEM: Under AU-C 240, what is required when the auditor suspects an intentional material misstatement?
UPDATE questions SET
  stem = $EXPL$During substantive testing at Falcon Distributors, the auditor discovers fictitious journal entries totaling $800,000 that appear designed to inflate revenue before year-end. Under AU-C 240, what is required when the auditor suspects an intentional material misstatement?$EXPL$
WHERE id = 1702;

-- ============================================================
-- TERMS OF ENGAGEMENT (2 questions)
-- ============================================================

-- ID 4483: Terms of Engagement (14 words)
-- ORIGINAL STEM: During the engagement acceptance process for a first-year audit, the auditor is required to:
UPDATE questions SET
  stem = $EXPL$Mason & Ashford LLP is considering whether to accept Coastal Marine as a new audit client. The prior auditor was Langley & Co., who resigned after a disagreement with management. During the engagement acceptance process for a first-year audit, the auditor is required to:$EXPL$
WHERE id = 4483;

-- ID 4484: Terms of Engagement (15 words)
-- ORIGINAL STEM: The engagement letter should address the auditor's responsibility regarding fraud. Specifically, it should state that:
UPDATE questions SET
  stem = $EXPL$Grant & Weber LLP is drafting the engagement letter for the annual audit of Patriot Logistics. The partner wants to ensure the firm''s fraud-related responsibilities are properly communicated. The engagement letter should address the auditor''s responsibility regarding fraud. Specifically, it should state that:$EXPL$
WHERE id = 4484;

-- ============================================================
-- TESTS OF CONTROLS (2 questions)
-- ============================================================

-- ID 12828: Tests of Controls (13 words)
-- ORIGINAL STEM: In the context of tests of controls, a deviation is best defined as:
UPDATE questions SET
  stem = $EXPL$While testing the purchase approval control at Baxter Industrial, the auditor finds that 3 of 40 sampled purchase orders lack the required supervisor signature. In the context of tests of controls, a deviation is best defined as:$EXPL$
WHERE id = 12828;

-- ID 4579: Tests of Controls (14 words)
-- ORIGINAL STEM: When the auditor identifies a deviation in a test of controls, the auditor should:
UPDATE questions SET
  stem = $EXPL$During testing of the cash disbursements approval control at Linden Corp., the auditor finds that a payment of $75,000 was processed without the required dual authorization. When the auditor identifies a deviation in a test of controls, the auditor should:$EXPL$
WHERE id = 4579;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 questions)
-- ============================================================

-- ID 13145: Understanding the Entity and Environment (15 words)
-- ORIGINAL STEM: What is a "business risk" in the context of understanding the entity and its environment?
UPDATE questions SET
  stem = $EXPL$Atlas Logistics recently lost its largest shipping contract, which represented 35% of annual revenue. The engagement team discusses whether this qualifies as a business risk during planning. What is a ''business risk'' in the context of understanding the entity and its environment?$EXPL$
WHERE id = 13145;

-- ============================================================
-- USING THE WORK OF OTHERS (2 questions)
-- ============================================================

-- ID 4550: Using the Work of Others (14 words)
-- ORIGINAL STEM: When a client uses a service organization to process significant transactions, the auditor should:
UPDATE questions SET
  stem = $EXPL$Ridgeline Healthcare outsources its entire payroll processing to an external service bureau that handles tax withholdings and direct deposits for 2,000 employees. When a client uses a service organization to process significant transactions, the auditor should:$EXPL$
WHERE id = 4550;

-- ID 4553: Using the Work of Others (14 words)
-- ORIGINAL STEM: When evaluating the objectivity of the internal audit function, the external auditor should consider:
UPDATE questions SET
  stem = $EXPL$Pinnacle Financial Group maintains a five-person internal audit department. The external auditor plans to use some of their work on branch cash counts to reduce substantive testing. When evaluating the objectivity of the internal audit function, the external auditor should consider:$EXPL$
WHERE id = 4553;

COMMIT;
