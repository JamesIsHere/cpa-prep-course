-- Migration: Bloom's L1 rebalancing — AUD batch 1 (48 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 48 L2 (Application) questions to L1 (Remember/Understand) depth for AUD section
-- Affected topics: Audit Reports, Ethics and Independence, Substantive Procedures, Professional Responsibilities, Audit Evidence

BEGIN;

-- ============================================================
-- AUDIT REPORTS (14 questions)
-- ============================================================

-- ID 19: Audit Reports — Standard unmodified opinion language
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Under AU-C 700, which statement is included in an auditor''s standard unmodified opinion report on a nonissuer?',
  choices = '["The audit was conducted in accordance with generally accepted auditing standards", "The financial statements are guaranteed to be free of misstatement", "The auditor assumes responsibility for the entity''s internal controls", "The financial statements are the responsibility of the auditor"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 700.25, the standard unmodified audit report states that the audit was conducted in accordance with auditing standards generally accepted in the United States. The report clarifies that management is responsible for the financial statements and that the auditor''s responsibility is to express an opinion based on the audit. (B) is wrong because audits provide reasonable, not absolute, assurance — no guarantee is made. (D) is wrong because the financial statements are management''s responsibility, not the auditor''s.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 19;

-- ID 124: Audit Reports — Qualified opinion language
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Which phrase distinguishes a qualified opinion from other opinion types?',
  choices = '["The financial statements present fairly, in all material respects", "Except for the effects of the matter described", "The financial statements do not present fairly", "We do not express an opinion on the financial statements"]'::jsonb,
  explanation = 'Correct (B): A qualified opinion uses the phrase ''except for'' to carve out the specific area of disagreement or limitation while still providing an opinion on the remaining financial statements. (A) is wrong because that language appears in an unmodified opinion. (C) is wrong because that language appears in an adverse opinion. (D) is wrong because that language appears in a disclaimer of opinion.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 124;

-- ID 125: Audit Reports — Disclaimer of opinion conditions
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'Under AU-C 705, when is a disclaimer of opinion issued?',
  choices = '["When there is a material misstatement in the financial statements", "When the client changes accounting methods", "When the auditor cannot obtain sufficient appropriate audit evidence and the possible effects are pervasive", "When the financial statements depart from GAAP in an immaterial way"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 705.10, a disclaimer of opinion is issued when the auditor is unable to obtain sufficient appropriate audit evidence to form an opinion and the potential effects of undetected misstatements could be both material and pervasive. (A) is wrong because material misstatements with sufficient evidence lead to qualified or adverse opinions, not disclaimers. (D) is wrong because immaterial departures do not affect the opinion type.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 125;

-- ID 126: Audit Reports — Emphasis-of-matter paragraph purpose
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'What is the purpose of an emphasis-of-matter paragraph in an audit report?',
  choices = '["To communicate a scope limitation imposed by management", "To report an uncorrected misstatement in the financial statements", "To disclose a disagreement with management about an accounting policy", "To draw attention to a matter appropriately presented in the financial statements that is fundamental to users'' understanding"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 706, an emphasis-of-matter paragraph highlights matters already properly presented or disclosed in the financial statements that the auditor believes are fundamental to users'' understanding, such as going concern uncertainty or significant related-party transactions. (A) is wrong because scope limitations affect the opinion itself rather than warranting an emphasis-of-matter paragraph. (B) is wrong because uncorrected misstatements lead to opinion modifications, not emphasis-of-matter paragraphs.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 126;

-- ID 127: Audit Reports — Required elements of auditor report
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Which of the following is a required element of the auditor''s report under AU-C 700?',
  choices = '["A statement that the auditor is responsible for expressing an opinion based on the audit", "A description of each audit procedure performed", "The auditor''s opinion on the effectiveness of internal controls", "A list of all adjusting entries proposed during the audit"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 700, the auditor''s report must include a statement of the auditor''s responsibility to express an opinion on the financial statements based on the audit. (B) is wrong because the report does not detail every individual procedure performed. (C) is wrong because the report does not opine on internal controls unless it is an integrated audit under PCAOB standards.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 127;

-- ID 327: Audit Reports — Critical Audit Matter definition
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under PCAOB AS 3101, what is a Critical Audit Matter (CAM)?',
  choices = '["A matter that automatically results in a modified opinion", "A matter communicated to the audit committee that relates to material accounts and involved especially challenging auditor judgment", "A material weakness in internal controls over financial reporting", "A deficiency that requires the auditor to disclaim an opinion"]'::jsonb,
  explanation = 'Correct (B): Under PCAOB AS 3101.11, a CAM must meet three criteria: (1) communicated or required to be communicated to the audit committee, (2) related to accounts or disclosures material to the financial statements, and (3) involved especially challenging, subjective, or complex auditor judgment. (A) is wrong because a CAM does not change the type of opinion issued. (C) is wrong because a material weakness in internal controls is a separate reporting concept under AS 2201.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 327;

-- ID 328: Audit Reports — Reference to component auditor effect
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'In a group audit, what is the effect of making reference to a component auditor in the group audit report?',
  choices = '["The group auditor assumes full responsibility for the component''s work", "The group auditor is no longer required to evaluate the component auditor", "Responsibility is divided between the group auditor and the component auditor", "The component auditor must also issue a separate report to the group client"]'::jsonb,
  explanation = 'Correct (C): When the group auditor makes reference to a component auditor, responsibility is divided — the group auditor takes responsibility for their portion and the component auditor takes responsibility for theirs. The group auditor''s report identifies the portion audited by the component auditor. (A) is wrong because making reference divides responsibility rather than consolidating it. (B) is wrong because the group auditor must still evaluate the component auditor even when making reference.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 328;

-- ID 330: Audit Reports — Group audit options for component work
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Under AU-C 600, what options does a group engagement partner have regarding a component auditor''s work?',
  choices = '["The partner must always assume full responsibility for all components", "The partner is prohibited from mentioning the component auditor in the report", "The partner must disclaim an opinion on the group financial statements", "The partner may either make reference to the component auditor or assume responsibility for the component''s work"]'::jsonb,
  explanation = 'Correct (D): Under AU-C 600, the group engagement partner may choose to make reference to the component auditor (dividing responsibility) or assume full responsibility (requiring more extensive involvement in the component''s work). Neither option is mandatory. (A) is wrong because the partner has a choice, not a mandate. (B) is wrong because making reference to a component auditor is an explicitly permitted option.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 330;

-- ID 331: Audit Reports — PCAOB integrated audit report content
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Under PCAOB standards, what must an integrated audit report on a public company include?',
  choices = '["An opinion on both the financial statements and internal controls over financial reporting", "The names of all audit staff who worked on the engagement", "A guarantee that fraud was not present", "The auditor''s home address"]'::jsonb,
  explanation = 'Correct (A): Under PCAOB AS 2201, an integrated audit of a public company requires the auditor to issue opinions on both the financial statements and the effectiveness of internal controls over financial reporting (ICFR). (C) is wrong because the auditor provides reasonable assurance, not a fraud guarantee. (B) is wrong because the PCAOB requires disclosure of the engagement partner name and the firm registration number, not individual staff names.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 331;

-- ID 333: Audit Reports — Updated opinion on comparative statements
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'What may an auditor do when a prior-year qualification on comparative financial statements has been resolved?',
  choices = '["Issue a qualified opinion on both years", "Issue an updated opinion removing the qualification for the prior year", "Issue a disclaimer on both years", "Issue an adverse opinion on the current year"]'::jsonb,
  explanation = 'Correct (B): When circumstances that led to a prior-year modification are resolved, the auditor may issue an updated opinion removing the qualification. The current report would include an other-matter paragraph explaining the change from the previously issued qualified opinion. (A) is wrong because continuing the qualification when the matter is resolved would misrepresent the current status. (C) is wrong because a disclaimer is for scope limitations, not resolved qualifications.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 333;

-- ID 335: Audit Reports — Report date requirement
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'Under AU-C 700, the date of the auditor''s report should be no earlier than what event?',
  choices = '["The balance sheet date", "The date the engagement letter was signed", "The date the auditor obtained sufficient appropriate evidence to support the opinion", "60 days after the balance sheet date"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 700.41, the report date should be no earlier than the date the auditor obtained sufficient appropriate audit evidence to support the opinion, including evidence regarding subsequent events through that date. (A) is wrong because the balance sheet date precedes the completion of audit work. (B) is wrong because the engagement letter date is when the engagement begins, not when sufficient evidence is obtained.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 335;

-- ID 337: Audit Reports — Auditor tenure disclosure
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under PCAOB standards, what information about auditor tenure is disclosed in the audit report?',
  choices = '["The planned rotation date for the engagement partner", "The lead partner''s total years of professional experience", "The total audit hours spent on the engagement", "The number of years the firm has served as the company''s auditor"]'::jsonb,
  explanation = 'Correct (D): The PCAOB requires that the auditor''s report include a statement identifying the year the auditor began serving consecutively as the company''s auditor. This tenure disclosure provides transparency about the length of the auditor-client relationship. (A) is wrong because rotation dates are not disclosed in the audit report. (C) is wrong because total audit hours are not required to be disclosed in the report.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 337;

-- ID 1710: Audit Reports — Non-required report element
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Which of the following is NOT a required element of an auditor''s standard unmodified report under AU-C 700?',
  choices = '["A statement that the auditor has verified all transactions during the period", "Addressee", "Title that includes the word independent", "Auditor''s signature"]'::jsonb,
  explanation = 'Correct (A): The auditor''s report does not state that the auditor verified all transactions. That would imply absolute assurance, whereas an audit provides reasonable assurance. Required elements include a title referencing independence, an addressee, the opinion paragraph, management and auditor responsibilities, and the auditor''s signature. (C) is wrong because AU-C 700 requires the title to include the word independent. (B) is wrong because the addressee is a required element.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1710;

-- ID 1712: Audit Reports — Management responsibility section content
-- correct_index = 1 (was 2; swapped B↔C)
UPDATE questions SET
  stem = 'In an unmodified audit report, what does the management responsibility section state that management is responsible for?',
  choices = '["Conducting the audit in accordance with GAAS", "The preparation and fair presentation of the financial statements", "Determining materiality levels for the audit", "Communicating deficiencies to those charged with governance"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 700, the management responsibility section explicitly states that management is responsible for the preparation and fair presentation of the financial statements in accordance with the applicable framework, as well as for internal control relevant to that preparation. (A) is wrong because conducting the audit is the auditor''s responsibility. (C) is wrong because determining materiality is an auditor responsibility.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1712;

-- ============================================================
-- ETHICS AND INDEPENDENCE (10 questions)
-- ============================================================

-- ID 3: Ethics and Independence — Familiarity threat definition
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Under the conceptual framework approach to independence, which threat arises from a close personal relationship between the auditor and client management?',
  choices = '["Self-review threat", "Advocacy threat", "Familiarity threat", "Undue influence threat"]'::jsonb,
  explanation = 'Correct (C): A familiarity threat arises when the auditor has a close or longstanding relationship with client personnel, which may cause the auditor to become too sympathetic to the client''s interests. (A) is wrong because self-review involves auditing one''s own work. (B) is wrong because advocacy involves promoting a client''s position in a way that compromises objectivity.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 3;

-- ID 91: Ethics and Independence — Self-review threat definition
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Which threat to independence arises when an auditor audits work that the auditor previously performed?',
  choices = '["Advocacy threat", "Self-interest threat", "Intimidation threat", "Self-review threat"]'::jsonb,
  explanation = 'Correct (D): A self-review threat occurs when the auditor audits their own work product or judgments. The auditor may be reluctant to identify errors in work they previously performed. (A) is wrong because advocacy involves promoting a client''s position. (B) is wrong because self-interest relates to financial or other interests that could influence judgment.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 91;

-- ID 92: Ethics and Independence — Independence requirement for attest services
-- correct_index = 0 (was 2; swapped A↔C)
UPDATE questions SET
  stem = 'Under the AICPA Code of Professional Conduct, independence is required when performing which type of service?',
  choices = '["Attest engagements", "Tax return preparation", "Management consulting", "Personal financial planning"]'::jsonb,
  explanation = 'Correct (A): Independence is required for attest engagements, which include audits, reviews, and other attestation services. Tax preparation, consulting, and financial planning are nonattest services that do not require independence, though objectivity is always required. (B) is wrong because tax preparation is a nonattest service. (C) is wrong because management consulting does not require independence.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 92;

-- ID 95: Ethics and Independence — Cooling-off period purpose
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'What is the primary purpose of the cooling-off period before a former audit partner can join an audit client?',
  choices = '["To prevent the partner from sharing confidential audit information", "To mitigate familiarity and self-interest threats to the firm''s continuing independence", "To comply with SEC insider trading rules", "To ensure the partner has time to transition audit work"]'::jsonb,
  explanation = 'Correct (B): The cooling-off period mitigates threats to the firm''s independence that arise when a former partner joins the client. The familiarity threat (existing relationships with the audit team) and self-interest threat (desire to maintain the relationship) could compromise the remaining team''s objectivity. (A) is wrong because the cooling-off period addresses independence threats, not confidentiality concerns. (C) is wrong because the requirement comes from auditor independence rules, not insider trading regulations.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 95;

-- ID 254: Ethics and Independence — Prohibited non-audit services for issuers
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under SEC rules, which non-audit service is prohibited for auditors of public companies?',
  choices = '["Tax return preparation", "Providing advice on accounting standards", "Financial information systems design and implementation", "Tax planning services"]'::jsonb,
  explanation = 'Correct (C): The SEC prohibits auditors of public companies from providing financial information systems design and implementation services to audit clients under the Sarbanes-Oxley Act. (A) is wrong because tax return preparation is generally permitted with audit committee pre-approval. (B) is wrong because providing advice on accounting standards is part of the auditor''s normal professional role.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 254;

-- ID 255: Ethics and Independence — SOX partner rotation period
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'Under the Sarbanes-Oxley Act, after how many consecutive years must the lead engagement partner rotate off a public company audit?',
  choices = '["Three years", "Seven years", "Ten years", "Five years"]'::jsonb,
  explanation = 'Correct (D): SOX requires the lead engagement partner and the concurring review partner to rotate after five consecutive years of service on the engagement, followed by a five-year cooling-off period. (A) is wrong because three years is shorter than the required rotation period. (B) is wrong because seven years applies to other significant partners, not the lead partner.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 255;

-- ID 256: Ethics and Independence — SEC cooling-off period length
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Under SEC rules, what is the minimum cooling-off period before a former lead engagement partner can serve in a financial reporting oversight role at the audit client?',
  choices = '["One year", "Six months", "Five years", "Two years"]'::jsonb,
  explanation = 'Correct (A): The SEC requires a one-year cooling-off period before a former engagement team member can serve in a financial reporting oversight role (such as CFO) at the audit client. (D) is wrong because two years exceeds the minimum requirement for the lead partner. (C) is wrong because five years is the partner rotation period, not the cooling-off period for client employment.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 256;

-- ID 258: Ethics and Independence — Non-audit services approval requirement
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under SEC rules, who must approve all non-audit services provided to a public company audit client?',
  choices = '["The engagement partner", "The PCAOB", "The audit committee", "The company''s board of directors"]'::jsonb,
  explanation = 'Correct (C): The SEC requires that all audit and permitted non-audit services provided to a public company must be pre-approved by the audit committee. There is a limited de minimis exception for non-audit services under 5% of total fees. (A) is wrong because the engagement partner does not have sole approval authority over non-audit services. (B) is wrong because the PCAOB oversees audit quality but does not pre-approve individual non-audit services.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 258;

-- ID 259: Ethics and Independence — AICPA partner rotation for non-issuers
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'Under AICPA standards, is partner rotation required for non-issuer (private company) audits?',
  choices = '["Yes, the CPA must rotate off after five years, the same as for public companies", "No, the AICPA does not mandate partner rotation for non-issuers", "Yes, the CPA must rotate off after seven years under AICPA standards", "Yes, but only if the firm has more than ten partners"]'::jsonb,
  explanation = 'Correct (B): The AICPA does not mandate partner rotation for non-issuer (private company) audits, unlike SOX requirements for public companies. However, the CPA should evaluate whether long tenure creates a familiarity threat and apply safeguards as appropriate. (A) is wrong because the five-year rotation requirement applies only to public companies under SOX. (C) is wrong because the AICPA imposes no specific rotation period for non-issuer engagements.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 259;

-- ID 260: Ethics and Independence — Self-interest threat definition
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Under the AICPA conceptual framework, which of the following best describes a self-interest threat to independence?',
  choices = '["The auditor promotes a client''s position in a legal proceeding", "The client threatens to replace the auditor if the opinion is unfavorable", "A close personal friendship exists between the auditor and the client''s controller", "The audit firm has a financial interest that could influence its judgment, such as excessive fee dependence on one client"]'::jsonb,
  explanation = 'Correct (D): A self-interest threat arises when the auditor has a financial or other interest that could inappropriately influence judgment, such as excessive fee dependence on a single client. (A) is wrong because promoting a client''s position describes an advocacy threat. (B) is wrong because the client threatening to replace the auditor describes an intimidation threat. (C) is wrong because a close friendship describes a familiarity threat.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 260;

-- ============================================================
-- SUBSTANTIVE PROCEDURES (9 questions)
-- ============================================================

-- ID 17: Substantive Procedures — Precise expectation in analytical procedures
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'Under AU-C 520, what type of data produces the most precise expectation in a substantive analytical procedure?',
  choices = '["Disaggregated data that incorporates multiple independent variables", "Aggregated prior-year totals compared to current-year totals", "Industry benchmarks published by trade associations", "Inquiry responses from management about expected trends"]'::jsonb,
  explanation = 'Correct (A): Under AU-C 520, expectations developed using disaggregated data with multiple independent variables (such as number of employees multiplied by average rate multiplied by number of periods) produce more precise estimates than top-level comparisons or ratio analysis. The more specific and independent the data, the more effective the analytical procedure. (B) is wrong because aggregated prior-year comparisons provide less precision than disaggregated calculations. (D) is wrong because inquiry alone is less reliable than data-driven expectations.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 17;

-- ID 30: Substantive Procedures — Detecting fictitious sales
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Which combination of audit procedures is most effective for detecting fictitious revenue?',
  choices = '["Recalculating the allowance for doubtful accounts and reviewing the aging schedule", "Performing analytical procedures on gross margin and comparing to prior years", "Confirming receivable balances with customers and tracing sales to shipping documents", "Inspecting credit memos issued after year-end and reviewing sales returns"]'::jsonb,
  explanation = 'Correct (C): Fictitious sales create receivables with no underlying transaction. Confirming receivables directly with customers tests whether the customer acknowledges the debt, and tracing sales to shipping documents verifies that goods were actually shipped. Together, these procedures address both the receivable and the underlying transaction. (A) is wrong because recalculating the allowance tests valuation, not existence of revenue. (B) is wrong because analytical procedures provide indirect evidence but are less targeted for detecting fictitious revenue.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 30;

-- ID 120: Substantive Procedures — Testing existence of equipment
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'What audit procedure tests the existence assertion for recorded equipment?',
  choices = '["Reviewing depreciation calculations for mathematical accuracy", "Physically inspecting equipment items listed in the fixed asset register", "Reviewing purchase orders for new equipment acquisitions", "Examining insurance policies for equipment coverage"]'::jsonb,
  explanation = 'Correct (B): Testing existence requires verifying that recorded assets actually exist. Physically inspecting equipment listed in the register confirms that the assets are present, testing from records to physical assets. (A) is wrong because depreciation calculations test the valuation assertion, not existence. (C) is wrong because purchase orders may support occurrence of the purchase but do not confirm the asset currently exists.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 120;

-- ID 121: Substantive Procedures — Purpose of cutoff testing
-- correct_index = 3 (was 1; swapped B↔D)
UPDATE questions SET
  stem = 'What is the primary objective of a cutoff test for sales near year-end?',
  choices = '["To verify that sales are recorded at the correct amounts", "To verify that all sales have been recorded", "To determine whether sales discounts were properly authorized", "To ensure that sales transactions are recorded in the correct accounting period"]'::jsonb,
  explanation = 'Correct (D): Cutoff testing ensures that transactions are recorded in the proper period. For sales, this means verifying that revenue from goods shipped before year-end is recorded in the current period, and revenue from transactions after year-end is recorded in the subsequent period. (A) is wrong because verifying amounts relates to the accuracy or valuation assertion. (B) is wrong because verifying that all sales are recorded relates to the completeness assertion.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 121;

-- ID 314: Substantive Procedures — Approaches for testing accounting estimates
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Under AU-C 540, what is one acceptable approach for testing an accounting estimate?',
  choices = '["Developing an independent estimate and comparing it to management''s recorded amount", "Accepting management''s estimate without further evaluation", "Requiring management to eliminate all estimation uncertainty", "Relying solely on the prior-year estimate as sufficient evidence"]'::jsonb,
  explanation = 'Correct (A): AU-C 540 provides three approaches for testing accounting estimates: (1) review and test management''s process, (2) develop an independent estimate using independent data and compare it to management''s amount, or (3) review subsequent events providing evidence about the estimate. (B) is wrong because accepting an estimate without evaluation fails to obtain sufficient appropriate audit evidence. (C) is wrong because estimation uncertainty is inherent in many items and cannot simply be eliminated.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 314;

-- ID 315: Substantive Procedures — Management bias in estimates
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Under AU-C 540, what is management bias in the context of accounting estimates?',
  choices = '["The risk that the auditor''s sampling method fails to detect misstatements", "The risk that the auditor selects an inappropriate audit procedure", "The tendency for management to consistently select assumptions that favor one direction of reported results", "The likelihood that an error in an estimate falls below the materiality threshold"]'::jsonb,
  explanation = 'Correct (C): Management bias occurs when management consistently selects estimates or assumptions that are favorable rather than neutral, such as always choosing the most optimistic end of a reasonable range. AU-C 540 requires the auditor to evaluate whether estimates, individually or collectively, indicate possible management bias. (A) is wrong because that describes sampling risk, not management bias. (B) is wrong because that describes nonsampling risk related to audit procedure selection.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 315;

-- ID 318: Substantive Procedures — Going concern evaluation period
-- correct_index = 1 (unchanged)
UPDATE questions SET
  stem = 'Under AU-C 570, what is the going concern evaluation period?',
  choices = '["One year from the balance sheet date", "One year from the date the financial statements are issued or available to be issued", "Two years from the balance sheet date", "Six months from the date of the auditor''s report"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 570.03, the going concern evaluation covers a reasonable period of time defined as one year from the date the financial statements are issued or available to be issued. This is an important distinction from the balance sheet date. (A) is wrong because measuring from the balance sheet date would shorten the evaluation period. (D) is wrong because six months is too short and does not match the standard''s requirement.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 318;

-- ID 320: Substantive Procedures — Cutoff assertion definition
-- correct_index = 3 (was 2; swapped C↔D)
UPDATE questions SET
  stem = 'Which financial statement assertion does cutoff testing address?',
  choices = '["Existence", "Valuation", "Completeness", "Cutoff"]'::jsonb,
  explanation = 'Correct (D): Cutoff testing verifies that transactions are recorded in the correct accounting period. By examining transactions near the period end, the auditor determines whether revenue or expenses were recognized in the period when the underlying event occurred. (A) is wrong because existence testing verifies that recorded items actually exist. (B) is wrong because valuation testing verifies that items are recorded at appropriate amounts.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 320;

-- ID 321: Substantive Procedures — Testing completeness of accounts payable
-- correct_index = 0 (was 1; swapped A↔B)
UPDATE questions SET
  stem = 'What is the most effective procedure for testing the completeness of accounts payable?',
  choices = '["Examining cash disbursements made after year-end and tracing to recorded liabilities at year-end", "Selecting items from the accounts payable listing and vouching to vendor invoices", "Confirming the largest accounts payable balances with vendors", "Recalculating the accounts payable subsidiary ledger"]'::jsonb,
  explanation = 'Correct (A): Testing for completeness requires starting outside the recorded amounts. Examining subsequent cash disbursements identifies payments made after year-end that represent liabilities existing at the balance sheet date. If these were not recorded as payables, a completeness misstatement exists. (B) is wrong because vouching from the listing tests existence and accuracy, not completeness. (C) is wrong because confirming existing balances tests accuracy of recorded amounts, not whether all liabilities were recorded.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 321;

-- ============================================================
-- PROFESSIONAL RESPONSIBILITIES (9 questions)
-- ============================================================

-- ID 140: Professional Responsibilities — Confidentiality violation
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Under the AICPA Code of Professional Conduct, which act constitutes a violation of confidentiality?',
  choices = '["Disclosing client information in response to a valid subpoena", "Sharing client financial data during a peer review", "Revealing client information to a friend at a social gathering without the client''s consent", "Providing client information to the client''s authorized representative"]'::jsonb,
  explanation = 'Correct (C): Disclosing confidential client information without consent and without a valid legal or professional reason is a violation of confidentiality. Social disclosure without client consent violates the rule regardless of circumstances. (A) is wrong because responses to valid subpoenas are a permitted exception to the confidentiality requirement. (B) is wrong because peer reviews are an authorized professional process that permits access to client information.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 140;

-- ID 142: Professional Responsibilities — Threat from providing tax and audit services
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under the AICPA conceptual framework, what threat is created when a CPA provides both tax and audit services to the same client?',
  choices = '["Advocacy threat", "Undue influence threat", "No threat, since tax services are always permitted for audit clients", "Self-review threat"]'::jsonb,
  explanation = 'Correct (D): Providing tax services to an audit client may create a self-review threat if the tax work product is reflected in the financial statements being audited (such as the tax provision). The CPA must evaluate the threat and ensure safeguards reduce it to an acceptable level. (A) is wrong because advocacy involves promoting a client''s position publicly. (C) is wrong because while tax services may be permitted, they still create a threat that must be evaluated.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 142;

-- ID 143: Professional Responsibilities — Peer review program purpose
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'What is the primary purpose of the AICPA peer review program?',
  choices = '["To assess individual CPA performance on the CPA exam", "To determine whether CPA firms are complying with applicable professional standards in their accounting and auditing practices", "To establish tax filing requirements for CPA firms", "To discipline individual CPAs for ethical violations"]'::jsonb,
  explanation = 'Correct (B): The AICPA peer review program evaluates whether a CPA firm''s system of quality control is designed and operating in compliance with applicable professional standards. Peer reviews are firm-level evaluations covering audit, attest, and accounting engagements. (A) is wrong because peer review examines firm-level quality control, not individual CPA exam performance. (D) is wrong because disciplinary action is handled by the AICPA Professional Ethics Division or state boards, not the peer review program.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 143;

-- ID 144: Professional Responsibilities — CPA duty upon discovering a tax error
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'What is a CPA''s professional responsibility upon discovering an error in a previously filed tax return?',
  choices = '["Promptly advise the client of the error and recommend corrective measures", "File an amended return on behalf of the client without consent", "Take no action since the prior-year return has already been filed", "Report the error to the IRS directly"]'::jsonb,
  explanation = 'Correct (A): When a CPA becomes aware of an error in a previously filed return, the CPA must promptly notify the client and recommend corrective action, such as filing an amended return. (B) is wrong because the CPA cannot amend a return without the client''s consent. (D) is wrong because the CPA generally has no obligation to report directly to the IRS and doing so would violate confidentiality without proper authorization.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 144;

-- ID 1346: Professional Responsibilities — Due care principle definition
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under the AICPA Code of Professional Conduct, what does the principle of due care require?',
  choices = '["Reporting every immaterial error found during the engagement to the audit committee", "Accepting only engagements in industries where the CPA has at least five years of experience", "Observing the profession''s technical and ethical standards and striving for competence", "Reporting all client errors to regulatory authorities"]'::jsonb,
  explanation = 'Correct (C): Due care requires CPAs to observe the profession''s technical and ethical standards, continuously improve competence and quality of services, and discharge professional responsibilities to the best of their ability. (A) is wrong because due care does not require reporting every immaterial error to the audit committee. (B) is wrong because due care does not impose arbitrary experience thresholds for accepting engagements.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1346;

-- ID 1347: Professional Responsibilities — Competence for unfamiliar engagements
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'Under the AICPA Code, what should a CPA do when asked to perform an engagement in an unfamiliar area?',
  choices = '["Decline the engagement because the CPA has no relevant experience", "Accept the engagement and rely entirely on the client''s representations", "Accept the engagement and hire a specialist without disclosing this to the client", "Accept the engagement and obtain competence through research, study, or consultation before completing the work"]'::jsonb,
  explanation = 'Correct (D): The AICPA Code does not prohibit CPAs from accepting engagements in new areas, provided they take steps to obtain the necessary competence before performing the work. This may include self-study, courses, or consulting with experts. (A) is wrong because declining automatically is overly restrictive when competence can be obtained. (C) is wrong because secretly outsourcing work without disclosure would violate professional standards.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1347;

-- ID 1348: Professional Responsibilities — Subpoena and confidentiality
-- correct_index = 0 (was 3; swapped A↔D)
UPDATE questions SET
  stem = 'Under the AICPA Code, what should a CPA do when served with a valid subpoena for client records?',
  choices = '["Consult with legal counsel and comply with the subpoena as required by law", "Contact the client and demand payment before testifying", "Destroy the records to protect the client", "Refuse to testify under any circumstances to protect confidentiality"]'::jsonb,
  explanation = 'Correct (A): While the AICPA Code requires confidentiality, a valid subpoena or court order is a legally enforceable exception that supersedes the confidentiality requirement. The CPA should consult with legal counsel and comply. (D) is wrong because refusing to comply with a valid court order could expose the CPA to contempt charges. (C) is wrong because destroying records in response to a subpoena could constitute obstruction of justice.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1348;

-- ID 1349: Professional Responsibilities — Required disclosure without consent
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Which situation requires a CPA to disclose confidential client information without the client''s consent?',
  choices = '["A competitor asks for the client''s financial data", "A peer review team requests access to the CPA''s engagement files", "The client''s bank requests financial information for a loan application", "A journalist investigating the client requests financial records"]'::jsonb,
  explanation = 'Correct (B): Peer review is a required quality control process under the AICPA, and providing access to engagement files for peer review is an exception to the confidentiality rule. CPAs are required to cooperate with peer reviewers. (A) is wrong because requests from competitors do not override the confidentiality obligation. (C) is wrong because bank requests require the client''s authorization before disclosure.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1349;

-- ID 1350: Professional Responsibilities — Predecessor auditor communication purpose
-- correct_index = 2 (was 3; swapped C↔D)
UPDATE questions SET
  stem = 'Under AU-C 210, what is the primary reason a successor auditor communicates with the predecessor auditor before accepting an engagement?',
  choices = '["To determine the audit fee charged by the predecessor", "To obtain the predecessor''s audit workpapers to reduce planning time", "To obtain information about management integrity and any disagreements about accounting matters", "To determine whether the predecessor was fired or resigned voluntarily"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 210, the successor auditor communicates with the predecessor to obtain information about management''s integrity, disagreements about accounting principles or audit procedures, and reasons for the change in auditors. This helps assess engagement risk. (A) is wrong because determining the predecessor''s fee is not the purpose of the required communication. (D) is wrong because while the reason for the change may be discussed, the primary purpose is to assess management integrity and identify potential issues.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1350;

-- ============================================================
-- AUDIT EVIDENCE (6 questions)
-- ============================================================

-- ID 14: Audit Evidence — Alternative procedures for confirmation nonresponses
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Under AU-C 505, what must the auditor do when positive confirmation requests are not returned?',
  choices = '["Accept the returned confirmations as sufficient evidence for the entire balance", "Issue a qualified opinion due to scope limitation", "Perform alternative procedures on the nonresponses, such as examining subsequent cash receipts", "Assume the nonresponding customers agree with the recorded balances"]'::jsonb,
  explanation = 'Correct (C): Under AU-C 505, when positive confirmations are not returned, the auditor must perform alternative procedures on the nonresponses, such as inspecting subsequent cash receipts, examining shipping documents, or reviewing sales contracts. (D) is wrong because the assumption of agreement applies only to negative confirmations, not positive confirmations. (A) is wrong because the returned confirmations provide evidence only for those specific accounts, not the entire balance.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 14;

-- ID 29: Audit Evidence — Testing completeness of accounts payable
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Which procedure is most effective for testing the completeness assertion for accounts payable?',
  choices = '["Confirming balances with vendors who have large outstanding balances", "Vouching recorded payable balances to vendor invoices", "Reviewing the accounts payable aging schedule for past-due amounts", "Tracing receiving reports issued before year-end to the accounts payable listing"]'::jsonb,
  explanation = 'Correct (D): Testing completeness requires searching for items that should be recorded but may not be. Tracing from receiving reports (evidence that goods were received) to the payable listing determines whether the corresponding liability was recorded. (A) is wrong because confirming existing balances tests accuracy, not completeness. (C) is wrong because the aging schedule only analyzes balances already recorded and cannot identify unrecorded items.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 29;

-- ID 112: Audit Evidence — Valuation testing for inventory
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Which procedure is most appropriate for testing the valuation assertion for inventory?',
  choices = '["Comparing inventory costs to current market prices and assessing lower of cost or net realizable value", "Observing the physical inventory count", "Sending confirmations to suppliers", "Tracing inventory purchases to the general ledger"]'::jsonb,
  explanation = 'Correct (A): Valuation testing for inventory focuses on whether inventory is properly valued at the lower of cost or net realizable value. Comparing recorded costs to current market prices directly tests this assertion. (B) is wrong because physical observation tests existence, not valuation. (C) is wrong because confirmations to suppliers test accounts payable, not inventory valuation.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 112;

-- ID 114: Audit Evidence — Management representation letter purpose
-- correct_index = 1 (was 3; swapped B↔D)
UPDATE questions SET
  stem = 'Under AU-C 580, what is the purpose of a management representation letter?',
  choices = '["To replace the need for other audit evidence", "To confirm management''s responsibility for the financial statements and document specific representations made during the audit", "To serve as the primary basis for the audit opinion", "To guarantee the accuracy of the financial statements"]'::jsonb,
  explanation = 'Correct (B): Under AU-C 580.06, the management representation letter confirms management''s responsibility for the financial statements and formalizes oral representations made during the audit. It complements other audit evidence. (A) is wrong because the letter supplements other evidence rather than replacing it. (D) is wrong because management cannot guarantee accuracy — the letter acknowledges responsibility, not perfection.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 114;

-- ID 115: Audit Evidence — Recalculation procedure definition
-- correct_index = 2 (unchanged)
UPDATE questions SET
  stem = 'Which type of audit procedure involves the auditor independently verifying mathematical accuracy?',
  choices = '["Inspection", "Observation", "Recalculation", "Inquiry"]'::jsonb,
  explanation = 'Correct (C): Recalculation involves the auditor independently verifying mathematical accuracy by reperforming calculations, such as checking depreciation computations or footing a trial balance. (A) is wrong because inspection involves examining records or documents. (B) is wrong because observation involves watching a process being performed by others.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 115;

-- ID 294: Audit Evidence — Benford''s Law purpose
-- correct_index = 3 (unchanged)
UPDATE questions SET
  stem = 'What does Benford''s Law analysis evaluate in the context of auditing?',
  choices = '["Whether account balances agree with the general ledger", "Whether account balances are confirmed by third parties", "Whether all transactions have been properly authorized", "Whether the distribution of leading digits in financial data follows the expected mathematical pattern"]'::jsonb,
  explanation = 'Correct (D): Benford''s Law predicts the expected frequency distribution of leading digits in naturally occurring numerical data. Significant deviations from this expected pattern may indicate manipulation, errors, or fabricated data warranting further investigation. (A) is wrong because reconciling to the general ledger is a standard substantive procedure, not a Benford''s Law application. (B) is wrong because confirming balances with third parties is a confirmation procedure under AU-C 505.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 294;

COMMIT;
