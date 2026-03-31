-- Migration: Citation backfill — AUD batch 15 (28 questions)
-- Date: 2026-03-31
-- Purpose: Add standard citations to 28 explanations for AUD section
-- Affected topics: Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Professional Responsibilities, Risk Assessment, Substantive Procedures

BEGIN;

-- ============================================================
-- AUDIT SAMPLING (2 questions)
-- ============================================================

-- ID 15: Audit Sampling
UPDATE questions SET
  explanation = $EXPL$Correct. Under AU-C 530.A10, a decrease in the acceptable risk of overreliance (i.e., the auditor demands higher confidence that the sample reflects the population) requires a larger sample size. Greater confidence demands more evidence, which means testing more items. However, increasing the tolerable deviation rate or decreasing the expected deviation rate would reduce the required sample size, not increase it.$EXPL$
WHERE id = 15;

-- ID 1666: Audit Sampling
UPDATE questions SET
  explanation = $EXPL$Correct. Under AU-C 530.A14 and related MUS guidance, the monetary unit sampling interval is calculated as tolerable misstatement divided by the reliability (confidence) factor for the desired confidence level assuming zero expected misstatements. For example, at 95% confidence the reliability factor is approximately 3.0, yielding interval = tolerable misstatement / 3.0. Unlike systematic sampling of physical units, which divides population size by sample size, MUS derives its interval from the relationship between tolerable misstatement and the auditor''s desired confidence level.$EXPL$
WHERE id = 1666;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 256: Ethics and Independence
UPDATE questions SET
  explanation = $EXPL$Correct. SEC Section 2-01(c)(2)(iii)(A) of Regulation S-X requires a one-year cooling-off period before a lead engagement partner may accept a financial reporting oversight role at a public audit client. This restriction protects independence by ensuring sufficient separation between the partner''s audit responsibilities and any subsequent management role. Although five years is the partner rotation cycle under PCAOB rules, the cooling-off period for employment at the client is only one year, not five.$EXPL$
WHERE id = 256;

-- ID 260: Ethics and Independence
UPDATE questions SET
  explanation = $EXPL$Correct. Under the AICPA Code of Professional Conduct ET 1.210.010, a self-interest threat arises when a member has a financial or other interest that could inappropriately influence professional judgment, such as excessive fee dependence on a single client or a direct financial interest. The conceptual framework requires evaluation of threat severity and application of safeguards. While advocacy threats involve promoting a client''s position and intimidation threats involve pressure from the client, self-interest threats are uniquely tied to the auditor''s own financial stake.$EXPL$
WHERE id = 260;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (6 questions)
-- ============================================================

-- ID 1131: Government Auditing Standards
UPDATE questions SET
  explanation = $EXPL$Correct. Under GAGAS and the Uniform Guidance (2 CFR 200.518), programs are classified as Type A or Type B based on expenditure thresholds, and the auditor applies a risk-based approach to select major programs for compliance testing, targeting at least 40% of total federal expenditures (20% for low-risk auditees). This ensures audit coverage focuses on the programs with the greatest dollar magnitude and risk. Unlike a blanket approach that tests all federal programs, the risk-based method concentrates resources where misstatement risk is highest.$EXPL$
WHERE id = 1131;

-- ID 1427: Government Auditing Standards
UPDATE questions SET
  explanation = $EXPL$Correct. Per GAGAS and the Uniform Guidance (2 CFR 200.518), a Type A program has expenditures exceeding the larger of $750,000 or a specified percentage of total federal awards (3% for entities with up to $100 million in total awards), subject to a ceiling. This tiered threshold ensures that the largest programs receive compliance testing as major programs. Although $250,000 and $500,000 are plausible amounts, neither corresponds to any Uniform Guidance threshold for Type A classification.$EXPL$
WHERE id = 1427;

-- ID 1431: Government Auditing Standards
UPDATE questions SET
  explanation = $EXPL$Correct. Per GAGAS and the Uniform Guidance (2 CFR 200.512), the reporting package including the Data Collection Form (SF-SAC) must be submitted to the Federal Audit Clearinghouse within 30 calendar days after receipt of the auditor''s report, or within 9 months after the end of the audit period, whichever is earlier. The trigger is receipt of the auditor''s report, not the fiscal year-end date. Unlike the 60- or 90-day deadlines suggested by other choices, the Uniform Guidance specifies a 30-day window from receipt of the report.$EXPL$
WHERE id = 1431;

-- ID 1434: Government Auditing Standards
UPDATE questions SET
  explanation = $EXPL$Correct. Per GAGAS and the Uniform Guidance (2 CFR 200.520), low-risk auditee status requires unmodified opinions on both financial statements and compliance for major programs in the two most recent audit periods, with no material weaknesses identified. Low-risk auditees benefit from reduced major program coverage at 20% of total federal expenditures rather than 40%. Unlike criteria based on entity size or expenditure ceilings, the Uniform Guidance focuses on audit opinion quality and absence of control deficiencies.$EXPL$
WHERE id = 1434;

-- ID 1436: Government Auditing Standards
UPDATE questions SET
  explanation = $EXPL$Correct. Per GAGAS and the Uniform Guidance (2 CFR 200.514), the auditor tests compliance requirements identified in the OMB Compliance Supplement that could have a direct and material effect on each major program. Not all 12 types of compliance requirements apply to every program; the auditor determines applicability based on program-specific requirements and the Compliance Supplement. While testing only financial reporting or only procurement would be insufficient, testing all 12 types regardless of applicability is unnecessarily broad and not required.$EXPL$
WHERE id = 1436;

-- ID 1440: Government Auditing Standards
UPDATE questions SET
  explanation = $EXPL$Correct. Per GAGAS and the Uniform Guidance (2 CFR 200.510), the schedule of expenditures of federal awards (SEFA) must include the federal program name, Assistance Listing (formerly CFDA) number, the federal awarding agency, and the amount expended for each program, and it must reconcile to the financial statements. The SEFA covers all federal awards, not just those exceeding the Type A threshold. Although a single aggregate total might seem sufficient, the Uniform Guidance requires program-level detail to enable proper major program determination.$EXPL$
WHERE id = 1440;

-- ============================================================
-- INDEPENDENCE (5 questions)
-- ============================================================

-- ID 13830: Independence
UPDATE questions SET
  explanation = $EXPL$Correct. SEC Regulation S-X, Section 2-01(c)(4)(i) explicitly prohibits an auditor from providing bookkeeping and related services to SEC registrant audit clients. This is a bright-line prohibition that cannot be overcome by audit committee pre-approval or other safeguards. Unlike permitted non-audit services where safeguards such as using a separate team can mitigate threats, bookkeeping for an SEC registrant audit client is categorically barred regardless of the arrangement.$EXPL$
WHERE id = 13830;

-- ID 13832: Independence
UPDATE questions SET
  explanation = $EXPL$Correct. SEC Section 2-01(c)(7) requires audit committee pre-approval of all non-audit services provided to a public company audit client. The de minimis exception under Rule 2-01(c)(7)(i)(C) allows services to proceed without advance approval if the aggregate fee is under 5% of total audit fees, the services are promptly brought to the committee''s attention, and they are approved before the audit is completed. At 3% of total fees, this engagement qualifies for the de minimis exception, whereas retroactive ratification alone would not satisfy the pre-approval requirement.$EXPL$
WHERE id = 13832;

-- ID 13837: Independence
UPDATE questions SET
  explanation = $EXPL$Correct. SEC Section 2-01(c)(2)(iii)(B) requires a one-year cooling-off period before any engagement team member who provided more than 10 hours of audit service may accept a financial reporting oversight role (FROR) at the audit client. Director of Internal Audit qualifies as an FROR because it directly influences financial reporting oversight. Kim''s immediate transition violates this requirement. Although one might assume the rule applies only to partners, the SEC''s 10-hour threshold captures senior managers and other team members who had substantive involvement in the engagement.$EXPL$
WHERE id = 13837;

-- ID 13838: Independence
UPDATE questions SET
  explanation = $EXPL$Correct. SEC Section 2-01(c)(7)(i)(C) provides a de minimis exception only when aggregate non-audit fees do not exceed 5% of total fees paid to the auditor. Here, $31,000 represents approximately 5.2% of $600,000, exceeding the 5% threshold. Because the threshold is a firm limit and the SEC evaluates aggregate fees rather than individual services, the exception is unavailable and the lack of pre-approval impairs independence. Unlike individual-service analysis, the SEC requires that all non-audit fees be combined when testing the 5% ceiling.$EXPL$
WHERE id = 13838;

-- ID 13842: Independence
UPDATE questions SET
  explanation = $EXPL$Correct. SEC Section 2-01(c)(2)(iii)(A) mandates a one-year cooling-off period before the lead engagement partner may serve in a financial reporting oversight role at a public audit client. Chief Accounting Officer is an FROR, so Ross must wait until at least June 2026. The one-year cooling-off specifically governs employment at the client, whereas the five-year period relates to partner rotation back onto the same engagement at the firm, not to accepting a position at the audit client.$EXPL$
WHERE id = 13842;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 questions)
-- ============================================================

-- ID 142: Professional Responsibilities
UPDATE questions SET
  explanation = $EXPL$Correct. Under the AICPA Code of Professional Conduct ET 1.295.040, providing tax services to an audit client creates a self-review threat when the tax work product (such as the annual tax provision) is reflected as a material line item in the financial statements being audited. The auditor must evaluate the severity of the threat and apply appropriate safeguards. While advocacy threats involve publicly promoting a client''s position, the self-review threat is distinct because the auditor would be reviewing the results of their own firm''s nonattest work during the audit.$EXPL$
WHERE id = 142;

-- ============================================================
-- RISK ASSESSMENT (1 questions)
-- ============================================================

-- ID 1520: Risk Assessment
UPDATE questions SET
  explanation = $EXPL$Correct. Under AU-C 315.A142, the auditor considers estimation uncertainty when assessing the risk of material misstatement for significant accounting estimates. The percentage-of-completion method requires substantial management judgment regarding total contract revenue and costs, making the valuation assertion inherently susceptible to misstatement and therefore a higher-risk area. Unlike routine assertions such as cash disbursement completeness or office equipment existence, long-term contract estimates involve significant subjectivity that elevates inherent risk.$EXPL$
WHERE id = 1520;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (11 questions)
-- ============================================================

-- ID 1669: Substantive Procedures
UPDATE questions SET
  explanation = $EXPL$Correct. Under AU-C 520.05, the first step when designing a substantive analytical procedure is developing an independent expectation of the recorded amount using reliable and relevant data. This expectation serves as the benchmark against which the recorded balance is compared. Without a reliable expectation, the procedure cannot provide meaningful audit evidence. Although investigating differences and setting thresholds are part of the process, they occur after the expectation is developed, not before.$EXPL$
WHERE id = 1669;

-- ID 1674: Substantive Procedures
UPDATE questions SET
  explanation = $EXPL$Correct. Under AU-C 501.11, when the auditor observes damaged or obsolete inventory during the physical count, the auditor should note the items and evaluate whether management has appropriately accounted for impairment through write-downs or lower of cost and net realizable value adjustments. This addresses the valuation assertion for inventory. While valuation is management''s responsibility, the auditor must evaluate the reasonableness of management''s accounting treatment rather than simply accepting it or excluding items from the count.$EXPL$
WHERE id = 1674;

-- ID 1675: Substantive Procedures
UPDATE questions SET
  explanation = $EXPL$Correct. Under AU-C 330.A37, to test the occurrence assertion (whether recorded transactions actually occurred), the auditor starts from the recorded amount and vouches backward to supporting documentation such as shipping documents and customer orders. This direction of testing confirms that recorded sales represent real transactions. However, tracing from shipping documents to recorded sales tests the completeness assertion, not occurrence, because the auditor is verifying that valid transactions were captured in the records.$EXPL$
WHERE id = 1675;

-- ID 1694: Substantive Procedures
UPDATE questions SET
  explanation = $EXPL$Correct. Under AU-C 240.A41 and related fraud guidance, the most effective approach for detecting fictitious vendors is to examine vendor master file attributes that suggest the vendor may not be a real business—such as P.O. box-only addresses, missing telephone numbers, or vendor names matching employee information—and to verify that goods or services were actually received. Unlike confirmations, which fictitious vendors would not respond to or would return fraudulently, vendor attribute analysis directly tests vendor legitimacy.$EXPL$
WHERE id = 1694;

-- ID 1695: Substantive Procedures
UPDATE questions SET
  explanation = $EXPL$Correct. Under AU-C 330.A48, the search for unrecorded liabilities examines cash disbursements made after year-end, invoices received after year-end, and unmatched receiving reports to identify obligations that existed at the balance sheet date but were not recorded. This procedure tests the completeness assertion for liabilities and covers the period from year-end through the completion of fieldwork. Unlike testing within the fiscal year itself, the search looks at post-year-end activity to identify items that should have been accrued.$EXPL$
WHERE id = 1695;

-- ID 1696: Substantive Procedures
UPDATE questions SET
  explanation = $EXPL$Correct. Under AU-C 330.A36, examining title documents (deeds), property tax records in the entity''s name, and mortgage agreements directly addresses the rights and obligations assertion by establishing whether the entity has legal ownership of the real property and identifying any encumbrances such as liens or mortgages. While physical inspection addresses the existence assertion and depreciation recalculation addresses valuation, neither directly establishes legal ownership rights.$EXPL$
WHERE id = 1696;

-- ID 1699: Substantive Procedures
UPDATE questions SET
  explanation = $EXPL$Correct. Under AU-C 330.A37, vouching recorded fixed asset additions to supporting documentation such as vendor invoices, receiving reports, and capital authorization forms primarily tests the existence assertion—confirming that the asset was actually acquired and the recorded amount agrees to the purchase price. Starting from the recorded amount and tracing backward tests occurrence and existence. In contrast, testing completeness requires tracing from source documents to the records, which is the opposite direction.$EXPL$
WHERE id = 1699;

-- ID 1701: Substantive Procedures
UPDATE questions SET
  explanation = $EXPL$Correct. Under AU-C 240.A41 and related payroll fraud guidance, observing paycheck distribution or verifying direct deposit recipients against personnel records tests the existence assertion by confirming that recorded employees are real individuals. Ghost employees—fictitious names created to generate fraudulent payroll payments—are a common payroll fraud scheme that directly targets the existence assertion. Although recalculating pay rates tests accuracy and comparing tax deposits to W-2 forms tests consistency, neither procedure addresses whether the employees actually exist.$EXPL$
WHERE id = 1701;

-- ID 1704: Substantive Procedures
UPDATE questions SET
  explanation = $EXPL$Correct. Under AU-C 520.04, a substantive analytical procedure uses a model—such as regression analysis or ratio estimation—to develop an independent expectation of an account balance, which the auditor then compares to the recorded amount to identify potential misstatements. This statistical approach provides substantive evidence about account balances. While tests of controls evaluate the operating effectiveness of internal controls and inspection of tangible assets involves physical examination, neither uses statistical modeling to form expectations about recorded amounts.$EXPL$
WHERE id = 1704;

-- ID 1705: Substantive Procedures
UPDATE questions SET
  explanation = $EXPL$Correct. Under AU-C 505.A17, electronic confirmation responses carry risks related to authenticity, including email spoofing, interception, or alteration. The auditor should evaluate these risks and may need additional steps to verify sender identity, such as calling the respondent at a known phone number or using a secure confirmation platform. Unlike traditional mail responses, electronic responses are not automatically more reliable, and the auditor must assess whether the electronic medium introduces unacceptable risk to the reliability of the evidence obtained.$EXPL$
WHERE id = 1705;

-- ID 1706: Substantive Procedures
UPDATE questions SET
  explanation = $EXPL$Correct. Under AU-C 570.A19, the most effective management plans for mitigating going concern doubt are those that are concrete, executed (signed and legally binding), and sufficient in amount and timing to address the entity''s identified financial difficulties. A signed credit facility or executed asset sale agreement provides the strongest evidence of mitigation. Although verbal commitments or minor expense reductions may demonstrate intent, they lack the reliability and enforceability of executed arrangements and therefore provide weaker evidence.$EXPL$
WHERE id = 1706;

COMMIT;
