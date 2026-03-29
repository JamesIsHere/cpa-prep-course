-- Migration: Stem expansion — REG batch 9 (46 questions)
-- Date: 2026-03-29
-- Purpose: Expand 46 short stems with scenario context for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Debtor-Creditor Relationships, Estate and Gift Tax, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Partnerships, Professional Ethics in Tax, Property Transactions: Basis, Property Transactions: Gains/Losses, S Corporations, Tax Procedures, Tax-Exempt Organizations

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (2 questions)
-- ============================================================

-- ID 11189: Agency and Regulation (18 words)
-- ORIGINAL STEM: Under Rule 10b-5 of the Securities Exchange Act of 1934, a plaintiff must prove scienter. Scienter refers to:
UPDATE questions SET
  stem = $EXPL$Harmon Industries'' stock price dropped sharply after the CEO concealed material losses. An investor files suit under Rule 10b-5 of the Securities Exchange Act of 1934 and must prove scienter. Scienter refers to:$EXPL$
WHERE id = 11189;

-- ID 11180: Agency and Regulation (19 words)
-- ORIGINAL STEM: Under the Securities Exchange Act of 1934, which periodic report must a registered company file annually with the SEC?
UPDATE questions SET
  stem = $EXPL$Vertex Technologies completed its IPO in 2024 and is now a publicly traded company registered under the Securities Exchange Act of 1934. Which periodic report must Vertex file annually with the SEC?$EXPL$
WHERE id = 11180;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (2 questions)
-- ============================================================

-- ID 10916: Alternative Minimum Tax (19 words)
-- ORIGINAL STEM: What is the relationship between the alternative minimum tax and the 3.8% net investment income tax under current law?
UPDATE questions SET
  stem = $EXPL$Patel, a single filer with significant investment income, is computing both the alternative minimum tax and the 3.8% net investment income tax. Her CPA asks how the two taxes interact. What is the relationship between the AMT and the NIIT under current law?$EXPL$
WHERE id = 10916;

-- ID 4812: Alternative Minimum Tax (20 words)
-- ORIGINAL STEM: Which of the following deductions allowed for regular tax purposes must be added back when computing AMTI for an individual?
UPDATE questions SET
  stem = $EXPL$Garcia, a single taxpayer, claimed several itemized deductions on her regular tax return and is now computing her alternative minimum taxable income. Which of the following deductions allowed for regular tax purposes must be added back when computing AMTI?$EXPL$
WHERE id = 4812;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (2 questions)
-- ============================================================

-- ID 2456: Business Law: Contracts (19 words)
-- ORIGINAL STEM: The Statute of Frauds requires which of the following types of contracts to be in writing to be enforceable?
UPDATE questions SET
  stem = $EXPL$Drake verbally agreed to sell a parcel of undeveloped land to Wesson for $180,000. When Drake later refused to close, Wesson sued for breach. Under the Statute of Frauds, which types of contracts must be in writing to be enforceable?$EXPL$
WHERE id = 2456;

-- ID 2472: Business Law: Contracts (20 words)
-- ORIGINAL STEM: Under the UCC, a merchant who receives a written confirmation of a contract and does not object within 10 days:
UPDATE questions SET
  stem = $EXPL$Coastal Supply Co. mailed a written confirmation of an oral agreement for 500 units of roofing material to Baxter Hardware, a licensed dealer. Baxter received the confirmation but did not respond. Under the UCC, a merchant who receives a written confirmation and does not object within 10 days:$EXPL$
WHERE id = 2472;

-- ============================================================
-- BUSINESS STRUCTURES (3 questions)
-- ============================================================

-- ID 2512: Business Structures (19 words)
-- ORIGINAL STEM: Which of the following is an advantage of forming a limited liability company (LLC) rather than a general partnership?
UPDATE questions SET
  stem = $EXPL$Nolan and Rivera plan to open a consulting firm together. They are comparing the general partnership and limited liability company structures. Which of the following is an advantage of forming an LLC rather than a general partnership?$EXPL$
WHERE id = 2512;

-- ID 2520: Business Structures (19 words)
-- ORIGINAL STEM: Which of the following factors would a court MOST likely consider when deciding whether to pierce the corporate veil?
UPDATE questions SET
  stem = $EXPL$Greenleaf Corp. is a closely held corporation whose sole shareholder routinely paid personal expenses from the corporate bank account. A creditor is now seeking to hold the shareholder personally liable. Which factor would a court MOST likely consider when deciding whether to pierce the corporate veil?$EXPL$
WHERE id = 2520;

-- ID 2524: Business Structures (19 words)
-- ORIGINAL STEM: Regarding federal income tax treatment and legal liability, which of the following statements about a sole proprietorship is INCORRECT?
UPDATE questions SET
  stem = $EXPL$Dawson operates a freelance graphic design business as a sole proprietorship and reports income on Schedule C. Regarding federal income tax treatment and legal liability, which of the following statements about a sole proprietorship is INCORRECT?$EXPL$
WHERE id = 2524;

-- ============================================================
-- C CORPORATIONS (2 questions)
-- ============================================================

-- ID 10738: C Corporations (20 words)
-- ORIGINAL STEM: What standard does the IRS apply to evaluate whether compensation paid to a shareholder-employee of a C corporation is deductible?
UPDATE questions SET
  stem = $EXPL$Quinn, the sole shareholder and CEO of Apex Consulting Inc., a C corporation, received $650,000 in salary and bonuses during 2025. The IRS is examining the return. What standard does the IRS apply to evaluate whether Quinn''s compensation is deductible by the corporation?$EXPL$
WHERE id = 10738;

-- ID 10822: C Corporations (20 words)
-- ORIGINAL STEM: What is the monthly penalty rate for a C corporation that fails to timely file Form 1120 without reasonable cause?
UPDATE questions SET
  stem = $EXPL$Redstone Industries, a calendar-year C corporation, filed its 2025 Form 1120 three months after the due date without obtaining an extension or establishing reasonable cause. What is the monthly failure-to-file penalty rate for the corporation?$EXPL$
WHERE id = 10822;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (3 questions)
-- ============================================================

-- ID 1177: Debtor-Creditor Relationships (18 words)
-- ORIGINAL STEM: Under UCC Article 9, which of the following is required for a security interest to attach to collateral?
UPDATE questions SET
  stem = $EXPL$Pinnacle Bank is preparing to extend a $200,000 line of credit to Oakwood Distributors, secured by Oakwood''s inventory. Under UCC Article 9, which of the following is required for the bank''s security interest to attach to the collateral?$EXPL$
WHERE id = 1177;

-- ID 2887: Debtor-Creditor Relationships (20 words)
-- ORIGINAL STEM: Under the Bankruptcy Code, which of the following types of debt is generally NOT dischargeable in a Chapter 7 proceeding?
UPDATE questions SET
  stem = $EXPL$Foster, an individual, filed a Chapter 7 bankruptcy petition listing debts including credit cards, medical bills, and past-due federal income taxes from two years ago. Under the Bankruptcy Code, which type of debt is generally NOT dischargeable in a Chapter 7 proceeding?$EXPL$
WHERE id = 2887;

-- ID 2896: Debtor-Creditor Relationships (20 words)
-- ORIGINAL STEM: Under UCC Article 9, which of the following types of collateral may be perfected by the secured party taking possession?
UPDATE questions SET
  stem = $EXPL$Metro Finance is evaluating methods to perfect its security interest in various assets pledged by a borrower. The lender prefers to take physical possession rather than file a financing statement. Under UCC Article 9, which type of collateral may be perfected by possession?$EXPL$
WHERE id = 2896;

-- ============================================================
-- ESTATE AND GIFT TAX (2 questions)
-- ============================================================

-- ID 5518: Estate and Gift Tax (18 words)
-- ORIGINAL STEM: Under IRC Section 2503(b), what type of interest must a gift convey to qualify for the annual exclusion?
UPDATE questions SET
  stem = $EXPL$In 2025, Eleanor transfers $50,000 into an irrevocable trust for her grandson, but the trust terms restrict distributions until the grandson turns 30. Under IRC Section 2503(b), what type of interest must a gift convey to qualify for the annual exclusion?$EXPL$
WHERE id = 5518;

-- ID 5522: Estate and Gift Tax (19 words)
-- ORIGINAL STEM: What does IRC Section 6166 allow when a closely held business comprises a significant portion of a decedent's estate?
UPDATE questions SET
  stem = $EXPL$Harrison owned a 60% interest in a family manufacturing company at the time of his death. The business interest represents 45% of his adjusted gross estate. What does IRC Section 6166 allow when a closely held business comprises a significant portion of a decedent''s estate?$EXPL$
WHERE id = 5522;

-- ============================================================
-- FEDERAL TAX PROCEDURES (1 questions)
-- ============================================================

-- ID 1164: Federal Tax Procedures (20 words)
-- ORIGINAL STEM: A taxpayer files a fraudulent 2020 return on April 15, 2021. When does the statute of limitations for assessment expire?
UPDATE questions SET
  stem = $EXPL$Briggs intentionally understated income by $120,000 on a fraudulent 2020 individual tax return filed on April 15, 2021. The IRS later discovered the scheme during a related investigation. When does the statute of limitations for assessment expire?$EXPL$
WHERE id = 1164;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (1 questions)
-- ============================================================

-- ID 4797: Government Regulation of Business (20 words)
-- ORIGINAL STEM: Under Section 404 of the Sarbanes-Oxley Act, which of the following statements is correct regarding internal controls over financial reporting?
UPDATE questions SET
  stem = $EXPL$Lakeview Holdings, a publicly traded company, is preparing its annual report. Management is reviewing its obligations under Section 404 of the Sarbanes-Oxley Act. Which of the following statements is correct regarding internal controls over financial reporting?$EXPL$
WHERE id = 4797;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (3 questions)
-- ============================================================

-- ID 2694: Individual Taxation: Credits (19 words)
-- ORIGINAL STEM: Which of the following expenses qualifies for the American Opportunity Tax Credit but NOT for the Lifetime Learning Credit?
UPDATE questions SET
  stem = $EXPL$Chen is a sophomore at State University and paid tuition, lab fees, and purchased required textbooks for the fall semester. Her parents are evaluating education credits. Which expense qualifies for the American Opportunity Tax Credit but NOT for the Lifetime Learning Credit?$EXPL$
WHERE id = 2694;

-- ID 2695: Individual Taxation: Credits (19 words)
-- ORIGINAL STEM: A single taxpayer with no qualifying children must be at least what age to claim the earned income credit?
UPDATE questions SET
  stem = $EXPL$Ortiz is a single filer with $14,000 in wages and no qualifying children. He wants to claim the earned income credit on his 2025 return. A single taxpayer with no qualifying children must be at least what age to claim the EIC?$EXPL$
WHERE id = 2695;

-- ID 2681: Individual Taxation: Credits (20 words)
-- ORIGINAL STEM: The child and dependent care credit allows a maximum amount of employment-related expenses for two or more qualifying individuals of:
UPDATE questions SET
  stem = $EXPL$Martin and Lisa, both employed full-time, pay $12,000 annually for daycare for their two children, ages 3 and 5. When computing the child and dependent care credit, what is the maximum amount of employment-related expenses allowed for two or more qualifying individuals?$EXPL$
WHERE id = 2681;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (3 questions)
-- ============================================================

-- ID 2719: Individual Taxation: Credits/AMT (19 words)
-- ORIGINAL STEM: A taxpayer has tentative minimum tax of $45,000 and regular tax liability of $52,000. What is the taxpayer's AMT?
UPDATE questions SET
  stem = $EXPL$Brennan, a single filer, computed a tentative minimum tax of $45,000 after adding back AMT preference items and applying the AMT exemption. Her regular tax liability is $52,000. What is Brennan''s alternative minimum tax?$EXPL$
WHERE id = 2719;

-- ID 2722: Individual Taxation: Credits/AMT (19 words)
-- ORIGINAL STEM: Sam, a single filer with MAGI of $190,000, has net investment income of $30,000. What is his NIIT liability?
UPDATE questions SET
  stem = $EXPL$Sam, a single filer, has modified adjusted gross income of $190,000, which includes $30,000 of net investment income from dividends and capital gains. The NIIT threshold for single filers is $200,000. What is Sam''s net investment income tax liability?$EXPL$
WHERE id = 2722;

-- ID 10970: Individual Taxation: Credits/AMT (20 words)
-- ORIGINAL STEM: Under the estimated tax rules, which taxpayer is exempt from the underpayment penalty regardless of the current year tax owed?
UPDATE questions SET
  stem = $EXPL$Four individual taxpayers each owe more than $1,000 in tax after subtracting withholding and credits. Their CPAs are reviewing whether any qualify for an exception to the estimated tax underpayment penalty. Under the estimated tax rules, which taxpayer is exempt from the penalty regardless of the current year tax owed?$EXPL$
WHERE id = 10970;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (1 questions)
-- ============================================================

-- ID 10987: Individual Taxation: Deductions (20 words)
-- ORIGINAL STEM: When a married couple files separately (MFS), what rule applies to their choice between the standard deduction and itemized deductions?
UPDATE questions SET
  stem = $EXPL$Grant and Parker are married but choose to file separate returns for 2025. Grant plans to itemize deductions to maximize his medical expense deduction. What rule applies to their choice between the standard deduction and itemized deductions when filing MFS?$EXPL$
WHERE id = 10987;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (3 questions)
-- ============================================================

-- ID 11036: Individual Taxation: Filing/Credits (19 words)
-- ORIGINAL STEM: For 2025, what is the additional standard deduction amount for an unmarried taxpayer who is age 65 or older?
UPDATE questions SET
  stem = $EXPL$Wallace, a single 67-year-old retiree, does not itemize deductions. Her CPA is calculating the total standard deduction, including the additional amount for age. For 2025, what is the additional standard deduction amount for an unmarried taxpayer who is age 65 or older?$EXPL$
WHERE id = 11036;

-- ID 2733: Individual Taxation: Filing/Credits (20 words)
-- ORIGINAL STEM: For taxpayers with prior-year AGI exceeding $150,000 ($75,000 MFS), the estimated tax safe harbor based on prior-year liability increases to:
UPDATE questions SET
  stem = $EXPL$Crawford, a single consultant, reported AGI of $280,000 on her 2024 return and expects even higher income in 2025. She wants to use the prior-year safe harbor to avoid the estimated tax underpayment penalty. For taxpayers with prior-year AGI exceeding $150,000, the safe harbor based on prior-year liability increases to:$EXPL$
WHERE id = 2733;

-- ID 11039: Individual Taxation: Filing/Credits (20 words)
-- ORIGINAL STEM: Under the dependency tiebreaker rules, who has priority when a parent and a non-parent both claim the same qualifying child?
UPDATE questions SET
  stem = $EXPL$Marcus (AGI $38,000) and his mother Sandra (AGI $72,000) both live with Marcus''s 8-year-old daughter, Lily, for the entire year. Both claim Lily as a qualifying child. Under the dependency tiebreaker rules, who has priority when a parent and a non-parent both claim the same qualifying child?$EXPL$
WHERE id = 11039;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (3 questions)
-- ============================================================

-- ID 78: Individual Taxation: Income (20 words)
-- ORIGINAL STEM: A cash-basis taxpayer receives $5,000 in rental income in December 2025 for January 2026 rent. How should this be reported?
UPDATE questions SET
  stem = $EXPL$Henderson, a cash-basis individual, owns a rental duplex. On December 28, 2025, a tenant pays $5,000 representing January 2026 rent. Henderson deposits the check the same day. How should this rental income be reported?$EXPL$
WHERE id = 78;

-- ID 2648: Individual Taxation: Income (20 words)
-- ORIGINAL STEM: Ken has $45,000 in wages and receives a gift of $20,000 cash from his grandmother. What is Ken's gross income?
UPDATE questions SET
  stem = $EXPL$Ken earned $45,000 in wages as a marketing analyst during 2025. In July, his grandmother gave him $20,000 in cash as a birthday gift. Ken had no other income for the year. What is Ken''s gross income?$EXPL$
WHERE id = 2648;

-- ID 11064: Individual Taxation: Income (20 words)
-- ORIGINAL STEM: Under H.R. 1, what is the maximum annual deduction for interest on a loan used to purchase a U.S.-manufactured vehicle?
UPDATE questions SET
  stem = $EXPL$In September 2026, Palmer finances the purchase of a new U.S.-manufactured pickup truck with a $55,000 auto loan. She pays $6,200 in loan interest during the year. Under H.R. 1, what is the maximum annual deduction for interest on a loan used to purchase a U.S.-manufactured vehicle?$EXPL$
WHERE id = 11064;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 2872: Legal Duties and Responsibilities (19 words)
-- ORIGINAL STEM: Under the work product doctrine, which of the following CPA documents is most likely protected from discovery in litigation?
UPDATE questions SET
  stem = $EXPL$After receiving a 30-day letter from the IRS proposing a $95,000 deficiency, CPA Thornton prepared an internal memo analyzing the legal arguments for and against the client''s position in anticipation of Tax Court proceedings. Under the work product doctrine, which CPA document is most likely protected from discovery?$EXPL$
WHERE id = 2872;

-- ID 2879: Legal Duties and Responsibilities (20 words)
-- ORIGINAL STEM: Under Circular 230, a CPA who practices before the IRS must meet which of the following requirements regarding continuing education?
UPDATE questions SET
  stem = $EXPL$Richards, a CPA, represents clients in IRS audits and appeals. She is reviewing her obligations under Treasury Circular 230. Under Circular 230, a CPA who practices before the IRS must meet which of the following requirements regarding continuing education?$EXPL$
WHERE id = 2879;

-- ============================================================
-- PARTNERSHIPS (2 questions)
-- ============================================================

-- ID 586: Partnerships (20 words)
-- ORIGINAL STEM: Under Section 704(b), a partnership's allocation of income, gain, loss, or deduction will be respected for tax purposes only if:
UPDATE questions SET
  stem = $EXPL$The GHK Partnership agreement allocates all depreciation deductions on a rental building entirely to Partner G, who is in the highest tax bracket. Under Section 704(b), a partnership''s special allocation of income, gain, loss, or deduction will be respected for tax purposes only if:$EXPL$
WHERE id = 586;

-- ID 10857: Partnerships (20 words)
-- ORIGINAL STEM: Under the check-the-box regulations, how is a domestic multi-member LLC classified for federal tax purposes if no election is filed?
UPDATE questions SET
  stem = $EXPL$Blake, Soto, and Cheng formed Trident Ventures LLC, a domestic limited liability company, in 2025. They did not file Form 8832. Under the check-the-box regulations, how is a domestic multi-member LLC classified for federal tax purposes if no election is filed?$EXPL$
WHERE id = 10857;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (2 questions)
-- ============================================================

-- ID 2425: Professional Ethics in Tax (19 words)
-- ORIGINAL STEM: Under professional ethics standards, a CPA who signs a client's tax return as the paid preparer is representing that:
UPDATE questions SET
  stem = $EXPL$Vasquez, a CPA, prepares and signs a client''s individual tax return for a $400 fee. The return includes several complex deductions. Under professional ethics standards, by signing the return as the paid preparer, Vasquez is representing that:$EXPL$
WHERE id = 2425;

-- ID 13005: Professional Ethics in Tax (19 words)
-- ORIGINAL STEM: Under Section 7216, what is the penalty for a tax return preparer who knowingly discloses taxpayer information without authorization?
UPDATE questions SET
  stem = $EXPL$A tax preparer shared a client''s financial data with a third-party marketing firm without obtaining the client''s consent. Under Section 7216, what is the penalty for a tax return preparer who knowingly discloses taxpayer information without authorization?$EXPL$
WHERE id = 13005;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (1 questions)
-- ============================================================

-- ID 2549: Property Transactions: Basis (18 words)
-- ORIGINAL STEM: Which of the following costs is added to the basis of real property at the time of purchase?
UPDATE questions SET
  stem = $EXPL$Franklin purchased a rental property in 2025 and incurred several closing costs, including title insurance, recording fees, a loan origination fee, and prorated property taxes. Which of the following costs is added to the basis of the property at the time of purchase?$EXPL$
WHERE id = 2549;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (1 questions)
-- ============================================================

-- ID 2566: Property Transactions: Gains/Losses (20 words)
-- ORIGINAL STEM: Under Section 1231, if a taxpayer has a net Section 1231 loss for the year, how is that loss treated?
UPDATE questions SET
  stem = $EXPL$Garrison Trucking sold two pieces of equipment held for more than one year, resulting in a combined net Section 1231 loss of $18,000 for the year. Under Section 1231, how is this net loss treated?$EXPL$
WHERE id = 2566;

-- ============================================================
-- S CORPORATIONS (3 questions)
-- ============================================================

-- ID 2813: S Corporations (17 words)
-- ORIGINAL STEM: By what date must an S election be filed to be effective for the current tax year?
UPDATE questions SET
  stem = $EXPL$Novak and Wells incorporated Cedar Ridge Inc. on January 5, 2025, as a calendar-year corporation and want S status effective immediately. By what date must the S election on Form 2553 be filed to be effective for the current tax year?$EXPL$
WHERE id = 2813;

-- ID 10798: S Corporations (17 words)
-- ORIGINAL STEM: Under IRC Section 1361(c)(4), what type of difference among shares is permitted without violating the one-class-of-stock requirement?
UPDATE questions SET
  stem = $EXPL$Ridgeline Corp., a calendar-year S corporation with three shareholders, is considering issuing a second class of shares with different characteristics. Under IRC Section 1361(c)(4), what type of difference among shares is permitted without violating the one-class-of-stock requirement?$EXPL$
WHERE id = 10798;

-- ID 10880: S Corporations (17 words)
-- ORIGINAL STEM: In what tax year does an S corporation shareholder report income or loss from the S corporation?
UPDATE questions SET
  stem = $EXPL$Brighton Holdings, a calendar-year S corporation, has a fiscal year ending December 31, 2025. Shareholder Davis received a Schedule K-1 reflecting her distributive share. In what tax year does an S corporation shareholder report income or loss from the S corporation?$EXPL$
WHERE id = 10880;

-- ============================================================
-- TAX PROCEDURES (3 questions)
-- ============================================================

-- ID 12858: Tax Procedures (19 words)
-- ORIGINAL STEM: What is the maximum amount in dispute for a case to qualify for the Tax Court Small Case Division?
UPDATE questions SET
  stem = $EXPL$Rivera received a statutory notice of deficiency from the IRS and is considering filing a petition with the Tax Court. Her CPA suggests using the simplified Small Case Division. What is the maximum amount in dispute for a case to qualify for the Tax Court Small Case Division?$EXPL$
WHERE id = 12858;

-- ID 12860: Tax Procedures (19 words)
-- ORIGINAL STEM: Mitchell, a sole proprietor, is selected for an IRS field audit. Where will this examination most likely be conducted?
UPDATE questions SET
  stem = $EXPL$Mitchell operates a landscaping business as a sole proprietor, reporting $320,000 in gross receipts on Schedule C. The IRS notifies him that his 2024 return has been selected for a field audit. Where will this examination most likely be conducted?$EXPL$
WHERE id = 12860;

-- ID 243: Tax Procedures (20 words)
-- ORIGINAL STEM: A taxpayer disagrees with the IRS's proposed assessment after an audit. What is the taxpayer's first option for administrative appeal?
UPDATE questions SET
  stem = $EXPL$After a correspondence audit, the IRS sends Kwan a 30-day letter proposing an additional $12,000 assessment. Kwan disagrees with the proposed adjustment. What is Kwan''s first option for administrative appeal?$EXPL$
WHERE id = 243;

-- ============================================================
-- TAX-EXEMPT ORGANIZATIONS (1 questions)
-- ============================================================

-- ID 9025: Tax-Exempt Organizations (19 words)
-- ORIGINAL STEM: Under Section 4941, what excise tax rate applies to a foundation manager who knowingly participates in a self-dealing transaction?
UPDATE questions SET
  stem = $EXPL$The director of the Whitfield Family Foundation approved a $75,000 equipment purchase from a company owned by the foundation''s creator, knowing the transaction constituted self-dealing. Under Section 4941, what excise tax rate applies to a foundation manager who knowingly participates in a self-dealing transaction?$EXPL$
WHERE id = 9025;

COMMIT;
