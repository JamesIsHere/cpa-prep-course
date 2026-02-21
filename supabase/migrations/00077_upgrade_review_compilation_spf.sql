-- Migration: Upgrade 3 Review/Compilation + 6 Special Purpose Frameworks questions
-- Fixes: short-stem, short-expl, absolute-assurance, all-of-above, length-cuing
-- Target: all questions score 7+ after this migration

-- === Review/Compilation Engagements (3 questions) ===

-- Q22 [score:4] absolute-assurance distractor → replace, expand stem + cite AR-C/SSARS
UPDATE questions SET
  stem = 'A small business owner asks her CPA at Whitfield & Associates whether a review of her December 31, 2025 financial statements provides the same level of confidence as an audit. The CPA explains that reviews and audits differ significantly in the assurance provided. Under AR-C 90, in a review engagement, the practitioner provides which level of assurance?',
  choices = '["Reasonable assurance — the same high level of confidence as a full audit engagement","Limited assurance — a moderate level based on inquiry and analytical procedures","No assurance — the same level as a compilation engagement with no verification","Conditional assurance — dependent on whether management cooperates fully with the practitioner"]',
  explanation = 'Under AR-C 90, a review engagement provides limited (also called negative) assurance, where the practitioner states that nothing came to their attention that causes them to believe the financial statements are not in accordance with the applicable framework. This contrasts with reasonable (positive) assurance provided in an audit and no assurance in a compilation. Choice A is incorrect because reasonable assurance requires the extensive testing performed in an audit, not the limited inquiry and analytical procedures of a review.'
WHERE id = 22;

-- Q24 [score:4] all-none-above → rewrite entirely with proper choices
UPDATE questions SET
  stem = 'The engagement partner at Calloway & Partners is explaining to a new staff accountant what distinguishes a review from a compilation. The partner notes that review engagements require several procedures that go beyond what a compilation involves. Under AR-C 90, which of the following procedures is required in a review engagement but NOT in a compilation engagement?',
  choices = '["Reading the financial statements for obvious mathematical or clerical errors","Performing inquiry and analytical procedures to identify unusual items or relationships","Obtaining a management representation letter addressing the completeness of information provided","Obtaining a management representation letter and performing analytical procedures — both are required in reviews but not compilations"]',
  correct_index = 3,
  explanation = 'Under AR-C 90, a review engagement requires inquiry and analytical procedures, reading the financial statements, and obtaining a signed management representation letter — none of which are required in a compilation under AR-C 80. A compilation requires only understanding the client''s business and reading the statements for obvious errors. Choice A is partially correct but incomplete — reading for errors is common in both engagement types. Choice B and C each describe only one required review procedure rather than the full set that distinguishes reviews from compilations.'
WHERE id = 24;

-- Q129 [score:5] short-stem(10w) → expand with scenario + cite AR-C 80
UPDATE questions SET
  stem = 'A staff accountant at Mercer & Associates has completed a compilation of financial statements for Lakeside Landscaping LLC and is drafting the compilation report. The engagement partner reminds the staff accountant of the required language that must appear in every compilation report. Under AR-C 80, a compilation report must include which of the following statements?',
  explanation = 'Under AR-C 80.21, the standard compilation report must state that the accountant did not audit or review the financial statements and therefore does not express an opinion or provide any assurance on them. This language is critical because it clearly communicates the limited nature of the accountant''s involvement. Choice A is incorrect because "reasonable assurance" is audit language — a compilation provides no assurance. Choice C is incorrect because "fairly presented in all material respects" is the language of an audit opinion, not a compilation report.'
WHERE id = 129;

-- === Special Purpose Frameworks (6 questions) ===

-- Q1117 [score:4] short-stem(10w) + short-expl(20w) → expand both
UPDATE questions SET
  stem = 'A sole proprietor asks her CPA at Prescott & Associates to prepare financial statements on the cash basis because she finds accrual accounting unnecessarily complex for her small consulting business. The CPA explains how revenue recognition differs under this framework. Under the cash basis of accounting, when is revenue recognized?',
  explanation = 'Under the cash basis of accounting, revenue is recognized when cash is received, regardless of when services are performed or goods are delivered. This contrasts with accrual accounting under ASC 606, where revenue is recognized when performance obligations are satisfied. Choice A is incorrect because "performance obligation satisfied" is the accrual-basis criterion under ASC 606, not the cash basis. Choice C is incorrect because sending an invoice creates an accounts receivable under accrual accounting but has no recognition effect under the cash basis.'
WHERE id = 1117;

-- Q1118 [score:4] short-stem(9w) + short-expl(28w) → expand both
UPDATE questions SET
  stem = 'The engagement partner at Glenview & Associates is reviewing financial statements prepared for Thornfield Plumbing on the tax basis. The staff accountant titled the balance sheet "Balance Sheet" and the income statement "Income Statement" — the same titles used for GAAP statements. The partner flags this as an error. Financial statements prepared under a special purpose framework must:',
  explanation = 'Under AU-C 800.A14, special purpose framework financial statements must use titles that distinguish them from GAAP financial statements to alert users that the statements are prepared on a different basis. For example, a tax-basis balance sheet should be titled "Statement of Assets and Liabilities — Tax Basis" rather than "Balance Sheet." Choice A is incorrect because using identical GAAP titles would mislead users into thinking the statements conform with GAAP. Choice C is incorrect because SPF financial statements should include informative disclosures describing the basis of accounting and significant accounting policies.'
WHERE id = 1118;

-- Q1119 [score:6] short-stem(11w) → expand with scenario
UPDATE questions SET
  stem = 'Ridgemont Construction prepares its financial statements on the modified cash basis. The controller records depreciation on equipment and capitalizes long-term assets but does not accrue accounts receivable, accounts payable, or prepaid expenses. The company''s CPA reviews the modifications for acceptability. Under the modified cash basis, which modification is acceptable?',
  explanation = 'Recording depreciation is an acceptable modification under the modified cash basis because it relates to a long-term item with substantial support in accounting literature. Accruing operating items like receivables (Choice A), payables (Choice C), and prepaids (Choice D) would make the modified cash basis indistinguishable from full accrual GAAP, which defeats the purpose of a special purpose framework. The general rule is that acceptable modifications involve long-term, non-operating adjustments rather than routine accruals.'
WHERE id = 1119;

-- Q1121 [score:5] short-expl(27w) → expand explanation with citation
UPDATE questions SET
  stem = 'A CPA at Calloway & Partners is compiling financial statements for Ashford Auto Repair on the income tax basis. The CPA drafts the compilation report and asks the engagement partner what specific language must be included regarding the framework. Under AR-C 80, a CPA compiling financial statements prepared on the tax basis must include in the report:',
  explanation = 'Under AR-C 80.21 and AU-C 800, a compilation report on SPF financial statements must identify the applicable special purpose framework, state that it is a basis of accounting other than GAAP, and reference the note in the financial statements that describes the basis of accounting used. This ensures users understand the statements are not prepared under GAAP. Choice A is incorrect because a compilation provides no opinion at all, let alone an opinion on GAAP conformity. Choice B is incorrect because a compilation report addresses the financial statements, not the tax return.'
WHERE id = 1121;

-- Q1123 [score:6] short-expl(23w) → expand explanation with citation
UPDATE questions SET
  stem = 'The state insurance department requires all licensed insurers to file financial statements prepared using the regulatory basis prescribed by the department. Thornfield Mutual Insurance engages Mercer & Associates to audit these statements, which will be filed only with the department and not distributed publicly. Under AU-C 800, an auditor reporting on regulatory basis financial statements intended only for filing with the regulatory agency should include:',
  explanation = 'Under AU-C 800.18-.21, for special-purpose regulatory basis statements intended only for specific users, the auditor includes an emphasis-of-matter paragraph identifying the applicable SPF and referring to the note describing the basis, plus an other-matter paragraph restricting the distribution and use of the report to the regulatory agency. Choice B is incorrect because an adverse opinion would only be appropriate if the regulatory statements were intended for general use and materially departed from GAAP. Choice D is incorrect because a qualified opinion is not warranted when the statements comply with the applicable regulatory framework.'
WHERE id = 1123;

-- Q1125 [score:6] short-expl(29w) → expand explanation with citation
UPDATE questions SET
  stem = 'Ashford Manufacturing''s primary lender requires annual financial statements prepared in accordance with the financial reporting provisions specified in the loan agreement. The statements must report certain assets at appraised value and exclude intangible assets — departures from GAAP that comply with the contractual terms. Under AU-C 800, which special purpose framework applies to financial statements prepared in accordance with a loan agreement?',
  explanation = 'Under AU-C 800.04, financial statements prepared per the financial reporting provisions in a contract, agreement, or regulatory requirement are classified as the contractual basis — one of four recognized special purpose frameworks (cash, tax, regulatory, and contractual). Choice A is incorrect because regulatory basis involves compliance with a governmental regulatory agency''s requirements, not a private loan agreement. Choice B is incorrect because tax basis follows IRC provisions, and Choice C is incorrect because modified cash basis is a variant of cash-basis reporting — neither relates to contractual reporting provisions.'
WHERE id = 1125;
