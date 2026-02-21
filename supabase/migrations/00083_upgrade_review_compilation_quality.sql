-- Migration: Upgrade 7 Review and Compilation + 4 Quality Management questions
-- Fixes: short-stem, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- === Review and Compilation (7 questions) ===

-- Q338 [score:6] short-stem → expand with scenario + cite AR-C 70/80
UPDATE questions SET
  stem = 'A small business client asks her CPA at Whitfield & Associates to explain the difference between a preparation engagement and a compilation. Both involve presenting financial data without verification, but the CPA explains they differ in one critical way. Under SSARS, a preparation engagement under AR-C 70 differs from a compilation under AR-C 80 in that:',
  explanation = 'Under AR-C 70, the key distinction is that a preparation engagement does not result in a report — instead, each page of the financial statements must include a legend stating "No assurance is provided on these financial statements." A compilation under AR-C 80, by contrast, requires a written compilation report. Choice A is incorrect because neither a preparation nor a compilation engagement requires the accountant to be independent (though a lack of independence must be disclosed in a compilation). Choice C is incorrect because neither engagement provides assurance.'
WHERE id = 338;

-- Q342 [score:6] short-stem → expand with scenario + cite AR-C 80
UPDATE questions SET
  stem = 'The staff accountant at Calloway & Partners has completed a compilation of financial statements for Pinecrest Landscaping and is drafting the compilation report. The engagement partner reviews the report to ensure it includes the required language distinguishing it from higher-level services. Under AR-C 80, a compilation report states that the accountant:',
  explanation = 'Under AR-C 80.21, the compilation report explicitly states that the accountant has not audited or reviewed the financial statements and accordingly does not express an opinion or conclusion on them. This language clearly communicates the limited nature of the accountant''s involvement. Choice A is incorrect because reasonable assurance is audit-level language, not compilation language. Choice C is incorrect because limited assurance is provided in a review engagement, not a compilation.'
WHERE id = 342;

-- Q1752 [score:6] short-stem → expand with scenario + cite AR-C 90
UPDATE questions SET
  stem = 'The controller of Ridgemont Auto Parts asks the CPA at Mercer & Associates what level of confidence a review engagement provides compared to a full audit. The CPA explains that reviews use inquiry and analytical procedures rather than the detailed testing performed in audits. Under AR-C 90, in a review engagement under SSARS, the accountant obtains:',
  explanation = 'Under AR-C 90, a review engagement provides limited (also called negative) assurance. The accountant states that nothing came to their attention causing them to believe the financial statements are not in accordance with the applicable framework. This is less than the reasonable (positive) assurance provided by an audit but more than the no assurance provided by a compilation. Choice A is incorrect because reasonable assurance requires the extensive substantive testing and evidence gathering of a full audit.'
WHERE id = 1752;

-- Q1763 [score:6] short-stem → expand with scenario + cite AR-C 90
UPDATE questions SET
  stem = 'The engagement partner at Prescott & Associates has completed a review of Thornfield Plumbing''s December 31, 2025 financial statements and is drafting the standard review report. The partner ensures the report includes the signature limited assurance conclusion required by professional standards. Under AR-C 90, an accountant''s standard review report on financial statements of a nonissuer includes which of the following statements?',
  explanation = 'Under AR-C 90, the standard review report includes the limited assurance conclusion: the accountant is not aware of any material modifications that should be made to the financial statements for them to be in accordance with the applicable financial reporting framework. This negative assurance language is the hallmark of a review engagement. Choice A is incorrect because "We have audited" is audit report language, not review language. Choice C is incorrect because no engagement provides a guarantee of freedom from material misstatement.'
WHERE id = 1763;

-- Q1765 [score:6] short-stem → expand with scenario + cite AR-C 80
UPDATE questions SET
  stem = 'Before beginning the compilation of Lakeside Bakery''s financial statements, the engagement partner at Glenview & Associates drafts an engagement letter documenting the terms and scope of the compilation. Under AR-C 80, which of the following is a required element of the compilation engagement letter?',
  explanation = 'Under AR-C 80.10, the compilation engagement letter must include the objective and scope of the compilation, a statement that the engagement is not an audit or review and that no assurance will be provided, the responsibilities of management and the accountant, and limitations of the engagement. Choice A is incorrect because no engagement provides a guarantee of accuracy — and compilations explicitly provide no assurance. Choice C is incorrect because analytical procedures are a review engagement requirement, not a compilation requirement.'
WHERE id = 1765;

-- Q1769 [score:6] short-stem → expand with scenario + cite AR-C 80
UPDATE questions SET
  stem = 'The staff accountant at Birchwood & Associates has completed the compilation report for Cascade Plumbing LLC and asks the engagement partner who should be listed as the addressee. Under AR-C 80, a compilation report is addressed to:',
  explanation = 'Under AR-C 80.20, a compilation report is typically addressed to management, the board of directors, or those charged with governance of the entity. It is not addressed to regulatory bodies, creditors, or professional organizations unless the engagement terms specify otherwise. Choice A is incorrect because the SEC is a regulatory body — compilation reports for nonissuers are not filed with the SEC. Choice D is incorrect because the AICPA is a professional organization, not the intended recipient of compilation reports.'
WHERE id = 1769;

-- Q1772 [score:6] short-stem → expand with scenario + cite AR-C 70
UPDATE questions SET
  stem = 'The engagement partner at Waverly & Associates performs a preparation engagement for Ashford Auto Repair under AR-C 70. Since no compilation or review report is issued, the partner must ensure that each page of the financial statements includes specific required language. Under AR-C 70, a preparation engagement requires each page of the financial statements to include:',
  explanation = 'Under AR-C 70.07, when no report is issued for a preparation engagement, each page of the financial statements must include a legend such as "no assurance is provided on these financial statements." This alerts users that the statements have not been subjected to audit, review, or compilation procedures. Choice A is incorrect because a preparation engagement does not include a separate report — that distinguishes it from a compilation. Choice D is incorrect because the legend does not certify GAAP compliance — it communicates the absence of assurance.'
WHERE id = 1772;

-- === Quality Management (4 questions) ===

-- Q360 [score:6] short-stem → expand with scenario + cite SQMS 2
UPDATE questions SET
  stem = 'The managing partner at Calloway & Partners assigns a senior partner who was not involved in the audit of Thornfield Industries to perform the engagement quality review. A staff auditor asks why the reviewer cannot be someone from the engagement team. Under SQMS No. 2, the engagement quality reviewer must be:',
  explanation = 'Under SQMS No. 2, the engagement quality reviewer must be a partner or other qualified person who is not a member of the engagement team, ensuring objectivity and independence in evaluating the team''s significant judgments and conclusions. This independence requirement prevents self-review bias. Choice A is incorrect because having an engagement team member review their own work would compromise objectivity. Choice C is incorrect because while external consultants could serve this role, they are not required — a qualified firm partner outside the engagement team is sufficient.'
WHERE id = 360;

-- Q362 [score:6] short-stem → expand with scenario
UPDATE questions SET
  stem = 'The quality control partner at Mercer & Associates is establishing the firm''s document retention policy. The partner asks what minimum period audit workpapers must be retained after the report is released. Under professional standards, the minimum documentation retention period for audit engagements is:',
  explanation = 'Audit documentation must be retained for a minimum of five years from the report release date. Some jurisdictions, regulatory requirements, or firm policies may require longer retention. During this period, the working papers must be accessible for peer review, litigation, regulatory inquiry, or PCAOB inspection. Choice B is incorrect because three years is too short — five years is the minimum. Choice C is incorrect because measuring from the balance sheet date rather than the report release date would alter the required retention period.'
WHERE id = 362;

-- Q363 [score:6] short-stem → expand with scenario
UPDATE questions SET
  stem = 'Ashford & Associates audits 150 SEC-registered issuers. The firm''s managing partner asks the quality control partner how frequently the PCAOB will inspect the firm''s engagements and quality control system. Under PCAOB rules, inspections of firms auditing more than 100 issuers occur:',
  explanation = 'The PCAOB inspects firms auditing more than 100 issuers on an annual basis. Firms auditing 100 or fewer issuers are inspected at least every three years (triennially). Inspections evaluate both the firm''s quality control system and selected individual audit engagements. Choice A is incorrect because the three-year cycle applies only to smaller firms (100 or fewer issuers). Choice D is incorrect because inspections follow a mandatory schedule — they are not triggered only by reported deficiencies.'
WHERE id = 363;

-- Q367 [score:6] short-stem → expand with scenario
UPDATE questions SET
  stem = 'The quality control partner at Prescott & Associates receives the firm''s peer review results. The reviewer assigns one of three possible ratings based on the firm''s system of quality control. Under AICPA peer review standards, the three possible peer review ratings are:',
  explanation = 'Under AICPA peer review standards, the three possible ratings are: pass (the system is effective), pass with deficiencies (generally effective but with identified deficiencies requiring corrective action), or fail (the system is not suitably designed or not operating effectively). Choice A is incorrect because "satisfactory/needs improvement/unsatisfactory" is not the terminology used by the AICPA peer review program. Choice C is incorrect because "clean/modified/adverse" describes audit opinion types, not peer review ratings.'
WHERE id = 367;
