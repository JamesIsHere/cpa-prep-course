-- Migration: Citation backfill — AUD batch 6 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Misstatements and Control Deficiencies, Nature and Scope of Engagements, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others, Written Representations

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (1 question)
-- ============================================================

-- ID 5093: Analytical Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.05, analytical procedures involve evaluating financial information through analysis of plausible relationships among both financial and non-financial data. Comparing the current year''s gross margin to prior year results and industry averages is a classic substantive analytical procedure because it establishes an expectation and identifies unusual fluctuations warranting investigation. Choice B is incorrect because recalculating individual invoice totals is a test of details (recalculation), not an analytical procedure. Choice C is incorrect because confirming balances with third parties is an external confirmation procedure under AU-C 505, not an analytical procedure.'
WHERE id = 5093;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (1 question)
-- ============================================================

-- ID 349: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 315.09, in a compliance attestation engagement the practitioner examines the entity''s compliance with specified requirements — such as contractual terms, regulatory provisions, or grant conditions — and the suitable criteria are those specific requirements themselves. The practitioner evaluates whether the entity has complied with those criteria and issues a report expressing an opinion on compliance. Choice A is incorrect because GAAP is not the relevant criteria for a compliance engagement — the criteria are the specific contractual or regulatory requirements being tested, not financial reporting standards.'
WHERE id = 349;

-- ============================================================
-- AUDIT EVIDENCE (4 questions)
-- ============================================================

-- ID 301: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 505.08, when management refuses to allow the auditor to send confirmation requests for accounts receivable, the auditor must evaluate whether the refusal is reasonable. If the refusal is unreasonable, this constitutes a scope limitation under AU-C 705. Depending on the materiality and pervasiveness of the affected balances, the auditor should issue a qualified opinion or a disclaimer of opinion. Choice A is incorrect because an unmodified opinion cannot be issued when the auditor has been unable to obtain sufficient appropriate evidence due to a management-imposed limitation. Choice C is incorrect because the auditor cannot simply accept management''s refusal without consequence to the report.'
WHERE id = 301;

-- ID 1279: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 540.08 (SAS No. 143), the auditor''s evaluation of accounting estimates requires examining three components: the method, the data, and the assumptions. The data component encompasses all financial and non-financial inputs used in developing the estimate, including historical information, market data, and entity-specific metrics that feed into the estimation method. Choice A is incorrect because the mathematical formulas and models used to process the data constitute the method component, not the data component. Choice C is incorrect because the judgments about future conditions represent the assumptions component.'
WHERE id = 1279;

-- ID 1280: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 505.A15, when electronic confirmations are used instead of paper confirmations, the primary risk is the inability to verify the identity and authority of the respondent. Unlike paper confirmations sent to verified physical addresses, electronic responses may be intercepted, altered, or submitted by unauthorized individuals, undermining the reliability of the evidence. Choice A is incorrect because slower response times are not the primary risk — electronic confirmations typically generate faster responses than paper. Choice C is incorrect because cost is not a reliability concern; electronic confirmations are generally less expensive.'
WHERE id = 1280;

-- ID 1587: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 500.06, sufficiency is the measure of the quantity of audit evidence. The quantity needed is affected by the auditor''s assessment of the risk of material misstatement (higher risk requires more evidence) and the quality of the evidence obtained (higher-quality evidence may require less quantity). Sufficiency is distinguished from appropriateness, which addresses the quality — relevance and reliability — of the evidence. Choice A is incorrect because the quality or reliability of evidence relates to appropriateness, not sufficiency. Choice C is incorrect because the source of evidence affects appropriateness, not the quantity measure.'
WHERE id = 1587;

-- ============================================================
-- AUDIT PLANNING (3 questions)
-- ============================================================

-- ID 272: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 315.12, the auditor must obtain an understanding of the entity and its environment, including recent business combinations. Rapid growth through acquisitions introduces significant planning considerations including consolidation accounting under ASC 805, goodwill valuation and impairment testing, purchase price allocation complexity, and integration of disparate internal control systems. Choice B is incorrect because while staffing concerns may arise, the most significant audit planning consideration relates to the accounting complexity and risk of material misstatement inherent in business combinations, not general operational challenges.'
WHERE id = 272;

-- ID 273: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 320.A3, the auditor selects a benchmark that reflects the scale and nature of the entity''s operations. For not-for-profit organizations, total revenue or total expenses is the most commonly used benchmark because these measures best reflect the scale of the organization''s activities, since NFPs do not have equity or earnings targets meaningful to users. Choice A is incorrect because net income is typically not a suitable benchmark for NFPs, as they do not operate to generate profit and may report near-zero changes in net assets. Choice C is incorrect because total assets, while sometimes used, does not capture the operating scale as effectively as revenue or expenses for a service-oriented NFP.'
WHERE id = 273;

-- ID 1441: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 300.07, the overall audit strategy sets the scope, timing, and direction of the audit and guides the development of the more detailed audit plan. The strategy addresses matters such as resources to deploy, amounts to allocate to specific areas, when resources are to be deployed, and how they are managed, directed, and supervised. Choice A is incorrect because the detailed audit plan, not the overall strategy, specifies the nature, timing, and extent of individual audit procedures. Choice C is incorrect because the engagement letter under AU-C 210 documents the terms of the engagement, which is separate from the audit strategy.'
WHERE id = 1441;

-- ============================================================
-- AUDIT REPORTS (1 question)
-- ============================================================

-- ID 128: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 600.23, when the group engagement partner decides not to make reference to the component auditor in the group audit report, the group partner assumes responsibility for the component auditor''s work. This requires the group partner to evaluate the component auditor''s independence and competence, determine the nature, timing, and extent of involvement in the component auditor''s work, and evaluate the sufficiency and appropriateness of the audit evidence obtained. Choice A is incorrect because simply reviewing the component auditor''s report without further involvement is insufficient when assuming full responsibility. Choice C is incorrect because AU-C 600 does not require the group partner to reperform all of the component auditor''s procedures.'
WHERE id = 128;

-- ============================================================
-- AUDIT SAMPLING (4 questions)
-- ============================================================

-- ID 306: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A23, in monetary-unit sampling (MUS) the sampling interval is calculated by dividing the total recorded dollar value of the population by the desired sample size. This interval determines the systematic selection points — every nth dollar in the population is selected, and the logical unit containing that dollar becomes part of the sample. Choice A is incorrect because dividing by tolerable misstatement would produce a different value used in other aspects of the sampling plan, not the selection interval. Choice C is incorrect because multiplying the population by the confidence factor does not yield the sampling interval.'
WHERE id = 306;

-- ID 307: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A24, the tainting percentage in MUS is used to project the misstatement from sampled items to the population. It is calculated as (Book Value minus Audit Value) divided by Book Value, then multiplied by the sampling interval to compute the projected misstatement for that item. This projection method is necessary because MUS selects dollars proportional to size, requiring each error to be expressed as a proportion before extrapolation. Choice A is incorrect because the tainting percentage is not applied to the total population balance directly — it is applied to the sampling interval for each individual misstatement found.'
WHERE id = 307;

-- ID 308: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A24, the projected misstatement for a sampled item in MUS is calculated by first determining the tainting percentage: ($400 minus $320) / $400 = 20%. The projected misstatement is then 20% multiplied by the $80,000 sampling interval, yielding $16,000. This projection estimates how much misstatement the sample item represents across the population stratum. Choice A is incorrect because using the raw dollar difference of $80 without applying the tainting percentage to the sampling interval would understate the projected misstatement. Choice C is incorrect because multiplying $80 by the sample size confuses the projection methodology.'
WHERE id = 308;

-- ID 309: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.14, if the projected misstatement plus the allowance for sampling risk exceeds tolerable misstatement, the auditor cannot conclude that the population is free from material misstatement at the desired confidence level. The auditor should then consider expanding the sample size, performing alternative procedures, or requesting management to investigate and adjust the balance. Choice A is incorrect because issuing an unmodified opinion without further action would be inappropriate — the sampling results indicate a risk of material misstatement that must be resolved. Choice B is incorrect because the auditor does not automatically issue a qualified opinion based on sampling results alone without first considering additional procedures.'
WHERE id = 309;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 94: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.210.010, an intimidation threat exists when the auditor may be deterred from acting objectively due to actual or perceived pressure from the client. A threat to replace the auditor over an unfavorable opinion is a classic intimidation threat because it pressures the auditor to compromise professional judgment. Choice B is incorrect because a self-interest threat arises from financial or other interests that could inappropriately influence the auditor''s judgment, such as fee dependency. Choice C is incorrect because a familiarity threat arises from long association or close relationships with the client, not from coercive pressure.'
WHERE id = 94;

-- ID 257: Ethics and Independence
UPDATE questions SET
  explanation = 'Under SEC Rule 2-01 of Regulation S-X, as referenced in the AICPA Code ET 1.224, a financial reporting oversight role (FROR) includes positions such as the CFO, controller, chief accounting officer, treasurer, and equivalent positions with direct influence over the preparation of financial statements. If a covered member''s close family member holds an FROR at the audit client, independence is impaired. Choice A is incorrect because the CEO, while a senior position, is not automatically classified as an FROR unless they have direct financial reporting oversight responsibilities. Choice C is incorrect because an external board member without financial reporting duties does not hold an FROR.'
WHERE id = 257;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (2 questions)
-- ============================================================

-- ID 1135: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS and the Uniform Guidance (2 CFR 200.510), the Schedule of Expenditures of Federal Awards (SEFA) lists all federal awards expended during the audit period and provides the basis for determining which programs are major programs subject to compliance testing in the single audit. The SEFA is prepared by the auditee and is a required supplementary schedule accompanying the financial statements. Choice A is incorrect because the SEFA does not list state awards — it is limited to federal awards. Choice C is incorrect because the SEFA reports expenditures during the period, not cumulative award amounts since inception.'
WHERE id = 1135;

-- ID 1418: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS (Government Auditing Standards) Chapter 3, auditors are prohibited from performing management functions for their government audit clients. This includes making policy decisions, directing or supervising entity employees, and performing management''s ongoing monitoring activities. Performing such functions creates a self-review threat that cannot be mitigated through safeguards. Choice A is incorrect because providing technical advice or training — as long as management makes all decisions — is generally permissible under GAGAS. Choice B is incorrect because preparing draft financial statements may be permissible with appropriate safeguards and management review, whereas performing management functions is an absolute prohibition.'
WHERE id = 1418;

-- ============================================================
-- INDEPENDENCE (1 question)
-- ============================================================

-- ID 4934: Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.210.010 (Conceptual Framework for Independence), the correct order for evaluating a threat is: (1) identify the threat to independence, (2) evaluate the significance of the threat, (3) apply safeguards to reduce the threat to an acceptable level, and (4) conclude whether independence is maintained. This systematic approach ensures all threats are properly assessed before a conclusion is reached. Choice A is incorrect because applying safeguards before evaluating the significance of the threat skips a critical analytical step — some threats may already be at an acceptable level without safeguards. Choice C is incorrect because concluding on independence before applying safeguards reverses the logical sequence.'
WHERE id = 4934;

-- ============================================================
-- INTERNAL CONTROLS (6 questions)
-- ============================================================

-- ID 286: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 402.15, before relying on a SOC 1 Type 2 report, the user auditor must evaluate whether the report covers the relevant period and controls pertinent to the user entity''s financial statements, assess the service auditor''s professional competence and independence, and determine whether complementary user entity controls (CUECs) identified in the report are in place and operating effectively. Choice A is incorrect because accepting the SOC 1 report without further evaluation fails to address whether the controls tested are relevant to the user entity''s specific assertions. Choice C is incorrect because the user auditor is not required to reperform the service auditor''s tests — evaluation of the report and testing CUECs is sufficient.'
WHERE id = 286;

-- ID 287: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 402.09, complementary user entity controls (CUECs) are controls that the service organization''s system design assumes the user entity will implement. These controls are necessary for the service organization''s controls to operate effectively and achieve their objectives. The user auditor must evaluate and test CUECs because the service organization''s control environment depends on them. Choice A is incorrect because CUECs are not controls implemented by the service organization — they are the user entity''s responsibility. Choice C is incorrect because CUECs are not optional safeguards; they are integral to the overall control structure described in the SOC 1 report.'
WHERE id = 287;

-- ID 288: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A30, reperformance is the strongest test of operating effectiveness because the auditor independently executes the control procedure and verifies whether the same result is obtained. This provides the most direct evidence that the control is functioning as designed. Choice A is incorrect because inquiry alone provides the weakest evidence of operating effectiveness — management''s statements about control operation are not sufficient without corroboration. Choice B is incorrect because observation provides evidence only for the specific point in time the auditor is watching and does not provide the same level of assurance as independently reperforming the control.'
WHERE id = 288;

-- ID 290: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 402.14, a SOC 1 Type 1 report covers the description and design of controls at a specific point in time, providing an opinion on whether controls are suitably designed. A SOC 1 Type 2 report goes further by also testing the operating effectiveness of those controls over a specified period (typically 6 to 12 months). Choice A is incorrect because a Type 1 report does not test operating effectiveness — that is the distinguishing feature of a Type 2 report. Choice C is incorrect because both report types address the service organization''s controls relevant to user entities'' financial reporting, not IT security broadly.'
WHERE id = 290;

-- ID 291: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A82, generalized audit software (GAS) allows the auditor to directly access and analyze electronic data files maintained by the client. GAS capabilities include sorting, summarizing, selecting samples, comparing files, detecting duplicates, and performing calculations — all without modifying original data. Choice A is incorrect because GAS does not design the client''s internal controls — it is a tool for testing and analyzing data. Choice B is incorrect because GAS is used to test data, not to prepare the client''s financial statements, which would impair independence under the AICPA Code.'
WHERE id = 291;

-- ID 292: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 265.13, when a material weakness is identified during a non-issuer audit, the auditor must communicate it in writing to management and those charged with governance no later than 60 days following the report release date. Significant deficiencies must also be communicated in writing within the same timeframe. Choice A is incorrect because oral communication alone is insufficient for material weaknesses — AU-C 265 specifically requires written communication. Choice C is incorrect because the communication is directed to management and those charged with governance, not to external regulatory authorities, unless specific legal requirements mandate such reporting.'
WHERE id = 292;

-- ============================================================
-- MATERIALITY (1 question)
-- ============================================================

-- ID 5016: Materiality
UPDATE questions SET
  explanation = 'Under AU-C 320.A3, when using net income before taxes as a benchmark for determining materiality, a percentage range of 5% to 10% is commonly applied, though the specific percentage depends on auditor judgment and the circumstances of the entity. For stable, mature entities, a lower percentage may be appropriate, while entities with volatile earnings may warrant different considerations. Choice A is incorrect because 1% to 2% is more commonly associated with total revenue or total assets as a benchmark, not net income. Choice C is incorrect because 15% to 20% would result in an unreasonably high materiality threshold relative to net income, increasing the risk of failing to detect material misstatements.'
WHERE id = 5016;

-- ============================================================
-- MISSTATEMENTS AND CONTROL DEFICIENCIES (2 questions)
-- ============================================================

-- ID 5112: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 265.07, a significant deficiency is a deficiency, or combination of deficiencies, in internal control that is less severe than a material weakness yet important enough to merit attention by those charged with governance. It indicates a control gap that could result in a misstatement that is more than inconsequential but does not rise to the level of a material weakness. Choice A is incorrect because a material weakness is defined as a reasonable possibility that a material misstatement will not be prevented or detected, which is a higher severity threshold. Choice C is incorrect because a control deficiency that has no practical impact on financial reporting would not meet the threshold to be classified as significant.'
WHERE id = 5112;

-- ID 5113: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 265.07, a material weakness is a deficiency, or combination of deficiencies, in internal control such that there is a reasonable possibility that a material misstatement of the entity''s financial statements will not be prevented, or detected and corrected, on a timely basis. This is the most severe classification of control deficiency. Choice A is incorrect because a significant deficiency is less severe — it merits attention but does not indicate a reasonable possibility of material misstatement going undetected. Choice C is incorrect because a remote likelihood of misstatement would not meet the "reasonable possibility" threshold required for material weakness classification.'
WHERE id = 5113;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 4912: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 315.A128, the existence assertion addresses whether assets, liabilities, and equity interests recorded in the financial statements actually exist at a given date. When verifying that recorded inventory physically exists, the auditor is primarily testing the existence assertion through procedures such as physical observation under AU-C 501.03. Choice A is incorrect because the completeness assertion addresses the opposite direction — whether all items that should be recorded have been included, not whether recorded items actually exist. Choice C is incorrect because the valuation assertion addresses whether items are recorded at appropriate amounts, not whether they physically exist.'
WHERE id = 4912;

-- ID 4914: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 200.06, reasonable assurance is a high, but not absolute, level of assurance obtained through an audit engagement involving extensive procedures such as tests of controls, substantive testing, and evaluation of evidence. Under AR-C 90.04, limited assurance — provided in a review engagement — involves primarily inquiry and analytical procedures and results in a lower level of assurance than an audit. Choice A is incorrect because limited assurance does not involve the same extent of procedures as reasonable assurance — it is specifically designed to provide a lower, cost-effective level of assurance. Choice C is incorrect because "absolute assurance" is not a recognized assurance level under professional standards.'
WHERE id = 4914;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 question)
-- ============================================================

-- ID 1351: Professional Responsibilities
UPDATE questions SET
  explanation = 'Under AU-C 210.13, when the client authorizes communication between auditors, the predecessor auditor should respond promptly and fully to the successor auditor''s reasonable inquiries. This includes sharing information about management integrity, disagreements with management on accounting or auditing matters, fraud or illegal acts, and reasons for the change in auditors. Choice A is incorrect because the predecessor is not required to provide complete access to all workpapers — only to respond to specific, reasonable inquiries. Choice C is incorrect because the predecessor cannot refuse to communicate once proper client authorization has been obtained, though confidentiality obligations still apply in the absence of authorization.'
WHERE id = 1351;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 question)
-- ============================================================

-- ID 4955: Professional Skepticism and Judgment
UPDATE questions SET
  explanation = 'Under AU-C 200.17, professional skepticism requires the auditor to critically assess audit evidence without being biased toward either confirming or contradicting management''s assertions. Developing an independent expectation and comparing it to management''s estimate most clearly demonstrates professional skepticism because it requires the auditor to form their own judgment before evaluating management''s position under AU-C 540.13. Choice A is incorrect because simply accepting management''s estimate without independent analysis fails to demonstrate the questioning mind required by AU-C 200. Choice C is incorrect because relying solely on prior-year figures without current analysis does not constitute critical assessment of current-period estimates.'
WHERE id = 4955;

-- ============================================================
-- QUALITY MANAGEMENT (2 questions)
-- ============================================================

-- ID 138: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS No. 2.04, an engagement quality review (EQR) is required for audits of listed entities (public companies) and other engagements for which the firm determines an EQR is appropriate based on its quality management policies. The firm''s risk assessment process under SQMS No. 1 identifies additional engagement types warranting an EQR. Choice A is incorrect because an EQR is not required for every engagement the firm performs — it is mandatory only for listed-entity audits and other engagements the firm designates. Choice C is incorrect because compilation and preparation engagements under AR-C 70 and AR-C 80 do not typically require an EQR.'
WHERE id = 138;

-- ID 139: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS No. 2.18, the engagement quality reviewer is not required to reperform all audit procedures or examine all working papers. Rather, the reviewer evaluates significant judgments made by the engagement team, reviews critical areas of the engagement, and assesses whether appropriate consultations occurred and conclusions were reached. The role is one of oversight and evaluation, not duplication of effort. Choice A is incorrect because requiring the reviewer to reperform all procedures would be impractical and redundant — the standard requires evaluation of significant matters, not comprehensive re-testing. Choice C is incorrect because the reviewer does not perform fieldwork or gather new audit evidence.'
WHERE id = 139;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (1 question)
-- ============================================================

-- ID 5038: Responding to Assessed Risks
UPDATE questions SET
  explanation = 'Under AU-C 330.08, when the auditor plans to rely on controls to reduce the nature, timing, or extent of substantive procedures, the auditor must first test the operating effectiveness of those controls. Merely understanding the design of a control is insufficient to support a reduction in substantive testing — the auditor must obtain evidence that the control actually operated effectively during the period under audit. Choice A is incorrect because understanding the design of controls without testing their operating effectiveness provides no basis for reducing substantive procedures. Choice C is incorrect because management representations about control effectiveness are not a substitute for the auditor''s own testing under AU-C 330.'
WHERE id = 5038;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 347: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 80.23, independence is not required for a compilation engagement, though the accountant must disclose a lack of independence in the compilation report. Similarly, under AR-C 70.04, independence is not required for a preparation engagement. By contrast, independence is required for review engagements under AR-C 90.21 and for audit engagements under AU-C 200.15. Choice A is incorrect because review engagements require independence — the accountant cannot perform a review if independence is impaired. Choice B is incorrect because audit engagements have the strictest independence requirements among SSARS and GAAS engagements.'
WHERE id = 347;

-- ID 1753: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.24, the two principal procedures in a review engagement are inquiry of management and analytical procedures. These procedures form the basis for the accountant to obtain limited assurance that no material modifications should be made to the financial statements for them to be in accordance with the applicable financial reporting framework. Choice A is incorrect because tests of controls and substantive testing are audit procedures under AU-C 330, not review procedures. Choice C is incorrect because physical observation and confirmation are also audit-level procedures that exceed the scope of a review engagement under AR-C 90.'
WHERE id = 1753;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 132: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 70.05, a preparation engagement does not require the accountant to issue a report — instead, each page of the financial statements must include a legend stating "No assurance is provided on these financial statements." Under AR-C 80.20, a compilation engagement requires the accountant to issue a written compilation report. Neither engagement provides assurance on the financial statements. Choice A is incorrect because a compilation does require a report, whereas a preparation does not — this is the key distinction. Choice C is incorrect because neither engagement involves verification of balances or testing of transactions.'
WHERE id = 132;

-- ID 1788: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.30, the accountant should inquire about related-party transactions during a review engagement to determine whether they have been properly identified, accounted for, and disclosed in accordance with the applicable financial reporting framework. Related-party transactions present heightened risk because they may not be conducted at arm''s length. Choice A is incorrect because the purpose is not to confirm the existence of the related parties themselves, but to evaluate the accounting treatment and disclosure of the transactions. Choice C is incorrect because detecting fraud is not the primary objective of inquiry about related-party transactions in a review — that inquiry serves the broader goal of identifying potential material misstatements.'
WHERE id = 1788;

-- ============================================================
-- RISK ASSESSMENT (3 questions)
-- ============================================================

-- ID 277: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.A128, the completeness assertion addresses whether all transactions, events, and disclosures that should be included in the financial statements have in fact been recorded and reported. In a highly regulated industry with frequent regulatory changes, the greatest risk is that required disclosures may be incomplete because management may not identify or keep pace with evolving requirements. Choice A is incorrect because the existence assertion addresses whether recorded items actually exist, which is less directly affected by regulatory change. Choice C is incorrect because the valuation assertion addresses amounts, not the risk of omitting disclosures driven by new or changing regulations.'
WHERE id = 277;

-- ID 278: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 200.A42, the audit risk model (Audit Risk = Risk of Material Misstatement x Detection Risk) establishes that when both inherent risk and control risk are assessed as high, the overall risk of material misstatement is high. To maintain audit risk at an acceptably low level, the auditor must compensate by setting detection risk low, meaning more persuasive, extensive, and timely audit procedures are required. Choice A is incorrect because setting detection risk high when the risk of material misstatement is high would result in unacceptably high audit risk. Choice C is incorrect because detection risk cannot be set at a moderate level when both components of the risk of material misstatement are high.'
WHERE id = 278;

-- ID 279: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 240.A25, the fraud triangle consists of three elements: incentive/pressure, opportunity, and rationalization/attitude. Financial difficulties combined with management compensation tied to earnings targets create incentive or pressure — the motivation for management to manipulate financial results to meet bonus thresholds. Choice A is incorrect because opportunity relates to circumstances that allow fraud to be committed, such as weak internal controls or lack of oversight, not financial pressure. Choice C is incorrect because rationalization relates to the mindset that allows individuals to justify fraudulent behavior, not the external financial conditions driving the behavior.'
WHERE id = 279;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (2 questions)
-- ============================================================

-- ID 317: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 570.12, when the auditor identifies conditions or events that raise substantial doubt about going concern — such as recurring operating losses and working capital deficiency — the auditor must evaluate management''s plans to mitigate the conditions. Management''s plans may include asset dispositions, debt restructuring, cost reductions, or capital raising, and the auditor must assess whether those plans are feasible and likely to be effective. Choice A is incorrect because the auditor does not immediately issue an adverse opinion upon identifying going concern indicators — the evaluation of management''s plans is required first. Choice C is incorrect because withdrawing from the engagement is not the appropriate response to going concern uncertainty.'
WHERE id = 317;

-- ID 319: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 570.20 and AU-C 706.06, when substantial doubt about going concern exists and the entity provides adequate disclosure, the auditor should issue an unmodified opinion with an emphasis-of-matter paragraph that draws attention to the going concern disclosure in the notes. The emphasis-of-matter paragraph does not modify the opinion but alerts users to the significant uncertainty. Choice A is incorrect because a qualified opinion is not appropriate when going concern is adequately disclosed — the modification would be an emphasis-of-matter paragraph with an unmodified opinion. Choice C is incorrect because a disclaimer of opinion applies to scope limitations, not to going concern situations where sufficient evidence has been obtained.'
WHERE id = 319;

-- ============================================================
-- TERMS OF ENGAGEMENT (1 question)
-- ============================================================

-- ID 4973: Terms of Engagement
UPDATE questions SET
  explanation = 'Under AU-C 210.16, if management requests a change in engagement from an audit to a review after audit work is substantially completed, the auditor should evaluate whether there is reasonable justification for the change. Legitimate reasons include a change in client circumstances or a misunderstanding of the original engagement scope. However, if the request appears intended to limit the scope of the engagement or to avoid an adverse finding or modified opinion, the auditor should not agree to the change. Choice A is incorrect because automatically accepting the downgrade without evaluating management''s reasoning violates AU-C 210. Choice C is incorrect because the auditor is not required to withdraw — the auditor may continue the original audit engagement.'
WHERE id = 4973;

-- ============================================================
-- TESTS OF CONTROLS (2 questions)
-- ============================================================

-- ID 5074: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.14, if the auditor plans to rely on controls that were tested in a prior audit and have not changed, the auditor must still test the operating effectiveness of those controls in the current period. AU-C 330.15 permits a rotation approach in which each control is tested at least once every third audit, but some controls must be tested each year — particularly controls over significant risks. Choice A is incorrect because completely skipping tests of controls in the current year without any current-period evidence is not permitted, even if the controls were tested previously. Choice C is incorrect because the standard does not require full retesting of every control annually when a rotation approach is appropriate.'
WHERE id = 5074;

-- ID 5076: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A30, reperformance as a test of controls involves the auditor independently executing the same procedure or control that entity personnel performed, then comparing the auditor''s result to the entity''s result. This provides direct evidence of whether the control operated effectively. Reperformance is considered one of the most reliable forms of evidence about control operating effectiveness. Choice A is incorrect because observing entity personnel perform the control is the observation method, not reperformance — observation provides evidence only for the moment observed. Choice C is incorrect because inquiring of personnel about how the control works tests understanding of design, not operating effectiveness.'
WHERE id = 5076;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 question)
-- ============================================================

-- ID 4994: Understanding the Entity and Environment
UPDATE questions SET
  explanation = 'Under AU-C 315.A59, reviewing board of directors'' minutes helps the auditor identify significant decisions, commitments, and events that may affect the financial statements. This includes authorization of major transactions, related-party matters, litigation, changes in accounting policies, and other governance decisions. Board minutes are a rich source of information for risk assessment procedures. Choice A is incorrect because the primary purpose of reviewing minutes is not to evaluate internal controls — it is to identify significant matters and events relevant to the audit. Choice C is incorrect because verifying individual account balances is a substantive procedure, not the purpose of reviewing governance minutes.'
WHERE id = 4994;

-- ============================================================
-- USING THE WORK OF OTHERS (1 question)
-- ============================================================

-- ID 5055: Using the Work of Others
UPDATE questions SET
  explanation = 'Under AU-C 402.14, a Type 2 SOC 1 report differs from a Type 1 report primarily because a Type 2 report includes tests of the operating effectiveness of controls over a specified period, typically 6 to 12 months. A Type 1 report addresses only the description and design of controls at a specific point in time without testing whether the controls actually operated effectively. Choice A is incorrect because both Type 1 and Type 2 reports include a description of the service organization''s system — the distinguishing feature is the testing of operating effectiveness. Choice C is incorrect because neither report type provides an opinion on the fairness of the user entity''s financial statements.'
WHERE id = 5055;

-- ============================================================
-- WRITTEN REPRESENTATIONS (1 question)
-- ============================================================

-- ID 5133: Written Representations
UPDATE questions SET
  explanation = 'Under AU-C 580.14, if management refuses to provide one or more of the required written representations, the auditor should discuss the matter with management, reevaluate management''s integrity, and determine the effect on the audit opinion. A refusal to provide required representations constitutes a scope limitation because the representation letter is required audit evidence under AU-C 580.09, and the absence of this evidence typically results in a qualified opinion or disclaimer of opinion. Choice A is incorrect because the auditor cannot issue an unmodified opinion when required representations are refused — this represents a significant scope limitation. Choice C is incorrect because simply documenting the refusal without modifying the opinion fails to address the impact of missing evidence on the audit.'
WHERE id = 5133;

COMMIT;
