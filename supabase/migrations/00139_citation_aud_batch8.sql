-- Migration: Citation backfill — AUD batch 8 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Misstatements and Control Deficiencies, Nature and Scope of Engagements, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others, Written Representations

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (1 question)
-- ============================================================

-- ID 5096: Analytical Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.A3, analytical procedures can incorporate non-financial data to develop expectations about financial amounts. For example, an auditor might use square footage of retail space multiplied by average rental rates to estimate rental revenue, or use production capacity and operating hours to estimate output-related costs. AU-C 520.A5 notes that non-financial data from reliable sources can provide highly persuasive analytical evidence because it is independent of the accounting system. Choice A is incorrect because prior-year financial data alone is less precise than combining financial and non-financial inputs. Choice C is incorrect because reviewing journal entries is an inspection procedure under AU-C 500, not an analytical procedure.'
WHERE id = 5096;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (1 question)
-- ============================================================

-- ID 1822: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 205.57, an unqualified examination opinion uses positive assurance language: "In our opinion, [the subject matter] is presented, in all material respects, based on [the criteria]." This is the highest level of assurance in an attestation engagement. Choice A is incorrect because negative assurance language ("nothing came to our attention") is used in review-level engagements under AT-C 210, not examinations. Choice B is incorrect because a disclaimer states that the practitioner does not express an opinion. Choice C is incorrect because reporting factual findings without an opinion describes an agreed-upon procedures engagement under AT-C 215.'
WHERE id = 1822;

-- ============================================================
-- AUDIT EVIDENCE (4 questions)
-- ============================================================

-- ID 1597: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 580.20, the management representation letter should be dated as of the date of the auditor''s report, which is the date the auditor has obtained sufficient appropriate evidence on which to base the opinion. AU-C 580.A19 explains that dating the letter as of the report date ensures that representations cover all events and transactions through that date. Choice A is incorrect because the balance sheet date would leave a gap between year-end and the report date when events could occur. Choice B is incorrect because the last day of fieldwork may differ from the report date.'
WHERE id = 1597;

-- ID 1598: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 580.19, if management refuses to provide one or more requested written representations, this constitutes a scope limitation. AU-C 580.21 requires the auditor to disclaim an opinion because written representations are required audit evidence under AU-C 580.09, and oral representations cannot substitute for them. The auditor should also consider the implications for the reliability of other representations. Choice A is incorrect because accepting oral representations in lieu of written ones does not meet the requirements of AU-C 580. Choice B is incorrect because issuing an unmodified opinion would be inappropriate given the scope limitation.'
WHERE id = 1598;

-- ID 1599: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 560.09, a Type I (recognized) subsequent event provides additional evidence about conditions that existed at the balance sheet date. A customer bankruptcy occurring after year-end that reveals the uncollectibility of a receivable existing at year-end requires adjustment of the financial statements because the condition (financial difficulty) existed at the balance sheet date. AU-C 560.A8 distinguishes this from Type II events, which arise after the balance sheet date. Choice A is incorrect because a Type II event involves new conditions that arose after year-end, not pre-existing conditions. Choice C is incorrect because ignoring the event entirely would result in misstated financial statements.'
WHERE id = 1599;

-- ID 1600: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 560.10, a Type II (non-recognized) subsequent event provides evidence about conditions that arose after the balance sheet date. A fire destroying a manufacturing facility after year-end represents a new condition that did not exist at the balance sheet date, so the financial statements are not adjusted. However, AU-C 560.A12 requires disclosure if the event is so significant that its omission would make the financial statements misleading. Choice A is incorrect because adjusting the financial statements would be appropriate only for a Type I event where the condition existed at year-end. Choice B is incorrect because material Type II events require disclosure even though they do not affect recorded amounts.'
WHERE id = 1600;

-- ============================================================
-- AUDIT PLANNING (3 questions)
-- ============================================================

-- ID 1452: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 210.06, the auditor must establish an understanding with the client regarding the terms of the engagement, and AU-C 210.10 requires this understanding to be documented in an engagement letter (or other suitable written agreement). The letter specifies the audit objective, management and auditor responsibilities, the applicable financial reporting framework, and the expected form and content of reports. Choice A is incorrect because the management representation letter is obtained near the end of the audit under AU-C 580, not during engagement planning. Choice C is incorrect because a comfort letter relates to securities offerings under AU-C 920, not to engagement terms.'
WHERE id = 1452;

-- ID 1453: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 320.04, materiality is typically calculated as a percentage of a financial benchmark. When total assets or revenues significantly increase, the materiality amount calculated from that benchmark increases proportionally. AU-C 320.A3 provides guidance on selecting appropriate benchmarks based on the nature of the entity. Choice A is incorrect because a first-year engagement might cause the auditor to use a lower percentage due to increased risk, which would decrease rather than increase materiality. Choice C is incorrect because regulatory oversight or management turnover might cause the auditor to lower the percentage applied, not increase the benchmark-based calculation.'
WHERE id = 1453;

-- ID 1454: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 315.12, when the auditor discovers a change in the entity''s revenue recognition policy during planning, this directly impacts risk assessment and planned audit procedures. AU-C 315.A60 requires the auditor to evaluate whether the accounting policy change is appropriate under the applicable financial reporting framework, properly applied, and adequately disclosed. AU-C 330.07 then requires the auditor to design further audit procedures responsive to the assessed risks. Choice A is incorrect because the auditor cannot defer consideration of an accounting policy change to the reporting phase. Choice B is incorrect because simply noting the change without evaluating its propriety fails to meet the risk assessment requirements.'
WHERE id = 1454;

-- ============================================================
-- AUDIT REPORTS (1 question)
-- ============================================================

-- ID 1719: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 706.08, an other-matter paragraph refers to a matter not presented or disclosed in the financial statements that is relevant to users'' understanding of the audit, the auditor''s responsibilities, or the auditor''s report. AU-C 706.06 distinguishes this from an emphasis-of-matter paragraph, which draws attention to a matter that is appropriately presented or disclosed in the financial statements. Choice A is incorrect because an emphasis-of-matter paragraph addresses matters already disclosed in the financial statements, not matters outside them. Choice C is incorrect because both paragraph types do not modify the auditor''s opinion.'
WHERE id = 1719;

-- ============================================================
-- AUDIT SAMPLING (4 questions)
-- ============================================================

-- ID 1636: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.05, statistical sampling uses random selection methods and applies probability theory to evaluate results, providing a mathematical measurement of sampling risk. Nonstatistical sampling relies on the auditor''s professional judgment for both sample selection and evaluation of results. AU-C 530.A1 confirms that both methods are acceptable under auditing standards and can provide sufficient appropriate audit evidence when properly designed. Choice A is incorrect because neither method is inherently superior — the choice depends on the auditor''s circumstances and judgment. Choice C is incorrect because nonstatistical sampling can also provide reliable results when the auditor exercises proper judgment in design and evaluation.'
WHERE id = 1636;

-- ID 1637: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A13, systematic selection involves selecting items at a uniform interval (every nth item) with a random starting point. Selecting every 20th invoice from a population of 2,000 with a random start is systematic selection. AU-C 530.A14 notes this method produces an approximately random sample provided the population does not contain a pattern that coincides with the selection interval. Choice A is incorrect because random number selection uses a random number generator to identify specific items, not a fixed interval. Choice C is incorrect because block selection involves selecting contiguous items, such as all transactions in a specific week.'
WHERE id = 1637;

-- ID 1638: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A12, haphazard selection involves choosing items without a structured methodology, and AU-C 530.A12 warns that the primary risk is unconscious bias. The auditor may unintentionally avoid items that are difficult to locate, in poor condition, or in inconvenient locations, potentially producing a sample that is not representative of the population. Choice A is incorrect because haphazard selection does not inherently produce larger samples than other methods. Choice B is incorrect because the risk relates to representativeness, not processing speed. Choice C is incorrect because the main concern is bias in selection, not the total number of items tested.'
WHERE id = 1638;

-- ID 1639: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A19, monetary unit sampling (MUS) treats each individual dollar as a sampling unit, giving every dollar an equal probability of selection. AU-C 530.A20 explains that as a result, items with larger recorded amounts have a proportionally higher chance of being included in the sample. This focuses audit effort on the largest items, which have the greatest potential for material misstatement. Choice A is incorrect because MUS is most effective for testing overstatement, not understatement. Choice B is incorrect because MUS may not be suitable when many misstatements are expected, as it tends to overstate the projected misstatement in such cases.'
WHERE id = 1639;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 1320: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.200.010, the period of the professional engagement begins when the CPA either signs an initial engagement letter or begins to perform any attest services, whichever is earlier. Independence must be maintained throughout this entire period through the date of the final report. Choice A is incorrect because the period starts before fieldwork commences — it begins at engagement acceptance or when attest services begin. Choice D is incorrect because the report issuance date marks the end of the independence period, not the beginning.'
WHERE id = 1320;

-- ID 1322: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.210.010, rotating the engagement partner is the most effective safeguard against familiarity threats arising from long association with an audit client. A fresh perspective from a new engagement leader helps ensure objectivity is maintained. For SEC issuers, PCAOB rules require mandatory partner rotation after five years. Choice B is incorrect because increasing fees does not address the familiarity threat — it relates to self-interest, not familiarity. Choice D is incorrect because reducing audit scope is never an appropriate response to an independence threat and would violate auditing standards.'
WHERE id = 1322;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (2 questions)
-- ============================================================

-- ID 1421: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS and the Uniform Guidance (2 CFR 200.518), the auditor identifies major programs using a risk-based approach. The auditor considers the dollar threshold — Type A programs are those exceeding the larger of $750,000 or 3% of total federal awards — and performs a risk assessment of individual programs. The auditor must test enough programs to cover at least 40% of total federal expenditures (or 20% for low-risk auditees). Choice A is incorrect because the entity does not select its own major programs; the determination is made by the auditor. Choice C is incorrect because simply testing the largest programs without applying the risk-based methodology does not comply with the Uniform Guidance.'
WHERE id = 1421;

-- ID 1422: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS Chapter 6 and Government Auditing Standards, in a Yellow Book financial audit the auditor must issue a separate report (or combined report) on internal control over financial reporting and on compliance with provisions of laws, regulations, contracts, and grant agreements that could have a material effect on the financial statements. This reporting requirement is in addition to the opinion on the financial statements themselves. Choice A is incorrect because a Yellow Book audit requires more than just a standard GAAS opinion — the additional internal control and compliance reporting is mandatory. Choice C is incorrect because the auditor cannot omit the compliance and internal control report when conducting a GAGAS engagement.'
WHERE id = 1422;

-- ============================================================
-- INDEPENDENCE (1 question)
-- ============================================================

-- ID 4940: Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.279.020, independence is impaired when a former partner joins an audit client in a key position and retains financial ties to the firm — such as retirement benefits dependent on firm revenues or capital balances not yet fully liquidated. The combination of influence over the client''s financial reporting and ongoing financial interests in the audit firm creates both familiarity and self-interest threats that cannot be adequately mitigated. Choice A is incorrect because a clean break (no ongoing financial ties) with appropriate cooling-off period would not necessarily impair independence. Choice C is incorrect because the former partner''s role at the client, not mere departure from the firm, is the relevant factor.'
WHERE id = 4940;

-- ============================================================
-- INTERNAL CONTROLS (8 questions)
-- ============================================================

-- ID 1539: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A76, entity-level controls operate at a broad level and have a pervasive effect on the organization''s entire internal control system. Examples include the control environment (tone at the top, governance oversight), entity-wide risk assessment processes, management monitoring activities, and the internal audit function. These controls affect multiple processes, accounts, and assertions rather than specific transactions. Choice A is incorrect because controls that operate within a specific business process (such as invoice matching) are transaction-level controls, not entity-level controls. Choice B is incorrect because IT application controls are process-specific, not entity-wide.'
WHERE id = 1539;

-- ID 1540: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A94, the information and communication component of COSO internal control requires the entity to identify, capture, and communicate relevant information — both financial and non-financial — in a form and timeframe that enables people to carry out their responsibilities. AU-C 315.A95 emphasizes that communication should flow in all directions: downward from management, upward from employees, and across the organization between departments. Choice A is incorrect because restricting information to senior management only would undermine the component''s requirement for broad communication. Choice C is incorrect because the component addresses all relevant information, not just financial reporting data.'
WHERE id = 1540;

-- ID 1541: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.14, the auditor''s evaluation of internal controls follows a two-step progression: first evaluating the design of the control (determining whether it is capable of preventing or detecting and correcting misstatements) and then determining whether the control has been implemented (placed in operation). AU-C 330.10 adds a third step — if the auditor plans to rely on the control, testing its operating effectiveness over the relevant period. Choice A is incorrect because implementation assessment comes before operating effectiveness testing in the evaluation sequence. Choice C is incorrect because design evaluation precedes all other steps.'
WHERE id = 1541;

-- ID 1542: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A90, authorization controls ensure that transactions are executed only with proper approval from management at the appropriate level. General authorization establishes policies for routine transactions (e.g., credit limits up to a specified amount), while specific authorization requires individual management approval for non-routine or significant transactions (e.g., capital expenditures above a threshold). Choice A is incorrect because segregation of duties divides responsibilities among different individuals, which is a separate control concept from authorization. Choice C is incorrect because physical safeguards protect assets from unauthorized access, not transaction authorization.'
WHERE id = 1542;

-- ID 1543: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A99, information processing controls ensure the completeness, accuracy, and authorization of transaction processing within specific applications. An automated three-way match — comparing purchase orders, receiving reports, and vendor invoices — is an information processing control that verifies accuracy and completeness of accounts payable transactions. Choice A is incorrect because locking the warehouse is a physical control that protects assets from unauthorized access. Choice B is incorrect because a code of ethics is a control environment element under AU-C 315.A77, not an information processing control. Choice C is incorrect because user IDs and passwords are access controls classified as ITGCs under AU-C 315.A98.'
WHERE id = 1543;

-- ID 1544: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A85, the risk assessment component of COSO internal control requires the entity to identify and analyze risks relevant to the achievement of its objectives. This includes identifying changes in the internal and external environment, assessing the significance and likelihood of identified risks, and determining appropriate responses to manage those risks. AU-C 315.A86 notes that the entity''s risk assessment process considers changes in the regulatory environment, new personnel, and new or redesigned information systems. Choice A is incorrect because the goal of risk assessment is risk management, not risk elimination — some level of risk is inherent in all business activities. Choice C is incorrect because risk assessment must be ongoing, not a one-time exercise.'
WHERE id = 1544;

-- ID 1545: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A99, application controls operate within specific IT applications to ensure the completeness, accuracy, authorization, and validity of data capture and transaction processing. These include input controls (validation checks ensuring data entered meets defined criteria), processing controls (ensuring calculations and data manipulations are correct), and output controls (verifying completeness and distribution of results). Choice A is incorrect because password policies are access security controls classified as ITGCs under AU-C 315.A98, not application controls. Choice B is incorrect because backup procedures are computer operations controls, another category of ITGCs.'
WHERE id = 1545;

-- ID 1546: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A25, when testing the operating effectiveness of a manual control performed daily, the auditor needs a sample large enough to provide sufficient evidence that the control operated effectively throughout the entire period under audit. AU-C 530.A6 notes that the auditor should consider the frequency of the control''s operation and the length of the audit period. A single observation or testing only the last month would not cover the full period. Choice A is incorrect because a single observation provides no assurance about operating effectiveness over the period. Choice C is incorrect because testing only the last month ignores the remaining months when the control may not have operated effectively.'
WHERE id = 1546;

-- ============================================================
-- MATERIALITY (1 question)
-- ============================================================

-- ID 5019: Materiality
UPDATE questions SET
  explanation = 'Under AU-C 320.10, the auditor may determine that specific materiality levels lower than materiality for the financial statements as a whole are appropriate for particular classes of transactions, account balances, or disclosures. AU-C 320.A12 explains that this applies when, in the specific circumstances of the entity, misstatements of lesser amounts could reasonably be expected to influence users'' economic decisions — such as related party disclosures, executive compensation, or regulatory compliance amounts. Choice A is incorrect because specific materiality is not set for every account — only for those where users have heightened sensitivity. Choice C is incorrect because specific materiality is based on user expectations, not on the auditor''s convenience in testing.'
WHERE id = 5019;

-- ============================================================
-- MISSTATEMENTS AND CONTROL DEFICIENCIES (1 question)
-- ============================================================

-- ID 5117: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 450.08, when management chooses not to correct identified misstatements, the auditor should obtain an understanding of management''s reasons for not correcting them. AU-C 450.10 requires the auditor to request a written representation acknowledging that management has been informed of the uncorrected misstatements and believes the effects are immaterial. The auditor must then evaluate under AU-C 450.11 whether the aggregate of uncorrected misstatements is material; if so, the auditor should modify the opinion under AU-C 705. Choice A is incorrect because the auditor cannot accept uncorrected material misstatements without consequence to the report. Choice C is incorrect because the auditor should first seek correction rather than immediately withdrawing.'
WHERE id = 5117;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (1 question)
-- ============================================================

-- ID 4916: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 200.03, in a financial statement audit the auditor expresses an opinion on whether the financial statements are presented fairly, in all material respects, in accordance with the applicable financial reporting framework (e.g., U.S. GAAP or IFRS). AU-C 200.14 defines the applicable financial reporting framework as the framework adopted by management for the preparation and fair presentation of the financial statements. Choice A is incorrect because the auditor does not evaluate compliance with management''s internal policies — the opinion is based on the external financial reporting framework. Choice B is incorrect because tax regulations are not the applicable framework for general purpose financial statements.'
WHERE id = 4916;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 question)
-- ============================================================

-- ID 1364: Professional Responsibilities
UPDATE questions SET
  explanation = 'Under AU-C 510.09, the successor auditor should evaluate evidence from the predecessor''s workpapers when they reveal significant matters such as fraud. AU-C 240.41 requires the auditor to assess whether the fraud is ongoing or has current-period implications and to communicate findings with those charged with governance under AU-C 260. The immediate priority is understanding the impact on the current engagement before determining whether further reporting obligations exist. Choice A is incorrect because immediately contacting law enforcement may be premature before the auditor understands the scope and current relevance of the fraud. Choice B is incorrect because ignoring the predecessor''s evidence would violate the auditor''s professional obligations.'
WHERE id = 1364;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 question)
-- ============================================================

-- ID 4958: Professional Skepticism and Judgment
UPDATE questions SET
  explanation = 'Under AU-C 240.13, when management compensation is heavily tied to achieving specific financial targets, there is an increased incentive for management to bias the financial statements, which heightens the risk of material misstatement due to fraud. AU-C 200.17 requires the auditor to maintain professional skepticism throughout the audit, and AU-C 240.A26 identifies incentive compensation tied to financial targets as a fraud risk factor requiring heightened scrutiny of management estimates and judgments. Choice A is incorrect because stable compensation structures without performance incentives present lower fraud risk. Choice C is incorrect because a strong independent board with effective oversight would mitigate, not increase, the need for heightened skepticism.'
WHERE id = 4958;

-- ============================================================
-- QUALITY MANAGEMENT (1 question)
-- ============================================================

-- ID 367: Quality Management
UPDATE questions SET
  explanation = 'Under AICPA Code of Professional Conduct and SQMS standards, peer review ratings use three categories: pass (the system of quality control is suitably designed and operating effectively), pass with deficiencies (generally effective but with identified deficiencies requiring corrective action), and fail (the system is not suitably designed or not operating effectively). Choice A is incorrect because "satisfactory/needs improvement/unsatisfactory" is not the terminology used by the AICPA Code peer review program. Choice C is incorrect because "clean/modified/adverse" describes audit opinion types, not peer review ratings.'
WHERE id = 367;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (1 question)
-- ============================================================

-- ID 5041: Responding to Assessed Risks
UPDATE questions SET
  explanation = 'Under AU-C 330.12, when substantive procedures are performed at an interim date, there is a risk that misstatements existing at period end are not detected. AU-C 330.A40 requires the auditor to perform additional substantive procedures, tests of controls, or a combination of both for the remaining period (from the interim date to period end) to bridge the gap and provide a reasonable basis for extending conclusions to the reporting date. Choice A is incorrect because performing interim procedures alone without covering the remaining period leaves a gap in audit coverage. Choice C is incorrect because simply relying on management representations for the remaining period does not provide sufficient appropriate audit evidence.'
WHERE id = 5041;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 1760: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.26, in a review engagement management is responsible for the preparation and fair presentation of the financial statements, maintaining adequate internal controls, and providing the accountant with all information relevant to the engagement. Performing analytical procedures is the accountant''s responsibility under AR-C 90.32, not management''s. Choice A is incorrect because the accountant, not management, performs analytical procedures as part of the review engagement. Choice B is incorrect because management''s responsibilities are specifically defined in AR-C 90.26 and do not include executing audit or review procedures.'
WHERE id = 1760;

-- ID 1761: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.36, written representations from management are required for all review engagements. The representation letter confirms management''s responsibility for the financial statements, completeness of information provided, and other relevant matters specified in AR-C 90.37. AR-C 90.38 provides that failure to obtain the letter represents a scope limitation that may require the accountant to withdraw from the engagement. Choice A is incorrect because management representations are mandatory, not optional, in a review engagement. Choice C is incorrect because oral representations alone cannot substitute for the required written letter.'
WHERE id = 1761;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1796: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.A66, when the accountant becomes aware of subsequently discovered information indicating the financial statements may be materially misstated — such as a material inventory overstatement due to a counting error — the accountant should discuss the matter with management, request revision of the financial statements if appropriate, and consider whether users need to be informed about the revision and its impact on the review report. Choice A is incorrect because ignoring material subsequently discovered information would violate the accountant''s professional obligations. Choice B is incorrect because the accountant should first seek management''s cooperation in revising the statements before considering withdrawal.'
WHERE id = 1796;

-- ID 1797: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.46, a change from a review to a compilation may be acceptable when there is a reasonable justification, such as a change in management''s requirements, a change in circumstances affecting the need for a review, or a misunderstanding of the nature of the service originally requested. However, AR-C 90.47 states the accountant should not agree to the change if the reason appears to be an attempt to avoid disclosure of a known misstatement or to prevent the accountant from discovering one. Choice A is incorrect because automatically agreeing to any downgrade request without evaluating the reason could enable manipulation. Choice C is incorrect because a legitimate change in requirements is an acceptable reason for the change.'
WHERE id = 1797;

-- ============================================================
-- RISK ASSESSMENT (3 questions)
-- ============================================================

-- ID 1502: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.A30, inherent risk factors include the susceptibility of an assertion to misstatement before considering related controls. High-value raw materials subject to price fluctuations and obsolescence risk increase inherent risk for inventory valuation because these factors introduce estimation uncertainty and greater susceptibility to misstatement under AU-C 315.A31. Choice A is incorrect because a perpetual inventory system is an internal control that would tend to reduce control risk, not increase inherent risk. Choice B is incorrect because experienced accounting staff would reduce, not increase, the likelihood of misstatement. Choice C is incorrect because low materiality relative to total assets does not itself increase inherent risk.'
WHERE id = 1502;

-- ID 1503: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 330.05, when risks are assessed at the financial statement level (pervasive risks affecting multiple assertions), the auditor designs overall responses that address the audit as a whole. AU-C 330.A1 identifies appropriate overall responses such as assigning more experienced staff, increasing the level of supervision, incorporating unpredictability into procedure selection, and making general changes to the nature, timing, or extent of procedures. Choice A is incorrect because simply increasing sample sizes for specific accounts addresses assertion-level risk, not financial statement level risk. Choice B is incorrect because reducing staffing levels would be the opposite of an appropriate response to elevated risk.'
WHERE id = 1503;

-- ID 1504: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 240.A26, financial pressure to meet earnings forecasts represents an incentive or pressure — one of the three conditions in the fraud risk triangle described in AU-C 240.A1 (incentive/pressure, opportunity, and attitude/rationalization). This type of pressure can motivate management to manipulate earnings through improper revenue recognition, understatement of expenses, or other fraudulent financial reporting schemes. Choice A is incorrect because an "opportunity" refers to circumstances that allow fraud to be perpetrated, such as weak internal controls, not the motivation to commit fraud. Choice C is incorrect because "attitude/rationalization" refers to a mindset that justifies the fraudulent act, not the external pressure itself.'
WHERE id = 1504;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (1 question)
-- ============================================================

-- ID 5154: Specific Areas and Transactions
UPDATE questions SET
  explanation = 'Under AU-C 550.12, procedures for identifying related parties include inquiring of management about related party relationships and transactions, reviewing entity records such as shareholder registers and board minutes, examining prior-year workpapers, and reviewing public filings. AU-C 550.A19 notes that while accounts receivable confirmations under AU-C 505 may incidentally reveal related party information, they are not primarily a related party identification procedure. Choice A is incorrect because confirmations are designed to verify balances, not to systematically identify related parties. Choice C is incorrect because relying solely on management inquiry without corroborating procedures would be insufficient.'
WHERE id = 5154;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (3 questions)
-- ============================================================

-- ID 1681: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 560.09, because the underlying event giving rise to the lawsuit occurred before year-end, the lawsuit filed after the balance sheet date provides additional evidence about a condition existing at the balance sheet date — making this a Type I (recognized) subsequent event. AU-C 560.A8 requires the auditor to evaluate whether the financial statements should be adjusted to reflect the probable loss, or at minimum ensure proper disclosure under ASC 450 (contingencies). Choice A is incorrect because treating the lawsuit as a Type II event would incorrectly suggest the condition arose after year-end. Choice B is incorrect because ignoring the event would result in potentially misstated financial statements.'
WHERE id = 1681;

-- ID 1682: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 330.A42, evaluating the allowance for doubtful accounts directly tests the valuation assertion for accounts receivable. This involves analyzing the aged receivables schedule, reviewing historical write-off patterns, considering current economic conditions, and evaluating management''s assumptions about collectibility under AU-C 540. Choice D is incorrect because confirming balances with customers tests the existence and rights assertions under AU-C 505, not valuation. Choice B is incorrect because inspecting credit approval documents tests internal controls over authorization, not the valuation of recorded amounts. Choice C is incorrect because tracing invoices to shipping documents tests the occurrence assertion.'
WHERE id = 1682;

-- ID 1683: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.05, a substantive analytical procedure produces the most precise and reliable expectation when it uses disaggregated data, specific operational inputs (such as headcounts and pay rates by department), and adjustments for known changes. AU-C 520.A5 notes that more granular, entity-specific data creates a narrower threshold for investigation, making the analytical procedure more effective as substantive evidence. Choice A is incorrect because a simple year-over-year comparison produces a less precise expectation with a wider threshold. Choice C is incorrect because reviewing journal entries is an inspection procedure under AU-C 500, not an analytical procedure. Choice D is incorrect because industry benchmarks provide broad context but lack entity-specific precision.'
WHERE id = 1683;

-- ============================================================
-- TERMS OF ENGAGEMENT (1 question)
-- ============================================================

-- ID 4977: Terms of Engagement
UPDATE questions SET
  explanation = 'Under AU-C 210.06, the engagement letter states that the audit provides reasonable, not absolute, assurance. AU-C 200.A47 explains this language is included to ensure that management and those charged with governance understand the inherent limitations of an audit — including the use of sampling, the exercise of professional judgment, and the possibility that the audit may not detect all misstatements, particularly those involving concealed fraud or collusion. Choice A is incorrect because the limitation is inherent to the nature of auditing, not a disclaimer of the auditor''s responsibility. Choice B is incorrect because the language clarifies expectations rather than limiting legal liability.'
WHERE id = 4977;

-- ============================================================
-- TESTS OF CONTROLS (1 question)
-- ============================================================

-- ID 5078: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.16, when the auditor discovers that a key control has not been operating effectively during a portion of the audit period, the auditor must reassess the risk of material misstatement and determine the nature and extent of additional substantive procedures needed for the affected period. AU-C 330.17 requires the auditor to consider whether the control failure indicates a systemic problem that may affect other controls or assertions. Choice A is incorrect because the auditor cannot ignore a known control failure and maintain the original audit plan. Choice C is incorrect because immediately issuing a modified opinion may be premature — the auditor should first determine whether compensating controls or additional substantive procedures can address the risk.'
WHERE id = 5078;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 question)
-- ============================================================

-- ID 4997: Understanding the Entity and Environment
UPDATE questions SET
  explanation = 'Under AU-C 315.12, the auditor must understand the entity and its environment, including its business risks. AU-C 315.A44 defines a business risk as a risk resulting from significant conditions, events, circumstances, actions, or inactions that could adversely affect the entity''s ability to achieve its objectives. Product obsolescence due to technological changes is a business risk because it threatens future revenues and may affect asset valuations — such as inventory write-downs under ASC 330 or impairment of production equipment under ASC 360. Choice A is incorrect because general economic conditions, while relevant, are external factors rather than entity-specific business risks. Choice B is incorrect because routine seasonal fluctuations are expected and typically do not constitute business risks.'
WHERE id = 4997;

-- ============================================================
-- USING THE WORK OF OTHERS (1 question)
-- ============================================================

-- ID 5058: Using the Work of Others
UPDATE questions SET
  explanation = 'Under AU-C 610.18, when the external auditor plans to use the work of internal auditors on areas involving significant judgments — such as accounting estimates, impairment assessments, or going concern evaluations — the external auditor should exercise more caution and increase the extent of direct testing. AU-C 610.A20 notes that the greater the degree of judgment required, the more the external auditor should rely on their own procedures rather than the internal auditors'' work. Choice A is incorrect because delegating all significant judgment areas to internal audit without additional external testing would not provide sufficient appropriate evidence. Choice C is incorrect because the external auditor cannot eliminate direct testing entirely for areas requiring significant judgment.'
WHERE id = 5058;

-- ============================================================
-- WRITTEN REPRESENTATIONS (1 question)
-- ============================================================

-- ID 5136: Written Representations
UPDATE questions SET
  explanation = 'Under AU-C 560.10, a Type II (non-recognized) subsequent event provides evidence about conditions that arose after the balance sheet date. A fire destroying a warehouse after year-end represents a new condition that did not exist at the balance sheet date, so no adjustment to financial statement amounts is required. However, AU-C 560.A12 indicates that disclosure may be required if the event is so significant that its omission would make the financial statements misleading. Choice A is incorrect because adjusting the financial statements would be appropriate only for Type I events where the condition existed at the balance sheet date. Choice B is incorrect because material subsequent events require evaluation for disclosure even though they do not affect recorded amounts.'
WHERE id = 5136;

COMMIT;
