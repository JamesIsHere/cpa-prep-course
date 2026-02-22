-- Migration: Citation backfill — AUD batch 12 (55 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 55 explanations for AUD section
-- Affected topics: Analytical Procedures, Attestation Engagements, Audit Evidence, Audit Planning, Audit Reports, Audit Sampling, Ethics and Independence, Government Auditing Standards, Internal Controls, Materiality, Misstatements and Control Deficiencies, Nature and Scope of Engagements, Professional Responsibilities, Professional Skepticism and Judgment, Quality Management, Responding to Assessed Risks, Review and Compilation, Review/Compilation Engagements, Risk Assessment, Substantive Procedures, Terms of Engagement, Tests of Controls, Understanding the Entity and Environment, Written Representations

BEGIN;

-- ============================================================
-- INTERNAL CONTROLS (5 questions)
-- ============================================================

-- ID 1556: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 265, a material weakness is defined as a deficiency, or combination of deficiencies, in internal control such that there is a reasonable possibility that a material misstatement of the entity''s financial statements will not be prevented, or detected and corrected, on a timely basis. This is the most severe classification of control deficiencies. A significant deficiency is less severe — it is important enough to merit attention but does not rise to the level of a material weakness. A control deficiency alone, without considering whether it could lead to material misstatement, is insufficient to classify as a material weakness. The key threshold is the "reasonable possibility" of a material misstatement going undetected, not merely a "remote likelihood" or an inconvenience to the audit process.'
WHERE id = 1556;

-- ID 1558: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A128, matching shipping documents to sales invoices before recording revenue is a control that directly addresses the occurrence assertion. The occurrence assertion addresses whether recorded transactions actually took place. By requiring evidence of shipment before recognizing revenue, the control ensures that fictitious or premature revenue entries are prevented. Choice A is incorrect because completeness addresses whether all transactions are recorded, not whether recorded transactions occurred. Choice C is incorrect because valuation addresses whether amounts are recorded at appropriate values, not whether the underlying transaction took place.'
WHERE id = 1558;

-- ID 1559: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A86–A87, monitoring activities assess whether internal controls are present and functioning over time. An active internal audit function that regularly evaluates controls, reports findings to the audit committee, and tracks remediation of identified deficiencies provides the strongest evidence of effective monitoring. Choice A is incorrect because management''s verbal assertion that controls are working is insufficient without corroborating evidence of systematic evaluation. Choice B is incorrect because periodic review of financial statements alone does not constitute systematic monitoring of internal control effectiveness. The distinguishing feature of effective monitoring is the ongoing, systematic evaluation of control performance with follow-up on deficiencies.'
WHERE id = 1559;

-- ID 1560: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 330.A32–A33, automated controls, when properly designed and implemented, perform consistently because they are not subject to the human variability inherent in manual controls. When IT general controls (ITGCs) over program changes, access, and computer operations are effective and the automated control has not been modified since the prior year, the auditor may reduce the extent of testing of the automated control. Choice A is incorrect because the auditor cannot skip testing altogether — some evidence, even if reduced, is still required to support reliance on the control in the current period. Choice B is incorrect because automated controls do not require the same rigor of testing each year as manual controls when ITGCs are confirmed effective and the control is unchanged.'
WHERE id = 1560;

-- ID 1561: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.A73, mandatory vacation policies are classified as detective controls. When an employee is absent, another employee must perform their duties, which may reveal irregularities such as fraud, embezzlement, or errors that the absent employee had been concealing. This differs from preventive controls, which are designed to stop errors or fraud before they occur (such as segregation of duties or authorization requirements). Choice A is incorrect because preventive controls deter problems before they occur, while mandatory vacations detect problems after the fact. Choice C is incorrect because corrective controls fix identified problems rather than uncover them.'
WHERE id = 1561;

-- ============================================================
-- AUDIT EVIDENCE (4 questions)
-- ============================================================

-- ID 1609: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 560.09, the auditor is responsible for performing procedures designed to identify events occurring between the date of the financial statements and the date of the auditor''s report that require adjustment of, or disclosure in, the financial statements. These subsequent events procedures include reading minutes of meetings, inquiring of management about litigation and claims, and obtaining a representation letter. The auditor''s responsibility does not extend indefinitely beyond the report date — it is bounded by the date the auditor''s report is issued. Choice A is incorrect because the auditor''s responsibility for subsequent events extends through the report date, not only through the end of fieldwork. Choice C is incorrect because the auditor is not responsible for discovering all events after year-end, only those through the report date that may require adjustment or disclosure.'
WHERE id = 1609;

-- ID 1610: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 330.A55 and AU-C 505, subsequent cash collections of receivables provide strong audit evidence about both the existence and the valuation (net realizable value) of receivables reported at the balance sheet date. Collection in full during January confirms that the receivable existed at year-end and was collectible at its recorded amount, addressing concerns about the allowance for doubtful accounts. Choice A is incorrect because subsequent collections provide evidence about conditions that existed at year-end, not merely about subsequent period activity. Choice B is incorrect because the evidence is not limited to only the existence assertion — it also supports the valuation assertion by demonstrating collectibility.'
WHERE id = 1610;

-- ID 1611: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 500.A5, there is an inverse relationship between the quality (appropriateness) and quantity (sufficiency) of audit evidence. When the quality of evidence is high — such as evidence obtained directly by the auditor from independent external sources — less quantity may be needed to achieve the required level of assurance. Conversely, when evidence is of lower quality, the auditor must obtain a greater quantity to compensate. Choice A is incorrect because stating that more evidence is always better regardless of quality ignores the inverse relationship between sufficiency and appropriateness. Choice C is incorrect because a large quantity of low-quality evidence does not compensate for a lack of relevant, reliable evidence.'
WHERE id = 1611;

-- ID 1612: Audit Evidence
UPDATE questions SET
  explanation = 'Under AU-C 500.A2–A3, physical inspection (also called physical examination) provides the most persuasive evidence for the existence assertion because the auditor directly observes the tangible asset. For equipment, the auditor can see the asset, confirming it physically exists at the location. Choice A (depreciation schedules) is incorrect because documentation provides evidence that equipment was acquired but does not confirm current existence — the asset could have been disposed of. Choice B (insurance policies) is incorrect because they verify coverage, not that the asset remains on the premises. Choice C (management representations) is incorrect because inquiry of management is the least persuasive form of evidence for existence.'
WHERE id = 1612;

-- ============================================================
-- AUDIT SAMPLING (4 questions)
-- ============================================================

-- ID 1648: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A20–A21, when the auditor finds misstatements in a sample, the auditor must project those misstatements to the entire population to estimate the total likely misstatement. This projection is then compared to tolerable misstatement, and the auditor must also consider an allowance for sampling risk — the risk that the sample is not representative of the population. Choice A is incorrect because simply extrapolating without considering sampling risk would understate the potential misstatement. Choice B is incorrect because ignoring projected misstatements below a certain threshold or considering only individually significant items would fail to capture the aggregate effect of numerous small misstatements that could be material in total.'
WHERE id = 1648;

-- ID 1649: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A16–A17, even when zero deviations are found in a sample of 60, the auditor cannot simply conclude the deviation rate is zero. The auditor must consider the achieved upper deviation rate (also called the upper limit), which accounts for sampling risk — the possibility that the sample does not reflect the true population deviation rate. For a sample of 60 with zero deviations at a 5% risk of overreliance, the achieved upper deviation rate is approximately 5%, which equals the tolerable rate. Choice A is incorrect because concluding that the deviation rate is zero ignores sampling risk. Choice B is incorrect because stating the control is definitely effective would overstate the confidence level — the conclusion is probabilistic, not absolute.'
WHERE id = 1649;

-- ID 1650: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.05 and AU-C 530.A3, tolerable misstatement is defined as a monetary amount set by the auditor in respect of which the auditor seeks to obtain an appropriate level of assurance that the actual misstatement in the population does not exceed that amount. It represents the application of performance materiality to a particular sampling procedure. Choice A is incorrect because tolerable misstatement is not the same as overall materiality, which applies to the financial statements as a whole. Choice B is incorrect because tolerable misstatement is a sampling-specific concept that links sample results to the auditor''s broader materiality judgments, not the maximum misstatement before qualification.'
WHERE id = 1650;

-- ID 1651: Audit Sampling
UPDATE questions SET
  explanation = 'Under AU-C 530.A19 (monetary unit sampling projection), when a misstatement is found in a sampled item, the auditor calculates the tainting percentage as the misstatement amount divided by the recorded value of the item. Here, the tainting is $1,000 / $5,000 = 20%. The projected misstatement is then calculated by multiplying the tainting percentage by the sampling interval: 20% x $25,000 = $5,000. Choice A is incorrect because the projected misstatement is not simply the misstatement amount itself ($1,000). Choice B is incorrect because the projected misstatement is not the full sampling interval ($25,000). The tainting approach properly scales the misstatement to reflect the proportion of error within the logical sampling unit.'
WHERE id = 1651;

-- ============================================================
-- AUDIT PLANNING (3 questions)
-- ============================================================

-- ID 1466: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 320.A4–A6, when determining materiality, the auditor selects a benchmark appropriate to the entity''s circumstances. When the entity has reported a net loss, using net income as a benchmark is not meaningful because a percentage of a loss or near-zero income produces distorted materiality amounts. The auditor should instead use an alternative benchmark such as total revenues, total assets, or total expenses. Choice A is incorrect because using a percentage of the net loss would produce a negative or misleading materiality figure. Choice B is incorrect because using gross profit could also be problematic if it is volatile or unrepresentative of the entity''s overall financial position.'
WHERE id = 1466;

-- ID 1470: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 610.12–.14, when the external auditor plans to use the work of internal auditors to obtain audit evidence, the external auditor must evaluate the quality and objectivity of the internal audit function and perform procedures on the body of work performed by the internal auditors. This includes examining items they tested, reperforming certain procedures, and evaluating whether their conclusions are appropriate. Choice A is incorrect because the external auditor cannot simply accept the internal auditors'' conclusions without independent evaluation. Choice B is incorrect because the external auditor retains sole responsibility for the audit opinion and cannot delegate full responsibility for a significant audit area to internal audit.'
WHERE id = 1470;

-- ID 1472: Audit Planning
UPDATE questions SET
  explanation = 'Under AU-C 315.12–.13, the auditor is required to obtain an understanding of the entity''s information system, including the accounting information system, as it relates to financial reporting. When the entity has changed its accounting information system since the prior year, the auditor must obtain a new understanding of the system because the prior-year understanding is no longer current. This includes understanding how the new system processes transactions, maintains records, affects internal controls, and produces financial reports. Choice A is incorrect because simply relying on the prior-year understanding would be insufficient given the system change. Choice B is incorrect because only testing year-end balances without understanding the new system would miss potential risks introduced during the transition.'
WHERE id = 1472;

-- ============================================================
-- RISK ASSESSMENT (4 questions)
-- ============================================================

-- ID 1515: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.11–.12, when performing risk assessment procedures including preliminary analytical procedures, the auditor should investigate significant unexpected fluctuations. A significant increase in gross margin percentage compared to prior year and industry averages is a potential indicator of overstated revenues, understated cost of goods sold, or both. The auditor should consider this as a potential risk of material misstatement and design further audit procedures accordingly. Choice A is incorrect because dismissing the fluctuation without investigation would violate the auditor''s obligation to identify risks of material misstatement. Choice B is incorrect because assuming the increase reflects genuine improvement without corroborating evidence would fail to maintain professional skepticism.'
WHERE id = 1515;

-- ID 1517: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.A37–A39, inherent risk factors include the nature of the entity''s industry, economic conditions, and the entity''s business environment. Rapid technological change and declining demand for the entity''s primary product are significant inherent risk factors that increase the risk of material misstatement in several areas: inventory may be obsolete or overvalued, long-lived assets may be impaired, and the entity''s ability to continue as a going concern may be in doubt. Choice A is incorrect because these are inherent characteristics of the business environment that exist independent of any controls the entity may have in place. Choice B is incorrect because ignoring industry conditions would fail to identify significant risks that affect multiple financial statement assertions.'
WHERE id = 1517;

-- ID 1518: Risk Assessment
UPDATE questions SET
  explanation = 'Under AU-C 315.A54–A56, when assessing risks related to a complex IT environment with multiple integrated systems, the auditor should consider IT general controls (ITGCs) such as program change management, logical access security, and computer operations. The auditor must also evaluate application controls embedded within systems and the risks that interfaces between systems may introduce errors through data translation, mapping, or timing issues. Choice A is incorrect because focusing solely on manual controls in a highly automated environment would be inappropriate since most transaction processing occurs within the IT systems. Choice B is incorrect because the auditor cannot assume that IT controls are effective without testing, nor ignore interface risks between integrated systems.'
WHERE id = 1518;

-- ID 1513 placeholder removed — already in batch 11

-- ============================================================
-- SUBSTANTIVE PROCEDURES (3 questions)
-- ============================================================

-- ID 1691: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 315.A128, the cutoff assertion addresses whether transactions and events have been recorded in the correct accounting period. When a transaction is recorded in the wrong period — such as recording a December sale in January, or a January expense in December — the cutoff assertion is directly affected. Choice A is incorrect because the occurrence assertion relates to whether transactions actually happened, not their timing. Choice C is incorrect because the valuation assertion addresses whether amounts are recorded at appropriate values, not the period in which they are recorded. Choice D is incorrect because the classification assertion relates to whether items are categorized correctly in the financial statements.'
WHERE id = 1691;

-- ID 1692: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 620.14–.15, when using an auditor''s specialist (one employed by or engaged by the audit firm), the auditor should evaluate the specialist''s competence, capabilities, and objectivity. However, AU-C 620.15 states that when issuing an unmodified opinion, the auditor should not refer to the work of an auditor''s specialist in the auditor''s report because such reference might be misunderstood as a qualification of the opinion or a division of responsibility. Reference to a specialist is permitted only when the auditor issues a modified opinion and the reference is relevant to understanding the modification. Choice A is incorrect because referencing the specialist in an unmodified opinion would be inappropriate. Choice B is incorrect because the auditor retains sole responsibility for the opinion regardless of specialist involvement.'
WHERE id = 1692;

-- ID 1693: Substantive Procedures
UPDATE questions SET
  explanation = 'Under AU-C 505.08–.10, maintaining control of the confirmation process means the auditor personally determines the selection of items to confirm, designs and prepares (or supervises preparation of) the confirmation requests, sends the requests directly to the confirming parties, and ensures that responses are returned directly to the auditor — not to the client. This prevents management from intercepting or altering responses. Choice A is incorrect because simply reviewing confirmation responses prepared and sent by the client does not constitute maintaining control. Choice B is incorrect because allowing the client to send confirmations directly would compromise the integrity of the evidence because management could intercept or alter responses.'
WHERE id = 1693;

-- ============================================================
-- GOVERNMENT AUDITING STANDARDS (2 questions)
-- ============================================================

-- ID 1428: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS (Government Auditing Standards), Chapter 3, professional judgment requires auditors to apply their training, knowledge, and experience in making informed decisions throughout the audit. This includes exercising reasonable care, professional skepticism, and diligence. Professional judgment under GAGAS is consistent with the concept in AU-C 200 but carries additional responsibilities in the government audit context, including consideration of the public interest and accountability for public resources. Choice A is incorrect because professional judgment does not permit the auditor to bypass required procedures based on subjective assessments. Choice B is incorrect because professional judgment requires a disciplined, structured approach grounded in competence and objectivity, not personal opinion substituted for authoritative standards.'
WHERE id = 1428;

-- ID 1429: Government Auditing Standards
UPDATE questions SET
  explanation = 'Under GAGAS (Government Auditing Standards), Chapter 3, paragraphs 3.30–3.35, independence is impaired when the head of the audit organization is appointed by or subject to removal by officials of the audited entity without legislative approval or involvement of an independent body. This creates a structural threat to independence because the audit organization''s leadership may be influenced by the entity it is auditing. GAGAS requires both independence of mind and independence in appearance. Choice A is incorrect because a threat arising from routine client interactions, such as discussing audit findings, does not impair independence. Choice B is incorrect because receiving compensation through normal government channels does not create an impairment unless the audited entity controls the audit organization''s leadership.'
WHERE id = 1429;

-- ============================================================
-- REVIEW AND COMPILATION (2 questions)
-- ============================================================

-- ID 1773: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 80.21–.24 (SSARS), when the accountant becomes aware of a known misstatement in compiled financial statements and management fails to provide an adequate response or refuses to revise the statements, the accountant should consider the effect on the compilation report. If the misstatement is material, the accountant should consider whether modification of the report is adequate or whether withdrawal from the engagement is necessary. Choice A is incorrect because the accountant is not required to issue a qualified opinion — compilation reports do not express an opinion. Choice B is incorrect because the accountant cannot perform additional audit procedures within the scope of a compilation engagement.'
WHERE id = 1773;

-- ID 1774: Review and Compilation
UPDATE questions SET
  explanation = 'Under AR-C 80.20 and AR-C 80.A42 (SSARS), when financial statements are prepared using a special purpose framework such as the income tax basis of accounting, the compilation report should indicate the special purpose framework used and include a reference to the note in the financial statements that describes the basis of accounting. This alerts readers that the financial statements are not prepared under GAAP and directs them to the relevant disclosure. Choice A is incorrect because the accountant does not express an opinion in a compilation report, so a qualification for non-GAAP reporting is not applicable. Choice B is incorrect because the report should not imply that the financial statements conform to GAAP when they are intentionally prepared on a different basis.'
WHERE id = 1774;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1802: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 90.36 (SSARS), the accountant''s review report for a nonissuer states that the review was conducted in accordance with Statements on Standards for Accounting and Review Services (SSARS) promulgated by the Accounting and Review Services Committee (ARSC) of the AICPA. The report identifies the financial statements reviewed and states that a review includes primarily applying analytical procedures and making inquiries of management. Choice A is incorrect because the review report does not reference GAAS (which apply to audits) or PCAOB standards (which apply to issuers). Choice B is incorrect because the report does not detail specific procedures or personnel interviewed — it provides a standard description of the review process.'
WHERE id = 1802;

-- ID 1803: Review/Compilation Engagements
UPDATE questions SET
  explanation = 'Under AR-C 80.20–.21 (SSARS), when an accountant performing a compilation becomes aware of a misclassification — such as a shareholder loan classified as long-term debt when the agreement requires repayment within six months — the accountant should bring the matter to management''s attention and request that the financial statements be revised. If management refuses to correct the misclassification, the accountant should consider whether modification of the compilation report is appropriate to disclose the departure from the applicable financial reporting framework. Choice A is incorrect because the accountant is not required to withdraw immediately. Choice B is incorrect because the accountant cannot unilaterally change the financial statements without management''s approval.'
WHERE id = 1803;

-- ============================================================
-- ETHICS AND INDEPENDENCE (2 questions)
-- ============================================================

-- ID 1332: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct (ET 1.295), a management participation threat arises when a member takes on a role or performs activities that are the responsibility of management for an attest client. Examples include making business decisions on behalf of the client, authorizing or executing transactions, directing employees, or assuming responsibility for designing, implementing, or maintaining internal controls. Choice A is incorrect because a self-review threat involves auditing one''s own work product rather than assuming management roles. Choice B is incorrect because an advocacy threat involves promoting a client''s position, which is distinct from performing management duties. Choice C is incorrect because a familiarity threat relates to close personal relationships rather than role assumption.'
WHERE id = 1332;

-- ID 1333: Ethics and Independence
UPDATE questions SET
  explanation = 'Under the AICPA Code of Professional Conduct (ET 1.277), a former employment relationship with an attest client impairs independence when the individual served in a key position such as CFO, CEO, or controller, especially when the departure was recent and the individual retains ongoing financial ties such as unvested stock options, pension benefits, or deferred compensation. These conditions create self-interest and familiarity threats that cannot be adequately mitigated. Choice A is incorrect because a former junior-level position with no continuing financial interests would generally not impair independence since the individual lacked significant influence over financial reporting. Choice B is incorrect because employment that ended many years ago with no remaining financial connections poses minimal threat to independence.'
WHERE id = 1333;

-- ============================================================
-- QUALITY MANAGEMENT (2 questions)
-- ============================================================

-- ID 1387: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS No. 1, the acceptance and continuance component requires the firm to establish policies and procedures for evaluating potential and existing clients. Key considerations include evaluating management''s integrity and ethical values, assessing whether the firm has the competence, capabilities, and resources to perform the engagement, determining compliance with ethical requirements including independence, and evaluating whether the engagement can be performed in accordance with professional standards. Choice A is incorrect because simply accepting all prospective clients without evaluation would violate this component. Choice B is incorrect because delegating acceptance decisions solely to engagement partners without firm-level oversight would be insufficient, as SQMS No. 1 requires firm-level quality management policies.'
WHERE id = 1387;

-- ID 1394: Quality Management
UPDATE questions SET
  explanation = 'Under SQMS No. 1, the governance and leadership component requires firm leadership to establish and promote an internal culture that recognizes quality as essential in performing engagements. Specifically, leadership must set the tone at the top by demonstrating a commitment to quality through their actions and behaviors, allocating sufficient resources for the quality management system, establishing accountability for quality at all levels, and fostering a culture where quality is valued over commercial considerations. Choice A is incorrect because merely issuing written quality policies without leadership engagement would be insufficient — SQMS No. 1 emphasizes demonstrated commitment through actions. Choice B is incorrect because focusing exclusively on revenue generation without balancing quality considerations would directly contradict the governance and leadership requirements.'
WHERE id = 1394;

-- ============================================================
-- AUDIT REPORTS (2 questions)
-- ============================================================

-- ID 1730: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 800, when financial statements are prepared using a special purpose framework such as the tax basis of accounting, the auditor can issue an unmodified opinion if the statements are fairly presented within that framework. The report must include an emphasis-of-matter paragraph that identifies the special purpose framework used and refers readers to the note in the financial statements describing the basis of accounting. Choice A is incorrect because issuing an adverse opinion solely because the statements are not prepared under GAAP would be inappropriate — AU-C 800 explicitly permits reporting on special purpose frameworks. Choice B is incorrect because declining the engagement on the grounds that tax-basis statements cannot be audited is incorrect, as auditing standards recognize tax basis as a legitimate special purpose framework.'
WHERE id = 1730;

-- ID 1732: Audit Reports
UPDATE questions SET
  explanation = 'Under AU-C 705, the distinction between a qualified opinion and a disclaimer of opinion when a scope limitation exists is based on the pervasiveness of the possible effects on the financial statements. When the possible effects of undetected misstatements are material but not pervasive, the auditor issues a qualified opinion. When the possible effects are both material and pervasive — meaning they could affect multiple elements of the financial statements or represent a substantial proportion of the statements — the auditor issues a disclaimer of opinion. Choice A is incorrect because the distinction is not based on whether the limitation was imposed by the client versus circumstances. Choice B is incorrect because the distinction is not based on the specific audit procedure that could not be performed but rather on how broadly the missing evidence could affect the financial statements.'
WHERE id = 1732;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 1833: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 315, when a practitioner performing a compliance examination engagement identifies a material instance of noncompliance, the practitioner must modify the opinion. If the noncompliance is material but not pervasive to the subject matter, the practitioner issues a qualified opinion. If the noncompliance is both material and pervasive, the practitioner issues an adverse opinion. Choice A is incorrect because withdrawing from the engagement solely because noncompliance was found would be inappropriate — the standards contemplate modified opinions for exactly this situation. Choice B is incorrect because issuing an unmodified opinion with an emphasis-of-matter paragraph describing the noncompliance would not adequately address material noncompliance, which requires opinion modification.'
WHERE id = 1833;

-- ID 1835: Attestation Engagements
UPDATE questions SET
  explanation = 'Under AT-C 105 (Concepts Common to All Attestation Engagements), the criteria used to evaluate subject matter in an attestation engagement must be suitable. Suitable criteria possess the following characteristics: objectivity (free from bias), measurability (permit reasonably consistent evaluation), completeness (do not omit relevant factors that could affect conclusions), and relevance (pertinent to the subject matter). Choice A is incorrect because criteria established solely by the engaging party without regard to objectivity may be biased toward a predetermined conclusion. Choice B is incorrect because criteria that are vague or subjective and do not permit consistent measurement would fail the suitability test because different practitioners could reach significantly different conclusions.'
WHERE id = 1835;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (2 questions)
-- ============================================================

-- ID 4922: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 200 (Overall Objectives of the Independent Auditor), inherent limitations of an audit prevent the auditor from obtaining absolute assurance and restrict the auditor to providing reasonable assurance. These limitations include the nature of financial reporting (which involves judgment and estimates), the nature of audit procedures (which rely on testing rather than examining every transaction), and the need for the audit to be conducted within a reasonable period of time and at a reasonable cost (which necessitates sampling). Choice A is incorrect because the auditor''s level of experience, while affecting audit quality, is not classified as an inherent limitation of the audit itself. Choice B is incorrect because the size of the audit firm is not an inherent limitation — these limitations exist regardless of how well the audit is planned and performed.'
WHERE id = 4922;

-- ID 4923: Nature and Scope of Engagements
UPDATE questions SET
  explanation = 'Under AU-C 805 (Special Considerations — Audits of Single Financial Statements and Specific Elements), an auditor may be engaged to audit only the balance sheet or another single financial statement rather than the complete set of financial statements. This represents a permissible limited-scope engagement under auditing standards. The auditor applies the same professional standards but tailors procedures to the specific financial statement being audited. Choice A is incorrect because this is not considered a scope limitation — the engagement terms were established at the outset rather than imposed after the engagement began. Choice B is incorrect because an incomplete audit is an incorrect characterization — the audit of a single statement can be complete within its defined scope.'
WHERE id = 4923;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (1 question)
-- ============================================================

-- ID 1367: Professional Responsibilities
UPDATE questions SET
  explanation = 'Under AU-C 625 and the AICPA Code of Professional Conduct (ET 1.600.010), when a CPA receives a request from a prospective client for a second opinion on an accounting or auditing issue, the CPA should communicate with the existing (predecessor) auditor to ensure a complete understanding of all relevant facts and circumstances. This communication helps the CPA avoid providing an opinion based on incomplete information, which could be used by the client to pressure the existing auditor into accepting an inappropriate accounting treatment — a practice known as opinion shopping. Choice A is incorrect because providing the opinion without any communication with the existing auditor would be inappropriate since the CPA may lack essential context. Choice B is incorrect because refusing to provide any second opinion under all circumstances would be overly restrictive, as the standards permit second opinions when proper communication procedures are followed.'
WHERE id = 1367;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (2 questions)
-- ============================================================

-- ID 4961: Professional Skepticism and Judgment
UPDATE questions SET
  explanation = 'Under AU-C 200 (Overall Objectives of the Independent Auditor), professional judgment requires the auditor to consider both the sufficiency and appropriateness of audit evidence. Sufficiency refers to the quantity of evidence — whether enough has been obtained. Appropriateness refers to the quality of evidence — its relevance to the assertion being tested and its reliability based on its source, nature, and circumstances. Choice A is incorrect because considering only the source of evidence without evaluating its relevance to specific assertions would be incomplete, as reliability is only one component of appropriateness. Choice B is incorrect because relying solely on the quantity of evidence gathered without assessing its quality would be insufficient under the standards.'
WHERE id = 4961;

-- ID 4962: Professional Skepticism and Judgment
UPDATE questions SET
  explanation = 'Under AU-C 500 (Audit Evidence), when contradictory evidence is discovered during an audit, the auditor should reconsider the reliability of other audit evidence obtained and perform additional audit procedures to resolve the inconsistency. Professional skepticism requires the auditor to critically evaluate whether the contradictory evidence indicates that previously obtained evidence may be less reliable than originally assessed. Choice A is incorrect because ignoring the contradictory evidence would violate the requirement to exercise professional skepticism. Choice B is incorrect because immediately issuing a qualified opinion without further investigation would be inappropriate — the inconsistency may be resolvable through additional procedures.'
WHERE id = 4962;

-- ============================================================
-- TERMS OF ENGAGEMENT (2 questions)
-- ============================================================

-- ID 4980: Terms of Engagement
UPDATE questions SET
  explanation = 'Under AU-C 220 (Quality Control for an Engagement), when considering engagement continuance, evidence of management''s lack of integrity is the most significant factor suggesting the auditor should discontinue the engagement. Management integrity is fundamental because the auditor relies on management representations and the ability to obtain reliable evidence depends on management''s willingness to be truthful. If management lacks integrity, written representations become unreliable and the risk of fraudulent financial reporting increases substantially. Choice A is incorrect because a change in the client''s industry, while requiring additional competence, does not alone warrant discontinuance. Choice B is incorrect because minor disagreements over accounting policies can typically be resolved through discussion and do not necessarily indicate integrity concerns.'
WHERE id = 4980;

-- ID 4981: Terms of Engagement
UPDATE questions SET
  explanation = 'Under AU-C 210 (Terms of Engagement), the engagement letter establishes the terms of the audit engagement and serves as a contract between the auditor and the client. It typically includes the objective and scope of the audit, management''s responsibilities (including internal control and financial statement preparation), the auditor''s responsibilities, identification of the applicable financial reporting framework, and reference to the expected form and content of reports. However, the engagement letter does not typically list all specific audit procedures to be performed because the auditor determines the nature, timing, and extent of procedures based on risk assessment during the engagement. Choice A is incorrect because including a detailed list of every planned procedure would be impractical and could inappropriately limit the auditor''s ability to modify procedures in response to identified risks.'
WHERE id = 4981;

-- ============================================================
-- UNDERSTANDING THE ENTITY AND ENVIRONMENT (2 questions)
-- ============================================================

-- ID 5000: Understanding the Entity and Environment
UPDATE questions SET
  explanation = 'Under AU-C 315 (Understanding the Entity and Its Environment), when obtaining an understanding of the entity''s measurement and review of financial performance, the auditor should consider key performance indicators (KPIs), budgets and forecasts, variance analyses, and segment and divisional reports. These measures provide insight into how management monitors the entity''s financial health and may reveal pressures or incentives that create risks of material misstatement. Choice A is incorrect because focusing exclusively on the entity''s stock price would be insufficient since stock price reflects market perceptions rather than internal performance measurement. Choice B is incorrect because reviewing only the prior year''s audited financial statements without considering management''s ongoing monitoring activities would miss important information about current performance tracking.'
WHERE id = 5000;

-- ID 5002: Understanding the Entity and Environment
UPDATE questions SET
  explanation = 'Under AU-C 550 (Related Parties), knowledge of the entity''s related parties is important because related party transactions may not be conducted at arm''s length and therefore create risks of material misstatement in the financial statements. Transactions with related parties may occur at prices, terms, or conditions that differ from those between unrelated parties, which can result in financial statements that do not faithfully represent the entity''s financial position. Choice A is incorrect because assuming all related party transactions are fraudulent would be inappropriate — many such transactions are legitimate business activities. Choice B is incorrect because concluding that related party transactions are immaterial without evaluation would be inappropriate because AU-C 550 requires specific assessment regardless of perceived magnitude.'
WHERE id = 5002;

-- ============================================================
-- TESTS OF CONTROLS (2 questions)
-- ============================================================

-- ID 5082: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 315, the auditor tests IT general controls (ITGCs) primarily because ITGCs support the reliable functioning of automated application controls and maintain the integrity of data processed by information technology systems. ITGCs include controls over program development, program changes, access to programs and data, and computer operations. If ITGCs are ineffective, automated application controls that depend on them cannot be relied upon. Choice A is incorrect because testing ITGCs only to satisfy regulatory requirements mischaracterizes their purpose — the primary objective is ensuring the reliability of IT-dependent controls for audit purposes. Choice B is incorrect because strong ITGCs do not eliminate the need for substantive testing — AU-C 330 requires substantive procedures for all significant account balances.'
WHERE id = 5082;

-- ID 5083: Tests of Controls
UPDATE questions SET
  explanation = 'Under AU-C 530 (Audit Sampling) and AU-C 330 (Performing Audit Procedures in Response to Assessed Risks), when the auditor identifies a deviation in a test of controls, the auditor should evaluate whether the deviation represents an isolated occurrence or indicates a systemic weakness in the control. The auditor investigates the nature and cause of the deviation, considers whether it affects the assessed risk of material misstatement, and determines whether additional testing or alternative procedures are necessary. Choice A is incorrect because immediately concluding that all controls are ineffective based on a single deviation would be an overreaction. Choice B is incorrect because ignoring the deviation without investigation would be inappropriate — understanding the cause is essential to evaluating control reliability.'
WHERE id = 5083;

-- ============================================================
-- ANALYTICAL PROCEDURES (2 questions)
-- ============================================================

-- ID 5101: Analytical Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520 (Analytical Procedures), an increase in days sales outstanding (DSO) compared to prior years and industry norms most likely indicates that the entity is taking longer to collect its receivables. This may signal collectibility issues with outstanding accounts receivable, potential overstatement of receivables due to inadequate allowance for doubtful accounts, or revenue recognition problems such as recording sales that may ultimately be returned or disputed. Choice A is incorrect because concluding that higher DSO reflects improved sales performance would be incorrect — DSO specifically measures collection speed rather than sales volume. Choice B is incorrect because an increase in DSO indicates slower collection, not faster.'
WHERE id = 5101;

-- ID 5102: Analytical Procedures
UPDATE questions SET
  explanation = 'Under AU-C 520 (Analytical Procedures), disaggregation of data refers to breaking down financial information into smaller, more homogeneous subsets to improve the precision of analytical procedures. When data is disaggregated by store location, product category, month, or other relevant dimensions, the relationships within each subset become more predictable and meaningful because variations caused by mixing dissimilar data are removed. Choice A is incorrect because analyzing only annual totals in aggregate may mask offsetting anomalies — a significant revenue decline at one location could be offset by growth at another, hiding a potential misstatement. Choice B is incorrect because combining all financial data into a single analysis pool is the opposite of disaggregation and would reduce analytical precision.'
WHERE id = 5102;

-- ============================================================
-- MISSTATEMENTS AND CONTROL DEFICIENCIES (2 questions)
-- ============================================================

-- ID 5122: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 265 (Communicating Internal Control Related Matters), the auditor must evaluate whether individually insignificant control deficiencies, when considered in combination, constitute a significant deficiency or material weakness. Deficiencies may interact or share a common root cause that increases the overall risk of material misstatement beyond what any single deficiency would present alone. The auditor must communicate significant deficiencies and material weaknesses in writing to those charged with governance. Choice A is incorrect because reporting only individually significant deficiencies without considering their combined effect would fail to meet AU-C 265 requirements. Choice B is incorrect because concluding that individually insignificant deficiencies never require communication would be incorrect when their combination rises to the level of a significant deficiency.'
WHERE id = 5122;

-- ID 5123: Misstatements and Control Deficiencies
UPDATE questions SET
  explanation = 'Under AU-C 450 (Evaluation of Misstatements Identified During the Audit), prior to evaluating the aggregate effect of uncorrected misstatements on the financial statements, the auditor should communicate all identified misstatements to the appropriate level of management and request that management correct them. This step is essential because management may choose to correct some or all misstatements, which would reduce the need to evaluate their aggregate effect on the auditor''s opinion. Choice A is incorrect because immediately adjusting the financial statements without management''s involvement would be inappropriate since the statements are management''s responsibility. Choice B is incorrect because evaluating the aggregate effect before giving management the opportunity to correct misstatements would bypass the required communication step.'
WHERE id = 5123;

-- ============================================================
-- WRITTEN REPRESENTATIONS (2 questions)
-- ============================================================

-- ID 5141: Written Representations
UPDATE questions SET
  explanation = 'Under AU-C 580 (Written Representations), the management representation letter must include specific representations about fraud. Management should acknowledge its responsibility for the design, implementation, and maintenance of internal control relevant to the preparation and fair presentation of financial statements, including controls to prevent and detect fraud. Management should also represent that it has disclosed to the auditor all known instances of fraud or suspected fraud affecting the entity. Choice A is incorrect because omitting the fraud representation from the management letter would violate AU-C 580. Choice B is incorrect because a general statement that no fraud exists without acknowledging management''s responsibility for fraud prevention would be insufficient.'
WHERE id = 5141;

-- ID 5142: Written Representations
UPDATE questions SET
  explanation = 'Under AU-C 580 (Written Representations), if the auditor concludes that management''s written representations are not reliable, the auditor must consider the effect on the audit as a whole, including the implications for other representations made by management. Unreliable representations raise serious questions about management''s integrity, which is fundamental to the audit relationship. The auditor should take appropriate actions, which may include disclaiming an opinion or withdrawing from the engagement. Choice A is incorrect because the auditor cannot simply accept alternative evidence in place of unreliable management representations — AU-C 580 requires written representations as a necessary form of audit evidence. Choice B is incorrect because continuing the audit without addressing the reliability concern would be inappropriate since management''s lack of integrity undermines the foundation of all evidence obtained from management.'
WHERE id = 5142;

-- ============================================================
-- MATERIALITY (1 question)
-- ============================================================

-- ID 5023: Materiality
UPDATE questions SET
  explanation = 'Under AU-C 320 (Materiality in Planning and Performing an Audit), when an entity has volatile earnings with net income fluctuating significantly from year to year, the auditor should consider using a more stable benchmark for determining materiality, such as total revenues, total assets, or a normalized measure of income (for example, an average of income over several years). A stable benchmark provides a more reliable and consistent basis for planning and evaluating misstatements. Choice A is incorrect because using the current year''s net income without adjustment would be problematic since an unusually high or low income figure could set materiality too high or too low. Choice B is incorrect because selecting the smallest possible benchmark to minimize materiality would result in an overly conservative approach not aligned with user expectations or audit efficiency.'
WHERE id = 5023;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (1 question)
-- ============================================================

-- ID 5044: Responding to Assessed Risks
UPDATE questions SET
  explanation = 'Under AU-C 330 (Performing Audit Procedures in Response to Assessed Risks), when the auditor identifies risks of material misstatement at the assertion level, the further audit procedures designed in response must have a clear linkage to those assessed risks. The nature, timing, and extent of procedures should be directly responsive to the specific risks identified. Choice A is incorrect because performing the same standardized procedures for all accounts regardless of risk assessment would fail to comply with AU-C 330''s requirement for a tailored response to each identified risk. Choice B is incorrect because designing procedures based solely on prior year workpapers without considering current year risk assessment would be insufficient because risks may change from period to period.'
WHERE id = 5044;

COMMIT;
