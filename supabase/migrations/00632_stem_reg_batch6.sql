-- Migration: Stem expansion — REG batch 6 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Estate and Gift Tax, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Property Transactions: Gains/Losses, S Corporations, Tax Procedures, Tax-Exempt Organizations

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (2 questions)
-- ============================================================

-- ID 11188: Agency and Regulation (13 words)
-- ORIGINAL STEM: Which of the following events terminates an agency relationship by operation of law?
UPDATE questions SET
  stem = $EXPL$Dawson Realty appointed Carla Voss as its purchasing agent under a written agreement. Several months later, an event occurred that neither party anticipated. Which of the following events would terminate Voss''s agency relationship with Dawson by operation of law?$EXPL$
WHERE id = 11188;

-- ID 500: Agency and Regulation (15 words)
-- ORIGINAL STEM: Under Section 11 of the Securities Act of 1933, who may be liable to purchasers?
UPDATE questions SET
  stem = $EXPL$Investors in Greystone Energy''s initial public offering suffered losses after the registration statement was found to contain material misstatements. The investors are considering a civil action under Section 11 of the Securities Act of 1933. Who may be liable to the purchasers?$EXPL$
WHERE id = 500;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (2 questions)
-- ============================================================

-- ID 4813: Alternative Minimum Tax (17 words)
-- ORIGINAL STEM: The AMT uses a two-tier rate structure for individual taxpayers. What are the two AMT tax rates?
UPDATE questions SET
  stem = $EXPL$Carmen Reyes, a single taxpayer, has significant AMT adjustments that push her alternative minimum taxable income well above the exemption amount. Her CPA is computing the tentative minimum tax using the two-tier AMT rate structure. What are the two AMT tax rates for individual taxpayers?$EXPL$
WHERE id = 4813;

-- ID 4816: Alternative Minimum Tax (17 words)
-- ORIGINAL STEM: For purposes of the AMT, which of the following best distinguishes a "preference item" from an "adjustment"?
UPDATE questions SET
  stem = $EXPL$While preparing Ethan Grant''s 2026 return, a tax associate notices several items that affect the AMT computation differently. Some items always increase AMTI, while others may increase or decrease it. Which of the following best distinguishes a preference item from an adjustment?$EXPL$
WHERE id = 4816;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (3 questions)
-- ============================================================

-- ID 63: Business Law: Contracts (13 words)
-- ORIGINAL STEM: Which of the following is required for a valid contract under common law?
UPDATE questions SET
  stem = $EXPL$Apex Consulting verbally agreed to provide advisory services to Ridgeline Manufacturing for $75,000. Ridgeline later refused to perform, claiming no enforceable contract existed. Which of the following is required for a valid contract under common law?$EXPL$
WHERE id = 63;

-- ID 495: Business Law: Contracts (13 words)
-- ORIGINAL STEM: Under UCC Article 2, the implied warranty of merchantability requires that goods must:
UPDATE questions SET
  stem = $EXPL$Sterling Hardware, a merchant seller, sold a batch of power drills to a retail customer. The customer claims the drills are defective and invokes the implied warranty of merchantability. Under UCC Article 2, this warranty requires that goods must:$EXPL$
WHERE id = 495;

-- ID 2462: Business Law: Contracts (14 words)
-- ORIGINAL STEM: Under the UCC Article 2 "perfect tender rule," a buyer may reject goods if:
UPDATE questions SET
  stem = $EXPL$Beacon Industries ordered 500 units of industrial tubing from a supplier under a written sales contract. Upon delivery, Beacon''s receiving department identified minor deviations from the contract specifications. Under the UCC Article 2 perfect tender rule, Beacon may reject the goods if:$EXPL$
WHERE id = 2462;

-- ============================================================
-- BUSINESS STRUCTURES (3 questions)
-- ============================================================

-- ID 2510: Business Structures (15 words)
-- ORIGINAL STEM: In a limited partnership, which of the following is true about a limited partner's liability?
UPDATE questions SET
  stem = $EXPL$Morgan invested $150,000 as a limited partner in Cedar Creek Ventures LP. The partnership later incurred $400,000 in unpaid trade debts. Which of the following is true about Morgan''s liability as a limited partner?$EXPL$
WHERE id = 2510;

-- ID 69: Business Structures (16 words)
-- ORIGINAL STEM: Which of the following is a key difference between an S corporation and a C corporation?
UPDATE questions SET
  stem = $EXPL$Two founders are forming a new corporation and evaluating whether to elect S corporation status or remain a C corporation. Their attorney explains the fundamental distinctions. Which of the following is a key difference between an S corporation and a C corporation?$EXPL$
WHERE id = 69;

-- ID 2515: Business Structures (16 words)
-- ORIGINAL STEM: Under state business organization law, which of the following best describes a limited liability partnership (LLP)?
UPDATE questions SET
  stem = $EXPL$Three CPAs are forming a new accounting practice and considering organizing as a limited liability partnership. Under state business organization law, which of the following best describes an LLP?$EXPL$
WHERE id = 2515;

-- ============================================================
-- C CORPORATIONS (2 questions)
-- ============================================================

-- ID 2787: C Corporations (16 words)
-- ORIGINAL STEM: What dividends received deduction percentage applies to a corporation owning less than 20% of another corporation?
UPDATE questions SET
  stem = $EXPL$Vanguard Industries, a C corporation, owns 12% of the stock of Pinnacle Corp and received $80,000 in dividends during 2026. What dividends received deduction percentage applies to Vanguard''s dividend income from Pinnacle?$EXPL$
WHERE id = 2787;

-- ID 10814: C Corporations (16 words)
-- ORIGINAL STEM: What is the length of the automatic extension for filing Form 1120 for a C corporation?
UPDATE questions SET
  stem = $EXPL$Baxter Corp, a calendar-year C corporation, realizes in March 2027 that it cannot finalize its Form 1120 by the April 15 deadline. The controller plans to file for an automatic extension. What is the length of this extension?$EXPL$
WHERE id = 10814;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 487: Circular 230 (14 words)
-- ORIGINAL STEM: Under Circular 230, what is the sanction for willfully understating a client's tax liability?
UPDATE questions SET
  stem = $EXPL$The IRS Office of Professional Responsibility is investigating CPA Randall Beck for intentionally minimizing a client''s reported income on multiple returns. Under Circular 230, what is the maximum sanction for willfully understating a client''s tax liability?$EXPL$
WHERE id = 487;

-- ID 490: Circular 230 (15 words)
-- ORIGINAL STEM: Under Section 6694(a), what is the penalty for an unreasonable position on a tax return?
UPDATE questions SET
  stem = $EXPL$A paid preparer took an undisclosed position on a client''s return that lacked substantial authority. The position resulted in an understatement of tax liability. Under Section 6694(a), what is the penalty for this unreasonable position?$EXPL$
WHERE id = 490;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (3 questions)
-- ============================================================

-- ID 11276: Debtor-Creditor Relationships (14 words)
-- ORIGINAL STEM: In Chapter 7 bankruptcy, what is the primary purpose of the trustee's avoiding powers?
UPDATE questions SET
  stem = $EXPL$Northwind Fabrication filed a Chapter 7 petition after transferring $200,000 in equipment to its owner''s personal LLC two months before filing. The bankruptcy trustee is investigating the transfer. What is the primary purpose of the trustee''s avoiding powers?$EXPL$
WHERE id = 11276;

-- ID 2883: Debtor-Creditor Relationships (15 words)
-- ORIGINAL STEM: Under UCC Article 9, what three elements are required for a security interest to attach?
UPDATE questions SET
  stem = $EXPL$First National Bank lent $300,000 to Harper Distribution and wants to establish an enforceable security interest in Harper''s inventory. Under UCC Article 9, what three elements are required for the security interest to attach?$EXPL$
WHERE id = 2883;

-- ID 2892: Debtor-Creditor Relationships (15 words)
-- ORIGINAL STEM: Which of the following is a valid defense available to a surety against the creditor?
UPDATE questions SET
  stem = $EXPL$Torres agreed to serve as surety on a $250,000 loan from Pacific Bank to Delgado Enterprises. After Delgado defaulted, Pacific Bank demanded payment from Torres. Which of the following is a valid defense available to Torres against the creditor?$EXPL$
WHERE id = 2892;

-- ============================================================
-- ESTATE AND GIFT TAX (2 questions)
-- ============================================================

-- ID 5155: Estate and Gift Tax (16 words)
-- ORIGINAL STEM: Under IRC Section 2613, who is classified as a skip person for generation-skipping transfer tax purposes?
UPDATE questions SET
  stem = $EXPL$Margaret Chen, age 78, is planning transfers to various family members and wants to understand the generation-skipping transfer tax implications. Her estate attorney is identifying which recipients would be considered skip persons. Under IRC Section 2613, who is classified as a skip person?$EXPL$
WHERE id = 5155;

-- ID 5134: Estate and Gift Tax (17 words)
-- ORIGINAL STEM: Under IRC Section 2503(b), what must a gift possess to qualify for the annual gift tax exclusion?
UPDATE questions SET
  stem = $EXPL$Robert Whitfield transferred $18,000 into an irrevocable trust for his grandson in 2026. His tax advisor is evaluating whether the transfer qualifies for the annual gift tax exclusion. Under IRC Section 2503(b), what must a gift possess to qualify?$EXPL$
WHERE id = 5134;

-- ============================================================
-- FEDERAL TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 1157: Federal Tax Procedures (13 words)
-- ORIGINAL STEM: What type of IRS audit is conducted at the taxpayer's place of business?
UPDATE questions SET
  stem = $EXPL$Summit Logistics, a trucking company with $3 million in gross receipts, received notice that an IRS revenue agent would visit its offices to review books and records. What type of IRS audit is conducted at the taxpayer''s place of business?$EXPL$
WHERE id = 1157;

-- ID 1160: Federal Tax Procedures (14 words)
-- ORIGINAL STEM: Under Section 6651, what is the penalty for failure to file a tax return?
UPDATE questions SET
  stem = $EXPL$Delaney, an individual taxpayer, failed to file her 2026 return by the due date and owes $8,000 in unpaid tax. Under Section 6651, what is the penalty rate for failure to file a tax return?$EXPL$
WHERE id = 1160;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (2 questions)
-- ============================================================

-- ID 13827: Government Regulation of Business (16 words)
-- ORIGINAL STEM: Which of the following is true regarding the formation of an agency relationship under common law?
UPDATE questions SET
  stem = $EXPL$Harmon asked his neighbor, Priya, to sell his boat on his behalf. No written agreement was signed and no payment was discussed. Which of the following is true regarding the formation of this agency relationship under common law?$EXPL$
WHERE id = 13827;

-- ID 11280: Government Regulation of Business (17 words)
-- ORIGINAL STEM: Under the Federal Trade Commission Act, which type of business practice is primarily prohibited by Section 5?
UPDATE questions SET
  stem = $EXPL$The FTC is investigating a national retailer for advertising practices that may mislead consumers about product pricing. Under the Federal Trade Commission Act, which type of business practice is primarily prohibited by Section 5?$EXPL$
WHERE id = 11280;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (3 questions)
-- ============================================================

-- ID 11368: Individual Taxation: Credits (15 words)
-- ORIGINAL STEM: Under Section 23, what is the approximate maximum adoption credit per eligible child for 2026?
UPDATE questions SET
  stem = $EXPL$Kevin and Diane Marsh finalized the domestic adoption of a child in 2026 and incurred $20,000 in qualified adoption expenses. They are determining the maximum credit available. Under Section 23, what is the approximate maximum adoption credit per eligible child for 2026?$EXPL$
WHERE id = 11368;

-- ID 2687: Individual Taxation: Credits (16 words)
-- ORIGINAL STEM: The Lifetime Learning Credit for 2026 provides a maximum credit of what amount per tax return?
UPDATE questions SET
  stem = $EXPL$Sandra Okafor, a single taxpayer with AGI of $75,000, paid $8,000 in tuition for a graduate program in 2026. She is calculating her education credit. The Lifetime Learning Credit provides a maximum credit of what amount per tax return?$EXPL$
WHERE id = 2687;

-- ID 10935: Individual Taxation: Credits (17 words)
-- ORIGINAL STEM: What credit is available for a dependent who does not qualify for the $2,000 child tax credit?
UPDATE questions SET
  stem = $EXPL$Maria claims her 19-year-old son, a non-student, as a dependent on her 2026 return. Because he is over age 17, he does not qualify for the $2,000 child tax credit. What credit is available for this dependent?$EXPL$
WHERE id = 10935;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (3 questions)
-- ============================================================

-- ID 2706: Individual Taxation: Credits/AMT (15 words)
-- ORIGINAL STEM: Under Section 56, how does the exercise of incentive stock options (ISOs) affect the AMT?
UPDATE questions SET
  stem = $EXPL$In June 2026, Nathan Park exercised incentive stock options, acquiring 2,000 shares at an exercise price of $30 per share when the fair market value was $75 per share. He did not sell the shares during the year. Under Section 56, how does this ISO exercise affect Nathan''s AMT?$EXPL$
WHERE id = 2706;

-- ID 10953: Individual Taxation: Credits/AMT (15 words)
-- ORIGINAL STEM: What is the key difference between a refundable tax credit and a nonrefundable tax credit?
UPDATE questions SET
  stem = $EXPL$A taxpayer has a $3,500 total tax liability before credits and is eligible for two credits: one refundable and one nonrefundable. What is the key difference between a refundable tax credit and a nonrefundable tax credit?$EXPL$
WHERE id = 10953;

-- ID 2713: Individual Taxation: Credits/AMT (16 words)
-- ORIGINAL STEM: Which of the following types of income is subject to the 3.8% Net Investment Income Tax?
UPDATE questions SET
  stem = $EXPL$Liam and Nora Fletcher, married filing jointly, have modified AGI of $310,000 in 2026. Their income includes wages, rental income, and capital gains. Which of the following types of income is subject to the 3.8% Net Investment Income Tax?$EXPL$
WHERE id = 2713;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (2 questions)
-- ============================================================

-- ID 11008: Individual Taxation: Deductions (12 words)
-- ORIGINAL STEM: What is the correct formula for calculating an individual taxpayer's taxable income?
UPDATE questions SET
  stem = $EXPL$Jordan Hayes, a single taxpayer, earned $95,000 in wages and had $7,500 in above-the-line deductions during 2026. Jordan''s CPA is walking through the tax computation. What is the correct formula for calculating an individual taxpayer''s taxable income?$EXPL$
WHERE id = 11008;

-- ID 2653: Individual Taxation: Deductions (13 words)
-- ORIGINAL STEM: Under Section 223, what is the purpose of a Health Savings Account (HSA)?
UPDATE questions SET
  stem = $EXPL$Taylor Simmons enrolled in a high-deductible health plan through her employer in 2026 and is now eligible to open an HSA. Under Section 223, what is the primary purpose of a Health Savings Account?$EXPL$
WHERE id = 2653;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (3 questions)
-- ============================================================

-- ID 11032: Individual Taxation: Filing/Credits (16 words)
-- ORIGINAL STEM: Which filing status makes a taxpayer ineligible for both the AOTC and the Lifetime Learning Credit?
UPDATE questions SET
  stem = $EXPL$Craig and Lauren are married but considering filing separate returns for 2026. Lauren paid $6,000 in tuition for her MBA program and wants to claim an education credit. Which filing status makes a taxpayer ineligible for both the AOTC and the Lifetime Learning Credit?$EXPL$
WHERE id = 11032;

-- ID 1264: Individual Taxation: Filing/Credits (17 words)
-- ORIGINAL STEM: What percentage of support must a taxpayer provide to claim a dependent under a multiple support agreement?
UPDATE questions SET
  stem = $EXPL$Four siblings each contribute to the support of their elderly mother, but no single sibling provides more than half. They plan to use a multiple support agreement so one sibling can claim the mother as a dependent. What percentage of support must that taxpayer provide?$EXPL$
WHERE id = 1264;

-- ID 2747: Individual Taxation: Filing/Credits (17 words)
-- ORIGINAL STEM: A taxpayer fails to make required estimated tax payments throughout 2026. The underpayment penalty is computed as:
UPDATE questions SET
  stem = $EXPL$Gavin Rhodes, a self-employed consultant, earned significantly more in 2026 than anticipated but made no estimated tax payments during the year. His CPA is computing the underpayment penalty. The penalty is computed as:$EXPL$
WHERE id = 2747;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (3 questions)
-- ============================================================

-- ID 2640: Individual Taxation: Income (14 words)
-- ORIGINAL STEM: Which of the following correctly states the tax treatment of wages, salaries, and tips?
UPDATE questions SET
  stem = $EXPL$Nicole Pham earned $72,000 in wages, a $5,000 year-end bonus, and $3,200 in tips while working at a restaurant during 2026. Which of the following correctly states the federal tax treatment of these amounts?$EXPL$
WHERE id = 2640;

-- ID 596: Individual Taxation: Income (15 words)
-- ORIGINAL STEM: Under Section 469, what happens to suspended passive losses when the activity is disposed of?
UPDATE questions SET
  stem = $EXPL$Raj Patel had $45,000 in suspended passive losses from a limited partnership investment. In November 2026, he sold his entire partnership interest to an unrelated buyer. Under Section 469, what happens to these suspended passive losses?$EXPL$
WHERE id = 596;

-- ID 541: Individual Taxation: Income (16 words)
-- ORIGINAL STEM: Which of the following is one of the seven material participation tests under the Treasury Regulations?
UPDATE questions SET
  stem = $EXPL$Andrea Gill owns a 40% interest in a landscaping business and spent 520 hours working in the business during 2026. Her CPA is evaluating whether she materially participated. Which of the following is one of the seven material participation tests under the Treasury Regulations?$EXPL$
WHERE id = 541;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 2863: Legal Duties and Responsibilities (16 words)
-- ORIGINAL STEM: Under the Ultramares doctrine, to whom does an accountant owe a duty of care for negligence?
UPDATE questions SET
  stem = $EXPL$A bank relied on audited financial statements prepared by CPA firm Hart & Quinn to approve a $2 million loan. The statements contained material errors due to negligence. Under the Ultramares doctrine, to whom does the accountant owe a duty of care for negligence?$EXPL$
WHERE id = 2863;

-- ID 2875: Legal Duties and Responsibilities (17 words)
-- ORIGINAL STEM: Constructive fraud differs from actual fraud in that constructive fraud does NOT require proof of which element?
UPDATE questions SET
  stem = $EXPL$A client sued CPA firm Albright & Soto, alleging the firm issued an audit opinion with reckless disregard for GAAS, resulting in financial losses. The claim is based on constructive fraud rather than actual fraud. Constructive fraud does NOT require proof of which element?$EXPL$
WHERE id = 2875;

-- ============================================================
-- LIKE-KIND EXCHANGES (2 questions)
-- ============================================================

-- ID 2596: Like-Kind Exchanges (13 words)
-- ORIGINAL STEM: Under Section 1031, what is the exchange period for completing a like-kind exchange?
UPDATE questions SET
  stem = $EXPL$Duval Properties sold a commercial warehouse on August 1, 2026, and is using a qualified intermediary to acquire replacement property in a deferred like-kind exchange. Under Section 1031, what is the exchange period for completing the replacement?$EXPL$
WHERE id = 2596;

-- ID 2597: Like-Kind Exchanges (13 words)
-- ORIGINAL STEM: What is the role of a qualified intermediary in a Section 1031 exchange?
UPDATE questions SET
  stem = $EXPL$Clearwater Investments plans to sell an office building and acquire a replacement rental property under Section 1031. Because the transactions will not occur simultaneously, the company is engaging a third party to facilitate the exchange. What is the role of a qualified intermediary in this transaction?$EXPL$
WHERE id = 2597;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (2 questions)
-- ============================================================

-- ID 2569: Property Transactions: Gains/Losses (13 words)
-- ORIGINAL STEM: Under Section 1250, what is the recapture rate for unrecaptured Section 1250 gain?
UPDATE questions SET
  stem = $EXPL$An investor sells a rental apartment building for $620,000 after claiming $85,000 in straight-line depreciation. The gain attributable to the depreciation is classified as unrecaptured Section 1250 gain. What is the maximum tax rate on this portion of the gain?$EXPL$
WHERE id = 2569;

-- ID 2572: Property Transactions: Gains/Losses (13 words)
-- ORIGINAL STEM: In the capital gains netting process, how are short-term and long-term gains combined?
UPDATE questions SET
  stem = $EXPL$During 2026, Blake Nolan realized a net short-term capital loss of $4,000 and a net long-term capital gain of $11,000 from various stock sales. In the capital gains netting process, how are these short-term and long-term results combined?$EXPL$
WHERE id = 2572;

-- ============================================================
-- S CORPORATIONS (3 questions)
-- ============================================================

-- ID 2812: S Corporations (14 words)
-- ORIGINAL STEM: Fern Corp elects S status. How many classes of stock may Fern have outstanding?
UPDATE questions SET
  stem = $EXPL$Fern Corp, a domestic corporation with 15 shareholders, filed Form 2553 to elect S corporation status effective January 1, 2026. The shareholders are considering issuing preferred stock to attract new investors. How many classes of stock may Fern have outstanding as an S corporation?$EXPL$
WHERE id = 2812;

-- ID 10861: S Corporations (14 words)
-- ORIGINAL STEM: What must a domestic LLC do before electing S corporation status under Subchapter S?
UPDATE questions SET
  stem = $EXPL$Horizon Consulting LLC, a multi-member domestic LLC currently taxed as a partnership, wants to elect S corporation status. What must Horizon do before filing Form 2553 to elect Subchapter S treatment?$EXPL$
WHERE id = 10861;

-- ID 10876: S Corporations (14 words)
-- ORIGINAL STEM: What is the purpose of the Other Adjustments Account (OAA) in an S corporation?
UPDATE questions SET
  stem = $EXPL$Redwood Inc., an S corporation that converted from C corporation status in 2022, earned $12,000 in tax-exempt municipal bond interest during 2026. The tax advisor is tracking the OAA separately from the AAA. What is the purpose of the Other Adjustments Account in an S corporation?$EXPL$
WHERE id = 10876;

-- ============================================================
-- TAX PROCEDURES (3 questions)
-- ============================================================

-- ID 12853: Tax Procedures (15 words)
-- ORIGINAL STEM: What type of IRS audit is conducted entirely through the mail without any in-person meeting?
UPDATE questions SET
  stem = $EXPL$Brianna Cole received a letter from the IRS requesting documentation to support the charitable contributions claimed on her 2025 return. No in-person meeting was scheduled. What type of IRS audit is conducted entirely through the mail?$EXPL$
WHERE id = 12853;

-- ID 12855: Tax Procedures (15 words)
-- ORIGINAL STEM: What standard of proof must the IRS meet to establish civil fraud under Section 6663?
UPDATE questions SET
  stem = $EXPL$The IRS is pursuing a civil fraud penalty against a taxpayer who allegedly fabricated business expenses totaling $180,000 over three years. What standard of proof must the IRS meet to establish civil fraud under Section 6663?$EXPL$
WHERE id = 12855;

-- ID 2434: Tax Procedures (16 words)
-- ORIGINAL STEM: The penalty for failure to file a tax return by the due date (including extensions) is:
UPDATE questions SET
  stem = $EXPL$Marco Silva owed $12,000 in federal income tax for 2026 but did not file his return until three months after the due date, including extensions. The penalty for failure to file by the due date is:$EXPL$
WHERE id = 2434;

-- ============================================================
-- TAX-EXEMPT ORGANIZATIONS (1 questions)
-- ============================================================

-- ID 9024: Tax-Exempt Organizations (13 words)
-- ORIGINAL STEM: Under Section 509, how is a newly recognized 501(c)(3) organization classified by default?
UPDATE questions SET
  stem = $EXPL$The Westbrook Community Foundation recently received its determination letter granting 501(c)(3) status. The board is reviewing the foundation''s default classification for compliance purposes. Under Section 509, how is a newly recognized 501(c)(3) organization classified by default?$EXPL$
WHERE id = 9024;

COMMIT;
