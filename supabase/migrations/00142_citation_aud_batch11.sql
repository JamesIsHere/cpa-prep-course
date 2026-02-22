-- Migration: Citation backfill — AUD batch 11 (55 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 55 explanations for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Internal Controls, Materiality, Misstatements and Control Deficiencies, Nature and Scope of Engagements, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others, Written Representations

BEGIN;

-- ============================================================
-- INTERNAL CONTROLS (5 questions)
-- ============================================================

-- ID 1551: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A53, internal control can provide only reasonable assurance due to inherent limitations. These limitations include the possibility of collusion among employees to circumvent segregation of duties, management override of established controls, human errors in judgment or execution, and cost-benefit considerations in control design. Collusion is a recognized limitation because even well-designed segregation of duties can be defeated when two or more individuals conspire. Choice A (if about management override alone) is incorrect because while management override is a limitation, collusion is also a distinct limitation. Choice B (if about cost-benefit) is incorrect as a standalone answer because all listed factors are limitations, not just the economic constraint of designing controls.'
WHERE id = 1551;

-- ID 1552: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A107, IT general controls — including change management over application software — support the continued proper functioning of information processing controls. Without a formal change management process, unauthorized or untested modifications could introduce processing errors, compromise data integrity, or allow manipulation of automated controls. This deficiency most directly affects the reliability of application controls and the integrity of data processed by the system. Choice A is incorrect because physical access controls relate to hardware security, not software modifications. Choice C is incorrect because segregation of duties, while important, is a separate control concept from change management procedures.'
WHERE id = 1552;

-- ID 1553: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A80, segregation of duties is a key element of control activities that reduces the opportunity for any one person to both perpetrate and conceal errors or fraud. Having the controller prepare journal entries, post them to the general ledger, and perform the monthly bank reconciliation concentrates authorization, recording, and verification functions in one individual, violating the principle of segregation of incompatible duties. Choice A is incorrect because the control environment relates to management''s tone and ethical values rather than the specific assignment of transaction-processing duties. Choice C is incorrect because information and communication deficiencies relate to how financial information flows through the organization, not to the concentration of incompatible functions in one person.'
WHERE id = 1553;

-- ID 1554: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A76–A86, the control environment encompasses management''s philosophy and operating style, the entity''s organizational structure, assignment of authority and responsibility, human resource policies and practices, and the commitment to integrity and ethical values. The specific substantive audit procedures the auditor plans to perform are part of the auditor''s overall response to assessed risks under AU-C 330, not an element of the entity''s control environment. Choice A is incorrect because management''s philosophy and operating style are explicitly part of the control environment. Choice B is incorrect because the entity''s organizational structure is a recognized control environment factor.'
WHERE id = 1554;

-- ID 1555: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A30–A33, tests of operating effectiveness require evidence that controls operated consistently throughout the period of reliance. Inspecting documents and reperforming the control for a sample of transactions selected across the full audit period provides the strongest evidence because reperformance independently verifies the control operated as designed. Choice A is incorrect because inquiry alone, per AU-C 330.A31, is insufficient to test operating effectiveness — it must be combined with other procedures. Choice B is incorrect because reading policy manuals only addresses whether the control is properly designed, not whether it actually operated. Choice C is incorrect because a single observation at one point in time does not provide evidence about consistent operation over the entire period.'
WHERE id = 1555;

-- ============================================================
-- AUDIT EVIDENCE (4 questions)
-- ============================================================

-- ID 1605: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 540.13, when auditing fair value measurements, the auditor should evaluate whether the valuation method used by management is appropriate in the circumstances given the nature of the asset, liability, or equity component being measured and the requirements of the applicable financial reporting framework. AU-C 540.A62 further notes that the auditor considers whether the method has been applied consistently and whether any changes are appropriate. Choice A is incorrect because selecting the least complex method is not a requirement — the method must be appropriate, even if complex. Choice B is incorrect because management is not required to use the same method as the prior-year auditor; consistency with the framework and appropriateness for the item are what matter.'
WHERE id = 1605;

-- ID 1606: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 550.A30, when a related party transaction that was not previously disclosed by management is identified, the auditor should first communicate the information to the engagement team and request management to identify all related party relationships and transactions. AU-C 550.19 requires the auditor to perform additional procedures to understand the nature of the transaction and whether it may have been intentionally concealed. Choice A is incorrect because immediately withdrawing from the engagement is premature without first understanding the circumstances. Choice C is incorrect because issuing a qualified opinion without further investigation would not satisfy the auditor''s obligation to gather sufficient appropriate evidence about the transaction.'
WHERE id = 1606;

-- ID 1607: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 550.A10, related party transactions may not be conducted at arm''s length, and the auditor must evaluate whether such transactions are properly valued and disclosed. When a CEO sells a building to the company at a price significantly above fair market value, the valuation and allocation assertion is most directly at risk because the recorded amount may not reflect the asset''s actual fair value. AU-C 540 further requires the auditor to evaluate whether the measurement is reasonable. Choice A is incorrect because the existence assertion relates to whether the asset exists, which is not in question here since the building was actually purchased. Choice B is incorrect because completeness relates to whether all transactions are recorded, not whether a recorded transaction is properly valued.'
WHERE id = 1607;

-- ID 1608: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 550.18, the auditor should treat significant related party transactions outside the normal course of business as giving rise to significant risks. AU-C 550.A27 explains that such transactions may lack the economic substance of arm''s-length dealings and may have been structured to achieve particular financial reporting outcomes, especially when controlled by management. Choice A is incorrect because routine transactions with related parties conducted on normal commercial terms present lower risk than unusual transactions. Choice B is incorrect because a related party lease at market rates and normal terms represents ordinary business activity and would not, by itself, indicate a significant risk of material misstatement.'
WHERE id = 1608;

-- ============================================================
-- AUDIT SAMPLING (4 questions)
-- ============================================================

-- ID 1644: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A7 and .A11, expected misstatement has a direct relationship with sample size in substantive tests of details: as the expected amount of misstatement in the population increases, the auditor needs a larger sample to determine whether total actual misstatement exceeds tolerable misstatement. A higher expectation of misstatement means the auditor must examine more items to achieve the desired level of assurance. Choice A is incorrect because tolerable misstatement has an inverse relationship with sample size — a higher tolerable misstatement allows a smaller sample. Choice B is incorrect because the acceptable risk of incorrect acceptance also has an inverse relationship — when the auditor is willing to accept more risk, a smaller sample suffices.'
WHERE id = 1644;

-- ID 1645: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A1, the risk of assessing control risk too low (also called the risk of overreliance) is the risk that the sample results support the auditor''s planned reliance on internal controls when the true operating deviation rate in the population actually exceeds the tolerable rate. This is an effectiveness risk because it may lead the auditor to restrict substantive testing when additional testing is warranted. Choice A is incorrect because describing a situation where the auditor concludes controls are ineffective when they are actually effective is the risk of assessing control risk too high, which is an efficiency risk. Choice B is incorrect because detection risk in substantive testing is a separate concept from sampling risk in tests of controls.'
WHERE id = 1645;

-- ID 1646: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A1, the risk of assessing control risk too high (also called the risk of underreliance) is the risk that the sample results fail to support the auditor''s planned reliance on controls when the true operating deviation rate is actually below the tolerable rate. This leads the auditor to incorrectly conclude that controls are less effective than they truly are, resulting in unnecessary expansion of substantive procedures. This is an efficiency risk rather than an effectiveness risk. Choice A is incorrect because describing a situation where the auditor places unwarranted reliance on controls is the risk of assessing control risk too low, which affects audit effectiveness. Choice C is incorrect because this risk does not relate to the overall audit opinion but rather to the efficiency of the audit approach.'
WHERE id = 1646;

-- ID 1647: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A13, stratification divides a population into subpopulations (strata) so that each stratum contains items with similar characteristics, such as dollar value. The primary reason for stratification is to reduce the variability of items within each stratum, which improves sampling efficiency and allows the auditor to focus effort on higher-risk or higher-value items. For accounts receivable, stratifying by dollar amount ensures that large balances receive proportionally more audit attention. Choice A is incorrect because stratification does not eliminate the need for professional judgment in evaluating results. Choice B is incorrect because stratification improves efficiency but does not guarantee that all misstatements in the population will be detected.'
WHERE id = 1647;

-- ============================================================
-- AUDIT PLANNING (4 questions)
-- ============================================================

-- ID 1459: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 320.A6, the auditor uses professional judgment to select an appropriate benchmark for determining materiality. For nonprofit organizations, total revenues or total expenses are commonly used benchmarks because these entities do not have traditional profit metrics such as income before taxes. AU-C 320.A7 notes that the chosen benchmark should be relevant to the users of the financial statements and reflect the entity''s nature. Choice A is incorrect because net income is typically not a meaningful measure for nonprofits, which are not profit-driven. Choice B is incorrect because total assets, while sometimes used, is generally less relevant for nonprofits where the focus of financial statement users is on the flow of resources through revenues and expenses.'
WHERE id = 1459;

-- ID 1460: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 600.24, the group engagement team sets component materiality at an amount lower than group materiality. This is necessary to reduce to an appropriately low level the probability that the aggregate of detected and undetected misstatements across all components exceeds group materiality. AU-C 600.A49 further notes that component materiality need not be a proportional allocation and may differ among components. Choice A is incorrect because setting component materiality equal to group materiality would not provide an adequate margin for aggregation risk across multiple components. Choice C is incorrect because component materiality is determined by the group engagement team, not independently by each component auditor without reference to group materiality.'
WHERE id = 1460;

-- ID 1464: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 315.12, the auditor is required to obtain an understanding of the entity and its environment, including significant changes in the entity''s business operations. Rapid growth through acquisitions is a critical planning consideration because business combinations involve complex accounting for purchase price allocation, goodwill measurement, fair value estimates, and consolidation procedures. AU-C 315.A29 notes that such changes may introduce new risks of material misstatement. Choice A is incorrect because while revenue growth trends are relevant, the complexity introduced by acquisitions — including new subsidiaries, integration risks, and consolidation — presents more significant planning challenges. Choice B is incorrect because changes in the entity''s tax rate, while relevant, do not carry the same breadth of audit implications as business combination accounting.'
WHERE id = 1464;

-- ID 1465: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 550.06, the auditor considers related party relationships and transactions during planning primarily because such transactions may not be conducted at arm''s length prices or on terms equivalent to those with unrelated parties. This could result in material misstatement of amounts or inadequate disclosure in the financial statements. AU-C 550.A10 further explains that the economic substance of related party transactions may differ from their legal form. Choice A is incorrect because while related party transactions must be disclosed, the primary audit concern is not disclosure alone but whether the transactions could cause material misstatement. Choice B is incorrect because the existence of related parties does not automatically constitute fraud — the concern is the risk of transactions at non-arm''s-length terms.'
WHERE id = 1465;

-- ============================================================
-- RISK ASSESSMENT (4 questions)
-- ============================================================

-- ID 1510: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.11–.12, the auditor must identify and assess risks of material misstatement by understanding the entity and its environment, including events and conditions that may affect the financial statements. A cybersecurity breach affecting financial reporting systems could compromise data integrity, introduce unauthorized transactions, or impair the reliability of automated controls. AU-C 315.A30 requires the auditor to consider business risks that may result in material misstatement. The auditor should evaluate the nature and extent of the breach and determine its potential impact on financial data and internal controls. Choice A is incorrect because simply noting the breach in the working papers without further action would fail to address the potential impact on assessed risks. Choice B is incorrect because withdrawing from the engagement is premature without first evaluating the severity and financial reporting implications of the breach.'
WHERE id = 1510;

-- ID 1511: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 550.18, when assessing the risk of material misstatement for related party transactions, the auditor should consider whether the transaction was conducted at arm''s length, the business purpose and economic substance of the transaction, and whether the terms could result in material misstatement or inadequate disclosure. AU-C 550.A27 emphasizes that transactions outside the normal course of business with related parties present a higher risk. Choice A is incorrect because focusing solely on whether the related party is publicly traded does not address the substance and terms of the specific transaction. Choice B is incorrect because evaluating only the dollar amount without considering the nature, purpose, and terms of the transaction would not satisfy the auditor''s risk assessment obligations under AU-C 550.'
WHERE id = 1511;

-- ID 1512: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 330.07, the audit risk model establishes that audit risk equals inherent risk multiplied by control risk multiplied by detection risk. When the combined assessed risk of material misstatement (inherent risk x control risk) is high, the auditor must set detection risk at a low level to maintain audit risk at an acceptably low level. AU-C 330.A18 explains this means performing more persuasive substantive procedures, such as increasing sample sizes, using more reliable evidence sources, or testing closer to the balance sheet date. Choice A is incorrect because reducing the extent of substantive procedures would increase detection risk, which is inappropriate when the risk of material misstatement is already high. Choice B is incorrect because relying primarily on analytical procedures when risk is high would not provide sufficiently persuasive evidence to reduce detection risk to the required low level.'
WHERE id = 1512;

-- ID 1513: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 240.A27, the auditor considers fraud risk factors in three categories: incentives/pressures, opportunities, and rationalizations. Significant related party transactions not in the ordinary course of business represent an opportunity for fraud because they may lack the economic substance of arm''s-length transactions and can be used to manipulate financial results. AU-C 550.18 also identifies such transactions as giving rise to significant risks. Choice A is incorrect because the entity''s industry declining would relate to incentives or pressures for fraud rather than opportunities. Choice B is incorrect because management''s attitude toward financial reporting relates to rationalization rather than opportunity, which is a distinct fraud risk factor category.'
WHERE id = 1513;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (3 questions)
-- ============================================================

-- ID 1687: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 560.14–.17, when the auditor becomes aware after the audit report date of a fact that existed at the report date that might have caused the auditor to revise the report, the auditor''s response depends on whether the financial statements have already been issued to third parties and whether the newly discovered fact would have affected the auditor''s report. If the financial statements have not yet been issued, the auditor discusses the matter with management and determines whether revision is needed. If already issued, the auditor determines whether the statements need revision and takes appropriate action. Choice A is incorrect because the auditor cannot simply ignore subsequently discovered facts regardless of issuance status. Choice B is incorrect because immediately reissuing the audit report without first evaluating the significance of the discovered fact and discussing with management would bypass required procedures under AU-C 560.'
WHERE id = 1687;

-- ID 1688: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.A4–.A5, when performing analytical procedures, the auditor develops expectations and investigates significant differences between expected and actual amounts. A significant unexpected change in a financial ratio could indicate a potential misstatement — such as overstated revenue, understated expenses, or misclassified accounts — or it could reflect a genuine change in the entity''s business operations or economic conditions. AU-C 520.07 requires the auditor to investigate the fluctuation by obtaining additional evidence and explanations from management. Choice A is incorrect because assuming the change is always due to fraud without further investigation would be premature and not supported by AU-C 520. Choice B is incorrect because dismissing an unexpected fluctuation as immaterial without investigation would violate the auditor''s obligation to follow up on significant differences identified during analytical procedures.'
WHERE id = 1688;

-- ID 1689: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.05, substantive analytical procedures can serve as the primary source of audit evidence for a significant account balance when three prerequisites are met: (1) the relationship being tested is sufficiently predictable, (2) the auditor''s expectation is developed with sufficient precision to identify misstatements at the relevant level of materiality, and (3) the data used to develop the expectation is reliable. AU-C 520.A5 emphasizes that the predictability of the relationship is fundamental because without it, the procedure cannot produce meaningful results. Choice A is incorrect because using analytical procedures on accounts with unpredictable relationships would not provide sufficient appropriate evidence. Choice B is incorrect because analytical procedures are not limited to immaterial accounts — they can be the primary substantive procedure for significant balances when the prerequisites are satisfied.'
WHERE id = 1689;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (3 questions)
-- ============================================================

-- ID 1425: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS (Government Auditing Standards, also known as the Yellow Book), paragraphs 6.40–6.41, auditors must report findings of fraud, noncompliance with laws and regulations, and significant deficiencies or material weaknesses in internal control. These findings must be communicated to those charged with governance of the audited entity, as well as to the appropriate officials of the organizations requiring or arranging for the audit. GAGAS requires written communication in the audit report so that oversight bodies and management can take corrective action. Choice A is incorrect because communicating findings only to management without including those charged with governance would not satisfy GAGAS reporting requirements. Choice B is incorrect because findings are not communicated solely to the general public — the primary recipients are those charged with governance and the officials who arranged the audit.'
WHERE id = 1425;

-- ID 1426: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS (Government Auditing Standards), paragraphs 8.02–8.04, a performance audit provides findings and conclusions based on an evaluation of sufficient, appropriate evidence against established criteria such as program objectives, statutory requirements, or best practices. Performance audits assess whether government programs are achieving their stated goals effectively and efficiently. GAGAS distinguishes performance audits from financial audits in that performance audits focus on program effectiveness, economy, and efficiency rather than the fair presentation of financial statements. Choice A is incorrect because expressing an opinion on financial statements is the objective of a financial audit, not a performance audit. Choice B is incorrect because a performance audit evaluates program outcomes against criteria, not merely whether expenditures comply with budget appropriations.'
WHERE id = 1426;

-- ID 1427: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS and the Uniform Guidance (2 CFR 200.518), a Type A program is defined as a federal program with expenditures exceeding the larger of $750,000 or a percentage-based threshold tied to total federal awards expended, subject to a ceiling. The specific percentage thresholds are tiered: 3% for entities with total federal awards up to and including $100 million, with lower percentages for larger amounts. This classification determines which programs are subject to audit as major programs in a single audit. Choice A is incorrect because a flat $500,000 threshold does not reflect the current Uniform Guidance Type A program definition. Choice B is incorrect because $1,000,000 is not the defined threshold — the base amount is $750,000 combined with the percentage-based calculation.'
WHERE id = 1427;

-- ============================================================
-- REVIEW AND COMPILATION (3 questions)
-- ============================================================

-- ID 1767: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 80.22–.23, a firm that lacks independence from the client is not precluded from performing a compilation engagement. However, the firm must disclose the lack of independence in the compilation report. AR-C 80.A41 notes that the accountant is not required to disclose the reason for the lack of independence. This distinguishes compilations from reviews and audits, where independence is a prerequisite for performing the engagement. Choice A is incorrect because the firm is not required to withdraw from a compilation engagement solely due to a lack of independence — compilations may still be performed. Choice B is incorrect because the firm cannot simply proceed with the compilation without any disclosure — the lack of independence must be explicitly stated in the compilation report as required by AR-C 80.'
WHERE id = 1767;

-- ID 1768: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.A80, when the accountant subsequently discovers information that existed at the date of the review report and may affect the financial statements, the accountant should discuss the matter with management and determine whether the financial statements need revision. If revision is necessary, the accountant should inquire how management intends to address the matter. AR-C 90.A81 further notes the accountant should consider the effect on the review report previously issued. Choice A is incorrect because ignoring the information would violate the accountant''s professional responsibilities. Choice C is incorrect because immediately withdrawing from the engagement is not required; the accountant should first evaluate the significance and discuss with management.'
WHERE id = 1768;

-- ID 1771: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.36, when the accountant becomes aware of a matter that causes the accountant to believe the financial statements may be materially misstated, the accountant should perform additional procedures sufficient to obtain limited assurance that there are no material modifications needed. AR-C 90.37 requires these additional procedures to resolve the matter. Choice A is incorrect because immediately withdrawing from the engagement is not the first step; additional procedures should be performed. Choice B is incorrect because simply disclosing the concern in the report without performing additional procedures would not satisfy the accountant''s responsibility to obtain limited assurance.'
WHERE id = 1771;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1800: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.28, analytical procedures are a core component of a review engagement. When an analytical expectation differs materially from the reported amount — such as cost of goods sold at 58% versus the expected 65% — AR-C 90.29 requires the accountant to inquire of management to understand the cause of the difference. Management may provide a plausible explanation, such as renegotiated supplier contracts or a change in product mix. Choice A is incorrect because issuing a modified report without first inquiring of management would be premature. Choice C is incorrect because converting to an audit engagement is not required simply because an analytical expectation was not met; the accountant should first seek an explanation.'
WHERE id = 1800;

-- ID 1801: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.39, the accountant''s review report must include a statement that a review is substantially less in scope than an audit, the objective of which is the expression of an opinion regarding the financial statements as a whole. AR-C 90.A59 clarifies that this language distinguishes the limited assurance of a review from the reasonable assurance of an audit. Choice A is incorrect because stating a review provides reasonable assurance would misrepresent the level of assurance obtained. Choice C is incorrect because a review does provide limited (not zero) assurance, distinguishing it from a compilation.'
WHERE id = 1801;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 1330: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct (ET 1.210.010), a self-interest threat is created when a CPA firm derives a significant portion of its revenue from a single audit client. The firm may be reluctant to challenge management or take actions that could jeopardize the lucrative client relationship, thereby impairing objectivity. ET 1.210.010.02 specifically identifies undue dependence on total fees from a client as a self-interest threat. Choice A is incorrect because an advocacy threat arises when a firm promotes a client''s position, not from fee dependence. Choice C is incorrect because a familiarity threat arises from long personal relationships, not revenue concentration.'
WHERE id = 1330;

-- ID 1331: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct (ET 1.100.001), the integrity principle requires a CPA to be honest and candid within the constraints of client confidentiality. Knowingly signing a document containing a materially false or misleading statement is a direct violation of the integrity principle under ET 1.100.001.01, which prohibits subordinating judgment to others or knowingly misrepresenting facts. Choice A is incorrect because making an unintentional error does not constitute a breach of integrity. Choice C is incorrect because expressing a professional opinion that later proves incorrect is not a breach if the opinion was formed in good faith with due diligence.'
WHERE id = 1331;

-- ============================================================
-- QUALITY MANAGEMENT (2 questions)
-- ============================================================

-- ID 1382: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS No. 2.18, the engagement quality reviewer must be a partner or other individual within the firm, or an external individual, who possesses sufficient competence and capabilities, including sufficient time, and the appropriate authority and objectivity to perform the engagement quality review. SQMS No. 2.19 further specifies that the reviewer must not have been involved in performing the engagement or making significant judgments that are subject to the review. Choice A is incorrect because the engagement partner cannot serve as the engagement quality reviewer for the same engagement due to the objectivity requirement. Choice C is incorrect because junior staff lack the authority and competence required for the role.'
WHERE id = 1382;

-- ID 1386: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS No. 2.24, the engagement quality reviewer must perform an objective evaluation of the significant judgments made by the engagement team and the conclusions reached in formulating the report. SQMS No. 2.25 requires the reviewer to evaluate whether appropriate consultation has taken place on difficult or contentious matters and to review selected engagement documentation. The review must be performed with professional skepticism and without undue reliance on the engagement team''s conclusions. Choice A is incorrect because a cursory or superficial review would not satisfy the standard''s requirement for an objective evaluation. Choice B is incorrect because the reviewer does not re-perform all audit procedures; the role is evaluative, not duplicative.'
WHERE id = 1386;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 1725: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 720.12, if the auditor identifies a material inconsistency between the other information and the audited financial statements and management refuses to make the revision, the auditor should communicate the matter to those charged with governance. AU-C 720.13 further requires the auditor to consider including an other-matter paragraph in the auditor''s report describing the material inconsistency or, in more serious cases, to consider withdrawing from the engagement. Choice A is incorrect because ignoring the inconsistency would violate the auditor''s responsibility under AU-C 720. Choice C is incorrect because the auditor cannot unilaterally revise the other information; the auditor''s recourse is communication and reporting.'
WHERE id = 1725;

-- ID 1727: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 570.20, when the auditor concludes that substantial doubt about the entity''s ability to continue as a going concern exists and adequate disclosure is made in the financial statements, the auditor should issue an unmodified opinion with an emphasis-of-matter paragraph that references the going concern uncertainty. AU-C 570.A30 clarifies that the emphasis-of-matter paragraph draws attention to the note disclosure without modifying the opinion itself. Choice A is incorrect because a qualified opinion is not appropriate when the going concern matter is adequately disclosed. Choice B is incorrect because a disclaimer of opinion is not warranted when disclosure is adequate and the auditor has obtained sufficient evidence.'
WHERE id = 1727;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1829: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 305.35, the practitioner''s examination report on a financial forecast must include a caveat stating that the prospective results may not be achieved. AT-C 305.A44 explains this caveat is necessary because a forecast is based on assumptions about conditions expected to exist and courses of action expected to be taken, and actual results will invariably differ from the forecast. Choice A is incorrect because the report cannot guarantee the accuracy of management''s assumptions. Choice C is incorrect because the caveat requirement applies regardless of the reliability of the underlying data or the practitioner''s level of confidence in the forecast.'
WHERE id = 1829;

-- ID 1831: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 310.10, when examining pro forma financial information, the practitioner should obtain satisfaction that the underlying historical financial statements have been audited or reviewed and that the pro forma adjustments give appropriate effect to the significant transaction or event. AT-C 310.12 further requires the practitioner to evaluate whether management''s assumptions provide a reasonable basis for the pro forma adjustments. Choice A is incorrect because the practitioner does not need to independently re-audit the historical financial statements. Choice C is incorrect because pro forma information is inherently hypothetical and is not intended to replace the audited financial statements.'
WHERE id = 1831;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 4918: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 705.13, when the auditor is unable to obtain sufficient appropriate audit evidence due to circumstances beyond the entity''s control — such as the destruction of accounting records in a fire — the auditor faces a scope limitation. AU-C 705.10 requires the auditor to evaluate whether the possible effects of undetected misstatements could be material and pervasive. If the effects are material but not pervasive, a qualified opinion is appropriate; if material and pervasive, the auditor should disclaim an opinion. Choice A is incorrect because issuing an unmodified opinion is not appropriate when sufficient evidence cannot be obtained for material accounts. Choice C is incorrect because simply noting the limitation in the engagement letter does not resolve the impact on the audit opinion.'
WHERE id = 4918;

-- ID 4920: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 200.11, an audit provides reasonable assurance, which is the highest level of assurance offered in attestation engagements. Under AR-C 90.04, a review provides limited assurance that no material modifications should be made to the financial statements. Under AR-C 80.04, a compilation involves presenting management''s financial statements without providing any assurance. Thus the hierarchy is: audit (reasonable assurance) > review (limited assurance) > compilation (no assurance). Choice B is incorrect because a review provides only limited assurance, not the highest level. Choice C is incorrect because a compilation provides no assurance at all.'
WHERE id = 4920;

-- ============================================================
-- TESTS OF CONTROLS (2 questions)
-- ============================================================

-- ID 5080: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.08, the auditor tests the operating effectiveness of controls when the auditor''s risk assessment includes an expectation that controls are operating effectively — that is, the auditor intends to rely on those controls. Testing controls supports a lower assessed level of control risk, which under AU-C 330.07 allows the auditor to reduce the nature, timing, or extent of substantive procedures. Choice A is incorrect because tests of controls are not performed to directly detect misstatements; substantive procedures serve that purpose. Choice C is incorrect because while control testing informs the audit strategy, its primary purpose is supporting reliance on controls, not evaluating management''s competence.'
WHERE id = 5080;

-- ID 5081: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 530.11, when testing a control that operates frequently — such as a daily control operating approximately 250 times per year — the auditor uses audit sampling to select a sufficient number of occurrences to provide a reasonable basis for concluding on operating effectiveness. AU-C 330.A26 notes that the more frequently a control operates, the greater the number of items the auditor may select for testing. Choice A is incorrect because testing only one or two occurrences would not provide sufficient evidence for a control that operates 250 times annually. Choice B is incorrect because testing every occurrence is impractical and unnecessary; sampling provides an efficient means of obtaining sufficient evidence.'
WHERE id = 5081;

-- ============================================================
-- MISSTATEMENTS AND CONTROL DEFICIENCIES (2 questions)
-- ============================================================

-- ID 5120: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 265.11, the auditor''s written communication of significant deficiencies and material weaknesses to those charged with governance must include a description of the deficiencies and an explanation of their potential effects. AU-C 265.A15 clarifies that the communication need not quantify the potential effects but should describe their nature sufficiently to enable those charged with governance to understand the implications. Choice A is incorrect because the communication does not require a guarantee that all deficiencies have been identified. Choice C is incorrect because including detailed remediation steps, while potentially helpful, is not required by AU-C 265.'
WHERE id = 5120;

-- ID 5121: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 265.13, auditing standards do not impose an explicit requirement on management to provide a formal written response to the auditor''s communication of material weaknesses. However, AU-C 265.A19 notes that those charged with governance may request management to respond, and governance frameworks or regulations may require a management response. In practice, management typically addresses reported weaknesses with a corrective action plan. Choice A is incorrect because no auditing standard mandates a written response within a specific timeframe. Choice B is incorrect because management is not required to remediate all weaknesses before the next audit, although timely remediation is expected by governance.'
WHERE id = 5121;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 question)
-- ============================================================

-- ID 1366: Professional Responsibilities
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct (ET 1.110.010), when a married couple begins divorce proceedings and each spouse requests separate representation, a conflict of interest arises because each spouse''s tax interests may become adverse to the other''s. ET 1.110.010.04 requires the CPA to evaluate whether safeguards can be applied to reduce the threat to an acceptable level or whether the CPA must decline to represent one or both parties. The CPA should obtain informed consent from both parties before continuing and consider whether separate representation is feasible. Choice A is incorrect because automatically continuing to represent both spouses without evaluating the conflict would violate the Code. Choice C is incorrect because withdrawal is not always required; the CPA may continue with appropriate safeguards and informed consent.'
WHERE id = 1366;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 question)
-- ============================================================

-- ID 4960: Professional Skepticism and Judgment
UPDATE questions SET
  explanation = 'Under AU-C 200.17, the auditor must maintain professional skepticism throughout the audit, recognizing the possibility that a material misstatement due to fraud or error could exist. When an engagement partner dismisses staff concerns about potential fraud indicators based solely on the client''s trustworthiness, the partner demonstrates a failure of professional skepticism caused by familiarity bias. AU-C 200.A22 warns that previous experience with the entity''s honesty does not relieve the auditor of the need to maintain skepticism. Choice A is incorrect because this is not merely a judgment error; it reflects a systematic failure to apply the skepticism required by standards. Choice C is incorrect because the issue is not insufficient evidence gathering but rather the dismissal of evidence already identified.'
WHERE id = 4960;

-- ============================================================
-- TERMS OF ENGAGEMENT (1 question)
-- ============================================================

-- ID 4979: Terms of Engagement
UPDATE questions SET
  explanation = 'Under AU-C 210.09, if management imposes a limitation on the scope of the audit that the auditor believes will result in a disclaimer of opinion, the auditor should ordinarily not accept such a limited engagement unless required by law or regulation. AU-C 210.A14 explains that accepting an engagement with a known scope limitation that precludes expressing an opinion would undermine the purpose of the audit. Choice A is incorrect because simply documenting the limitation without declining the engagement would not satisfy the standard''s guidance. Choice B is incorrect because issuing a qualified opinion is not appropriate when the scope limitation is so severe as to warrant a disclaimer.'
WHERE id = 4979;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 question)
-- ============================================================

-- ID 4999: Understanding the Entity and Environment
UPDATE questions SET
  explanation = 'Under AU-C 315.12, the auditor must obtain an understanding of the entity and its environment, including the industry in which it operates. Significant industry consolidation — with competitors being acquired — is most relevant to the auditor''s assessment of business risks that may result in material misstatement. AU-C 315.A30 identifies competitive pressures and market dynamics as factors that may affect the entity''s financial reporting, including potential going concern considerations and asset impairment risks. Choice A is incorrect because while consolidation may indirectly affect internal controls, it most directly relates to business risk assessment. Choice B is incorrect because industry consolidation affects strategic risk assessment rather than the specific detection of fraud.'
WHERE id = 4999;

-- ============================================================
-- ANALYTICAL PROCEDURES (1 question)
-- ============================================================

-- ID 5100: Analytical Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.A5, when performing substantive analytical procedures, the auditor develops an expectation of recorded amounts using relevant financial and non-financial data. Regression analysis — which uses statistical techniques to model the relationship between a dependent variable (monthly revenue) and independent variables (customer count, kilowatt-hours consumed, rate schedules) — provides a more precise expectation than simple ratio analysis. AU-C 520.A13 notes that the precision of the expectation depends on the reliability and disaggregation of the data and the predictability of the relationship. Choice A is incorrect because simple trend analysis would not capture the multiple variables that drive utility revenue. Choice C is incorrect because merely comparing current to prior-year revenue without modeling the underlying drivers would produce a less precise expectation.'
WHERE id = 5100;

-- ============================================================
-- WRITTEN REPRESENTATIONS (1 question)
-- ============================================================

-- ID 5138: Written Representations
UPDATE questions SET
  explanation = 'Under AU-C 560.12, the auditor''s procedures for identifying subsequent events typically include reading the entity''s latest available interim financial statements, inquiring of management about subsequent events, reading minutes of meetings of those charged with governance, and obtaining an updated attorney''s letter regarding litigation. AU-C 560.A8 clarifies that confirming all outstanding accounts receivable as of the audit report date is not a standard subsequent event procedure; rather, A/R confirmations are a substantive procedure performed as of the balance sheet date. Choice A is incorrect because reading board minutes is a standard subsequent event procedure. Choice B is incorrect because inquiring of management about subsequent events is explicitly required by AU-C 560.'
WHERE id = 5138;

-- ============================================================
-- MATERIALITY (1 question)
-- ============================================================

-- ID 5022: Materiality
UPDATE questions SET
  explanation = 'Under AU-C 320.A3, qualitative factors may cause a quantitatively small misstatement to be material. These factors include whether the misstatement involves fraud, affects compliance with regulatory requirements or loan covenants, masks a change in earnings trends, or changes a loss into income (or vice versa). AU-C 450.A17 further emphasizes that the auditor should consider both quantitative and qualitative characteristics of misstatements when evaluating materiality. Choice A is incorrect because a misstatement that is immaterial both quantitatively and qualitatively does not become material simply because it was identified. Choice C is incorrect because the absolute dollar amount alone does not determine materiality when qualitative factors are present.'
WHERE id = 5022;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (1 question)
-- ============================================================

-- ID 5043: Responding to Assessed Risks
UPDATE questions SET
  explanation = 'Under AU-C 330.20, the auditor designs and performs substantive procedures responsive to the assessed risks of material misstatement. For accounts receivable, external confirmation under AU-C 505.07 provides direct third-party evidence of the existence and accuracy of recorded balances — a highly persuasive form of evidence. Supplementing confirmations with testing of subsequent cash receipts provides additional evidence regarding valuation and collectibility. AU-C 330.A51 notes that using a combination of procedures from different sources increases persuasiveness. Choice A is incorrect because relying solely on management inquiry would not provide sufficient persuasive evidence. Choice C is incorrect because analytical procedures alone, without corroborating detail testing, may not adequately address the risk for a specific account balance.'
WHERE id = 5043;

-- ============================================================
-- USING THE WORK OF OTHERS (1 question)
-- ============================================================

-- ID 5060: Using the Work of Others
UPDATE questions SET
  explanation = 'Under AU-C 600.27, when a component is significant due to its individual financial significance to the group, the group engagement team should be involved in the risk assessment and perform or request a component auditor to perform an audit of the component''s financial information using component materiality. AU-C 600.A48 explains that this ensures sufficient appropriate audit evidence is obtained for individually significant components. Choice A is incorrect because performing only analytical procedures at the group level would not provide sufficient evidence for a component that is individually significant. Choice B is incorrect because a review-level engagement on a significant component does not provide the reasonable assurance required for group audit purposes.'
WHERE id = 5060;

COMMIT;
