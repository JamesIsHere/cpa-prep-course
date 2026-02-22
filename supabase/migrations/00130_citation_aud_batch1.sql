-- Migration: Citation backfill — AUD batch 1 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Misstatements and Control Deficiencies, Nature and Scope of Engagements, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others, Written Representations

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (1 question)
-- ============================================================

-- ID 5092: Analytical Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.05, when performing substantive analytical procedures the auditor must develop an expectation using data from a source that is sufficiently reliable and independent of the amount being tested. Reliability is the most important characteristic because using data prepared or controlled by those responsible for the recorded amount reduces the procedure''s effectiveness. Choice B is incorrect because timeliness, while relevant, is secondary — even current data from an unreliable source undermines the expectation.'
WHERE id = 5092;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 26: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 215, an agreed-upon procedures engagement requires the practitioner to report factual findings from performing specific procedures agreed upon by the specified parties. The report is restricted to those parties because only they understand the context and sufficiency of the procedures. Choice A is incorrect because the practitioner does not express an opinion or provide assurance in an agreed-upon procedures engagement — only factual findings are reported.'
WHERE id = 26;

-- ID 135: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 305, a review-level attestation on prospective financial statements requires the practitioner''s report to include both negative assurance (nothing came to the practitioner''s attention indicating the assumptions are not reasonable) and a required caveat that prospective results may not be achieved. This dual element is unique to prospective financial statement engagements because of the inherent uncertainty of forward-looking information. Choice A is incorrect because positive assurance applies to examination-level engagements, not reviews.'
WHERE id = 135;

-- ============================================================
-- AUDIT EVIDENCE (4 questions)
-- ============================================================

-- ID 115: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 500.A26, recalculation involves the auditor independently verifying mathematical accuracy by reperforming calculations, such as checking depreciation computations or footing a trial balance. This procedure directly tests the accuracy of numerical data in the financial statements. Choice A is incorrect because inspection involves examining records or documents rather than verifying mathematical computations. Choice B is incorrect because observation involves watching a process performed by others.'
WHERE id = 115;

-- ID 296: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 240.32, the auditor should design procedures to test the appropriateness of journal entries, including identifying entries with fraud risk characteristics. Large round-dollar amounts, entries posted near period-end, entries by unusual users such as senior management who do not typically post entries, and entries without adequate descriptions are common red flags. Choice B is incorrect because normal, routine entries with standard descriptions and appropriate authorization are less likely to indicate fraud risk.'
WHERE id = 296;

-- ID 299: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 501.03, the auditor is required to attend physical inventory counting when inventory is material to the financial statements. Physical observation provides the most persuasive evidence for the existence assertion because the auditor directly verifies the presence of assets. Choice B is incorrect because perpetual records are internal evidence that requires corroboration, and Choice D is incorrect because management representations under AU-C 580 are the weakest form of audit evidence.'
WHERE id = 299;

-- ID 300: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 500, three-way matching is a data analytics technique that compares purchase orders (authorization to buy), receiving reports (confirmation that goods were received), and vendor invoices (billing for the goods). This automated comparison identifies discrepancies such as duplicate payments, unauthorized purchases, and quantity or price differences. Choice B is incorrect because comparing bank statements, cash receipts, and the general ledger describes a bank reconciliation procedure, not three-way matching.'
WHERE id = 300;

-- ============================================================
-- AUDIT PLANNING (3 questions)
-- ============================================================

-- ID 99: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 620.08, when using the work of an auditor''s specialist, the auditor must evaluate whether the specialist''s findings are adequate for audit purposes. This includes assessing the specialist''s competence, capabilities, and objectivity. The auditor need not possess the same expertise but must understand the work sufficiently to evaluate its appropriateness. Choice C is incorrect because AU-C 620.14 states the specialist is not referenced in the auditor''s report unless it affects a modified opinion.'
WHERE id = 99;

-- ID 269: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 402.09, when a client uses a service organization, the auditor must obtain an understanding of the nature and significance of the services provided and their effect on the client''s internal controls relevant to the audit. This understanding informs the auditor''s risk assessment and determines whether additional evidence — such as a SOC 1 report or direct testing — is needed. Choice B is incorrect because the auditor does not automatically require a SOC report for every service organization relationship.'
WHERE id = 269;

-- ID 270: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 620.09, the auditor evaluates a specialist''s competence by considering professional certifications, relevant experience, reputation in the field, and adherence to professional or ethical standards. These factors indicate whether the specialist''s work will be reliable as audit evidence. Choice C is incorrect because the specialist''s billing rate has no bearing on competence, and Choice D is incorrect because office location is irrelevant to the specialist''s professional qualifications.'
WHERE id = 270;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 20: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 705.08, when a material misstatement is not pervasive to the financial statements, the auditor should issue a qualified opinion. Misclassification of long-term debt as a current liability is material but typically does not pervade the entire financial statements. Choice A is incorrect because an adverse opinion under AU-C 705.09 is appropriate only when the misstatement is both material and pervasive. Choice C is incorrect because a disclaimer under AU-C 705.10 applies to scope limitations, not known misstatements.'
WHERE id = 20;

-- ID 21: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 800.14, when reporting on financial statements prepared in accordance with a special purpose framework (such as cash basis), the auditor must include an emphasis-of-matter paragraph that describes the applicable framework and refers to the note disclosing that basis. The auditor can still issue an unmodified opinion because the statements are evaluated against the special purpose framework, not GAAP. Choice B is incorrect because an adverse opinion is not required merely because the statements differ from GAAP.'
WHERE id = 21;

-- ============================================================
-- AUDIT SAMPLING (3 questions)
-- ============================================================

-- ID 116: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.05, the primary difference between statistical and nonstatistical sampling is that statistical sampling uses mathematical probability theory to determine sample sizes and evaluate results, requiring random selection of items. Nonstatistical sampling relies on auditor judgment for both sample size and evaluation. AU-C 530 recognizes that both methods, when properly applied, can provide sufficient appropriate audit evidence. Choice C is incorrect because neither method is inherently superior to the other.'
WHERE id = 116;

-- ID 118: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A13, systematic selection can produce a biased sample if the population has a pattern that coincides with the sampling interval. For example, if every 10th invoice is a month-end adjusting entry and the sampling interval is 10, the sample would consistently include or exclude these entries, misrepresenting the population. Choice A is incorrect because a large population size does not by itself make systematic selection unreliable — the concern is cyclical patterns, not volume.'
WHERE id = 118;

-- ID 119: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.14, when projected misstatement exceeds tolerable misstatement, the auditor cannot conclude that the account balance is free of material misstatement. The auditor should consider expanding the sample, performing additional procedures, or requesting management to investigate and adjust the balance. Choice D is incorrect because the decision on the audit opinion comes later, after evaluating all accumulated evidence under AU-C 450 — a single sampling result does not automatically determine the opinion.'
WHERE id = 119;

-- ============================================================
-- ETHICS AND INDEPENDENCE (3 questions)
-- ============================================================

-- ID 2: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.295, making management decisions on behalf of a client is a management participation threat that impairs independence because the auditor assumes a role belonging to management. The auditor must not act as a member of client management or exercise decision-making authority for them. Choice B is incorrect because tax advisory services are generally permissible under ET 1.295 when appropriate safeguards are in place and management makes the ultimate decisions.'
WHERE id = 2;

-- ID 93: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.210 (Conceptual Framework), the CPA must first identify and evaluate the significance of the threat to independence. If the threat is not at an acceptable level, the CPA must determine whether safeguards can reduce it sufficiently. Choice A is incorrect because immediate resignation may be premature — the conceptual framework requires a systematic evaluation of the threat before taking action, not an automatic withdrawal from the engagement.'
WHERE id = 93;

-- ID 94: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.210, an intimidation threat exists when the auditor may be deterred from acting objectively due to actual or perceived pressure from the client. A threat to replace the auditor over an unfavorable opinion is a classic intimidation threat. Choice B is incorrect because revenue concentration from a single client creates a self-interest threat, not an intimidation threat. Choice C is incorrect because long tenure creates a familiarity threat.'
WHERE id = 94;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (2 questions)
-- ============================================================

-- ID 1128: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under Government Auditing Standards (GAGAS) Chapter 1, performance audits evaluate government programs and activities for effectiveness (achieving intended results), economy (minimizing costs), and efficiency (maximizing output from resources). This engagement type is unique to GAGAS and has no equivalent under AICPA standards. Choice A is incorrect because financial statement audits exist under both GAGAS and AICPA GAAS. Choice B is incorrect because agreed-upon procedures engagements exist under both AT-C 215 and GAGAS.'
WHERE id = 1128;

-- ID 1129: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS Chapter 4, auditors must complete 80 hours of continuing professional education (CPE) every two years, with at least 24 hours directly related to the government environment or government auditing and at least 20 hours completed in each year of the two-year period. Choice A is incorrect because 40 hours is the annual requirement under many state boards, not the GAGAS two-year requirement. Choice C is incorrect because 120 hours exceeds the GAGAS standard.'
WHERE id = 1129;

-- ============================================================
-- INDEPENDENCE (1 question)
-- ============================================================

-- ID 4932: Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.270, a close family relationship between a covered member and a key member of client management creates a familiarity threat. The concern is that the auditor may become too sympathetic to the client''s interests or too trusting of representations due to the personal relationship. Choice A is incorrect because a self-review threat arises under ET 1.295 when the auditor reviews their own work, not from family relationships. Choice B is incorrect because an advocacy threat arises when promoting the client''s position.'
WHERE id = 4932;

-- ============================================================
-- INTERNAL CONTROLS (5 questions)
-- ============================================================

-- ID 107: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.14, the control environment reflects management''s commitment to integrity and ethical values. Management override of controls is one of the strongest indicators of a weak control environment because it signals a tone at the top that does not prioritize internal control effectiveness. Choice B is incorrect because outdated software represents an IT risk but does not inherently indicate a weak control environment. Choice C is incorrect because a small accounting staff creates a segregation-of-duties risk, not necessarily a control environment weakness.'
WHERE id = 107;

-- ID 110: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A79, IT general controls (ITGCs) are policies and procedures that relate to many applications and support the effective functioning of application controls. Password requirements and user access management are ITGCs because they control who can access and modify data across all systems. Choice B is incorrect because input validation edits within a specific transaction process are application controls, not ITGCs. Application controls operate within specific processes, while ITGCs operate across the IT environment.'
WHERE id = 110;

-- ID 282: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A79, the four primary categories of IT general controls are: (1) access security — restricting access to programs and data, (2) program change management — ensuring changes are authorized and tested, (3) computer operations — ensuring reliable system processing, and (4) program development — ensuring new systems are properly designed and tested. These ITGCs support the effective functioning of application controls. Choice B is incorrect because it lists application control categories rather than ITGC categories.'
WHERE id = 282;

-- ID 283: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A82, weak ITGCs undermine the reliability of application controls that depend on those systems. When ITGCs are ineffective, the auditor cannot rely on automated application controls and must increase the nature and extent of substantive testing under AU-C 330. Choice A is incorrect because ineffective ITGCs do not automatically result in a disclaimer of opinion — the auditor adjusts the audit approach by shifting from control reliance to substantive testing to obtain sufficient appropriate evidence.'
WHERE id = 283;

-- ID 284: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A80, application controls operate within specific applications to ensure transactions are properly authorized, complete, and accurate. An edit check that validates transaction amounts against authorization thresholds is an application control because it operates within a specific transaction process. Choice A is incorrect because password requirements are access security controls classified as ITGCs under AU-C 315.A79. Choice C is incorrect because backup rotation is a computer operations control, also an ITGC.'
WHERE id = 284;

-- ============================================================
-- MATERIALITY (1 question)
-- ============================================================

-- ID 5014: Materiality
UPDATE questions SET
  explanation = 'Under AU-C 320.04, the auditor must consider the needs of users when determining materiality. Publicly traded entities are often subject to lower materiality levels because of heightened regulatory scrutiny, the broader group of financial statement users, and the potential market impact of misstatements. Choice B is incorrect because a large entity size alone does not require lower materiality — the auditor considers user needs, not just entity size. Materiality is relative to the financial statements and their users.'
WHERE id = 5014;

-- ============================================================
-- MISSTATEMENTS AND CONTROL DEFICIENCIES (1 question)
-- ============================================================

-- ID 5111: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 450.05, a projected misstatement is the auditor''s best estimate of the total misstatement in a population, based on misstatements identified in a sample. When the auditor tests a sample and finds errors, those errors are projected (extrapolated) to estimate the likely misstatement in the entire population. This projected amount is included in the aggregate of uncorrected misstatements evaluated under AU-C 450.11. Choice B is incorrect because projected misstatements arise from sampling, not from known individual errors.'
WHERE id = 5111;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (1 question)
-- ============================================================

-- ID 4911: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 315.A128, the completeness assertion addresses whether all transactions, events, and account balances that should have been recorded have in fact been included in the financial statements. It is concerned with potential understatement or omission. Choice B is incorrect because the existence assertion under AU-C 315.A128 addresses the opposite direction — whether recorded items actually exist rather than whether all items are recorded. Choice C is incorrect because valuation addresses whether amounts are recorded at appropriate values.'
WHERE id = 4911;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 141: Professional Responsibilities
UPDATE questions SET
  explanation = 'Under AU-C 250.14, when an auditor discovers a material illegal act and management fails to take appropriate remedial action, the auditor should consider the effect on the financial statements and the audit report. This may lead to a modified opinion under AU-C 705 or withdrawal from the engagement. Choice C is incorrect because the auditor generally does not have a duty to report directly to law enforcement, except under certain statutes such as the Securities Exchange Act for public companies.'
WHERE id = 141;

-- ID 1351: Professional Responsibilities
UPDATE questions SET
  explanation = 'Under AU-C 210.13, when the client authorizes communication, the predecessor auditor should respond promptly and fully to reasonable inquiries from the successor auditor. This includes sharing information about management integrity, disagreements about accounting matters, fraud, and reasons for the change in auditors. Choice A is incorrect because AU-C 210 does not require the predecessor to provide complete workpaper access — only relevant information responsive to specific inquiries. Choice C is incorrect because the predecessor must respond when properly authorized.'
WHERE id = 1351;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 question)
-- ============================================================

-- ID 4954: Professional Skepticism and Judgment
UPDATE questions SET
  explanation = 'Under AU-C 200.17, professional skepticism requires the auditor to maintain a questioning mind and critically assess audit evidence. Confirmation bias — the tendency to favor information that confirms pre-existing beliefs — most directly threatens this requirement because it causes auditors to give more weight to evidence supporting management''s assertions while dismissing contradictory evidence. Choice B is incorrect because anchoring bias relates to over-reliance on initial information, which is a distinct cognitive bias from selectively seeking confirming evidence.'
WHERE id = 4954;

-- ============================================================
-- QUALITY MANAGEMENT (1 question)
-- ============================================================

-- ID 28: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS No. 2 (Engagement Quality Reviews), the engagement quality review must be completed before the auditor''s report is released. The reviewer evaluates significant judgments and conclusions to provide an additional safeguard for audit quality. Releasing the report before the review is complete would undermine the entire purpose of this quality control mechanism. Choice A is incorrect because completing the review only at the planning stage would miss the evaluation of significant judgments made during fieldwork and reporting.'
WHERE id = 28;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (1 question)
-- ============================================================

-- ID 5037: Responding to Assessed Risks
UPDATE questions SET
  explanation = 'Under AU-C 330.07, when the risk of material misstatement is assessed as high, the auditor must design and perform further audit procedures whose nature, timing, and extent are responsive to that assessment. For high inventory valuation risk, this includes engaging valuation specialists, testing larger samples, performing additional price testing, and evaluating net realizable value. Choice B is incorrect because simply relying on management representations does not constitute a sufficient response to a high assessed risk under AU-C 330.'
WHERE id = 5037;

-- ============================================================
-- REVIEW AND COMPILATION (3 questions)
-- ============================================================

-- ID 338: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 70.05, a preparation engagement does not result in a report — instead, each page of the financial statements must include a legend stating "No assurance is provided on these financial statements." A compilation under AR-C 80.20, by contrast, requires a written compilation report. Choice A is incorrect because neither a preparation nor a compilation engagement requires independence, though AR-C 80.24 requires disclosure of a lack of independence in a compilation report.'
WHERE id = 338;

-- ID 341: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.36, if the accountant becomes aware of information that may indicate a material misstatement during a review engagement, additional inquiry or other procedures are required to resolve the matter. This does not convert the review into an audit — the accountant performs limited additional procedures within the scope of AR-C 90 to determine whether modification of the financial statements or the review report is needed. Choice A is incorrect because withdrawing immediately without further inquiry is premature.'
WHERE id = 341;

-- ID 344: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.A8, when a client requests a downgrade from an audit to a review, the accountant must evaluate the reason for the change. Legitimate reasons include a change in third-party requirements or a misunderstanding of the engagement scope. Unacceptable reasons include attempting to prevent discovery of misstatements or restrict access to information. Choice C is incorrect because the accountant should not automatically accept the downgrade without evaluating management''s rationale and considering whether the change is appropriate.'
WHERE id = 344;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 23: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 80.24, if management declines to correct a known GAAP departure in a compilation engagement, the accountant should disclose the departure in a separate paragraph of the compilation report. Withdrawal is not required unless the departure is designed to mislead users. Choice A is incorrect because compilations under AR-C 80 do not result in audit opinions, so an adverse opinion is not applicable. Choice D is incorrect because the accountant cannot simply ignore a known material departure.'
WHERE id = 23;

-- ID 130: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.24, a review engagement relies on inquiry and analytical procedures to obtain limited assurance. When analytical procedures reveal unusual items such as unexpectedly low depreciation expense, the accountant should inquire of management to understand the reason and determine whether the matter has been properly accounted for under AR-C 90.30. Choice B is incorrect because converting the engagement to an audit is not required — the accountant performs additional inquiry within the review''s scope first.'
WHERE id = 130;

-- ============================================================
-- RISK ASSESSMENT (3 questions)
-- ============================================================

-- ID 9: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.26, simultaneous changes in accounting policy and information systems create elevated risk because new processes may contain errors, staff may not be fully trained, and data migration introduces the possibility of misstatement. These compound changes affect both inherent risk (new policy application) and control risk (untested system controls), requiring the auditor to design enhanced audit procedures under AU-C 330. Choice B is incorrect because these changes do not merely affect control risk alone — they create both inherent and control risk concerns.'
WHERE id = 9;

-- ID 101: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 200.A42, the audit risk model (AR = RMM × DR) establishes an inverse relationship between detection risk and the risk of material misstatement. When the assessed risk of material misstatement increases, the auditor must decrease acceptable detection risk by performing more effective or extensive audit procedures to maintain audit risk at an acceptably low level. Choice B is incorrect because a direct relationship would mean both risks move in the same direction, which contradicts the audit risk model.'
WHERE id = 101;

-- ID 104: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.06, risk assessment procedures include inquiry of management and others, analytical procedures, and observation and inspection. These procedures help the auditor understand the entity, its environment, and internal controls to identify risks of material misstatement at the financial statement and assertion levels. Choice B is incorrect because confirmations are substantive procedures performed under AU-C 505 in response to assessed risks, not risk assessment procedures themselves.'
WHERE id = 104;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (3 questions)
-- ============================================================

-- ID 18: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 500, examining cash disbursements after the balance sheet date is the most effective procedure for detecting unrecorded liabilities because payments made after year-end may relate to obligations that existed at the reporting date but were not recorded. This procedure tests the completeness assertion for accounts payable. Choice B is incorrect because confirming existing recorded balances only verifies amounts already in the financial statements and does not search for omissions.'
WHERE id = 18;

-- ID 122: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.07, when substantive analytical procedures reveal a difference exceeding the auditor''s threshold, the auditor must investigate by inquiring of management, corroborating responses, and performing additional procedures as necessary. The difference may have a plausible explanation or may indicate a misstatement requiring further evaluation under AU-C 450. Choice A is incorrect because the auditor should not automatically adjust the account without first investigating the cause and obtaining corroborating evidence.'
WHERE id = 122;

-- ID 123: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 500, completeness testing searches for transactions or balances that should have been recorded but were not. Examining cash disbursements after year-end identifies payments for obligations that existed at the balance sheet date but may not have been recorded as payables. Choice A is incorrect because confirming existing recorded balances tests the existence and accuracy assertions, not completeness — it only verifies what is already in the financial statements rather than searching for omissions.'
WHERE id = 123;

-- ============================================================
-- TERMS OF ENGAGEMENT (1 question)
-- ============================================================

-- ID 4972: Terms of Engagement
UPDATE questions SET
  explanation = 'Under AU-C 210.13, for recurring audits the auditor should assess whether circumstances require the terms of the engagement to be revised and whether there is a need to remind the entity of the existing terms. While a new engagement letter is not always required each year, AU-C 210.14 specifies the auditor should update it when there are changes in engagement scope, management, legal requirements, or other significant factors. Choice A is incorrect because completely ignoring the engagement letter in recurring years violates AU-C 210.'
WHERE id = 4972;

-- ============================================================
-- TESTS OF CONTROLS (1 question)
-- ============================================================

-- ID 5073: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A19, a dual-purpose test simultaneously serves as both a test of controls and a substantive test of details. For example, examining a purchase transaction for proper authorization (test of control) and correct dollar amount (substantive test) in a single procedure. This approach is efficient because it addresses both control effectiveness and account balance accuracy. Choice B is incorrect because testing a control at two points in time is reperformance at different dates, not a dual-purpose test.'
WHERE id = 5073;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 question)
-- ============================================================

-- ID 4993: Understanding the Entity and Environment
UPDATE questions SET
  explanation = 'Under AU-C 315.12, the auditor should assess whether the entity''s accounting policies are appropriate for its business and consistent with the applicable financial reporting framework and industry practices. The auditor should also evaluate whether changes in accounting policies are justified and properly disclosed under AU-C 315.A45. Choice B is incorrect because simplicity of application is not the primary criterion — policies must reflect economic substance and comply with the applicable framework regardless of complexity.'
WHERE id = 4993;

-- ============================================================
-- USING THE WORK OF OTHERS (1 question)
-- ============================================================

-- ID 5054: Using the Work of Others
UPDATE questions SET
  explanation = 'Under AU-C 402.09, when a client uses a service organization to process significant transactions, the auditor must understand the nature and significance of the services and their effect on the client''s internal control relevant to the audit. The auditor should assess risks of material misstatement and determine whether sufficient evidence can be obtained, potentially through a SOC 1 report under SSAE 18 or direct testing. Choice A is incorrect because the auditor cannot simply ignore the service organization''s impact on internal controls.'
WHERE id = 5054;

-- ============================================================
-- WRITTEN REPRESENTATIONS (1 question)
-- ============================================================

-- ID 5132: Written Representations
UPDATE questions SET
  explanation = 'Under AU-C 580.09, the management representation letter should be signed by members of management with appropriate responsibilities for the financial statements and knowledge of the matters covered. This typically includes the chief executive officer (CEO) and the chief financial officer (CFO), as they have primary responsibility for the preparation and fair presentation of the financial statements. Choice A is incorrect because general counsel may lack direct responsibility for financial statement preparation, though they may sign for legal-related representations.'
WHERE id = 5132;

COMMIT;
