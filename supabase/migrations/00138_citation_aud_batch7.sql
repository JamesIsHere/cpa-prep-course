-- Migration: Citation backfill — AUD batch 7 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Misstatements and Control Deficiencies, Nature and Scope of Engagements, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others, Written Representations

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (1 question)
-- ============================================================

-- ID 5092: Analytical Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.05, when performing substantive analytical procedures, the auditor must develop an expectation that is sufficiently precise to identify misstatements at the relevant level. AU-C 520.A5 emphasizes that the reliability of the data used to develop the expectation is the most important characteristic — data should come from sources independent of the account being tested and should be sufficiently reliable for the auditor''s purpose. Choice B is incorrect because while timeliness matters, unreliable data cannot produce a meaningful expectation regardless of how current it is. Choice C is incorrect because the volume of data does not compensate for poor reliability.'
WHERE id = 5092;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 26: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 215.22, in an agreed-upon procedures engagement the practitioner performs only those procedures that the engaging party and specified parties have agreed upon and reports the findings without expressing an opinion or conclusion. AT-C 215.39 requires that the report be restricted to the specified parties because only they understand the sufficiency and context of the procedures performed. Choice A is incorrect because agreed-upon procedures engagements do not result in an opinion — the practitioner reports factual findings only. Choice C is incorrect because the practitioner does not provide any form of assurance (positive or negative) in this type of engagement.'
WHERE id = 26;

-- ID 135: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 305.31, a practitioner''s report on a review of prospective financial statements includes negative assurance — that nothing came to the practitioner''s attention indicating the assumptions are not reasonable as a basis for the forecast or projection. AT-C 305.32 also requires a caveat that prospective results may not be achieved, since prospective information is inherently uncertain. Choice A is incorrect because positive (examination-level) assurance is not provided in a review engagement. Choice C is incorrect because an opinion on the accuracy of results would be inappropriate for prospective financial information.'
WHERE id = 135;

-- ============================================================
-- AUDIT EVIDENCE (4 questions)
-- ============================================================

-- ID 115: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 500.A20, recalculation consists of checking the mathematical accuracy of documents or records. The auditor independently reperforms calculations — such as depreciation computations, extensions, footings, or cross-footings — to verify they are mathematically correct. Choice A is incorrect because inspection involves examining records, documents, or tangible assets, not reperforming calculations. Choice B is incorrect because observation involves watching a process or procedure being performed by others, which does not address mathematical verification.'
WHERE id = 115;

-- ID 296: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 240.32(b), the auditor should design procedures to test the appropriateness of journal entries, and AU-C 240.A46 identifies specific characteristics that may indicate fraudulent entries, including entries posted by unusual individuals (such as senior management who do not normally make journal entries), large round-dollar amounts, entries posted near period-end, entries lacking adequate descriptions, and entries posted outside normal business hours. Choice A is incorrect because normal, routine entries with standard descriptions and appropriate supporting documentation are less likely to indicate fraud risk. Choice C is incorrect because entries made by authorized accounting staff during normal operations are expected and do not warrant special investigation.'
WHERE id = 296;

-- ID 299: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 501.11, the auditor shall attend the physical inventory counting unless impracticable. Physical observation or counting provides the most persuasive evidence for the existence assertion because the auditor directly verifies the presence of assets through personal inspection. AU-C 500.A5 notes that evidence obtained directly by the auditor is more reliable than evidence obtained indirectly. Choice A is incorrect because perpetual inventory records are internal documents and do not by themselves confirm physical existence. Choice B is incorrect because management representations under AU-C 580 are the weakest form of audit evidence.'
WHERE id = 299;

-- ID 300: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 520.A1, analytical procedures include the use of data analytics techniques such as three-way matching, which compares purchase orders (authorization to buy), receiving reports (confirmation of goods received), and vendor invoices (billing for goods). This automated comparison identifies discrepancies such as duplicate payments, unauthorized purchases, or quantity differences. Choice B is incorrect because comparing bank statements, cash receipts, and the general ledger describes a bank reconciliation procedure, not three-way matching. Choice C is incorrect because comparing budgeted to actual figures describes variance analysis, which is a different analytical technique.'
WHERE id = 300;

-- ============================================================
-- AUDIT PLANNING (3 questions)
-- ============================================================

-- ID 99: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 620.12, the auditor must evaluate whether the specialist''s findings are adequate for the auditor''s purposes, including assessing the specialist''s competence, capabilities, and objectivity. AU-C 620.08 clarifies that while the auditor need not have the specialist''s expertise, the auditor must understand the work sufficiently to evaluate it as audit evidence. Choice A is incorrect because the auditor is not required to possess the same level of expertise as the specialist. Choice B is incorrect because the specialist is generally not referenced in the auditor''s report unless the reference is needed to explain a modification to the opinion (AU-C 620.15).'
WHERE id = 99;

-- ID 269: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 402.09, when a client uses a service organization, the auditor must obtain an understanding of the nature and significance of the services provided and their effect on the client''s internal controls relevant to the audit. This understanding informs the auditor''s risk assessment and determines whether additional evidence — such as a SOC 1 report under SSAE 18 — is needed regarding controls at the service organization. Choice A is incorrect because the auditor does not automatically require a SOC report; the decision depends on whether the services are significant to the audit. Choice C is incorrect because the auditor cannot simply ignore a service organization that processes significant transactions.'
WHERE id = 269;

-- ID 270: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 620.09, the auditor evaluates a specialist''s competence by considering professional certifications, licenses, relevant experience in the field, reputation among peers, and adherence to professional or ethical standards. These factors help the auditor determine whether the specialist has the necessary knowledge and skills. Choice A is incorrect because the specialist''s billing rate is not a measure of professional competence. Choice B is incorrect because the specialist''s prior relationship with the audit firm is relevant to objectivity, not competence.'
WHERE id = 270;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 20: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 705.08, when a material misstatement exists and management refuses to correct it, the auditor must modify the opinion. AU-C 705.A8 provides that a qualified opinion is appropriate when the misstatement is material but not pervasive to the financial statements. Misclassification of long-term debt as a current liability is material but typically affects only the balance sheet classification, not the overall financial statements. Choice A is incorrect because an adverse opinion is reserved for situations where the misstatement is both material and pervasive (AU-C 705.09). Choice C is incorrect because a disclaimer of opinion addresses scope limitations, not identified misstatements (AU-C 705.10).'
WHERE id = 20;

-- ID 21: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 800.14, when reporting on financial statements prepared in accordance with a special purpose framework (such as cash basis or tax basis), the auditor''s report must include an emphasis-of-matter paragraph that describes the applicable financial reporting framework and refers to the note in the financial statements that describes the basis of accounting. AU-C 800.16 permits the auditor to issue an unmodified opinion because the statements are evaluated against the special purpose framework, not GAAP. Choice A is incorrect because an adverse opinion is not required simply because the framework differs from GAAP. Choice C is incorrect because the report must specifically identify the framework used, not merely state it is non-GAAP.'
WHERE id = 21;

-- ============================================================
-- AUDIT SAMPLING (4 questions)
-- ============================================================

-- ID 116: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.05, the primary difference between statistical and nonstatistical sampling is that statistical sampling uses mathematical probability theory — specifically the laws of probability — to select the sample, measure sufficiency, and evaluate results, including quantifying sampling risk. Nonstatistical sampling relies on auditor judgment for sample selection and evaluation. AU-C 530.A1 notes that both methods, when properly applied, can provide sufficient appropriate audit evidence. Choice A is incorrect because neither method is inherently superior — both are acceptable under auditing standards. Choice B is incorrect because nonstatistical sampling can also provide reliable results when the auditor exercises proper judgment.'
WHERE id = 116;

-- ID 118: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A13, systematic selection with a random start involves selecting every nth item from the population. AU-C 530.A14 warns that systematic selection can produce a biased, non-representative sample if the population has a cyclical pattern that coincides with the sampling interval. For example, if every 10th invoice is a month-end adjusting entry and the sampling interval is 10, the sample will consistently include or exclude those entries, misrepresenting the population. Choice A is incorrect because random fluctuations in the population do not create systematic bias. Choice C is incorrect because a large population size does not itself make systematic selection unreliable.'
WHERE id = 118;

-- ID 119: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.13, when the projected misstatement from a sample exceeds tolerable misstatement, the auditor concludes that the sample results do not support the assertion that the account balance is not materially misstated. AU-C 530.14 directs the auditor to consider expanding the sample, performing alternative procedures, or requesting management to investigate and adjust the balance. Choice A is incorrect because the auditor cannot simply accept the balance when evidence indicates likely material misstatement. Choice C is incorrect because the decision about the overall audit opinion is made later after evaluating all evidence, not solely from one sampling result.'
WHERE id = 119;

-- ID 305: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.05, audit sampling involves applying procedures to less than 100% of items within a population to draw conclusions about the entire population. AU-C 530.A23 clarifies that testing 100% of items in a stratum constitutes complete examination, not sampling. The auditor may combine complete examination of the highest-value stratum with sampling of the remaining strata to achieve efficient yet thorough population coverage. Choice A is incorrect because 100% testing is not a sampling technique — it is a census of that stratum. Choice C is incorrect because complete examination of a stratum does not introduce sampling risk.'
WHERE id = 305;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 2: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.295 (Management Participation), making management decisions on behalf of an attest client creates a management participation threat that impairs independence because the auditor assumes a role that belongs to management. The Interpretation states that a member shall not assume management responsibilities for an attest client. Choice A is incorrect because advisory services such as tax preparation and consulting are permissible when the member does not assume management functions. Choice B is incorrect because performing routine bookkeeping with management oversight does not itself impair independence when proper safeguards are in place.'
WHERE id = 2;

-- ID 93: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.000.010 (Conceptual Framework), when a CPA identifies a potential threat to independence — such as a close friend serving on the audit client''s board — the CPA must first evaluate the significance of the threat. If the threat is not at an acceptable level, the CPA must determine whether safeguards can reduce it. Only if safeguards cannot adequately mitigate the threat should the CPA decline or discontinue the engagement. Choice A is incorrect because immediate resignation may be premature if safeguards can address the threat. Choice B is incorrect because ignoring the relationship entirely would violate the conceptual framework''s requirement to evaluate threats.'
WHERE id = 93;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (2 questions)
-- ============================================================

-- ID 1131: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS and the Uniform Guidance (2 CFR 200.518), major program determination uses a risk-based approach. Programs are first classified as Type A (expenditures above the applicable threshold) or Type B (below the threshold). Risk assessments are then applied to determine which programs become major programs — at least 40% of total federal expenditures must be covered. Choice A is incorrect because the entity does not select its own major programs; the auditor makes the determination based on the Uniform Guidance criteria. Choice C is incorrect because simply selecting the largest programs without a risk-based assessment does not comply with the GAGAS methodology.'
WHERE id = 1131;

-- ID 1134: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS and the Uniform Guidance (2 CFR 200.512(a)), the audit must be completed and the data collection form and reporting package must be submitted to the Federal Audit Clearinghouse within the earlier of 30 calendar days after receipt of the auditor''s report(s) or 9 months after the end of the audit period. Choice A is incorrect because 60 days exceeds the required submission window. Choice B is incorrect because 12 months exceeds the maximum 9-month period specified in the GAGAS framework.'
WHERE id = 1134;

-- ============================================================
-- INDEPENDENCE (1 question)
-- ============================================================

-- ID 4932: Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.260.020 (Close Relatives), a close family relationship between a covered member and a key member of client management (such as a CFO) creates a familiarity threat. The concern is that the auditor may become too sympathetic to the client''s interests or too trusting of the client''s representations due to the personal relationship. Choice A is incorrect because a self-review threat arises when the auditor reviews their own previous work product, not from family relationships. Choice B is incorrect because an advocacy threat arises when the auditor promotes or defends the client''s position in an adversarial context.'
WHERE id = 4932;

-- ============================================================
-- INTERNAL CONTROLS (6 questions)
-- ============================================================

-- ID 107: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.14, the control environment is a component of internal control that sets the tone of the organization. AU-C 315.A77 identifies integrity and ethical values, management''s philosophy and operating style, and management''s attitude toward controls as key elements. Management override of controls is one of the strongest indicators of a weak control environment because it signals that the tone at the top does not prioritize ethical behavior. Choice A is incorrect because older software creates operational risk but does not inherently reflect the ethical tone of the organization. Choice B is incorrect because a small accounting staff may create segregation-of-duties concerns but does not directly indicate management''s disregard for controls.'
WHERE id = 107;

-- ID 110: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A98, IT general controls (ITGCs) are policies and procedures that relate to many applications and support the effective functioning of application controls. ITGCs include access security (such as password requirements and user access management), program change management, computer operations, and program development. Choice A is incorrect because automated edit checks within a specific application (e.g., validation of invoice amounts) are application controls, not ITGCs. Choice C is incorrect because automated three-way matching within a purchasing system is an application control that operates within a specific business process.'
WHERE id = 110;

-- ID 282: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A98, the four primary categories of IT general controls are: (1) access security — restricting access to programs and data, (2) program change management — ensuring changes are authorized, tested, and properly implemented, (3) computer operations — ensuring reliable and continuous system processing, and (4) program development — ensuring new systems are properly designed and tested before deployment. These ITGCs support the effective functioning of application controls. Choice A is incorrect because user training, while important, is an administrative control rather than one of the four ITGC categories recognized in auditing standards.'
WHERE id = 282;

-- ID 283: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A101, weak ITGCs undermine the reliability of application controls that depend on those IT systems. If ITGCs are ineffective, the auditor cannot rely on automated application controls and must increase the nature, timing, or extent of substantive testing to compensate. AU-C 330.08 requires the auditor to design further audit procedures whose nature, timing, and extent are responsive to the assessed risks. Choice A is incorrect because ineffective ITGCs do not automatically result in a disclaimer of opinion — the auditor adjusts the audit approach rather than immediately modifying the report. Choice C is incorrect because simply accepting management''s representations about system reliability does not provide sufficient appropriate audit evidence.'
WHERE id = 283;

-- ID 284: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A99, application controls are automated or manual controls that operate within specific IT applications to ensure the completeness, accuracy, and authorization of transactions. An edit check that validates transaction amounts against authorization thresholds is an application control because it operates within a specific process to enforce business rules. Choice A is incorrect because password requirements are an access security control, which is an ITGC under AU-C 315.A98. Choice B is incorrect because system access logs relate to access security monitoring, also an ITGC. Choice C is incorrect because backup rotation schedules are computer operations controls, another ITGC category.'
WHERE id = 284;

-- ID 285: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A27, test data is a computer-assisted audit technique (CAAT) where the auditor submits fictitious or simulated transactions through the client''s production system to test whether programmed controls — such as edit checks, validation rules, and calculations — function as designed. The auditor compares actual processing results to expected results to identify control failures. Choice A is incorrect because parallel simulation involves the auditor reprocessing actual data through an independent program, which is a different CAAT. Choice C is incorrect because reviewing system documentation examines design but does not test operating effectiveness of controls.'
WHERE id = 285;

-- ============================================================
-- MATERIALITY (1 question)
-- ============================================================

-- ID 5014: Materiality
UPDATE questions SET
  explanation = 'Under AU-C 320.04, materiality is determined in the context of the needs of users of the financial statements. AU-C 320.A3 notes that publicly traded entities are often subject to lower materiality levels because of heightened regulatory scrutiny (such as SEC requirements), the broader group of financial statement users, and the potential market impact of even relatively small misstatements. Choice A is incorrect because a privately held company with few external users would typically support a higher, not lower, materiality level. Choice C is incorrect because a simple business structure with routine transactions does not by itself necessitate a lower materiality threshold.'
WHERE id = 5014;

-- ============================================================
-- MISSTATEMENTS AND CONTROL DEFICIENCIES (1 question)
-- ============================================================

-- ID 5111: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 530.12, a projected misstatement is the auditor''s best estimate of the misstatement in a population, calculated by extrapolating from misstatements identified in a sample to the total population. When the auditor tests a sample and finds errors, those errors are projected to estimate the likely misstatement in the untested portion under AU-C 530.13. This projected amount is included in the aggregate of uncorrected misstatements evaluated under AU-C 450. Choice A is incorrect because a projected misstatement arises from sample extrapolation, not from a single known error. Choice C is incorrect because management''s estimates are evaluated separately under AU-C 540, not through the projected misstatement framework.'
WHERE id = 5111;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (1 question)
-- ============================================================

-- ID 4911: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 315.A128, the completeness assertion addresses whether all transactions, events, and account balances that should have been recorded have in fact been recorded in the financial statements. It is concerned with potential understatement or omission of amounts. Choice B is incorrect because the existence assertion under AU-C 315.A128 addresses the opposite direction — whether recorded items actually exist at a given date. Choice C is incorrect because the valuation assertion addresses whether amounts are recorded at appropriate values, not whether all items have been captured.'
WHERE id = 4911;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 question)
-- ============================================================

-- ID 141: Professional Responsibilities
UPDATE questions SET
  explanation = 'Under AU-C 250.14, when the auditor becomes aware of a potential illegal act that has a material effect on the financial statements and management does not take appropriate remedial action, the auditor should consider the effects on the financial statements and the auditor''s report. AU-C 250.18 indicates this may lead to a qualified or adverse opinion, or withdrawal from the engagement. Choice A is incorrect because the auditor generally does not have a duty to report directly to law enforcement (except under specific statutes such as the Securities Exchange Act Section 10A). Choice B is incorrect because the auditor cannot unilaterally add notes to the client''s financial statements.'
WHERE id = 141;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 question)
-- ============================================================

-- ID 4954: Professional Skepticism and Judgment
UPDATE questions SET
  explanation = 'Under AU-C 200.17, professional skepticism requires the auditor to maintain a questioning mind and critically assess audit evidence. Confirmation bias — the tendency to search for, interpret, and recall information that confirms pre-existing beliefs — is the cognitive bias that most directly undermines this requirement. AU-C 200.A22 warns that auditors must be alert to audit evidence that contradicts other evidence obtained and must not dismiss such evidence. Choice A is incorrect because anchoring bias (over-relying on an initial piece of information) is a distinct threat that does not specifically target the auditor''s treatment of confirming versus disconfirming evidence. Choice B is incorrect because availability bias (overweighting recent or vivid events) does not directly address the selective processing of evidence.'
WHERE id = 4954;

-- ============================================================
-- QUALITY MANAGEMENT (1 question)
-- ============================================================

-- ID 28: Quality Management
UPDATE questions SET
  explanation = 'Under PCAOB AS 1220.13, the engagement quality review must be completed before the date of the auditor''s report (for issuers). For non-issuers, SQMS No. 2 and AU-C 220 similarly require the engagement quality review to be completed before the report is released. The reviewer evaluates significant judgments and conclusions made by the engagement team to provide an additional safeguard for audit quality. Choice A is incorrect because completing the review after report release would defeat the purpose of this quality control mechanism. Choice C is incorrect because the review must evaluate the engagement team''s work before the opinion is issued, not merely at an interim stage.'
WHERE id = 28;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (1 question)
-- ============================================================

-- ID 5037: Responding to Assessed Risks
UPDATE questions SET
  explanation = 'Under AU-C 330.07, the auditor''s response to a high assessed risk of material misstatement should include more persuasive and extensive audit procedures. For inventory valuation assessed as high risk, AU-C 330.A14 indicates the auditor should consider engaging valuation specialists, testing a larger sample of items, performing additional price testing and lower-of-cost-or-net-realizable-value analyses, and potentially inspecting inventory at multiple locations. Choice A is incorrect because reducing the scope of testing would be inappropriate when the risk assessment is high. Choice C is incorrect because relying solely on management''s valuation without independent corroboration does not address the elevated risk.'
WHERE id = 5037;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 341: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.38, if the accountant becomes aware of information that indicates the financial statements may be materially misstated during a review engagement, the accountant should perform additional procedures to resolve the matter. AR-C 90.39 specifies that these additional procedures remain within the scope of a review — the engagement does not convert to an audit. Choice A is incorrect because discovering a potential misstatement does not automatically require upgrading to an audit engagement. Choice C is incorrect because the accountant cannot simply ignore information suggesting material misstatement.'
WHERE id = 341;

-- ID 344: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.46, when a client requests a downgrade from an audit to a review, the accountant must evaluate the reason for the change. AR-C 90.47 identifies legitimate reasons (such as a change in requirements from a third party or a misunderstanding of the engagement scope) and unacceptable reasons (such as attempting to prevent discovery of misstatements or restricting access to information). If the change is appropriate, the review report refers only to the review engagement. Choice A is incorrect because automatically agreeing to the downgrade without evaluating the reason could allow inappropriate scope restrictions. Choice B is incorrect because the review report should not reference the previously planned audit engagement.'
WHERE id = 344;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 23: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 80.20, in a compilation engagement, if management declines to correct a known GAAP departure, the accountant should disclose the departure in a separate paragraph of the compilation report. AR-C 80.21 states that withdrawal is required only if the departure is intended to mislead users. Compilations do not result in opinions, so an adverse opinion is not applicable. Choice A is incorrect because the accountant is not required to withdraw from the engagement unless the GAAP departure is designed to mislead. Choice C is incorrect because a compilation does not express any form of assurance or opinion, so issuing an adverse opinion is not an available option.'
WHERE id = 23;

-- ID 130: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.32, in a review engagement the accountant uses inquiry and analytical procedures to obtain limited assurance. AR-C 90.34 provides that when analytical procedures reveal unusual items — such as depreciation expense that appears unusually low relative to the asset base — the accountant should inquire of management to understand the reason and determine whether the matter has been properly accounted for. Choice A is incorrect because performing detailed substantive testing would exceed the scope of a review engagement. Choice B is incorrect because ignoring the unusual result would fail to meet the accountant''s obligation to obtain limited assurance.'
WHERE id = 130;

-- ============================================================
-- RISK ASSESSMENT (3 questions)
-- ============================================================

-- ID 9: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.12, the auditor must understand the entity and its environment, including changes in business operations. Simultaneous changes in revenue recognition policy and ERP implementation create elevated inherent risk under AU-C 315.A30 because new processes may contain errors, staff may not be fully trained, and data migration introduces the possibility of misstatement. These compound changes affect both inherent risk (new policy application) and control risk (new system controls untested), requiring enhanced audit procedures under AU-C 330. Choice A is incorrect because addressing only one change in isolation would understate the combined risk. Choice B is incorrect because the concern extends beyond operational efficiency to the risk of material misstatement.'
WHERE id = 9;

-- ID 101: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.A37, the audit risk model (Audit Risk = Risk of Material Misstatement x Detection Risk) establishes an inverse relationship between detection risk and the risk of material misstatement. When the assessed risk of material misstatement increases, the auditor must decrease detection risk by performing more effective, extensive, or timely audit procedures to maintain audit risk at an acceptably low level per AU-C 200.12. Choice A is incorrect because a direct relationship would mean the auditor performs fewer procedures when risk increases, which contradicts auditing standards. Choice C is incorrect because the two risks are mathematically linked through the audit risk model, not independent.'
WHERE id = 101;

-- ID 104: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.06, risk assessment procedures include three categories: (1) inquiries of management and others within the entity, (2) analytical procedures, and (3) observation and inspection. These procedures help the auditor understand the entity, its environment, and internal controls to identify risks of material misstatement at the financial statement and assertion levels. Choice A is incorrect because external confirmations are substantive procedures performed in response to assessed risks under AU-C 505, not risk assessment procedures. Choice B is incorrect because recalculation is a substantive test of details under AU-C 500.A20, not a risk assessment procedure.'
WHERE id = 104;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (1 question)
-- ============================================================

-- ID 5150: Specific Areas and Transactions
UPDATE questions SET
  explanation = 'Under AU-C 570.A3, indicators that an entity may have going concern issues include recurring operating losses, negative working capital, default on loan agreements, inability to obtain additional financing, loss of major customers or suppliers, and adverse financial ratios. AU-C 570.12 requires the auditor to evaluate whether substantial doubt exists about the entity''s ability to continue as a going concern for a reasonable period of time — generally not to exceed one year beyond the financial statement date. Choice A is incorrect because a single profitable quarter does not eliminate going concern considerations when other indicators are present. Choice B is incorrect because expansion plans without adequate financing may actually exacerbate going concern risk.'
WHERE id = 5150;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (3 questions)
-- ============================================================

-- ID 18: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 330.A42, the search for unrecorded liabilities is a key substantive procedure. Examining cash disbursements after the balance sheet date is the most effective procedure because payments made after year-end may relate to obligations that existed at the balance sheet date but were not recorded. This procedure directly tests the completeness assertion under AU-C 315.A128. Choice A is incorrect because confirming existing recorded balances only verifies what is already in the financial statements — it does not identify omitted liabilities. Choice B is incorrect because vouching recorded items tests existence, not completeness.'
WHERE id = 18;

-- ID 122: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.07, when substantive analytical procedures reveal an unexpected difference that exceeds the auditor''s threshold, the auditor should investigate the difference by inquiring of management and obtaining corroborating audit evidence. AU-C 520.A20 emphasizes that the difference may have a plausible explanation, but the auditor must obtain sufficient appropriate evidence to resolve the matter rather than simply accepting the explanation. Choice A is incorrect because assuming the difference is an error without investigation would be premature. Choice B is incorrect because automatically proposing an adjustment without understanding the cause of the difference may be unwarranted.'
WHERE id = 122;

-- ID 123: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 330.A42, completeness testing searches for unrecorded items — the direction of testing goes from the underlying activity to the accounting records. Examining cash disbursements after year-end identifies payments for obligations that existed at the balance sheet date but may not have been recorded as accounts payable, directly testing the completeness assertion. Choice A is incorrect because confirming existing recorded balances tests the existence and accuracy of amounts already in the financial statements, not completeness. Choice B is incorrect because vouching recorded items from the ledger to source documents tests existence, which is the opposite direction of testing from completeness.'
WHERE id = 123;

-- ============================================================
-- TERMS OF ENGAGEMENT (1 question)
-- ============================================================

-- ID 4972: Terms of Engagement
UPDATE questions SET
  explanation = 'Under AU-C 210.13, for recurring audits the auditor should assess whether circumstances require the engagement terms to be revised and whether there is a need to remind the entity of the existing terms. AU-C 210.A30 states that while a new engagement letter each year is not always required, the auditor should update it when there are changes in the engagement scope, senior management, ownership, legal or regulatory requirements, or other significant factors. Choice A is incorrect because requiring a completely new engagement letter for every recurring engagement is not mandated by auditing standards. Choice C is incorrect because allowing the original engagement letter to stand indefinitely without reassessment ignores the auditor''s obligation to consider changed circumstances.'
WHERE id = 4972;

-- ============================================================
-- TESTS OF CONTROLS (1 question)
-- ============================================================

-- ID 5073: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A22, a dual-purpose test is a procedure that simultaneously serves as both a test of controls and a substantive test of details. For example, examining a purchase transaction for proper authorization (test of control) and verifying the correct dollar amount (substantive test) in a single procedure. AU-C 330.A23 notes this approach is efficient because it addresses both control effectiveness and account balance accuracy simultaneously. Choice A is incorrect because testing only internal controls without also testing the account balance describes a test of controls alone, not a dual-purpose test. Choice C is incorrect because testing two different account balances is not what defines a dual-purpose test — the defining feature is combining control and substantive objectives.'
WHERE id = 5073;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 question)
-- ============================================================

-- ID 4993: Understanding the Entity and Environment
UPDATE questions SET
  explanation = 'Under AU-C 315.12(c), the auditor must gain an understanding of the entity''s selection and application of accounting policies and assess whether they are appropriate for its business and consistent with the applicable financial reporting framework and industry practices. AU-C 315.A60 directs the auditor to evaluate whether any changes in accounting policies are justified, properly applied, and adequately disclosed, and whether the policies appropriately reflect the economic substance of the entity''s transactions. Choice A is incorrect because simply confirming that policies are documented does not address whether they are appropriate. Choice B is incorrect because consistency with prior years alone does not ensure the policies are suitable for the entity''s current circumstances.'
WHERE id = 4993;

-- ============================================================
-- USING THE WORK OF OTHERS (1 question)
-- ============================================================

-- ID 5054: Using the Work of Others
UPDATE questions SET
  explanation = 'Under AU-C 402.09, when a client uses a service organization to process significant transactions (such as payroll processing or cloud-based accounting), the auditor must understand how the service organization''s services affect the client''s internal control relevant to the audit. AU-C 402.12 directs the auditor to assess the risks of material misstatement and determine whether sufficient appropriate evidence can be obtained — potentially through a Type 1 or Type 2 SOC report (SSAE 18, AT-C 320) or through direct testing at the service organization. Choice A is incorrect because the auditor cannot simply ignore the service organization''s role in processing significant transactions. Choice B is incorrect because automatically requiring an audit of the service organization is not necessary if a suitable SOC report is available.'
WHERE id = 5054;

-- ============================================================
-- WRITTEN REPRESENTATIONS (1 question)
-- ============================================================

-- ID 5132: Written Representations
UPDATE questions SET
  explanation = 'Under AU-C 580.09, the management representation letter should be signed by members of management with appropriate responsibilities for the financial statements and knowledge of the matters covered. AU-C 580.A9 specifies that this typically includes the chief executive officer (CEO) and the chief financial officer (CFO), as they have primary responsibility for the preparation and fair presentation of the financial statements. Choice A is incorrect because the general counsel, while knowledgeable about legal matters, does not have primary responsibility for the financial statements. Choice B is incorrect because the controller alone may not have sufficient authority — the CEO and CFO are the appropriate signatories.'
WHERE id = 5132;

COMMIT;
