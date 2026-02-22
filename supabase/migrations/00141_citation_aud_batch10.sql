-- Migration: Citation backfill — AUD batch 10 (55 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 55 explanations for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Misstatements and Control Deficiencies, Nature and Scope of Engagements, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others, Written Representations

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (1 question)
-- ============================================================

-- ID 5092: Analytical Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.A8, the reliability of data used to develop an expectation for a substantive analytical procedure is a critical factor in the procedure''s effectiveness. AU-C 520.A9 identifies several factors affecting data reliability, including the source of the information (external sources are generally more reliable), comparability of the information, and the nature and relevance of the information. Data that is independent of the account being tested provides a more meaningful comparison. Choice B is incorrect because using the largest available dataset is not as important as ensuring the data is reliable and relevant to the expectation. Choice C is incorrect because data complexity does not determine reliability — simple data from a reliable, independent source is more useful than complex data from a biased source.'
WHERE id = 5092;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 26: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 215.04, in an agreed-upon procedures engagement, the practitioner performs specific procedures that the engaging party and other specified parties have agreed upon and reports the findings without providing an opinion or conclusion. AT-C 215.34 requires the practitioner''s report to state that use of the report is restricted to the specified parties because only those parties understand the context in which the procedures were agreed upon and the sufficiency of the procedures for their purposes. Choice A is incorrect because the practitioner does not express an opinion on the subject matter in an agreed-upon procedures engagement. Choice C is incorrect because the report is restricted to specified parties, not available for general use.'
WHERE id = 26;

-- ID 135: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 305.30, a practitioner''s report on a review of prospective financial statements must include a statement that the practitioner is not aware of any material modifications that should be made to the prospective financial statements (negative assurance). AT-C 305.31 also requires a caveat that the prospective results may not be achieved because events and circumstances frequently do not occur as expected. This dual requirement — negative assurance plus the achievement caveat — is unique to prospective financial statement engagements. Choice A is incorrect because positive assurance (an opinion) is provided in examination engagements, not reviews. Choice C is incorrect because restricting the report solely to specified parties is characteristic of agreed-upon procedures, not review-level attestation on prospective statements.'
WHERE id = 135;

-- ============================================================
-- AUDIT EVIDENCE (4 questions)
-- ============================================================

-- ID 115: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 500.A21, recalculation involves the auditor independently verifying mathematical accuracy by reperforming calculations such as depreciation computations, interest accruals, or footing a trial balance. This procedure provides highly reliable evidence because the auditor generates the result independently. Choice A (inspection) is incorrect because inspection involves examining records, documents, or tangible assets rather than verifying mathematical computations. Choice B (observation) is incorrect because observation involves watching a process being performed by others, not independently verifying calculations. Choice D (confirmation) is incorrect because confirmation involves obtaining a direct response from a third party.'
WHERE id = 115;

-- ID 296: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 240.A41–.A42, journal entry testing is a required procedure to address the risk of management override of controls. AU-C 240.32 identifies red flags including large round-dollar amounts, entries posted near period-end, entries made by unusual users (such as senior management who do not typically post entries), entries posted outside normal business hours, and entries lacking adequate descriptions or support. Data analytics tools help auditors efficiently identify these characteristics across large populations of journal entries. Choice B is incorrect because routine entries with standard descriptions and normal posting patterns are less likely to indicate fraud risk.'
WHERE id = 296;

-- ID 299: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 501.11–.12, the auditor is required to attend physical inventory counting to obtain sufficient appropriate evidence regarding the existence and condition of inventory. Physical observation provides the most persuasive evidence for the existence assertion because the auditor directly verifies the presence of the assets. AU-C 500.A5 establishes that evidence obtained directly by the auditor is more reliable than evidence obtained indirectly. Choice B (perpetual records) is incorrect because internal records are less reliable than direct observation and may contain errors. Choice C (management representations) is incorrect because AU-C 580 states that representations are the least persuasive form of evidence.'
WHERE id = 299;

-- ID 300: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 520.A3, analytical procedures include comparisons of recorded amounts with expectations developed from various sources. Three-way matching as a data analytics technique compares purchase orders (authorization to buy), receiving reports (confirmation of goods received), and vendor invoices (billing for goods delivered). This automated comparison identifies discrepancies such as duplicate payments, unauthorized purchases, and differences between quantities ordered, received, and billed. Choice B is incorrect because comparing bank statements, cash receipts, and the general ledger describes a bank reconciliation procedure, not three-way matching. Choice C is incorrect because comparing budgets to actuals describes variance analysis, a different analytical technique.'
WHERE id = 300;

-- ============================================================
-- AUDIT PLANNING (3 questions)
-- ============================================================

-- ID 99: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 620.08–.09, when using the work of an auditor''s specialist, the auditor must evaluate whether the specialist''s findings are adequate for the auditor''s purposes. This includes assessing the specialist''s competence, capabilities, and objectivity (AU-C 620.09). AU-C 620.12 states that the auditor need not possess the same expertise as the specialist but must understand the work sufficiently to evaluate its adequacy. AU-C 700.A42 provides that the specialist should not be referenced in the auditor''s report unless the reference is relevant to an explanation of a modified opinion. Choice B is incorrect because the auditor is not required to replicate the specialist''s expertise. Choice D is incorrect because routine use of a specialist does not require report modification.'
WHERE id = 99;

-- ID 269: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 402.09, when a client uses a service organization, the auditor must obtain an understanding of the nature and significance of the services provided and their effect on the user entity''s internal controls relevant to the audit. AU-C 402.10 requires the auditor to evaluate this understanding as part of risk assessment to determine whether additional audit evidence about controls at the service organization is needed (such as obtaining a SOC 1 report or performing procedures at the service organization). Choice A is incorrect because ignoring the service organization would leave the auditor without an adequate understanding of internal controls. Choice C is incorrect because the auditor is not required to audit the service organization directly when a SOC report is available.'
WHERE id = 269;

-- ID 270: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 620.09, the auditor evaluates a specialist''s competence by considering the specialist''s professional certification or licensure, relevant experience, reputation and standing among peers, and adherence to applicable professional or ethical standards. AU-C 620.A10 further explains that competence relates to the nature and level of expertise needed for the auditor''s purposes. Choice B (billing rate) is incorrect because the cost of a specialist''s services does not indicate competence. Choice C (prior relationship with the audit firm) is incorrect because familiarity does not establish professional competence. Choice D (office location) is incorrect because geographic proximity is irrelevant to the specialist''s technical qualifications.'
WHERE id = 270;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 20: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 705.08, when the auditor concludes that misstatements are material but not pervasive to the financial statements, a qualified opinion is appropriate. Misclassification of long-term debt as a current liability is material because it distorts the entity''s liquidity position, but it is typically confined to the balance sheet presentation and does not pervade the financial statements as a whole. Choice B is incorrect because an adverse opinion under AU-C 705.09 is reserved for misstatements that are both material and pervasive — affecting multiple elements or representing a substantial proportion of the financial statements. Choice C is incorrect because a disclaimer of opinion under AU-C 705.10 applies to scope limitations, not identified misstatements that management refuses to correct.'
WHERE id = 20;

-- ID 21: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 800.14, when reporting on financial statements prepared in accordance with a special purpose framework (such as the cash basis), the auditor''s report must include an emphasis-of-matter paragraph that indicates the financial reporting framework used and refers to the note in the financial statements that describes the framework. AU-C 800.17 also requires an alert restricting the use of the report when the special purpose framework is a contractual or regulatory basis. Choice B is incorrect because the auditor can issue an unmodified opinion on special purpose framework statements — the statements are evaluated against their own framework, not GAAP. Choice C is incorrect because the auditor is not required to disclaim an opinion simply because the statements are not prepared under GAAP.'
WHERE id = 21;

-- ============================================================
-- AUDIT SAMPLING (4 questions)
-- ============================================================

-- ID 116: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.05 and .A1, the primary difference between statistical and nonstatistical sampling is that statistical sampling uses mathematical probability theory to determine sample sizes and evaluate results, requiring random selection of sample items. AU-C 530.A6 notes that nonstatistical sampling relies on auditor judgment for both sample size determination and results evaluation. AU-C 530.A1 clarifies that both methods can provide sufficient appropriate audit evidence when properly designed and applied — neither is inherently superior. Choice A is incorrect if it suggests that only statistical sampling provides reliable evidence. Choice D is incorrect because both approaches require the auditor to project misstatements to the population.'
WHERE id = 116;

-- ID 118: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A14, systematic selection involves selecting items using a constant interval through the population after a random starting point. AU-C 530.A15 warns that systematic selection can produce a biased or unrepresentative sample if the population contains a pattern that coincides with the sampling interval. For example, if every 10th invoice is a month-end adjusting entry and the sampling interval is 10, the sample would either always include or always exclude these entries, misrepresenting the population. Choice A is incorrect because a large population size does not make systematic selection unreliable. Choice D is incorrect because systematic selection does not require the population to be in alphabetical order.'
WHERE id = 118;

-- ID 119: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.13, when the projected misstatement exceeds tolerable misstatement, the auditor concludes that there is an unacceptably high risk that the account balance is materially misstated. AU-C 530.14 requires the auditor to consider expanding the sample, performing additional substantive procedures, or requesting management to investigate and adjust the balance. The auditor should not immediately issue a qualified opinion without first attempting to resolve the matter through additional procedures. Choice B is incorrect because accepting the balance despite the projected misstatement exceeding tolerable misstatement would be inappropriate. Choice D is incorrect because the audit opinion decision is made later after evaluating all accumulated evidence.'
WHERE id = 119;

-- ID 305: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.05, audit sampling involves applying audit procedures to less than 100% of items within a population. When the auditor tests all items in a stratum (such as all accounts receivable over $100,000), this constitutes complete examination of that stratum, not sampling. AU-C 530.A4 notes that auditors commonly combine complete examination of the top stratum with sampling of remaining strata to achieve efficient coverage of the entire population. Choice B is incorrect because 100% testing of a stratum is not statistical sampling. Choice C is incorrect because testing all items above a threshold is a deliberate strategy, not haphazard selection.'
WHERE id = 305;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 2: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.295 (Management Participation), a member impairs independence when assuming a management responsibility for an attest client. Making management decisions — such as hiring, firing, or authorizing transactions — constitutes assuming a management role that belongs to the client. The Interpretation specifically identifies management responsibilities as those that involve leading and directing the entity, including making significant decisions. Choice B is incorrect because providing tax compliance services is generally permissible with appropriate safeguards under ET 1.296. Choice C is incorrect because advisory services, when properly structured so the client makes all final decisions, do not impair independence under the conceptual framework.'
WHERE id = 2;

-- ID 93: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.210.010 (Conceptual Framework for Independence), when a CPA becomes aware of a circumstance that may create a threat to independence, the first step is to identify and evaluate the significance of the threat. The conceptual framework requires a systematic approach: (1) identify the threat, (2) evaluate whether the threat is at an acceptable level, and (3) if not, determine whether safeguards can reduce it to an acceptable level. Choice A is incorrect because immediately resigning from the engagement is premature — the threat from a close friend on the board may be reducible through safeguards. Choice D is incorrect because ignoring the relationship would violate the CPA''s obligation to evaluate all known threats to independence under professional standards.'
WHERE id = 93;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (2 questions)
-- ============================================================

-- ID 1131: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS and the Uniform Guidance (2 CFR 200.518), the major program determination in a single audit follows a risk-based approach. Programs are first classified as Type A (expenditures exceeding the applicable threshold) or Type B (below the threshold). The auditor then assesses risk for Type A programs — those assessed as low risk may be excluded, while high-risk Type B programs may be added as major programs. The goal is to audit at least 40% of total federal expenditures (or 20% for eligible low-risk auditees). Choice A is incorrect because the entity does not select its own major programs; the auditor makes the determination. Choice C is incorrect because not all Type A programs are automatically tested — low-risk Type A programs may be excluded from major program testing under the risk-based approach.'
WHERE id = 1131;

-- ID 1134: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS and the Uniform Guidance (2 CFR 200.512(a)), the single audit reporting package must be submitted to the Federal Audit Clearinghouse within the earlier of 30 calendar days after receipt of the auditor''s report(s) or nine months after the end of the audit period. This deadline ensures timely federal oversight of grant expenditures. Choice A is incorrect because 60 days after the fiscal year end is not the prescribed timeline. Choice C is incorrect because 12 months after the fiscal year end exceeds the Uniform Guidance requirement and would delay federal oversight of program compliance.'
WHERE id = 1134;

-- ============================================================
-- INDEPENDENCE (1 question)
-- ============================================================

-- ID 4932: Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.210.010, a familiarity threat to independence arises from a long or close relationship with an attest client. When an engagement partner has a close family member serving as CFO of the audit client, the concern is that the auditor may become too sympathetic to the client''s interests or too trusting of client representations due to the personal relationship. ET 1.270.100 specifically addresses close relatives in key positions at the client as creating a familiarity threat that may not be reducible to an acceptable level. Choice A is incorrect because a self-review threat arises when the auditor evaluates the results of their own prior work, not from family relationships. Choice B is incorrect because an advocacy threat arises when the auditor promotes or defends the client''s position, which is a different type of threat unrelated to personal relationships.'
WHERE id = 4932;

-- ============================================================
-- INTERNAL CONTROLS (9 questions)
-- ============================================================

-- ID 107: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.14, the control environment sets the tone of an organization and is the foundation for all other components of internal control. AU-C 315.A77 identifies management''s commitment to integrity and ethical values as a critical element. Management override of controls is one of the strongest indicators of a weak control environment because it demonstrates that the tone at the top does not prioritize integrity, undermining the entire internal control system. Choice A (outdated software) is incorrect because while it may present operational risks, it does not inherently reflect a deficient control environment. Choice C (small accounting staff) is incorrect because staffing size alone does not indicate weak controls, though it may affect segregation of duties.'
WHERE id = 107;

-- ID 110: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A107, IT general controls (ITGCs) are policies and procedures that relate to many applications and support the effective functioning of application controls. Password requirements and user access management are ITGCs because they govern who can access and modify data across all systems. AU-C 315.A109 distinguishes ITGCs from application controls, which operate within specific business processes. Choice A is incorrect because automated three-way matching is an application control embedded in a specific transaction cycle. Choice D is incorrect because input validation checks are application controls that operate within individual programs to ensure data accuracy.'
WHERE id = 110;

-- ID 282: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A107–A109, IT general controls fall into four primary categories: (1) access security — restricting access to programs and data, (2) program change management — ensuring changes are authorized, tested, and approved before implementation, (3) computer operations — ensuring systems process reliably and completely, and (4) program development — ensuring new systems are properly designed and tested. These ITGCs support the effective functioning of application controls by maintaining the integrity of the IT environment. Choice B is incorrect because it mixes ITGC categories with application-level functions. Choice C is incorrect because financial reporting categories are not the same as ITGC categories.'
WHERE id = 282;

-- ID 283: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A110, when IT general controls are found to be ineffective, the auditor cannot rely on automated application controls that depend on those systems. AU-C 330.08 requires the auditor to design further audit procedures responsive to assessed risks, which means shifting from a controls-reliance strategy to increased substantive testing. Choice A is incorrect because ineffective ITGCs do not automatically result in a disclaimer of opinion — the auditor can still obtain sufficient appropriate evidence through substantive procedures. Choice C is incorrect because simply reporting the weakness to management without modifying the audit approach would fail to address the increased risk of material misstatement.'
WHERE id = 283;

-- ID 284: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A108, application controls are automated or manual procedures that operate within specific business processes to ensure completeness, accuracy, and authorization of transactions. An edit check that validates transaction amounts against authorization thresholds is an application control because it operates within a specific application to enforce business rules. Choice A (password requirements) is incorrect because password policies are access security controls, which are ITGCs under AU-C 315.A107. Choice C (system access logs) is incorrect because access logging is part of access security ITGCs. Choice D (backup rotation schedules) is incorrect because backup procedures are computer operations controls, also classified as ITGCs.'
WHERE id = 284;

-- ID 285: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A112, test data is a computer-assisted audit technique (CAAT) in which the auditor submits fictitious or simulated transactions through the client''s live or test system to evaluate whether programmed controls function as designed. The auditor compares actual output to expected results to identify control failures in edit checks, validation rules, and calculations. Choice A is incorrect because test data involves processing transactions through the system, not merely reviewing program source code. Choice C is incorrect because test data evaluates automated controls, not the physical security of hardware. Choice D is incorrect because test data tests system processing logic, not the completeness of user manuals.'
WHERE id = 285;

-- ID 286: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 402.12–.15, before relying on a SOC 1 Type 2 report, the user auditor must evaluate whether the report covers the relevant period and the controls pertinent to the user entity''s financial reporting. The user auditor must also assess the service auditor''s competence and independence, and test any complementary user entity controls (CUECs) identified in the report. Choice A is incorrect because simply accepting the report without evaluation does not meet AU-C 402 requirements. Choice C is incorrect because re-auditing the service organization is unnecessary and impractical when a SOC 1 report is available. Choice D is incorrect because the user auditor cannot ignore the service organization''s impact on internal controls.'
WHERE id = 286;

-- ID 287: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 402.09 and .A13, complementary user entity controls (CUECs) are controls that the service organization''s system is designed with the assumption that the user entity will implement. These may include reviewing output reports, reconciling data, or authorizing transactions before processing. AU-C 402.15 requires the user auditor to evaluate and test CUECs at the user entity because the service organization''s controls alone may not achieve control objectives without them. Choice A is incorrect because CUECs are not optional — they are assumed to be in place by the service organization''s control design. Choice C is incorrect because CUECs are the user entity''s responsibility, not the service auditor''s.'
WHERE id = 287;

-- ID 288: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A30, reperformance is the strongest test of operating effectiveness because the auditor independently executes the control procedure and verifies the outcome. AU-C 500.A20 ranks audit procedures by persuasiveness: reperformance and recalculation provide the most direct evidence, followed by observation (point-in-time evidence), inspection (documentary evidence), and inquiry (least persuasive). Choice B (observation) is incorrect because it only provides evidence that a control was performed at a specific point in time and does not confirm the control produced the correct result. Choice D (inquiry alone) is incorrect because AU-C 330.A5 states that inquiry alone is never sufficient to evaluate operating effectiveness.'
WHERE id = 288;

-- ============================================================
-- MATERIALITY (1 question)
-- ============================================================

-- ID 5014: Materiality
UPDATE questions SET
  explanation = 'Under AU-C 320.A3, the auditor''s determination of materiality is influenced by the auditor''s perception of the financial information needs of users of the financial statements. Publicly traded entities typically warrant a lower materiality level because of heightened regulatory scrutiny (e.g., SEC requirements), the broader group of financial statement users, and the potential market impact of misstatements. AU-C 320.A8 notes that the nature of the entity, its ownership structure, and its financing structure are relevant factors. Choice B is incorrect because a larger entity size does not inherently require a lower materiality level — materiality may actually increase in dollar terms for larger entities. Choice C is incorrect because fewer related party transactions would generally reduce complexity and risk, not lower materiality.'
WHERE id = 5014;

-- ============================================================
-- MISSTATEMENTS AND CONTROL DEFICIENCIES (2 questions)
-- ============================================================

-- ID 5111: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 530.13, when the auditor detects misstatements in a sample, the auditor must project (extrapolate) those misstatements to the population to estimate the likely misstatement for the entire population. AU-C 530.A20 explains that this projected misstatement is the auditor''s best estimate of misstatement in the population based on sample results. The projected amount is then included in the aggregate of uncorrected misstatements evaluated under AU-C 450. Choice A is incorrect because a projected misstatement is not limited to individually material errors — it arises from any sample misstatement that is extrapolated to the population. Choice C is incorrect because projected misstatements are based on sample results, not management representations.'
WHERE id = 5111;

-- ID 5112: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 265.07, a significant deficiency is a deficiency, or a combination of deficiencies, in internal control that is less severe than a material weakness yet important enough to merit attention by those charged with governance. AU-C 265.A11 clarifies that a significant deficiency does not meet the threshold of a material weakness — where there is a reasonable possibility that a material misstatement will not be prevented or detected on a timely basis — but is still noteworthy. Choice A is incorrect because a deficiency with a reasonable possibility of causing a material misstatement that would not be prevented or detected is a material weakness, not a significant deficiency. Choice C is incorrect because a minor deficiency that warrants no communication would be classified as a deficiency, not a significant deficiency.'
WHERE id = 5112;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (1 question)
-- ============================================================

-- ID 4911: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 315.A128, the completeness assertion addresses whether all transactions and events that should have been recorded have in fact been recorded. It is concerned with potential understatement — items that exist in reality but may be missing from the financial statements. AU-C 315.A129 identifies completeness as one of the assertions about classes of transactions, account balances, and presentation and disclosure. Choice B is incorrect because the existence assertion addresses the opposite direction — whether recorded assets, liabilities, and transactions actually exist or occurred, which relates to potential overstatement. Choice C is incorrect because the valuation and allocation assertion addresses whether assets, liabilities, and equity interests are recorded at appropriate amounts, not whether all items have been captured.'
WHERE id = 4911;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 question)
-- ============================================================

-- ID 141: Professional Responsibilities
UPDATE questions SET
  explanation = 'Under AU-C 250.14, when the auditor becomes aware of information concerning a possible illegal act that may have a material effect on the financial statements and management does not take appropriate remedial action, the auditor should consider the effects on the financial statements and the auditor''s report. AU-C 250.18 indicates this may result in a qualified or adverse opinion, or withdrawal from the engagement if the auditor concludes that remaining associated with the financial statements is inappropriate. Choice A is incorrect because the auditor generally has no duty to report illegal acts directly to law enforcement unless required by specific statute or regulation (such as the Private Securities Litigation Reform Act for public companies). Choice D is incorrect because the auditor cannot add notes to the client''s financial statements — modifications are made through the auditor''s report.'
WHERE id = 141;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 question)
-- ============================================================

-- ID 4954: Professional Skepticism and Judgment
UPDATE questions SET
  explanation = 'Under AU-C 200.A22, professional skepticism requires the auditor to be alert to conditions that may indicate possible misstatement due to error or fraud. Confirmation bias — the tendency to favor information that confirms pre-existing beliefs — directly threatens this requirement because it causes the auditor to overweight evidence supporting management''s assertions while undervaluing contradictory evidence. AU-C 200.A23 notes that auditors should be mindful of biases that could affect professional judgment. Choice B is incorrect because anchoring bias involves over-reliance on an initial piece of information rather than systematically favoring confirmatory evidence. Choice C is incorrect because availability bias causes overestimation of the likelihood of events that are easily recalled, which is a different cognitive limitation.'
WHERE id = 4954;

-- ============================================================
-- QUALITY MANAGEMENT (2 questions)
-- ============================================================

-- ID 28: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS 2 (and AU-C 220.25 for audits of issuers, as reinforced by PCAOB AS 1220.08), the engagement quality review must be completed before the release of the auditor''s report. The engagement quality reviewer evaluates significant judgments and conclusions made by the engagement team to provide an objective evaluation that enhances audit quality. SQMS 2.27 specifies that the report cannot be dated or released until the engagement quality review is complete. Choice A is incorrect because completing the review after the report is issued would defeat the purpose of the quality safeguard. Choice C is incorrect because the review must be finalized before report release, not merely begun during fieldwork.'
WHERE id = 28;

-- ID 138: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS 2.04, an engagement quality review is required for audits of financial statements of listed entities (public companies) and other engagements for which the firm determines an engagement quality review is an appropriate response to assessed quality risks. SQMS 2.06 permits the firm to establish additional criteria for when engagement quality reviews are required based on its quality management system. Choice B is incorrect because compilation engagements are performed under SSARS and do not require an engagement quality review under SQMS 2. Choice C is incorrect because preparation engagements, which provide no assurance, do not trigger mandatory engagement quality review requirements.'
WHERE id = 138;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (1 question)
-- ============================================================

-- ID 5037: Responding to Assessed Risks
UPDATE questions SET
  explanation = 'Under AU-C 330.06, the auditor shall design and perform further audit procedures whose nature, timing, and extent are responsive to the assessed risks of material misstatement. AU-C 330.A15 explains that when assessed risk is higher, the auditor may respond by increasing the extent of testing, using more reliable types of evidence, performing procedures closer to period end, or engaging specialists for complex areas such as inventory valuation. For high-risk inventory valuation, engaging specialists, expanding sample sizes, and performing detailed price testing are appropriate responses. Choice A is incorrect because reducing testing when risk is assessed as high contradicts AU-C 330''s requirement to increase the rigor of audit procedures in response to higher assessed risks. Choice C is incorrect because relying solely on management representations is insufficient for a high-risk area.'
WHERE id = 5037;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 341: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.60–.62, if during a review engagement the accountant becomes aware of information that may indicate the financial statements are materially misstated, the accountant should perform additional procedures sufficient to resolve the matter. AR-C 90.62 specifies that these procedures remain within the scope of a review — the engagement is not automatically converted to an audit. The accountant may need to revise inquiries, request additional information from management, or perform targeted analytical procedures. Choice A is incorrect because immediately withdrawing from the engagement is not required when additional procedures may resolve the concern. Choice C is incorrect because converting to an audit is not required — additional review-level procedures may be sufficient.'
WHERE id = 341;

-- ID 344: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.67–.69, when a client requests a change from an audit to a review, the accountant must evaluate the reason for the change before agreeing. AR-C 90.68 identifies legitimate reasons such as a change in requirements from a lending institution or a misunderstanding about the nature of the engagement. AR-C 90.69 states that unacceptable reasons include attempting to prevent the accountant from discovering misstatements or limiting access to information. If the change is appropriate, the accountant''s review report should not reference the original audit engagement. Choice A is incorrect because automatically refusing all engagement changes is unnecessarily restrictive. Choice C is incorrect because accepting without evaluating the reason fails to meet professional standards.'
WHERE id = 344;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 23: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 80.27, when the accountant becomes aware of a material departure from the applicable financial reporting framework (including GAAP) during a compilation engagement and management does not revise the statements, the accountant should disclose the departure in a separate paragraph of the compilation report. AR-C 80.28 notes that the accountant is not required to determine the effects of the departure if management has not done so, but the known departure must be disclosed. Choice A is incorrect because withdrawal is not required unless the accountant believes the financial statements are prepared to be misleading (AR-C 80.29). Choice C is incorrect because a compilation engagement does not result in an opinion — compilations provide no assurance, so an adverse opinion is not applicable under SSARS.'
WHERE id = 23;

-- ID 130: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.28, when performing analytical procedures during a review engagement and the accountant identifies relationships or individual items that appear unusual or unexpected, the accountant should inquire of management to obtain explanations and appropriate corroborating information. AR-C 90.29 further requires the accountant to perform additional procedures if management''s response does not adequately address the accountant''s concern. Choice B is incorrect because issuing a qualified conclusion based solely on one analytical procedure anomaly without first inquiring of management is premature. Choice D is incorrect because ignoring the matter would violate the accountant''s responsibility to obtain limited assurance under SSARS standards.'
WHERE id = 130;

-- ============================================================
-- RISK ASSESSMENT (3 questions)
-- ============================================================

-- ID 9: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.26, the auditor is required to identify and assess risks of material misstatement by understanding the entity and its environment, including changes in the entity''s operations. AU-C 315.A30 recognizes that simultaneous changes in accounting policies and information systems create compound risks — new processes may contain errors, staff may not be fully trained on revised policies, and data migration introduces the possibility of misstatement. These changes elevate both inherent risk (incorrect application of the new policy) and control risk (untested system controls), requiring the auditor to design enhanced audit procedures under AU-C 330. Choice A is incorrect because treating these changes as routine ignores the compounding effect on risk.'
WHERE id = 9;

-- ID 101: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.A2 and the audit risk model (AR = RMM x DR), detection risk has an inverse relationship with the risk of material misstatement. When the assessed risk of material misstatement (inherent risk x control risk) increases, the auditor must decrease detection risk by performing more effective or extensive substantive procedures to maintain overall audit risk at an acceptably low level (AU-C 330.07). Choice A is incorrect because a direct relationship would mean less testing when risk increases, which contradicts the audit risk model. Choice C is incorrect because the two risks are mathematically related through the audit risk model, not independent of each other.'
WHERE id = 101;

-- ID 104: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.06, risk assessment procedures include (a) inquiries of management and others within the entity, (b) analytical procedures, and (c) observation and inspection. These procedures help the auditor understand the entity, its environment, applicable financial reporting framework, and internal control system to identify and assess risks of material misstatement at the financial statement and assertion levels. Choice B is incorrect because sending confirmations is a substantive procedure performed in response to assessed risks under AU-C 330, not a risk assessment procedure. Choice C (recalculation) and Choice D (physical inventory counts) are also substantive procedures rather than risk assessment procedures.'
WHERE id = 104;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (1 question)
-- ============================================================

-- ID 5150: Specific Areas and Transactions
UPDATE questions SET
  explanation = 'Under AU-C 570.A3, conditions and events that may indicate substantial doubt about an entity''s ability to continue as a going concern include negative financial trends such as recurring operating losses, working capital deficiencies, negative cash flows from operations, and adverse key financial ratios. AU-C 570.A4 also identifies other indicators including default on loan or similar agreements, denial of usual trade credit, arrearages in dividends, and loss of a principal customer or supplier. The auditor evaluates these factors for a reasonable period, which AU-C 570.13 defines as not exceeding one year beyond the date of the financial statements. Choice B is incorrect because a single quarter of slightly reduced revenue does not, by itself, indicate a going concern issue. Choice C is incorrect because changes in management, while potentially disruptive, are not specifically identified as going concern indicators under AU-C 570.'
WHERE id = 5150;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (3 questions)
-- ============================================================

-- ID 18: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 500.A22, the completeness assertion addresses whether all transactions and accounts that should be recorded have been recorded. AU-C 330.A47 identifies examining cash disbursements after the balance sheet date as a highly effective procedure for detecting unrecorded liabilities because payments made after year-end may relate to obligations that existed at year-end but were not recorded. Choice A (confirming existing payable balances) is incorrect because confirmations only verify amounts already recorded and do not identify omissions. Choice B (vouching recorded payables to invoices) is incorrect because vouching tests the existence and accuracy of recorded items rather than searching for unrecorded ones.'
WHERE id = 18;

-- ID 122: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.07, when analytical procedures identify a difference between the auditor''s expectation and the recorded amount that exceeds the acceptable threshold, the auditor is required to investigate by inquiring of management and obtaining corroborating audit evidence. AU-C 520.A18 states that the investigation should help the auditor determine whether the difference has a plausible explanation supported by evidence or whether it indicates a potential misstatement requiring further procedures. Choice A is incorrect because automatically assuming the difference is an error without investigation is inappropriate. Choice C is incorrect because proposing an adjustment without first understanding the cause of the difference would be premature.'
WHERE id = 122;

-- ID 123: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 330.A47, testing the completeness of accounts payable requires procedures designed to search for unrecorded obligations. Examining cash disbursements after year-end is the most effective procedure because payments made in the subsequent period may relate to liabilities that existed at the balance sheet date but were not recorded. AU-C 500.A22 reinforces that completeness testing works in the direction of unrecorded items toward the financial statements. Choice A (confirming existing payable balances) is incorrect because it only verifies recorded amounts. Choice B (vouching recorded payables) is incorrect because vouching tests existence and accuracy of items already in the records, not omissions.'
WHERE id = 123;

-- ============================================================
-- TERMS OF ENGAGEMENT (1 question)
-- ============================================================

-- ID 4972: Terms of Engagement
UPDATE questions SET
  explanation = 'Under AU-C 210.14, for recurring audits, the auditor shall assess whether circumstances require the terms of the audit engagement to be revised and whether there is a need to remind the entity of the existing terms. AU-C 210.A30 provides that the auditor may decide not to send a new engagement letter each period but should consider sending a new letter when there are changes such as a change in senior management, a significant change in the nature or size of the entity''s business, or a change in legal or regulatory requirements. Choice A is incorrect because a new engagement letter is not automatically required every year — the auditor exercises judgment based on changed circumstances. Choice C is incorrect because the original engagement letter cannot simply remain in effect indefinitely without reassessment of current conditions.'
WHERE id = 4972;

-- ============================================================
-- TESTS OF CONTROLS (1 question)
-- ============================================================

-- ID 5073: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A25, a dual-purpose test is a test of control and a substantive test of details performed concurrently on the same transaction. For example, examining a purchase order for proper approval (test of control over authorization) and verifying the recorded dollar amount against the supporting invoice (substantive test of details) at the same time. AU-C 330.A26 notes that in designing a dual-purpose test, the auditor should consider the objective of each component separately and evaluate the results of each component separately. Choice A is incorrect because a dual-purpose test is not limited to analytical procedures — it combines a test of controls with a substantive test of details. Choice C is incorrect because a dual-purpose test addresses both control effectiveness and account balance accuracy, not just one or the other.'
WHERE id = 5073;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 question)
-- ============================================================

-- ID 4993: Understanding the Entity and Environment
UPDATE questions SET
  explanation = 'Under AU-C 315.13, the auditor is required to obtain an understanding of the entity''s selection and application of accounting policies, including changes thereto, and evaluate whether the entity''s accounting policies are appropriate for its business and consistent with the applicable financial reporting framework and industry practice. AU-C 315.A49 emphasizes that the auditor should also consider whether the policies reflect the economic substance of the entity''s transactions and events. Choice B is incorrect because the auditor evaluates appropriateness against the applicable framework and business context, not merely whether policies match competitors exactly. Choice C is incorrect because the most conservative policies are not necessarily the most appropriate — policies should reflect the substance of the entity''s transactions within the applicable framework.'
WHERE id = 4993;

-- ============================================================
-- USING THE WORK OF OTHERS (1 question)
-- ============================================================

-- ID 5054: Using the Work of Others
UPDATE questions SET
  explanation = 'Under AU-C 402.08, when an entity uses a service organization, the auditor should obtain an understanding of the nature and significance of the services provided and their effect on the user entity''s internal control relevant to the audit. AU-C 402.10 requires the auditor to evaluate whether sufficient appropriate audit evidence can be obtained, which may involve obtaining a SOC 1 report (Type 1 or Type 2) or performing procedures at the service organization. Choice A is incorrect because the auditor cannot simply ignore the service organization — its processes may be integral to the client''s financial reporting. Choice C is incorrect because the auditor is not automatically required to perform direct testing at the service organization; a SOC report may provide sufficient evidence depending on the circumstances.'
WHERE id = 5054;

-- ============================================================
-- WRITTEN REPRESENTATIONS (1 question)
-- ============================================================

-- ID 5132: Written Representations
UPDATE questions SET
  explanation = 'Under AU-C 580.09, the auditor shall request written representations from management with appropriate responsibilities for the financial statements and knowledge of the matters concerned. AU-C 580.A8 explains that this typically includes the chief executive officer and the chief financial officer (or their equivalents), as they have primary responsibility for the preparation and fair presentation of the financial statements. Choice A is incorrect because general counsel alone does not have responsibility for the financial statements and would not be the appropriate signatory. Choice C is incorrect because while the controller may have knowledge of accounting matters, AU-C 580 requires signatures from those with ultimate responsibility for the financial statements, which is typically executive management.'
WHERE id = 5132;

COMMIT;
