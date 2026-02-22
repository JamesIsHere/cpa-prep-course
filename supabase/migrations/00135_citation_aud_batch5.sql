-- Migration: Citation backfill — AUD batch 5 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Misstatements and Control Deficiencies, Nature and Scope of Engagements, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others, Written Representations

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (1 question)
-- ============================================================

-- ID 5092: Analytical Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.05, when performing substantive analytical procedures the auditor must develop an independent expectation of the recorded amount using data that is sufficiently reliable. The most important characteristic is the reliability of the data source, because an expectation built on unreliable data — such as data prepared solely by personnel responsible for the amount being tested — undermines the procedure''s effectiveness. Choice B is incorrect because timeliness of data, while relevant, is secondary to reliability under AU-C 520. Choice C is incorrect because the volume of data does not determine the quality of the expectation.'
WHERE id = 5092;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 26: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 215.04, an agreed-upon procedures engagement requires the practitioner to perform only those specific procedures agreed upon by the specified parties and to report the factual findings without providing an opinion or any form of assurance. The report is restricted to the specified parties because only they understand the sufficiency of the procedures for their purposes. Choice A is incorrect because expressing an opinion is characteristic of an examination engagement under AT-C 205, not an agreed-upon procedures engagement. Choice C is incorrect because negative assurance is provided in review-level engagements, not agreed-upon procedures.'
WHERE id = 26;

-- ID 135: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 305.24, a review-level attestation report on prospective financial statements must include negative assurance (nothing came to the practitioner''s attention indicating the assumptions are not reasonable) and a required caveat that the prospective results may not be achieved due to the inherent uncertainty of forward-looking information. This dual requirement reflects the speculative nature of forecasts and projections. Choice A is incorrect because positive (examination-level) assurance under AT-C 305 applies to examination engagements on prospective statements, not reviews. Choice D is incorrect because a disclaimer of opinion is not the appropriate form of reporting for a review-level engagement.'
WHERE id = 135;

-- ============================================================
-- AUDIT EVIDENCE (4 questions)
-- ============================================================

-- ID 115: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 500.A26, recalculation is the audit procedure that involves the auditor independently verifying mathematical accuracy by reperforming calculations such as depreciation computations, footing trial balances, or recalculating interest accruals. It provides highly reliable evidence because the auditor performs the computation independently. Choice A is incorrect because inspection under AU-C 500.A14 involves examining records or documents rather than verifying mathematical computations. Choice C is incorrect because observation involves watching a process performed by others, not independently reperforming calculations.'
WHERE id = 115;

-- ID 296: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 240.32, the auditor should design and perform procedures to test the appropriateness of journal entries recorded in the general ledger, with particular attention to entries exhibiting fraud risk characteristics. Large round-dollar amounts, entries posted near period-end, entries made by individuals who do not typically post entries, entries posted outside normal business hours, and entries lacking adequate supporting descriptions are all common indicators warranting investigation. Choice B is incorrect because routine entries with standard descriptions, appropriate authorization, and consistent patterns are less likely to indicate fraudulent activity under AU-C 240.'
WHERE id = 296;

-- ID 299: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 501.03, when inventory is material to the financial statements the auditor is required to attend the physical inventory count and perform test counts. Physical observation provides the most persuasive evidence for the existence assertion because the auditor directly verifies that reported inventory items are physically present. Choice B is incorrect because reviewing perpetual inventory records is internal evidence that requires corroboration and does not directly confirm physical existence. Choice D is incorrect because management representations under AU-C 580 are the least persuasive form of audit evidence and cannot substitute for direct observation.'
WHERE id = 299;

-- ID 300: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 520 and AU-C 500, three-way matching is a data analytics technique that compares purchase orders (authorization), receiving reports (receipt of goods), and vendor invoices (billing) to identify discrepancies such as duplicate payments, unauthorized purchases, or quantity and pricing differences. This automated comparison tests multiple assertions simultaneously across the procurement cycle. Choice B is incorrect because comparing bank statements to cash receipts and the general ledger describes a bank reconciliation procedure, not three-way matching. Choice C is incorrect because matching sales orders to shipping documents to customer invoices is a revenue cycle procedure, not the procurement three-way match.'
WHERE id = 300;

-- ============================================================
-- AUDIT PLANNING (3 questions)
-- ============================================================

-- ID 99: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 620.08, when using the work of an auditor''s specialist, the auditor retains responsibility to evaluate whether the specialist''s findings are suitable for audit purposes. This includes assessing the specialist''s competence, capabilities, and objectivity under AU-C 620.09, as well as evaluating the relevance and reasonableness of the specialist''s assumptions and methods. Choice C is incorrect because AU-C 620.14 provides that the specialist is not referenced in the auditor''s standard unmodified report. Choice A is incorrect because the auditor cannot delegate the responsibility for the audit opinion to the specialist.'
WHERE id = 99;

-- ID 269: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 402.09, when a client uses a service organization, the auditor must obtain an understanding of the nature and significance of the services provided and their effect on the client''s internal controls relevant to the audit during the planning phase. This understanding informs the risk assessment and determines whether additional evidence such as a SOC 1 report or direct testing at the service organization is needed. Choice B is incorrect because AU-C 402 does not automatically require obtaining a SOC report for every service organization — the auditor first evaluates significance. Choice C is incorrect because ignoring the service organization''s role would leave a gap in the auditor''s understanding of internal controls.'
WHERE id = 269;

-- ID 270: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 620.09, the auditor evaluates a specialist''s competence by considering professional certifications or licenses, relevant experience in the subject matter, reputation among peers, and adherence to applicable professional or ethical standards. These factors collectively indicate whether the specialist''s work product will be sufficiently reliable as audit evidence. Choice C is incorrect because the specialist''s billing rate does not indicate professional competence under AU-C 620. Choice D is incorrect because the specialist''s geographic location has no bearing on qualifications or the quality of their work.'
WHERE id = 270;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 20: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 705.08, a qualified opinion is appropriate when the auditor concludes that a misstatement is material but not pervasive to the financial statements. Misclassification of long-term debt as a current liability is material but typically confined to specific line items and does not pervade the entire financial statements. Choice A is incorrect because an adverse opinion under AU-C 705.09 requires the misstatement to be both material and pervasive. Choice C is incorrect because a disclaimer of opinion under AU-C 705.10 applies to scope limitations where sufficient evidence cannot be obtained, not to known misstatements that management refuses to correct.'
WHERE id = 20;

-- ID 21: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 800.14, when reporting on financial statements prepared in accordance with a special purpose framework such as the cash basis, the auditor''s report must include an emphasis-of-matter paragraph that identifies the applicable framework and refers to the note in the financial statements that describes the basis of accounting. The auditor can still issue an unmodified opinion because the statements are evaluated against the special purpose framework, not GAAP. Choice B is incorrect because an adverse opinion is not required solely because the statements are prepared on a basis other than GAAP. Choice D is incorrect because the emphasis-of-matter paragraph is mandatory, not optional, under AU-C 800.'
WHERE id = 21;

-- ============================================================
-- AUDIT SAMPLING (4 questions)
-- ============================================================

-- ID 116: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.05, the primary difference between statistical and nonstatistical sampling is that statistical sampling uses mathematical probability theory to measure sampling risk, determine sample sizes, and evaluate results, and it requires random selection of items from the population. Nonstatistical sampling relies on the auditor''s professional judgment for both sample size determination and results evaluation. Choice C is incorrect because AU-C 530.04 recognizes that both approaches, when properly designed and executed, can provide sufficient appropriate audit evidence — neither is inherently superior.'
WHERE id = 116;

-- ID 118: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A13, systematic selection involves choosing every nth item from a population after a random starting point. This method can produce a biased, unrepresentative sample if the population contains a cyclical pattern that coincides with the sampling interval — for example, if every 10th transaction is a month-end adjustment and the interval is also 10. Choice A is incorrect because a large population size does not by itself make systematic selection unreliable. Choice D is incorrect because the method is generally efficient; the concern is specifically about cyclical patterns in the population structure.'
WHERE id = 118;

-- ID 119: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.14, when the projected misstatement from a sample exceeds tolerable misstatement, the auditor cannot conclude that the account balance is free from material misstatement. The auditor should consider expanding the sample, performing alternative substantive procedures, or requesting that management investigate and adjust the population. Choice D is incorrect because a single sampling result does not automatically determine the audit opinion — the auditor evaluates all accumulated misstatements under AU-C 450.11 before forming the overall conclusion. Choice A is incorrect because accepting the balance as fairly stated would contradict the sampling evidence.'
WHERE id = 119;

-- ID 305: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A2, audit sampling applies only when less than 100% of items in a population are selected for testing. When the auditor tests 100% of items in a stratum — such as all accounts receivable over $100,000 — that is a complete examination of the stratum, not sampling. Sampling concepts such as tolerable misstatement and sampling risk do not apply to items tested in their entirety. Choice B is incorrect because stratification itself is a valid sampling technique, but the 100% examination of the top stratum within a stratified approach is not considered sampling under AU-C 530.'
WHERE id = 305;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 2: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.295, making management decisions on behalf of an attest client creates a management participation threat that impairs independence because the auditor assumes a role that belongs to client management. The Code prohibits covered members from taking on management responsibilities, including making operating, financial, or strategic decisions for the client. Choice B is incorrect because tax return preparation is generally permissible under ET 1.295 when the client makes the final decisions on tax positions. Choice C is incorrect because providing training to client personnel is an advisory service, not a management function.'
WHERE id = 2;

-- ID 93: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.210 (Conceptual Framework for Independence), the CPA must first identify and evaluate the significance of the threat to independence before taking any corrective action. If the threat is not at an acceptable level, the CPA should then determine whether safeguards can reduce the threat to an acceptable level. Choice A is incorrect because immediately resigning from the engagement without first evaluating the threat''s significance is premature under the conceptual framework approach. Choice D is incorrect because ignoring the relationship would fail to address the identified threat to independence.'
WHERE id = 93;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (2 questions)
-- ============================================================

-- ID 1131: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under the Uniform Guidance (2 CFR 200.518) and GAGAS, the major program determination in a single audit uses a risk-based approach. Programs are first classified as Type A (larger programs exceeding the Type A threshold) or Type B (smaller programs below the threshold). The auditor then applies risk criteria — considering prior audit findings, program complexity, and changes in personnel or systems — to determine which programs are tested as major programs. Choice B is incorrect because major program selection is not based solely on dollar amount; the risk assessment of both Type A and Type B programs drives the final determination under the Uniform Guidance.'
WHERE id = 1131;

-- ID 1134: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under the Uniform Guidance (2 CFR 200.512) and GAGAS, the single audit reporting package must be submitted to the Federal Audit Clearinghouse within the earlier of 30 calendar days after receipt of the auditor''s report or 9 months after the end of the audit period (fiscal year-end). Late submissions may affect the entity''s ability to receive future federal funding. Choice A is incorrect because a 60-day deadline after year-end is not the applicable standard under the Uniform Guidance. Choice C is incorrect because submission is required to the Federal Audit Clearinghouse, not directly to each federal awarding agency.'
WHERE id = 1134;

-- ============================================================
-- INDEPENDENCE (1 question)
-- ============================================================

-- ID 4932: Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.270, a close family relationship between a covered member (such as an engagement partner) and a key member of client management (such as the CFO) creates a familiarity threat to independence. The concern is that the personal relationship may cause the auditor to be overly trusting or sympathetic toward the client''s positions. Choice A is incorrect because a self-review threat under ET 1.295 arises when the auditor evaluates their own prior work product, not from family relationships. Choice B is incorrect because an advocacy threat involves promoting or defending the client''s position in adversarial proceedings.'
WHERE id = 4932;

-- ============================================================
-- INTERNAL CONTROLS (6 questions)
-- ============================================================

-- ID 107: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.14, the control environment reflects the attitude, awareness, and actions of management and those charged with governance regarding internal control. Management override of established controls is one of the strongest indicators of a weak control environment because it signals a tone at the top that does not prioritize integrity and ethical values. Choice B is incorrect because a small accounting department may create segregation-of-duties challenges but does not inherently indicate a deficient control environment. Choice C is incorrect because outdated technology is an IT infrastructure concern, not a direct reflection of management''s commitment to controls.'
WHERE id = 107;

-- ID 110: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A79, IT general controls (ITGCs) are policies and procedures that relate to many applications and support the effective functioning of application controls. Access controls — such as password policies and user access management — are classified as ITGCs because they operate across the entire IT environment rather than within a single application. Choice B is incorrect because input validation checks within a specific transaction processing program are application controls under AU-C 315.A80, not ITGCs. Choice C is incorrect because automated three-way matching within a purchasing module is also an application control.'
WHERE id = 110;

-- ID 282: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A79, the four primary categories of IT general controls are: (1) access security — controlling who can access programs and data, (2) program change management — ensuring software changes are authorized, tested, and approved, (3) computer operations — managing system processing, backups, and job scheduling, and (4) program development — ensuring new systems are properly designed, tested, and implemented. These ITGCs collectively support the reliable functioning of application controls. Choice B is incorrect because input edits and automated calculations are application controls under AU-C 315.A80, not ITGC categories.'
WHERE id = 282;

-- ID 283: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A82, when IT general controls are found to be ineffective, the auditor cannot rely on automated application controls that depend on those ITGCs because their continued proper functioning cannot be assured. The auditor must therefore increase the nature and extent of substantive testing under AU-C 330 to compensate for the inability to rely on automated controls. Choice A is incorrect because ineffective ITGCs do not automatically result in a disclaimer of opinion — the auditor adjusts the audit approach to obtain sufficient evidence through substantive procedures. Choice D is incorrect because simply accepting the client''s manual controls without evaluating their effectiveness is insufficient.'
WHERE id = 283;

-- ID 284: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A80, application controls are automated or manual controls that operate within specific applications to process transactions completely, accurately, and with proper authorization. An edit check that validates transaction amounts against predetermined authorization thresholds is an application control because it operates within the specific transaction processing application. Choice A is incorrect because password policies are access security controls classified as ITGCs under AU-C 315.A79. Choice C is incorrect because backup rotation schedules are computer operations controls, also classified as ITGCs rather than application controls.'
WHERE id = 284;

-- ID 285: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A84, the test data technique is a computer-assisted audit technique (CAAT) in which the auditor submits fictitious or controlled transactions through the client''s live or test system to evaluate whether programmed controls process the data correctly. This tests the effectiveness of application controls such as input edits, calculation routines, and error handling. Choice B is incorrect because parallel simulation involves the auditor reprocessing actual client data through independent software, which is a different CAAT. Choice C is incorrect because an integrated test facility embeds test transactions within live production processing rather than using a separate test run.'
WHERE id = 285;

-- ============================================================
-- MATERIALITY (1 question)
-- ============================================================

-- ID 5014: Materiality
UPDATE questions SET
  explanation = 'Under AU-C 320.04, the auditor determines materiality based on the needs and expectations of users of the financial statements. Publicly traded entities are often subject to lower materiality levels because they face heightened regulatory scrutiny, serve a broader group of users including public investors, and even small misstatements may have market impact. Choice B is incorrect because a large entity size alone does not require a lower materiality level — the auditor considers the users'' needs and the nature of the reporting entity. Choice C is incorrect because materiality is relative, not absolute, and must be evaluated in context under AU-C 320.'
WHERE id = 5014;

-- ============================================================
-- MISSTATEMENTS AND CONTROL DEFICIENCIES (1 question)
-- ============================================================

-- ID 5111: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 450.05, a projected misstatement is the auditor''s best estimate of the total misstatement in a population, calculated by extrapolating misstatements identified in a sample to the entire population. When the auditor tests 50 inventory items and finds pricing errors totaling $8,000, that amount is projected across the full inventory population to estimate total likely misstatement. This projected amount is then included in the aggregate of uncorrected misstatements evaluated under AU-C 450.11. Choice B is incorrect because the $8,000 found in the sample is not the projected misstatement itself — it must be extrapolated to the population to estimate total misstatement.'
WHERE id = 5111;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (1 question)
-- ============================================================

-- ID 4911: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 315.A128, the completeness assertion addresses whether all transactions and events that should have been recorded have in fact been included in the financial statements. It is concerned with potential understatement or omission of items. Choice B is incorrect because the existence assertion under AU-C 315.A128 addresses the opposite direction — whether recorded assets, liabilities, and equity interests actually exist at a given date. Choice C is incorrect because the valuation assertion concerns whether amounts are recorded at appropriate values, not whether all items have been captured.'
WHERE id = 4911;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 question)
-- ============================================================

-- ID 141: Professional Responsibilities
UPDATE questions SET
  explanation = 'Under AU-C 250.14, when an auditor discovers a material illegal act and management fails to take appropriate remedial action, the auditor should consider the effect on the financial statements and the audit report, which may require a qualified or adverse opinion under AU-C 705. The auditor should also consider communicating with those charged with governance under AU-C 250.15 and may need to withdraw from the engagement. Choice C is incorrect because the auditor does not generally have a duty to report directly to law enforcement — the obligation is to address the matter within the audit framework and the entity''s governance structure. Choice A is incorrect because ignoring the illegal act would violate AU-C 250.'
WHERE id = 141;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 question)
-- ============================================================

-- ID 4954: Professional Skepticism and Judgment
UPDATE questions SET
  explanation = 'Under AU-C 200.17, professional skepticism requires the auditor to maintain a questioning mind and critically assess audit evidence without being unduly influenced by preconceptions. Confirmation bias — the tendency to favor information that confirms pre-existing beliefs while dismissing contradictory evidence — most directly threatens this requirement because it causes the auditor to selectively weight evidence in management''s favor. Choice B is incorrect because anchoring bias involves over-reliance on an initial piece of information, which is a distinct cognitive limitation. Choice C is incorrect because availability bias relates to overweighting easily recalled events, not selectively seeking confirming data.'
WHERE id = 4954;

-- ============================================================
-- QUALITY MANAGEMENT (1 question)
-- ============================================================

-- ID 28: Quality Management
UPDATE questions SET
  explanation = 'Under PCAOB AS 1220.10, for audits of issuers the engagement quality review must be completed before the auditor''s report is released. The reviewer evaluates significant judgments made by the engagement team and the conclusions reached in forming the overall opinion, providing an objective safeguard for audit quality. Choice A is incorrect because completing the review only at the planning stage would miss the evaluation of critical judgments made during fieldwork and reporting. Choice C is incorrect because performing the review after the report is issued would defeat its purpose as a pre-issuance quality safeguard.'
WHERE id = 28;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (1 question)
-- ============================================================

-- ID 5037: Responding to Assessed Risks
UPDATE questions SET
  explanation = 'Under AU-C 330.07, when the assessed risk of material misstatement is high for a particular assertion, the auditor must design further audit procedures that are responsive to that elevated risk. For high inventory valuation risk, appropriate responses include engaging valuation specialists, increasing sample sizes for price testing, evaluating net realizable value, and performing procedures closer to the balance sheet date. Choice B is incorrect because relying primarily on management representations would not constitute a sufficient response to a high assessed risk under AU-C 330. Choice C is incorrect because reducing the extent of testing when risk is high would increase detection risk beyond acceptable levels.'
WHERE id = 5037;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 341: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.36, if the accountant becomes aware of information during a review engagement that may indicate a material misstatement in the financial statements, the accountant must perform additional inquiry or other procedures to address the matter. This does not convert the review into an audit — the additional procedures remain within the scope of limited assurance under AR-C 90. Choice A is incorrect because immediately withdrawing without performing further inquiry is premature under AR-C 90. Choice D is incorrect because ignoring the information would fail to meet the accountant''s professional responsibilities in a review engagement.'
WHERE id = 341;

-- ID 344: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.A8, when a client requests a downgrade from an audit to a review, the accountant must evaluate the reason for the change before agreeing. Legitimate reasons include a change in the requirements of the financial statement users or a misunderstanding of the scope of the original engagement. Unacceptable reasons include an attempt to limit the scope of the engagement to avoid detection of misstatements. Choice C is incorrect because the accountant should not automatically agree to the downgrade without first evaluating the rationale. Choice A is incorrect because refusing all downgrade requests regardless of circumstances is unnecessarily restrictive under AR-C 90.'
WHERE id = 344;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 23: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 80.24, if management declines to revise a known material GAAP departure in a compilation engagement, the accountant should disclose the departure in a separate paragraph of the compilation report, including the effects if they are known. Withdrawal is not required unless the accountant believes the departure is intended to mislead users. Choice A is incorrect because compilation engagements under AR-C 80 do not result in audit opinions, so an adverse opinion is not applicable. Choice D is incorrect because the accountant cannot simply omit the departure from the report when it is known to be material.'
WHERE id = 23;

-- ID 130: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.24, a review engagement relies on inquiry and analytical procedures to obtain limited assurance. Under AR-C 90.30, when analytical procedures reveal unusual items — such as depreciation expense that appears unusually low compared to prior periods or asset levels — the accountant should make additional inquiries of management to understand and resolve the matter. Choice B is incorrect because converting the engagement to an audit is not required — the accountant first performs additional inquiry within the review''s scope under AR-C 90. Choice C is incorrect because ignoring the anomaly would fail to satisfy the accountant''s responsibilities for analytical procedures in a review.'
WHERE id = 130;

-- ============================================================
-- RISK ASSESSMENT (3 questions)
-- ============================================================

-- ID 9: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.26, simultaneous changes to a revenue recognition policy and implementation of a new ERP system create elevated inherent risk because new accounting processes may contain errors, staff may lack adequate training on the new system, and data migration introduces the possibility of misstatement. These compound changes affect both inherent risk (new policy application) and control risk (untested system controls), requiring enhanced audit procedures under AU-C 330. Choice B is incorrect because the concern is not limited to control risk alone — the combination of a new accounting policy and new system creates inherent risk from multiple sources simultaneously.'
WHERE id = 9;

-- ID 101: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 200.A42, the audit risk model (AR = RMM x DR) establishes an inverse relationship between detection risk and the risk of material misstatement. When the assessed risk of material misstatement increases, the auditor must decrease the acceptable level of detection risk by performing more effective or extensive audit procedures to hold audit risk at an acceptably low level. Choice B is incorrect because a direct (positive) relationship would mean both risks increase together, contradicting the fundamental audit risk model. Choice C is incorrect because the two risks are not independent of each other — they are mathematically linked through the audit risk formula.'
WHERE id = 101;

-- ID 104: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.06, risk assessment procedures include inquiry of management and others within the entity, analytical procedures, and observation and inspection. These procedures are performed to obtain an understanding of the entity and its environment, including internal control, in order to identify and assess the risks of material misstatement at the financial statement and assertion levels. Choice B is incorrect because external confirmations under AU-C 505 are substantive procedures performed in response to assessed risks, not risk assessment procedures. Choice C is incorrect because recalculation is a substantive test of details, not a risk assessment procedure.'
WHERE id = 104;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (1 question)
-- ============================================================

-- ID 5150: Specific Areas and Transactions
UPDATE questions SET
  explanation = 'Under AU-C 570.A3, indicators that an entity may have going concern issues include recurring operating losses, negative working capital, default on loan agreements, denial of trade credit by suppliers, inability to obtain financing, and loss of a major customer or key management personnel. When such conditions are identified, the auditor must evaluate management''s plans to mitigate them under AU-C 570.13. Choice B is incorrect because a single profitable quarter does not negate multiple adverse indicators when evaluating going concern. Choice C is incorrect because a strong prior-year performance does not resolve current-period conditions and events raising substantial doubt.'
WHERE id = 5150;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (3 questions)
-- ============================================================

-- ID 18: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 500, examining cash disbursements after the balance sheet date is the most effective substantive procedure for detecting unrecorded liabilities because payments made after year-end may relate to obligations that existed at the reporting date but were not recorded as payables. This procedure directly tests the completeness assertion for accounts payable. Choice B is incorrect because confirming existing recorded payable balances tests existence and accuracy, not completeness — it only verifies amounts already in the financial statements. Choice C is incorrect because reviewing the aged payables listing tests only recorded balances and would not reveal omitted liabilities.'
WHERE id = 18;

-- ID 122: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.07, when substantive analytical procedures reveal a difference that exceeds the auditor''s established threshold, the auditor must investigate by inquiring of management, corroborating management''s explanations with additional evidence, and performing further procedures as necessary to determine whether the difference represents a misstatement. The unexplained difference may have a plausible explanation or may indicate a misstatement requiring evaluation under AU-C 450. Choice A is incorrect because automatically proposing an adjustment without first investigating the cause of the difference is premature under AU-C 520. Choice D is incorrect because ignoring the difference would violate the auditor''s obligation to follow up on unexpected analytical results.'
WHERE id = 122;

-- ID 123: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 500, testing the completeness of accounts payable requires procedures that search for unrecorded items — obligations that existed at the balance sheet date but were not captured in the accounting records. Examining cash disbursements after year-end identifies payments for goods or services received before year-end that may not have been recorded as payables. Choice A is incorrect because confirming existing recorded payable balances tests the existence and accuracy assertions, not completeness — it verifies what is already recorded rather than searching for omissions. Choice D is incorrect because reviewing the general ledger for payables would only identify amounts already posted.'
WHERE id = 123;

-- ============================================================
-- TERMS OF ENGAGEMENT (1 question)
-- ============================================================

-- ID 4972: Terms of Engagement
UPDATE questions SET
  explanation = 'Under AU-C 210.13, for recurring audits the auditor should assess whether circumstances require the engagement terms to be revised and whether there is a need to remind the entity of the existing terms in writing. While a new engagement letter is not mandatory every year, AU-C 210.14 specifies that the auditor should update the letter when there are changes in scope, senior management, ownership, legal requirements, or other significant factors affecting the engagement. Choice A is incorrect because entirely ignoring the engagement letter in recurring years fails to meet AU-C 210''s requirement to reassess terms. Choice D is incorrect because the engagement letter must be established before commencing fieldwork, not after.'
WHERE id = 4972;

-- ============================================================
-- TESTS OF CONTROLS (1 question)
-- ============================================================

-- ID 5073: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A19, a dual-purpose test is a single audit procedure that simultaneously serves as both a test of controls and a substantive test of details. For example, examining a purchase transaction for proper authorization (test of control) and for the correct recorded dollar amount (substantive test) in one procedure. This approach improves audit efficiency by addressing both control effectiveness and account balance accuracy. Choice B is incorrect because testing a control at two different points in time is reperformance for interim testing purposes, not a dual-purpose test. Choice C is incorrect because performing the same test on two different accounts is simply extending coverage, not combining control and substantive objectives.'
WHERE id = 5073;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 question)
-- ============================================================

-- ID 4993: Understanding the Entity and Environment
UPDATE questions SET
  explanation = 'Under AU-C 315.12, the auditor should obtain an understanding of the entity''s accounting policies and assess whether they are appropriate for the entity''s business and consistent with the applicable financial reporting framework and industry practices. The auditor should also evaluate under AU-C 315.A45 whether any changes in accounting policies are justified by changes in circumstances and whether they have been properly disclosed. Choice B is incorrect because simplicity of application is not the primary criterion — accounting policies must accurately reflect economic substance and comply with the reporting framework regardless of their complexity. Choice C is incorrect because consistency with competitors'' policies alone is insufficient if the policies do not conform to the applicable framework.'
WHERE id = 4993;

-- ============================================================
-- USING THE WORK OF OTHERS (1 question)
-- ============================================================

-- ID 5054: Using the Work of Others
UPDATE questions SET
  explanation = 'Under AU-C 402.09, when a client uses a service organization to process significant transactions, the auditor must obtain an understanding of the nature and significance of those services and their effect on the client''s internal control relevant to the audit. The auditor assesses the risks of material misstatement and determines whether sufficient appropriate evidence can be obtained, potentially through reviewing a SOC 1 report under SSAE 18 or performing direct testing at the service organization. Choice A is incorrect because the auditor cannot disregard the service organization''s role in the client''s internal controls. Choice D is incorrect because shifting full responsibility for the service organization''s controls to the client does not relieve the auditor of the obligation to understand their effect under AU-C 402.'
WHERE id = 5054;

-- ============================================================
-- WRITTEN REPRESENTATIONS (1 question)
-- ============================================================

-- ID 5132: Written Representations
UPDATE questions SET
  explanation = 'Under AU-C 580.09, the management representation letter should be signed by members of management with appropriate responsibilities for the financial statements and knowledge of the matters covered — typically the chief executive officer (CEO) and the chief financial officer (CFO). These individuals have primary responsibility for the preparation and fair presentation of the financial statements. Choice A is incorrect because the board of directors as a whole does not sign the management representation letter — it is signed by specific members of management. Choice C is incorrect because general counsel may lack direct responsibility for financial statement preparation and presentation, though they may address legal-specific representations.'
WHERE id = 5132;

COMMIT;
