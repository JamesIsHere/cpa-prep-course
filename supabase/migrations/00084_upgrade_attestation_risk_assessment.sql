-- Migration: Upgrade 7 Attestation Engagements + 5 Risk Assessment questions
-- Fixes: short-stem, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- === Attestation Engagements (7 questions) ===

-- Q348 [score:6] short-stem → expand with scenario + cite AT-C 105
UPDATE questions SET
  stem = 'A staff auditor at Calloway & Partners is studying for the CPA exam and asks the engagement partner which professional standards govern SOC 2 examinations, compliance attestation engagements, and prospective financial statement examinations. The partner explains these fall under a distinct set of standards separate from AU-C. Under AT-C 105, the AT-C standards govern which types of engagements?',
  explanation = 'Under AT-C 105, the attestation standards apply to examination, review, and agreed-upon procedures engagements on subject matter other than historical financial statements. These include SOC engagements, compliance attestation, prospective financial statements, and other attestation services. Choice A is incorrect because audits of historical financial statements are governed by AU-C (Statements on Auditing Standards). Choice B is incorrect because compilations and reviews of nonpublic financial statements fall under AR-C (SSARS).'
WHERE id = 348;

-- Q350 [score:6] short-stem → expand with scenario
UPDATE questions SET
  stem = 'Ridgemont Cloud Services engages Mercer & Associates to perform a SOC 2 Type II examination of its data center operations. The engagement team must determine which criteria apply to the examination. Under AICPA guidance, a SOC 2 report evaluates controls based on which criteria?',
  explanation = 'SOC 2 reports evaluate controls relevant to the Trust Services Criteria (TSC): security (the common criteria required for all SOC 2 reports), availability, processing integrity, confidentiality, and privacy. The service organization selects which additional criteria beyond security are relevant to its services. Choice A is incorrect because GAAP and IFRS are financial reporting frameworks, not SOC 2 criteria. Choice C is incorrect because while COSO concepts underlie the TSC, SOC 2 specifically uses the Trust Services Criteria, not the COSO framework directly.'
WHERE id = 350;

-- Q352 [score:6] short-stem → expand with scenario + cite AT-C 305
UPDATE questions SET
  stem = 'Ashford Manufacturing asks its CPA at Prescott & Associates to examine a five-year revenue forecast. The controller plans to share the forecast with prospective investors and lenders. The CPA explains that forecasts and projections have different distribution rules. Under AT-C 305, a financial forecast may be distributed for:',
  explanation = 'Under AT-C 305, financial forecasts — which are based on conditions the responsible party expects to exist and courses of action it expects to take — may be distributed for either general or limited use. Financial projections, which are based on one or more hypothetical ("what-if") assumptions, are restricted to limited use only — they may only be shared with parties who are in a position to understand the hypothetical assumptions. Choice A is incorrect because forecasts have broader distribution rights than projections.'
WHERE id = 352;

-- Q354 [score:6] short-stem → expand with scenario
UPDATE questions SET
  stem = 'The engagement team at Whitfield & Associates is auditing Lakewood County under Government Auditing Standards (the Yellow Book). The engagement partner explains that Yellow Book audits have additional reporting requirements beyond those required under GAAS alone. Under Government Auditing Standards, the auditor must report on:',
  explanation = 'Government Auditing Standards (the Yellow Book) impose reporting requirements beyond GAAS: the auditor must report on internal control over financial reporting and compliance with provisions of laws, regulations, contracts, and grant agreements that could have a direct and material effect on the financial statements. These additional reports are required for all Yellow Book financial audits. Choice A is incorrect because reporting only on financial statements omits the additional Yellow Book requirements. Choice C is incorrect because grant compliance alone is too narrow — the requirement covers laws, regulations, contracts, and grants.'
WHERE id = 354;

-- Q1827 [score:6] short-stem → expand with scenario + cite AT-C 305
UPDATE questions SET
  stem = 'A CPA candidate studying attestation standards asks the difference between a financial forecast and a financial projection. The instructor explains that the key distinction lies in the nature of the assumptions used. Under AT-C 305, a financial forecast differs from a financial projection primarily in that a forecast:',
  explanation = 'Under AT-C 305, a financial forecast presents an entity''s expected financial position, results of operations, and cash flows based on assumptions reflecting conditions the responsible party expects to exist and the course of action it expects to take. A projection, by contrast, presents results based on one or more hypothetical ("what-if") assumptions that may or may not occur. Choice A is incorrect because the time period is not the distinguishing factor — both can cover any reasonable future period. Choice D is incorrect because both forecasts and projections rely on assumptions about future events.'
WHERE id = 1827;

-- Q1839 [score:6] short-stem → expand with scenario + cite AT-C 305
UPDATE questions SET
  stem = 'Mercer & Associates is engaged to examine a five-year financial forecast prepared by Thornfield Industries for a proposed debt offering. The engagement team must evaluate whether the assumptions underlying the forecast are reasonable and adequately supported. Under AT-C 305, when a practitioner examines prospective financial statements, the practitioner must evaluate whether the assumptions are:',
  explanation = 'Under AT-C 305.20, in an examination of prospective financial statements, the practitioner evaluates whether the assumptions provide a reasonable basis for the forecast or projection and are suitably supported by available information. The assumptions must be internally consistent and reflect the responsible party''s plans and expectations. Choice B is incorrect because the practitioner does not guarantee results — the examination provides assurance about the reasonableness of assumptions, not certainty of outcomes. Choice C is incorrect because competitor assumptions are irrelevant to evaluating the entity''s own forecast.'
WHERE id = 1839;

-- Q1840 [score:6] short-stem → expand with scenario
UPDATE questions SET
  stem = 'Glenview & Associates is engaged to perform a SOC 2 Type II examination of Cascade Data Services, a cloud hosting provider. The engagement team will test the design and operating effectiveness of controls over an 8-month period. Under AT-C 205, a practitioner performing an examination engagement on a SOC 2 report is examining the entity''s:',
  explanation = 'A SOC 2 examination under AT-C 205 evaluates a service organization''s controls relevant to the Trust Services Criteria: security, availability, processing integrity, confidentiality, and privacy. The practitioner tests both the design and (for Type II) operating effectiveness of these controls over the specified examination period. Choice A is incorrect because financial statement audits are governed by AU-C standards, not SOC 2 attestation. Choice D is incorrect because revenue recognition policies are financial reporting matters, not Trust Services Criteria.'
WHERE id = 1840;

-- === Risk Assessment (5 questions) ===

-- Q275 [score:6] short-stem → expand with scenario + cite AU-C 240
UPDATE questions SET
  stem = 'During the required fraud risk discussion for the audit of Ashford Distribution, the engagement partner at Calloway & Partners asks the team to identify the three conditions generally present when fraud occurs. A senior auditor describes a scenario where the controller was under pressure to meet earnings targets, had the ability to override controls, and convinced herself the manipulation was temporary. Under AU-C 240, the fraud triangle consists of which three elements?',
  explanation = 'Under AU-C 240.A1, the fraud triangle identifies three conditions generally present when fraud occurs: (1) incentive or pressure (motivation to commit fraud), (2) opportunity (weak controls or ability to override them), and (3) rationalization (an attitude that justifies the fraudulent behavior). Choice A is incorrect because "means, motive, and opportunity" is a criminal investigation framework — auditing standards use the specific terms pressure/incentive, opportunity, and rationalization. Choice D is incorrect because "planning, execution, and concealment" describes fraud stages, not the enabling conditions.'
WHERE id = 275;

-- Q1489 [score:6] short-stem → expand with scenario + cite AU-C 200
UPDATE questions SET
  stem = 'A staff auditor studying for the CPA exam asks the engagement partner at Mercer & Associates to name the three components of the audit risk model. The partner explains that audit risk is the risk that the auditor expresses an inappropriate opinion and is composed of three distinct sub-risks. Under AU-C 200, which of the following is a component of audit risk?',
  explanation = 'Under AU-C 200.13, audit risk consists of three components: inherent risk (susceptibility of an assertion to material misstatement before considering controls), control risk (risk that internal controls fail to prevent or detect misstatement), and detection risk (risk that the auditor''s procedures fail to detect misstatement). Choice B is incorrect because engagement risk is a practice management concept, not a component of the audit risk model. Choice C and D describe business risks relevant to the entity but are not components of audit risk.'
WHERE id = 1489;

-- Q1490 [score:6] short-stem → expand with scenario + cite AU-C 200
UPDATE questions SET
  stem = 'The engagement team at Prescott & Associates is assessing the risk of material misstatement in Thornfield Industries'' accounts receivable. The engagement senior explains that one component of audit risk reflects the possibility that the entity''s internal controls fail to catch errors or fraud. Under AU-C 200, control risk is best defined as the risk that:',
  explanation = 'Under AU-C 200.13, control risk is the risk that a material misstatement that could occur in an assertion will not be prevented, or detected and corrected, on a timely basis by the entity''s internal control. It is assessed by the auditor based on the design and operating effectiveness of relevant controls. Choice A incorrectly describes inherent risk (susceptibility of an assertion to misstatement). Choice C describes detection risk (risk the auditor''s own procedures miss a misstatement). Choice B describes audit risk generally, not control risk specifically.'
WHERE id = 1490;

-- Q1495 [score:6] short-stem → expand with scenario + cite AU-C 315
UPDATE questions SET
  stem = 'While assessing risks of material misstatement for the audit of Kensington Retail Corp., the engagement partner at Glenview & Associates identifies a complex revenue recognition arrangement involving variable consideration and usage-based pricing. The partner designates this as a significant risk that will require special audit attention. Under AU-C 315, a significant risk is a risk of material misstatement that:',
  explanation = 'Under AU-C 315.28, a significant risk is an identified risk of material misstatement that, in the auditor''s judgment, requires special audit consideration. Significant risks require the auditor to obtain an understanding of controls specific to the risk and design substantive procedures responsive to it. Choice A is incorrect because all risks — including significant risks — can and should be addressed through substantive procedures. Choice B is incorrect because significant risks can arise from estimation uncertainty, complexity, or unusual transactions, not just fraud.'
WHERE id = 1495;

-- Q1499 [score:6] near-duplicate of Q275 → differentiate by focusing on application
UPDATE questions SET
  stem = 'During the planning phase of the audit of Ridgemont Financial Services, the engagement team at Birchwood & Associates conducts the required fraud risk brainstorming session. The team discusses how the CFO''s bonus is tied to meeting revenue targets (creating pressure), how the CFO has access to override automated journal entry controls (creating an opening), and how the CFO views aggressive revenue recognition as standard industry practice (creating self-justification). Under AU-C 240, the fraud risk triangle includes which three conditions?',
  explanation = 'Under AU-C 240.A1, the fraud risk triangle identifies three conditions: incentive or pressure (the CFO''s bonus structure creates motivation), opportunity (the ability to override controls provides the means), and rationalization (viewing aggressive practices as standard justifies the behavior). The auditor considers these conditions when assessing fraud risk during the risk assessment process. Choice B is incorrect because "planning, execution, and concealment" describes how fraud is carried out, not the conditions that enable it. Choice C is incorrect because "detection, prevention, and correction" are internal control objectives, not fraud risk conditions.'
WHERE id = 1499;
