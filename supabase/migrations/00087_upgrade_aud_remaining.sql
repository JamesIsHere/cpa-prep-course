-- Migration: Upgrade remaining moderate-scoring AUD questions
-- Fixes: length-cuing, short-stem, absolute-assurance-trap, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- === Attestation and AUP Engagements ===

-- Q25 [score:6] length-cuing -> balance choice lengths, expand explanation with AT-C 205 citation
UPDATE questions SET
  choices = '["A disclaimer of opinion because the practitioner cannot verify all underlying data","A negative assurance conclusion stating nothing came to the practitioner''s attention","A positive opinion on whether the subject matter meets the established criteria","A recommendation for improvement based on the practitioner''s professional judgment"]',
  explanation = 'Under AT-C 205, an examination engagement results in a positive opinion — the practitioner states whether the subject matter is presented in accordance with (or based on) the established criteria. This provides the highest level of assurance among attestation engagement types, analogous to an audit opinion on financial statements. By contrast, a review engagement under AT-C 210 provides limited (negative) assurance, and an agreed-upon procedures engagement under AT-C 215 provides no assurance at all. Choice A is incorrect because a disclaimer indicates the practitioner was unable to obtain sufficient evidence, not the standard outcome of an examination. Choice D is incorrect because attestation engagements provide assurance, not recommendations — consulting engagements address recommendations.'
WHERE id = 25;

-- Q355 [score:5] short-stem(9w) -> expand with scenario + cite AT-C 215
UPDATE questions SET
  stem = 'Thornfield Industries engages Prescott & Associates to perform agreed-upon procedures on its accounts receivable aging schedule. The controller wants to understand what the final deliverable will look like and whether it will include an opinion or assurance conclusion. Under AT-C 215, an agreed-upon procedures engagement results in a report that:',
  explanation = 'Under AT-C 215, an agreed-upon procedures (AUP) report describes the specific procedures performed and presents the factual findings without expressing an opinion or providing any form of assurance. The engaging party and other specified parties agree in advance on the procedures to be applied, and the practitioner simply reports what was found. Under the 2020 clarified attestation standards, AUP reports are no longer restricted to specified parties — they may be used by anyone who obtains the report. Choice A is incorrect because opinions are issued in examination engagements under AT-C 205, not AUP engagements. Choice B is incorrect because limited assurance through negative assurance language is a feature of review engagements under AT-C 210.'
WHERE id = 355;

-- === Data Analytics and Audit Technology ===

-- Q295 [score:6] length-cuing -> balance choice lengths, add wrong-answer analysis
UPDATE questions SET
  choices = '["Eliminates all audit risk because the entire population has been tested for anomalies","Replaces the need for other substantive procedures on journal entry testing","Is prohibited under current auditing standards for journal entry testing purposes","Provides more comprehensive coverage than sampling but requires professional judgment"]',
  explanation = 'Data analytics can analyze entire populations of journal entries, providing broader coverage than traditional sampling. However, analytics does not eliminate audit risk — the auditor must still investigate identified anomalies, apply professional judgment in evaluating results, and corroborate findings with other evidence. Under AU-C 500, the auditor must evaluate whether evidence obtained is sufficient and appropriate regardless of the method used to obtain it. Choice A is incorrect because no single procedure eliminates audit risk entirely — even full-population testing requires judgment to evaluate flagged items and may not detect qualitative misstatements. Choice B is incorrect because analytics supplements rather than replaces other substantive procedures; the auditor must still evaluate journal entry support and authorization. Choice C is incorrect because auditing standards encourage, not prohibit, the use of technology and data analytics in audit procedures.'
WHERE id = 295;

-- === Engagement Letters and Planning ===

-- Q98 [score:5] absolute-assurance-trap -> replace guarantee distractor, expand stem with scenario + cite AU-C 210
UPDATE questions SET
  stem = 'Prescott & Associates has been engaged to audit the financial statements of Thornfield Industries for the fiscal year ended December 31, 2025. Before beginning fieldwork, the engagement partner prepares an engagement letter to document the terms of the engagement. Under AU-C 210, the engagement letter for an audit should include which of the following?',
  choices = '["The expected audit opinion that will be issued upon completion of fieldwork","The objective and scope of the audit and management''s responsibilities","A detailed listing of every substantive procedure the auditor plans to perform","The specific materiality thresholds that will be used during the engagement"]',
  explanation = 'Under AU-C 210.10, the engagement letter establishes the terms of the audit engagement and should include the objective and scope of the audit, management''s responsibilities (including preparation of financial statements and maintenance of internal control), the auditor''s responsibilities under GAAS, identification of the applicable financial reporting framework, and the expected form and content of reports. Choice A is incorrect because the engagement letter does not predetermine the audit opinion — the opinion is based on evidence obtained during the audit. Choice C is incorrect because specific substantive procedures are determined during planning and risk assessment, not documented in the engagement letter. Choice D is incorrect because while materiality is determined during planning, specific thresholds are not typically communicated in the engagement letter.'
WHERE id = 98;

-- === Group Audits ===

-- Q268 [score:5] short-stem(10w) -> expand with scenario + cite AU-C 600
UPDATE questions SET
  stem = 'Ridgemont Manufacturing is a multinational company with subsidiaries in three countries. Harper & Associates has been engaged to audit the consolidated financial statements for the year ended December 31, 2025. Several subsidiaries are audited by local accounting firms. When planning this group audit under AU-C 600, the group engagement partner should:',
  explanation = 'Under AU-C 600.19, the group engagement partner must evaluate the professional competence, independence, and ethical compliance of component auditors before relying on their work. This evaluation determines whether sufficient appropriate audit evidence can be obtained to support the group audit opinion. Choice B is incorrect because the group engagement partner cannot simply accept a component auditor''s work without evaluating their qualifications and independence. Choice C is incorrect because the group engagement partner may choose to make reference to component auditors in the group audit report rather than assuming full responsibility for all components.'
WHERE id = 268;

-- === Audit Reports ===

-- Q334 [score:6] length-cuing -> balance choice lengths, cite AU-C 706
UPDATE questions SET
  choices = '["Modifies the auditor''s opinion on the financial statements by adding a qualification or adverse conclusion","Communicates information not presented or disclosed in the financial statements that is relevant to understanding the audit","Addresses going concern uncertainties identified during the audit and requires a separate basis paragraph","Replaces the basis for opinion section when the auditor disagrees with a material accounting policy"]',
  explanation = 'Under AU-C 706, an other-matter paragraph addresses matters not presented or disclosed in the financial statements that are relevant to users'' understanding of the audit, the auditor''s responsibilities, or the auditor''s report. Common examples include restrictions on report distribution, prior-period financial statements audited by a predecessor, and supplementary information. An emphasis-of-matter paragraph, by contrast, highlights matters that ARE disclosed in the financial statements. Choice A is incorrect because neither emphasis-of-matter nor other-matter paragraphs modify the auditor''s opinion — only qualified, adverse, or disclaimer opinions do that. Choice C is incorrect because going concern uncertainties are addressed through emphasis-of-matter paragraphs under AU-C 570, not other-matter paragraphs.'
WHERE id = 334;

-- === Audit Sampling ===

-- Q304 [score:5] short-stem(11w) -> expand with scenario + cite AU-C 530
UPDATE questions SET
  stem = 'During the audit of Clearwater Distributors, the audit team plans to test accounts receivable, which ranges from $50 invoices to $2.4 million contracts. The senior auditor decides to divide the population into three subgroups by dollar value before selecting the sample. Under AU-C 530, the primary purpose of stratifying a population before sampling is to:',
  explanation = 'Under AU-C 530.A11, stratification divides the population into subgroups (strata) with similar characteristics, such as dollar value, reducing variability within each stratum. This allows the auditor to design more efficient samples — testing all items above a certain threshold while sampling smaller items — often resulting in a smaller total sample size while maintaining the desired level of assurance. Choice A is incorrect because stratification typically reduces rather than increases the total number of items tested. Choice C is incorrect because no sampling technique can eliminate sampling risk entirely — only a 100% examination achieves that.'
WHERE id = 304;

-- === Ethics and Independence ===

-- Q262 [score:5] short-stem(10w) -> expand with scenario + cite AICPA Code ET 1.295
UPDATE questions SET
  stem = 'Thornfield Industries asks its external auditor, Prescott & Associates, to help select a new enterprise resource planning (ERP) system by evaluating vendors, recommending a specific solution, and overseeing the implementation timeline. The engagement partner is concerned about potential independence impairment. Under the AICPA Code of Professional Conduct, a management participation threat to independence arises when the auditor:',
  explanation = 'Under the AICPA Code of Professional Conduct (ET 1.295), a management participation threat occurs when the auditor assumes management responsibilities — making decisions, directing activities, or performing functions that are properly the role of client management. Selecting and implementing an ERP system would constitute a management function that impairs independence. Choice B is incorrect because tax advisory services do not inherently create management participation threats — they may create self-review threats instead. Choice C is incorrect because a close relative working at the client creates a familiarity threat, not a management participation threat. Choice D is incorrect because earning significant revenue from a single client creates a self-interest or undue influence threat.'
WHERE id = 262;

-- === Internal Controls ===

-- Q108 [score:6] length-cuing -> balance choice lengths, cite AU-C 315
UPDATE questions SET
  choices = '["To test the operating effectiveness of internal controls over a full reporting period","To confirm the auditor''s understanding of control design and implementation by tracing a transaction","To physically count and reconcile inventory quantities recorded in the client''s general ledger","To determine the appropriate audit fee based on the complexity of the client''s control environment"]',
  explanation = 'Under AU-C 315.A93, a walkthrough involves tracing a transaction from origination through processing to recording in the financial statements. Its purpose is to confirm the auditor''s understanding of the control design and whether controls have been implemented (placed in operation). Walkthroughs help the auditor verify that the documented understanding of the information system and controls is accurate. Choice A is incorrect because walkthroughs alone do not provide sufficient evidence of operating effectiveness — separate tests of controls over a period of time are required for that purpose. Choice C is incorrect because physical inventory counts are substantive procedures, not part of the control evaluation process.'
WHERE id = 108;

-- === Professional Responsibilities ===

-- Q143 [score:5] short-stem(10w) -> expand with scenario
UPDATE questions SET
  stem = 'Prescott & Associates, a mid-sized CPA firm with 12 partners, recently underwent an external review in which another CPA firm examined the quality of its audit and attest engagements. The managing partner explains to a new staff member that this process is mandated by AICPA membership requirements. The primary purpose of the AICPA''s peer review program is to:',
  explanation = 'The AICPA peer review program evaluates whether a CPA firm''s system of quality control for its accounting and auditing practice is designed and operating in compliance with applicable professional standards. Peer reviews are firm-level evaluations conducted by other CPA firms or authorized review teams, covering the firm''s audit, attest, and accounting engagements. Choice B is incorrect because peer review examines firm-level quality control systems, not individual CPA performance on the CPA exam. Choice D is incorrect because disciplinary action against individual CPAs is handled by the AICPA Professional Ethics Division or state boards of accountancy, not the peer review program.'
WHERE id = 143;

-- === Quality Management ===

-- Q137 [score:6] length-cuing -> balance choice lengths, add wrong-answer analysis
UPDATE questions SET
  choices = '["An ongoing process of evaluating whether the quality management system is designed and operating effectively","A periodic evaluation of individual engagement profitability relative to the firm''s annual revenue targets","A training program ensuring all professional staff are current on newly issued accounting and auditing standards","The process of establishing and documenting ethical requirements and independence policies for the firm"]',
  explanation = 'Under SQMS No. 1, the monitoring and remediation component requires the firm to establish an ongoing monitoring process that evaluates whether the quality management system is functioning as intended, identifies deficiencies, and triggers remedial actions when problems are found. This includes inspection of completed engagements, evaluation of quality indicators, and assessment of whether the system''s objectives are being achieved. Choice B is incorrect because engagement profitability is a business management concern, not a quality management component under SQMS No. 1. Choice C is incorrect because training falls under the resources component (human resources), not monitoring and remediation. Choice D is incorrect because ethical requirements and independence constitute a separate, distinct component of the quality management system.'
WHERE id = 137;

-- === Risk Assessment ===

-- Q281 [score:6] length-cuing -> balance choice lengths, add wrong-answer analysis
UPDATE questions SET
  choices = '["Detection risk, because the auditor may fail to identify the CEO''s prior enforcement history","Control risk only, because management integrity directly affects the design of the control environment","Inherent risk at the financial statement level, because management integrity is a pervasive risk factor","Sampling risk, because the auditor must expand sample sizes to compensate for management bias"]',
  explanation = 'Under AU-C 315, management integrity is a financial statement-level risk factor that affects the pervasive risk environment. A CEO with a history of SEC enforcement actions for financial reporting fraud significantly increases the inherent risk of material misstatement across the financial statements as a whole, not just at the individual account level. This is an inherent risk factor that the auditor cannot control through audit procedures. Choice A is incorrect because detection risk relates to the effectiveness of the auditor''s procedures, not to characteristics of the entity''s management. Choice B is incorrect because while management integrity does affect the control environment, the CEO''s prior fraud history is primarily an inherent risk factor at the entity level rather than a control risk at the assertion level.'
WHERE id = 281;

-- === Substantive Procedures ===

-- Q314 [score:6] short-stem(11w) -> expand with scenario
UPDATE questions SET
  stem = 'During the audit of Clearwater Manufacturing, the audit team is evaluating management''s $2.8 million warranty reserve estimate. The estimate is based on historical claim rates and projected product failure data. The engagement partner wants the team to develop its own calculation using independent assumptions. Under AU-C 540, the auditor may test an accounting estimate by:',
  explanation = 'AU-C 540 provides three approaches for testing accounting estimates: (1) review and test management''s process and assumptions, (2) develop an independent estimate using independent data or assumptions and compare it to management''s recorded amount, or (3) review subsequent events or transactions occurring before the date of the auditor''s report that provide evidence about the estimate. Choice B is incorrect because accepting management''s estimate without further evaluation fails to obtain sufficient appropriate audit evidence as required by AU-C 500. Choice C is incorrect because estimation uncertainty is inherent in many financial statement items and cannot simply be eliminated — the auditor evaluates whether the uncertainty is adequately disclosed.'
WHERE id = 314;

-- Q322 [score:6] short-stem(11w) -> expand with scenario
UPDATE questions SET
  stem = 'Prescott & Associates is auditing Thornfield Industries'' financial statements for the year ended December 31, 2025. Management recorded a $1.5 million litigation accrual based on the probable outcome of a pending lawsuit. In February 2026, before the auditor''s report date, the case settles for $1.7 million. The audit team considers using this settlement to evaluate the original estimate. When using subsequent events to test an accounting estimate under AU-C 540, the auditor:',
  explanation = 'Reviewing subsequent events is one of the three permitted approaches to testing accounting estimates under AU-C 540. Events after the balance sheet date may provide evidence about conditions that existed at the balance sheet date, helping the auditor evaluate whether the estimate was reasonable when made. In this case, the $1.7 million settlement provides direct evidence about the litigation accrual''s accuracy. Choice A is incorrect because there is no requirement to wait six months — the auditor evaluates relevant subsequent events up to the date of the auditor''s report. Choice C is incorrect because subsequent events can be used to test various types of estimates, not just going concern assessments — any estimate where post-period information provides clarifying evidence is appropriate.'
WHERE id = 322;
