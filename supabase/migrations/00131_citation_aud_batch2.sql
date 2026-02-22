-- Migration: Citation backfill — AUD batch 2 (50 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 50 explanations for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Independence, Internal Controls, Materiality, Misstatements and Control Deficiencies, Nature and Scope of Engagements, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Specific Areas and Transactions, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Using the Work of Others, Written Representations

BEGIN;

-- ============================================================
-- ANALYTICAL PROCEDURES (1 question)
-- ============================================================

-- ID 5093: Analytical Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.04, analytical procedures involve evaluating financial information through analysis of plausible relationships among financial and non-financial data. Comparing the current year''s gross margin percentage to prior years and industry averages is a classic analytical procedure because it identifies unexpected fluctuations that may indicate misstatement. Choice B is incorrect because detailed testing of individual transactions describes substantive tests of details, not analytical procedures.'
WHERE id = 5093;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 349: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 315, in a compliance attestation engagement the criteria are the specific requirements against which compliance is being measured — the contract terms, regulatory provisions, or grant conditions. These criteria must be suitable (objective, measurable, complete) and available to the users of the report. Choice B is incorrect because GAAP is a financial reporting framework, not the criteria for a compliance engagement — the applicable criteria come from the agreement or regulation being tested.'
WHERE id = 349;

-- ID 350: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 205 and SSAE 18, a SOC 2 report evaluates controls based on the Trust Services Criteria (TSC): security (the common criteria required for all SOC 2 reports), availability, processing integrity, confidentiality, and privacy. The service organization selects which additional criteria beyond security are relevant to its services. Choice A is incorrect because GAAP and IFRS are financial reporting frameworks, not SOC 2 criteria. Choice C is incorrect because SOC 2 specifically uses the TSC, not the COSO framework directly.'
WHERE id = 350;

-- ============================================================
-- AUDIT EVIDENCE (4 questions)
-- ============================================================

-- ID 301: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 505.08, if management refuses to allow the auditor to send confirmation requests and the auditor cannot obtain sufficient appropriate evidence through alternative procedures, this constitutes a scope limitation. Depending on the materiality and pervasiveness of the affected accounts, the auditor may issue a qualified opinion or disclaimer of opinion under AU-C 705. Choice A is incorrect because a going concern issue relates to the entity''s ability to continue operations, not to restrictions on audit procedures.'
WHERE id = 301;

-- ID 1279: Audit Evidence
UPDATE questions SET
  explanation = 'Under SAS 143 (AU-C 540 revised), the "data" component of an accounting estimate encompasses all financial and non-financial inputs used in the estimation method. This includes internal accounting data, external market data, industry statistics, demographic information, and other inputs that feed into the model. Choice B is incorrect because the data component is not limited to general ledger data — it encompasses all inputs, both internal and external, that inform the estimation process.'
WHERE id = 1279;

-- ID 1280: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 505.A17, the primary risk with electronic confirmations is the inability to verify the identity and authority of the respondent. Unlike paper confirmations sent to verified physical addresses, electronic responses can be intercepted, spoofed, or sent by unauthorized individuals. The auditor must implement procedures to mitigate this risk, such as using secure confirmation platforms. Choice C is incorrect because electronic confirmations are not inherently inadmissible — they require additional identity verification controls.'
WHERE id = 1280;

-- ID 1587: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 500.06, sufficiency is the measure of the quantity of audit evidence. The quantity needed is affected by the auditor''s assessment of the risk of material misstatement and the quality of the individual items of evidence obtained. Higher assessed risk requires more evidence. Choice B is incorrect because relevance and reliability relate to the appropriateness of audit evidence under AU-C 500.07, not its sufficiency — these are distinct but complementary concepts.'
WHERE id = 1587;

-- ============================================================
-- AUDIT PLANNING (3 questions)
-- ============================================================

-- ID 272: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 315.12, the auditor must understand the entity and its environment, including business operations and organizational structure. Rapid growth through acquisitions introduces significant complexity: consolidation accounting under ASC 805, goodwill and intangible asset valuation, purchase price allocation, and integration of disparate systems and controls. These factors significantly increase the risk of material misstatement. Choice B is incorrect because staffing changes alone, while relevant, do not introduce the same breadth of financial reporting complexity as multiple acquisitions.'
WHERE id = 272;

-- ID 273: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 320.A3, the auditor selects benchmarks appropriate to the entity''s circumstances. Not-for-profit organizations do not have net income, earnings per share, or market capitalization, so the most appropriate benchmarks are total revenue, total expenses, or total assets. Total revenue or total expenses is most commonly used because it reflects the scale of the organization''s activities. Choice C is incorrect because net income is not available for NFP entities and therefore cannot serve as a materiality benchmark.'
WHERE id = 273;

-- ID 1441: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 300.07, the overall audit strategy sets the scope, timing, and direction of the audit and guides the development of the more detailed audit plan. It addresses the broad approach — including resource allocation, engagement team assignments, and key risk areas — rather than specific procedures. Choice B is incorrect because communication with those charged with governance, while important under AU-C 260, is not the primary purpose of the overall audit strategy.'
WHERE id = 1441;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 128: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 600.23, when the group engagement partner decides not to make reference to the component auditor in the report, the group partner assumes responsibility for the component auditor''s work. This requires evaluating the component auditor''s independence, professional competence, and the sufficiency and appropriateness of audit evidence obtained at the component level. Choice A is incorrect because simply disclosing the component auditor in the report without assuming responsibility describes the alternative approach of making reference under AU-C 600.24.'
WHERE id = 128;

-- ID 332: Audit Reports
UPDATE questions SET
  explanation = 'Under PCAOB AS 2201.90, a material weakness in internal control over financial reporting requires an adverse opinion on ICFR. However, the opinion on the financial statements is determined separately based on whether they are materially misstated. It is possible to have an adverse opinion on ICFR and an unmodified opinion on the financial statements if the misstatement was detected and corrected. Choice B is incorrect because a material weakness does not automatically result in a qualified opinion on the financial statements.'
WHERE id = 332;

-- ============================================================
-- AUDIT SAMPLING (4 questions)
-- ============================================================

-- ID 305: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.05, audit sampling applies when the auditor selects less than 100% of items in a population. Testing 100% of items in a stratum is complete examination, not sampling. The auditor may combine complete examination of the top stratum with sampling of remaining strata to achieve efficient population coverage under AU-C 530.A3. Choice B is incorrect because stratified sampling still involves selecting less than all items from each stratum, whereas 100% testing eliminates sampling risk entirely.'
WHERE id = 305;

-- ID 306: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A23, in monetary-unit sampling (MUS) the sampling interval equals the total recorded dollar value of the population divided by the desired sample size. Every nth dollar is selected, which means larger items have a proportionally higher chance of selection — a key advantage of MUS for detecting overstatement. Choice B is incorrect because dividing sample size by population reverses the formula and would produce a fraction rather than a meaningful interval.'
WHERE id = 306;

-- ID 307: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A24, the tainting percentage in MUS is calculated as (Book Value − Audit Value) / Book Value for each misstatement found. This percentage is then multiplied by the sampling interval to project the misstatement to the portion of the population represented by that sample item. Choice A is incorrect because using the audit value rather than the book value as the denominator would produce an incorrect tainting calculation under MUS methodology.'
WHERE id = 307;

-- ID 308: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A24, the tainting percentage = ($400 − $320) / $400 = 20%. The projected misstatement = 20% × $80,000 sampling interval = $16,000. The $80 misstatement in the individual item is projected to the entire sampling interval to estimate the total misstatement in the population segment represented by that sample item. Choice A is incorrect because using only the $80 actual misstatement without projection would understate the likely population misstatement.'
WHERE id = 308;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 257: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.224 and SEC independence rules, a financial reporting oversight role (FROR) includes positions with direct influence over the preparation of financial statements, such as CFO, controller, chief accounting officer, and equivalent positions. Choice B is incorrect because an HR director does not typically have direct influence over financial reporting content and therefore does not occupy an FROR as defined by SEC and PCAOB independence standards.'
WHERE id = 257;

-- ID 264: Ethics and Independence
UPDATE questions SET
  explanation = 'Under SOX Section 203 and PCAOB Rule 3600T, the lead engagement partner and concurring review partner must rotate off a public company engagement after five years and observe a five-year cooling-off period before returning. During the cooling-off period, the partner may not serve in any capacity on that engagement. Choice B is incorrect because a two-year cooling-off period applies to other significant audit partners after seven years of service, not to the lead engagement partner.'
WHERE id = 264;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (2 questions)
-- ============================================================

-- ID 1131: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under the Uniform Guidance (2 CFR 200.518) and GAGAS, major program determination uses a risk-based approach: programs are first classified as Type A (above the dollar threshold) or Type B (below). The auditor then applies risk assessment to determine which programs become major programs subject to compliance testing under AU-C 935. Choice C is incorrect because the entity does not select its own major programs — the auditor makes this determination using the risk-based methodology.'
WHERE id = 1131;

-- ID 1134: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under the Uniform Guidance (2 CFR 200.512) and GAGAS, the single audit reporting package must be submitted to the Federal Audit Clearinghouse within the earlier of 30 days after receipt of the auditor''s report or 9 months after the end of the fiscal year. Choice A is incorrect because a 30-day deadline alone omits the 9-month backstop. Choice C is incorrect because 12 months exceeds the maximum timeline established by the Uniform Guidance.'
WHERE id = 1134;

-- ============================================================
-- INDEPENDENCE (1 question)
-- ============================================================

-- ID 4934: Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct ET 1.210 (Conceptual Framework), the correct sequence is: (1) identify threats to independence, (2) evaluate the significance of those threats, (3) apply safeguards to reduce threats to an acceptable level when possible, and (4) conclude whether independence is maintained. If safeguards cannot reduce the threat to an acceptable level, the engagement should be declined or terminated. Choice B is incorrect because applying safeguards before evaluating threat significance skips a required analytical step.'
WHERE id = 4934;

-- ============================================================
-- INTERNAL CONTROLS (5 questions)
-- ============================================================

-- ID 285: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A84, test data is a computer-assisted audit technique (CAAT) where the auditor submits fictitious or simulated transactions through the client''s system to test whether programmed controls — such as edit checks, validation rules, and calculations — function as designed. The auditor compares actual results to expected results to identify control failures. Choice B is incorrect because parallel simulation involves the auditor reprocessing actual data through independent software, which is a different CAAT methodology.'
WHERE id = 285;

-- ID 286: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 402.15, before relying on a SOC 1 Type 2 report, the user auditor must evaluate whether the report covers the relevant period and controls, assess the service auditor''s competence and independence, and test any complementary user entity controls (CUECs) identified in the report. Choice A is incorrect because simply accepting the report without evaluation does not satisfy AU-C 402 — the user auditor must critically assess the report''s relevance and the service auditor''s qualifications.'
WHERE id = 286;

-- ID 287: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 402.11, complementary user entity controls (CUECs) are controls that the service organization assumes the user entity has in place. The service organization''s controls may be designed with the assumption that the user entity performs certain activities such as reviewing output reports, reconciling data, or authorizing transactions. The user auditor must test these CUECs at the user entity. Choice B is incorrect because CUECs are the user entity''s responsibility, not the service organization''s.'
WHERE id = 287;

-- ID 288: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A30, reperformance is the strongest test of operating effectiveness because the auditor independently executes the control procedure and verifies the results. This provides the most direct evidence that the control produces the correct outcome. Choice B is incorrect because observation under AU-C 500.A22 provides evidence only at a point in time and does not confirm the control operated effectively throughout the period. Choice C is incorrect because inquiry alone is never sufficient evidence of operating effectiveness.'
WHERE id = 288;

-- ID 290: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 402.08, a SOC 1 Type 1 report covers the description and design of controls and whether they were suitably designed and implemented at a specific point in time. A SOC 1 Type 2 report under SSAE 18 goes further by also testing the operating effectiveness of those controls over a specified period (typically 6–12 months). Choice C is incorrect because both Type 1 and Type 2 reports address the same service organization controls — the difference is the scope of testing, not the subject matter.'
WHERE id = 290;

-- ============================================================
-- MATERIALITY (1 question)
-- ============================================================

-- ID 5016: Materiality
UPDATE questions SET
  explanation = 'Under AU-C 320.A3, when using net income before taxes as a benchmark for a stable, profitable entity, auditors commonly apply a percentage in the range of 5% to 10%. This range is widely accepted in practice, though the specific percentage depends on the auditor''s professional judgment and the entity''s circumstances. Choice B is incorrect because 1% to 2% is the typical range applied to total revenue or total assets, not net income — different benchmarks require different percentage ranges under AU-C 320.'
WHERE id = 5016;

-- ============================================================
-- MISSTATEMENTS AND CONTROL DEFICIENCIES (1 question)
-- ============================================================

-- ID 5112: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 265.07, a significant deficiency is a deficiency, or combination of deficiencies, in internal control that is less severe than a material weakness yet important enough to merit attention by those charged with governance. It represents a control failure that is noteworthy but does not rise to the level where there is a reasonable possibility of a material misstatement. Choice A is incorrect because a material weakness under AU-C 265.06 is more severe — it involves a reasonable possibility that a material misstatement will not be prevented or detected.'
WHERE id = 5112;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (1 question)
-- ============================================================

-- ID 4912: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 315.A128, the existence assertion addresses whether assets, liabilities, and equity interests actually exist at a given date. By physically observing inventory or confirming it with third parties, the auditor tests existence — that the recorded amounts represent real items. Choice A is incorrect because the completeness assertion under AU-C 315.A128 addresses the opposite direction — whether all items that should be recorded have been recorded, not whether recorded items exist.'
WHERE id = 4912;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 question)
-- ============================================================

-- ID 1352: Professional Responsibilities
UPDATE questions SET
  explanation = 'Under AU-C 560.14 and the AICPA Code of Professional Conduct, even after the professional relationship has ended, a CPA who discovers a material error in previously issued financial statements should notify the former client and recommend corrective action. If the client refuses to take appropriate steps, the CPA should evaluate further actions including notifying parties relying on the statements. Choice A is incorrect because the CPA retains responsibility for the accuracy of previously issued reports and cannot simply ignore a discovered error.'
WHERE id = 1352;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 question)
-- ============================================================

-- ID 4955: Professional Skepticism and Judgment
UPDATE questions SET
  explanation = 'Under AU-C 200.17 and AU-C 540.12, developing an independent expectation and comparing it to management''s estimate most clearly demonstrates professional skepticism by not accepting management''s figures at face value. This approach allows the auditor to assess reasonableness and identify potential biases or errors in accounting estimates. Choice B is incorrect because accepting management''s estimate without independent verification fails to exercise the questioning mind required by AU-C 200.'
WHERE id = 4955;

-- ============================================================
-- QUALITY MANAGEMENT (2 questions)
-- ============================================================

-- ID 138: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS No. 2.03, engagement quality reviews are required for audits of listed entities (public companies) and other engagements for which the firm determines a review is appropriate based on quality risk assessments. Listed entity audits always require this additional quality safeguard. Choice B is incorrect because compilations under AR-C 80 do not require engagement quality reviews — they are a lower level of service that does not involve the significant judgments necessitating independent review.'
WHERE id = 138;

-- ID 139: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS No. 2.20, the engagement quality reviewer is not required to reperform all audit procedures. The reviewer''s role involves evaluating significant judgments, reviewing critical areas of the engagement, assessing independence, and reading the financial statements and auditor''s report. The reviewer provides an objective evaluation of key decisions rather than duplicating audit work. Choice A is incorrect because reperformance of all procedures would effectively constitute a second audit, which exceeds the scope of an engagement quality review.'
WHERE id = 139;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (1 question)
-- ============================================================

-- ID 5038: Responding to Assessed Risks
UPDATE questions SET
  explanation = 'Under AU-C 330.08, before relying on controls to reduce the nature, timing, or extent of substantive procedures, the auditor must test the operating effectiveness of those controls. Simply understanding the design and implementation of controls under AU-C 315 is not sufficient — the auditor needs evidence that controls operated effectively throughout the period of intended reliance. Choice A is incorrect because understanding control design alone does not provide evidence of operating effectiveness.'
WHERE id = 5038;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 347: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 80.24 and AR-C 70.05, independence is not required for a compilation engagement or a preparation engagement. However, if the accountant is not independent when performing a compilation, AR-C 80.24 requires disclosure of the lack of independence in the compilation report. Choice B is incorrect because audits require independence under AU-C 200.15, and reviews require independence under AR-C 90.21 — both engagement types impose stricter independence standards.'
WHERE id = 347;

-- ID 1753: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 90.24, review engagements are primarily based on inquiry of management and analytical procedures. These are the two principal procedures that form the basis for the limited assurance provided in a review report. Choice B is incorrect because inspection of documents, confirmation of balances, and physical examination of assets are audit procedures performed under AU-C standards, not review engagement procedures. A review provides limited assurance, whereas an audit provides reasonable assurance through more extensive procedures.'
WHERE id = 1753;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 132: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 70.05, in a preparation engagement no report is required — instead, each page of the financial statements must include a legend stating no assurance is provided. Under AR-C 80.20, a compilation requires the accountant to issue a written compilation report. Both engagements require an understanding of the client''s business, and neither provides assurance on the financial statements. Choice C is incorrect because neither engagement involves verification procedures — the distinction is in the reporting requirement.'
WHERE id = 132;

-- ID 1788: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.30, the accountant inquires about related-party transactions to determine whether they have been properly identified, accounted for, and disclosed in accordance with the applicable financial reporting framework. The accountant''s focus in a review is on proper identification and disclosure, not on eliminating or restructuring related-party transactions. Choice B is incorrect because verifying arm''s-length pricing requires audit-level procedures beyond the scope of a review engagement under AR-C 90.'
WHERE id = 1788;

-- ============================================================
-- RISK ASSESSMENT (3 questions)
-- ============================================================

-- ID 277: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.A50, in a highly regulated environment with frequent changes, the greatest risk is that the entity fails to disclose all required compliance information — a completeness assertion risk for disclosures. New or changed regulations increase the likelihood that required disclosures are inadvertently omitted from the financial statements. Choice A is incorrect because the existence assertion concerns whether recorded items actually exist, which is less likely to be the primary concern for disclosure of newly enacted regulatory requirements.'
WHERE id = 277;

-- ID 278: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 200.A42, the audit risk model (AR = IR × CR × DR) requires that when both inherent risk and control risk are assessed as high, detection risk must be set low to maintain audit risk at an acceptably low level. This means the auditor must perform more extensive, persuasive, and timely substantive procedures under AU-C 330. Choice B is incorrect because setting detection risk high when the other risk components are high would result in an unacceptably high level of audit risk.'
WHERE id = 278;

-- ID 279: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 240.A1, financial difficulties and compensation tied to earnings targets create incentive or pressure to commit fraud — the first element of the fraud triangle. These factors directly create the motive for fraudulent financial reporting. Choice B is incorrect because opportunity relates to circumstances that allow fraud to occur (such as weak controls or overriding authority), not to the financial motivations that drive an individual to commit fraud.'
WHERE id = 279;

-- ============================================================
-- SPECIFIC AREAS AND TRANSACTIONS (1 question)
-- ============================================================

-- ID 5150: Specific Areas and Transactions
UPDATE questions SET
  explanation = 'Under AU-C 570.A3, indicators of going concern issues include recurring operating losses, negative working capital, default on loan agreements, inability to obtain additional financing, loss of major customers or suppliers, and adverse financial ratios. These conditions raise substantial doubt about the entity''s ability to continue as a going concern for a reasonable period — typically one year from the financial statement date under AU-C 570.13. Choice B is incorrect because a single profitable quarter does not negate the cumulative effect of multiple adverse indicators.'
WHERE id = 5150;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (3 questions)
-- ============================================================

-- ID 317: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 570.16, when conditions raise substantial doubt about going concern, the auditor must evaluate management''s plans to mitigate the situation — such as obtaining financing, selling assets, restructuring debt, or reducing costs. The auditor assesses whether these plans are feasible and likely to be effectively implemented before determining the reporting impact. Choice A is incorrect because immediately issuing a disclaimer without evaluating management''s plans does not satisfy the auditor''s responsibilities under AU-C 570.'
WHERE id = 317;

-- ID 319: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 570.20, when going concern uncertainty exists and the entity provides adequate disclosure, the auditor issues an unmodified opinion with an emphasis-of-matter paragraph under AU-C 706 that draws attention to the going concern disclosure. The opinion is not modified because the entity has appropriately disclosed the uncertainty. Choice B is incorrect because a qualified opinion would be appropriate only if the entity failed to provide adequate going concern disclosure, not when disclosure is adequate.'
WHERE id = 319;

-- ID 1670: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520.07, when the difference between the auditor''s expectation and the recorded amount ($800,000) exceeds the predetermined threshold ($500,000), the auditor must investigate by obtaining explanations from management and corroborating those explanations with additional evidence. An unexplained difference exceeding the threshold may indicate a misstatement requiring evaluation under AU-C 450. Choice A is incorrect because accepting the recorded amount without investigation would violate the auditor''s responsibility to follow up on significant analytical procedure differences.'
WHERE id = 1670;

-- ============================================================
-- TERMS OF ENGAGEMENT (1 question)
-- ============================================================

-- ID 4973: Terms of Engagement
UPDATE questions SET
  explanation = 'Under AU-C 210.15, when management requests a change from an audit to a review after substantial work has been completed, the auditor should evaluate whether there is reasonable justification for the change — such as changed circumstances that remove the need for an audit. If the auditor believes the change is intended to limit scope, avoid adverse findings, or circumvent reporting requirements, AU-C 210.16 directs the auditor not to agree to the change and to consider withdrawing. Choice B is incorrect because automatically accepting the downgrade without evaluating management''s rationale violates AU-C 210.'
WHERE id = 4973;

-- ============================================================
-- TESTS OF CONTROLS (1 question)
-- ============================================================

-- ID 5074: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.14, when planning to rely on controls, the auditor must test their operating effectiveness in each audit period. However, AU-C 330.15 allows the auditor to use a rotation approach for unchanged controls, testing them at least once every three audits while performing some current-period testing. Choice A is incorrect because relying solely on prior-year testing without any current-period procedures does not satisfy AU-C 330''s requirement for evidence of ongoing operating effectiveness.'
WHERE id = 5074;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (1 question)
-- ============================================================

-- ID 4994: Understanding the Entity and Environment
UPDATE questions SET
  explanation = 'Under AU-C 315.A24, reviewing board minutes helps the auditor understand significant decisions, commitments, and events that may affect the financial statements. This includes authorization of major transactions, litigation developments, dividend declarations, related-party transactions, and changes in accounting policies or management. Choice B is incorrect because evaluating internal control design is accomplished through walkthroughs and observation under AU-C 315, not primarily through review of board minutes.'
WHERE id = 4994;

-- ============================================================
-- USING THE WORK OF OTHERS (1 question)
-- ============================================================

-- ID 5055: Using the Work of Others
UPDATE questions SET
  explanation = 'Under AU-C 402.08 and SSAE 18, a SOC 1 Type 1 report describes the service organization''s system and evaluates the suitability of control design at a point in time. A SOC 1 Type 2 report includes the same description plus tests of operating effectiveness over a specified period (typically 6–12 months), providing more useful evidence for the user auditor. Choice A is incorrect because both report types cover the same service organization — the difference is that Type 2 includes testing results over a period, not just design evaluation at a date.'
WHERE id = 5055;

-- ============================================================
-- WRITTEN REPRESENTATIONS (1 question)
-- ============================================================

-- ID 5133: Written Representations
UPDATE questions SET
  explanation = 'Under AU-C 580.14, if management refuses to provide required written representations, the auditor has a scope limitation. The auditor should discuss the matter with management, reevaluate management''s integrity, and determine the effect on the audit opinion. Under AU-C 580.15, a refusal to provide required representations typically results in a qualified opinion or disclaimer of opinion under AU-C 705, depending on the significance. Choice B is incorrect because issuing an unmodified opinion despite missing representations violates AU-C 580.'
WHERE id = 5133;

COMMIT;
