-- Migration: Citation backfill — AUD batch 4 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Misstatements and Control Deficiencies, Nature and Scope of Engagements, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others, Written Representations

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (1 question)
-- ============================================================

-- ID 5095: Analytical Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.06, the final analytical review performed near the end of the audit helps the auditor form an overall conclusion about whether the financial statements as a whole are consistent with the auditor''s understanding of the entity and its environment. It serves as a reasonableness check that may identify previously unrecognized risks or misstatements. Choice B is incorrect because the final review is not designed to test individual account balances — it evaluates the financial statements holistically under AU-C 520.'
WHERE id = 5095;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 354: Attestation Engagements
UPDATE questions SET
  explanation = 'Under GAGAS Chapter 6, Government Auditing Standards impose reporting requirements beyond GAAS: the auditor must report on internal control over financial reporting and compliance with provisions of laws, regulations, contracts, and grant agreements that could have a direct and material effect on the financial statements. These additional reports are required for all Yellow Book financial audits. Choice A is incorrect because reporting only on financial statements omits the additional GAGAS requirements for government audits.'
WHERE id = 354;

-- ID 1820: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 205.04, in an assertion-based engagement the responsible party measures or evaluates the subject matter and provides a written assertion, and the practitioner reports on whether the assertion is fairly stated. In a direct engagement under AT-C 205.05, the practitioner measures or evaluates the subject matter directly and reports on it without a written assertion. Choice B is incorrect because both assertion-based and direct engagements can result in examinations — the distinction is about who evaluates the subject matter, not the engagement level.'
WHERE id = 1820;

-- ============================================================
-- AUDIT EVIDENCE (4 questions)
-- ============================================================

-- ID 1592: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 505.12, when positive confirmations are not returned after second requests, the auditor should perform alternative procedures to obtain evidence about the assertions being tested. These typically include examining subsequent cash receipts, shipping documentation, or sales contracts. AU-C 505.13 specifies that non-responses to positive confirmations do not constitute audit evidence. Choice A is incorrect because treating non-responses as agreement with the recorded balance would violate AU-C 505''s evidence requirements.'
WHERE id = 1592;

-- ID 1593: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 505.16, negative confirmations are appropriate only when: (1) the assessed risk of material misstatement is low, (2) a large number of small balances is involved, and (3) the auditor has no reason to believe recipients will disregard the confirmation requests. If any of these conditions is not met, negative confirmations alone are insufficient under AU-C 505. Choice B is incorrect because negative confirmations used in high-risk situations would not provide sufficient appropriate evidence.'
WHERE id = 1593;

-- ID 1594: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 505.A7, blank confirmations require the respondent to provide the balance from their own records rather than simply agreeing to a stated amount. This reduces the risk that respondents will sign and return the confirmation without actually verifying the balance, providing more reliable evidence. Choice B is incorrect because pre-populated confirmations under AU-C 505 carry a greater risk of careless agreement — respondents may confirm the stated balance without checking their records.'
WHERE id = 1594;

-- ID 1595: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 505.08, when management refuses to allow confirmations, the auditor should first inquire about the reasons for the refusal and evaluate their reasonableness. If the reasons are valid, the auditor performs alternative procedures under AU-C 505.10. If the refusal is unreasonable, the auditor considers the implications for the risk assessment and the audit opinion under AU-C 505.09. Choice B is incorrect because immediately issuing a scope limitation without first evaluating management''s reasons is premature.'
WHERE id = 1595;

-- ============================================================
-- AUDIT PLANNING (3 questions)
-- ============================================================

-- ID 1447: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 320.A12, tolerable misstatement is applied at the individual account balance or class of transactions level. It represents the application of performance materiality to a particular sampling procedure and helps the auditor determine sample sizes and evaluate results for individual accounts under AU-C 530. Choice B is incorrect because overall materiality under AU-C 320.04 is applied at the financial statement level, not at the individual account level — tolerable misstatement operates below that threshold.'
WHERE id = 1447;

-- ID 1448: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 320.09, performance materiality is set lower than overall materiality to reduce the probability that the aggregate of uncorrected and undetected misstatements exceeds materiality for the financial statements as a whole. This provides a buffer that accounts for the possibility of undetected misstatements across multiple accounts. Choice B is incorrect because setting performance materiality equal to overall materiality would eliminate this buffer and increase the risk that aggregate misstatements exceed the materiality threshold under AU-C 320.'
WHERE id = 1448;

-- ID 1450: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 610.09, the auditor evaluates the internal audit function during planning to determine whether its work can be used to modify the nature, timing, or extent of external audit procedures. This assessment considers the internal auditors'' competence, objectivity, and systematic approach under AU-C 610.12. Choice B is incorrect because the external auditor cannot replace their own procedures entirely with internal audit work — AU-C 610.05 confirms the external auditor retains sole responsibility for the opinion.'
WHERE id = 1450;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 1715: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 705.09, an adverse opinion is issued when the auditor concludes that misstatements, individually or in the aggregate, are both material and pervasive to the financial statements. The term "pervasive" under AU-C 705.06 means the effects are not confined to specific elements but affect the financial statements as a whole or represent a substantial proportion of them. Choice B is incorrect because a qualified opinion under AU-C 705.08 applies when misstatements are material but not pervasive.'
WHERE id = 1715;

-- ID 1718: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 706.06, a change in accounting principle that has a material effect on the financial statements requires an emphasis-of-matter paragraph to draw attention to the change note in the financial statements. Choice B is incorrect because an inability to observe inventory is a scope limitation that may affect the opinion under AU-C 705, not an emphasis-of-matter matter. Choice C is incorrect because a refusal to sign the representation letter is a scope limitation under AU-C 580 that may lead to a disclaimer.'
WHERE id = 1718;

-- ============================================================
-- AUDIT SAMPLING (4 questions)
-- ============================================================

-- ID 313: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A11, block selection — choosing a contiguous set of items such as all transactions in a single month — is generally discouraged because a single block may not represent the full population across the entire period. Events or conditions in the selected block may differ from other periods, making it difficult to generalize results under AU-C 530. Choice B is incorrect because random selection, which gives every item an equal chance of selection, does not carry this representativeness concern.'
WHERE id = 313;

-- ID 1633: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A5, attribute sampling is the appropriate method for tests of controls because it measures the rate of deviation from a prescribed control procedure. The auditor determines whether the deviation rate exceeds the tolerable rate. Choice B is incorrect because variables sampling and monetary-unit sampling under AU-C 530 are designed for substantive testing of account balances, not for measuring control deviation rates.'
WHERE id = 1633;

-- ID 1634: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A6, increasing the confidence level (reducing the risk of assessing control risk too low) increases the required sample size in attribute sampling. A higher confidence level means the auditor wants greater certainty that the sample results reflect the population, requiring more items to be tested. Choice B is incorrect because decreasing the confidence level would reduce sample size, not increase it — lower confidence requires fewer items to support the auditor''s conclusion under AU-C 530.'
WHERE id = 1634;

-- ID 1635: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A6, decreasing the risk of assessing control risk too low (equivalent to increasing the confidence level) requires a larger sample size. A lower tolerable rate also increases sample size under AU-C 530.A7 because the auditor must test more items to confirm the deviation rate falls within a tighter tolerance. Choice B is incorrect because a higher tolerable rate would decrease sample size — a wider acceptable range requires fewer items to verify.'
WHERE id = 1635;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 1313: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.210, serving as an expert witness on behalf of an audit client creates an advocacy threat because the CPA is promoting or defending the client''s position rather than acting as an independent evaluator. Choice A is incorrect because a self-review threat arises when the auditor evaluates their own work product, not from testifying on behalf of the client. Choice D is incorrect because a self-interest threat involves the auditor''s own financial interests.'
WHERE id = 1313;

-- ID 1314: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.240, an immaterial indirect financial interest does not impair independence. For example, owning shares in a diversified mutual fund that holds stock in the audit client is an indirect interest, and if immaterial to the covered member, it is permissible. Choice A is incorrect because direct financial interests under ET 1.240.02 impair independence regardless of materiality — even a single share of client stock directly owned by a covered member impairs independence.'
WHERE id = 1314;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (2 questions)
-- ============================================================

-- ID 1419: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS Chapter 4, the Yellow Book requires auditors to complete 80 hours of CPE every two years, with at least 24 hours directly related to the government auditing environment (including government accounting, auditing, and specific government programs). At least 20 of the 80 hours must be completed in each year of the two-year period. Choice B is incorrect because 40 hours per year without the government-specific requirement describes many state board requirements, not the GAGAS standard.'
WHERE id = 1419;

-- ID 1420: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under the Uniform Guidance (2 CFR 200.501) and GAGAS, a single audit is required when a non-federal entity expends $750,000 or more in federal awards during the fiscal year. This threshold was increased from $500,000 effective December 26, 2014. The single audit combines the financial statement audit with a compliance audit of major federal programs. Choice A is incorrect because $500,000 was the prior threshold — the current requirement under 2 CFR 200 is $750,000.'
WHERE id = 1420;

-- ============================================================
-- INDEPENDENCE (1 question)
-- ============================================================

-- ID 4939: Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.210, an undue influence (intimidation) threat exists when a covered member''s behavior is subordinated or unduly affected by the interests of another party, such as the client. Client pressure to reduce audit procedures or change conclusions constitutes an intimidation threat to independence. Choice B is incorrect because an advocacy threat arises when the auditor promotes the client''s position, not when the client pressures the auditor to alter their professional judgment.'
WHERE id = 4939;

-- ============================================================
-- INTERNAL CONTROLS (5 questions)
-- ============================================================

-- ID 1534: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A60, the control environment is the foundation for all other components of internal control within the COSO framework. It sets the tone of the organization, influencing the control consciousness of its people, and includes factors such as ethical values, management philosophy, organizational structure, and human resource policies. Choice B is incorrect because control activities, while essential, operate within and depend on the control environment — they are not the foundational component under COSO.'
WHERE id = 1534;

-- ID 1535: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A78, proper segregation of duties separates the functions of authorization, recording, and custody. When different employees handle each function, the risk of errors or fraud is reduced because no single individual controls all aspects of a transaction. Choice B is incorrect because having one person both authorize and record transactions violates segregation of duties under AU-C 315, creating an opportunity for undetected errors or fraud.'
WHERE id = 1535;

-- ID 1536: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A79, IT general controls apply broadly to the IT environment and support the effective functioning of application controls. They typically cover four areas: access security (logical and physical), program change management, computer operations (backup, job scheduling), and program development. Choice B is incorrect because input validation and automated calculations are application controls under AU-C 315.A80, not ITGCs — they operate within specific applications rather than across the IT environment.'
WHERE id = 1536;

-- ID 1537: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A91, the monitoring component of the COSO framework involves ongoing evaluations, separate evaluations, or some combination of both to ascertain whether each of the five components of internal control is present and functioning. Ongoing monitoring is built into normal operations, while separate evaluations include internal audit assessments and management reviews. Choice B is incorrect because risk assessment is a separate COSO component that identifies and analyzes risks, not the component that evaluates whether controls are working.'
WHERE id = 1537;

-- ID 1538: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A80, physical controls involve the physical security of assets, including safeguards such as secured facilities, safes, locked storage areas, and restricted access to sensitive areas. Using locked safes for blank checks is a physical control because it restricts physical access to a sensitive asset. Choice B is incorrect because approval requirements are authorization controls under AU-C 315.A78, and reconciliations are information processing controls — neither involves physical asset security.'
WHERE id = 1538;

-- ============================================================
-- MATERIALITY (1 question)
-- ============================================================

-- ID 5018: Materiality
UPDATE questions SET
  explanation = 'Under AU-C 320.A1, materiality is not solely a quantitative concept. A misstatement that is quantitatively small may be qualitatively material if it causes a debt covenant violation, changes a loss to a profit, affects management compensation, or involves fraud. The auditor must consider both quantitative and qualitative factors under AU-C 450.11 when evaluating whether uncorrected misstatements are material. Choice B is incorrect because dismissing a misstatement solely based on its dollar amount ignores the qualitative materiality considerations required by AU-C 320.'
WHERE id = 5018;

-- ============================================================
-- MISSTATEMENTS AND CONTROL DEFICIENCIES (2 questions)
-- ============================================================

-- ID 5114: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 450.06, the auditor must consider all uncorrected misstatements accumulated during the audit, including factual misstatements, judgmental misstatements (differences in management''s judgments about estimates), and projected misstatements (extrapolated from samples). The aggregate of all these types is compared to materiality under AU-C 450.11 to assess whether the financial statements are materially misstated. Choice B is incorrect because considering only factual misstatements would ignore projected and judgmental components.'
WHERE id = 5114;

-- ID 5116: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 450.A3, judgmental misstatements arise from differences in judgments of management concerning accounting estimates that the auditor considers unreasonable, or from the selection or application of accounting policies the auditor considers inappropriate. Unlike factual misstatements, judgmental misstatements involve disagreements about estimates or policies rather than clear-cut errors. Choice A is incorrect because factual misstatements under AU-C 450.A2 involve verifiable errors with no uncertainty, not differences in professional judgment.'
WHERE id = 5116;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (1 question)
-- ============================================================

-- ID 4915: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 315.A128, the valuation and allocation assertion addresses whether assets, liabilities, and equity interests are included in the financial statements at appropriate amounts, and any resulting valuation or allocation adjustments are appropriately recorded. This includes considerations such as allowance for doubtful accounts, depreciation methods, and fair value measurements under ASC 820. Choice B is incorrect because the existence assertion addresses whether items actually exist, not whether they are recorded at correct amounts.'
WHERE id = 4915;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 question)
-- ============================================================

-- ID 1363: Professional Responsibilities
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.310 and AR-C 70.05, when a CPA prepares financial statements without performing an audit or review, the CPA should include a disclaimer or legend on each page indicating the statements have not been audited or reviewed and no opinion or assurance is expressed. This prevents third parties from assuming the statements have been subject to verification. Choice A is incorrect because issuing statements without any disclaimer could mislead users about the level of assurance provided.'
WHERE id = 1363;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 question)
-- ============================================================

-- ID 4957: Professional Skepticism and Judgment
UPDATE questions SET
  explanation = 'Under AU-C 200.17, while management representations under AU-C 580 are a required component of audit evidence, professional skepticism requires the auditor to treat them as only one source of evidence. The auditor should perform additional procedures under AU-C 550 to identify possible undisclosed related-party transactions, such as reviewing entity records, examining board minutes, and inquiring of other personnel. Choice B is incorrect because accepting management representations at face value without corroboration fails to exercise the skepticism required by AU-C 200.'
WHERE id = 4957;

-- ============================================================
-- QUALITY MANAGEMENT (2 questions)
-- ============================================================

-- ID 365: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS No. 1.30, the acceptance and continuance component requires the firm to evaluate management integrity, the firm''s competence and resources, ethical compliance (especially independence), and whether issues from prior engagements have been resolved before accepting new clients or continuing existing relationships. Choice B is incorrect because engagement performance, while important, is a separate SQMS No. 1 component that addresses how individual engagements are conducted, not the client acceptance decision.'
WHERE id = 365;

-- ID 366: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS No. 1 and the AICPA Peer Review Standards, a system review applies to firms that perform audits or examinations. It evaluates the firm''s system of quality management and selects specific engagements for review to assess whether the system is designed and operating effectively. Choice B is incorrect because an engagement review under the AICPA Peer Review Standards applies to firms that perform only reviews, compilations, or preparation engagements — not firms performing audits.'
WHERE id = 366;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (1 question)
-- ============================================================

-- ID 5040: Responding to Assessed Risks
UPDATE questions SET
  explanation = 'Under AU-C 315.28, a significant risk is an identified risk of material misstatement that, in the auditor''s professional judgment, requires special audit consideration. Factors that may indicate a significant risk include complexity, subjectivity, susceptibility to fraud, or whether the risk involves significant transactions outside the normal course of business. Choice B is incorrect because not all material misstatement risks qualify as significant — only those requiring special consideration due to their nature or circumstances under AU-C 315.'
WHERE id = 5040;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 1756: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 80.20 and AR-C 70.05, the key difference is that a compilation results in the issuance of a compilation report, while a preparation engagement does not require a report — only a legend on each page of the financial statements. Both engagements require engagement letters, and neither provides assurance on the financial statements. Choice B is incorrect because independence is required for neither a compilation nor a preparation engagement under AR-C 80.24 and AR-C 70.'
WHERE id = 1756;

-- ID 1758: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 80.24, independence is not required for a compilation engagement; however, if the accountant is not independent, the compilation report must include a statement indicating the lack of independence. The accountant is not required to disclose the reason for the impairment unless the accountant chooses to do so. Choice B is incorrect because independence is required for review engagements under AR-C 90.21, but not for compilations — these engagement types have different independence standards.'
WHERE id = 1758;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1794: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 80.22, selected disclosures may be included in compiled financial statements that omit substantially all disclosures, provided the selected disclosures are not misleading and the compilation report still includes the paragraph about the omission. Including selected notes does not imply that all required disclosures have been made. Choice B is incorrect because AR-C 80 does not prohibit selected disclosures — it permits them as long as they do not create a misleading impression about the completeness of disclosures.'
WHERE id = 1794;

-- ID 1795: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 80.24, when the accountant is aware of a material departure from the applicable framework, the compilation report should be modified to disclose the nature of the departure and, if known, its effects. The accountant cannot adjust the statements unilaterally but should not issue an unmodified report when aware of a material GAAP departure. Choice A is incorrect because issuing an unmodified report despite a known material departure would violate AR-C 80''s reporting requirements.'
WHERE id = 1795;

-- ============================================================
-- RISK ASSESSMENT (3 questions)
-- ============================================================

-- ID 1497: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.25, the auditor assesses the risk of material misstatement at two levels: the financial statement level (pervasive risks that affect many assertions) and the assertion level (specific risks related to particular classes of transactions, account balances, and disclosures). Both levels are necessary for a comprehensive risk assessment that drives appropriate audit responses under AU-C 330. Choice B is incorrect because assessing risk only at the assertion level would miss pervasive financial-statement-level risks such as a weak control environment.'
WHERE id = 1497;

-- ID 1498: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.A105, financial statement level risks relate pervasively to the financial statements as a whole and potentially affect many assertions. Examples include a weak control environment, management integrity concerns, or significant industry downturns. Under AU-C 330.05, these risks require overall responses such as assigning more experienced staff, increased supervision, or incorporating additional unpredictability. Choice B is incorrect because assertion-level risks affect specific accounts, not the financial statements broadly.'
WHERE id = 1498;

-- ID 1500: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 330.07, when inherent risk is assessed as high for a particular assertion, the auditor must design more effective substantive procedures to reduce detection risk to an acceptably low level. This may include performing procedures closer to period-end, using larger sample sizes, employing more experienced staff, or selecting more effective procedure types such as external confirmations under AU-C 505. Choice B is incorrect because reducing audit procedures when risk is high would increase detection risk beyond acceptable levels under AU-C 200.'
WHERE id = 1500;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (3 questions)
-- ============================================================

-- ID 1677: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 570.A3, substantial doubt about going concern is raised by conditions such as recurring operating losses, negative cash flows, debt covenant violations, inability to obtain financing, and depletion of working capital. These factors indicate the entity may not be able to meet its obligations within the evaluation period — typically one year from the financial statement date under AU-C 570.13. Choice B is incorrect because a single quarter of modest profitability does not eliminate going concern doubt when multiple adverse indicators are present.'
WHERE id = 1677;

-- ID 1679: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 570.22, inadequate disclosure of going concern uncertainty is a departure from GAAP. The auditor should issue a qualified opinion under AU-C 705.08 if the omission is material but not pervasive, or an adverse opinion under AU-C 705.09 if the omission is both material and pervasive. Choice C is incorrect because a disclaimer of opinion under AU-C 705.10 applies to scope limitations where the auditor cannot obtain sufficient evidence, not to known GAAP departures involving inadequate disclosure.'
WHERE id = 1679;

-- ID 1680: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 501.12, the inquiry letter to legal counsel specifically requests information about pending or threatened litigation, claims, and assessments. The attorney is asked to evaluate the likelihood of an unfavorable outcome (probable, reasonably possible, or remote) consistent with ASC 450, and to provide an estimate of the amount or range of potential loss if reasonably estimable. Choice B is incorrect because the letter does not request the attorney to evaluate the entity''s overall financial condition — only specific legal matters.'
WHERE id = 1680;

-- ============================================================
-- TERMS OF ENGAGEMENT (1 question)
-- ============================================================

-- ID 4976: Terms of Engagement
UPDATE questions SET
  explanation = 'Under AU-C 210.10, the primary purpose of communicating with the predecessor auditor is to help the successor auditor evaluate whether to accept the engagement. The successor should inquire about matters such as management integrity, disagreements with management, reasons for the change of auditors, and any fraud or illegal acts. Client permission is required before this communication. Choice A is incorrect because obtaining workpapers is a secondary activity that occurs after acceptance, not the primary purpose of predecessor communication under AU-C 210.'
WHERE id = 4976;

-- ============================================================
-- TESTS OF CONTROLS (1 question)
-- ============================================================

-- ID 5077: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A32, automated controls are inherently consistent — once programmed correctly, they perform the same way every time. Therefore, the auditor typically tests the control once or a small number of times to verify it functions correctly, combined with testing IT general controls (program change and access controls) under AU-C 315.A79 to ensure the automated control has not been altered. Choice B is incorrect because testing an automated control as extensively as a manual control ignores the inherent consistency that makes automated controls reliable.'
WHERE id = 5077;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 question)
-- ============================================================

-- ID 4996: Understanding the Entity and Environment
UPDATE questions SET
  explanation = 'Under AU-C 315.12, when an entity enters a new line of business involving complex transactions like derivatives, the auditor must obtain a thorough understanding of the nature of the transactions, the applicable accounting treatment under ASC 815 (including fair value measurement and hedge accounting), the risks involved, and the entity''s controls over these activities. Choice B is incorrect because relying solely on prior-year audit procedures without understanding the new business line would fail to identify the new risks of material misstatement under AU-C 315.'
WHERE id = 4996;

-- ============================================================
-- USING THE WORK OF OTHERS (1 question)
-- ============================================================

-- ID 5057: Using the Work of Others
UPDATE questions SET
  explanation = 'Under AU-C 610.12, when evaluating the objectivity of the internal audit function, the external auditor should consider its organizational status and reporting relationships. An internal audit function that reports directly to those charged with governance (such as the audit committee) under AU-C 610.A8 and is free from operational responsibilities is more likely to be objective. Choice B is incorrect because an internal audit function that reports to management rather than the audit committee has a weaker organizational position for maintaining objectivity.'
WHERE id = 5057;

-- ============================================================
-- WRITTEN REPRESENTATIONS (1 question)
-- ============================================================

-- ID 5135: Written Representations
UPDATE questions SET
  explanation = 'Under AU-C 560.12, a Type I (recognized) subsequent event provides additional evidence about conditions that existed at the balance sheet date. Examples include settlement of litigation that confirms a liability existing at year-end, or a customer''s bankruptcy confirming the uncollectibility of a receivable outstanding at year-end. These events require adjustment to the financial statements under AU-C 560. Choice B is incorrect because a Type II event under AU-C 560.13 involves conditions arising after the balance sheet date and requires disclosure only, not adjustment.'
WHERE id = 5135;

COMMIT;
