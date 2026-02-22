-- Migration: Citation backfill — AUD batch 9 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Misstatements and Control Deficiencies, Nature and Scope of Engagements, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others, Written Representations

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (1 question)
-- ============================================================

-- ID 5099: Analytical Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.05, the threshold for acceptable difference (precision) in a substantive analytical procedure is based on the auditor''s assessment of materiality and the desired level of assurance from the procedure. AU-C 520.A12 explains that a more precise expectation (narrower threshold) provides greater assurance. The threshold should be set so that any difference exceeding it warrants investigation as a potential misstatement. Choice A is incorrect because basing the threshold solely on prior-year fluctuations ignores the current-year materiality considerations. Choice C is incorrect because an arbitrary percentage without reference to materiality does not meet the standard''s requirements.'
WHERE id = 5099;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1824: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 215.22, in an agreed-upon procedures (AUP) engagement the practitioner performs only those specific procedures agreed upon by the engaging party and specified parties, and reports the findings without providing any form of assurance. AT-C 215.34 specifies that users draw their own conclusions from the factual findings. Choice A is incorrect because an AUP engagement does not result in an opinion — that is characteristic of an examination engagement under AT-C 205. Choice B is incorrect because negative assurance (limited assurance) is provided in a review engagement under AT-C 210, not an AUP engagement.'
WHERE id = 1824;

-- ID 1828: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 305.07, financial forecasts are appropriate for general use because they present the entity''s expected financial results based on the responsible party''s assumptions about conditions it expects to exist. AT-C 305.08 distinguishes financial projections, which include hypothetical assumptions (''what if'' scenarios), and restricts them to limited use — only parties who can discuss the assumptions directly with the responsible party. Choice A is incorrect because projections with hypothetical assumptions are restricted to limited distribution. Choice C is incorrect because pro forma financial information is a different type of presentation, not a prospective statement.'
WHERE id = 1828;

-- ============================================================
-- AUDIT EVIDENCE (4 questions)
-- ============================================================

-- ID 1601: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 560.12, dual dating is used when a material subsequent event is discovered after the original date of the auditor''s report but before the report is issued. The auditor dates the report with the original date except for the note describing the subsequent event, which receives the later date (e.g., "February 15, 20X7, except for Note X, as to which the date is March 5, 20X7"). AU-C 560.A16 explains this limits the auditor''s responsibility for events between the two dates to only the specific disclosed event. Choice A is incorrect because extending the report date to the later date would expand the auditor''s responsibility for all subsequent events through that date. Choice C is incorrect because issuing a completely new report is not required when only one specific subsequent event is being addressed.'
WHERE id = 1601;

-- ID 1602: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 540.13 (SAS No. 143), the auditor evaluates whether management''s assumptions are reasonable individually and taken together, consistent with the entity''s business plans, market conditions, and other relevant factors. AU-C 540.A65 notes that the auditor should consider whether the assumptions are internally consistent and supported by available evidence. Choice A is incorrect because the assumptions do not need to match the auditor''s independent point estimate exactly — a range of reasonable outcomes may exist. Choice C is incorrect because while industry data provides context, management''s assumptions need not mirror industry benchmarks precisely if they reflect entity-specific circumstances.'
WHERE id = 1602;

-- ID 1603: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 620.05, when the auditor lacks the specialized expertise needed to evaluate a complex fair value estimate, engaging an auditor''s specialist (such as a valuation expert) is appropriate. AU-C 620.12 requires the auditor to evaluate the specialist''s competence, capabilities, and objectivity. Importantly, AU-C 620.03 states that the auditor retains sole responsibility for the audit opinion — using a specialist does not reduce that responsibility. Choice A is incorrect because avoiding the area entirely would constitute a scope limitation. Choice B is incorrect because the auditor need not develop the expertise personally when a qualified specialist is available.'
WHERE id = 1603;

-- ID 1604: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 540.18, if the auditor develops a range that does not include management''s point estimate, the difference between management''s estimate and the nearest end of the auditor''s range constitutes a misstatement. AU-C 540.19 requires the auditor to request that management revise the estimate. If management refuses and the misstatement is material, the auditor considers the effect on the audit opinion under AU-C 705. Choice A is incorrect because accepting management''s estimate when it falls outside the auditor''s reasonable range would be inappropriate. Choice C is incorrect because simply disclosing the disagreement in the report without addressing the underlying misstatement is insufficient.'
WHERE id = 1604;

-- ============================================================
-- AUDIT PLANNING (3 questions)
-- ============================================================

-- ID 1455: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 300.07, when developing the overall audit strategy the auditor considers the characteristics of the engagement, including the entity''s organizational structure and geographic locations. AU-C 600.11 specifically addresses group audits where the entity has operations in multiple locations, requiring the group engagement partner to evaluate the need for component auditors, set component materiality under AU-C 600.21, and determine the type of work to be performed at each location. Choice A is incorrect because ignoring foreign operations would leave a significant audit risk unaddressed. Choice B is incorrect because applying a single materiality level without considering component-level risks does not meet group audit requirements.'
WHERE id = 1455;

-- ID 1457: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 450.06, the auditor must evaluate whether uncorrected misstatements are material, both individually and in aggregate. AU-C 320.12 defines performance materiality (set at $150,000 in this case) to reduce to an appropriately low level the probability that aggregate uncorrected and undetected misstatements exceed overall materiality. When accumulated misstatements ($140,000) approach performance materiality, AU-C 450.11 requires the auditor to consider both quantitative and qualitative factors, as the proximity to thresholds increases the risk that total misstatements — including undetected ones — could exceed overall materiality ($200,000). Choice A is incorrect because simply noting that misstatements are below overall materiality ignores the purpose of performance materiality.'
WHERE id = 1457;

-- ID 1458: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 620.15, when issuing an unmodified opinion the auditor should not reference the specialist in the auditor''s report because such a reference might be misunderstood as a qualification of the opinion or a division of responsibility. The auditor is solely responsible for the opinion expressed. AU-C 620.16 permits reference to a specialist only when issuing a modified opinion, to explain the basis for the modification. Choice A is incorrect because always disclosing the specialist''s name regardless of opinion type is not required by auditing standards. Choice C is incorrect because referencing the specialist in an unmodified opinion could mislead users about the level of assurance provided.'
WHERE id = 1458;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 1722: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 706.09, when comparative financial statements are presented and the auditor''s current opinion on the prior-period statements differs from the opinion previously expressed, the auditor includes an other-matter paragraph. AU-C 706.A9 requires this paragraph to state the date and type of the previous opinion, the circumstances or events that caused the change, and that the opinion on the prior period has been updated. Choice A is incorrect because omitting the changed opinion would fail to provide transparency to users. Choice C is incorrect because reissuing the prior-period report with the original opinion when circumstances have changed would be misleading.'
WHERE id = 1722;

-- ID 1723: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 560.14, before reissuing a report on prior-period financial statements, the predecessor auditor should perform several procedures: read the current-period financial statements, obtain a representation letter from current management, compare the prior-period statements with those previously reported on, and read the successor auditor''s report. These procedures under AU-C 560.A21 help identify events that may affect the previously issued report. Choice A is incorrect because reissuing without performing any additional procedures could result in issuing a report that is no longer appropriate. Choice B is incorrect because a complete re-audit of the prior period is not required — the specified procedures are sufficient.'
WHERE id = 1723;

-- ============================================================
-- AUDIT SAMPLING (4 questions)
-- ============================================================

-- ID 1640: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A19, monetary unit sampling (MUS) selects individual dollars rather than individual items, so accounts with small or zero recorded balances have little or no chance of being selected. AU-C 530.A20 explains that this makes MUS less effective at detecting understatements — for example, an unrecorded liability would have a $0 recorded balance and zero probability of selection. Choice A is incorrect because MUS is efficient for large populations, not disadvantaged by them. Choice B is incorrect because MUS typically requires smaller sample sizes for low-error populations, which is an advantage, not a disadvantage.'
WHERE id = 1640;

-- ID 1641: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A21, classical variables sampling techniques include mean-per-unit estimation, difference estimation, and ratio estimation. Mean-per-unit estimation calculates the average audited value of items in the sample, then multiplies by the number of items in the population to estimate the total. AU-C 530.05 distinguishes variables sampling (used for substantive testing of account balances) from attribute sampling (used for tests of controls). Choice A is incorrect because attribute sampling measures the rate of deviations in a population, not dollar amounts. Choice C is incorrect because discovery sampling is designed to find at least one deviation in a population, not to estimate total values.'
WHERE id = 1641;

-- ID 1642: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.13, when evaluating sample results the auditor must consider sampling risk. Even though the sample deviation rate (3%) is below the tolerable rate (5%), AU-C 530.A29 requires the auditor to calculate the achieved upper deviation rate, which accounts for the risk that the true population deviation rate exceeds the sample rate. If the achieved upper deviation rate exceeds the tolerable rate of 5%, the auditor cannot support the planned assessment of control risk. Choice A is incorrect because comparing only the sample deviation rate to the tolerable rate ignores sampling risk. Choice C is incorrect because concluding that controls are effective based solely on the sample rate without considering sampling risk would be inappropriate.'
WHERE id = 1642;

-- ID 1643: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.13, when the projected misstatement ($55,000) exceeds the tolerable misstatement ($50,000), the auditor should conclude there is an unacceptably high risk that the account balance is materially misstated. AU-C 530.14 directs the auditor to consider expanding the sample, requesting management to investigate and adjust, performing alternative substantive procedures, or evaluating the effect on the audit opinion. Choice A is incorrect because accepting the balance when projected misstatement exceeds tolerable misstatement would provide insufficient evidence that the account is not materially misstated. Choice B is incorrect because immediately issuing a qualified opinion is premature before the auditor has explored additional procedures to reduce the risk.'
WHERE id = 1643;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 1325: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.000.010, the conceptual framework is a principles-based approach that requires CPAs to: (1) identify threats to compliance with the independence and ethics rules, (2) evaluate the significance of each threat, and (3) apply safeguards to eliminate or reduce threats to an acceptable level. If safeguards cannot adequately address the threat, the CPA must decline or discontinue the engagement. Choice A is incorrect because the framework is not a rigid checklist — it requires professional judgment applied to specific circumstances. Choice C is incorrect because the framework does not require pre-approval from a regulatory body for each engagement.'
WHERE id = 1325;

-- ID 1327: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 0.300.050, objectivity requires a CPA to be impartial, intellectually honest, and free from conflicts of interest in the discharge of professional responsibilities. The CPA must not subordinate judgment to others or allow bias to override objectivity. Choice A is incorrect because objectivity does not mean acting solely in the client''s interest — CPAs have obligations to the public interest under ET 0.300.030. Choice B is incorrect because fee competitiveness relates to business practices, not to the objectivity principle. Choice C is incorrect because fraud reporting obligations are governed by specific auditing standards (AU-C 240, AU-C 250), not by the objectivity principle itself.'
WHERE id = 1327;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (2 questions)
-- ============================================================

-- ID 1423: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS and the Uniform Guidance (2 CFR 200.514), the single audit requires the auditor to express an opinion on the entity''s compliance with the types of compliance requirements that could have a direct and material effect on each major program. This compliance opinion is separate from the financial statement opinion and is expressed for each major program individually, not in aggregate. Choice A is incorrect because a single combined compliance opinion covering all programs does not meet the Uniform Guidance requirement for program-specific opinions. Choice C is incorrect because the compliance opinion addresses the entity''s adherence to federal program requirements, not general GAAP compliance.'
WHERE id = 1423;

-- ID 1424: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS Chapter 1, Government Auditing Standards cover three types of engagements: financial audits (including financial statement audits and financial-related audits), attestation engagements (examinations, reviews, and agreed-upon procedures), and performance audits (evaluating program effectiveness, economy, and efficiency). Choice A is incorrect because tax return preparation is a non-attest service that is not a GAGAS engagement type. Choice C is incorrect because consulting engagements, while they may be performed by government auditors, are not conducted under the Yellow Book framework.'
WHERE id = 1424;

-- ============================================================
-- INDEPENDENCE (1 question)
-- ============================================================

-- ID 4942: Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.295.145, when a CPA firm provides litigation support involving advocacy for the client''s position — such as serving as an expert witness promoting the client''s case — an advocacy threat to independence arises. The auditor may be perceived as promoting the client''s interests rather than maintaining objectivity. ET 1.295.145.02 distinguishes this from providing factual testimony (acting as a trier of fact), which is generally less problematic. Choice A is incorrect because a self-review threat arises when reviewing one''s own work, not from litigation support. Choice C is incorrect because a management participation threat arises from making management decisions, not from advocacy in litigation.'
WHERE id = 4942;

-- ============================================================
-- INTERNAL CONTROLS (8 questions)
-- ============================================================

-- ID 1547: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 265.07, a control deficiency exists when the design or operation of a control does not allow management or employees to prevent, or detect and correct, misstatements on a timely basis. AU-C 265.A1 distinguishes two types: a design deficiency exists when a necessary control is missing or not properly designed, and an operating deficiency exists when a properly designed control does not operate as intended or is performed by unqualified personnel. Choice A is incorrect because a control weakness goes beyond simply having fewer controls — it requires that the deficiency could lead to misstatements not being prevented or detected. Choice C is incorrect because the definition focuses on the ability to prevent or detect misstatements, not on whether a misstatement has actually occurred.'
WHERE id = 1547;

-- ID 1548: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A77, the control environment sets the tone of the organization and is the foundation for all other internal control components. Limited board involvement in overseeing financial reporting weakens the control environment because AU-C 315.A78 identifies governance oversight — including the board''s role in monitoring management — as a key element. A disengaged board provides less effective oversight, increasing the risk that management may override controls. Choice A is incorrect because characterizing this as merely an operational concern underestimates its impact on the entire control system. Choice B is incorrect because the weakness affects the financial statement level risk assessment, not just individual account balances.'
WHERE id = 1548;

-- ID 1549: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.14, testing design effectiveness involves evaluating whether a control, as designed, is capable of effectively preventing or detecting and correcting material misstatements in relevant assertions. AU-C 315.A104 clarifies that this assessment occurs before testing operating effectiveness — a control must be properly designed before the auditor evaluates whether it is operating as intended. Choice A is incorrect because operating effectiveness — whether the control is consistently applied — is a separate evaluation from design effectiveness. Choice C is incorrect because design evaluation focuses on the control''s capability, not on whether specific misstatements have occurred.'
WHERE id = 1549;

-- ID 1550: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A24, when exceptions are found in tests of controls, the auditor must evaluate the nature and cause of the exceptions rather than simply computing an error rate. AU-C 530.13 requires the auditor to consider whether the deviations indicate a systematic breakdown in the control, whether they were caused by the same person or circumstance, and whether they increase control risk sufficiently to require modifications to planned substantive procedures. Choice A is incorrect because automatically concluding that controls are ineffective based on a small number of exceptions without analyzing their nature may be premature. Choice B is incorrect because ignoring the exceptions entirely would undermine the purpose of testing controls.'
WHERE id = 1550;

-- ID 1544: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A85, the risk assessment component of COSO internal control requires the entity to identify and analyze risks relevant to the achievement of its objectives. This process involves identifying changes in the internal and external environment, assessing the significance and likelihood of identified risks, and determining appropriate risk responses. AU-C 315.A86 specifies that risk assessment should consider changes in the regulatory environment, new personnel, and new or redesigned information systems. Choice A is incorrect because the goal is risk management, not risk elimination — some level of risk is inherent in all business activities. Choice C is incorrect because risk assessment must be an ongoing process, not a one-time exercise.'
WHERE id = 1544;

-- ID 1545: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A99, application controls operate within specific IT applications to ensure the completeness, accuracy, authorization, and validity of data capture and transaction processing. These include input controls (validation checks ensuring data meets defined criteria), processing controls (ensuring calculations and data manipulations are correct), and output controls (verifying completeness and proper distribution). Choice A is incorrect because password policies are access security controls classified as ITGCs under AU-C 315.A98. Choice B is incorrect because backup procedures are computer operations controls, another category of ITGCs, not application controls.'
WHERE id = 1545;

-- ID 1546: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A25, when testing the operating effectiveness of a manual control performed daily, the auditor needs a sample large enough to provide sufficient evidence that the control operated effectively throughout the entire audit period. AU-C 530.A6 notes that the auditor must consider both the frequency of the control''s operation and the length of the audit period when determining sample size. Choice A is incorrect because a single observation cannot provide evidence of consistent operation over an entire period. Choice C is incorrect because testing only the last month ignores the remaining months when the control may not have operated effectively, leaving a gap in evidence.'
WHERE id = 1546;

-- ID 1539: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A76, entity-level controls operate at a broad organizational level and have a pervasive effect on the entity''s internal control system. AU-C 315.A77 identifies examples including the control environment (tone at the top and governance oversight), entity-wide risk assessment processes, centralized monitoring activities, and the internal audit function. These controls affect multiple processes, accounts, and assertions rather than individual transactions. Choice A is incorrect because controls operating within a specific business process (such as purchase order matching) are transaction-level controls. Choice B is incorrect because IT application controls are specific to individual systems, not entity-wide.'
WHERE id = 1539;

-- ID 1540: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A94, the information and communication component of COSO internal control requires the entity to identify, capture, and communicate relevant information in a form and timeframe that enables people to carry out their responsibilities. AU-C 315.A95 emphasizes that effective communication flows in all directions — downward from management to employees, upward from employees to management, and across the organization between departments. Choice A is incorrect because restricting information flow to only senior management would undermine the component''s effectiveness. Choice C is incorrect because the component encompasses all relevant information, not only financial data.'
WHERE id = 1540;

-- ============================================================
-- MATERIALITY (1 question)
-- ============================================================

-- ID 5021: Materiality
UPDATE questions SET
  explanation = 'Under AU-C 320.12, performance materiality is set below overall materiality to reduce the probability that aggregate uncorrected and undetected misstatements exceed overall materiality. When aggregate uncorrected misstatements ($160,000) exceed performance materiality ($150,000), AU-C 450.11 requires the auditor to be concerned that total misstatements — both corrected and undetected — could exceed overall materiality ($200,000). The auditor should request management to correct identified misstatements, perform additional procedures, or evaluate whether a modified opinion is necessary under AU-C 705. Choice A is incorrect because simply noting the misstatements are below overall materiality ignores the purpose of performance materiality. Choice B is incorrect because accepting the situation without further action fails to address the elevated risk.'
WHERE id = 5021;

-- ============================================================
-- MISSTATEMENTS AND CONTROL DEFICIENCIES (2 questions)
-- ============================================================

-- ID 5118: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 265.08, the auditor evaluates the severity of a control deficiency by considering two dimensions: (1) the likelihood (reasonable possibility) that the deficiency, individually or in combination, could result in a misstatement, and (2) the magnitude of the potential misstatement that could result from the deficiency. AU-C 265.A11 explains that both factors together determine whether the deficiency rises to the level of a significant deficiency or a material weakness. Choice A is incorrect because considering only magnitude without likelihood would not provide a complete assessment. Choice C is incorrect because the evaluation is based on potential impact, not solely on whether an actual misstatement has already occurred.'
WHERE id = 5118;

-- ID 5119: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 265.A12, the severity of a control deficiency is evaluated based on the potential magnitude of misstatement that could result, not just the actual misstatement found. Even if the identified error is small ($25,000 compared to $500,000 materiality), AU-C 265.A13 requires the auditor to consider what could go wrong — a deficiency in a control processing millions of dollars annually could potentially result in a material misstatement. Choice A is incorrect because classifying the deficiency based solely on the actual error amount ignores the broader potential impact. Choice B is incorrect because the actual misstatement amount alone does not determine the deficiency''s severity when the control affects a large volume of transactions.'
WHERE id = 5119;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (1 question)
-- ============================================================

-- ID 4917: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 315.A128, the assertions for classes of transactions and events during the period include occurrence, completeness, accuracy, cutoff, and classification. Existence is an assertion for account balances at the period end — it addresses whether assets, liabilities, and equity interests actually exist at a given date. AU-C 315.A129 distinguishes account balance assertions (existence, rights and obligations, completeness, valuation and allocation) from transaction assertions. Choice A is incorrect because existence is not a transaction-level assertion. Choice C is incorrect because treating existence as applicable to both transactions and balances conflates two distinct assertion categories.'
WHERE id = 4917;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 question)
-- ============================================================

-- ID 1365: Professional Responsibilities
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 0.300.030, the public interest principle recognizes that CPAs have obligations to multiple stakeholders — including clients, creditors, employers, investors, the business and financial community, and the government. The CPA must balance these interests, with the public trust being paramount. This distinguishes the accounting profession from those that serve only their clients'' interests. Choice A is incorrect because serving exclusively the client''s interests conflicts with the CPA''s broader public interest obligation. Choice C is incorrect because the public interest principle applies to all professional activities, not only to attest engagements.'
WHERE id = 1365;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 question)
-- ============================================================

-- ID 4959: Professional Skepticism and Judgment
UPDATE questions SET
  explanation = 'Under AU-C 200.A22, automation bias occurs when auditors place excessive trust in the outputs of automated tools, data analytics, or computer-assisted audit techniques (CAATs) without applying sufficient professional skepticism. AU-C 200.17 requires the auditor to maintain a questioning mind throughout the audit, which includes critically evaluating whether automated results are reasonable and whether the underlying data is reliable. Choice B is incorrect because automation bias is about over-reliance on technology, not a preference for manual methods. Choice D is incorrect because using CAATs in all engagements is not itself a bias — the bias arises from uncritically accepting their outputs without investigation.'
WHERE id = 4959;

-- ============================================================
-- QUALITY MANAGEMENT (2 questions)
-- ============================================================

-- ID 368: Quality Management
UPDATE questions SET
  explanation = 'Under PCAOB AS 2201.04, an integrated audit requires the auditor to express two opinions: (1) whether the financial statements are presented fairly in all material respects, and (2) whether the entity maintains effective internal control over financial reporting as of the specified date. PCAOB AS 2201.05 notes that both opinions are typically included in a single combined report. Choice A is incorrect because an integrated audit requires two opinions, not just a financial statement opinion. Choice C is incorrect because the internal control opinion addresses effectiveness of controls, not compliance with laws and regulations.'
WHERE id = 368;

-- ID 369: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS No. 2 (and PCAOB AS 1220.13 for issuers), the engagement quality review must be completed before the report is released. If the engagement quality reviewer identifies unresolved significant matters, the engagement report should not be issued until those matters are satisfactorily resolved. AU-C 220.19 reinforces that the quality review process serves as a safeguard ensuring that the engagement team''s conclusions are appropriate. Choice A is incorrect because releasing the report with unresolved matters would defeat the purpose of the engagement quality review. Choice C is incorrect because simply noting the unresolved matters in the file without resolving them before issuance does not meet the standard''s requirements.'
WHERE id = 369;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (1 question)
-- ============================================================

-- ID 5042: Responding to Assessed Risks
UPDATE questions SET
  explanation = 'Under AU-C 330.21, for significant risks, if the approach consists only of substantive procedures, those procedures must include tests of details — not solely substantive analytical procedures. AU-C 330.A49 explains that analytical procedures alone may not provide sufficiently precise evidence for significant risks because these risks, by definition, require special audit consideration due to their nature or the magnitude of potential misstatement. Choice A is incorrect because relying solely on analytical procedures for a significant risk does not provide the level of precision required. Choice C is incorrect because inquiry alone is never sufficient as a substantive procedure for a significant risk.'
WHERE id = 5042;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 1762: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.38, when the accountant becomes aware of a material departure from the applicable financial reporting framework and management refuses to revise the financial statements, the accountant should modify the review report. AR-C 90.39 requires the modified report to include a separate paragraph describing the departure and, if practicable, the effects on the financial statements. Choice A is incorrect because withdrawing from the engagement is required only when the departure is designed to mislead, not merely when management disagrees with the accountant. Choice C is incorrect because issuing an unmodified report when a known material departure exists would fail to communicate the issue to users.'
WHERE id = 1762;

-- ID 1766: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.32, review inquiries focus on the applicable financial reporting framework, unusual items, subsequent events, fraud awareness, and the results of analytical procedures. Detailed questions about the design of internal control activities over each transaction cycle exceed the scope of a review engagement — that level of inquiry is characteristic of an audit under AU-C 315. AR-C 90.A51 confirms that review procedures are limited to inquiry and analytical procedures. Choice A is incorrect because inquiring about internal control design at the transaction cycle level goes beyond the scope of review-level procedures. Choice C is incorrect because the accountant does perform inquiries about fraud and subsequent events in a review.'
WHERE id = 1766;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1798: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.46, when an engagement is appropriately changed from a review to a compilation, the accountant issues only the compilation report. AR-C 90.47 specifies that the compilation report should not reference the original review engagement or any review procedures that were previously performed. The engagement letter should be amended to reflect the new scope of services. Choice A is incorrect because referencing the prior review engagement in the compilation report could confuse users about the level of service provided. Choice B is incorrect because issuing both a review and compilation report is inappropriate when the engagement has been changed.'
WHERE id = 1798;

-- ID 1799: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.32, inquiries about debt covenant compliance help the accountant assess whether debt is properly classified in the financial statements — violations may require reclassification from long-term to current under ASC 470-10-45. AR-C 90.A51 notes that covenant violations can also indicate going concern issues, and adequate disclosure must be evaluated. This inquiry relates directly to financial statement presentation and disclosure. Choice A is incorrect because the inquiry is not solely about the entity''s operational management of debt. Choice C is incorrect because while covenant compliance relates to legal obligations, the accountant''s primary concern is the impact on financial statement classification and disclosure.'
WHERE id = 1799;

-- ============================================================
-- RISK ASSESSMENT (3 questions)
-- ============================================================

-- ID 1505: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 330.07, when controls are not operating effectively, the auditor increases the assessed level of control risk and must modify planned substantive procedures to compensate. AU-C 330.A14 indicates the auditor may increase sample sizes, perform procedures closer to year-end, change the nature of procedures from analytical to detailed testing, or increase the extent of testing to obtain sufficient appropriate audit evidence. Choice A is incorrect because maintaining the original audit plan when controls have failed would result in insufficient evidence. Choice C is incorrect because immediately issuing a modified opinion may be premature — the auditor should first design responsive substantive procedures.'
WHERE id = 1505;

-- ID 1507: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.A96, unauthorized access to databases that allows manipulation of financial data without a visible audit trail represents a significant IT-related risk. AU-C 315.A97 explains that such access could enable unauthorized changes to data, programs, or settings affecting financial reporting, undermining the reliability of the accounting records. Choice A is incorrect because using commercially available software is generally a positive IT characteristic that reduces risk. Choice B is incorrect because regular data backups are a computer operations control that mitigates risk rather than creating it. Choice C is incorrect because adequate IT staffing reduces, rather than increases, IT-related risks.'
WHERE id = 1507;

-- ID 1509: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 330.15, for significant risks the auditor must obtain an understanding of the entity''s controls relevant to the risk and perform substantive procedures specifically responsive to the identified risk. For goodwill valuation, AU-C 540.13 requires the auditor to evaluate management''s impairment analysis, test key assumptions about future cash flows and discount rates, and AU-C 620.05 permits engaging a valuation specialist when the auditor lacks the necessary expertise. Choice A is incorrect because performing only general audit procedures without specifically addressing the significant risk does not meet AU-C 330.15 requirements. Choice C is incorrect because accepting management''s goodwill valuation without independent evaluation provides insufficient evidence for a significant risk.'
WHERE id = 1509;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (1 question)
-- ============================================================

-- ID 5155: Specific Areas and Transactions
UPDATE questions SET
  explanation = 'Under AU-C 570.20, if the auditor concludes that the entity cannot continue as a going concern and the financial statements have been prepared on a going concern basis, the going concern assumption is inappropriate, making the financial statements materially misstated. AU-C 570.21 requires the auditor to express an adverse opinion under AU-C 705.09 because the financial statements do not properly reflect the entity''s situation. Choice A is incorrect because a qualified opinion would be insufficient when the basis of preparation is fundamentally inappropriate. Choice C is incorrect because a disclaimer addresses scope limitations, not situations where the financial statements are materially and pervasively misstated.'
WHERE id = 5155;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (3 questions)
-- ============================================================

-- ID 1684: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 501.A14, when a client uses perpetual inventory with cycle counts rather than a full year-end physical count, the auditor evaluates the reliability of the perpetual system, observes selected cycle counts during the year, tests the reconciliation between cycle count results and perpetual records, and tests the roll-forward of inventory to year-end. AU-C 501.12 confirms that a full year-end physical count is not required when the perpetual system is reliable and adequate alternative procedures are performed. Choice A is incorrect because requiring a full year-end count when the perpetual system is reliable would be unnecessarily burdensome. Choice B is incorrect because ignoring the cycle count process entirely would leave the existence assertion untested.'
WHERE id = 1684;

-- ID 1685: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 501.11, during inventory observation the auditor performs test counts that serve two purposes: evaluating whether the client''s count teams are following proper procedures and obtaining evidence about the accuracy of the physical count. AU-C 501.A11 directs the auditor to test in both directions — from the floor to count sheets (testing completeness) and from count sheets to the floor (testing existence). Choice A is incorrect because test counts verify count accuracy, not total inventory valuation. Choice B is incorrect because identifying obsolete inventory is a separate procedure addressing the valuation assertion. Choice D is incorrect because the auditor performs sample test counts, not a complete recount of all items.'
WHERE id = 1685;

-- ID 1686: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 550.12, related parties are identified through multiple procedures: reviewing proxy statements, SEC filings, corporate minutes, organizational charts, and conflict-of-interest questionnaires; inquiring of management about relationships with officers, directors, and affiliated entities under AU-C 550.14; and examining unusual transactions for indications of previously undisclosed relationships. Choice A is incorrect because relying solely on management inquiry without corroborating procedures may miss undisclosed related parties. Choice C is incorrect because reviewing only the general ledger would not identify related party relationships that are not evident from transaction descriptions alone.'
WHERE id = 1686;

-- ============================================================
-- TERMS OF ENGAGEMENT (1 question)
-- ============================================================

-- ID 4978: Terms of Engagement
UPDATE questions SET
  explanation = 'Under AU-C 210.06(b), the engagement letter must acknowledge management''s responsibility for providing the auditor with access to all information that management is aware of and that is relevant to the preparation and fair presentation of the financial statements, including records, documentation, and other matters. AU-C 210.A14 clarifies that determining sample sizes, selecting audit procedures, and establishing materiality levels are auditor responsibilities under AU-C 300 and AU-C 320, not management responsibilities. Choice A is incorrect because audit procedure selection is an auditor responsibility. Choice C is incorrect because materiality determination is solely the auditor''s professional judgment, not a management function.'
WHERE id = 4978;

-- ============================================================
-- TESTS OF CONTROLS (1 question)
-- ============================================================

-- ID 5079: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A20, inquiry alone is not sufficient to test the operating effectiveness of controls in any situation. While inquiry provides useful information about control design and implementation, AU-C 330.A21 requires the auditor to combine inquiry with other procedures — such as observation, inspection of documents, or reperformance — to obtain sufficient evidence that controls operated effectively throughout the period. Choice A is incorrect because no circumstance permits inquiry alone as a test of operating effectiveness under auditing standards. Choice C is incorrect because even low-risk areas require more than inquiry when the auditor plans to rely on controls.'
WHERE id = 5079;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 question)
-- ============================================================

-- ID 4998: Understanding the Entity and Environment
UPDATE questions SET
  explanation = 'Under AU-C 315.06, the auditor obtains an understanding of the entity and its environment primarily during the planning and risk assessment phase of the audit. AU-C 315.05 states that this understanding forms the basis for identifying and assessing risks of material misstatement, which drives the design of further audit procedures under AU-C 330. However, AU-C 315.31 notes that the auditor continues to update this understanding throughout the engagement as new information is obtained. Choice A is incorrect because the understanding is obtained during planning, not solely during substantive testing. Choice C is incorrect because limiting the understanding to the reporting phase would be too late to inform the audit approach.'
WHERE id = 4998;

-- ============================================================
-- USING THE WORK OF OTHERS (1 question)
-- ============================================================

-- ID 5059: Using the Work of Others
UPDATE questions SET
  explanation = 'Under AU-C 620.06, an auditor''s specialist is an individual or organization possessing expertise in a field other than accounting or auditing, whose work is used by the auditor to assist in obtaining sufficient appropriate audit evidence. The specialist may be engaged (external) or employed (internal) by the auditor. AU-C 500.A36 distinguishes this from a management''s specialist, who is engaged by management to assist in preparing the financial statements — such as an actuary hired by the client to calculate pension obligations. Choice A is incorrect because management''s specialist works for the client, not the auditor. Choice C is incorrect because both types of specialists may have similar qualifications — the distinction is based on who engages them and for what purpose.'
WHERE id = 5059;

-- ============================================================
-- WRITTEN REPRESENTATIONS (1 question)
-- ============================================================

-- ID 5137: Written Representations
UPDATE questions SET
  explanation = 'Under AU-C 560.12, dual-dating of the auditor''s report is appropriate when the auditor becomes aware of a subsequent event after the original date of the report but before the report is issued. The auditor may dual-date the report (e.g., "February 28, 2026, except for Note 14, as to which the date is March 10, 2026") to limit the auditor''s responsibility for subsequent events to only the specific matter disclosed. AU-C 560.A16 explains that this avoids extending the auditor''s responsibility for all events through the later date. Choice A is incorrect because extending the entire report date to March 10 would expand responsibility for all subsequent events through that date. Choice B is incorrect because ignoring the event entirely when it may require disclosure would be inappropriate.'
WHERE id = 5137;

COMMIT;
