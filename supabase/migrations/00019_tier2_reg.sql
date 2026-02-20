-- =============================================================================
-- Tier 2 REG: Federal Tax Procedures, Legal Duties, Debtor-Creditor
-- 3 lessons, 30 questions (10 per lesson)
-- =============================================================================

-- Insert lesson rows
insert into lessons (section_id, title, slug, content_path, display_order, is_free) values
  (3, 'Federal Tax Procedures', '14-federal-tax-procedures', 'reg/14-federal-tax-procedures', 14, false),
  (3, 'Legal Duties and Responsibilities', '15-legal-duties', 'reg/15-legal-duties', 15, false),
  (3, 'Debtor-Creditor Relationships', '16-debtor-creditor', 'reg/16-debtor-creditor', 16, false);

-- =============================================================================
-- Federal Tax Procedures (10 questions: 3 easy, 4 medium, 3 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(3, 'Federal Tax Procedures',
 'A taxpayer files a timely 2024 tax return on April 15, 2025. Under the general rule, when does the statute of limitations for IRS assessment expire?',
 '["April 15, 2026", "April 15, 2027", "April 15, 2028", "April 15, 2031"]'::jsonb,
 2,
 'The general statute of limitations for IRS assessment is 3 years from the later of the filing date or the due date. Since the return was filed on the due date (April 15, 2025), the statute expires April 15, 2028.',
 'easy'),

(3, 'Federal Tax Procedures',
 'Which type of IRS audit is conducted at the taxpayer''s place of business and involves the broadest review of books and records?',
 '["Correspondence audit", "Office audit", "Field audit", "Desk audit"]'::jsonb,
 2,
 'A field audit is the most comprehensive examination. An IRS revenue agent visits the taxpayer''s home, place of business, or accountant''s office to review books and records. Correspondence audits are conducted by mail, and office audits are at IRS offices.',
 'easy'),

(3, 'Federal Tax Procedures',
 'What is the penalty rate for civil fraud under Section 6663?',
 '["20% of the underpayment", "50% of the underpayment", "75% of the underpayment", "100% of the underpayment"]'::jsonb,
 2,
 'The civil fraud penalty under Section 6663 is 75% of the portion of the underpayment attributable to fraud. The IRS bears the burden of proving fraud by clear and convincing evidence. The 20% rate applies to the accuracy-related penalty under Section 6662.',
 'easy'),

(3, 'Federal Tax Procedures',
 'A taxpayer files a 2024 return reporting $160,000 of gross income but omits $50,000 of additional income. What statute of limitations period applies?',
 '["3 years", "6 years", "10 years", "Unlimited"]'::jsonb,
 1,
 'The 6-year statute applies when the taxpayer omits more than 25% of gross income. Here, the omission ($50,000) exceeds 25% of reported gross income ($160,000 x 25% = $40,000), so the extended 6-year period applies.',
 'medium'),

(3, 'Federal Tax Procedures',
 'A taxpayer files a return 5 months late (no fraud) with $30,000 of unpaid tax. What is the total failure-to-file and failure-to-pay penalty?',
 '["$3,750", "$6,750", "$7,500", "$8,250"]'::jsonb,
 2,
 'When both penalties apply concurrently, the total rate is 5% per month (FTF 4.5% + FTP 0.5%). For 5 months: $30,000 x 5% x 5 = $7,500. The FTF penalty maxes out at 25% after 5 months.',
 'medium'),

(3, 'Federal Tax Procedures',
 'Which court allows a taxpayer to challenge a tax deficiency without first paying the disputed amount?',
 '["U.S. District Court", "U.S. Tax Court", "Court of Federal Claims", "U.S. Court of Appeals"]'::jsonb,
 1,
 'The U.S. Tax Court is the only judicial forum where a taxpayer can litigate a tax deficiency without first paying the tax. District Court and Court of Federal Claims require prepayment followed by a refund suit.',
 'medium'),

(3, 'Federal Tax Procedures',
 'The IRS sends a taxpayer a statutory notice of deficiency (90-day letter). If the taxpayer does not respond, what happens after 90 days?',
 '["The case is automatically referred to IRS Appeals", "The IRS formally assesses the tax and may begin collection", "The taxpayer receives an additional 90-day extension", "The statute of limitations is tolled indefinitely"]'::jsonb,
 1,
 'If the taxpayer does not file a Tax Court petition within 90 days (150 days if outside the U.S.) of a statutory notice of deficiency, the IRS formally assesses the tax and may begin collection proceedings. The 90-day letter is the prerequisite to Tax Court jurisdiction.',
 'medium'),

(3, 'Federal Tax Procedures',
 'A taxpayer has a substantial understatement of income tax. Under Section 6662, which of the following thresholds defines a ''substantial understatement'' for an individual?',
 '["The greater of 5% of tax shown on return or $1,000", "The greater of 10% of the correct tax or $5,000", "The greater of 25% of gross income or $10,000", "Any underpayment exceeding $500"]'::jsonb,
 1,
 'A substantial understatement of income tax exists when the understatement exceeds the greater of 10% of the correct tax or $5,000 ($10,000 for C corporations). This triggers the 20% accuracy-related penalty under Section 6662.',
 'hard'),

(3, 'Federal Tax Procedures',
 'A taxpayer files a fraudulent 2020 return on April 15, 2021. When does the statute of limitations for assessment expire?',
 '["April 15, 2024", "April 15, 2027", "April 15, 2031", "The statute never expires"]'::jsonb,
 3,
 'When a taxpayer files a fraudulent return with the intent to evade tax, the statute of limitations for assessment never expires. This is one of two situations (along with failure to file) where the IRS has unlimited time to assess.',
 'hard'),

(3, 'Federal Tax Procedures',
 'A taxpayer wants a jury trial to resolve a federal tax dispute. Which is the ONLY forum that provides this option?',
 '["U.S. Tax Court", "Court of Federal Claims", "U.S. District Court", "IRS Appeals Office"]'::jsonb,
 2,
 'The U.S. District Court is the only forum that offers a jury trial for tax disputes. The Tax Court uses specialized judges without a jury. The Court of Federal Claims also has no jury. IRS Appeals is an administrative process, not a judicial forum.',
 'hard'),

-- =============================================================================
-- Legal Duties and Responsibilities (10 questions: 3 easy, 4 medium, 3 hard)
-- =============================================================================

(3, 'Legal Duties and Responsibilities',
 'Under IRC Section 7525, which of the following is NOT protected by the tax practitioner privilege?',
 '["Tax advice from a CPA in a noncriminal IRS proceeding", "Tax advice from an enrolled agent in federal court", "Communications relating to a criminal tax investigation", "Tax advice from an enrolled actuary in a civil audit"]'::jsonb,
 2,
 'Section 7525 privilege does not apply in criminal tax matters. The privilege is limited to noncriminal tax proceedings before the IRS and in federal court. Only attorneys have privilege in criminal tax investigations through the attorney-client privilege.',
 'easy'),

(3, 'Legal Duties and Responsibilities',
 'What is the penalty under Section 6694(a) for a tax preparer who takes an unreasonable position resulting in an understatement?',
 '["$500 or 25% of income from the return", "Greater of $1,000 or 50% of income from the return", "Greater of $5,000 or 75% of income from the return", "$100 per failure"]'::jsonb,
 1,
 'The Section 6694(a) penalty for unreasonable positions is the greater of $1,000 or 50% of the income derived by the preparer from preparing the return. The 6694(b) penalty for willful/reckless conduct is the greater of $5,000 or 75% of income.',
 'easy'),

(3, 'Legal Duties and Responsibilities',
 'A paid tax return preparer must obtain and use which identification number on every return they prepare?',
 '["Social Security Number", "Employer Identification Number", "Preparer Tax Identification Number (PTIN)", "Individual Taxpayer Identification Number"]'::jsonb,
 2,
 'All paid tax return preparers must obtain and use a Preparer Tax Identification Number (PTIN) on every return they prepare for compensation. A preparer''s Social Security Number must never be used in place of a PTIN on client returns.',
 'easy'),

(3, 'Legal Duties and Responsibilities',
 'An undisclosed return position must meet which standard to avoid the Section 6694(a) penalty?',
 '["Reasonable basis (approximately 20% likelihood)", "Substantial authority (approximately 40% likelihood)", "More likely than not (greater than 50% likelihood)", "Frivolous standard (any arguable basis)"]'::jsonb,
 1,
 'Undisclosed return positions must meet the substantial authority standard, which requires approximately a 40% likelihood of being sustained on the merits. Disclosed positions only need a reasonable basis (~20%). Tax shelter positions require more likely than not (>50%).',
 'medium'),

(3, 'Legal Duties and Responsibilities',
 'A preparer earns a $6,000 fee for preparing a return and willfully understates the client''s tax liability. What is the Section 6694(b) penalty?',
 '["$1,000", "$3,000", "$4,500", "$5,000"]'::jsonb,
 3,
 'The Section 6694(b) penalty is the greater of $5,000 or 75% of the income derived from the return. 75% of $6,000 = $4,500. Since $5,000 is greater than $4,500, the penalty is $5,000.',
 'medium'),

(3, 'Legal Duties and Responsibilities',
 'A preparer fails to satisfy due diligence requirements for the Earned Income Credit, Child Tax Credit, and American Opportunity Credit on the same return. What is the total Section 6695(g) penalty?',
 '["$600", "$1,200", "$1,800", "$2,400"]'::jsonb,
 2,
 'The due diligence penalty under Section 6695(g) is $600 per applicable credit per return. Three credits x $600 = $1,800. Each credit for which due diligence is not met is a separate penalty.',
 'medium'),

(3, 'Legal Duties and Responsibilities',
 'Which of the following preparers would be subject to Section 6695 penalties for failure to sign a return?',
 '["A volunteer at an IRS VITA site", "A data entry clerk who inputs taxpayer information", "A CPA who has primary responsibility for the return''s accuracy", "An employee preparing their employer''s tax return"]'::jsonb,
 2,
 'The signing preparer — the individual with primary responsibility for the overall substantive accuracy of the return — must sign it. Volunteers, data entry clerks, and employees preparing employer returns are not considered ''tax return preparers'' under the statute.',
 'medium'),

(3, 'Legal Duties and Responsibilities',
 'A CPA prepares a memo analyzing a client''s aggressive tax position after the client receives a 30-day letter from the IRS. Is the memo likely protected by the work product doctrine?',
 '["No, because the work product doctrine does not apply to tax matters", "No, because the CPA is not an attorney", "Yes, because it was prepared in anticipation of litigation", "Yes, because all CPA workpapers are privileged"]'::jsonb,
 2,
 'The work product doctrine protects materials prepared in anticipation of litigation. A memo prepared after receiving an adverse IRS notice (30-day letter) is likely prepared in anticipation of possible Tax Court litigation and would qualify for protection.',
 'hard'),

(3, 'Legal Duties and Responsibilities',
 'A CPA takes a position on a tax shelter transaction. What minimum standard must the position meet to avoid the Section 6694(a) penalty?',
 '["Reasonable basis", "Substantial authority", "More likely than not", "Realistic possibility of success"]'::jsonb,
 2,
 'For tax shelter and reportable transactions, the position must meet the more likely than not standard (greater than 50% likelihood of being sustained on the merits), regardless of whether the position is disclosed. This is the highest of the three standards.',
 'hard'),

(3, 'Legal Duties and Responsibilities',
 'A CPA provides written tax advice to a corporate officer regarding the corporation''s participation in a listed transaction. Can the CPA invoke the Section 7525 privilege if the IRS requests the communication?',
 '["Yes, because the CPA is a federally authorized tax practitioner", "Yes, because the communication involved tax advice", "No, because Section 7525 does not apply to communications regarding tax shelters", "No, because written communications are never privileged"]'::jsonb,
 2,
 'Section 7525 privilege does not apply to written communications between a practitioner and a corporate participant in connection with promoting or participating in a tax shelter. Listed transactions are a type of reportable tax shelter.',
 'hard'),

-- =============================================================================
-- Debtor-Creditor Relationships (10 questions: 3 easy, 4 medium, 3 hard)
-- =============================================================================

(3, 'Debtor-Creditor Relationships',
 'Which bankruptcy chapter involves the liquidation of a debtor''s nonexempt assets and distribution of proceeds to creditors?',
 '["Chapter 7", "Chapter 11", "Chapter 13", "Chapter 15"]'::jsonb,
 0,
 'Chapter 7 is a liquidation proceeding. A trustee collects the debtor''s nonexempt assets, converts them to cash, and distributes the proceeds to creditors. The debtor typically receives a discharge of remaining debts.',
 'easy'),

(3, 'Debtor-Creditor Relationships',
 'Under UCC Article 9, which of the following is required for a security interest to attach to collateral?',
 '["Filing a financing statement with the Secretary of State", "The secured party giving value, the debtor having rights in the collateral, and an authenticated security agreement", "The creditor obtaining a court judgment against the debtor", "The debtor making the first payment on the secured loan"]'::jsonb,
 1,
 'Attachment requires three elements: (1) the secured party gives value, (2) the debtor has rights in the collateral, and (3) there is an authenticated security agreement or the secured party has possession. Filing a financing statement is for perfection, not attachment.',
 'easy'),

(3, 'Debtor-Creditor Relationships',
 'A surety pays a creditor $25,000 on behalf of the principal debtor. The surety''s right to recover this amount from the debtor is called:',
 '["Exoneration", "Contribution", "Subrogation", "Reimbursement"]'::jsonb,
 3,
 'Reimbursement (also called indemnification) is the surety''s right to recover from the principal debtor the amount paid to the creditor. Exoneration is a pre-payment right to compel the debtor to pay. Subrogation is stepping into the creditor''s shoes. Contribution applies among co-sureties.',
 'easy'),

(3, 'Debtor-Creditor Relationships',
 'Which of the following debts is generally nondischargeable in a Chapter 7 bankruptcy?',
 '["Credit card debt", "Medical bills", "Domestic support obligations (child support and alimony)", "Deficiency balance on a foreclosed mortgage"]'::jsonb,
 2,
 'Domestic support obligations including child support and alimony are nondischargeable in bankruptcy. Credit card debt, medical bills, and mortgage deficiency balances are generally dischargeable in Chapter 7.',
 'medium'),

(3, 'Debtor-Creditor Relationships',
 'In a Chapter 11 reorganization, a court confirms a plan over the objection of a dissenting creditor class. This is known as:',
 '["Automatic stay", "Cramdown", "Avoidance action", "Means test"]'::jsonb,
 1,
 'A cramdown occurs when the court confirms a reorganization plan over the objection of a dissenting class of creditors. The plan must be fair and equitable and must not discriminate unfairly. The automatic stay relates to halting collection actions, not plan confirmation.',
 'medium'),

(3, 'Debtor-Creditor Relationships',
 'Under the automatic stay in bankruptcy, which of the following actions is NOT prohibited?',
 '["A creditor filing a lawsuit to collect a pre-petition debt", "A landlord commencing eviction proceedings", "The government continuing a criminal prosecution against the debtor", "A bank freezing the debtor''s deposit account to offset a loan"]'::jsonb,
 2,
 'Criminal proceedings are specifically excepted from the automatic stay. The government may continue criminal prosecution against the debtor regardless of the bankruptcy filing. Collection actions, evictions (with limited exceptions), and setoffs are generally stayed.',
 'medium'),

(3, 'Debtor-Creditor Relationships',
 'A seller sells equipment to a debtor on credit and retains a purchase money security interest (PMSI). The debtor takes possession on May 1. By what date must the seller perfect the PMSI to obtain super-priority over a prior perfected security interest?',
 '["May 1 (same day as delivery)", "May 10 (10 days after delivery)", "May 21 (20 days after delivery)", "June 1 (30 days after delivery)"]'::jsonb,
 2,
 'A PMSI in goods other than inventory must be perfected within 20 days after the debtor receives possession to obtain super-priority over a prior perfected security interest. May 1 + 20 days = May 21.',
 'medium'),

(3, 'Debtor-Creditor Relationships',
 'Bank A files a financing statement on March 1 covering all of Debtor''s equipment. Bank B files a financing statement on April 1 also covering Debtor''s equipment. Bank B makes its loan on April 15. Bank A makes its loan on May 1. Who has priority?',
 '["Bank A, because it filed first", "Bank B, because it advanced funds first", "Neither, because both are perfected", "Bank B, because Bank A''s filing was premature"]'::jsonb,
 0,
 'Under the first-to-file-or-perfect rule, priority goes to whichever party filed or perfected first, regardless of when value was given or attachment occurred. Bank A filed on March 1, which is before Bank B''s filing on April 1, so Bank A has priority.',
 'hard'),

(3, 'Debtor-Creditor Relationships',
 'A creditor releases the principal debtor from a $100,000 obligation without the surety''s consent. What is the effect on the surety''s liability?',
 '["The surety remains fully liable for $100,000", "The surety is discharged from liability", "The surety''s liability is reduced by 50%", "The surety may seek specific performance against the creditor"]'::jsonb,
 1,
 'If the creditor releases the principal debtor without the surety''s consent, the surety is discharged from liability. Release of the principal debtor extinguishes the underlying obligation, and the surety cannot be held liable for an obligation that no longer exists.',
 'hard'),

(3, 'Debtor-Creditor Relationships',
 'A buyer purchases inventory from a retailer in the ordinary course of business. The retailer had granted a bank a perfected security interest in all of its inventory. Does the buyer take the goods free of the bank''s security interest?',
 '["No, the bank''s perfected security interest follows the goods", "No, unless the buyer had no knowledge of the security interest", "Yes, a buyer in the ordinary course of business takes free of a security interest created by the seller", "Yes, but only if the buyer files a financing statement"]'::jsonb,
 2,
 'Under UCC Article 9, a buyer in the ordinary course of business (BIOC) takes free of a security interest created by the seller, even if the buyer knows of the security interest. This rule protects retail purchasers and facilitates commerce.',
 'hard');
