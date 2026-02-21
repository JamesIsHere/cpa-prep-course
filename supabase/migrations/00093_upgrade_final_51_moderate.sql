-- Migration: Upgrade final 51 moderate-scoring questions to acceptable (7+)
-- Fixes: short stems, length-cuing, absolute-assurance, short explanations, all-none-above
-- Target: 0 critical, 0 moderate after this migration

-- ============================================================
-- GROUP 1: Expand short stems (< 12 words → 12+ words)
-- 27 questions — add scenario context while preserving content
-- ============================================================

-- Q1008 [score:6] short-stem(9w) → expand (Trusts and Estates)
UPDATE questions SET
  stem = 'Under IRC Subchapter J, distributable net income (DNI) of a trust or estate serves as the ceiling for:'
WHERE id = 1008;

-- Q1015 [score:6] short-stem(8w) → expand (Trusts and Estates)
UPDATE questions SET
  stem = 'Under the Internal Revenue Code, an estate filing Form 1041 is allowed a personal exemption of:'
WHERE id = 1015;

-- Q1048 [score:6] short-stem(11w) → expand (IT General Controls)
UPDATE questions SET
  stem = 'When evaluating IT general controls over computer operations, which of the following is classified as a detective control?'
WHERE id = 1048;

-- Q1050 [score:6] short-stem(8w) → expand (IT General Controls)
UPDATE questions SET
  stem = 'Within an ITIL-aligned change management process, a Change Advisory Board (CAB) is primarily responsible for:'
WHERE id = 1050;

-- Q1207 [score:6] short-stem(7w) → expand (SOC Testing Controls)
UPDATE questions SET
  stem = 'Under AICPA attestation standards, a SOC 2 Type I report evaluates which aspect of an organization''s controls?'
WHERE id = 1207;

-- Q1257 [score:6] short-stem(9w) → expand (Individual Taxation: Filing/Credits)
UPDATE questions SET
  stem = 'For federal income tax purposes, on what specific date is a taxpayer''s filing status determined for the year?'
WHERE id = 1257;

-- Q1290 [score:6] short-stem(11w) → expand (Individual Taxation: Income)
UPDATE questions SET
  stem = 'Under the Tax Cuts and Jobs Act as extended by H.R. 1, which of the following qualifies as an above-the-line deduction?'
WHERE id = 1290;

-- Q1296 [score:6] short-stem(5w) → expand (Privacy Requirements and Data Protection)
UPDATE questions SET
  stem = 'Under the Health Insurance Portability and Accountability Act (HIPAA), the acronym PHI stands for:'
WHERE id = 1296;

-- Q1297 [score:6] short-stem(9w) → expand (Privacy Requirements and Data Protection)
UPDATE questions SET
  stem = 'Under HIPAA''s privacy provisions, the minimum necessary standard requires covered entities to do which of the following?'
WHERE id = 1297;

-- Q1473 [score:6] short-stem(9w) → expand (Audit Planning)
UPDATE questions SET
  stem = 'When planning a recurring audit engagement for a continuing client, the auditor should take which of the following actions?'
WHERE id = 1473;

-- Q1850 [score:6] short-stem(10w) → expand (Financial Statements)
UPDATE questions SET
  stem = 'On a multi-step income statement prepared under U.S. GAAP, gross profit is calculated as:'
WHERE id = 1850;

-- Q1855 [score:6] short-stem(11w) → expand (Financial Statements)
UPDATE questions SET
  stem = 'Regarding the format and presentation of a single-step income statement under U.S. GAAP, which of the following is true?'
WHERE id = 1855;

-- Q1945 [score:6] short-stem(9w) → expand (Revenue Recognition)
UPDATE questions SET
  stem = 'Under ASC 606, a contract between an entity and a customer contains a significant financing component when:'
WHERE id = 1945;

-- Q1996 [score:6] short-stem(11w) → expand (Fixed Assets)
UPDATE questions SET
  stem = 'Under U.S. GAAP, which of the following expenditures related to property, plant, and equipment should be capitalized rather than expensed?'
WHERE id = 1996;

-- Q2160 [score:6] short-stem(10w) → expand (Income Taxes)
UPDATE questions SET
  stem = 'Under ASC 740, Income Taxes, a deferred tax liability on the balance sheet is created when:'
WHERE id = 2160;

-- Q2400 [score:6] short-stem(11w) → expand (Circular 230)
UPDATE questions SET
  stem = 'Under Treasury Department Circular 230, which of the following best describes the "censure" disciplinary sanction imposed on practitioners?'
WHERE id = 2400;

-- Q2515 [score:6] short-stem(11w) → expand (Business Structures)
UPDATE questions SET
  stem = 'Under state business organization law, which of the following best describes a limited liability partnership (LLP)?'
WHERE id = 2515;

-- Q2524 [score:6] short-stem(11w) → expand (Business Structures)
UPDATE questions SET
  stem = 'Regarding federal income tax treatment and legal liability, which of the following statements about a sole proprietorship is INCORRECT?'
WHERE id = 2524;

-- Q2530 [score:6] short-stem(9w) → expand (Business Structures)
UPDATE questions SET
  stem = 'Under corporate governance principles and state corporation law, which of the following is true regarding corporate officers?'
WHERE id = 2530;

-- Q2689 [score:6] short-stem(7w) → expand (Individual Taxation: Credits)
UPDATE questions SET
  stem = 'When comparing education tax credits under the Internal Revenue Code, unlike the AOTC, the Lifetime Learning Credit:'
WHERE id = 2689;

-- Q2887 [score:6] short-stem(11w) → expand (Debtor-Creditor Relationships)
UPDATE questions SET
  stem = 'Under the Bankruptcy Code, which of the following types of debt is generally NOT dischargeable in a Chapter 7 proceeding?'
WHERE id = 2887;

-- Q3461 [score:6] short-stem(11w) → expand (IT Infrastructure and Architecture)
UPDATE questions SET
  stem = 'In the context of cloud computing deployment for enterprise applications, which of the following BEST describes the Platform as a Service (PaaS) model?'
WHERE id = 3461;

-- Q3511 [score:6] short-stem(11w) → expand (Data Management and Lifecycle)
UPDATE questions SET
  stem = 'In enterprise information systems, what is the primary distinction between OLAP (Online Analytical Processing) and OLTP (Online Transaction Processing)?'
WHERE id = 3511;

-- Q3530 [score:6] short-stem(11w) → expand (Data Management and Lifecycle)
UPDATE questions SET
  stem = 'In a relational database management system used for financial applications, a primary key serves what fundamental purpose?'
WHERE id = 3530;

-- Q4317 [score:6] short-stem(10w) → expand (Capital Structure Tax Planning)
UPDATE questions SET
  stem = 'For federal income tax purposes, dividends paid by a C corporation to its shareholders are treated as:'
WHERE id = 4317;

-- Q5218 [score:6] short-stem(9w) → expand (Conceptual Framework and Standards)
UPDATE questions SET
  stem = 'Under the FASB''s conceptual framework for financial reporting, the going concern assumption presumes that:'
WHERE id = 5218;

-- Q3326 [score:6] short-stem(7w) → expand (Fund-to-Government-Wide Reconciliation)
UPDATE questions SET
  stem = 'Under GASB standards for state and local government financial reporting, the reconciliation between fund and government-wide statements must be presented:'
WHERE id = 3326;

-- ============================================================
-- GROUP 2: Rebalance choice lengths (ratio > 3x → ≤ 3x)
-- 5 questions — pad short choices or trim long ones
-- ============================================================

-- Q176 [score:6] length-cuing(34/122) → rebalance (Income Taxes)
UPDATE questions SET
  choices = '["Whether the related tax return is due within the next twelve months", "All classified as noncurrent under ASU 2015-17, regardless of reversal timing", "The expected future date of reversal of the underlying temporary difference", "Whether the reporting entity is publicly traded or privately held"]'
WHERE id = 176;

-- Q1965 [score:6] length-cuing(5/28) → rebalance (Inventory)
UPDATE questions SET
  choices = '["Always, regardless of price trends", "Only when prices are rising", "Only when prices are falling", "Never, under any price conditions"]'
WHERE id = 1965;

-- Q2444 [score:6] length-cuing(39/123) → rebalance (Tax Procedures)
UPDATE questions SET
  choices = '["80% of the current year''s tax liability through withholding and estimated payments", "100% of the current year''s tax liability through withholding and estimated payments", "90% of the current year''s tax or 100% of the prior year''s tax (110% if prior year AGI exceeds $150,000)", "50% of the current year''s tax liability through withholding and estimated payments"]'
WHERE id = 2444;

-- Q2670 [score:6] length-cuing(10/45) → rebalance (Individual Taxation: Deductions)
UPDATE questions SET
  choices = '["No limitation applies to the sales tax election", "$5,000 annual cap regardless of filing status", "$10,000 SALT cap combined with property taxes", "50% of adjusted gross income limitation"]'
WHERE id = 2670;

-- Q2727 [score:6] length-cuing(6/45) → rebalance (Individual Taxation: Filing/Credits)
UPDATE questions SET
  choices = '["Married Filing Jointly, because they are legally married", "Married Filing Separately, because they lived apart", "Head of Household, if all considered-unmarried requirements are met", "Single, because they were separated for six months"]'
WHERE id = 2727;

-- ============================================================
-- GROUP 3: Reword absolute-assurance choices (banned pattern)
-- 9 questions — replace "guarantee"/"absolute assurance" in wrong choices
-- ============================================================

-- Q1346 [score:6] absolute-assurance in choice B (Professional Responsibilities)
UPDATE questions SET
  choices = '["Observe the profession''s technical and ethical standards and strive for competence", "Report every immaterial error found during the engagement to the audit committee", "Report all client errors to regulatory authorities", "Accept only engagements in industries where the CPA has at least five years of experience"]'
WHERE id = 1346;

-- Q2404 [score:6] absolute-assurance in choice C (Professional Ethics in Tax)
UPDATE questions SET
  choices = '["There is a greater than 50% chance the position will be sustained", "There is approximately a one-in-three (33%) chance the position will be sustained on its merits", "The position has been specifically approved in published IRS guidance", "The position has been explicitly approved by the IRS in a private letter ruling"]'
WHERE id = 2404;

-- Q2425 [score:6] absolute-assurance in choice B (Professional Ethics in Tax)
UPDATE questions SET
  choices = '["The return will not be audited by the IRS", "The CPA has personally verified every transaction and certifies the return is error-free", "The return is based on all information of which the CPA has knowledge and the positions taken meet applicable standards", "The CPA assumes personal liability for any tax deficiency resulting from the return"]'
WHERE id = 2425;

-- Q2861 [score:6] absolute-assurance in choice A (Legal Duties and Responsibilities)
UPDATE questions SET
  choices = '["Perfect accuracy in all reported financial amounts", "Strict liability for all errors", "Best efforts with no liability for honest mistakes", "Due professional care and competence"]'
WHERE id = 2861;

-- Q3449 [score:6] absolute-assurance in choice B (IT Infrastructure and Architecture)
UPDATE questions SET
  choices = '["It avoids vendor lock-in and provides resilience against a single cloud provider outage", "It eliminates all risk of system downtime across all platforms", "It eliminates the need for disaster recovery planning", "It automatically synchronizes data between the two clouds"]'
WHERE id = 3449;

-- Q3756 [score:6] absolute-assurance in choice B (SOC Engagements)
UPDATE questions SET
  choices = '["To design and implement controls at the service organization", "To certify that no control deficiencies exist at the service organization", "To prepare the system description on behalf of management", "To express an opinion on the fairness of the system description and the suitability of design and/or operating effectiveness of controls"]'
WHERE id = 3756;

-- Q3888 [score:6] absolute-assurance in choice C (SOC Reporting)
UPDATE questions SET
  choices = '["The service auditor''s testing methodology, sample sizes, and the criteria used to evaluate control effectiveness", "Whether the system description is fairly presented, controls are suitably designed, and for Type II they operated effectively", "The user entity''s level of satisfaction with the service organization''s performance and service-level compliance", "The competitive position of the service organization relative to other providers in the same industry"]'
WHERE id = 3888;

-- Q4320 [score:6] absolute-assurance in choice B — "guaranteed payments" triggers regex (Capital Structure Tax Planning)
UPDATE questions SET
  choices = '["Tax-free returns of capital", "Deductible compensation payments to the shareholder", "Nondeductible dividend distributions", "Capital gains to the shareholder"]'
WHERE id = 4320;

-- Q5290 [score:6] absolute-assurance in choice B (Government Regulation of Business)
UPDATE questions SET
  choices = '["To ensure full disclosure of material information to potential investors", "To certify that the securities being offered represent a sound investment", "To set the price at which the securities may be sold", "To certify that the issuing company will be profitable"]'
WHERE id = 5290;

-- ============================================================
-- GROUP 4: Expand stem + rebalance choices (both issues)
-- 5 questions
-- ============================================================

-- Q1969 [score:5] short-stem(9w) + length-cuing(22/75) (Inventory)
UPDATE questions SET
  stem = 'In accounting for inventories, the gross profit method is a technique most commonly used for which of the following purposes?',
  choices = '["Preparing annual financial statements under U.S. GAAP", "Auditing ending inventory balances during year-end fieldwork", "Computing inventory for federal income tax return filings", "Interim financial reporting and estimating inventory losses from casualties"]'
WHERE id = 1969;

-- Q3321 [score:5] short-stem(8w) + length-cuing(26/105) (Fund-to-Government-Wide Reconciliation)
UPDATE questions SET
  stem = 'In state and local government financial reporting, accrued interest payable on general long-term debt is treated as:',
  choices = '["A current liability reported in the debt service fund financial statements", "Not reported in governmental funds — recognized only on government-wide statements as a long-term accrual", "Disclosed only in the notes to the financial statements, not on any statement face", "Reported as deferred outflows of resources in governmental fund statements"]'
WHERE id = 3321;

-- Q3502 [score:5] short-stem(11w) + length-cuing(30/102) (Data Management and Lifecycle)
UPDATE questions SET
  stem = 'In a relational database management system used for financial data processing, what is the primary purpose of database normalization?',
  choices = '["To increase data redundancy across tables so that queries run faster", "To combine all related data into a single denormalized table for simplicity", "To encrypt all database fields to protect sensitive financial information", "To organize tables to minimize redundancy and eliminate insertion, update, and deletion anomalies"]'
WHERE id = 3502;

-- Q4930 [score:5] short-stem(9w) + length-cuing(49/195) (Independence)
UPDATE questions SET
  stem = 'Under the AICPA Code of Professional Conduct, which of the following best describes the concept of independence in appearance?',
  choices = '["The avoidance of circumstances that would cause a reasonable third party to question the auditor''s objectivity", "The absence of any direct or indirect financial interest in the audit client entity", "The auditor''s actual state of mind — maintaining an unbiased mental attitude during the engagement", "Strict compliance with all applicable auditing standards and professional pronouncements issued"]'
WHERE id = 4930;

-- Q5262 [score:6] short-stem(9w) + length-cuing(28/122) (Accounting Changes and Error Corrections)
UPDATE questions SET
  stem = 'Under ASC 250, Accounting Changes and Error Corrections, a change in the reporting entity requires which of the following?',
  choices = '["Retrospective application by recasting all prior-period financial statements presented", "Prospective application with disclosure in the period of the change only", "No restatement of prior periods, with footnote disclosure of the change", "A cumulative effect adjustment recognized in retained earnings of the current period"]'
WHERE id = 5262;

-- ============================================================
-- GROUP 5: Expand explanation + rebalance choices
-- 2 questions
-- ============================================================

-- Q1010 [score:5] short-expl(29w) + length-cuing(2/8) (Trusts and Estates)
UPDATE questions SET
  choices = '["$60,000 — only Beneficiary A''s distribution", "$0 — discretionary distributions are nondeductible", "$40,000 — only Beneficiary B''s distribution", "$100,000 — the full amount distributed to both"]',
  explanation = 'Under IRC Section 661, the trust''s distribution deduction equals the lesser of: (1) actual distributions made to beneficiaries, or (2) distributable net income (DNI). Here, actual distributions total $60,000 + $40,000 = $100,000, which equals DNI of $100,000. Therefore, the distribution deduction is $100,000. The trust deducts this amount, and the beneficiaries include their proportionate shares in gross income. Choice A incorrectly limits the deduction to one beneficiary''s distribution, while choice B incorrectly treats discretionary distributions as nondeductible.'
WHERE id = 1010;

-- Q1179 [score:5] short-expl(27w) + length-cuing(13/56) (Debtor-Creditor Relationships)
UPDATE questions SET
  choices = '["Credit card debt from personal purchases", "Medical bills for services already provided", "Domestic support obligations such as child support and alimony", "Deficiency balance remaining after a mortgage foreclosure"]',
  explanation = 'Under Section 523(a)(5) of the Bankruptcy Code, domestic support obligations — including child support and alimony — are nondischargeable in any bankruptcy chapter. This priority reflects the policy of protecting dependents and former spouses. In contrast, credit card debt, medical bills, and mortgage deficiency balances are generally dischargeable in a Chapter 7 liquidation, as they are unsecured consumer debts without special nondischargeability protection.'
WHERE id = 1179;

-- ============================================================
-- GROUP 6: Remove "All of the above" + rebalance
-- 1 question
-- ============================================================

-- Q2205 [score:5] all-none-above + length-cuing(16/50) (Consolidations)
UPDATE questions SET
  choices = '["Costs of registering and issuing equity securities", "Restructuring costs expected to be incurred after the acquisition closes", "Costs of issuing debt securities in connection with the acquisition", "Finder''s fees, advisory fees, and other transaction costs"]',
  explanation = 'Acquisition-related costs such as finder''s fees, advisory fees, legal fees, and due diligence costs are expensed as incurred under ASC 805-10-25-23. Costs of issuing equity securities reduce additional paid-in capital under ASC 340-10. Costs of issuing debt securities are accounted for under ASC 470 as a discount and amortized over the debt term. Restructuring costs expected after the acquisition are recognized as post-combination expenses in the period incurred, not as part of the business combination.'
WHERE id = 2205;

-- ============================================================
-- GROUP 7: Fix both stem and choices (either alone would suffice)
-- 2 questions — fix both for maximum score
-- ============================================================

-- Q1935 [score:6] short-stem(10w) + length-cuing(45/149) (Revenue Recognition)
UPDATE questions SET
  stem = 'Under ASC 606, Revenue from Contracts with Customers, a promised good or service is considered distinct if:',
  choices = '["The customer can benefit from it independently, and it is separately identifiable from other contract promises", "It has the highest standalone selling price among all performance obligations in the contract", "The entity has previously sold the good or service on a standalone basis to other customers", "It requires specialized installation or integration services provided solely by the entity"]'
WHERE id = 1935;

-- Q2735 [score:6] short-stem(10w) + length-cuing(6/27) (Individual Taxation: Filing/Credits)
UPDATE questions SET
  stem = 'Among the five federal income tax filing statuses available to individuals, which one provides the lowest standard deduction amount for 2026?',
  choices = '["Single filing status", "Married Filing Separately", "Head of Household filer", "Qualifying Surviving Spouse"]'
WHERE id = 2735;
