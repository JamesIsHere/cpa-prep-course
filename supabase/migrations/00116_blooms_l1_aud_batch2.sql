-- Migration: Bloom's L1 rebalancing — AUD batch 2 (48 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 48 L2 (Application) questions to L1 (Remember/Understand) depth for AUD section
-- Affected topics: Audit Evidence, Review/Compilation Engagements, Risk Assessment, Audit Planning, Attestation Engagements, Tests of Controls, Other Information and Supplementary Information, Audit Sampling, Nature and Scope of Engagements, Independence, Terms of Engagement, Responding to Assessed Risks, Professional Skepticism and Judgment

BEGIN;

-- ============================================================
-- AUDIT EVIDENCE (2 questions)
-- ============================================================

-- ID 297: Audit Evidence — Undeliverable positive confirmation response
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'What should an auditor do when a positive confirmation is returned as undeliverable?',
  choices = '["Investigate the customer''s existence and perform alternative procedures", "Treat the non-delivery as agreement with the recorded balance", "Issue a qualified opinion due to the scope limitation", "Remove the balance from the sample and select a replacement"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 505, when a positive confirmation is returned as undeliverable, the auditor should investigate whether the customer exists and perform alternative procedures such as examining subsequent cash receipts, shipping documents, or sales contracts to obtain evidence about the receivable balance. (B) is wrong because an undeliverable confirmation cannot be treated as agreement — it raises concerns about the customer''s existence. (C) is wrong because a single undeliverable confirmation does not automatically create a scope limitation requiring opinion modification.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 297;

-- ID 303: Audit Evidence — Management representation letter date requirement
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Under AU-C 580, what date must the management representation letter bear?',
  choices = '["The balance sheet date", "The date of the auditor''s report", "The last day of fieldwork", "Thirty days after the report release date"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 580.15, the management representation letter must be dated as of the date of the auditor''s report. This ensures management makes representations covering events through that date, including subsequent events and completeness of information provided. (A) is wrong because dating the letter as of the balance sheet date would leave a gap during which management makes no representations about subsequent events. (C) is wrong because the last day of fieldwork may precede the report date, again leaving an unaddressed gap.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 303;

-- ============================================================
-- REVIEW/COMPILATION ENGAGEMENTS (7 questions)
-- ============================================================

-- ID 22: Review/Compilation Engagements — Level of assurance in a review
-- correct_index = 2 (was 2; unchanged — note: original correct_index was 2 in source despite text saying limited assurance)
UPDATE questions SET
  stem = 'Under AR-C 90, what level of assurance does a review engagement provide?',
  choices = '["Reasonable assurance, the same as a full audit engagement", "No assurance, the same as a compilation engagement", "Limited assurance based on inquiry and analytical procedures", "Conditional assurance dependent on management cooperation"]'::jsonb,
  explanation = 'Correct (C): Under AR-C 90, a review engagement provides limited (also called negative) assurance. The practitioner states that nothing came to their attention that causes them to believe the financial statements are not in accordance with the applicable framework. This contrasts with reasonable (positive) assurance in an audit and no assurance in a compilation. (A) is wrong because reasonable assurance requires the extensive testing performed in an audit, not the limited inquiry and analytical procedures of a review. (B) is wrong because a compilation provides no assurance, while a review provides limited assurance.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 22;

-- ID 24: Review/Compilation Engagements — Review vs compilation procedures
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Under AR-C 90, which procedures are required in a review engagement but not in a compilation?',
  choices = '["Reading the financial statements for mathematical errors only", "Performing inquiry procedures only", "Obtaining a management representation letter only", "Both performing analytical procedures and obtaining a management representation letter"]'::jsonb,
  explanation = 'Correct (D): Under AR-C 90, a review engagement requires inquiry and analytical procedures, reading the financial statements, and obtaining a signed management representation letter — none of which are required in a compilation under AR-C 80. A compilation requires only understanding the client''s business and reading the statements for obvious errors. (B) is wrong because it identifies only one required review procedure rather than the full set that distinguishes reviews from compilations. (C) is similarly incomplete.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 24;

-- ID 129: Review/Compilation Engagements — Compilation report required language
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Under AR-C 80, what statement must a compilation report include?',
  choices = '["That the accountant did not audit or review the financial statements and does not express an opinion or provide any assurance", "That the accountant obtained reasonable assurance the statements are free of material misstatement", "That management is solely responsible for detecting fraud", "That the financial statements are presented fairly in all material respects"]'::jsonb,
  explanation = 'Correct (A): Under AR-C 80.21, the standard compilation report must state that the accountant did not audit or review the financial statements and therefore does not express an opinion or provide any assurance on them. This language clearly communicates the limited nature of the accountant''s involvement. (B) is wrong because reasonable assurance is audit language — a compilation provides no assurance. (D) is wrong because fairly presented in all material respects is the language of an audit opinion, not a compilation report.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 129;

-- ID 131: Review/Compilation Engagements — Preparation engagement independence requirement
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Under SSARS, is the accountant required to be independent in a preparation engagement?',
  choices = '["Yes, independence is always required for any SSARS engagement", "No, independence is not required and no disclosure of its absence is needed", "No, independence is not required but a lack of independence must be disclosed", "Independence is required only when the statements will be used by third parties"]'::jsonb,
  explanation = 'Correct (B): In a preparation engagement under AR-C 70, the accountant is not required to be independent and is not required to disclose a lack of independence. This is the lowest level of service under SSARS. By contrast, for compilations under AR-C 80, independence is also not required but a lack of independence must be disclosed. For reviews under AR-C 90, independence is required. (C) is wrong because that describes the compilation requirement, not the preparation requirement. (A) is wrong because independence is not required for preparation or compilation engagements.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 131;

-- ID 1790: Review/Compilation Engagements — Response to unusual analytical finding in a review
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under AR-C 90, what should an accountant do when an analytical procedure reveals an unexpected result during a review?',
  choices = '["Perform a physical observation of the related assets", "Issue a qualified review report citing the unexpected finding", "Inquire of management about the reasons for the unexpected result", "Request that management immediately adjust the financial statements"]'::jsonb,
  explanation = 'Correct (C): Under AR-C 90, when an analytical procedure reveals an unexpected result during a review engagement, the accountant should make additional inquiries of management to understand the cause and evaluate the reasonableness of the explanation. (A) is wrong because physical observation is an audit procedure, not a review procedure. (B) is wrong because an unexpected analytical finding does not automatically result in a qualified review report — the accountant first seeks an explanation from management.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1790;

-- ID 1792: Review/Compilation Engagements — Element NOT in a compilation report
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Which of the following is NOT included in a standard compilation report under AR-C 80?',
  choices = '["A statement that management is responsible for the financial statements", "A statement that the accountant did not audit or review the statements", "Identification of the financial statements compiled", "A conclusion that nothing came to the accountant''s attention indicating material modifications are needed"]'::jsonb,
  explanation = 'Correct (D): A compilation report does not include a conclusion about material modifications because no assurance is provided. The limited assurance conclusion (nothing came to our attention) is the language of a review report under AR-C 90, not a compilation report under AR-C 80. (A), (B), and (C) are all required elements of a standard compilation report. (A) is wrong to select because the compilation report does reference management''s responsibility.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1792;

-- ID 1793: Review/Compilation Engagements — Compilation with omitted disclosures
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Under AR-C 80, what must the compilation report include when substantially all disclosures are omitted?',
  choices = '["A paragraph stating that disclosures have been omitted and that the statements might differ if disclosures were included", "A statement that the financial statements are misleading due to the omission", "A qualified opinion on the disclosure omission", "A statement that the accountant takes responsibility for the omitted disclosures"]'::jsonb,
  explanation = 'Correct (A): Under AR-C 80, when substantially all disclosures required by the financial reporting framework are omitted from compiled financial statements, the report must include a paragraph indicating the omission and stating that users should be aware the statements might differ substantially from those that include all disclosures. The omission must not be intended to mislead. (B) is wrong because the report does not characterize the statements as misleading — if the omission were intended to mislead, the accountant would not issue the report. (C) is wrong because compilations do not result in opinions.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1793;

-- ============================================================
-- RISK ASSESSMENT (6 questions)
-- ============================================================

-- ID 7: Risk Assessment — Components of risk of material misstatement
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under AU-C 315, what two components make up the risk of material misstatement?',
  choices = '["Audit risk and detection risk", "Inherent risk and control risk", "Sampling risk and nonsampling risk", "Business risk and information risk"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 315, the risk of material misstatement (RMM) is the product of inherent risk and control risk. Inherent risk is the susceptibility of an assertion to misstatement before considering internal controls, while control risk is the risk that a misstatement will not be prevented or detected by the entity''s controls. Detection risk is the auditor''s component and is not part of RMM. (A) is wrong because audit risk is the overall risk model (RMM x detection risk), not a component of RMM. (C) is wrong because sampling and nonsampling risk relate to the auditor''s procedures, not the entity''s risk of misstatement.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 7;

-- ID 8: Risk Assessment — Appropriate response to a significant risk
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Under AU-C 330, what is the appropriate audit response when a significant risk is identified?',
  choices = '["Reduce the planned extent of substantive procedures for that area", "Rely primarily on the entity''s internal controls without further testing", "Obtain more persuasive audit evidence through procedures specifically responsive to the risk", "Remove the area from the scope of the audit"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 330.15, when a significant risk is identified, the auditor must obtain more persuasive evidence through procedures specifically designed to address that risk. This often includes external confirmations, detailed testing, or other high-quality procedures. (A) is wrong because significant risks require more, not fewer, substantive procedures. (B) is wrong because the auditor cannot rely solely on untested controls for significant risks. (D) is wrong because significant risks cannot be removed from audit scope.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 8;

-- ID 103: Risk Assessment — Regulatory changes and audit risk component
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Which component of audit risk is most directly affected by significant regulatory changes in a client''s industry?',
  choices = '["Detection risk", "Control risk", "Sampling risk", "Inherent risk"]'::jsonb,
  explanation = 'Correct (D): Significant regulatory changes increase inherent risk at the financial statement level because new requirements may lead to errors in compliance, new accounting treatments, or financial statement misstatements. Inherent risk exists independent of internal controls and reflects the nature of the entity and its environment. (A) is wrong because detection risk is the risk that the auditor''s procedures will fail to detect a misstatement, which is under the auditor''s control. (B) is wrong because control risk relates to the entity''s internal controls, not external industry conditions.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 103;

-- ID 105: Risk Assessment — Factors in assertion-level risk assessment
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'Under AU-C 315, which factors should the auditor consider when assessing risk at the assertion level?',
  choices = '["The nature of the account, the complexity of transactions, and the susceptibility to fraud", "The auditor''s level of experience with the client and the number of hours budgeted", "The size of the audit firm relative to the client", "The fee revenue expected from the engagement"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 315, assertion-level risk assessment considers factors specific to classes of transactions, account balances, and disclosures, including the nature of the account, transaction complexity, volume, and susceptibility to fraud. These factors are about the entity''s circumstances, not the auditor''s. (B) is wrong because auditor experience and engagement hours are not factors in assessing the client''s risk of misstatement. (C) is wrong because firm size has no bearing on the entity''s risk of misstatement.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 105;

-- ID 276: Risk Assessment — Substantive procedures for significant risks
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'Under AU-C 330, what must the auditor perform when a significant risk has been identified?',
  choices = '["Rely solely on analytical procedures to test the area", "Substantive procedures specifically responsive to the identified significant risk", "Issue a qualified opinion because a significant risk was identified", "Withdraw from the engagement"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 330.15, when a significant risk is identified, the auditor must perform substantive procedures specifically designed to address that risk. The auditor cannot rely solely on analytical procedures for significant risks — tests of details are required. (A) is wrong because AU-C 330 prohibits relying exclusively on analytical procedures for significant risks. (C) is wrong because identifying a significant risk does not automatically require opinion modification — it requires a responsive audit approach.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 276;

-- ID 277: Risk Assessment — Assertion most at risk for regulatory compliance disclosures
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Which financial statement assertion is most at risk when an entity operates in a highly regulated industry with frequent changes?',
  choices = '["Existence", "Valuation and allocation", "Completeness", "Classification"]'::jsonb,
  explanation = 'Correct (C): In a highly regulated environment with frequent changes, the greatest risk is that the entity fails to disclose all required compliance information — a completeness assertion risk. New or changed regulations increase the likelihood that required disclosures are inadvertently omitted. (A) is wrong because existence concerns whether items actually exist, which is less likely to be the primary concern for disclosure of regulatory requirements. (D) is wrong because classification is about proper categorization, not whether all required items are included.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 277;

-- ============================================================
-- AUDIT PLANNING (5 questions)
-- ============================================================

-- ID 5: Audit Planning — Purpose of performance materiality
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'What is the primary purpose of setting performance materiality below overall materiality?',
  choices = '["To increase audit fees through additional testing", "To ensure all misstatements above the threshold are corrected", "To satisfy regulatory requirements for public companies", "To reduce the risk that aggregate uncorrected and undetected misstatements exceed overall materiality"]'::jsonb,
  explanation = 'Correct (D): Performance materiality is set below overall materiality to account for the possibility that multiple undetected misstatements could aggregate to exceed overall materiality. By testing at a lower threshold, the auditor builds in a buffer to reduce the risk that the sum of uncorrected and undetected misstatements exceeds the amount considered material for the financial statements as a whole. (A) is wrong because performance materiality is set based on audit risk, not fee considerations. (B) is wrong because the purpose is a risk buffer, not a guarantee that all misstatements will be corrected.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5;

-- ID 6: Audit Planning — Factor least relevant to audit strategy
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Which of the following would an auditor least likely consider when developing the overall audit strategy?',
  choices = '["The expected fee revenue from the engagement", "The entity''s industry and regulatory environment", "The entity''s selection and application of accounting policies", "The results of preliminary engagement activities"]'::jsonb,
  explanation = 'Correct (A): The overall audit strategy considers the characteristics of the engagement, reporting objectives, and the nature and timing of resources needed. Fee revenue is a business matter for the firm, not a factor in developing the audit strategy under AU-C 300. (B) is wrong because the entity''s industry and regulatory environment are directly relevant to planning the audit approach. (D) is wrong because preliminary engagement activities inform the audit strategy.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 6;

-- ID 97: Audit Planning — Effect of predecessor going concern qualification
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'How should a prior going concern qualification by the predecessor auditor affect the current auditor''s planning?',
  choices = '["It has no effect since each audit stands on its own", "The auditor should plan additional procedures to evaluate the entity''s ability to continue as a going concern", "The auditor should decline the engagement", "The auditor should automatically issue a going concern opinion"]'::jsonb,
  explanation = 'Correct (B): A prior going concern qualification is a significant planning consideration. The current auditor should assess whether the conditions that led to the previous qualification still exist and plan procedures to evaluate the entity''s current ability to continue as a going concern. (A) is wrong because while each audit is independent, prior findings inform planning considerations. (D) is wrong because each audit requires independent evaluation — a prior going concern does not predetermine the current opinion.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 97;

-- ID 98: Audit Planning — Required content of an engagement letter
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under AU-C 210, what must be included in an audit engagement letter?',
  choices = '["The expected audit opinion that will be issued", "A detailed listing of every substantive procedure the auditor plans to perform", "The objective and scope of the audit and management''s responsibilities", "The specific materiality thresholds that will be used during the engagement"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 210.10, the engagement letter must include the objective and scope of the audit, management''s responsibilities (including preparation of financial statements and maintenance of internal control), the auditor''s responsibilities under GAAS, and identification of the applicable financial reporting framework. (A) is wrong because the engagement letter does not predetermine the audit opinion — the opinion is based on evidence obtained during the audit. (B) is wrong because specific substantive procedures are determined during planning and risk assessment, not documented in the engagement letter.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 98;

-- ID 268: Audit Planning — Group engagement partner responsibilities
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under AU-C 600, what must the group engagement partner do regarding component auditors?',
  choices = '["Accept the component auditor''s report without further evaluation", "Always assume full responsibility for all components regardless of significance", "Require all components to be audited by the same firm", "Evaluate the competence, independence, and ethical compliance of component auditors"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 600.19, the group engagement partner must evaluate the professional competence, independence, and ethical compliance of component auditors before relying on their work. This evaluation determines whether sufficient appropriate audit evidence can be obtained to support the group audit opinion. (A) is wrong because the group engagement partner cannot simply accept a component auditor''s work without evaluating their qualifications. (B) is wrong because the group engagement partner may choose to make reference to component auditors rather than assuming full responsibility.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 268;

-- ============================================================
-- ATTESTATION ENGAGEMENTS (4 questions)
-- ============================================================

-- ID 25: Attestation Engagements — Examination engagement conclusion type
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Under AT-C 205, what type of conclusion does an examination engagement provide?',
  choices = '["A positive opinion on whether the subject matter meets established criteria", "A negative assurance conclusion stating nothing came to the practitioner''s attention", "A disclaimer of opinion because the practitioner cannot verify all underlying data", "A recommendation for improvement based on professional judgment"]'::jsonb,
  explanation = 'Correct (A): Under AT-C 205, an examination engagement results in a positive opinion — the practitioner states whether the subject matter is presented in accordance with the established criteria. This provides the highest level of assurance among attestation engagement types, analogous to an audit opinion on financial statements. (B) is wrong because negative assurance is the conclusion form of a review engagement under AT-C 210, not an examination. (D) is wrong because attestation engagements provide assurance, not recommendations — consulting engagements address recommendations.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 25;

-- ID 133: Attestation Engagements — Lowest assurance level among attestation engagements
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Under SSAE No. 18, which attestation engagement type provides the lowest level of assurance?',
  choices = '["Examination engagement", "Agreed-upon procedures engagement", "Review engagement", "All provide the same level of assurance"]'::jsonb,
  explanation = 'Correct (B): An agreed-upon procedures (AUP) engagement does not provide an opinion or assurance conclusion. The practitioner merely reports factual findings from performing specific procedures agreed to by the specified parties. An examination provides positive (reasonable) assurance, and a review provides negative (limited) assurance. AUPs provide no assurance at all, making them the lowest level. (A) is wrong because examinations provide the highest level of assurance. (C) is wrong because reviews provide limited assurance, which is more than no assurance.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 133;

-- ID 134: Attestation Engagements — Standards governing a compliance examination
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under what professional standards is an examination of compliance with specified requirements performed?',
  choices = '["GAAS for financial statement audits", "AR-C standards for compilations and reviews", "SSAE (attestation) standards, requiring sufficient evidence and issuance of an opinion on compliance", "Government Auditing Standards (Yellow Book) exclusively"]'::jsonb,
  explanation = 'Correct (C): An examination of compliance is an attestation engagement governed by SSAE standards (AT-C sections). The CPA obtains sufficient appropriate evidence to provide a reasonable basis for expressing an opinion on whether the entity complied, in all material respects, with the specified requirements. (A) is wrong because GAAS governs audits of historical financial statements, not compliance examinations. (B) is wrong because AR-C standards govern compilations and reviews of financial statements, not attestation engagements.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 134;

-- ID 348: Attestation Engagements — Scope of AT-C standards
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Under AT-C 105, what types of engagements do the attestation standards govern?',
  choices = '["Audits of historical financial statements", "Compilations and reviews of nonpublic entity financial statements", "Only SOC engagements", "Examination, review, and agreed-upon procedures on subject matter other than historical financial statements"]'::jsonb,
  explanation = 'Correct (D): Under AT-C 105, the attestation standards apply to examination, review, and agreed-upon procedures engagements on subject matter other than historical financial statements. These include SOC engagements, compliance attestation, prospective financial statements, and other attestation services. (A) is wrong because audits of historical financial statements are governed by AU-C (Statements on Auditing Standards). (B) is wrong because compilations and reviews of nonpublic financial statements fall under AR-C (SSARS).',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 348;

-- ============================================================
-- TESTS OF CONTROLS (4 questions)
-- ============================================================

-- ID 5071: Tests of Controls — Testing segregation of duties
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'Which audit procedure is most effective for testing the operating effectiveness of a segregation-of-duties control?',
  choices = '["Observation of personnel performing duties and inspection of authorization signatures", "Recalculation of account balances", "Sending confirmation letters to customers", "Performing analytical procedures on account balances"]'::jsonb,
  explanation = 'Correct (A): Observation and inspection are the most effective procedures for testing segregation of duties. The auditor can observe that different individuals perform incompatible functions (such as authorization, recording, and custody) and inspect evidence such as authorization signatures and access logs to verify the control is operating as designed. (B) is wrong because recalculation tests mathematical accuracy of balances, not whether duties are properly separated. (C) is wrong because confirmation is a substantive procedure for account balances, not a test of controls.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5071;

-- ID 5072: Tests of Controls — Testing infrequently performed manual controls
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'When testing a manual control performed only 12 times per year, how many occurrences should the auditor typically test?',
  choices = '["Only one occurrence because the control is well-designed", "Each occurrence or most occurrences due to the small population", "Only the most recent occurrence", "Only the occurrences at year-end"]'::jsonb,
  explanation = 'Correct (B): For a control that operates infrequently (such as a monthly reconciliation with only 12 occurrences), the auditor typically tests each occurrence or most of them because the small population does not lend itself to sampling. Testing all 12 occurrences provides the strongest evidence of consistent operating effectiveness throughout the period. (A) is wrong because one occurrence is insufficient to conclude on operating effectiveness over the full year. (C) is wrong because testing only the most recent occurrence provides no evidence about the control''s operation during the rest of the period.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5072;

-- ID 5074: Tests of Controls — Reliance on prior-year control testing
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under auditing standards, what is required when an auditor plans to rely on controls tested in the prior year that have not changed?',
  choices = '["The auditor may rely on prior-year testing without any current-year tests", "The auditor must perform the same extent of testing as in the prior year", "The auditor must retest the controls but may reduce the extent of testing if nothing has changed", "The auditor may rely on prior-year testing for up to five years before retesting"]'::jsonb,
  explanation = 'Correct (C): Auditing standards require the auditor to test controls in each audit period when planning to rely on them. However, if controls have not changed, the auditor may reduce the extent of testing. A rotation approach may be used where controls are tested at least once every three audits, but some testing must occur in the current period. (A) is wrong because the auditor cannot simply rely on prior-year testing alone — some current-period testing is required. (D) is wrong because a five-year interval exceeds the maximum rotation period under auditing standards.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5074;

-- ID 5075: Tests of Controls — Methods of testing controls under AU-C 330
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Under AU-C 330, which of the following is NOT a method of testing controls?',
  choices = '["Inquiry of entity personnel", "Observation of control operation", "Inspection of documents and reports", "Confirmation of accounts receivable"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 330.10, methods for testing controls include inquiry, observation, inspection of documents showing evidence of control performance, and reperformance of the control by the auditor. Confirmation of accounts receivable is a substantive procedure used to verify account balances under AU-C 505, not a method for testing the operating effectiveness of controls. (A) is wrong to select because inquiry is a valid control testing method, though it alone is insufficient. (B) is wrong to select because observation is a valid control testing method.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5075;

-- ============================================================
-- OTHER INFORMATION AND SUPPLEMENTARY INFORMATION (4 questions)
-- ============================================================

-- ID 5193: Other Information and Supplementary Information — Definition of supplementary information
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Under AU-C 725, what is supplementary information that accompanies audited financial statements?',
  choices = '["Information presented alongside audited statements that is not required by the financial reporting framework but is voluntarily included by management", "Information mandated by GASB or FASB that must appear with every set of financial statements", "Additional footnotes that expand on disclosures already included in the basic statements", "The auditor''s internal working papers attached as an exhibit to the report"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 725, supplementary information accompanying audited financial statements refers to information presented outside the basic financial statements that is not required by the financial reporting framework but that management chooses to present alongside the audited statements. The auditor may be engaged to report on this supplementary information in relation to the financial statements as a whole. (B) is wrong because information mandated by the framework is called required supplementary information (RSI), governed by AU-C 730. (C) is wrong because additional footnotes are part of the basic financial statements, not supplementary information.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5193;

-- ID 5194: Other Information and Supplementary Information — Opinion on supplementary information
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'When reporting on supplementary information in relation to the audited financial statements, what does the auditor''s opinion address?',
  choices = '["Whether the supplementary information is complete and accurate in all respects", "Whether the supplementary information is fairly stated, in all material respects, in relation to the financial statements as a whole", "Whether the supplementary information complies with all regulatory requirements", "Whether the supplementary information is more reliable than the basic financial statements"]'::jsonb,
  explanation = 'Correct (B): When the auditor is engaged to report on supplementary information in relation to the audited financial statements as a whole, the opinion states whether the supplementary information is fairly stated, in all material respects, in relation to the financial statements as a whole. This is a lower threshold than an independent opinion on the supplementary information taken by itself. (A) is wrong because the standard is material fairness in relation to the financial statements, not absolute completeness and accuracy. (C) is wrong because the opinion addresses fairness in relation to the financial statements, not regulatory compliance.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5194;

-- ID 5195: Other Information and Supplementary Information — Auditor procedures for RSI
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under AU-C 730, what are the auditor''s procedures with respect to required supplementary information?',
  choices = '["A full audit of the RSI to the same extent as the basic financial statements", "No procedures, because RSI falls entirely outside the scope of the audit", "Inquiries of management about preparation methods and comparison for consistency with the audited statements", "A separate audit opinion issued in an other-matter paragraph"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 730.06, the auditor''s procedures for RSI are limited but specific: inquire of management about the methods used to prepare the RSI and compare it for consistency with management''s responses, the audited financial statements, and other knowledge obtained during the audit. (A) is wrong because RSI is not audited to the same extent as the basic statements. (B) is wrong because the auditor does have limited responsibilities for RSI even though the RSI is not audited.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5195;

-- ID 5197: Other Information and Supplementary Information — Material misstatement of fact in other information
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under AU-C 720, what should the auditor do when a material misstatement of fact is identified in the other information?',
  choices = '["Ignore it because it does not affect the financial statements", "Issue a modified opinion on the financial statements", "Report the misstatement directly to law enforcement", "Discuss the matter with management and request correction"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 720, a material misstatement of fact in the other information — even if unrelated to the financial statements — may undermine the credibility of the document containing the audited financial statements. The auditor should discuss the apparent misstatement with management and request that it be corrected. If management refuses, the auditor considers further actions. (A) is wrong because the auditor has a responsibility to address material misstatements of fact in the other information. (B) is wrong because a factual error in the other information does not require modification of the opinion on the financial statements.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5197;

-- ============================================================
-- AUDIT SAMPLING (3 questions)
-- ============================================================

-- ID 15: Audit Sampling — Factor that increases sample size in attribute sampling
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'In attribute sampling for tests of controls, which factor would cause the auditor to increase sample size?',
  choices = '["A decrease in the acceptable risk of overreliance", "An increase in the tolerable rate of deviation", "A decrease in the expected population deviation rate", "An increase in population size from 5,000 to 50,000 items"]'::jsonb,
  explanation = 'Correct (A): A decrease in the acceptable risk of overreliance means the auditor wants greater confidence that the sample results reflect the true population. To achieve this higher confidence, a larger sample is needed. (B) is wrong because increasing the tolerable rate would actually reduce the required sample size. (C) is wrong because decreasing the expected deviation rate would also reduce the required sample size. (D) is wrong because population size has minimal effect on sample size for large populations.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 15;

-- ID 16: Audit Sampling — Primary advantage of monetary unit sampling
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'What is the primary advantage of monetary unit sampling?',
  choices = '["It requires no statistical knowledge to apply", "It automatically stratifies the population by dollar amount, giving larger items a higher probability of selection", "It eliminates the need for an understanding of the client''s business", "It produces results identical to a 100% examination"]'::jsonb,
  explanation = 'Correct (B): Monetary unit sampling (MUS) selects individual dollars as the sampling unit, which means larger account balances contain more sampling units and have a proportionally higher chance of being selected. This built-in stratification focuses the audit on high-dollar items without requiring a separate stratification step. (A) is wrong because MUS does require statistical knowledge for proper application and evaluation. (D) is wrong because no sampling method produces results identical to a complete examination.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 16;

-- ID 117: Audit Sampling — Definition of tolerable rate of deviation
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'In attribute sampling for tests of controls, what does the tolerable rate of deviation represent?',
  choices = '["The actual rate of deviations found in the sample", "The expected rate of deviations in the population", "The maximum rate of control deviations the auditor will accept and still rely on the control", "The probability of the sample results being incorrect"]'::jsonb,
  explanation = 'Correct (C): The tolerable rate is the maximum deviation rate from a prescribed control that the auditor is willing to accept without modifying the planned reliance on the control. It is set during planning based on the planned degree of reliance on the control and represents the auditor''s threshold for acceptable control performance. (A) is wrong because that describes the sample deviation rate, which is the actual result of testing. (B) is wrong because that describes the expected population deviation rate, which is an estimate used in sample size determination.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 117;

-- ============================================================
-- NATURE AND SCOPE OF ENGAGEMENTS (3 questions)
-- ============================================================

-- ID 4910: Nature and Scope of Engagements — Overall objective of an audit
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under AU-C 200, what is the overall objective of an auditor conducting a financial statement audit?',
  choices = '["To guarantee the financial statements are completely free from all errors", "To detect all instances of fraud within the entity", "To provide absolute assurance that the financial statements are accurate", "To obtain reasonable assurance about whether the financial statements are free from material misstatement"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 200, the overall objective of the auditor is to obtain reasonable assurance about whether the financial statements as a whole are free from material misstatement, whether due to fraud or error, and to report on the financial statements in accordance with the auditor''s findings. Reasonable assurance is a high but not absolute level of assurance. (A) is wrong because an audit does not guarantee complete freedom from all errors — it addresses material misstatements. (C) is wrong because the audit provides reasonable assurance, not absolute assurance.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 4910;

-- ID 4911: Nature and Scope of Engagements — Completeness assertion definition
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'Which financial statement assertion addresses whether all transactions that should have been recorded have in fact been recorded?',
  choices = '["Completeness", "Existence", "Valuation", "Rights and obligations"]'::jsonb,
  explanation = 'Correct (A): The completeness assertion addresses whether all transactions, events, and account balances that should have been recorded have been recorded. It is concerned with potential understatement of amounts in the financial statements. (B) is wrong because the existence assertion addresses whether recorded items actually exist — the opposite direction of completeness. (C) is wrong because valuation addresses whether amounts are recorded at appropriate values, not whether all items are included.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 4911;

-- ID 4912: Nature and Scope of Engagements — Existence assertion definition
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Which financial statement assertion is an auditor primarily testing when verifying that recorded inventory actually exists at year-end?',
  choices = '["Completeness", "Existence", "Valuation and allocation", "Presentation and disclosure"]'::jsonb,
  explanation = 'Correct (B): The existence assertion deals with whether assets, liabilities, and equity interests exist at a given date. By physically observing inventory or confirming it with third parties, the auditor is testing existence — that is, whether the recorded amounts actually exist. (A) is wrong because completeness addresses whether all items are recorded, not whether recorded items exist. (C) is wrong because valuation and allocation address whether amounts are recorded at appropriate values.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 4912;

-- ============================================================
-- INDEPENDENCE (3 questions)
-- ============================================================

-- ID 4931: Independence — Direct financial interest impairment rule
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under the AICPA Code of Professional Conduct, when does a direct financial interest in an audit client impair independence?',
  choices = '["Only when the investment is material to the auditor''s net worth", "Only when the auditor is a partner in the firm", "Any direct financial interest impairs independence regardless of materiality", "Only when the stock was purchased after the engagement began"]'::jsonb,
  explanation = 'Correct (C): Under the AICPA Code, a covered member (including any member of the engagement team) who holds a direct financial interest in the audit client has impaired independence, regardless of the materiality of the interest. The auditor must dispose of the interest to maintain independence. (A) is wrong because the materiality exception applies only to indirect financial interests, not direct interests. (B) is wrong because the rule applies to all covered members, not just partners.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 4931;

-- ID 4932: Independence — Close family relationship threat type
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Which threat to independence arises when an engagement partner has a close family member serving as CFO of the audit client?',
  choices = '["Self-review threat", "Advocacy threat", "Management participation threat", "Familiarity threat"]'::jsonb,
  explanation = 'Correct (D): A close family relationship between a covered member and a key member of client management creates a familiarity threat. The concern is that the auditor may become too sympathetic to the client''s interests or too trusting of the client''s representations due to the personal relationship. (A) is wrong because self-review threat arises when the auditor reviews their own work, not from family relationships. (B) is wrong because advocacy threat arises when the auditor promotes the client''s position, not from personal relationships.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 4932;

-- ID 4933: Independence — Threat from providing tax services to audit client
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Under the AICPA Code, what type of threat arises when an auditor both prepares a client''s tax return and audits the financial statements?',
  choices = '["Self-review threat", "Advocacy threat", "Familiarity threat", "Undue influence threat"]'::jsonb,
  explanation = 'Correct (A): When the auditor performs non-attest services (such as tax preparation) and then audits the resulting financial statements, a self-review threat arises because the auditor may be reviewing their own work. The AICPA Code permits certain non-attest services if management accepts responsibility and the auditor does not assume a management role. (B) is wrong because advocacy threat involves promoting the client''s position in an adversarial context, not reviewing one''s own work. (C) is wrong because familiarity threat arises from close personal relationships, not from performing non-attest services.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 4933;

-- ============================================================
-- TERMS OF ENGAGEMENT (3 questions)
-- ============================================================

-- ID 4970: Terms of Engagement — Required element of an engagement letter
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under AU-C 210, what is a required element of an audit engagement letter?',
  choices = '["The names of all staff members who will work on the engagement", "The identification of the applicable financial reporting framework and management''s responsibility for the financial statements", "A description of each specific audit procedure the auditor plans to perform", "The projected timeline for completing each phase of the audit"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 210.10, the engagement letter must include the objective and scope of the audit, the auditor''s responsibilities, management''s responsibilities (including preparation of financial statements under the applicable framework), and identification of that framework. (A) is wrong because staffing details are an internal matter, not a required engagement letter element. (C) is wrong because the auditor has discretion over specific procedures and is not required to list them in the letter.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 4970;

-- ID 4974: Terms of Engagement — Purpose of report language in the engagement letter
-- correct_index = 2 (was 1; swapped B↔C)
UPDATE questions SET
  stem = 'Under AU-C 210, what is the primary purpose of referencing the expected form and content of reports in the engagement letter?',
  choices = '["To provide the client with a draft copy of the final audit report", "To limit the auditor''s legal liability in a negligence claim", "To establish the client''s expectations regarding the nature and limitations of the engagement", "To specify the exact wording that will appear in the opinion paragraph"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 210.10, referencing the expected form and content of reports in the engagement letter helps manage the client''s expectations regarding what the audit will and will not accomplish. It clarifies the nature and limitations of the engagement and ensures both parties have a mutual understanding. (B) is wrong because the engagement letter is not primarily a liability-limitation instrument — its purpose is to document agreed-upon terms. (D) is wrong because the exact opinion wording depends on audit findings and cannot be predetermined.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 4974;

-- ID 4976: Terms of Engagement — Purpose of predecessor auditor communication
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'What is the primary purpose of a successor auditor communicating with the predecessor auditor?',
  choices = '["To obtain the predecessor''s workpapers", "To determine the predecessor''s fee structure", "To request that the predecessor recommend the new auditor to the client", "To obtain information about management integrity to assist in deciding whether to accept the engagement"]'::jsonb,
  explanation = 'Correct (D): Communication with the predecessor auditor is intended to help the successor auditor evaluate whether to accept the engagement. The successor should inquire about matters such as management integrity, disagreements with management, reasons for the change of auditors, and any fraud or illegal acts. Client permission is needed before this communication. (A) is wrong because the primary purpose is engagement acceptance evaluation, not obtaining workpapers — workpaper review occurs after acceptance. (B) is wrong because fee structure is a business matter unrelated to the professional purpose of predecessor communication.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 4976;

-- ============================================================
-- RESPONDING TO ASSESSED RISKS (3 questions)
-- ============================================================

-- ID 5031: Responding to Assessed Risks — High assessed risk response
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'Under AU-C 330, how should the auditor respond when the assessed risk of material misstatement is high?',
  choices = '["Design procedures that are more persuasive by increasing the quantity or reliability of evidence, or both", "Design less extensive procedures because the higher risk has already been identified", "Focus exclusively on analytical procedures", "Rely primarily on inquiry of management"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 330, when assessed risk is high, the auditor must design procedures that provide more persuasive evidence. This can be achieved by increasing the quantity of evidence (larger sample sizes), obtaining more reliable evidence (external versus internal sources), or both. The nature, timing, and extent of procedures should all be responsive to the assessed level of risk. (B) is wrong because higher risk requires more, not less, extensive procedures. (D) is wrong because inquiry alone is insufficient for high-risk areas.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5031;

-- ID 5032: Responding to Assessed Risks — Definition of nature of audit procedures
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'Under AU-C 330, what does the term nature of further audit procedures refer to?',
  choices = '["When the procedures are performed, such as at interim or period end", "The type and purpose of the procedures, such as inspection, observation, inquiry, or confirmation", "The quantity of procedures performed, such as sample size", "The cost-benefit analysis used to determine whether procedures are worthwhile"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 330, the nature of audit procedures refers to their type and purpose — that is, whether the auditor uses inspection, observation, inquiry, external confirmation, recalculation, reperformance, analytical procedures, or a combination. Nature is one of three dimensions (along with timing and extent) that the auditor adjusts in response to assessed risks. (A) is wrong because when procedures are performed describes the timing of procedures, not their nature. (C) is wrong because the quantity of procedures describes the extent, not the nature.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5032;

-- ID 5033: Responding to Assessed Risks — Responding to a significant risk
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Under AU-C 330, how should the auditor respond to a significant risk related to revenue recognition?',
  choices = '["Treat it the same as any other assessed risk", "Rely solely on inquiry of management about revenue recognition policies", "Design and perform audit procedures specifically responsive to the significant risk", "Issue a qualified opinion due to the existence of the significant risk"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 330.15, significant risks require special audit consideration. The auditor should design and perform audit procedures specifically responsive to the significant risk, which may include targeted substantive procedures, tests of controls, or a combination. Significant risks cannot be addressed through routine audit procedures alone. (A) is wrong because significant risks require heightened attention beyond routine risk responses. (D) is wrong because identifying a significant risk does not require opinion modification — it requires a responsive audit approach.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5033;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 question)
-- ============================================================

-- ID 4950: Professional Skepticism and Judgment — Definition of professional skepticism
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under AU-C 200, what is professional skepticism?',
  choices = '["A requirement to corroborate every management assertion with external evidence", "An assumption that management is dishonest until proven otherwise", "A refusal to accept any representations from management", "An attitude that includes a questioning mind, alertness to conditions indicating possible misstatement, and a critical assessment of evidence"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 200.14, professional skepticism is an attitude that includes a questioning mind, alertness to conditions that may indicate possible misstatement due to fraud or error, and a critical assessment of audit evidence. It does not mean assuming management is dishonest, but rather maintaining an objective and questioning approach throughout the audit. (B) is wrong because skepticism presumes neither honesty nor dishonesty — it maintains a neutral, questioning stance. (C) is wrong because the auditor can accept management representations as one form of evidence, not refuse them entirely.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 4950;

COMMIT;
