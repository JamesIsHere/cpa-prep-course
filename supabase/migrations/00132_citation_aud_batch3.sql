-- Migration: Citation backfill — AUD batch 3 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Misstatements and Control Deficiencies, Nature and Scope of Engagements, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others, Written Representations

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (1 question)
-- ============================================================

-- ID 5094: Analytical Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.07, when a substantive analytical procedure identifies a significant unexpected difference between the auditor''s expectation and the recorded amount, the auditor must investigate by inquiring of management and obtaining corroborating evidence. The auditor assesses whether the difference results from a misstatement or a legitimate business factor and may need to perform additional substantive tests of details. Choice B is incorrect because accepting the recorded amount without investigation violates AU-C 520''s follow-up requirements.'
WHERE id = 5094;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 351: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 205, a SOC 3 report covers the same Trust Services Criteria as a SOC 2 report but in a condensed format suitable for general distribution, such as posting on a website. SOC 2 reports under SSAE 18 are typically restricted to specified parties and include more detailed descriptions of controls, tests, and results. Choice B is incorrect because both SOC 2 and SOC 3 reports evaluate the same Trust Services Criteria — the difference is the level of detail and distribution restrictions.'
WHERE id = 351;

-- ID 353: Attestation Engagements
UPDATE questions SET
  explanation = 'Under the Single Audit Act and the Uniform Guidance (2 CFR 200.501), entities that expend $750,000 or more of federal awards in a fiscal year must have a single audit or program-specific audit under GAGAS. The auditor tests compliance with requirements applicable to major federal programs and reports on internal controls over compliance. Choice B is incorrect because the $750,000 threshold applies to total federal expenditures, not to any single program''s expenditures.'
WHERE id = 353;

-- ============================================================
-- AUDIT EVIDENCE (4 questions)
-- ============================================================

-- ID 1588: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 500.07, appropriateness is the measure of the quality of audit evidence, encompassing both relevance (whether the evidence bears on the assertion being tested) and reliability (the trustworthiness of the evidence given its source and nature). Choice B is incorrect because the number of items tested relates to sufficiency under AU-C 500.06, not appropriateness — sufficiency and appropriateness are distinct but complementary measures of audit evidence quality.'
WHERE id = 1588;

-- ID 1589: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 500.A31, evidence obtained directly from independent external sources — such as bank confirmations — is more reliable than evidence generated internally by the client. The bank confirmation bypasses client personnel entirely, reducing the risk of manipulation or error. Choice B is incorrect because the controller''s printout is internally generated evidence under AU-C 500.A32, which is subject to the client''s internal control environment and therefore inherently less reliable than direct external confirmation.'
WHERE id = 1589;

-- ID 1590: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 510.08, when the auditor cannot attend the initial physical inventory count, the auditor should review the predecessor''s workpapers for evidence about opening balances but must also perform additional procedures as deemed necessary. Simply relying on or accepting the predecessor''s conclusions without independent evaluation would not satisfy AU-C 510''s requirements for sufficient appropriate evidence. Choice A is incorrect because accepting predecessor conclusions without independent evaluation does not meet the current auditor''s responsibilities.'
WHERE id = 1590;

-- ID 1591: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 500.A31, internally generated documents are generally the least reliable form of audit evidence because they are subject to the client''s internal control environment and the risk of management manipulation. Evidence from independent external parties — such as confirmations under AU-C 505, bank statements obtained directly, and third-party contracts — provides greater reliability. Choice B is incorrect because external confirmations obtained directly from third parties bypass client personnel and are among the most reliable forms of evidence.'
WHERE id = 1591;

-- ============================================================
-- AUDIT PLANNING (3 questions)
-- ============================================================

-- ID 1442: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 320.09, performance materiality is set at an amount less than overall materiality to reduce the probability that the aggregate of uncorrected and undetected misstatements exceeds overall materiality. It is typically set at 50–75% of overall materiality. In this case, $375,000 represents 75% of $500,000, which falls within the typical range. Choice B is incorrect because $500,000 equals overall materiality — performance materiality must be set below that threshold under AU-C 320.'
WHERE id = 1442;

-- ID 1445: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 300.09, the audit plan is more detailed than the overall audit strategy and includes the nature, timing, and extent of planned risk assessment procedures, further audit procedures at the assertion level, and other planned procedures required to conduct the audit in accordance with GAAS. Choice B is incorrect because predicting audit outcomes or including operational budgeting details are not components of the audit plan under AU-C 300.'
WHERE id = 1445;

-- ID 1446: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 320.A3, using a benchmark of 5% of income before taxes: $2,000,000 × 5% = $100,000 overall materiality. Common benchmarks include 5% of income before taxes for profit-oriented entities, 0.5–1% of total revenues, and 1–2% of total assets. The auditor exercises professional judgment under AU-C 320.04 in selecting the appropriate benchmark based on the entity''s circumstances. Choice B is incorrect because $200,000 would represent 10%, which exceeds the typical range for this benchmark.'
WHERE id = 1446;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 336: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 705.10, when the auditor cannot obtain sufficient appropriate evidence and the possible effects are material and pervasive, a disclaimer of opinion is appropriate. The key distinction is that the issue stems from an inability to obtain evidence, not from identified misstatements. Choice B is incorrect because an adverse opinion under AU-C 705.09 is issued when misstatements are found to be material and pervasive — not when evidence is lacking.'
WHERE id = 336;

-- ID 1714: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 705.08, when a scope limitation results in possible effects that are material but not pervasive to the financial statements, the auditor issues a qualified opinion. If the possible effects were both material and pervasive, a disclaimer of opinion would be appropriate under AU-C 705.10. Choice C is incorrect because an adverse opinion under AU-C 705.09 applies to known material and pervasive misstatements, not to scope limitations where evidence could not be obtained.'
WHERE id = 1714;

-- ============================================================
-- AUDIT SAMPLING (4 questions)
-- ============================================================

-- ID 309: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.14, when projected misstatement plus the allowance for sampling risk exceeds tolerable misstatement, the auditor cannot conclude the population is free from material misstatement. The auditor may expand the sample, request management to investigate and correct misstatements, perform alternative procedures, or consider the impact on the audit opinion under AU-C 450. Choice A is incorrect because simply accepting the balance without further action would ignore the evidence of potential material misstatement.'
WHERE id = 309;

-- ID 310: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A7, a higher expected population deviation rate increases the required sample size in attributes sampling because the auditor must test more items to distinguish between the expected rate and the tolerable rate with the desired confidence. Choice B is incorrect because increasing the tolerable rate under AU-C 530.A6 would decrease sample size — a wider tolerance requires fewer items to confirm the rate falls within acceptable bounds.'
WHERE id = 310;

-- ID 311: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A21, difference estimation as a classical variables sampling method multiplies the average difference between audited and book values in the sample by the population size to estimate total misstatement. It works best when misstatements exist in the sample and are relatively consistent in size rather than proportional to book values. Choice A is incorrect because if no differences exist in the sample, difference estimation cannot be applied — ratio estimation under AU-C 530 may be more appropriate when misstatements vary proportionally.'
WHERE id = 311;

-- ID 312: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.05, the key difference is that nonstatistical sampling relies on professional judgment and does not allow mathematical quantification of sampling risk. Statistical sampling uses probability theory to both determine sample sizes and evaluate results, enabling the auditor to measure sampling risk precisely. AU-C 530.A4 recognizes that both approaches, when properly applied, can provide sufficient appropriate evidence. Choice B is incorrect because nonstatistical sampling is not prohibited by auditing standards — it is an acceptable alternative.'
WHERE id = 312;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 266: Ethics and Independence
UPDATE questions SET
  explanation = 'Under SOX Section 203 and the AICPA Code of Professional Conduct ET 1.210, partner rotation primarily addresses the familiarity threat — the risk that a long-tenured partner becomes too close to client management and loses professional skepticism. While rotation may also reduce self-interest threats from financial dependency, the primary concern is that extended relationships impair objectivity. Choice B is incorrect because self-interest threats relate to financial interests, not to the personal closeness that rotation is designed to prevent.'
WHERE id = 266;

-- ID 1312: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.210, when a client pressures the auditor to change the audit opinion by threatening to terminate the engagement, this constitutes an intimidation threat (also called an undue influence threat). The client is attempting to exert pressure that could cause the auditor to subordinate professional judgment. Choice A is incorrect because an advocacy threat arises when the auditor promotes the client''s position, not from client pressure on the auditor to change findings.'
WHERE id = 1312;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (2 questions)
-- ============================================================

-- ID 1135: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under the Uniform Guidance (2 CFR 200.510) and GAGAS, the Schedule of Expenditures of Federal Awards (SEFA) is a supplementary schedule that lists all federal awards expended during the audit period. It provides the basis for determining major programs under 2 CFR 200.518 and is a required component of the single audit reporting package. Choice B is incorrect because the SEFA does not replace financial statements — it supplements them with specific information about federal expenditures.'
WHERE id = 1135;

-- ID 1418: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS Chapter 3, the Yellow Book prohibits auditors from performing management functions for government audit clients. This includes making policy decisions, directing employees, or performing any function that is management''s responsibility — these activities would impair independence. Choice B is incorrect because services like preparing financial statements or providing training may be permissible under GAGAS with appropriate safeguards, whereas management functions are categorically prohibited.'
WHERE id = 1418;

-- ============================================================
-- INDEPENDENCE (1 question)
-- ============================================================

-- ID 4938: Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.224, a covered member includes any individual on the attest engagement team, an individual in a position to influence the engagement, a partner or manager in the office where the engagement partner practices, and the firm itself. Choice B is incorrect because staff accountants in different offices or administrative personnel who do not influence the engagement are generally not considered covered members under the AICPA independence rules.'
WHERE id = 4938;

-- ============================================================
-- INTERNAL CONTROLS (6 questions)
-- ============================================================

-- ID 291: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A84, generalized audit software (GAS) tools such as ACL or IDEA allow the auditor to access and analyze client data files — performing functions like sorting, summarizing, selecting samples, comparing files, and detecting duplicates — without modifying the original data. GAS enhances the auditor''s ability to analyze large volumes of data efficiently. Choice B is incorrect because GAS does not replace substantive procedures under AU-C 330 — it is a tool that supports the auditor''s testing, not a substitute for it.'
WHERE id = 291;

-- ID 292: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 265.13, material weaknesses and significant deficiencies must be communicated in writing to management and those charged with governance within 60 days of the report release date. For non-issuers, there is no additional SEC reporting requirement. Choice C is incorrect because AU-C 265.10 prohibits communicating material weaknesses only orally — written communication is required to ensure the severity of the deficiency is clearly documented and formally conveyed.'
WHERE id = 292;

-- ID 293: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A78, having one employee perform authorization, recording, and custody functions for the same transactions is a classic breakdown in segregation of duties. This control weakness increases the risk that errors or fraud could occur without being detected. Choice B is incorrect because while compensating controls such as active owner oversight under AU-C 315.A79 may partially mitigate this risk in small entities, the condition itself remains a segregation-of-duties deficiency.'
WHERE id = 293;

-- ID 1276: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A66, entity-level controls operate at a broad organizational level and set the tone for the entire control environment. Board oversight of financial reporting is a classic entity-level control because it reflects governance and monitoring at the highest level within the COSO framework. Choice B is incorrect because application edit checks, bank reconciliations, and segregation of duties over cash receipts are process-level controls under AU-C 315.A80 that operate within specific business processes.'
WHERE id = 1276;

-- ID 1277: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A67, entity-level controls establish the governance framework within which all other controls — including ITGCs — operate. When entity-level controls are weak (e.g., lack of management oversight or poor tone at the top), the auditor cannot presume ITGCs are functioning effectively because the environment that supports and enforces those controls is compromised. Choice A is incorrect because strong ITGCs cannot fully compensate for weak entity-level governance under AU-C 315.'
WHERE id = 1277;

-- ID 1533: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A60, the COSO Internal Control — Integrated Framework identifies five components of internal control: (1) control environment, (2) risk assessment, (3) control activities, (4) information and communication, and (5) monitoring activities. These five components work together to provide reasonable assurance regarding the achievement of an entity''s objectives. Choice B is incorrect because three components would omit critical elements — all five are required for an effective system of internal control under COSO.'
WHERE id = 1533;

-- ============================================================
-- MATERIALITY (1 question)
-- ============================================================

-- ID 5017: Materiality
UPDATE questions SET
  explanation = 'Under AU-C 320.A3, not-for-profit organizations do not have net income or earnings per share in the traditional sense. Total revenues or total expenses are typically more appropriate benchmarks because they better reflect the scale of the organization''s operations and are the figures most relevant to users of NFP financial statements. Choice B is incorrect because net income is not available for NFP entities and therefore cannot serve as a reliable materiality benchmark under AU-C 320.'
WHERE id = 5017;

-- ============================================================
-- MISSTATEMENTS AND CONTROL DEFICIENCIES (1 question)
-- ============================================================

-- ID 5113: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 265.06, a material weakness is a deficiency, or combination of deficiencies, in internal control such that there is a reasonable possibility that a material misstatement of the entity''s financial statements will not be prevented, or detected and corrected, on a timely basis. It is the most severe classification and must be communicated in writing to those charged with governance under AU-C 265.13. Choice B is incorrect because a significant deficiency under AU-C 265.07 is less severe — it merits governance attention but lacks the ''reasonable possibility'' threshold.'
WHERE id = 5113;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (1 question)
-- ============================================================

-- ID 4914: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 200.18, reasonable assurance (as in an audit) involves more extensive procedures — including tests of controls, substantive tests, and confirmations — and yields a high but not absolute level of assurance. Limited assurance (as in a review under AR-C 90) involves primarily inquiry and analytical procedures, resulting in a lower but meaningful level of assurance. Choice B is incorrect because limited assurance does provide a meaningful level of confidence — it is not the absence of assurance.'
WHERE id = 4914;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 question)
-- ============================================================

-- ID 1362: Professional Responsibilities
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.400, when a CPA firm merges or is acquired, professional standards require that clients be notified of the change and given the opportunity to engage the successor firm or retrieve their records. While clients may implicitly consent by continuing the relationship, they should be informed and given a choice regarding their files and engagement. Choice A is incorrect because transferring records without any client notification would violate the CPA''s obligations under the AICPA Code regarding client confidentiality and consent.'
WHERE id = 1362;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 question)
-- ============================================================

-- ID 4956: Professional Skepticism and Judgment
UPDATE questions SET
  explanation = 'Under AU-C 230.08, documenting professional judgments in audit workpapers provides a record of the basis for the auditor''s conclusions and the rationale for decisions made throughout the audit. This documentation enables engagement quality reviewers under SQMS No. 2, peer reviewers, and regulatory inspectors to understand the auditor''s reasoning. Choice B is incorrect because documentation serves the broader purpose of supporting review and accountability, not merely satisfying filing requirements.'
WHERE id = 4956;

-- ============================================================
-- QUALITY MANAGEMENT (1 question)
-- ============================================================

-- ID 359: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS No. 1.53, the monitoring and remediation component requires the firm to perform an annual evaluation and reach a conclusion about whether the system of quality management provides reasonable assurance that its objectives are being achieved. This conclusion holds the firm accountable for ongoing quality. Choice B is incorrect because a one-time initial assessment does not satisfy SQMS No. 1 — the evaluation must occur annually to ensure the system continues to function effectively.'
WHERE id = 359;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (1 question)
-- ============================================================

-- ID 5039: Responding to Assessed Risks
UPDATE questions SET
  explanation = 'Under AU-C 240.29, incorporating unpredictability into audit procedures helps detect fraud because it prevents management and employees from anticipating which procedures will be performed, when, and on what items. Examples include performing surprise counts, testing journal entries at unexpected dates, or visiting locations not tested in prior years. Choice B is incorrect because using the same procedures each year in a predictable pattern would allow those committing fraud to tailor their concealment efforts around the auditor''s known approach.'
WHERE id = 5039;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 1754: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.24, analytical procedures in a review engagement involve evaluating financial information by studying plausible relationships among both financial and nonfinancial data. This includes comparing current-year amounts to prior years, industry data, budgets, and expected relationships. Choice B is incorrect because physical counts, confirmations, and control testing are audit procedures performed under AU-C standards — they exceed the scope of a review engagement under AR-C 90.'
WHERE id = 1754;

-- ID 1755: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 80.17, in a compilation the accountant reads the financial statements and considers whether they appear to be appropriate in form and free from obvious material misstatements. The accountant is not required to verify records, perform analytical procedures, or confirm balances — no assurance is provided. Choice B is incorrect because performing verification procedures would exceed the scope of a compilation under AR-C 80 and would instead constitute a review or audit-level engagement.'
WHERE id = 1755;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1789: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.24, analytical procedures in a review typically involve comparing financial ratios and trends to industry averages, prior-year results, and budgets. Comparing gross margin percentage is a classic analytical procedure for a manufacturing company. Choice B is incorrect because physical inspection, confirmations, and testing purchase orders are audit procedures under AU-C 500 that go beyond the scope of a review engagement under AR-C 90.'
WHERE id = 1789;

-- ID 1791: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.39, the standard review report expresses limited (negative) assurance: "Based on our review, we are not aware of any material modifications that should be made to the accompanying financial statements." This language under AR-C 90 is distinctly different from the positive assurance of an audit opinion under AU-C 700. Choice B is incorrect because positive assurance (expressing an opinion on the financial statements) is the auditor''s conclusion in an audit, not a review.'
WHERE id = 1791;

-- ============================================================
-- RISK ASSESSMENT (3 questions)
-- ============================================================

-- ID 280: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 240.32, to address the presumed risk of management override of controls, the auditor must: (1) test journal entries and other adjustments for appropriateness, (2) review accounting estimates for bias, and (3) evaluate the business rationale for significant unusual transactions. These procedures are required on every audit because AU-C 240.31 presumes management override as a fraud risk regardless of the auditor''s assessment. Choice B is incorrect because these procedures cannot be eliminated even when controls appear strong.'
WHERE id = 280;

-- ID 1491: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 200.A42, detection risk is the risk that the procedures performed by the auditor to reduce audit risk to an acceptably low level will not detect a misstatement that exists and that could be material. Unlike inherent risk and control risk — which exist independently of the audit — detection risk is directly controlled by the auditor through the nature, timing, and extent of audit procedures under AU-C 330. Choice B is incorrect because inherent risk and control risk are entity-level risks that the auditor assesses but does not directly control.'
WHERE id = 1491;

-- ID 1496: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 200.A40, inherent risk and control risk combine to form the risk of material misstatement (RMM) at the assertion level. Inherent risk considers the susceptibility of an assertion to misstatement before considering controls, while control risk considers the effectiveness of controls in preventing or detecting such misstatements. Together under AU-C 315, they represent the entity''s risk before audit procedures are applied. Choice B is incorrect because detection risk is the auditor''s risk, not a component of the entity''s risk of material misstatement.'
WHERE id = 1496;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (1 question)
-- ============================================================

-- ID 5152: Specific Areas and Transactions
UPDATE questions SET
  explanation = 'Under AU-C 570.20, when substantial doubt exists but is adequately mitigated by management''s plans and appropriate disclosures are made, the auditor issues an unmodified opinion. However, the auditor should include an emphasis-of-matter paragraph under AU-C 706 that draws attention to the going concern uncertainty and the related note disclosures. Choice B is incorrect because a qualified opinion would be appropriate only if the entity failed to make adequate going concern disclosures, not when doubt is mitigated and properly disclosed.'
WHERE id = 5152;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (3 questions)
-- ============================================================

-- ID 1671: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.05, substantive analytical procedures are more reliable when expectations are developed using disaggregated data — by product line, location, or month rather than annual totals — along with multiple independent sources and data the auditor has validated. Greater precision in the expectation produces more persuasive evidence under AU-C 520.A5. Choice B is incorrect because using highly aggregated annual data reduces precision and makes the analytical procedure less effective at detecting material misstatements.'
WHERE id = 1671;

-- ID 1672: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 505.12, when positive confirmations indicate customers paid before year-end but the amounts still appear as receivables at December 31, this suggests a potential cutoff error in cash receipts. The auditor should investigate under AU-C 505 whether the payments were received before year-end but not recorded until January, which would overstate both accounts receivable and understate cash at the balance sheet date. Choice A is incorrect because dismissing the responses without investigation would ignore evidence of a possible misstatement.'
WHERE id = 1672;

-- ID 1673: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 501.05, when the auditor cannot attend the physical inventory count, alternative procedures should be performed. These include observing a subsequent physical count, testing rollback or rollforward of transactions between the count date and year-end, and inspecting purchase and sales records. Only if these alternative procedures are insufficient should the auditor consider a scope limitation under AU-C 705. Choice A is incorrect because immediately issuing a disclaimer without attempting alternative procedures does not satisfy AU-C 501.'
WHERE id = 1673;

-- ============================================================
-- TERMS OF ENGAGEMENT (1 question)
-- ============================================================

-- ID 4975: Terms of Engagement
UPDATE questions SET
  explanation = 'Under AU-C 210.06, management''s agreement to provide written representations is a precondition for an audit. If management refuses to provide them, a fundamental precondition is not met, and the auditor should decline the engagement. Management representations under AU-C 580 are a required component, and refusal suggests an unwillingness to accept responsibility for the financial statements. Choice B is incorrect because a complex accounting system presents challenges but is not a reason to decline — it simply requires more extensive audit procedures.'
WHERE id = 4975;

-- ============================================================
-- TESTS OF CONTROLS (1 question)
-- ============================================================

-- ID 5076: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A30, reperformance involves the auditor independently executing the same procedure or control that the entity''s personnel performed, to determine whether the control produces the correct results. For example, the auditor might independently reconcile a bank statement to verify that management''s reconciliation control operates effectively. Choice B is incorrect because observation under AU-C 500.A22 involves watching others perform the control rather than the auditor independently executing it.'
WHERE id = 5076;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 question)
-- ============================================================

-- ID 4995: Understanding the Entity and Environment
UPDATE questions SET
  explanation = 'Under AU-C 315.06, inquiring of management and other personnel, combined with observing the entity''s operations and inspecting documents, is the most effective approach for gaining an understanding of the internal control environment. This combination provides the auditor with both stated policies and evidence of how they actually operate in practice. Choice B is incorrect because relying solely on inquiry without observation or inspection would not provide sufficient evidence of how controls actually function under AU-C 315.'
WHERE id = 4995;

-- ============================================================
-- USING THE WORK OF OTHERS (1 question)
-- ============================================================

-- ID 5056: Using the Work of Others
UPDATE questions SET
  explanation = 'Under AU-C 610.09, the external auditor may use the internal audit function''s work in two ways: (1) using work the internal auditors have already performed as audit evidence, or (2) requesting direct assistance from internal auditors under the external auditor''s direction, supervision, and review. In either case, AU-C 610.05 confirms that the external auditor retains sole responsibility for the audit opinion. Choice B is incorrect because the external auditor cannot delegate responsibility for the opinion to internal audit.'
WHERE id = 5056;

-- ============================================================
-- WRITTEN REPRESENTATIONS (1 question)
-- ============================================================

-- ID 5134: Written Representations
UPDATE questions SET
  explanation = 'Under AU-C 580.10, required representations include that management has fulfilled its responsibility for the preparation of the financial statements in accordance with the applicable framework, has provided the auditor with all relevant information and access, and that all transactions have been recorded. Additional representations under AU-C 580.11 address fraud, subsequent events, litigation, and completeness of related-party disclosures. Choice B is incorrect because a representation about future profitability is not a required element of the management representation letter.'
WHERE id = 5134;

COMMIT;
