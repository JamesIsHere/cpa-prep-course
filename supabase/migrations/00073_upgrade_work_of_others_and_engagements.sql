-- Migration: Upgrade 3 Using the Work of Others + 4 Nature and Scope of Engagements
-- Fixes: short-stem, absolute-assurance, length-cuing, missing citations
-- Target: all questions score 7+ after this migration

-- === Using the Work of Others (3 questions) ===

-- Q5051 [score:6] short-stem(11w) → expand with scenario + cite AU-C 500
UPDATE questions SET
  stem = 'Thornfield Pharmaceuticals uses an independent actuary to calculate its $14 million pension obligation reported in the December 31, 2025 financial statements. The engagement team at Calloway & Partners must determine how to evaluate the actuary''s work product. Under AU-C 500, when using the work of a management''s specialist, the auditor should:',
  explanation = 'Under AU-C 500.08, when management uses a specialist, the auditor should evaluate the specialist''s competence, capabilities, and objectivity. The auditor should also assess whether the specialist''s work is adequate for audit purposes, including evaluating the relevance and reasonableness of assumptions, methods, and findings. Choice A is incorrect because the auditor cannot accept specialist findings without evaluation — professional skepticism requires independent assessment. Choice C is incorrect because the specialist can be external to both the audit firm and the entity.'
WHERE id = 5051;

-- Q5061 [score:6] short-stem(11w) → expand with scenario + cite AU-C 500
UPDATE questions SET
  stem = 'The engagement team at Mercer & Associates is auditing Ridgemont Construction, which uses a third-party environmental engineer to estimate remediation liabilities. Before relying on the engineer''s report, the engagement senior must assess the engineer''s qualifications. Under AU-C 500, when evaluating the competence of management''s specialist, the auditor should consider:',
  explanation = 'Under AU-C 500.08, evaluating the competence of management''s specialist involves considering the specialist''s professional certification or licensing, relevant experience and reputation in the field, the nature and scope of the specialist''s work, and whether the methods and assumptions are appropriate. Choice B is incorrect because academic credentials alone do not establish competence — practical experience, professional standing, and methodological rigor are equally important. Choice C is incorrect because willingness to modify findings at management''s request would actually be an objectivity concern, not a competence indicator.'
WHERE id = 5061;

-- Q5067 [score:6] short-stem(11w) → expand with scenario + cite AU-C 500/620
UPDATE questions SET
  stem = 'Ashford Electronics engages an appraisal firm to determine the fair value of its patent portfolio for financial reporting purposes. The engagement team at Whitfield & Associates discovers that the lead appraiser''s spouse is a senior executive at Ashford. The engagement partner must evaluate whether this relationship affects the appraiser''s work. Under AU-C 500, the objectivity of an auditor''s specialist should be evaluated by considering:',
  explanation = 'Under AU-C 500.08 and AU-C 620.09, the auditor should consider whether the specialist has any relationship with the entity — financial interests, business relationships, or employment relationships — that could compromise objectivity. In this scenario, the spousal relationship creates a significant objectivity concern. Choice A is incorrect because the specialist''s fee arrangement with the audit firm relates to the auditor''s own specialist, not management''s specialist. Choice C is incorrect because political affiliations are generally irrelevant to professional objectivity in a financial reporting context.'
WHERE id = 5067;

-- === Nature and Scope of Engagements (4 questions) ===

-- Q4913 [score:6] absolute-assurance → replace distractors, cite AU-C 200
UPDATE questions SET
  stem = 'A staff auditor at Glenview & Associates is preparing for the CPA exam and asks the engagement partner what level of assurance an audit provides. The partner explains that auditing standards use a specific term to describe the confidence level an audit is designed to achieve. Under AU-C 200, reasonable assurance means:',
  choices = '["A high but not absolute level of assurance that the financial statements are free from material misstatement","A moderate level of assurance, equivalent to the assurance provided by a review engagement","The maximum level of assurance obtainable, eliminating all risk of undetected material misstatement","A low level of assurance based primarily on inquiry and analytical procedures without detailed testing"]',
  explanation = 'Under AU-C 200.05, reasonable assurance is a high, but not absolute, level of assurance. It is obtained when the auditor has obtained sufficient appropriate audit evidence to reduce audit risk to an acceptably low level. Inherent limitations of an audit — including sampling, the nature of internal controls, and the fact that most audit evidence is persuasive rather than conclusive — prevent absolute assurance. Choice B incorrectly describes a review engagement, which provides limited (not reasonable) assurance. Choice D describes a level of assurance below what an audit provides.'
WHERE id = 4913;

-- Q4919 [score:6] short-stem(11w) → expand with scenario + cite AU-C 315
UPDATE questions SET
  stem = 'During the audit of Lakeside Distributors, the engagement team at Prescott & Associates discovers that the client holds $2.3 million of inventory on consignment from a supplier. The inventory is physically in Lakeside''s warehouse but title remains with the supplier. The engagement senior identifies this as relevant to a specific financial statement assertion. Under AU-C 315, the rights and obligations assertion primarily addresses:',
  explanation = 'Under AU-C 315, the rights and obligations assertion addresses whether the entity holds or controls the rights to assets and whether liabilities are the obligations of the entity at a given date. The consignment inventory in this scenario fails this assertion if recorded as Lakeside''s own asset, since title remains with the supplier. Choice B describes the cutoff assertion, not rights and obligations. Choice D describes the existence assertion, which addresses whether assets and liabilities are real, not whether they belong to the entity.'
WHERE id = 4919;

-- Q4920 [score:6] short-stem(10w) → expand with scenario
UPDATE questions SET
  stem = 'A small business owner asks her CPA at Mercer & Associates to explain the difference in assurance levels between an audit, a review, and a compilation. She wants to know which service provides the strongest assurance about her financial statements. Under professional standards, which type of engagement provides the highest level of assurance?',
  explanation = 'An audit provides reasonable assurance, which is the highest level of assurance in the attestation framework. A review provides limited (moderate) assurance through inquiry and analytical procedures. A compilation provides no assurance — the CPA merely assists in presenting financial data. Agreed-upon procedures result in findings but provide no opinion or assurance. Choice A is incorrect because a compilation explicitly provides no assurance. Choice D is incorrect because agreed-upon procedures produce factual findings, not an assurance conclusion.'
WHERE id = 4920;

-- Q4921 [score:6] short-stem(9w) → expand with scenario + cite AU-C 315
UPDATE questions SET
  stem = 'The engagement team at Calloway & Partners is auditing Ridgemont Manufacturing''s December 31, 2025 financial statements. During revenue testing, the team discovers that three large shipments made on January 2, 2026 were recorded as December 2025 revenue. The engagement senior identifies this as a violation of a specific assertion. Under AU-C 315, the cutoff assertion for classes of transactions addresses whether:',
  explanation = 'Under AU-C 315, the cutoff assertion addresses whether transactions and events have been recorded in the correct accounting period. In this scenario, recording January 2026 shipments as December 2025 revenue violates cutoff because the transactions occurred after the reporting period. Choice A describes the occurrence assertion (whether transactions actually happened). Choice B describes the completeness assertion (whether all transactions were recorded). Choice D describes the classification assertion.'
WHERE id = 4921;
