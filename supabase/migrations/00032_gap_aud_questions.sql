-- =============================================================================
-- Migration: Gap Coverage — AUD Questions
-- Section: AUD — Auditing and Attestation (section_id = 1)
-- New questions: 300 (15 topics × 20)
-- Purpose: Fill 15 blueprint groups that had empty questionTopics
-- =============================================================================

-- =============================================================================
-- Topic 1: Nature and Scope of Engagements (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'What is the overall objective of an auditor when conducting an audit of financial statements?',
 '["To obtain reasonable assurance about whether the financial statements are free from material misstatement", "To guarantee that the financial statements are completely free from all errors", "To detect all instances of fraud within the entity", "To provide absolute assurance that the financial statements are accurate"]'::jsonb,
 0,
 'Under AU-C 200, the overall objective of the auditor is to obtain reasonable assurance about whether the financial statements as a whole are free from material misstatement, whether due to fraud or error, and to report on the financial statements in accordance with the auditor''s findings. Reasonable assurance is a high but not absolute level of assurance.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'Which financial statement assertion relates to whether all transactions and events that should have been recorded have in fact been recorded?',
 '["Existence", "Completeness", "Valuation", "Rights and obligations"]'::jsonb,
 1,
 'The completeness assertion addresses whether all transactions, events, and account balances that should have been recorded have been recorded. It is concerned with potential understatement of amounts in the financial statements, as opposed to the existence assertion, which addresses potential overstatement.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'An auditor is testing whether recorded inventory actually exists at year-end. Which assertion is the auditor primarily testing?',
 '["Completeness", "Valuation and allocation", "Existence", "Presentation and disclosure"]'::jsonb,
 2,
 'The existence assertion deals with whether assets, liabilities, and equity interests exist at a given date. By physically observing inventory or confirming it with third parties, the auditor is testing existence — that is, whether the recorded amounts actually exist.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'Reasonable assurance, as used in auditing standards, means which of the following?',
 '["A guarantee that material misstatements will be detected", "A moderate level of assurance, less than high", "An absolute level of assurance that errors do not exist", "A high but not absolute level of assurance"]'::jsonb,
 3,
 'Reasonable assurance is defined as a high, but not absolute, level of assurance. It is obtained when the auditor has obtained sufficient appropriate audit evidence to reduce audit risk to an acceptably low level. Inherent limitations of an audit prevent absolute assurance.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'Which of the following best describes the difference between reasonable assurance and limited assurance?',
 '["Reasonable assurance involves more extensive procedures and provides a higher level of assurance than limited assurance", "Limited assurance requires more evidence gathering than reasonable assurance", "Both provide the same level of assurance but use different reporting formats", "Reasonable assurance is used only for public companies while limited assurance applies to private entities"]'::jsonb,
 0,
 'Reasonable assurance (as in an audit) involves more extensive procedures — including tests of controls, substantive tests, and confirmations — and yields a higher level of assurance. Limited assurance (as in a review) involves primarily inquiry and analytical procedures, resulting in a lower (but meaningful) level of assurance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'The assertion that assets and liabilities are recorded at appropriate amounts and any resulting valuation adjustments are properly reflected is known as:',
 '["Rights and obligations", "Valuation and allocation", "Completeness", "Occurrence"]'::jsonb,
 1,
 'Valuation and allocation addresses whether assets, liabilities, and equity interests are included in the financial statements at appropriate amounts, and any resulting valuation or allocation adjustments are appropriately recorded. This includes considerations such as allowance for doubtful accounts, depreciation methods, and fair value measurements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'In a financial statement audit, the auditor expresses an opinion on whether the financial statements are presented fairly, in all material respects, in accordance with:',
 '["Tax regulations", "Management''s preferences", "The applicable financial reporting framework", "The auditor''s professional standards"]'::jsonb,
 2,
 'The auditor''s opinion addresses whether the financial statements are presented fairly, in all material respects, in accordance with the applicable financial reporting framework (e.g., U.S. GAAP, IFRS). The framework determines how transactions and events should be recognized, measured, and disclosed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'Which of the following is NOT one of the financial statement assertions for classes of transactions and events?',
 '["Occurrence", "Completeness", "Accuracy", "Existence"]'::jsonb,
 3,
 'Existence is an assertion related to account balances at the period end, not to classes of transactions and events. The assertions for classes of transactions include occurrence, completeness, accuracy, cutoff, and classification. Existence applies to whether assets, liabilities, and equity interests exist at a given date.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'An auditor determines that certain accounting records were destroyed in a fire, making it impossible to obtain sufficient appropriate evidence regarding several material accounts. What impact does this have on the audit scope?',
 '["The auditor must perform additional analytical procedures to compensate for the missing evidence", "The auditor should consider the effect on the ability to form an opinion and may need to disclaim", "The auditor must withdraw from the engagement immediately", "The auditor should rely entirely on management representations for the affected accounts"]'::jsonb,
 1,
 'When the auditor is unable to obtain sufficient appropriate audit evidence due to a scope limitation (such as destroyed records), the auditor must evaluate the effect on the audit opinion. If the possible effects are both material and pervasive, the auditor should disclaim an opinion. A limitation on scope does not automatically require withdrawal, but the auditor cannot simply rely on management representations alone.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'The rights and obligations assertion primarily addresses which of the following?',
 '["Whether the entity holds or controls the rights to assets and obligations are indeed those of the entity", "Whether transactions have been recorded in the correct accounting period", "Whether all disclosures that should be included have been included", "Whether assets and liabilities exist at the balance sheet date"]'::jsonb,
 0,
 'The rights and obligations assertion addresses whether the entity holds or controls the rights to assets and whether liabilities are the obligations of the entity at a given date. For example, inventory held on consignment from another party would fail this assertion if recorded as the entity''s own asset.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'Which type of engagement provides the highest level of assurance?',
 '["Compilation engagement", "An audit of financial statements", "A review of financial statements", "An agreed-upon procedures engagement"]'::jsonb,
 1,
 'An audit provides reasonable assurance, which is the highest level of assurance offered in the attestation framework. A review provides limited (moderate) assurance. A compilation provides no assurance at all. Agreed-upon procedures engagements result in findings but no opinion or assurance.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'The cutoff assertion for classes of transactions addresses whether:',
 '["Recorded transactions actually occurred during the period", "All transactions that should have been recorded were recorded", "Transactions and events have been recorded in the correct accounting period", "Financial statement elements are properly classified and described"]'::jsonb,
 2,
 'The cutoff assertion addresses whether transactions and events have been recorded in the correct accounting period. This is particularly important near period end, where recording transactions in the wrong period could materially misstate both the current and subsequent period financial statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'Which of the following inherent limitations of an audit prevents the auditor from obtaining absolute assurance?',
 '["The use of professional skepticism", "The requirement to comply with ethical standards", "The nature of audit evidence and the use of judgment and sampling", "The requirement to communicate with those charged with governance"]'::jsonb,
 3,
 'Inherent limitations of an audit arise from the nature of financial reporting, the nature of audit procedures, and the need for the audit to be conducted within a reasonable period of time and at a reasonable cost. These include the use of professional judgment, testing (sampling) rather than examining all data, and the fact that audit evidence is persuasive rather than conclusive.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'When an auditor is engaged to audit only the balance sheet and not the other financial statements, this represents:',
 '["An incomplete engagement that violates auditing standards", "A limited scope engagement that requires a disclaimer of opinion", "A permissible engagement where the auditor reports only on the balance sheet", "An agreed-upon procedures engagement"]'::jsonb,
 2,
 'Auditing standards permit an auditor to be engaged to audit a single financial statement (such as the balance sheet) or a specific element, account, or item of a financial statement. This is a permissible engagement, and the auditor expresses an opinion only on the specific financial statement or element audited.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'The presentation and disclosure assertion for financial statements addresses all of the following EXCEPT:',
 '["Whether transactions have been classified appropriately", "Whether disclosures are clearly expressed and understandable", "Whether disclosed events and transactions have actually occurred", "Whether all amounts in the financial statements can be traced to source documents"]'::jsonb,
 3,
 'Tracing amounts to source documents relates to the accuracy assertion or audit evidence gathering procedures, not to presentation and disclosure. The presentation and disclosure assertions address whether financial information is appropriately presented, classified, described, and disclosed in accordance with the applicable reporting framework.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'A client asks the auditor to change the engagement from an audit to a review partway through the audit. Under which circumstance would the auditor most likely agree to the change?',
 '["The auditor has discovered a material misstatement the client refuses to correct", "A change in circumstances affects the entity''s need for an audit, such as a loan covenant no longer requiring audited statements", "The client is dissatisfied with the preliminary audit findings", "Management wants to avoid disclosure of a related party transaction"]'::jsonb,
 1,
 'An auditor may agree to change the engagement from an audit to a review when there is a reasonable justification, such as a change in circumstances that removes the requirement for an audit (e.g., a loan covenant no longer requiring audited statements). The auditor should not agree to a downgrade to avoid reporting on discovered misstatements or to suppress unfavorable findings.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'Which of the following assertions would an auditor primarily test by confirming accounts receivable balances directly with customers?',
 '["Existence and rights", "Completeness and classification", "Valuation and cutoff", "Presentation and accuracy"]'::jsonb,
 0,
 'Confirming accounts receivable directly with customers primarily tests the existence assertion (whether the receivables actually exist) and the rights assertion (whether the entity has the right to collect them). While confirmations can provide some evidence about other assertions, existence and rights are the primary assertions addressed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'In determining the scope of an audit engagement, the auditor must consider all of the following EXCEPT:',
 '["The applicable financial reporting framework", "The nature of the entity''s business and industry", "The expected level of the audit fee", "The entity''s internal control environment"]'::jsonb,
 2,
 'While audit fees are a practical consideration, they should not determine the scope of audit procedures. The scope of an audit is driven by professional standards, the applicable financial reporting framework, the nature of the entity, and the assessed risks of material misstatement. An auditor must not reduce the scope of procedures merely because of fee constraints.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'When an entity has multiple components or locations, the auditor''s scope determination must include consideration of:',
 '["The significance of components and the risks of material misstatement at each","Which components to visit based solely on client preference","Only the largest component by revenue","Only components with known internal control deficiencies"]'::jsonb,
 0,
 'In determining scope for multi-component entities, the auditor must consider the significance of each component (by revenue, assets, or other measures) and the assessed risks of material misstatement at each location. The auditor exercises professional judgment in determining which components require direct procedures, and the decision is not based solely on client preference or component size alone.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Nature and Scope of Engagements',
 'The occurrence assertion for classes of transactions and events is most closely related to which assertion for account balances?',
 '["Completeness", "Valuation and allocation", "Rights and obligations", "Existence"]'::jsonb,
 3,
 'Occurrence (for transactions) and existence (for account balances) are related assertions that address whether recorded items are real. Occurrence addresses whether transactions and events that have been recorded actually took place during the period, while existence addresses whether assets, liabilities, and equity interests actually exist at the balance sheet date.',
 'hard');

-- =============================================================================
-- Topic 2: Independence (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'Which of the following best describes independence in appearance?',
 '["The auditor avoids facts and circumstances that would cause a reasonable and informed third party to conclude the auditor''s integrity, objectivity, or professional skepticism has been compromised", "The auditor has no financial interest in the client", "The auditor maintains an unbiased mental attitude", "The auditor follows all applicable auditing standards"]'::jsonb,
 0,
 'Independence in appearance means the avoidance of circumstances that would cause a reasonable and informed third party, having knowledge of all relevant information, to reasonably conclude that the auditor''s integrity, objectivity, or professional skepticism has been compromised. This is distinct from independence in fact, which is the actual state of mind.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'A staff auditor on the engagement team owns 50 shares of the audit client''s stock, purchased years ago. The investment is immaterial to the auditor''s net worth. Under the AICPA Code of Professional Conduct, the auditor''s independence is:',
 '["Not impaired because the investment is immaterial", "Impaired because any direct financial interest by a covered member impairs independence regardless of materiality", "Not impaired because the stock was purchased before the engagement began", "Impaired only if the auditor is a partner in the firm"]'::jsonb,
 1,
 'Under the AICPA Code, a covered member (including any member of the engagement team) who holds a direct financial interest in the audit client is considered to have impaired independence, regardless of the materiality of the interest. The auditor must dispose of the interest to maintain independence.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'A CPA firm is considering accepting an audit engagement. The engagement partner''s brother works as the CFO of the prospective client. Which threat to independence does this most directly create?',
 '["Self-review threat", "Advocacy threat", "Familiarity threat", "Management participation threat"]'::jsonb,
 2,
 'A close family relationship between a covered member and a key member of client management creates a familiarity threat. The concern is that the auditor may become too sympathetic to the client''s interests or too trusting of the client''s representations due to the personal relationship.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'An auditor prepares a client''s tax return and also performs the audit. Under the AICPA Code of Professional Conduct, this situation most directly creates which type of threat?',
 '["Advocacy threat", "Familiarity threat", "Undue influence threat", "Self-review threat"]'::jsonb,
 3,
 'When the auditor performs non-attest services (such as tax preparation) and then audits the resulting financial statements, a self-review threat arises because the auditor may be reviewing their own work. The AICPA Code permits certain non-attest services if management accepts responsibility and the auditor does not assume a management role.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'Under the AICPA conceptual framework for independence, which of the following is the correct order of steps when evaluating a threat?',
 '["Identify threats, evaluate significance, apply safeguards if needed, conclude whether independence is maintained", "Apply safeguards, identify threats, evaluate significance, document the conclusion", "Document the situation, notify the client, apply safeguards, re-evaluate", "Consult with the ethics committee, identify threats, withdraw if necessary, document"]'::jsonb,
 0,
 'The AICPA conceptual framework requires auditors to: (1) identify threats to independence, (2) evaluate the significance of those threats, (3) apply safeguards to reduce threats to an acceptable level when possible, and (4) conclude whether independence is maintained. If safeguards cannot reduce the threat to an acceptable level, the engagement should be declined or terminated.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'A partner in an audit firm served as the engagement partner on a public company audit for seven consecutive years. Under SEC independence rules, which of the following applies?',
 '["The partner may continue indefinitely as long as independence in fact is maintained", "The partner must rotate off the engagement after five consecutive years with a five-year cooling-off period", "The partner must rotate off after seven consecutive years with a two-year cooling-off period", "Partner rotation requirements apply only to non-issuer audits"]'::jsonb,
 1,
 'SEC rules (and PCAOB standards) require the lead engagement partner and the concurring review partner on issuer audits to rotate off the engagement after five consecutive years, followed by a five-year cooling-off period. This mandatory rotation requirement is designed to prevent familiarity threats from prolonged auditor-client relationships.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'An auditor''s spouse is employed as a staff accountant (not in a key position) at the audit client. Under the AICPA Code, the auditor''s independence is:',
 '["Always impaired regardless of the spouse''s role", "Not impaired as long as the spouse is not in a key position and the auditor is not on the engagement team", "Not impaired because spouses are not considered covered members", "Impaired only if the spouse participates in preparing the financial statements"]'::jsonb,
 3,
 'Under the AICPA Code, an immediate family member''s (spouse''s) employment at the audit client does not automatically impair independence if the family member is not in a key position. However, if the spouse participates in preparing the financial statements being audited, independence would be impaired because the auditor would effectively be reviewing work influenced by their family member.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'A CPA accepted a contingent fee arrangement for preparing a tax return for a client whose return the CPA knows will not be subject to IRS review. The CPA also audits this client. Under the AICPA Code, this arrangement:',
 '["Is permitted because contingent fee arrangements for tax returns are always allowed", "Is permitted because the tax return will not be reviewed by the IRS", "Impairs the CPA''s independence with respect to the audit engagement", "Is permitted as long as the contingent fee is disclosed in the engagement letter"]'::jsonb,
 2,
 'Under the AICPA Code, a covered member may not receive a contingent fee from an attest client during the period of the professional engagement or for the period covered by the financial statements. A contingent fee arrangement with an audit client impairs independence, regardless of the nature of the service or whether the tax return will be subject to review.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'Which of the following individuals is considered a "covered member" under the AICPA independence rules?',
 '["A partner in a different office who provides no services to the client", "An individual on the attest engagement team", "A staff accountant in the firm who has never worked on the client engagement", "An administrative assistant who supports the engagement team"]'::jsonb,
 1,
 'A covered member includes any individual on the attest engagement team, an individual in a position to influence the engagement, a partner or manager in the office where the engagement partner practices, and the firm itself. Staff accountants in different offices or administrative personnel who do not influence the engagement are generally not covered members.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'An audit client threatens to replace the audit firm unless the firm agrees to reduce the scope of audit procedures in a sensitive area. This represents which type of threat to independence?',
 '["Self-interest threat", "Self-review threat", "Familiarity threat", "Undue influence threat"]'::jsonb,
 3,
 'An undue influence threat exists when a covered member''s behavior is subordinated or unduly affected by the interests of another party, such as the client. Client pressure to reduce audit procedures or change audit conclusions constitutes an undue influence (intimidation) threat to independence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'A former partner of an audit firm joins an audit client as its controller two years after leaving the firm. The firm still audits the client. Under which condition would the firm''s independence most likely be impaired?',
 '["The former partner has influence over the financial statements and is still owed retirement benefits that depend on the firm''s revenues", "The former partner no longer has any financial relationship with the firm", "The former partner works in a department unrelated to accounting", "The former partner left the firm more than one year ago"]'::jsonb,
 0,
 'Independence is impaired if a former partner joins an audit client in a key position and retains financial ties to the firm (such as retirement benefits dependent on firm revenues). The combination of influence over the client''s financial statements and ongoing financial interests in the audit firm creates both familiarity and self-interest threats that cannot be mitigated.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'An auditor holds an indirect financial interest in an audit client through a diversified mutual fund. Under the AICPA Code, this interest:',
 '["Impairs independence regardless of materiality", "Does not impair independence because diversified mutual funds are exempt", "Impairs independence only if the interest is material to the auditor''s net worth", "Does not impair independence as long as the auditor did not select the specific stocks in the fund"]'::jsonb,
 1,
 'Under the AICPA Code, an interest in a diversified mutual fund that invests in an audit client does not impair independence because the fund is considered a diversified investment vehicle and the auditor has no direct control over the specific investment decisions. This exemption applies regardless of materiality.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'A CPA firm provides litigation support services to an audit client, acting as a trier of fact. Which threat to independence is most significant?',
 '["Self-interest threat", "Self-review threat", "Advocacy threat", "Familiarity threat"]'::jsonb,
 2,
 'When a CPA firm provides litigation support that involves acting as an advocate for the client (e.g., serving as an expert witness advocating for the client''s position), an advocacy threat arises. The auditor may be perceived as promoting the client''s interests rather than maintaining objectivity. Acting as a trier of fact or providing factual testimony is generally less problematic than taking an advocacy role.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'Under the AICPA Code, independence is required for which of the following services?',
 '["Tax preparation services", "Management consulting engagements", "Attest engagements including audits and reviews", "Bookkeeping and payroll services"]'::jsonb,
 2,
 'Independence is required for attest engagements, which include audits, reviews, and other attestation services. Independence is not required for non-attest services such as tax preparation, management consulting, bookkeeping, or payroll services, although objectivity and integrity are always required.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'A close relative (non-immediate family) of the engagement partner holds a material financial interest in the audit client. Under the AICPA Code, what should the auditor evaluate?',
 '["No evaluation is needed because only immediate family members affect independence", "Whether the close relative''s interest creates a threat to independence under the conceptual framework", "Independence is automatically impaired by any close relative''s financial interest", "Whether the close relative is willing to divest the interest"]'::jsonb,
 1,
 'Close relatives (parents, siblings, non-dependent children) are not treated the same as immediate family (spouse, dependent). However, a close relative''s financial interest in an audit client may still create threats to independence that must be evaluated under the conceptual framework. The auditor should assess whether the relationship creates a self-interest or familiarity threat at an unacceptable level.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'An audit firm charges an audit client a significantly lower fee than normal to obtain the engagement, with the expectation that fees will increase in future years. This pricing practice creates which primary threat to independence?',
 '["Advocacy threat", "Familiarity threat", "Self-interest threat", "Management participation threat"]'::jsonb,
 2,
 'Low-balling (charging below-cost fees to win an engagement) creates a self-interest threat because the firm may be tempted to cut corners on audit procedures to minimize costs, or may become financially dependent on the client for future fee increases. The AICPA Code requires that fees not compromise audit quality.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'A CPA firm member serves on the board of directors of an audit client in a purely honorary capacity with no decision-making authority. Under the AICPA Code, this:',
 '["Impairs independence because board membership is a management role regardless of authority","Does not impair independence as long as the firm discloses the relationship","Does not impair independence because the role is honorary","Impairs independence only if the member votes on financial matters"]'::jsonb,
 0,
 'Under the AICPA Code, a covered member who serves on the board of directors of an audit client assumes a management role, which impairs independence regardless of whether the position is honorary or whether the member has decision-making authority. The appearance of a management role is sufficient to impair independence.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'What is the key distinction between a direct financial interest and an indirect financial interest in an audit client?',
 '["A direct interest is owned by the auditor; an indirect interest is owned through an intermediary such as a mutual fund or trust", "A direct interest is material; an indirect interest is immaterial", "A direct interest involves equity; an indirect interest involves debt", "There is no meaningful distinction under auditing standards"]'::jsonb,
 0,
 'A direct financial interest is one owned directly by the individual (e.g., owning shares of stock). An indirect financial interest is one owned through an intermediary (e.g., shares held in a mutual fund, estate, or trust). Direct financial interests impair independence regardless of materiality, while indirect interests impair independence only if material to the covered member.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'Under the AICPA Code, when a covered member becomes aware that independence has been impaired, the member should:',
 '["Immediately withdraw from the engagement without further action","Notify the SEC before taking any action","Continue the engagement and disclose the impairment in the audit report","Evaluate whether safeguards can restore independence; if not, resign from the engagement"]'::jsonb,
 3,
 'When a covered member becomes aware of an independence impairment, the member should promptly evaluate whether the threat can be reduced to an acceptable level through safeguards. If the threat cannot be reduced to an acceptable level, the member should resign from the engagement. The member should not continue the engagement while independence is impaired.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Independence',
 'A former engagement team member joins the audit client as VP of Sales (not a key position) three months after leaving the firm. During the period covered by the current audit, the individual was on the engagement team. The firm''s independence is:',
 '["Not impaired because VP of Sales is not a key position", "Not impaired as long as the former member has no influence on accounting matters", "Not impaired because the individual has already left the firm", "Potentially impaired because the individual was on the engagement team during the period covered by the financial statements"]'::jsonb,
 3,
 'If a former engagement team member joins the client during the period covered by the financial statements being audited, independence may be impaired. The firm must evaluate whether the former member''s knowledge of the audit plan and procedures could compromise audit effectiveness, particularly if the individual was involved in the current year''s audit.',
 'hard');

-- =============================================================================
-- Topic 3: Professional Skepticism and Judgment (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'Professional skepticism is best described as:',
 '["An attitude that includes a questioning mind, alertness to conditions that may indicate misstatement, and a critical assessment of audit evidence", "An assumption that management is dishonest until proven otherwise", "A refusal to accept any representations from management", "An approach that requires corroboration of every management assertion with external evidence"]'::jsonb,
 0,
 'Professional skepticism is an attitude that includes a questioning mind, being alert to conditions that may indicate possible misstatement due to fraud or error, and a critical assessment of audit evidence. It does not mean assuming management is dishonest, but rather maintaining an objective and questioning approach throughout the audit.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'Which of the following best illustrates a failure to exercise professional skepticism?',
 '["Accepting management''s explanation for a significant unusual transaction without obtaining corroborating evidence", "Requesting additional documentation to support a complex accounting estimate", "Discussing contradictory evidence with the engagement partner", "Designing additional audit procedures when preliminary results are unexpected"]'::jsonb,
 0,
 'A failure to exercise professional skepticism occurs when the auditor accepts management''s explanations without adequately questioning them or seeking corroborating evidence. Professional skepticism requires the auditor to critically assess evidence and not simply accept representations at face value, particularly for unusual or significant transactions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'An auditor discovers that revenue recorded in the last week of the fiscal year is significantly higher than the same period in prior years. Exercising professional skepticism, the auditor should:',
 '["Accept management''s explanation that a large customer placed an unusual order", "Investigate the transactions further, including examining supporting documentation and confirming with customers", "Reduce substantive testing in the revenue area since the variance has been identified", "Issue a qualified opinion immediately based on the unusual variance"]'::jsonb,
 1,
 'Professional skepticism requires the auditor to critically assess audit evidence and not accept explanations without corroboration. An unusual spike in year-end revenue warrants further investigation, including examining shipping documents, sales contracts, and confirming with customers, rather than accepting management''s explanation at face value.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'Professional judgment in auditing refers to:',
 '["The ability to apply relevant training, knowledge, and experience in making informed decisions during the audit", "A mathematical formula used to determine sample sizes", "The client''s assessment of accounting treatment appropriateness", "The process of consulting with legal counsel on all audit matters"]'::jsonb,
 0,
 'Professional judgment is the application of relevant training, knowledge, and experience within the context provided by auditing standards, accounting standards, and ethical requirements in making informed decisions about appropriate courses of action. It is essential in all aspects of the audit, from planning to forming the opinion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'Which cognitive bias most directly threatens an auditor''s professional skepticism by causing the auditor to favor information that confirms pre-existing beliefs?',
 '["Anchoring bias", "Confirmation bias", "Availability bias", "Overconfidence bias"]'::jsonb,
 1,
 'Confirmation bias is the tendency to search for, interpret, and recall information in a way that confirms pre-existing beliefs or hypotheses. In auditing, this can cause an auditor to give more weight to evidence that supports management''s assertions and dismiss contradictory evidence, undermining professional skepticism.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'An auditor is evaluating an accounting estimate involving significant management judgment. Which of the following actions most clearly demonstrates professional skepticism?',
 '["Accepting the estimate because management has been reliable in previous years", "Using the same estimate as the prior year without further evaluation", "Developing an independent expectation and comparing it to management''s estimate", "Relying solely on the work of management''s specialist without further procedures"]'::jsonb,
 2,
 'Developing an independent expectation and comparing it to management''s estimate demonstrates professional skepticism by not simply accepting management''s figures at face value. This approach allows the auditor to assess the reasonableness of the estimate and identify potential biases or errors.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'Documentation of professional judgments in the audit workpapers serves which primary purpose?',
 '["To provide evidence that the audit was conducted in accordance with legal requirements only", "To create a record that could be used against the auditor in litigation", "To demonstrate the basis for the auditor''s conclusions and decisions throughout the audit", "To satisfy the client''s internal documentation requirements"]'::jsonb,
 2,
 'Documenting professional judgments provides a record of the basis for the auditor''s conclusions and the rationale for decisions made throughout the audit. This documentation enables engagement quality reviewers, peer reviewers, and regulatory inspectors to understand the auditor''s reasoning and assess whether sufficient appropriate evidence was obtained.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'An auditor receives a management representation that all related party transactions have been disclosed. Professional skepticism requires the auditor to:',
 '["Accept the representation as sufficient audit evidence", "Treat the representation as one piece of evidence and perform additional procedures to identify undisclosed related party transactions", "Reject the representation and assume management is being deceptive", "Issue a disclaimer of opinion because management representations are not reliable evidence"]'::jsonb,
 1,
 'While management representations are a required component of audit evidence, professional skepticism requires the auditor to treat them as only one source of evidence. The auditor should perform additional procedures to identify possible undisclosed related party transactions, such as reviewing entity records, examining board minutes, and inquiring of other personnel.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'Which of the following situations would most likely require heightened professional skepticism?',
 '["A well-established entity with a stable operating environment", "Management compensation is heavily tied to achieving specific financial targets", "The entity uses a widely adopted accounting information system", "The audit committee meets regularly and includes independent members"]'::jsonb,
 1,
 'When management compensation is heavily tied to achieving specific financial targets, there is an increased incentive for management to bias the financial statements, which heightens the risk of material misstatement due to fraud. This situation requires elevated professional skepticism, including more rigorous testing and greater scrutiny of management estimates and judgments.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'Automation bias in auditing refers to:',
 '["Over-reliance on automated audit tools and data analytics without sufficient critical assessment of the outputs", "The tendency to prefer manual audit procedures over automated ones", "Management''s preference for automated accounting systems", "The use of computer-assisted audit techniques in all engagements"]'::jsonb,
 0,
 'Automation bias occurs when auditors place excessive trust in the outputs of automated tools, data analytics, or computer-assisted audit techniques without applying sufficient professional skepticism to evaluate whether the results are reasonable and the underlying data is reliable. Auditors must critically assess automated outputs just as they would manual evidence.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'An engagement partner overrides the concerns of a staff auditor who identified potential fraud indicators, stating that the client has always been trustworthy. This situation illustrates a failure of:',
 '["Audit efficiency", "Professional skepticism due to familiarity bias", "Proper sampling methodology", "Adequate documentation practices"]'::jsonb,
 1,
 'The engagement partner''s dismissal of fraud indicators based on a long-standing relationship with the client illustrates a failure of professional skepticism caused by familiarity bias. An auditor who has worked with a client for many years may develop an unwarranted level of trust, reducing their alertness to potential misstatements. All team members'' concerns about potential fraud should be taken seriously and investigated.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'When exercising professional judgment in evaluating audit evidence, the auditor should consider:',
 '["Only quantitative factors such as dollar amounts and percentages", "Only qualitative factors such as the nature of misstatements", "Both the sufficiency (quantity) and appropriateness (quality) of the evidence", "The preferences of the audit committee regarding evidence gathering"]'::jsonb,
 2,
 'Professional judgment requires the auditor to consider both the sufficiency (quantity) and appropriateness (quality, including relevance and reliability) of audit evidence. Neither quantitative factors alone nor qualitative factors alone are sufficient — the auditor must assess both dimensions to determine whether enough evidence of the right quality has been obtained.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'Which of the following is an appropriate response when contradictory evidence is discovered during an audit?',
 '["Ignore the contradictory evidence if it relates to an immaterial account","Withdraw from the engagement to avoid liability","Immediately issue an adverse opinion","Reconsider the reliability of other evidence obtained and perform additional procedures"]'::jsonb,
 3,
 'When contradictory evidence is discovered, the auditor should reconsider the reliability of other audit evidence obtained and perform additional procedures to resolve the inconsistency. Contradictory evidence should not be ignored — it may indicate that the initially obtained evidence is less reliable than originally assessed or that a material misstatement exists.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'An auditor is presented with a complex restructuring transaction. Professional judgment requires the auditor to evaluate whether the accounting treatment:',
 '["Matches the treatment used by other companies in the same industry","Results in the highest reported net income","Is the most conservative treatment available","Reflects the economic substance of the transaction rather than merely its legal form"]'::jsonb,
 3,
 'Professional judgment requires the auditor to evaluate whether accounting treatments reflect the economic substance of transactions rather than merely their legal form. In complex transactions, the legal structure may differ from the underlying economic reality, and the auditor must assess whether the financial reporting framework''s requirements have been properly applied based on substance.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'The concept of "presumptive doubt" in professional skepticism means:',
 '["The auditor should refuse to accept any audit evidence","The auditor should presume all management representations are false","The auditor should assume that fraud exists until proven otherwise","The auditor should not be satisfied with less-than-persuasive evidence when more persuasive evidence could be obtained"]'::jsonb,
 3,
 'Presumptive doubt means that the auditor should not be satisfied with less-than-persuasive evidence when more persuasive evidence could reasonably be obtained. It does not mean assuming fraud or dishonesty, but rather maintaining a critical mindset that demands sufficient appropriate evidence before drawing conclusions.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'Anchoring bias in auditing most commonly manifests when an auditor:',
 '["Gives disproportionate weight to initial information (such as prior-year balances) when evaluating current-year figures", "Selects sample items from only one population", "Uses only one type of audit procedure for all assertions", "Relies exclusively on client-prepared schedules"]'::jsonb,
 0,
 'Anchoring bias occurs when an auditor gives disproportionate weight to the first piece of information encountered (the "anchor"), such as prior-year balances. This can lead to insufficient adjustment of expectations for the current period, reducing the effectiveness of analytical procedures and the auditor''s ability to detect misstatements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'When an auditor encounters a situation not specifically addressed by auditing standards, the auditor should:',
 '["Decline to perform the procedure", "Consult external legal counsel before proceeding", "Apply professional judgment based on the principles underlying the standards and the conceptual framework", "Follow the client''s preferred approach"]'::jsonb,
 2,
 'When specific guidance is not available, the auditor should apply professional judgment based on the principles underlying auditing standards. This includes considering the objectives of the relevant standards, evaluating the specific facts and circumstances, and determining an appropriate course of action consistent with the overall framework and ethical requirements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'An audit team member notices that journal entries posted near year-end lack adequate supporting documentation. Exercising professional skepticism, the auditor should:',
 '["Accept the entries if management provides a verbal explanation", "Note the observation but take no further action if the amounts are immaterial individually", "Investigate the entries further as they may indicate potential fraud risk", "Remove the entries from the general ledger"]'::jsonb,
 2,
 'Journal entries posted near year-end without adequate supporting documentation are a common fraud risk indicator. Professional skepticism requires the auditor to investigate such entries further, as they may represent fictitious transactions or management override of controls. AU-C 240 specifically requires testing of journal entries as a fraud risk procedure.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'Which of the following best describes how professional skepticism should be applied throughout the audit?',
 '["Only during the planning phase when assessing risks", "Only during substantive testing when evaluating evidence", "Only when fraud indicators are present", "Continuously from engagement acceptance through reporting"]'::jsonb,
 3,
 'Professional skepticism must be applied continuously throughout the audit, from engagement acceptance and continuance decisions through planning, performing procedures, evaluating evidence, and forming the audit opinion. It is not limited to specific phases or triggered only by fraud indicators.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Professional Skepticism and Judgment',
 'The availability heuristic threatens professional skepticism by causing auditors to:',
 '["Overtest high-risk areas at the expense of low-risk areas","Rely too heavily on audit software outputs","Underestimate the importance of planning analytical procedures","Overemphasize readily recalled or recent experiences when assessing risks, rather than considering the full range of possibilities"]'::jsonb,
 3,
 'The availability heuristic causes people to overweight information that is easily recalled or readily available (such as recent or vivid events) when making judgments. In auditing, this can cause auditors to overemphasize risks they have recently encountered while underestimating less common but equally significant risks, leading to biased risk assessments.',
 'hard');

-- =============================================================================
-- Topic 4: Terms of Engagement (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'Which of the following is a required element of an audit engagement letter?',
 '["The identification of the applicable financial reporting framework and management''s responsibility for the financial statements", "The names of all staff members who will work on the engagement", "A guarantee that the audit will detect all fraud", "The specific audit procedures the auditor plans to perform"]'::jsonb,
 0,
 'An engagement letter must include the objective and scope of the audit, the responsibilities of the auditor, management''s responsibilities (including preparation of financial statements in accordance with the applicable financial reporting framework), and identification of the applicable framework. Specific procedures, staffing details, and guarantees are not required elements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'Before accepting an audit engagement, the auditor must establish that certain preconditions for an audit exist. Which of the following is one of those preconditions?',
 '["The client has agreed to pay the proposed audit fee", "Management acknowledges its responsibility for the preparation of the financial statements", "The audit committee has pre-approved all non-audit services", "The prior auditor has issued a clean opinion in the prior year"]'::jsonb,
 1,
 'A precondition for an audit is that management acknowledges and understands its responsibility for the preparation and fair presentation of the financial statements in accordance with the applicable financial reporting framework, and for internal control as it determines necessary. Without this acknowledgment, the audit cannot proceed.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'When the auditor is engaged for a recurring audit, the engagement letter:',
 '["Must be reissued every year without exception", "May remain in effect for multiple years but should be reassessed periodically and updated when circumstances change", "Is only required for the first year of the engagement", "Must be revised annually to include updated fee estimates"]'::jsonb,
 1,
 'For recurring audits, the auditor should assess whether circumstances require the terms of the engagement to be revised and whether there is a need to remind the entity of the existing terms. While a new engagement letter each year is not always required, the auditor should reassess and update it when there are changes in engagement scope, management, or other significant factors.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'Management requests that the auditor change the audit engagement to a review engagement after the audit work has substantially been completed. The auditor should:',
 '["Always agree to accommodate the client", "Evaluate whether there is reasonable justification for the change; declining if the change appears intended to limit the scope or avoid reporting on known misstatements", "Automatically withdraw from the engagement", "Agree to the change but issue a disclaimer on the review report"]'::jsonb,
 1,
 'The auditor should evaluate whether there is reasonable justification for the change (e.g., changed circumstances that remove the need for an audit). If the auditor believes the change is intended to limit the scope, avoid an adverse finding, or circumvent reporting requirements, the auditor should not agree to the change and should consider withdrawing from the engagement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'An engagement letter should include a reference to the expected form and content of any reports to be issued by the auditor. This requirement exists primarily to:',
 '["Guarantee the type of opinion the auditor will issue", "Establish the client''s expectations regarding the nature and limitations of the audit", "Limit the auditor''s liability in case of a lawsuit", "Provide the client with a draft of the audit report"]'::jsonb,
 1,
 'Including reference to the expected form and content of reports in the engagement letter helps manage the client''s expectations regarding what the audit will and will not accomplish. It clarifies the nature and limitations of the audit and ensures both parties have a mutual understanding of the engagement objectives.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'Which of the following would most likely cause an auditor to decline to accept a new audit engagement?',
 '["The client operates in a highly regulated industry", "Management refuses to provide the auditor with a representation letter", "The client has complex accounting transactions", "The client has multiple locations requiring audit work"]'::jsonb,
 1,
 'If management refuses to provide written representations, a precondition for the audit is not met. Management representations are a required component of the audit, and management''s refusal to provide them suggests an unwillingness to accept responsibility for the financial statements. The other options represent challenges but are not reasons to decline the engagement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'During the engagement acceptance process, the auditor should communicate with the predecessor auditor. The primary purpose of this communication is to:',
 '["Obtain the predecessor''s workpapers", "Determine the predecessor''s fee structure", "Obtain information to assist in deciding whether to accept the engagement, such as matters related to management integrity", "Request that the predecessor recommend the new auditor to the client"]'::jsonb,
 2,
 'Communication with the predecessor auditor is intended to help the successor auditor evaluate whether to accept the engagement. The successor should inquire about matters such as management integrity, disagreements with management, reasons for the change of auditors, and any fraud or illegal acts. Client permission is needed before this communication.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'The engagement letter typically states that the audit is designed to obtain reasonable assurance, not absolute assurance. This language is included to:',
 '["Clearly communicate the inherent limitations of an audit to management and those charged with governance","Reduce the auditor''s fee","Allow the auditor to skip certain required procedures","Shift all liability for misstatements to management"]'::jsonb,
 0,
 'The engagement letter clearly states that the audit provides reasonable, not absolute, assurance to ensure that management and those charged with governance understand the inherent limitations of an audit. This includes the fact that the audit uses sampling, involves judgment, and may not detect all misstatements, particularly those involving concealed fraud or collusion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'Which of the following is a management responsibility that should be acknowledged in the engagement letter?',
 '["Determining the sample sizes used in audit testing", "Selecting the audit procedures to be performed", "Providing the auditor with access to all information relevant to the preparation of the financial statements", "Establishing the materiality levels for the audit"]'::jsonb,
 2,
 'Management is responsible for providing the auditor with access to all information that management is aware of and that is relevant to the financial statements, including records, documentation, and other matters. Determining sample sizes, selecting audit procedures, and establishing materiality levels are auditor responsibilities, not management responsibilities.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'When a limitation on the scope of the audit is imposed by management as a condition of the engagement, and the limitation will result in a disclaimer of opinion, the auditor should:',
 '["Refuse to accept the engagement on such terms unless required by law or regulation","Accept the engagement and issue a disclaimer","Accept the engagement but negotiate a higher fee","Accept the engagement and issue a qualified opinion instead"]'::jsonb,
 0,
 'If management imposes a limitation on the scope of the audit that will result in a disclaimer of opinion, the auditor should ordinarily not accept such a limited engagement unless required to do so by law or regulation. Accepting an engagement that is designed to result in a disclaimer does not serve the interests of users of the financial statements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'An auditor is considering engagement continuance for a long-standing client. Which of the following factors would most strongly suggest the auditor should discontinue the engagement?',
 '["Evidence of management''s lack of integrity has been discovered","The client has expanded into new geographic markets","The client changed its fiscal year-end","The client is experiencing declining revenues"]'::jsonb,
 0,
 'Evidence of management''s lack of integrity is the most significant factor suggesting the auditor should discontinue the engagement. Integrity of management is fundamental to the audit relationship because the auditor relies on management representations and the auditor''s ability to obtain reliable evidence depends on management''s willingness to be truthful.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'Under auditing standards, the engagement letter serves as a contract between the auditor and the client. Which of the following is NOT typically included?',
 '["The objective and scope of the audit", "Management''s responsibilities", "A list of all specific audit procedures to be performed", "The expected form of the auditor''s report"]'::jsonb,
 2,
 'The engagement letter does not typically list all specific audit procedures to be performed. Audit procedures are determined based on the auditor''s risk assessment and professional judgment during the engagement. The letter typically includes the objective and scope, responsibilities of both parties, the applicable framework, and expected report form.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'A new auditor is unable to obtain the predecessor auditor''s cooperation in providing information about the client. The new auditor should:',
 '["Refuse to accept the engagement under any circumstances", "Accept the engagement without any further inquiry", "Consider the implications for engagement acceptance, including performing alternative procedures to gather necessary information", "Report the predecessor auditor to the state board of accountancy"]'::jsonb,
 2,
 'If the predecessor auditor does not cooperate, the successor auditor should consider the implications for engagement acceptance. The inability to communicate does not automatically preclude acceptance, but the auditor should perform alternative procedures (such as reviewing prior financial statements, inquiring of management, and checking regulatory records) to obtain sufficient information for the acceptance decision.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'When an entity''s financial statements are required by law to be audited, and management attempts to limit the scope of the engagement, the auditor should:',
 '["Accept whatever scope management proposes since the law requires an audit","Issue an unmodified opinion noting the scope limitation","Withdraw immediately without further discussion","Communicate with those charged with governance about the scope limitation and consider whether the engagement can still be performed in compliance with standards"]'::jsonb,
 3,
 'When law or regulation requires an audit and management attempts to impose scope limitations, the auditor should communicate with those charged with governance (such as the board or audit committee) about the limitation. The auditor should determine whether the scope limitation can be resolved and whether it is still possible to perform the audit in compliance with professional standards.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'The engagement letter should be signed by:',
 '["Only the auditor", "The auditor and the client''s external legal counsel", "Appropriate representatives of both the auditor and the entity (typically management or those charged with governance)", "The auditor, management, and the audit committee chair"]'::jsonb,
 2,
 'The engagement letter should be agreed to by appropriate representatives of both the auditor (typically the engagement partner) and the entity (typically management or those charged with governance, as appropriate). Both parties sign to acknowledge and agree to the terms of the engagement, creating a mutual understanding.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'An auditor discovers after accepting an engagement that a precondition for the audit no longer exists. What should the auditor do?',
 '["Complete the audit and note the missing precondition in the report","Continue the audit using alternative procedures","Ignore the issue if the audit work is substantially complete","Discuss the matter with management and consider withdrawing if the precondition cannot be reestablished"]'::jsonb,
 3,
 'If a precondition for the audit ceases to exist after engagement acceptance (e.g., management no longer accepts its responsibility for the financial statements or restricts access to records), the auditor should discuss the matter with management and, if the precondition cannot be reestablished, consider the impact on the audit and whether withdrawal is necessary.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'Which of the following would require the auditor to establish new engagement terms with the client?',
 '["A change in the applicable financial reporting framework used by the entity", "The audit staff assigned to the engagement changes", "The client moves to a new office location", "The auditor updates the audit software used for the engagement"]'::jsonb,
 0,
 'A change in the applicable financial reporting framework (e.g., from GAAP to IFRS, or the adoption of a new standard that fundamentally changes reporting) would require the auditor to revise the terms of the engagement because it changes the scope and basis of the audit opinion. Changes in staff, office location, or audit software do not typically require revised engagement terms.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'During the engagement acceptance process for a first-year audit, the auditor is required to:',
 '["Accept the client before performing any due diligence procedures","Require the client to change its accounting policies before accepting the engagement","Obtain a guarantee from the predecessor auditor that the client is acceptable","Evaluate compliance with ethical requirements, including independence, and perform client acceptance procedures"]'::jsonb,
 3,
 'Before accepting a first-year audit engagement, the auditor must evaluate compliance with relevant ethical requirements (including independence), perform client acceptance procedures (including evaluating management integrity and the firm''s ability to perform the engagement), and establish that preconditions for the audit exist.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'The engagement letter should address the auditor''s responsibility regarding fraud. Specifically, it should state that:',
 '["The auditor guarantees detection of all fraud","The auditor will only look for fraud if specifically requested by the client","Fraud detection is solely management''s responsibility","The audit is designed to provide reasonable assurance of detecting material misstatements, whether caused by fraud or error"]'::jsonb,
 3,
 'The engagement letter should clarify that the audit is designed to provide reasonable assurance about whether the financial statements are free from material misstatement, whether caused by fraud or error. This sets appropriate expectations about the auditor''s fraud detection responsibilities without guaranteeing detection of all fraud.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Terms of Engagement',
 'If an entity engaged the auditor to perform an audit, but subsequently decides it only needs a compilation, and the auditor agrees, the auditor must:',
 '["Issue a report on the audit procedures already performed","Issue both an audit report and a compilation report","Continue the audit regardless of the client''s wishes","Prepare a new engagement letter reflecting the revised terms and scope of the compilation engagement"]'::jsonb,
 3,
 'When an engagement is changed from an audit to a compilation (assuming there is reasonable justification), the auditor should prepare a new engagement letter that clearly reflects the revised terms and scope of the compilation engagement. The auditor should ensure the client understands the different level of service and the fact that no assurance will be provided.',
 'hard');

-- =============================================================================
-- Topic 5: Understanding the Entity and Environment (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'Why is it important for the auditor to understand the entity''s industry and regulatory environment?',
 '["To identify and assess the risks of material misstatement arising from industry-specific factors", "To recommend changes to the entity''s business strategy", "To ensure the entity is complying with all industry regulations", "To determine the most profitable product lines for the entity"]'::jsonb,
 0,
 'Understanding the entity''s industry and regulatory environment helps the auditor identify risks of material misstatement that arise from industry-specific factors, such as specialized accounting requirements, industry trends, regulatory compliance issues, and competitive pressures. This understanding is essential for effective risk assessment and audit planning.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'An auditor is obtaining an understanding of a new audit client in the pharmaceutical industry. Which of the following industry-specific factors would be most relevant to the audit?',
 '["The entity''s office lease terms", "Research and development costs, patent expiration dates, and FDA regulatory requirements", "The entity''s employee vacation policy", "The number of parking spaces available at the entity''s headquarters"]'::jsonb,
 1,
 'For a pharmaceutical company, research and development costs (including capitalization vs. expensing decisions), patent lives and expiration dates (affecting revenue projections and intangible asset values), and FDA regulatory requirements (affecting revenue recognition and contingent liabilities) are all critical industry-specific factors that significantly affect the financial statements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'Understanding the entity''s objectives and strategies helps the auditor identify:',
 '["The most efficient staffing plan for the audit", "Business risks that may result in material misstatement of the financial statements", "The entity''s marketing effectiveness", "The predecessor auditor''s approach to the engagement"]'::jsonb,
 1,
 'Understanding the entity''s objectives and strategies allows the auditor to identify business risks — risks arising from significant conditions, events, or circumstances that could adversely affect the entity''s ability to achieve its objectives. These business risks may result in material misstatement if the financial statements do not adequately reflect the entity''s business reality.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'When gaining an understanding of the entity''s selection and application of accounting policies, the auditor should assess whether the policies are:',
 '["The most aggressive policies available under the framework", "The same policies used by the entity''s competitors", "Appropriate for the entity and consistent with the applicable financial reporting framework", "Approved by the entity''s external legal counsel"]'::jsonb,
 2,
 'The auditor should assess whether the entity''s accounting policies are appropriate for its business and consistent with the applicable financial reporting framework and industry practices. The auditor should also evaluate whether any changes in accounting policies are justified and properly disclosed, and whether the policies reflect economic substance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'An auditor reviews the minutes of the board of directors'' meetings as part of understanding the entity. This procedure primarily helps the auditor understand:',
 '["The entity''s marketing strategies", "The entity''s vacation and leave policies", "Significant decisions, commitments, and events that may affect the financial statements", "The entity''s IT infrastructure"]'::jsonb,
 2,
 'Reviewing board minutes helps the auditor understand significant decisions, commitments, and events that may affect the financial statements, such as authorization of major transactions, litigation developments, dividend declarations, related party transactions, and changes in accounting policies or management.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'Which of the following procedures is most effective for an auditor to gain an understanding of a client''s internal control environment?',
 '["Reviewing the general ledger for unusual entries", "Inquiring of management and observing the entity''s operations and control activities", "Performing substantive tests of account balances", "Sending confirmations to the entity''s customers"]'::jsonb,
 1,
 'Inquiring of management and other personnel, combined with observing the entity''s operations and inspecting documents, is the most effective approach for gaining an understanding of the internal control environment. This combination provides the auditor with both stated policies and evidence of how they actually operate in practice.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'An entity recently entered a new line of business involving complex derivative transactions. How should this affect the auditor''s understanding of the entity?',
 '["It has no impact on the audit because derivatives are standard financial instruments", "It requires the auditor to withdraw because derivatives are too complex", "The auditor should obtain an understanding of the new business line, including the types of derivatives, their accounting treatment, and the associated risks", "The auditor should rely entirely on management''s representations about the derivatives"]'::jsonb,
 2,
 'When an entity enters a new line of business involving complex transactions like derivatives, the auditor must obtain a thorough understanding of the nature of the transactions, the applicable accounting treatment (including fair value measurement and hedge accounting), the risks involved, and the entity''s controls over these activities. This understanding is essential for identifying risks of material misstatement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'Which of the following is an example of a business risk that the auditor should consider when understanding the entity?',
 '["The risk that the auditor will not detect a material misstatement", "The risk that the entity''s products may become obsolete due to technological changes", "The risk that the audit fee will exceed the budgeted amount", "The risk that the engagement team lacks sufficient expertise"]'::jsonb,
 1,
 'A business risk is a risk resulting from significant conditions, events, circumstances, actions, or inactions that could adversely affect the entity''s ability to achieve its objectives. Product obsolescence due to technological changes is a business risk because it threatens the entity''s future revenues and may affect asset valuations (e.g., inventory write-downs, impairment of production equipment).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'The auditor''s understanding of the entity and its environment is obtained primarily during which phase of the audit?',
 '["Reporting", "Substantive testing", "Planning and risk assessment", "Engagement completion"]'::jsonb,
 2,
 'The auditor obtains an understanding of the entity and its environment primarily during the planning and risk assessment phase of the audit. This understanding forms the basis for identifying and assessing risks of material misstatement, which in turn drives the design of further audit procedures. However, the auditor continues to update this understanding throughout the engagement.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'An auditor notes that the entity''s industry has experienced significant consolidation, with several competitors being acquired. This information is most relevant to the auditor''s assessment of:',
 '["The entity''s depreciation methods", "The entity''s payroll processing controls", "Going concern considerations and potential impairment of assets", "The entity''s accounts payable cutoff procedures"]'::jsonb,
 2,
 'Industry consolidation may signal competitive pressures, changing market dynamics, or potential going concern issues if the entity is struggling to compete. It may also affect asset valuations if the entity''s market position is weakening, potentially triggering impairment considerations for goodwill, intangible assets, or long-lived assets.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'When understanding the entity''s measurement and review of financial performance, the auditor should consider:',
 '["Only publicly available financial information", "Key performance indicators, budgets, variance analyses, and segment information used by management", "Only the financial performance metrics reported in the annual report", "The entity''s marketing campaign success rates"]'::jsonb,
 1,
 'Understanding how the entity measures and reviews its financial performance includes examining key performance indicators (KPIs), budgets and forecasts, variance analyses, segment and divisional reports, and other management tools. This understanding helps the auditor identify areas where management may be under pressure to manipulate results and develop appropriate analytical procedures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'An auditor is auditing a construction company for the first time. Which of the following industry-specific accounting issues would require particular attention?',
 '["Percentage-of-completion revenue recognition, contract loss provisions, and cost allocation methods","Standard depreciation of office furniture","The company''s employee health insurance premiums","The company''s use of petty cash"]'::jsonb,
 0,
 'Construction companies have industry-specific accounting issues including revenue recognition under the percentage-of-completion method (ASC 606 over-time recognition), estimated costs to complete, contract loss provisions, change orders, retainage receivables, and proper cost allocation between contracts. These areas involve significant management estimates and are prone to misstatement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'Knowledge of the entity''s related parties is important because:',
 '["Related party transactions may not be conducted at arm''s length, creating risks of material misstatement and disclosure requirements","Related party transactions are always fraudulent","The auditor must approve all related party transactions","Related party transactions always require a qualified opinion"]'::jsonb,
 0,
 'Related party transactions may not be conducted at arm''s length and therefore may not reflect fair market values or normal business terms. They create risks of material misstatement because the terms may be unusual, the transactions may lack economic substance, or required disclosures may be omitted. Understanding the entity''s related parties is essential for assessing these risks.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'An auditor is planning the audit of an entity that recently changed from a manual accounting system to an integrated ERP system. The auditor should:',
 '["Assess how the system change affects internal controls, data integrity, and the nature of available audit evidence","Rely on the same audit approach used when the entity had a manual system","Recommend that the entity revert to the manual system","Reduce the scope of the audit because automated systems are inherently more reliable"]'::jsonb,
 0,
 'A change from manual to automated accounting systems significantly affects the entity''s internal controls, the nature and availability of audit evidence, and the auditor''s approach to testing. The auditor should assess the new system''s effects on transaction processing, control activities, IT general controls, and the risks of material misstatement.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'The entity''s selection of accounting policies may indicate management bias if:',
 '["The entity consistently selects policies that increase reported earnings without clear business justification","The policies are consistent with industry practice and the reporting framework","The entity applies the same policies as in the prior year","The entity''s policies are audited by external specialists"]'::jsonb,
 0,
 'If management consistently selects accounting policies or changes accounting estimates in ways that increase reported earnings without clear business justification, this may indicate management bias toward favorable financial reporting. The auditor should be alert to such patterns as potential indicators of earnings management or fraud risk.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'When understanding a governmental entity''s environment, the auditor should pay particular attention to:',
 '["The entity''s marketing strategy","The entity''s customer satisfaction metrics","The entity''s stock price performance","Budgetary compliance requirements, fund accounting, and legal restrictions on the use of resources"]'::jsonb,
 3,
 'Governmental entities have unique environmental factors including budgetary compliance requirements (which may have legal consequences), fund accounting structures, restrictions on the use of resources (such as grant restrictions), and specialized reporting requirements under governmental accounting standards. These factors significantly affect the audit approach and risk assessment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'An entity operates in a highly regulated industry where non-compliance could result in significant fines or loss of operating licenses. The auditor should:',
 '["Focus only on financial statement accounts and ignore regulatory matters","Limit the scope of the audit to exclude regulatory matters","Obtain legal counsel''s guarantee that the entity is in full compliance","Consider the potential financial statement impact of non-compliance, including contingent liabilities and going concern implications"]'::jsonb,
 3,
 'When non-compliance could result in significant financial consequences, the auditor should consider potential financial statement impacts, including contingent liabilities (requiring disclosure or accrual), asset impairments, and going concern implications. While the auditor is not responsible for ensuring regulatory compliance, the financial consequences of non-compliance are within the audit scope.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'Which of the following is the most important reason for an auditor to perform a walkthrough of a significant class of transactions?',
 '["To obtain evidence about the operating effectiveness of controls","To confirm the entity''s understanding of the applicable financial reporting framework","To select items for detailed substantive testing","To gain an understanding of how transactions are initiated, authorized, processed, recorded, and reported"]'::jsonb,
 3,
 'A walkthrough involves tracing a transaction from initiation through final recording in the financial statements. The primary purpose is to gain an understanding (or confirm the auditor''s understanding) of how the entity processes transactions, including the controls in place. While a walkthrough provides evidence about the design and implementation of controls, it does not by itself test operating effectiveness.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'The auditor''s understanding of the entity includes understanding the entity''s ownership structure. This is important because:',
 '["It determines the audit fee","It determines the number of audit staff required","The auditor must own shares in the client","Ownership structure may affect related party risks, management incentives, and financial reporting pressures"]'::jsonb,
 3,
 'Understanding the ownership structure helps the auditor identify related party risks, management incentives (such as pressure to meet investor expectations), the influence of controlling shareholders, and potential conflicts of interest. For example, closely held entities may have different risks than publicly traded entities regarding related party transactions and management override.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Understanding the Entity and Environment',
 'An entity recently experienced a significant management turnover, with new executives in the CEO, CFO, and controller positions. How should this affect the auditor''s understanding of the entity?',
 '["It has no audit significance because management turnover is routine","The auditor should only focus on the new executives'' qualifications","The auditor should immediately resign from the engagement","The auditor should reassess the entity''s control environment, management integrity, and the risk of changes in accounting policies or estimates"]'::jsonb,
 3,
 'Significant management turnover, especially in key financial reporting positions, requires the auditor to reassess the control environment (tone at the top), evaluate the integrity of new management, assess the risk of changes in accounting policies or estimates, and consider whether the preconditions for the audit are still met. This may significantly affect risk assessments.',
 'hard');

-- =============================================================================
-- Topic 6: Materiality (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'Materiality for the financial statements as a whole is typically determined based on:',
 '["A percentage of a chosen benchmark such as total revenues, total assets, or net income", "The auditor''s subjective opinion without reference to any benchmark", "A fixed dollar amount set by auditing standards", "The amount of the audit fee"]'::jsonb,
 0,
 'Materiality is typically determined as a percentage of a chosen benchmark, such as total revenues, total assets, net income before taxes, or total equity. The auditor selects the benchmark based on the entity''s circumstances, the elements of the financial statements users focus on, and the stability of the benchmark.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'Performance materiality is set at an amount:',
 '["Equal to materiality for the financial statements as a whole", "Higher than materiality for the financial statements as a whole", "Lower than materiality for the financial statements as a whole to reduce the risk that aggregate uncorrected misstatements exceed overall materiality", "That is determined solely by the client''s audit committee"]'::jsonb,
 2,
 'Performance materiality is set at an amount lower than materiality for the financial statements as a whole. Its purpose is to reduce to an appropriately low level the probability that the aggregate of uncorrected and undetected misstatements exceeds materiality for the financial statements as a whole. It provides a buffer for undetected misstatements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'An auditor initially determined overall materiality to be $500,000 for an entity with $10 million in total revenues. During the audit, the auditor discovers that actual total revenues are only $7 million. The auditor should:',
 '["Maintain the original materiality level because it was properly determined at planning", "Ignore the change because revenue fluctuations are normal", "Revise materiality downward to reflect the lower revenue figure and evaluate the effect on the audit plan", "Increase materiality because the entity is smaller than expected"]'::jsonb,
 2,
 'AU-C 320 requires the auditor to revise materiality for the financial statements as a whole if the auditor becomes aware of information during the audit that would have caused the auditor to determine a different amount initially. A significant decrease in revenues would warrant a downward revision of materiality and reassessment of whether planned audit procedures are still sufficient.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'The concept of tolerable misstatement is most closely related to:',
 '["Materiality for the financial statements as a whole", "The amount of misstatement the auditor is willing to accept in a specific account balance or class of transactions", "The total amount of detected misstatements during the audit", "The threshold for reporting misstatements to those charged with governance"]'::jsonb,
 1,
 'Tolerable misstatement is the application of performance materiality to a particular sampling procedure. It represents the maximum misstatement in a specific account balance, class of transactions, or disclosure that the auditor is willing to accept without further investigation. It is set at or below performance materiality.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'Which of the following factors would most likely cause an auditor to set a lower materiality level?',
 '["The entity has a simple organizational structure", "The entity is publicly traded and subject to heightened regulatory scrutiny", "The entity has very few related party transactions", "The entity uses a well-established accounting information system"]'::jsonb,
 1,
 'Publicly traded entities are often subject to lower materiality levels because of heightened regulatory scrutiny, the broader group of financial statement users, and the potential market impact of misstatements. The auditor must consider the needs of users when determining materiality, and public company users typically have higher expectations for precision.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'The relationship between materiality and audit risk is:',
 '["Direct — as materiality increases, audit risk increases", "Inverse — as materiality increases, audit risk decreases (the auditor can tolerate more misstatement before it becomes material)", "There is no relationship between materiality and audit risk", "Materiality and audit risk are the same concept"]'::jsonb,
 1,
 'There is an inverse relationship between materiality and audit risk. As the materiality level increases, audit risk decreases because a higher materiality threshold means the auditor can tolerate a larger misstatement before considering it material. Conversely, a lower materiality level increases audit risk because smaller misstatements become significant, requiring more extensive testing.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'When determining materiality, an auditor uses net income before taxes as a benchmark for a stable, profitable entity. Which percentage range is most commonly applied to this benchmark?',
 '["1% to 2%", "5% to 10%", "15% to 20%", "25% to 30%"]'::jsonb,
 1,
 'When using net income before taxes as a benchmark, auditors commonly apply a percentage in the range of 5% to 10%. This range is widely accepted in practice, though the specific percentage chosen depends on the auditor''s professional judgment and the entity''s specific circumstances. Other benchmarks (like total revenues or total assets) use different percentage ranges.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'An auditor is auditing a not-for-profit organization. Which benchmark would most likely be appropriate for determining materiality?',
 '["Net income", "Earnings per share", "Total revenues or total expenses", "Retained earnings"]'::jsonb,
 2,
 'Not-for-profit organizations do not have net income or earnings per share in the traditional sense. Total revenues or total expenses are typically more appropriate benchmarks because they better reflect the scale of the organization''s operations and are the figures most relevant to users of not-for-profit financial statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'The auditor determines that a $50,000 misstatement in accounts payable is immaterial to the financial statements as a whole. However, the misstatement causes the entity to violate a debt covenant. In this situation, the auditor should:',
 '["Ignore the misstatement because it is quantitatively immaterial", "Consider the misstatement material because of its qualitative significance in causing a covenant violation", "Adjust the materiality level upward to make the misstatement clearly immaterial", "Report the misstatement only to management, not in the audit report"]'::jsonb,
 1,
 'Materiality is not solely a quantitative concept. A misstatement that is quantitatively small may be qualitatively material if it causes a debt covenant violation, changes a loss to a profit (or vice versa), affects management compensation, or involves fraud. The auditor must consider both quantitative and qualitative factors when evaluating materiality.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'Specific materiality for particular classes of transactions, account balances, or disclosures is set when:',
 '["There are particular classes of transactions, balances, or disclosures for which misstatements of lesser amounts than overall materiality could reasonably be expected to influence users'' economic decisions","It is always required for every account balance","The auditor wants to reduce the audit fee","Management requests a lower materiality threshold for specific accounts"]'::jsonb,
 0,
 'Specific materiality is established when the auditor determines that, in the specific circumstances of the entity, there are particular classes of transactions, account balances, or disclosures for which misstatements of lesser amounts than materiality for the financial statements as a whole could reasonably be expected to influence users'' decisions. Examples include related party disclosures and executive compensation.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'When the auditor revises materiality during the audit, the auditor should:',
 '["Determine whether the overall audit strategy and audit plan need to be revised as a result","Only revise upward, never downward","Notify the client before making any revision","Only revise materiality at the end of the audit during the evaluation of misstatements"]'::jsonb,
 0,
 'When materiality is revised during the audit (whether upward or downward), the auditor must evaluate whether the overall audit strategy and audit plan (including the nature, timing, and extent of further audit procedures) need to be revised. A downward revision may require additional procedures; an upward revision may mean procedures already performed were sufficient.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'An auditor sets overall materiality at $200,000 and performance materiality at $150,000. During the audit, uncorrected misstatements aggregate to $160,000. What should the auditor conclude?',
 '["The aggregate exceeds performance materiality, indicating the auditor should perform additional procedures or request management to correct the misstatements","The aggregate exceeds performance materiality but not overall materiality, so no modification is needed","The aggregate is below overall materiality so the financial statements are fairly presented","The auditor should increase performance materiality to $170,000 to accommodate the misstatements"]'::jsonb,
 0,
 'When aggregate uncorrected misstatements exceed performance materiality, the auditor should be concerned that the total of uncorrected and undetected misstatements could exceed overall materiality. The auditor should perform additional procedures, request that management correct the identified misstatements, or evaluate whether a modified opinion is necessary.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'Which of the following is a qualitative factor that might make a quantitatively small misstatement material?',
 '["The misstatement involves concealment or fraud","The misstatement is in a large account balance","The misstatement was identified late in the audit","The misstatement relates to a routine transaction"]'::jsonb,
 0,
 'Qualitative factors that can make quantitatively small misstatements material include: involvement of fraud or illegal acts, misstatements that affect compliance with regulatory requirements or loan covenants, misstatements that change a loss to a profit or vice versa, misstatements affecting executive compensation or bonus calculations, and misstatements involving concealment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'An entity has volatile earnings with net income fluctuating significantly from year to year. When selecting a benchmark for materiality, the auditor should:',
 '["Always use net income regardless of volatility","Ask management which benchmark to use","Use the highest net income figure from the past five years","Consider using a more stable benchmark such as total revenues or total assets"]'::jsonb,
 3,
 'When net income is volatile, it may not be an appropriate benchmark for materiality because the resulting materiality level would also fluctuate significantly. The auditor should consider using a more stable benchmark such as total revenues, total assets, or a normalized (averaged) measure of income to establish a consistent and meaningful materiality level.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'Materiality is determined by the auditor and:',
 '["Must be disclosed to management and those charged with governance","Is established by auditing standards at a specific percentage","Must be approved by the audit committee before the audit begins","Is a matter of the auditor''s professional judgment and is not defined by a fixed quantitative formula"]'::jsonb,
 3,
 'The determination of materiality is a matter of the auditor''s professional judgment and is affected by the auditor''s perception of the financial information needs of users. Auditing standards do not prescribe a specific percentage or formula; rather, the auditor exercises judgment in selecting benchmarks and percentages based on the entity''s specific circumstances.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'In a group audit, the component auditor''s materiality for a component should be:',
 '["Equal to group materiality", "Higher than group materiality", "Lower than group materiality for the financial statements as a whole", "Determined without reference to group materiality"]'::jsonb,
 2,
 'Component materiality must be lower than group materiality for the financial statements as a whole. This ensures that the aggregate of uncorrected and undetected misstatements across all components does not exceed group materiality. The group auditor establishes component materiality, which the component auditor applies in performing work on the component.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'If the auditor determines that a lower materiality level is appropriate for a particular class of transactions (specific materiality), the auditor must also:',
 '["Notify the SEC of the lower materiality level","Apply the same lower materiality to all other classes of transactions","Obtain approval from the client''s audit committee","Determine a corresponding lower performance materiality for that class of transactions"]'::jsonb,
 3,
 'When the auditor sets a specific (lower) materiality for a particular class of transactions, account balance, or disclosure, a corresponding performance materiality must also be determined for that item. This ensures that the audit procedures for that particular area are designed to detect misstatements at the appropriate lower threshold.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'At the conclusion of the audit, the auditor evaluates whether uncorrected misstatements are material, individually or in the aggregate. This evaluation should consider:',
 '["Only the quantitative effect of the misstatements", "Only the misstatements found during substantive testing, not those from tests of controls", "The size and nature of the misstatements in relation to particular classes of transactions, account balances, disclosures, and the financial statements as a whole", "Only misstatements that exceed performance materiality"]'::jsonb,
 2,
 'The final evaluation of uncorrected misstatements requires the auditor to consider their effect on particular classes of transactions, account balances, disclosures, and the financial statements as a whole. Both quantitative (size) and qualitative (nature) factors must be considered, and all identified misstatements — not just those exceeding performance materiality — must be included in the aggregate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'An entity is a startup with no revenue and negative net income. What benchmark might the auditor use for materiality?',
 '["Net income, applying a standard 5% benchmark","Revenue, applying a standard 1% benchmark","No materiality can be set because the entity has no income","Total assets or total expenditures as a more meaningful benchmark for the entity''s size"]'::jsonb,
 3,
 'For startup entities with no revenue and negative net income, traditional benchmarks may not be meaningful. The auditor should consider alternative benchmarks such as total assets, total expenditures, or total equity that better reflect the size and scale of the entity''s operations and are more relevant to users of the financial statements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Materiality',
 'The auditor''s determination of materiality is made:',
 '["Based on the financial statements of the prior year because the current year statements are not yet finalized","Only after all audit evidence has been gathered","Solely based on the preferences of the entity''s management","In light of surrounding circumstances and is necessarily based on the auditor''s consideration of the needs of users as a group"]'::jsonb,
 3,
 'Materiality is determined in light of surrounding circumstances and is based on the auditor''s consideration of the needs of users as a group, not individual users. The auditor considers what level of misstatement would be expected to influence the economic decisions of users who rely on the financial statements. While determined during planning, it may be based on preliminary or prior-year figures.',
 'easy');

-- =============================================================================
-- Topic 7: Responding to Assessed Risks (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'Overall responses to assessed risks at the financial statement level may include:',
 '["Assigning more experienced staff, increasing supervision, and incorporating additional elements of unpredictability in audit procedures", "Reducing the number of audit staff assigned to the engagement", "Lowering the materiality level to zero", "Eliminating all tests of controls"]'::jsonb,
 0,
 'Overall responses to assessed risks at the financial statement level include assigning more experienced staff or staff with specialized skills, increasing the level of supervision, incorporating additional elements of unpredictability in the selection of audit procedures, and making general changes to the nature, timing, or extent of procedures (such as performing substantive procedures at period end rather than at an interim date).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'When the auditor assesses the risk of material misstatement as high for a particular assertion, the auditor should design further audit procedures that:',
 '["Are less extensive because the higher risk has already been identified", "Are more persuasive, which may mean increasing the quantity of evidence, obtaining more relevant or reliable evidence, or both", "Focus exclusively on analytical procedures", "Rely primarily on inquiry of management"]'::jsonb,
 1,
 'When assessed risk is high, the auditor must design procedures that provide more persuasive evidence. This can be achieved by increasing the quantity of evidence (larger sample sizes), obtaining more reliable evidence (external vs. internal sources), or both. The nature, timing, and extent of procedures should all be responsive to the assessed level of risk.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'The nature of further audit procedures refers to:',
 '["When the procedures are performed", "How many items are tested", "The type and purpose of the procedures (inspection, observation, inquiry, confirmation, recalculation, reperformance, or analytical procedures)", "The cost of performing the procedures"]'::jsonb,
 2,
 'The nature of audit procedures refers to their type and purpose — that is, whether the auditor uses inspection, observation, inquiry, external confirmation, recalculation, reperformance, analytical procedures, or a combination. The nature of procedures is one of three dimensions (along with timing and extent) that the auditor adjusts in response to assessed risks.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'An auditor identifies a significant risk related to revenue recognition. In responding to this risk, the auditor should:',
 '["Treat it the same as any other assessed risk", "Rely solely on inquiry of management about revenue recognition policies", "Design and perform audit procedures specifically responsive to the significant risk, which may include tests of controls or substantive procedures targeted at the risk", "Issue a qualified opinion due to the existence of the significant risk"]'::jsonb,
 2,
 'Significant risks require special audit consideration. The auditor should design and perform audit procedures specifically responsive to the significant risk, which may include targeted substantive procedures, tests of controls (if the auditor plans to rely on controls), or a combination. Significant risks cannot be addressed through routine audit procedures alone.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'The timing of further audit procedures refers to:',
 '["The budget allocated for the procedures", "Whether the procedures are performed at an interim date or at period end", "The type of audit procedures selected", "The number of items included in the sample"]'::jsonb,
 1,
 'The timing of audit procedures refers to when they are performed — at an interim date (before period end) or at or after the period end. Testing at an interim date may be efficient but creates a risk that misstatements arising in the remaining period are not detected. The auditor must consider whether interim testing, combined with additional procedures covering the remaining period, provides sufficient evidence.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'When responding to the assessed risk of management override of controls, the auditor is required to:',
 '["Accept management''s representations that override has not occurred", "Test the appropriateness of journal entries and other adjustments, review accounting estimates for bias, and evaluate the business rationale for significant unusual transactions", "Only test journal entries posted by the CFO", "Perform these procedures only when fraud is suspected"]'::jsonb,
 1,
 'AU-C 240 requires the auditor to design and perform procedures to address the risk of management override of controls regardless of the assessed risk. These mandatory procedures include: (1) testing the appropriateness of journal entries and other adjustments, (2) reviewing accounting estimates for bias, and (3) evaluating the business rationale for significant unusual transactions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'The extent of further audit procedures refers to:',
 '["The quantity of a specific procedure to be performed, such as sample size or number of observations", "The variety of different procedures selected", "When the procedures are performed during the audit", "The geographic locations where procedures are performed"]'::jsonb,
 0,
 'The extent of audit procedures refers to how much of a specific procedure is performed — for example, the sample size for substantive testing, the number of control observations, or the number of locations visited. Greater extent of procedures (larger samples) is appropriate when assessed risk is higher or when the auditor needs more evidence for a specific assertion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'An auditor assesses the risk of material misstatement for inventory valuation as high. Which of the following responses is most appropriate?',
 '["Reduce the number of inventory observations", "Perform only inquiry and analytical procedures", "Engage a specialist to assist with inventory pricing, test a larger sample of inventory items for proper valuation, and consider physical inspection at additional locations", "Rely on the prior year''s inventory valuation testing"]'::jsonb,
 2,
 'When inventory valuation risk is assessed as high, the auditor should respond with more robust procedures such as engaging specialists for complex valuations, testing a larger sample of items, performing additional price testing, considering lower of cost or net realizable value analyses, and potentially inspecting inventory at more locations to verify condition and existence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'When the auditor plans to rely on controls to reduce substantive testing, the auditor must first:',
 '["Obtain management''s written assurance that controls are effective", "Test the operating effectiveness of those controls", "Inform the audit committee of the planned reliance", "Verify that the controls were designed by an external consultant"]'::jsonb,
 1,
 'Before relying on controls to reduce the nature, timing, or extent of substantive procedures, the auditor must test the operating effectiveness of those controls. Simply understanding the design and implementation of controls is not sufficient — the auditor needs evidence that the controls operated effectively throughout the period of intended reliance.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'Incorporating unpredictability into audit procedures is important because it:',
 '["Reduces audit costs", "Makes the audit more efficient", "Helps detect fraud by preventing management from anticipating and preparing for specific audit procedures", "Satisfies regulatory reporting requirements"]'::jsonb,
 2,
 'Incorporating unpredictability helps detect fraud because it prevents management and employees from anticipating which procedures will be performed, when, and on what items. Examples include performing procedures on unexpected items, at unexpected locations, changing the timing of tests, or using different sampling methods than in prior years.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'A significant risk is defined as an identified risk of material misstatement that, in the auditor''s judgment:',
 '["Is likely to result in a qualified opinion", "Requires special audit consideration due to its nature or the magnitude of potential misstatement", "Automatically requires the auditor to disclaim an opinion", "Cannot be addressed by any audit procedure"]'::jsonb,
 1,
 'A significant risk is an identified risk of material misstatement that, in the auditor''s professional judgment, requires special audit consideration. Factors that may indicate a significant risk include complexity, subjectivity, susceptibility to fraud, whether the risk involves significant transactions outside the normal course of business, or the degree of estimation uncertainty.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'When substantive procedures are performed at an interim date, the auditor must:',
 '["Perform additional substantive procedures or a combination of substantive procedures and tests of controls to cover the remaining period","Issue the audit report as of the interim date","Accept management representations to cover the remaining period","Reduce the scope of procedures for the period end"]'::jsonb,
 0,
 'When substantive procedures are performed at an interim date, there is a risk that misstatements exist at period end that are not detected. To bridge this gap, the auditor must perform additional substantive procedures, tests of controls, or a combination of both for the remaining period from the interim date to period end to obtain a reasonable basis for the audit opinion.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'For a significant risk, the auditor''s substantive procedures must include which of the following?',
 '["Only analytical procedures", "Only tests of controls", "Substantive procedures specifically designed to address the significant risk, which may include tests of details", "Only inquiry of management about the risk"]'::jsonb,
 2,
 'For significant risks, the auditor should perform substantive procedures that are specifically responsive to the assessed risk. If the approach to a significant risk consists only of substantive procedures, those procedures must include tests of details (not solely analytical procedures). This is because analytical procedures alone may not provide sufficiently precise evidence for significant risks.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'An auditor is responding to an assessed risk of material misstatement in the accounts receivable balance. Which combination of procedures would provide the most persuasive evidence?',
 '["External confirmation of accounts receivable balances combined with tests of subsequent cash receipts","Inquiry of management and review of the aging schedule","Observation of the accounts receivable clerk and review of the general ledger","Analytical procedures comparing the current year balance to the prior year"]'::jsonb,
 0,
 'External confirmation of accounts receivable balances provides direct third-party evidence of existence and accuracy, while testing subsequent cash receipts provides additional evidence of collectibility (valuation). This combination addresses multiple assertions and provides highly persuasive evidence because it includes external sources and direct verification.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'When the auditor identifies risks at the assertion level for specific classes of transactions, account balances, or disclosures, further audit procedures must:',
 '["Be designed to have a clear linkage between the assessed risks and the nature, timing, and extent of the procedures","Be the same for all identified risks regardless of their assessed level","Focus only on the highest-risk assertions","Be limited to substantive analytical procedures"]'::jsonb,
 0,
 'Further audit procedures must have a clear linkage between the assessed risks at the assertion level and the nature, timing, and extent of the procedures designed to respond to those risks. This linkage ensures that the audit plan is responsive to the specific risks identified and that sufficient appropriate evidence is obtained for each relevant assertion.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'Regardless of the assessed risks of material misstatement, the auditor is required to design and perform substantive procedures for:',
 '["Only those account balances that have changed significantly from the prior year","Only revenue and expense accounts","Only those accounts where internal controls are weak","Each material class of transactions, account balance, and disclosure"]'::jsonb,
 3,
 'Regardless of the assessed risks of material misstatement, the auditor must design and perform substantive procedures for each material class of transactions, account balance, and disclosure. This is because the auditor''s risk assessment is judgmental and may not identify all risks, and there are inherent limitations in internal controls including management override.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'An auditor decides to shift the timing of substantive procedures from interim to period end. This decision is most likely caused by:',
 '["A decrease in the assessed risk of material misstatement","Management''s preference for less interim disruption","A reduction in the audit budget","An increase in the assessed risk of material misstatement since the interim testing was performed"]'::jsonb,
 3,
 'Shifting substantive procedures from interim to period end is typically driven by an increase in assessed risk since interim testing was performed, or because interim testing results indicated the need for additional evidence at period end. Testing at period end provides stronger evidence because it covers the full period and eliminates the risk of misstatements arising in the remaining period.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'The auditor''s overall response to assessed risks at the financial statement level is documented in:',
 '["The management representation letter","The audit report","The engagement letter","The overall audit strategy"]'::jsonb,
 3,
 'The overall audit strategy documents the auditor''s overall responses to the assessed risks of material misstatement at the financial statement level. This includes decisions about staffing, supervision, the need for specialists, the degree of unpredictability, and the general approach to the audit (such as emphasizing substantive procedures or a combined approach).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'When the assessed risk of material misstatement is based on the expectation that controls are operating effectively, the auditor''s further audit procedures should include:',
 '["Only substantive procedures with no reference to controls","Only management inquiry about control effectiveness","Only analytical procedures","Tests of controls to obtain evidence about the operating effectiveness of the relevant controls"]'::jsonb,
 3,
 'When the auditor''s assessment of the risk of material misstatement at the assertion level includes an expectation that controls are operating effectively, the auditor must test those controls to obtain audit evidence about their operating effectiveness. The auditor cannot simply assume controls are effective; evidence must be obtained.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Responding to Assessed Risks',
 'An auditor identifies that the entity has entered into several complex derivative transactions near year-end. The most appropriate response is to:',
 '["Accept management''s valuation of the derivatives without further testing","Rely on the prior year''s treatment of derivatives","Exclude the derivatives from the audit scope","Design specific substantive procedures to test the valuation and classification of the derivatives, potentially using a specialist"]'::jsonb,
 3,
 'Complex derivative transactions near year-end present significant risks related to valuation, classification, and disclosure. The auditor should design specific substantive procedures, which may include engaging a valuation specialist, testing the inputs and assumptions used in fair value measurements, verifying classifications (trading, hedging), and confirming terms with counterparties.',
 'medium');

-- =============================================================================
-- Topic 8: Using the Work of Others (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'Before using the work of internal auditors, the external auditor must evaluate the internal auditors'':',
 '["Marketing skills and client relationship management", "Competence and objectivity", "Knowledge of the external auditor''s methodology", "Ability to prepare the entity''s financial statements"]'::jsonb,
 1,
 'AU-C 610 requires the external auditor to evaluate the competence and objectivity of the internal audit function before using its work. Competence is assessed by considering qualifications, training, and experience. Objectivity is assessed by considering the organizational status and reporting relationships of the internal audit function.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'When using the work of a management''s specialist, the auditor should:',
 '["Accept the specialist''s findings without further evaluation", "Evaluate the competence, capabilities, and objectivity of the specialist, and assess the relevance and reasonableness of the specialist''s findings", "Require that the specialist be employed by the audit firm", "Ignore the specialist''s work and perform independent procedures"]'::jsonb,
 1,
 'When management uses a specialist (e.g., an actuary for pension calculations or an appraiser for fair value estimates), the auditor should evaluate the specialist''s competence, capabilities, and objectivity. The auditor should also assess whether the specialist''s work is adequate for the auditor''s purposes, including evaluating the relevance and reasonableness of the specialist''s assumptions, methods, and findings.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'A group audit engagement partner is responsible for the audit of consolidated financial statements. With respect to component auditors, the group engagement partner:',
 '["Has no responsibility for the work performed by component auditors", "May share responsibility equally with each component auditor", "Is responsible for the direction, supervision, and performance of the group audit engagement, including work performed by component auditors", "Only needs to review the component auditor''s report, not their workpapers"]'::jsonb,
 2,
 'The group engagement partner has overall responsibility for the direction, supervision, and performance of the group audit engagement. This includes determining the type and extent of work to be performed on components, evaluating the sufficiency and appropriateness of audit evidence obtained, and forming the group audit opinion. The group engagement partner cannot delegate this responsibility.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'When the auditor engages an auditor''s specialist to assist with audit procedures, the responsibility for the audit opinion:',
 '["Is shared between the auditor and the specialist", "Shifts to the specialist for the areas where the specialist''s work is used", "Remains solely with the auditor", "Is determined by the engagement letter with the specialist"]'::jsonb,
 2,
 'Even when using an auditor''s specialist, the responsibility for the audit opinion remains solely with the auditor. The specialist''s work is used as audit evidence, but the auditor must evaluate the adequacy and appropriateness of that work. The auditor cannot reference the specialist in an unmodified opinion to divide or reduce responsibility.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'When a client uses a service organization to process significant transactions, the auditor should:',
 '["Ignore the service organization because it is not part of the client", "Obtain an understanding of how the service organization''s services affect the client''s internal control and assess the risks of material misstatement", "Require the client to bring all processing in-house", "Issue a disclaimer of opinion because the auditor cannot test the service organization''s controls"]'::jsonb,
 1,
 'When a client uses a service organization (e.g., a payroll processor or cloud-based accounting system), the auditor must understand how the service organization''s services affect the client''s internal control relevant to the audit. The auditor should assess the risks of material misstatement and determine whether sufficient evidence can be obtained, potentially through a SOC report or direct testing.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'A Type 2 SOC 1 report differs from a Type 1 SOC 1 report primarily because a Type 2 report:',
 '["Only describes the service organization''s controls", "Includes both a description and tests of the operating effectiveness of controls over a period of time", "Is prepared by the user organization rather than the service organization", "Does not require an independent auditor''s involvement"]'::jsonb,
 1,
 'A Type 1 SOC 1 report includes a description of the service organization''s system and the suitability of the design of controls at a point in time. A Type 2 SOC 1 report includes the same description plus tests of the operating effectiveness of those controls over a specified period (typically 6-12 months), providing more useful evidence for the user auditor.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'The external auditor may use the work of the internal audit function to:',
 '["Replace all substantive testing on material accounts", "Obtain audit evidence by using work the internal auditors have performed, or by using internal auditors to provide direct assistance under the external auditor''s supervision", "Eliminate the need for the external auditor to understand internal control", "Allow the internal auditors to sign the audit report"]'::jsonb,
 1,
 'The external auditor may use the internal audit function''s work in two ways: (1) by using work that the internal auditors have already performed as audit evidence, or (2) by requesting direct assistance from internal auditors under the external auditor''s direction, supervision, and review. In either case, the external auditor retains sole responsibility for the audit opinion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'When evaluating the objectivity of the internal audit function, the external auditor should consider:',
 '["Whether the internal audit function reports to those charged with governance and is free from operational responsibilities that could compromise objectivity","The internal auditors'' compensation levels","Whether internal auditors hold CPA licenses","The number of years the internal audit department has existed"]'::jsonb,
 0,
 'The objectivity of the internal audit function is primarily assessed by examining its organizational status and reporting relationships. An internal audit function that reports directly to those charged with governance (such as the audit committee) and is free from operational responsibilities that could compromise its ability to make unbiased assessments is more likely to be objective.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'When the external auditor plans to use the work of internal auditors on areas that involve significant judgments, the external auditor should:',
 '["Increase the extent of direct testing in those areas because the external auditor should not rely heavily on internal audit work for areas requiring significant judgment", "Accept the internal auditors'' conclusions without additional testing", "Reduce the scope of the external audit in those areas", "Delegate the judgment entirely to the internal audit function"]'::jsonb,
 0,
 'In areas that involve significant judgments (such as accounting estimates, impairment assessments, or going concern evaluations), the external auditor should exercise more caution when using internal audit work and should increase the extent of direct testing. The greater the degree of judgment required, the more the external auditor should rely on their own procedures.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'An auditor''s specialist differs from management''s specialist in that the auditor''s specialist:',
 '["Is engaged or employed by the auditor to assist the auditor in obtaining sufficient appropriate audit evidence","Is always a CPA","Must be an employee of the audit firm","Cannot provide evidence about accounting estimates"]'::jsonb,
 0,
 'An auditor''s specialist is an individual or organization possessing expertise in a field other than accounting or auditing, whose work is used by the auditor to assist in obtaining sufficient appropriate audit evidence. The specialist may be engaged (external) or employed (internal) by the auditor. Management''s specialist, in contrast, is engaged by management to assist in preparing the financial statements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'In a group audit, when a component is significant due to its individual financial significance, the group engagement team should:',
 '["Perform only analytical procedures on the component", "Rely solely on the component auditor''s report", "Perform an audit of the financial information of the component using component materiality, or have the component auditor do so", "Exclude the component from the group audit"]'::jsonb,
 2,
 'For a component that is significant due to its individual financial significance, the group engagement team (or a component auditor on their behalf) should perform an audit of the component''s financial information using component materiality. This ensures that sufficient appropriate evidence is obtained for the significant component to support the group audit opinion.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'When evaluating the competence of management''s specialist, the auditor should consider:',
 '["The specialist''s professional certification, experience, and reputation in the relevant field","Only the specialist''s academic credentials","Whether the specialist is willing to modify their findings at management''s request","Only whether the specialist is independent of the audit firm"]'::jsonb,
 0,
 'Evaluating the competence of management''s specialist involves considering the specialist''s professional certification or licensing, experience and reputation in the relevant field, the nature and scope of the specialist''s work, and whether the specialist''s methods and assumptions are appropriate in the circumstances.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'If a SOC 1 Type 2 report contains exceptions in control testing, the user auditor should:',
 '["Ignore the exceptions because the service auditor already addressed them", "Automatically disclaim an opinion on the financial statements", "Evaluate whether the exceptions indicate control deficiencies that affect the user entity''s financial statements and perform additional procedures as needed", "Require the service organization to reissue the report without exceptions"]'::jsonb,
 2,
 'When a SOC 1 Type 2 report contains exceptions, the user auditor should evaluate whether those exceptions affect controls relevant to the user entity''s financial statements. The user auditor should consider the nature and significance of the exceptions, whether complementary user entity controls mitigate the impact, and whether additional procedures are needed to obtain sufficient evidence.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'The group engagement partner must be satisfied that sufficient appropriate evidence has been obtained from component auditors. This means the group engagement partner must:',
 '["Review component auditor communications, significant findings, and evaluate whether sufficient appropriate evidence has been obtained for the group opinion","Simply accept each component auditor''s report without review","Visit each component and personally supervise all testing","Only review the component auditors'' billing statements"]'::jsonb,
 0,
 'The group engagement partner must review component auditor communications (including audit findings, significant risks, and control deficiencies), evaluate whether sufficient appropriate evidence has been obtained for the group audit opinion, and consider the need for additional procedures. This review is essential even when the group engagement partner relies on the component auditor.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'When using internal auditors to provide direct assistance, the external auditor must:',
 '["Allow internal auditors to work independently without supervision","Assign internal auditors only to observe inventory","Give internal auditors signing authority on the audit report","Direct, supervise, and review the internal auditors'' work, and evaluate threats to objectivity"]'::jsonb,
 3,
 'When internal auditors provide direct assistance, the external auditor must direct them (regarding the nature, timing, and extent of work), supervise them (during performance of work), and review their work (to evaluate whether it is adequate). The external auditor must also evaluate threats to the internal auditors'' objectivity and apply appropriate safeguards.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'An auditor is considering whether to make reference to a component auditor in the group audit report. Making reference to a component auditor is:',
 '["Required in all group audit engagements", "Not permitted under any circumstances", "Permitted for non-issuer audits when certain conditions are met, and serves to divide responsibility between the group and component auditors", "Required only when the component is a foreign subsidiary"]'::jsonb,
 2,
 'For non-issuer (non-public) audits, the group engagement partner may make reference to a component auditor in the group audit report. This reference divides responsibility between the group auditor and the component auditor. Making reference is not permitted for issuer audits under PCAOB standards. Certain conditions must be met, including the component auditor''s independence and compliance with relevant standards.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'When the service organization''s controls are relevant to the user entity''s financial statements and the user auditor cannot obtain sufficient evidence from the user entity alone, the user auditor may:',
 '["Issue an unmodified opinion without obtaining evidence about the service organization''s controls","Require the user entity to terminate the service organization relationship","Disclaim an opinion without attempting to obtain evidence","Obtain a SOC report from the service organization, perform tests directly at the service organization, or use another auditor to perform procedures"]'::jsonb,
 3,
 'When the user auditor cannot obtain sufficient evidence from the user entity alone regarding the service organization''s controls, the user auditor has several options: (1) obtain and evaluate a SOC 1 report, (2) contact the service organization through the user entity to request specific procedures, or (3) engage another auditor to perform procedures at the service organization.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'The objectivity of an auditor''s specialist should be evaluated by considering:',
 '["The specialist''s fee arrangement with the audit firm","Whether the specialist uses the same software as the audit firm","The specialist''s political affiliations","Whether the specialist has any relationships with the entity that could compromise the specialist''s objectivity"]'::jsonb,
 3,
 'The auditor should consider whether the specialist has any relationship with the entity (financial interests, business relationships, employment relationships) that could compromise objectivity. If the specialist is management''s specialist, objectivity concerns are particularly important because the specialist may be influenced by management''s interests.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'In a group audit, the group engagement partner determines that a component auditor does not meet independence or competence requirements. The group engagement partner should:',
 '["Proceed with the audit and disclose the issue in the group audit report","Resign from the group audit engagement","Accept the component auditor''s work but apply additional analytical procedures","Not use the work of that component auditor and determine alternative procedures for the component"]'::jsonb,
 3,
 'If the group engagement partner determines that a component auditor lacks independence or competence, the group engagement partner should not use that component auditor''s work. Alternative approaches include having the group engagement team perform the work directly, engaging a different component auditor, or performing specified procedures on the component.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Using the Work of Others',
 'When using a management''s specialist''s work as audit evidence, the auditor should evaluate all of the following EXCEPT:',
 '["The relevance and reasonableness of the specialist''s findings","The assumptions and methods used by the specialist","Whether the specialist''s findings are consistent with other audit evidence","The specialist''s billing rate compared to other specialists in the market"]'::jsonb,
 3,
 'The auditor evaluates the relevance and reasonableness of the specialist''s findings, the appropriateness of the assumptions and methods used, the consistency of the specialist''s work with other audit evidence, and the completeness and accuracy of source data used by the specialist. The specialist''s billing rate is not a factor in evaluating the quality of the specialist''s work as audit evidence.',
 'easy');

-- =============================================================================
-- Topic 9: Tests of Controls (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'The purpose of testing the operating effectiveness of controls is to:',
 '["Obtain evidence about whether controls operated effectively throughout the period of intended reliance", "Ensure management is complying with all laws and regulations", "Determine the appropriate audit fee", "Evaluate the competence of the entity''s accounting staff"]'::jsonb,
 0,
 'Tests of controls are designed to evaluate whether controls operated effectively throughout the period for which the auditor intends to rely on them. Operating effectiveness means that the control was applied consistently and as designed by personnel with appropriate authority and competence. This evidence supports the auditor''s assessment of control risk.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'Which of the following audit procedures would be most effective for testing the operating effectiveness of a segregation-of-duties control?',
 '["Recalculation of account balances", "Observation of personnel performing their assigned duties and inspection of authorization signatures", "Sending confirmation letters to customers", "Performing analytical procedures on account balances"]'::jsonb,
 1,
 'Observation and inspection are the most effective procedures for testing segregation of duties. The auditor can observe that different individuals perform incompatible functions (such as authorization, recording, and custody) and inspect evidence such as authorization signatures, access logs, and approvals to verify that the control is operating as designed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'When testing a manual control that is performed monthly (12 times per year), the auditor should test:',
 '["Only 1 occurrence because the control is well-designed", "A sufficient number of occurrences to provide evidence of operating effectiveness, typically testing each occurrence or most occurrences", "Only the most recent occurrence", "Only the occurrences at year-end"]'::jsonb,
 1,
 'For a control that operates infrequently (such as a monthly reconciliation), the auditor typically tests each occurrence or most of them because the small population does not lend itself to sampling. For a control that operates 12 times per year, testing all 12 occurrences provides the strongest evidence of consistent operating effectiveness throughout the period.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'A dual-purpose test is a test that:',
 '["Tests two different controls simultaneously", "Tests both the operating effectiveness of a control and provides substantive evidence about an account balance or transaction class in a single procedure", "Tests controls at two different locations", "Tests the same control at two different points in time"]'::jsonb,
 1,
 'A dual-purpose test simultaneously serves as both a test of controls and a substantive test of details. For example, examining a purchase transaction for proper authorization (test of control) and correct dollar amount (substantive test) at the same time. This approach is efficient because it addresses both control effectiveness and account balance accuracy in a single procedure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'An auditor plans to rely on controls that were tested in the prior year and have not changed. Under auditing standards, the auditor:',
 '["May rely on the prior year''s control testing without performing any current year tests", "Must retest the controls every year but may reduce the extent of testing if the controls have not changed", "Must perform the same extent of testing as in the prior year regardless of changes", "May rely on the prior year''s testing for up to five years before retesting"]'::jsonb,
 1,
 'Auditing standards require the auditor to test controls in each audit period when the auditor plans to rely on them. However, the auditor may adopt a rotation approach where controls are tested at least once every three audits, provided there have been no changes. In any case, some testing must occur in the current period — the auditor cannot simply rely on prior-year testing alone.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'Which of the following is NOT a method of testing controls?',
 '["Inquiry of entity personnel", "Observation of control operation", "Confirmation of accounts receivable", "Inspection of documents and reports"]'::jsonb,
 2,
 'Confirmation of accounts receivable is a substantive procedure, not a test of controls. Methods for testing controls include inquiry, observation, inspection of documents showing evidence of control performance, and reperformance of the control by the auditor. Each method provides different levels of evidence about control effectiveness.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'Reperformance as a test of controls involves:',
 '["The auditor observing management perform the control", "The auditor independently executing the control procedure to verify that it produces the expected result", "Management repeating the control at the auditor''s request", "The auditor recalculating financial statement balances"]'::jsonb,
 1,
 'Reperformance involves the auditor independently executing the same procedure or control that the entity''s personnel performed, to determine whether the control produces the correct results. For example, the auditor might independently reconcile a bank statement to verify that management''s reconciliation control operates effectively.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'When testing automated (IT) controls, the auditor typically needs to:',
 '["Test the control once (or a few times) combined with testing IT general controls that support the automated control''s continued functioning","Test every transaction processed by the system","Test the control the same number of times as a manual control","Ignore automated controls because they are inherently reliable"]'::jsonb,
 0,
 'Automated controls are inherently consistent — once programmed correctly, they perform the same way every time. Therefore, the auditor typically tests the control once (or a small number of times) to verify it works correctly, combined with testing IT general controls (program change controls, access controls) that ensure the automated control has not been altered since it was initially tested.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'If the auditor discovers that a key control has not been operating effectively during a portion of the audit period, the auditor should:',
 '["Assess the impact on the risk assessment, determine the extent of any additional audit procedures needed, and consider whether the control failure affects other areas of the audit","Ignore the control failure if it occurred early in the period","Immediately issue an adverse opinion","Continue to rely on the control for the entire period"]'::jsonb,
 0,
 'When a control failure is discovered, the auditor must assess its impact on the risk assessment and planned audit procedures. The auditor should determine the nature and extent of additional substantive procedures needed for the period when the control was not operating effectively, and consider whether the failure indicates a systemic problem affecting other controls.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'Inquiry alone is sufficient as a test of the operating effectiveness of controls in which of the following situations?',
 '["Never — inquiry alone does not provide sufficient evidence of operating effectiveness", "When the control is performed by senior management", "When the auditor has tested the control in the prior year", "When the control is a simple manual control"]'::jsonb,
 0,
 'Inquiry alone is not sufficient to test the operating effectiveness of controls. While inquiry provides useful information, it must be combined with other procedures such as observation, inspection, or reperformance to provide sufficient evidence that controls operated effectively. Inquiry provides evidence of design and implementation but not of consistent operating effectiveness.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'The auditor tests controls primarily to:',
 '["Support a lower assessed level of control risk, which allows the auditor to reduce the extent of substantive procedures","Ensure the entity is profitable","Prepare the entity''s financial statements","Determine the appropriate interest rate for debt"]'::jsonb,
 0,
 'The primary reason for testing controls is to support a lower assessed level of control risk, which in turn allows the auditor to reduce the nature, timing, or extent of substantive procedures. If controls are effective, less substantive testing may be needed because the auditor has greater confidence that transactions are properly recorded.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'An auditor is testing a control that operates daily (approximately 250 times per year). To obtain sufficient evidence of operating effectiveness, the auditor should:',
 '["Test all 250 occurrences", "Test only 1 occurrence because the control is automated", "Select a sample of occurrences sufficient to provide a reasonable basis for concluding on operating effectiveness", "Test only the occurrences in December"]'::jsonb,
 2,
 'For controls that operate frequently (such as daily), the auditor uses sampling to select a sufficient number of occurrences for testing. The sample size depends on factors including the desired level of assurance, the expected deviation rate, and whether the auditor intends to rely on the control. Auditing standards provide guidance on appropriate sample sizes based on these factors.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'The auditor tests IT general controls (ITGCs) primarily because:',
 '["They process financial transactions directly","They are required by tax regulations","They support the continued effective functioning of automated application controls and the integrity of data","They determine the entity''s profitability"]'::jsonb,
 2,
 'IT general controls (such as access controls, program change controls, and computer operations controls) support the reliable functioning of automated application controls and the integrity of data processed by IT systems. Without effective ITGCs, automated controls may not be trustworthy because unauthorized changes or access could compromise their effectiveness.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'When the auditor identifies a deviation in a test of controls, the auditor should:',
 '["Immediately issue a qualified opinion","Ignore the deviation if only one was found","Evaluate whether the deviation represents an isolated error or a systemic control weakness, and consider its impact on the assessed level of control risk","Expand the sample to 100% of the population"]'::jsonb,
 2,
 'A deviation in a test of controls requires the auditor to evaluate whether it represents an isolated occurrence or indicates a systemic weakness. The auditor should consider the nature and cause of the deviation, whether the expected deviation rate in the sample exceeds the tolerable rate, and whether the deviation affects the assessed level of control risk and the planned reliance on the control.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'Which of the following provides the strongest evidence about the operating effectiveness of a manual control?',
 '["Inquiry of the person who performs the control","Discussion with the internal audit department about the control","Review of the entity''s policy manual describing the control","Observation of the control being performed combined with reperformance by the auditor"]'::jsonb,
 3,
 'Observation combined with reperformance provides the strongest evidence because observation allows the auditor to see the control in operation, and reperformance provides independent verification that the control produces the correct results. Inquiry and policy manual review provide weaker evidence because they address only design and implementation, not actual operating effectiveness.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'When the auditor elects not to test controls and instead adopts a fully substantive approach, the auditor:',
 '["Must justify this decision to the audit committee","Must still test controls for significant risks","Cannot issue an unmodified opinion","Assesses control risk at maximum and designs substantive procedures to address the assessed risks at the assertion level"]'::jsonb,
 3,
 'When the auditor elects not to test controls, control risk is effectively assessed at the maximum level. The auditor then designs substantive procedures (tests of details and/or substantive analytical procedures) with sufficient nature, timing, and extent to address the higher assessed risks. This approach is common for smaller entities or where testing controls would not be efficient.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'An auditor is testing the design effectiveness of a control. This means the auditor is evaluating whether the control:',
 '["Has been consistently applied throughout the period","Generates sufficient documentation for the audit file","Requires additional personnel to operate","Is suitably designed to prevent or detect and correct material misstatements at the assertion level"]'::jsonb,
 3,
 'Evaluating the design effectiveness of a control means assessing whether the control, if operating as designed, would be effective in preventing or detecting and correcting material misstatements at the relevant assertion level. Design effectiveness is distinct from operating effectiveness, which addresses whether the control actually operated as designed throughout the period.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'If the auditor plans to rely on controls tested in a prior audit and the controls have not changed, auditing standards require the auditor to test at least some controls:',
 '["Every five years", "Every other year", "In each audit, though the extent may be reduced through a rotational approach", "Only when the entity requests it"]'::jsonb,
 2,
 'Auditing standards require that if the auditor plans to rely on controls, some controls must be tested in each audit period. The auditor may use a rotational approach where different controls are tested each year, but a control should not go untested for more than two consecutive periods (i.e., tested at least every third year). All controls relied upon should be tested at least once in every three-year rotation.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'Inspection of documents as a test of controls involves examining:',
 '["Financial statements for presentation errors","Customer correspondence for complaints","Bank statements for unusual deposits","Evidence that the control was performed, such as approvals, signatures, reconciliation marks, or exception reports"]'::jsonb,
 3,
 'Inspection of documents as a test of controls involves examining evidence that the control was performed, such as approval signatures on purchase orders, initials on reconciliations, documentation of review procedures, exception reports showing items investigated, and other markers indicating that the control activity was carried out as designed.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Tests of Controls',
 'When the auditor discovers that the entity has experienced significant changes in its IT systems during the audit period, the impact on testing controls is that:',
 '["No additional testing is needed because IT controls are consistent","The auditor should defer all control testing to the next audit period","The auditor should only test controls implemented after the change","The auditor may need to test controls both before and after the system change to ensure operating effectiveness throughout the period"]'::jsonb,
 3,
 'When significant IT system changes occur during the audit period, the auditor may need to test controls that were in place before the change (for the portion of the period prior to the change) and controls that were implemented after the change (for the remaining period). This ensures that effective controls were in place throughout the entire period of intended reliance.',
 'medium');

-- =============================================================================
-- Topic 10: Analytical Procedures (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'Analytical procedures are required during which phases of the audit?',
 '["Planning and the overall review (final) phase of the audit", "Only during substantive testing", "Only during the final review phase", "Only during the planning phase"]'::jsonb,
 0,
 'Analytical procedures are required during two phases of the audit: (1) the planning phase, to identify areas of potential misstatement and assist in risk assessment, and (2) the overall review phase near the end of the audit, to assess whether the financial statements are consistent with the auditor''s understanding of the entity. Substantive analytical procedures are optional but commonly used.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'During the planning phase, analytical procedures are used primarily to:',
 '["Provide substantive evidence about account balances", "Identify unusual or unexpected relationships that may indicate areas of increased risk of material misstatement", "Confirm the accuracy of the prior year''s financial statements", "Test the operating effectiveness of controls"]'::jsonb,
 1,
 'During planning, analytical procedures help the auditor identify unusual or unexpected relationships, trends, or fluctuations that may indicate areas of increased risk of material misstatement. These procedures assist in understanding the entity''s business and help focus the auditor''s attention on areas that may require additional audit procedures.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'When performing substantive analytical procedures, the auditor must develop an independent expectation of the recorded amount. Which of the following is the most important characteristic of the data used to develop this expectation?',
 '["The data should be from a source that is independent of the account being tested", "The data should be prepared by management", "The data should come only from the prior year financial statements", "The data should be provided by the entity''s internal auditors"]'::jsonb,
 0,
 'When developing an expectation for a substantive analytical procedure, the reliability of the data is critical. Data used should be from a source that is sufficiently reliable and independent of the account being tested. Using data that is prepared or controlled by those responsible for the amount being tested reduces the procedure''s effectiveness.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'An auditor compares the current year''s gross margin percentage to the prior year and to industry averages. This is an example of:',
 '["A test of controls", "A substantive test of details", "An analytical procedure", "An audit sampling technique"]'::jsonb,
 2,
 'Comparing financial ratios (such as gross margin percentage) to prior years and industry averages is a common analytical procedure. Analytical procedures involve evaluating financial information through analysis of plausible relationships among financial and non-financial data, including comparisons of recorded amounts to expectations developed by the auditor.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'When a substantive analytical procedure identifies a significant unexpected difference between the auditor''s expectation and the recorded amount, the auditor should:',
 '["Accept management''s explanation without further investigation", "Investigate the difference by inquiring of management and performing additional procedures to determine whether the difference represents a misstatement", "Immediately adjust the financial statements", "Ignore the difference if it is below materiality"]'::jsonb,
 1,
 'When a substantive analytical procedure identifies a significant unexpected difference, the auditor must investigate by inquiring of management and obtaining corroborating evidence. The auditor should assess whether the difference is due to a misstatement or a legitimate business factor, and may need to perform additional substantive tests of details to resolve the matter.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'The final analytical review performed near the end of the audit is designed to:',
 '["Replace substantive testing for immaterial accounts", "Assist the auditor in forming an overall conclusion as to whether the financial statements are consistent with the auditor''s understanding of the entity", "Detect all remaining misstatements in the financial statements", "Test the operating effectiveness of internal controls"]'::jsonb,
 1,
 'The final analytical review (also called the overall review) is performed near the end of the audit to help the auditor form an overall conclusion about whether the financial statements as a whole are consistent with the auditor''s understanding of the entity and its environment. It is a "reasonableness check" that may identify previously unrecognized risks or misstatements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'Which of the following is an example of a non-financial data source that an auditor might use in analytical procedures?',
 '["The general ledger", "Square footage of retail space used to estimate rental revenue", "Bank statements", "Accounts receivable confirmations"]'::jsonb,
 1,
 'Analytical procedures can incorporate non-financial data to develop expectations. For example, an auditor might use square footage of retail space multiplied by average rental rates to estimate rental revenue, or use production capacity and operating hours to estimate output-related revenues or costs. Using non-financial data can provide highly persuasive analytical evidence.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'Trend analysis involves:',
 '["Comparing financial data across multiple periods to identify patterns, trends, or unusual fluctuations", "Confirming account balances with third parties", "Inspecting supporting documentation for individual transactions", "Testing the design effectiveness of internal controls"]'::jsonb,
 0,
 'Trend analysis is a type of analytical procedure that involves comparing financial data across multiple periods to identify patterns, trends, or unusual fluctuations. It helps the auditor understand the entity''s performance trajectory and may reveal unexpected changes that warrant investigation, such as a sudden spike in expenses or a decline in revenue.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'Ratio analysis as an analytical procedure is most useful when:',
 '["The ratios are compared only to the entity''s own prior-year ratios", "The ratios are compared to industry averages, prior periods, budgets, or other relevant benchmarks to identify unexpected deviations", "The ratios are calculated only for the balance sheet", "The ratios are provided by management without independent verification"]'::jsonb,
 1,
 'Ratio analysis is most useful when the calculated ratios are compared to meaningful benchmarks such as industry averages, prior-period ratios, budgeted amounts, or non-financial operational data. These comparisons help the auditor identify deviations from expected relationships and assess whether further investigation is needed.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'When using substantive analytical procedures, the auditor should establish a threshold for the acceptable difference between the expected amount and the recorded amount. This threshold is based on:',
 '["The auditor''s assessment of materiality and the desired level of assurance from the analytical procedure","Management''s preference","A fixed percentage established by auditing standards","The amount of the audit fee"]'::jsonb,
 0,
 'The threshold for acceptable difference (sometimes called the precision) is based on the auditor''s assessment of materiality and the desired level of assurance from the analytical procedure. A more precise expectation (narrower threshold) provides more assurance. The threshold should be set so that any difference exceeding it is investigated as a potential misstatement.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'A regression analysis used as an analytical procedure involves:',
 '["Simply comparing current year to prior year balances","Interviewing management about expected financial results","A statistical technique that uses one or more independent variables to predict a dependent variable and measures the significance of the relationship","Testing a sample of transactions for proper authorization"]'::jsonb,
 2,
 'Regression analysis is a sophisticated analytical procedure that uses statistical techniques to model the relationship between a dependent variable (e.g., revenue) and one or more independent variables (e.g., number of customers, average price per unit). It quantifies the strength and significance of the relationship and can develop a more precise expectation than simple comparisons.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'An auditor notices during planning analytics that the current year''s days sales outstanding (DSO) has increased significantly compared to prior years and industry norms. This most likely indicates:',
 '["The entity is collecting receivables more quickly","The entity''s inventory management has improved","Potential issues with accounts receivable collectibility, overstatement, or changes in credit terms","The entity''s cost of goods sold has decreased"]'::jsonb,
 2,
 'An increase in DSO (days sales outstanding) indicates that it is taking longer to collect receivables. This may signal potential issues with collectibility (inadequate allowance for doubtful accounts), overstatement of receivables (fictitious sales or failure to record returns), changes in credit terms, or revenue recognition problems. The auditor should investigate the cause of the increase.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'Disaggregation of data in substantive analytical procedures refers to:',
 '["Combining all data into a single total for comparison","Using data from the prior year only","Performing procedures only on year-end balances","Breaking down the data into smaller, more homogeneous components to improve the precision of the expectation"]'::jsonb,
 3,
 'Disaggregating data means breaking it down into smaller, more homogeneous subsets (e.g., by location, product line, or month) rather than analyzing aggregate totals. Disaggregation improves the precision of the expectation because relationships within homogeneous groups are more predictable than relationships across diverse groups, making it easier to detect misstatements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'During the final analytical review, the auditor reads the financial statements and notes to evaluate whether:',
 '["All account balances match the prior year exactly","All estimates have been recorded at the most conservative amounts","Management has maximized reported net income","The financial statements, including disclosures, conform with the auditor''s understanding of the entity based on the audit evidence obtained"]'::jsonb,
 3,
 'During the final analytical review, the auditor reads the financial statements and considers whether the overall presentation, including disclosures, is consistent with the auditor''s understanding of the entity and its environment obtained during the audit. This includes assessing whether trends, ratios, and relationships in the final financial statements are reasonable given the audit evidence obtained.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'The reliability of data used for analytical procedures increases when:',
 '["The data is prepared by the client''s management without verification","The data is obtained verbally from the client''s personnel","The data is available only in summary form","The data comes from a variety of independent sources and is subject to audit testing"]'::jsonb,
 3,
 'The reliability of data for analytical procedures is enhanced when it comes from independent sources external to the entity, has been subject to audit testing, was developed under effective internal controls, or was obtained from multiple diverse sources that corroborate each other. Data that is verified, independent, and detailed is more reliable than unverified management-prepared data.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'An auditor is considering whether to use substantive analytical procedures as the primary source of evidence for testing depreciation expense. Which of the following conditions would make this approach most appropriate?',
 '["The entity has highly complex asset records with frequent additions and disposals","The entity has significant impairment concerns","The entity frequently changes its depreciation methods","The entity has a large volume of homogeneous assets with consistent depreciation methods and the auditor can develop a reliable expectation"]'::jsonb,
 3,
 'Substantive analytical procedures are most effective when the auditor can develop a precise and reliable expectation. This is most feasible when the population being tested is large, homogeneous, and predictable — such as a stable asset base with consistent depreciation methods. In such cases, the auditor can calculate an expected depreciation expense and compare it to the recorded amount.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'An auditor expects utility expense to increase by approximately 8% based on rate increases and unchanged operations, but the recorded increase is only 1%. This unexpected result:',
 '["Confirms that the utility expense is correct", "Requires no further investigation because the variance favors the entity", "Should be investigated because the unexpectedly low increase could indicate unrecorded expenses or errors", "Automatically requires an adjustment to the financial statements"]'::jsonb,
 2,
 'An unexpectedly low increase in expenses can be just as significant as an unexpectedly high increase. A lower-than-expected utility expense could indicate unrecorded liabilities, cutoff errors, or misclassification. The auditor should investigate the cause, regardless of whether the variance is favorable or unfavorable.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'Which of the following types of analytical procedures provides the most precise expectation?',
 '["Scanning the general ledger for unusual items", "Comparing current year totals to prior year totals", "A detailed predictive model using multiple relevant variables and disaggregated data", "Comparing the entity''s current year total revenue to industry total revenue"]'::jsonb,
 2,
 'A detailed predictive model (such as a regression analysis) using multiple relevant independent variables and disaggregated data produces the most precise expectation. The more variables used and the more disaggregated the data, the more closely the model''s prediction will approximate the correct amount, increasing the auditor''s ability to detect misstatements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'When management provides explanations for unexpected differences identified through analytical procedures, the auditor should:',
 '["Accept the explanation and document it in the workpapers","Report the difference to the audit committee without further investigation","Reject any explanation that involves management judgment","Corroborate management''s explanation with supporting evidence and evaluate its reasonableness"]'::jsonb,
 3,
 'When management provides explanations for unexpected differences, the auditor should not simply accept them. The auditor should corroborate the explanations by obtaining supporting evidence (documentation, third-party data, or additional analytical evidence) and evaluating whether the explanation is reasonable, consistent with other audit evidence, and sufficiently specific.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Analytical Procedures',
 'An auditor performing planning analytics discovers that the entity''s inventory turnover ratio has decreased significantly compared to prior years. This finding suggests which potential risk?',
 '["Inventory may be overstated due to obsolete, slow-moving, or excess inventory requiring write-down", "Accounts receivable may be uncollectible", "Long-term debt may be misclassified", "The entity is experiencing rapid growth"]'::jsonb,
 0,
 'A decreasing inventory turnover ratio indicates that inventory is selling more slowly relative to its balance. This may suggest the presence of obsolete, slow-moving, or excess inventory that may need to be written down to net realizable value. The auditor should investigate whether the inventory balance is overstated and whether appropriate valuation adjustments have been made.',
 'medium');

-- =============================================================================
-- Topic 11: Misstatements and Control Deficiencies (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'A factual misstatement is best described as:',
 '["A misstatement about which there is no doubt — the recorded amount differs from the correct amount", "A misstatement that arises from differences in judgments about accounting estimates", "A misstatement that the auditor projects from a sample to the entire population", "A misstatement that management refuses to correct"]'::jsonb,
 0,
 'A factual misstatement is a misstatement about which there is no doubt. The recorded amount is objectively incorrect and differs from the amount that should have been recorded. Examples include mathematical errors, misapplication of accounting principles to specific facts, and oversight or misinterpretation of facts. There is no judgment involved in determining these are wrong.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'A projected misstatement arises when:',
 '["Management projects future earnings", "The auditor extrapolates misstatements found in a sample to the entire population from which the sample was drawn", "The auditor estimates the effect of a going concern issue", "Management estimates a contingent liability"]'::jsonb,
 1,
 'A projected misstatement is the auditor''s best estimate of the misstatement in a population, based on the misstatements identified in a sample. When the auditor tests a sample and finds errors, those errors are projected (extrapolated) to estimate the likely misstatement in the total population. This projected amount is included in the aggregate of uncorrected misstatements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'A significant deficiency in internal control is defined as:',
 '["Any deficiency in internal control, no matter how small", "A deficiency, or combination of deficiencies, that is less severe than a material weakness yet important enough to merit attention by those charged with governance", "A deficiency that the auditor considers immaterial", "A deficiency that has been corrected by management"]'::jsonb,
 1,
 'A significant deficiency is a deficiency, or a combination of deficiencies, in internal control that is less severe than a material weakness, yet important enough to merit attention by those charged with governance. It represents a control failure that is noteworthy but does not rise to the level where there is a reasonable possibility that a material misstatement will not be prevented or detected.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'A material weakness in internal control is:',
 '["Any identified control deficiency", "A deficiency that has been communicated to management", "A deficiency, or combination of deficiencies, such that there is a reasonable possibility that a material misstatement will not be prevented, or detected and corrected, on a timely basis", "A control deficiency that has already resulted in a material misstatement"]'::jsonb,
 2,
 'A material weakness is a deficiency, or combination of deficiencies, in internal control, such that there is a reasonable possibility that a material misstatement of the entity''s financial statements will not be prevented, or detected and corrected, on a timely basis. It is the most severe classification of control deficiency and must be communicated in writing to those charged with governance.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'When evaluating the aggregate effect of uncorrected misstatements, the auditor should consider:',
 '["Only factual misstatements, not judgmental or projected misstatements", "Only misstatements that individually exceed materiality", "All uncorrected misstatements accumulated during the audit, including factual, judgmental, and projected misstatements", "Only misstatements identified during the final week of fieldwork"]'::jsonb,
 2,
 'The auditor must consider all uncorrected misstatements accumulated during the audit, including factual misstatements, judgmental misstatements (differences in management''s judgments about estimates), and projected misstatements (extrapolated from samples). The aggregate of all these types is compared to materiality to assess whether the financial statements are materially misstated.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'The auditor is required to communicate significant deficiencies and material weaknesses to:',
 '["The general public through the audit report", "Those charged with governance, in writing", "Only the entity''s external legal counsel", "Only the SEC"]'::jsonb,
 1,
 'AU-C 265 requires the auditor to communicate in writing to those charged with governance all significant deficiencies and material weaknesses identified during the audit. This communication must be made on a timely basis and should include a description of the deficiencies and an explanation of their potential effects. Material weaknesses must always be communicated in writing.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'A judgmental misstatement is best described as:',
 '["A mathematical error in the financial statements", "A misstatement arising from differences in management''s judgments about accounting estimates that the auditor considers unreasonable, or from the selection or application of accounting policies the auditor considers inappropriate", "A misstatement discovered through analytical procedures", "A misstatement caused by an IT system error"]'::jsonb,
 1,
 'Judgmental misstatements arise from differences in judgments of management concerning accounting estimates that the auditor considers unreasonable, or from the selection or application of accounting policies that the auditor considers inappropriate. Unlike factual misstatements, judgmental misstatements involve disagreements about estimates or policies rather than clear-cut errors.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'When management refuses to correct misstatements identified during the audit, the auditor should:',
 '["Accept management''s decision and issue an unmodified opinion", "Request a written representation from management regarding the reasons for not correcting the misstatements, and evaluate whether the uncorrected misstatements are material", "Withdraw from the engagement immediately", "Adjust the financial statements without management''s approval"]'::jsonb,
 1,
 'When management chooses not to correct identified misstatements, the auditor should obtain an understanding of management''s reasons, request a written representation acknowledging that management has been informed of the uncorrected misstatements, and evaluate whether the aggregate of uncorrected misstatements is material. If material, the auditor should modify the opinion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'Which of the following factors should the auditor consider when evaluating the severity of a control deficiency?',
 '["The likelihood that the deficiency could result in a misstatement and the magnitude of the potential misstatement", "Only the dollar amount of the misstatement actually caused by the deficiency", "Only whether the deficiency was intentional or unintentional", "Only the number of transactions affected by the deficiency"]'::jsonb,
 0,
 'When evaluating the severity of a control deficiency, the auditor considers two dimensions: (1) the likelihood (reasonable possibility) that the deficiency could result in a misstatement, and (2) the magnitude of the potential misstatement that could result. Both factors together determine whether the deficiency is a significant deficiency or a material weakness.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'An auditor discovers that a control deficiency resulted in a $25,000 overstatement of accounts receivable. Materiality for the audit is $500,000. However, the same control processes millions of dollars in transactions annually. The auditor should classify this deficiency based on:',
 '["The potential magnitude of misstatement that could result from the deficiency given the volume of transactions it affects, not just the actual misstatement found","The $25,000 actual misstatement, which is clearly below materiality","The number of employees involved in the process","The length of time the deficiency has existed"]'::jsonb,
 0,
 'The severity of a control deficiency is evaluated based on the potential (not just actual) magnitude of misstatement that could result. Even if the actual misstatement found is small, a deficiency in a control that processes a large volume of transactions could potentially result in a material misstatement. The auditor must evaluate the deficiency based on what could go wrong, not just what did.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'When the auditor communicates control deficiencies, the written communication should include:',
 '["A description of the deficiencies and an explanation of their potential effects","Guarantees that no additional deficiencies exist","Recommendations for specific corrective actions management must take","An assessment of whether management is competent"]'::jsonb,
 0,
 'The written communication of significant deficiencies and material weaknesses should include a description of the deficiencies and an explanation of their potential effects. The communication is not required to include recommendations for corrective actions (though the auditor may choose to include them), nor should it guarantee that no other deficiencies exist.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'Management is required to respond to the auditor''s communication of material weaknesses by:',
 '["Correcting all material weaknesses before the audit report is issued", "Providing a written response to the auditor within 30 days", "There is no specific requirement for management to respond, but the auditor may request and the governance body typically expects a management response", "Immediately notifying the SEC"]'::jsonb,
 2,
 'While there is no explicit requirement in auditing standards for management to provide a formal response to the auditor''s communication of material weaknesses, those charged with governance typically expect a management response outlining corrective actions. For governmental entities, management responses may be required by specific standards such as Government Auditing Standards or the Uniform Guidance.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'If the auditor determines that a combination of individually insignificant control deficiencies together constitute a significant deficiency, the auditor should:',
 '["Communicate the combined deficiency to those charged with governance as a significant deficiency","Ignore the individual deficiencies since none is significant alone","Only communicate the individual deficiencies to management","Wait until the next audit to re-evaluate"]'::jsonb,
 0,
 'Control deficiencies may individually be insignificant but, in combination, represent a significant deficiency or material weakness. The auditor must consider whether deficiencies interact or share a common root cause that, taken together, increase the risk of material misstatement. If so, the combined deficiency should be communicated to those charged with governance.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'Prior to evaluating the aggregate effect of uncorrected misstatements, the auditor should:',
 '["Request management to correct all identified misstatements, including clearly trivial amounts","Only request correction of misstatements that individually exceed materiality","Request management to correct all identified misstatements, even those that are individually immaterial, because their aggregate effect could be material","Ignore all misstatements below performance materiality"]'::jsonb,
 2,
 'The auditor should communicate all identified misstatements to management (other than those that are clearly trivial) and request that management correct them. Even individually immaterial misstatements should be communicated because their aggregate effect, combined with other misstatements, could be material. Management''s willingness to correct misstatements reduces the risk of a modified opinion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'The auditor identifies several misstatements during the audit, all of which management corrects. After correction, the auditor:',
 '["Must still consider the corrected misstatements as uncorrected for purposes of the aggregate evaluation","Should disregard the misstatements entirely since they were corrected","Must modify the audit opinion because misstatements were originally present","Should evaluate whether the corrections were properly made and whether the pattern of misstatements indicates a control deficiency"]'::jsonb,
 3,
 'After management corrects identified misstatements, the auditor should verify that the corrections were properly made. Additionally, the auditor should consider whether the nature and pattern of the misstatements (even though corrected) indicate potential control deficiencies that should be communicated. Corrected misstatements are excluded from the aggregate of uncorrected misstatements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'An auditor found that the controller failed to review a bank reconciliation for three consecutive months. The failure to perform the review is best classified as:',
 '["An inherent limitation of the audit", "A departure from the applicable financial reporting framework", "A control deficiency because the designed control (management review of reconciliations) did not operate effectively", "An error in the financial statements"]'::jsonb,
 2,
 'The failure of the controller to perform a designed control activity (reviewing bank reconciliations) represents a control deficiency — specifically, a failure of operating effectiveness. The control was properly designed but did not operate consistently. The auditor must evaluate the severity of this deficiency to determine whether it constitutes a significant deficiency or material weakness.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'When determining whether a control deficiency is a material weakness, the auditor considers "reasonable possibility" to mean:',
 '["A certainty that a misstatement will occur","A probability of greater than 95%","An absolute guarantee of material misstatement","More than a remote likelihood — the chance is more than slight"]'::jsonb,
 3,
 'In the context of evaluating material weaknesses, "reasonable possibility" means more than a remote likelihood. It is a lower threshold than "more likely than not" (greater than 50%). A material weakness exists when there is a reasonable possibility — more than a slight chance — that a material misstatement will not be prevented, detected, or corrected on a timely basis.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'The auditor''s communication of control deficiencies should include a statement that:',
 '["The auditor has tested all of the entity''s internal controls","Management has corrected all identified deficiencies","The entity''s internal controls are effective in all respects","The purpose of the audit was to express an opinion on the financial statements and not to identify all control deficiencies"]'::jsonb,
 3,
 'The communication should include a statement that the purpose of the audit was to express an opinion on the financial statements and that the audit was not designed to identify all deficiencies in internal control. This caveat ensures that those charged with governance understand that additional deficiencies may exist that were not identified during the audit.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'A compensating control is relevant to the evaluation of control deficiencies because:',
 '["It replaces the need for any primary controls","It is a control that management promises to implement in the future","It automatically eliminates any identified material weakness","An effective compensating control may reduce the severity of a deficiency in another control by mitigating the risk of material misstatement"]'::jsonb,
 3,
 'A compensating control is a control that mitigates the risk associated with a deficiency in another control. When evaluating the severity of a control deficiency, the auditor should consider whether effective compensating controls exist that reduce the likelihood or magnitude of potential misstatements. An effective compensating control may reduce a potential material weakness to a significant deficiency.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Misstatements and Control Deficiencies',
 'If the aggregate of uncorrected misstatements approaches but does not exceed materiality, the auditor should:',
 '["Issue an unmodified opinion without any additional consideration","Increase the materiality level so the aggregate is clearly below the threshold","Issue a qualified opinion as a precaution","Request management to correct additional misstatements and consider whether additional audit procedures are needed to determine whether undetected misstatements could cause the aggregate to exceed materiality"]'::jsonb,
 3,
 'When the aggregate of uncorrected misstatements approaches materiality, the auditor must consider the risk that undetected misstatements, when combined with the uncorrected misstatements, could cause the total to exceed materiality. The auditor should request that management correct additional misstatements and may need to perform additional audit procedures to reduce the risk to an acceptably low level.',
 'hard');

-- =============================================================================
-- Topic 12: Written Representations (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'Management representation letters are required for:',
 '["All audit engagements of financial statements", "Only audits of public companies", "Only audits where fraud is suspected", "Only first-year audit engagements"]'::jsonb,
 0,
 'AU-C 580 requires the auditor to obtain written representations from management for all audit engagements. The representation letter provides written confirmation that management acknowledges its responsibilities and has provided the auditor with all relevant information. Without the representation letter, the auditor has a scope limitation.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'The management representation letter should be dated:',
 '["As of the first day of fieldwork", "As of the date the financial statements are issued", "As of the date of the auditor''s report", "As of the last day of the fiscal year under audit"]'::jsonb,
 2,
 'The management representation letter should be dated as of the date of the auditor''s report. This ensures that management''s representations cover the entire period from the financial statement date through the date of the audit report, including any subsequent events that may have occurred during fieldwork.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'The management representation letter should be signed by:',
 '["Only the CEO", "Only the external legal counsel", "Members of management with appropriate responsibilities for the financial statements, typically the CEO and CFO", "All members of the board of directors"]'::jsonb,
 2,
 'The management representation letter should be signed by members of management with appropriate responsibilities for the financial statements and knowledge of the matters covered. This typically includes the chief executive officer (CEO) and the chief financial officer (CFO), as they have primary responsibility for the preparation and fair presentation of the financial statements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'If management refuses to provide one or more of the required written representations, the auditor should:',
 '["Issue an unmodified opinion and note the refusal in the report", "Accept oral representations as a substitute", "Consider the effect on the audit opinion, which will likely result in a qualified opinion or disclaimer of opinion", "Continue the audit without the representations and issue an adverse opinion"]'::jsonb,
 2,
 'If management refuses to provide required written representations, the auditor has a scope limitation. The auditor should discuss the matter with management, reevaluate the integrity of management, and determine the effect on the audit opinion. A refusal to provide required representations typically results in a qualified opinion or disclaimer of opinion, depending on the significance of the missing representations.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'Which of the following is a required representation in the management representation letter?',
 '["Management has provided the auditor with access to all information relevant to the financial statements", "The audit fee is reasonable", "All employees are satisfied with their compensation", "The entity''s stock price will increase in the next year"]'::jsonb,
 0,
 'Required representations include that management has fulfilled its responsibility for the preparation of the financial statements, has provided the auditor with all relevant information and access, and that all transactions have been recorded. Additional representations address fraud, subsequent events, litigation, and completeness of related party disclosures.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'A Type I subsequent event is an event that:',
 '["Occurs after the balance sheet date but before the audit report date and provides additional evidence about conditions that existed at the balance sheet date", "Occurs after the audit report date", "Provides evidence about conditions that arose after the balance sheet date", "Has no effect on the financial statements"]'::jsonb,
 0,
 'A Type I (recognized) subsequent event provides additional evidence about conditions that existed at the balance sheet date. Examples include settlement of litigation for an amount that differs from the accrued amount, or a customer''s bankruptcy that confirms the uncollectibility of a receivable outstanding at year-end. These events require adjustment to the financial statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'A Type II subsequent event is an event that:',
 '["Provides evidence about conditions existing at the balance sheet date", "Requires adjustment to the financial statements", "Provides evidence about conditions that arose after the balance sheet date and may require disclosure but not adjustment", "Has no relevance to the audit"]'::jsonb,
 2,
 'A Type II (non-recognized) subsequent event provides evidence about conditions that arose after the balance sheet date. These events do not require adjustment to the financial statement amounts but may require disclosure if they are significant enough that their omission would make the financial statements misleading. Examples include a major fire or a business combination occurring after year-end.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'Dual-dating of the auditor''s report is appropriate when:',
 '["The auditor becomes aware of a material subsequent event after the original report date but before the report is issued, and the event affects only a specific note or disclosure", "The entity changes its fiscal year-end", "The audit was performed by two different audit firms", "The entity has two sets of financial statements"]'::jsonb,
 0,
 'Dual-dating is used when the auditor becomes aware of a subsequent event after the original date of the auditor''s report but before the report is issued. The auditor may dual-date the report (e.g., "February 15, 20X7, except for Note X, as to which the date is March 5, 20X7") to limit the auditor''s responsibility for subsequent events to only the specific matter disclosed.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'The auditor''s procedures for identifying subsequent events typically include all of the following EXCEPT:',
 '["Reading minutes of board meetings held after the balance sheet date", "Inquiring of management about any events occurring after year-end that could affect the financial statements", "Obtaining a legal letter from the entity''s attorneys", "Confirming all outstanding accounts receivable balances as of the audit report date"]'::jsonb,
 3,
 'Subsequent event procedures include reading board minutes, inquiring of management about subsequent events, reading interim financial statements, and obtaining an attorney''s letter. Confirming all outstanding accounts receivable as of the audit report date is not a standard subsequent events procedure — confirmations are performed for the balance sheet date, not the report date.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'If the auditor discovers facts after the financial statements have been issued that indicate the statements were materially misstated, the auditor should:',
 '["Take no action because the financial statements have already been issued", "Discuss the matter with management, determine whether revision is needed, and consider the effect on the auditor''s report", "Immediately notify the SEC without consulting management", "Issue a new audit report without consulting management"]'::jsonb,
 1,
 'AU-C 560 requires the auditor to discuss the matter with management, determine whether the financial statements need to be revised, and consider what actions management intends to take. If management revises the financial statements, the auditor should perform procedures on the revision, issue a new audit report, and ensure that users are informed. If management refuses to take appropriate action, the auditor should notify those charged with governance.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'Written representations from management are considered:',
 '["The most reliable form of audit evidence available", "Necessary audit evidence but not sufficient by themselves — they complement but do not replace other audit evidence", "Unnecessary if the auditor has obtained sufficient evidence from other procedures", "A substitute for tests of controls and substantive procedures"]'::jsonb,
 1,
 'Written representations are a necessary form of audit evidence, but they are not sufficient by themselves. They complement other audit evidence but do not substitute for other procedures the auditor is required to perform. Management representations are obtained in addition to, not instead of, other forms of audit evidence.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'The management representation letter should include a representation about fraud. Specifically, management should acknowledge:',
 '["That no fraud has ever occurred at the entity", "Management''s responsibility for designing and implementing controls to prevent and detect fraud, and that management has disclosed all known or suspected fraud", "That the auditor is responsible for detecting all fraud", "That fraud is impossible due to the entity''s strong controls"]'::jsonb,
 1,
 'The management representation letter should include a representation that management acknowledges its responsibility for the design, implementation, and maintenance of internal control relevant to the prevention and detection of fraud. Management should also represent that it has disclosed to the auditor all known instances or suspicions of fraud affecting the entity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'If the auditor believes that management''s written representations are unreliable, the auditor should:',
 '["Accept the representations and continue the audit", "Consider the effect on the audit, including evaluating whether it is appropriate to rely on other representations from management and whether a modified opinion is warranted", "Resign immediately without further consideration", "Include a disclaimer in the representation letter"]'::jsonb,
 1,
 'If the auditor has concerns about the reliability of management representations, it raises serious questions about management''s integrity. The auditor should consider the effect on the audit as a whole, including whether it is appropriate to continue to rely on other management representations and other audit evidence. The auditor should also consider whether a modified opinion, disclaimer, or withdrawal is warranted.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'The auditor''s responsibility for subsequent events extends until:',
 '["The balance sheet date", "30 days after the balance sheet date", "The date of the auditor''s report", "The date the financial statements are filed with the SEC"]'::jsonb,
 2,
 'The auditor has an active responsibility to perform subsequent events procedures up to the date of the auditor''s report. After the report date but before the financial statements are issued, the auditor has no obligation to perform additional procedures but should respond to facts that come to the auditor''s attention. After issuance, the auditor has a responsibility to respond to subsequently discovered facts.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'Which of the following is an example of a Type I subsequent event?',
 '["A major customer declares bankruptcy after year-end, confirming that the receivable was uncollectible at year-end", "The entity acquires another company two months after year-end", "A natural disaster destroys the entity''s primary warehouse after year-end", "The entity issues new long-term debt after year-end"]'::jsonb,
 0,
 'A major customer''s bankruptcy after year-end that confirms the receivable was uncollectible at the balance sheet date is a Type I subsequent event. It provides additional evidence about a condition (uncollectibility) that existed at the balance sheet date. The financial statements should be adjusted to reflect the uncollectible amount.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'The management representation letter should include a representation regarding related party transactions. This representation typically states that:',
 '["The entity has no related parties", "Management has disclosed all related party relationships and transactions, and they have been appropriately accounted for and disclosed", "Related party transactions are prohibited by the entity''s policies", "The auditor is responsible for identifying all related parties"]'::jsonb,
 1,
 'Management should represent that it has disclosed to the auditor the identity of all related parties and all related party relationships and transactions of which management is aware. Management should also represent that such transactions have been appropriately accounted for and disclosed in accordance with the applicable financial reporting framework.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'If management limits the scope of the representation letter by qualifying certain representations, the auditor should:',
 '["Accept the qualified representations without further action","Issue the audit report without the representation letter","Immediately withdraw from the engagement","Evaluate whether the qualifications create a scope limitation that could affect the audit opinion"]'::jsonb,
 3,
 'When management qualifies or limits its representations, the auditor should evaluate whether these qualifications create a scope limitation. The auditor should consider the reasons for the qualifications, whether alternative evidence is available, and whether the qualifications affect the auditor''s ability to form an opinion. Significant qualifications may result in a modified opinion or disclaimer.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'When a subsequent event requires adjustment to the financial statements and management refuses to make the adjustment, the auditor should:',
 '["Accept management''s decision and issue an unmodified opinion","Delay the audit report indefinitely","Remove the subsequent event from the audit workpapers","Issue a qualified or adverse opinion as appropriate"]'::jsonb,
 3,
 'If a subsequent event requires adjustment and management refuses to make the necessary adjustment, the financial statements are misstated. The auditor should evaluate the materiality and pervasiveness of the misstatement and issue a qualified opinion (if material but not pervasive) or an adverse opinion (if material and pervasive).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'The representation letter should include a statement that management has informed the auditor of:',
 '["The entity''s marketing plans for the next fiscal year","The entity''s competitors'' financial performance","The personal financial situations of all board members","All known instances of non-compliance with laws and regulations whose effects should be considered when preparing financial statements"]'::jsonb,
 3,
 'The representation letter should include management''s acknowledgment that it has informed the auditor of all known instances of non-compliance or suspected non-compliance with laws and regulations whose effects should be considered when preparing the financial statements. Non-compliance may result in contingent liabilities, fines, or other financial statement impacts that require disclosure or accrual.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Written Representations',
 'An entity discovers two weeks after issuing its audited financial statements that a material error existed in the financial statements at the time they were issued. Management''s responsibility is to:',
 '["Take no action because the statements have already been issued and the error was unknown at the time","Only correct the error if the SEC requests it","Wait until the next annual audit to correct the error","Inform the auditor and take steps to ensure that anyone likely to be relying on the financial statements is informed of the situation"]'::jsonb,
 3,
 'When management becomes aware of facts that existed at the audit report date and might have caused the auditor to revise the report, management should discuss the matter with the auditor and take steps to inform anyone who might be relying on the financial statements (such as issuing revised financial statements). This responsibility exists even though the statements have already been issued.',
 'easy');

-- =============================================================================
-- Topic 13: Specific Areas and Transactions (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'Which of the following is an indicator that an entity may have going concern issues?',
 '["The entity reported record high revenues in the current year", "Recurring operating losses, negative working capital, and inability to obtain financing", "The entity recently completed a successful initial public offering", "The entity hired a new CEO with extensive industry experience"]'::jsonb,
 1,
 'Indicators of going concern issues include recurring operating losses, negative working capital, default on loan agreements, inability to obtain additional financing, loss of major customers or suppliers, and adverse financial ratios. These conditions raise substantial doubt about the entity''s ability to continue as a going concern for a reasonable period (typically one year from the financial statement date).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'When the auditor identifies a related party transaction, the auditor should:',
 '["Automatically require the entity to eliminate the transaction", "Obtain sufficient appropriate evidence to determine whether the transaction has been properly accounted for and adequately disclosed", "Ignore the transaction if it is immaterial", "Report the transaction directly to the SEC"]'::jsonb,
 1,
 'The auditor should obtain sufficient appropriate audit evidence about related party transactions to determine whether they have been properly identified, accounted for, and disclosed in the financial statements in accordance with the applicable financial reporting framework. This includes understanding the nature and business purpose of the transactions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'If the auditor concludes that substantial doubt exists about the entity''s ability to continue as a going concern and management''s plans adequately mitigate the doubt, the auditor should:',
 '["Issue an adverse opinion", "Issue a disclaimer of opinion", "Issue an unmodified opinion with an emphasis-of-matter paragraph if disclosure is adequate", "Issue a qualified opinion"]'::jsonb,
 2,
 'When substantial doubt exists but is adequately mitigated by management''s plans and appropriate disclosures are made, the auditor issues an unmodified opinion. However, the auditor should include an emphasis-of-matter paragraph that draws attention to the going concern uncertainty and the related note disclosures in the financial statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'When auditing fair value estimates, the auditor should:',
 '["Accept management''s fair value measurements without testing", "Evaluate the reasonableness of management''s assumptions, methods, and data used to develop the fair value estimates", "Only test fair value estimates for investment securities", "Require that all fair value measurements be performed by an independent specialist"]'::jsonb,
 1,
 'The auditor should evaluate the reasonableness of the significant assumptions used by management, assess whether the methods and models used are appropriate, and test the accuracy and completeness of the data underlying the fair value measurement. The auditor may also develop an independent estimate or review subsequent events for evidence of fair value.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'Audit procedures for identifying related parties typically include all of the following EXCEPT:',
 '["Inquiring of management about the identity of related parties", "Reviewing minutes of board meetings for references to related party transactions", "Examining public filings and regulatory reports for related party disclosures", "Confirming all accounts receivable balances as a primary related party identification procedure"]'::jsonb,
 3,
 'While accounts receivable confirmations may incidentally reveal related party information, they are not primarily a related party identification procedure. Standard procedures for identifying related parties include inquiring of management, reviewing entity records (such as shareholder registers and board minutes), examining public filings, and reviewing prior-year workpapers.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'If the auditor determines that the entity cannot continue as a going concern and the financial statements are prepared on a going concern basis, the auditor should:',
 '["Issue an unmodified opinion", "Issue an adverse opinion because the going concern basis is inappropriate", "Issue a qualified opinion with an explanatory paragraph", "Issue a disclaimer of opinion"]'::jsonb,
 1,
 'If the entity cannot continue as a going concern and the financial statements have been prepared on a going concern basis, the going concern assumption is inappropriate, making the financial statements materially misstated. The auditor should express an adverse opinion because the financial statements do not properly reflect the entity''s situation.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'When auditing opening balances in an initial (first-year) audit engagement, the auditor should:',
 '["Accept the prior year''s audited financial statements without performing any procedures", "Obtain sufficient appropriate evidence that opening balances do not contain misstatements that materially affect the current period financial statements", "Only test opening balances if the prior auditor issued a modified opinion", "Ignore opening balances because they relate to the prior period"]'::jsonb,
 1,
 'In an initial audit, the auditor must obtain sufficient appropriate evidence about whether the opening balances contain misstatements that could materially affect the current period. This may include reviewing the predecessor auditor''s workpapers, evaluating whether prior-year audit procedures are adequate, and performing specific procedures on opening balances.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'A related party transaction conducted at terms significantly different from market terms is most concerning because:',
 '["The transaction may not reflect economic reality and could be used to manipulate the financial statements","All related party transactions are fraudulent","Related parties are prohibited from transacting with each other","The transaction will automatically result in a material misstatement"]'::jsonb,
 0,
 'Related party transactions at non-arm''s-length terms are concerning because they may not reflect the economic substance of the arrangement and could be used to manipulate financial results (e.g., artificially inflating revenue or transferring assets at below-market prices). The auditor should evaluate whether such transactions are properly disclosed and accounted for.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'When management''s going concern assessment covers less than one year from the financial statement date, the auditor should:',
 '["Request management to extend its assessment to at least one year from the financial statement date","Accept the shorter period without comment","Issue a disclaimer of opinion","Modify the going concern evaluation period to six months"]'::jsonb,
 0,
 'If management''s assessment covers less than one year from the financial statement date, the auditor should request that management extend its assessment to cover at least the twelve-month period. U.S. GAAP (ASC 205-40) requires management to evaluate whether substantial doubt exists about the entity''s ability to continue as a going concern for one year after the financial statements are issued.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'When auditing accounting estimates, the auditor should:',
 '["Evaluate whether the methods, assumptions, and data used by management are appropriate, and whether the estimates are reasonable in the context of the financial reporting framework","Focus only on whether the mathematical calculations are correct","Accept all estimates because they inherently involve uncertainty","Only test estimates that exceed a predetermined dollar threshold"]'::jsonb,
 0,
 'Auditing estimates requires the auditor to evaluate whether management''s methods are appropriate, whether the significant assumptions are reasonable and supported by evidence, and whether the data used is relevant, reliable, and complete. The auditor should also consider management bias and whether the estimate is reasonable within the range of possible outcomes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'Comparative financial information in the current year financial statements requires the auditor to:',
 '["Obtain sufficient appropriate evidence that the prior-period amounts are properly stated and consistently presented","Re-audit the prior year financial statements completely","Only read the prior year amounts without performing procedures","Issue a separate report on the prior year financial statements"]'::jsonb,
 0,
 'When comparative information is presented, the auditor should obtain sufficient appropriate evidence that the comparative amounts are free of material misstatement. For continuing engagements, this typically involves reviewing the prior-year workpapers. For initial engagements, the auditor should perform procedures on opening balances and consider the predecessor auditor''s report.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'Which of the following audit procedures is most effective for identifying previously undisclosed related parties?',
 '["Reviewing large or unusual transactions, particularly near year-end, for indicators of previously undisclosed related party involvement","Performing a physical inventory observation","Testing depreciation calculations","Confirming bank balances"]'::jsonb,
 0,
 'Reviewing large or unusual transactions — particularly those near year-end, those with unusual terms, or those lacking apparent business rationale — is an effective way to identify previously undisclosed related parties. Transactions that seem unusual may involve parties with relationships to management that have not been disclosed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'When there is substantial doubt about going concern and adequate disclosure is made in the financial statements, the emphasis-of-matter paragraph in the auditor''s report should:',
 '["Replace the opinion paragraph", "Follow the opinion paragraph and include the words "substantial doubt" and "going concern"", "Be placed before the opinion paragraph and include specific reference to the financial statement note discussing the matter", "Not reference any specific note in the financial statements"]'::jsonb,
 2,
 'The emphasis-of-matter paragraph for going concern should be placed in a separate section of the auditor''s report after the opinion paragraph (for non-issuers) or before the opinion paragraph in certain circumstances. It should specifically reference the note in the financial statements that discusses the going concern uncertainty and include appropriate language about substantial doubt.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'The primary risk associated with related party transactions from an audit perspective is:',
 '["They are always illegal","They always result in tax penalties","They may not be at arm''s length and may be undertaken to achieve particular financial reporting results rather than reflecting underlying economic reality","They require disclosure only in the footnotes, not in the financial statement amounts"]'::jsonb,
 2,
 'The primary audit risk with related party transactions is that they may not be conducted at arm''s length, meaning the terms may not reflect fair market conditions. This creates a risk that the financial statements do not faithfully represent the underlying economics, and that the transactions may have been structured to achieve specific financial reporting objectives.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'When auditing fair value measurements categorized as Level 3 in the fair value hierarchy, the auditor faces the greatest challenge because:',
 '["Level 3 inputs are observable and easily verified","Level 3 measurements are always immaterial","Level 3 measurements use unobservable inputs based on management''s own assumptions, creating high estimation uncertainty and subjectivity","Level 3 is the most common category of fair value measurement"]'::jsonb,
 2,
 'Level 3 fair value measurements use significant unobservable inputs, meaning they rely heavily on management''s own assumptions and models rather than observable market data. This creates the greatest challenge for the auditor because the inputs are highly subjective, difficult to verify independently, and susceptible to management bias.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'An entity''s management states that there is no substantial doubt about going concern, but the auditor disagrees based on the available evidence. The auditor should:',
 '["Accept management''s conclusion because management knows the business best","Refuse to issue any opinion on the financial statements","Issue an unmodified opinion because management''s conclusion is presumed correct","Apply professional judgment to independently evaluate whether substantial doubt exists, considering all available evidence"]'::jsonb,
 3,
 'The auditor must independently evaluate whether substantial doubt about going concern exists, regardless of management''s conclusion. The auditor should consider all available evidence, including management''s plans to address the conditions, and apply professional judgment. If the auditor concludes that substantial doubt exists despite management''s assertion otherwise, appropriate reporting modifications are required.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'When auditing significant unusual transactions, the auditor should be particularly alert for:',
 '["Transactions that follow standard industry practices", "Transactions with clear business rationale and standard terms", "Transactions that appear to lack business substance, involve previously unidentified related parties, or have been processed in an unusual manner", "Transactions that involve only immaterial amounts"]'::jsonb,
 2,
 'Significant unusual transactions that appear to lack business substance, involve undisclosed related parties, or have been processed outside the normal course of business are potential indicators of fraud or manipulation. The auditor should investigate the business rationale, evaluate the terms, and consider whether the transactions are being used to misrepresent the entity''s financial position.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'When the auditor identifies management bias in accounting estimates, this finding:',
 '["Is expected and does not affect the audit","Only needs to be documented if the bias exceeds 10% of the estimate","Automatically requires an adverse opinion","Should be evaluated to determine whether the cumulative effect of the bias results in a material misstatement"]'::jsonb,
 3,
 'Management bias in estimates does not automatically result in a material misstatement, but the auditor should evaluate the cumulative effect of the bias across all estimates. If the cumulative effect of biased estimates results in a material misstatement, or if the bias indicates a possible intent to mislead (fraud risk indicator), the auditor must take appropriate action.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'Which of the following is an example of a going concern mitigating factor that management might present?',
 '["The entity plans to continue operating as it has in the past","The entity has no specific plans but is hopeful the situation will resolve","The entity''s management believes the industry will improve","The entity has obtained a commitment for additional financing or plans to sell non-essential assets"]'::jsonb,
 3,
 'Concrete mitigating factors include plans to obtain additional financing (with evidence of lender commitment), plans to sell non-essential assets, cost reduction programs with specific actions, or plans to restructure debt. Vague hopes or general optimism without specific, implementable plans are not adequate mitigating factors for going concern purposes.',
 'easy');

-- =============================================================================
-- Topic 14: Modifications to the Auditor Report (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'A qualified opinion is appropriate when the auditor concludes that:',
 '["Misstatements are material and pervasive to the financial statements", "Misstatements are material but not pervasive to the financial statements", "The auditor cannot obtain any evidence about the financial statements", "The financial statements are fairly presented in all material respects"]'::jsonb,
 1,
 'A qualified opinion is expressed when the auditor concludes that misstatements, individually or in the aggregate, are material but not pervasive to the financial statements. "Not pervasive" means the misstatements do not affect a substantial portion of the financial statements, are limited to specific elements or accounts, or, in the case of disclosures, are not fundamental to users'' understanding.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'An adverse opinion is expressed when the auditor concludes that:',
 '["The auditor is unable to obtain sufficient appropriate audit evidence", "Misstatements are immaterial to the financial statements", "Misstatements are both material and pervasive to the financial statements", "The entity is no longer a going concern"]'::jsonb,
 2,
 'An adverse opinion is expressed when the auditor, having obtained sufficient appropriate audit evidence, concludes that misstatements, individually or in the aggregate, are both material and pervasive to the financial statements. This means the misstatements are so significant that a qualified opinion is not adequate to communicate the extent of the departure from the applicable framework.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'A disclaimer of opinion is appropriate when:',
 '["The financial statements contain only immaterial misstatements", "The auditor is unable to obtain sufficient appropriate audit evidence on which to base an opinion, and the possible effects are material and pervasive", "The auditor discovers fraud during the audit", "Management provides all requested information but the auditor disagrees with the accounting treatment"]'::jsonb,
 1,
 'A disclaimer of opinion is expressed when the auditor is unable to obtain sufficient appropriate audit evidence on which to base an opinion, and the auditor concludes that the possible effects on the financial statements of undetected misstatements could be both material and pervasive. This occurs when scope limitations are so severe that the auditor cannot form an opinion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'An emphasis-of-matter paragraph is included in the auditor''s report to:',
 '["Modify the auditor''s opinion on the financial statements", "Draw users'' attention to a matter that is appropriately presented or disclosed in the financial statements and is of such importance that it is fundamental to users'' understanding", "Replace the basis for opinion paragraph", "Limit the auditor''s liability"]'::jsonb,
 1,
 'An emphasis-of-matter paragraph draws attention to a matter that is appropriately presented or disclosed in the financial statements but is of such importance that it is fundamental to users'' understanding. Examples include going concern uncertainties, significant related party transactions, or the adoption of a new accounting standard. It does not modify the opinion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'An other-matter paragraph differs from an emphasis-of-matter paragraph because an other-matter paragraph:',
 '["Always modifies the audit opinion", "Refers to matters not presented or disclosed in the financial statements but relevant to users'' understanding of the audit, the auditor''s responsibilities, or the auditor''s report", "Is used only for going concern issues", "Replaces the opinion paragraph"]'::jsonb,
 1,
 'An other-matter paragraph addresses matters not presented or disclosed in the financial statements that are relevant to users'' understanding of the audit, the auditor''s responsibilities, or the auditor''s report. Examples include reference to a prior-period auditor''s report, restrictions on distribution of the report, or supplementary information. It differs from emphasis-of-matter, which relates to items in the financial statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'An auditor discovers that a client has failed to disclose a material related party transaction. Management refuses to add the disclosure. The auditor should:',
 '["Issue an unmodified opinion because the amounts in the financial statements are correct", "Issue an unmodified opinion with an emphasis-of-matter paragraph", "Issue a qualified or adverse opinion depending on whether the omission is material and pervasive", "Issue a disclaimer of opinion"]'::jsonb,
 2,
 'The omission of a required disclosure of a material related party transaction represents a departure from the applicable financial reporting framework. The auditor should issue a qualified opinion (if the omission is material but not pervasive) or an adverse opinion (if the omission is both material and pervasive). The auditor should include the omitted disclosure in the basis for qualification paragraph to the extent practicable.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'When the auditor issues a qualified opinion due to a departure from the applicable financial reporting framework, the report should include:',
 '["Only the standard unmodified opinion language", "A basis for qualified opinion paragraph that describes the nature and amount of the misstatement and its effect on the financial statements", "A reference to the client''s external legal counsel''s letter", "An emphasis-of-matter paragraph instead of a basis for opinion paragraph"]'::jsonb,
 1,
 'A qualified opinion due to a departure from the framework requires a basis for qualified opinion paragraph. This paragraph describes the nature of the misstatement, quantifies its effect on the financial statements (if practicable), and explains why the auditor concluded the departure is material. The opinion paragraph then includes "except for" language referring to this basis paragraph.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'The auditor is unable to observe the physical inventory count because the auditor was appointed after year-end, and alternative procedures do not provide sufficient evidence. If the effect is material but not pervasive, the auditor should issue:',
 '["An unmodified opinion", "An adverse opinion", "A disclaimer of opinion", "A qualified opinion due to a limitation on scope"]'::jsonb,
 3,
 'When the auditor is unable to obtain sufficient appropriate audit evidence due to a scope limitation (such as inability to observe inventory and inability to perform satisfactory alternative procedures), and the possible effects are material but not pervasive, the auditor should issue a qualified opinion. The basis for qualified opinion paragraph should describe the scope limitation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'Which of the following situations would most likely result in a disclaimer of opinion?',
 '["Management imposed a scope limitation that prevents the auditor from obtaining evidence for multiple significant accounts representing a substantial portion of the financial statements","The entity changed its depreciation method from straight-line to accelerated","The entity adopted a new accounting standard that changed the presentation of revenue","The auditor disagrees with management''s estimate of the allowance for doubtful accounts"]'::jsonb,
 0,
 'A disclaimer is appropriate when scope limitations are so severe and pervasive that the auditor is unable to obtain sufficient evidence on which to base an opinion. Management-imposed scope limitations affecting multiple significant accounts representing a substantial portion of the financial statements would typically be both material and pervasive, warranting a disclaimer.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'When the auditor issues a qualified opinion, the opinion paragraph should use the phrase:',
 '["In our opinion, except for the effects of the matter described in the Basis for Qualified Opinion section, the financial statements present fairly","In our opinion, the financial statements present fairly","We do not express an opinion on the financial statements","In our opinion, the financial statements do not present fairly"]'::jsonb,
 0,
 'A qualified opinion uses "except for" language in the opinion paragraph. The typical wording is: "In our opinion, except for the effects of the matter described in the Basis for Qualified Opinion section, the financial statements present fairly, in all material respects..." This clearly communicates that the qualification relates to a specific, identified matter.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'An auditor discovers that the client has materially overstated inventory by $2 million. The overstatement also affects cost of goods sold and net income. Management refuses to correct the error. If the auditor determines the misstatement is material and pervasive, the auditor should issue:',
 '["An unmodified opinion with an emphasis-of-matter paragraph", "A qualified opinion", "An adverse opinion", "A disclaimer of opinion"]'::jsonb,
 2,
 'When the auditor has obtained sufficient evidence and concludes that misstatements are both material and pervasive (affecting inventory, cost of goods sold, net income, and potentially other elements of the financial statements), an adverse opinion is appropriate. The pervasiveness of the misstatement across multiple accounts and financial statements warrants a more severe modification than a qualified opinion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'The concept of "pervasiveness" in the context of modified opinions refers to:',
 '["The extent to which the misstatement affects or could affect the financial statements, including whether it is confined to specific elements or is widespread","Whether the misstatement is large in dollar amount","Whether management agrees with the auditor''s assessment","The number of audit procedures performed"]'::jsonb,
 0,
 'Pervasiveness describes the extent to which misstatements (or potential effects of undetected misstatements) spread across the financial statements. A misstatement is pervasive if it: (1) is not confined to specific elements, accounts, or items, (2) represents a substantial proportion of the financial statements, or (3) fundamentally undermines users'' understanding of the disclosures.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'When the entity changes from one acceptable accounting principle to another acceptable accounting principle and the change is properly accounted for and disclosed, the auditor should:',
 '["Issue an unmodified opinion and consider adding an emphasis-of-matter paragraph about the change","Issue a qualified opinion due to the change in accounting principle","Issue an adverse opinion because accounting consistency has been violated","Issue a disclaimer of opinion"]'::jsonb,
 0,
 'When the entity appropriately changes from one acceptable accounting principle to another, the auditor issues an unmodified opinion. The auditor should consider whether the change warrants an emphasis-of-matter paragraph to draw users'' attention to the change and its effects. The emphasis-of-matter paragraph does not modify the opinion but informs users of the significant change.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'A scope limitation imposed by circumstances beyond management''s control (such as destruction of records in a natural disaster) would result in:',
 '["An unmodified opinion because management was not at fault","An adverse opinion because the records were destroyed","A qualified opinion or disclaimer depending on the materiality and pervasiveness of the potential effects","No effect on the auditor''s report"]'::jsonb,
 2,
 'A scope limitation — regardless of whether it is imposed by management or by circumstances — requires the auditor to evaluate the potential effects on the financial statements. If the possible effects are material but not pervasive, a qualified opinion is appropriate. If the possible effects are material and pervasive, a disclaimer of opinion is warranted. The cause of the limitation does not change this analysis.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'When an auditor issues an adverse opinion, the adverse opinion relates to:',
 '["The financial statements as a whole", "Only the specific accounts or assertions that are misstated", "Only the entity''s internal controls", "The auditor''s inability to complete the audit"]'::jsonb,
 0,
 'An adverse opinion relates to the financial statements as a whole. Even though the misstatement may originate in specific accounts, the adverse opinion states that the financial statements taken as a whole do not present fairly. The auditor does not limit the adverse opinion to only the affected accounts — the opinion covers the complete set of financial statements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'An entity fails to disclose a significant contingent liability that the auditor believes should be disclosed under the applicable financial reporting framework. If the omission is material but not pervasive, the auditor should:',
 '["Issue an unmodified opinion because contingent liabilities are uncertain","Issue a disclaimer of opinion","Issue a qualified opinion and include the omitted disclosure information in the basis for qualified opinion paragraph to the extent practicable","Issue an unmodified opinion with an emphasis-of-matter paragraph"]'::jsonb,
 2,
 'When required disclosures are omitted and the omission is material but not pervasive, the auditor should issue a qualified opinion. The basis for qualified opinion paragraph should describe the omission and, to the extent practicable, include the missing information. This allows users to understand both the nature of the departure and its potential impact.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'The auditor includes a basis for opinion paragraph (for an unmodified opinion) or a basis for modified opinion paragraph in the report. The primary purpose of this section is to:',
 '["Describe the audit procedures performed","Describe management''s responsibilities","List all misstatements found during the audit","Provide the foundation for the auditor''s opinion by describing the auditor''s responsibilities and, for modified opinions, the reasons for the modification"]'::jsonb,
 3,
 'The basis for opinion section states that the audit was conducted in accordance with GAAS, references the auditor''s independence and ethical responsibilities, and states that the evidence obtained is sufficient and appropriate. For modified opinions, this section specifically describes the reasons for the modification, including the nature of the misstatement or scope limitation.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'When the auditor discovers a material misstatement in one financial statement that does not pervasively affect the other financial statements, which of the following is most appropriate?',
 '["An adverse opinion on all financial statements","An unmodified opinion on all financial statements","A disclaimer of opinion on all financial statements","A qualified opinion on the affected financial statement and an unmodified opinion on the other financial statements"]'::jsonb,
 3,
 'When a material misstatement affects only one financial statement (e.g., the balance sheet) and does not pervasively affect the others (e.g., the income statement or cash flow statement), the auditor may issue a qualified or adverse opinion on the affected financial statement while issuing an unmodified opinion on the other financial statements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'An emphasis-of-matter paragraph is typically used for all of the following EXCEPT:',
 '["Going concern uncertainty", "A change in accounting principle", "A significant subsequent event appropriately disclosed", "A known departure from the applicable financial reporting framework"]'::jsonb,
 3,
 'An emphasis-of-matter paragraph highlights matters that are appropriately presented or disclosed in the financial statements. It is used for going concern issues, changes in accounting principles, and significant subsequent events when properly disclosed. A departure from the financial reporting framework is not appropriate for an emphasis-of-matter paragraph — it requires a qualified or adverse opinion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Modifications to the Auditor Report',
 'When an auditor disclaims an opinion, the auditor''s report should:',
 '["Include a description of the auditor''s responsibility and state that evidence was obtained","Include an emphasis-of-matter paragraph","Be identical to an unmodified opinion report except for the opinion paragraph","Not include the standard statement about the auditor''s responsibility to obtain reasonable assurance, and should describe the reasons for the disclaimer"]'::jsonb,
 3,
 'When disclaiming an opinion, the auditor''s report should state that the auditor does not express an opinion. The report should not include the standard statements about the auditor''s responsibility to obtain reasonable assurance or that sufficient appropriate evidence was obtained. The basis for disclaimer paragraph should clearly describe the reasons the auditor could not form an opinion.',
 'hard');

-- =============================================================================
-- Topic 15: Other Information and Supplementary Information (20 questions)
-- Difficulty: 6 easy, 8 medium, 6 hard
-- Correct index distribution: 5 each for 0, 1, 2, 3
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'Under AU-C 720, "other information" refers to:',
 '["The audited financial statements and related notes", "Financial and non-financial information included in a document containing audited financial statements, other than the audited financial statements and the auditor''s report", "Only the management discussion and analysis section", "Supplementary schedules that are audited along with the financial statements"]'::jsonb,
 1,
 'Other information, as defined in AU-C 720, refers to financial and non-financial information (other than the audited financial statements and the auditor''s report thereon) included in a document containing the audited financial statements. Examples include the annual report, management discussion and analysis, letters from the president or board chair, and statistical summaries.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'The auditor''s responsibility regarding other information in documents containing audited financial statements is to:',
 '["Audit the other information to the same extent as the financial statements", "Read the other information and consider whether it is materially inconsistent with the audited financial statements or the auditor''s knowledge obtained during the audit", "Ignore the other information because it is not audited", "Provide a separate opinion on the other information"]'::jsonb,
 1,
 'The auditor''s responsibility is to read the other information and consider whether it is materially inconsistent with the audited financial statements or the auditor''s knowledge obtained during the audit. The auditor does not audit or express an opinion on the other information, but must remain alert to material inconsistencies or material misstatements of fact.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'Required supplementary information (RSI) differs from other supplementary information because RSI:',
 '["Is required by the applicable financial reporting framework to accompany the basic financial statements, though it is not part of the basic financial statements", "Is always audited along with the financial statements", "Is optional and can be omitted without consequence", "Is prepared by the auditor rather than management"]'::jsonb,
 0,
 'Required supplementary information (RSI) is information that a designated accounting standards setter (such as GASB or FASB) requires to accompany the basic financial statements. While RSI is not part of the basic financial statements, its omission would be a departure from the prescribed guidelines. Examples include pension schedules for governmental entities and certain oil and gas disclosures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'If the auditor identifies a material inconsistency between the other information and the audited financial statements, the auditor should:',
 '["Ignore the inconsistency because the other information is not audited", "Determine whether the audited financial statements or the other information needs to be revised, and discuss the matter with management", "Immediately issue a qualified opinion on the financial statements", "Report the inconsistency only to the SEC"]'::jsonb,
 1,
 'When a material inconsistency is identified, the auditor should determine whether the audited financial statements or the other information needs to be revised. The auditor should discuss the inconsistency with management. If the financial statements need revision, this affects the audit opinion. If the other information needs revision, the auditor should request management to correct it.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'Supplementary information that accompanies the audited financial statements but is not required by the financial reporting framework is referred to as:',
 '["Required supplementary information", "Other information", "Supplementary information accompanying the audited financial statements", "Additional voluntary disclosures"]'::jsonb,
 2,
 'Supplementary information accompanying the audited financial statements (addressed in AU-C 725) refers to information presented outside the basic financial statements that is not required by the financial reporting framework but that management chooses to present alongside the audited statements. The auditor may be engaged to report on this supplementary information in relation to the financial statements as a whole.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'When reporting on supplementary information in relation to the audited financial statements as a whole, the auditor expresses an opinion on whether:',
 '["The supplementary information is complete and accurate in all respects", "The supplementary information is fairly stated, in all material respects, in relation to the financial statements as a whole", "The supplementary information complies with all regulatory requirements", "The supplementary information is more reliable than the basic financial statements"]'::jsonb,
 1,
 'When the auditor is engaged to report on supplementary information in relation to the audited financial statements as a whole, the opinion states whether the supplementary information is fairly stated, in all material respects, in relation to the financial statements as a whole. This is a lower threshold than an opinion on the supplementary information taken by itself.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'The auditor''s procedures with respect to required supplementary information (RSI) include:',
 '["A full audit of the RSI to the same extent as the financial statements", "Inquiries of management about the methods used to prepare the RSI and comparing it for consistency with the audited financial statements", "Issuing a separate audit opinion on the RSI", "No procedures are required because RSI is outside the scope of the audit"]'::jsonb,
 1,
 'The auditor''s procedures for RSI are limited but specific. They include inquiring of management about the methods of preparing the RSI, comparing the RSI for consistency with management''s responses to inquiries, the basic financial statements, and other knowledge obtained during the audit. The auditor does not audit the RSI but performs these limited procedures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'If required supplementary information is omitted entirely, the auditor should:',
 '["Include a paragraph in the auditor''s report noting the omission without modifying the opinion on the financial statements","Issue a qualified opinion on the financial statements","Refuse to issue the audit report","Issue an adverse opinion"]'::jsonb,
 0,
 'If RSI is omitted, the auditor should include an other-matter paragraph in the audit report noting the omission. However, the omission of RSI does not modify the opinion on the basic financial statements because RSI is not part of the basic financial statements. The report simply notes that the required supplementary information has not been presented.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'When the auditor identifies a material misstatement of fact in the other information (a factual error unrelated to matters in the financial statements), the auditor should:',
 '["Discuss the matter with management and request correction of the misstatement","Ignore it because it does not affect the financial statements","Issue a modified opinion on the financial statements","Report the misstatement to law enforcement"]'::jsonb,
 0,
 'A material misstatement of fact in the other information — even if unrelated to the financial statements — may undermine the credibility of the document containing the audited financial statements. The auditor should discuss the apparent misstatement with management and request that it be corrected. If management refuses to correct it, the auditor should consider further actions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'If the RSI is presented but the auditor identifies material departures from prescribed guidelines, the auditor''s report should:',
 '["Be modified with a qualified opinion","Not mention the departure because the RSI is not audited","Include a description of the departure in an other-matter paragraph","Include an adverse opinion on the RSI"]'::jsonb,
 2,
 'When the auditor identifies material departures from prescribed guidelines in the RSI (such as missing required schedules, incorrect methodology, or significant inconsistencies), the auditor should include a description of the departure in an other-matter paragraph. The opinion on the basic financial statements is not modified because RSI is not part of the basic financial statements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'An entity''s annual report contains an unaudited five-year financial summary along with the audited financial statements. The five-year summary is considered:',
 '["Part of the audited financial statements","Required supplementary information","Other information that the auditor should read and consider for material inconsistencies","Outside the auditor''s consideration entirely"]'::jsonb,
 2,
 'An unaudited five-year financial summary included in the annual report is considered other information under AU-C 720. The auditor should read it and consider whether it is materially inconsistent with the audited financial statements or the auditor''s knowledge obtained during the audit. The auditor does not audit this information but has a responsibility to be alert to material inconsistencies.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'If management refuses to correct a material inconsistency in the other information that the auditor has identified, and the financial statements do not need revision, the auditor should:',
 '["Issue a qualified opinion on the financial statements","Accept management''s decision and take no further action","Include a description of the material inconsistency in an other-matter paragraph or take other appropriate actions such as withholding the auditor''s report or withdrawing from the engagement","Adjust the financial statements to match the other information"]'::jsonb,
 2,
 'If management refuses to correct a material inconsistency in the other information (and the auditor has confirmed the financial statements are correct), the auditor should consider including a description of the inconsistency in an other-matter paragraph, withholding the auditor''s report, or withdrawing from the engagement. The specific action depends on the significance of the inconsistency.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'When supplementary information accompanies audited financial statements and the auditor has been engaged to report on it, the auditor''s opinion on the supplementary information:',
 '["Can be presented in a separate report or as an other-matter paragraph in the auditor''s report on the financial statements", "Must always be in a separate report", "Must be combined with the opinion on the financial statements in a single paragraph", "Cannot be presented in the auditor''s report on the financial statements"]'::jsonb,
 0,
 'The auditor''s report on supplementary information in relation to the financial statements as a whole may be presented either in a separate report or as an other-matter paragraph in the auditor''s report on the financial statements. Either format is acceptable under AU-C 725, and the choice depends on the circumstances and the auditor''s preference.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'The auditor''s responsibility for other information is different from the responsibility for the financial statements because:',
 '["The auditor has no responsibility for other information","The auditor is responsible for ensuring the accuracy of all other information","The auditor audits the other information but issues a separate opinion","The auditor reads the other information for inconsistencies but does not audit it or express an opinion on it"]'::jsonb,
 3,
 'The auditor''s responsibility for other information is limited to reading it and considering whether it is materially inconsistent with the audited financial statements or the auditor''s knowledge. Unlike the financial statements, the auditor does not audit the other information, does not design procedures to obtain evidence about it, and does not express an opinion on it.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'In a governmental audit, the auditor''s report on supplementary information typically includes reporting on the schedule of expenditures of federal awards. This schedule is considered:',
 '["Part of the basic financial statements", "Other information with no additional reporting requirement", "Supplementary information that the auditor reports on in relation to the financial statements as a whole", "Required supplementary information under GASB standards"]'::jsonb,
 2,
 'In governmental audits under the Uniform Guidance (2 CFR 200), the schedule of expenditures of federal awards is supplementary information that the auditor reports on in relation to the financial statements as a whole. The auditor issues an opinion on whether this schedule is fairly stated in all material respects in relation to the basic financial statements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'If the auditor has not been engaged to report on supplementary information but it is presented alongside the audited financial statements, the auditor should:',
 '["Audit the supplementary information anyway","Request management to remove the supplementary information","Ignore the supplementary information entirely","Include an other-matter paragraph in the auditor''s report indicating that the supplementary information has not been audited and the auditor does not express an opinion on it"]'::jsonb,
 3,
 'When supplementary information accompanies the audited financial statements but the auditor has not been engaged to report on it, the auditor should include an other-matter paragraph in the audit report to clearly indicate that the supplementary information has not been subjected to the auditing procedures applied in the audit and the auditor does not express an opinion or provide assurance on it.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'The auditor reads the other information to identify material inconsistencies. A "material inconsistency" exists when:',
 '["The other information contradicts information in the audited financial statements in a way that could undermine the credibility of the financial statements", "The other information is formatted differently from the financial statements", "The other information includes more detail than the financial statements", "The other information is printed on different paper than the financial statements"]'::jsonb,
 0,
 'A material inconsistency exists when the other information contradicts information in the audited financial statements. For example, if the audited financial statements report revenue of $10 million but the president''s letter states revenue was $12 million, this is a material inconsistency that could undermine the credibility of the audited financial statements and confuse users.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'When the auditor''s report includes reporting on RSI, the report should indicate that:',
 '["The RSI has been audited","The auditor guarantees the accuracy of the RSI","The RSI is more reliable than the basic financial statements","The auditor applied limited procedures to the RSI but did not audit it, and does not express an opinion or provide any assurance on the RSI"]'::jsonb,
 3,
 'The auditor''s report on RSI should clearly state that the auditor applied certain limited procedures (inquiries of management and comparison for consistency) but did not audit the RSI, and accordingly does not express an opinion or provide any assurance on it. This communicates the limited nature of the auditor''s involvement with the RSI.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'If the other information is received by the auditor after the date of the auditor''s report, the auditor:',
 '["Has no responsibility for the other information","Must re-audit the financial statements","Must reissue the auditor''s report","Still has a responsibility to read the other information and consider whether there is a material inconsistency or misstatement of fact"]'::jsonb,
 3,
 'Even if the other information is received after the date of the auditor''s report, the auditor still has a responsibility to read it and consider whether there is a material inconsistency with the audited financial statements or a material misstatement of fact. If a material inconsistency or misstatement is identified, the auditor should take appropriate action.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Other Information and Supplementary Information',
 'An auditor discovers that management''s discussion and analysis (MD&A) in an annual report describes a trend in declining profit margins, but the audited financial statements show that profit margins have been stable. This represents:',
 '["A matter requiring no auditor action","A normal difference between narrative and quantitative information","A reason to modify the audit opinion","A material inconsistency between the other information and the audited financial statements that the auditor should address with management"]'::jsonb,
 3,
 'A contradiction between the MD&A''s description of declining profit margins and the financial statements'' evidence of stable margins is a material inconsistency. The auditor should discuss the matter with management to determine which is correct, and request that the incorrect information be revised. If the financial statements are correct and management refuses to revise the MD&A, the auditor should consider further action.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(1, 'Specific Areas and Transactions',
 'When auditing the fair value of an investment property, the auditor discovers that management used a discounted cash flow model with an unusually low discount rate compared to market rates. The auditor should:',
 '["Accept management''s discount rate because management knows the property best","Disclaim an opinion because fair value measurements are too subjective to audit","Require management to use the highest available discount rate","Evaluate whether the discount rate is reasonable by comparing it to market rates, considering the specific risk characteristics of the property, and assessing whether the low rate indicates management bias"]'::jsonb,
 3,
 'When management uses an unusually low discount rate in a fair value measurement, the auditor should evaluate its reasonableness by comparing to market benchmarks, considering the specific risk characteristics of the asset, and assessing whether management has a bias toward higher valuations. An unreasonably low discount rate inflates the fair value and may indicate a judgmental misstatement.',
 'hard');
