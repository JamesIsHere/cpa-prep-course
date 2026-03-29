-- Migration: Stem expansion — REG batch 4 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Estate and Gift Tax, Federal Tax Procedures, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Partnerships, Professional Ethics in Tax, Property Transactions: Basis, Property Transactions: Gains/Losses, S Corporations, Tax Procedures

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (2 questions)
-- ============================================================

-- ID 503: Agency and Regulation (13 words)
-- ORIGINAL STEM: Under the Ultramares doctrine, to whom is an accountant liable for ordinary negligence?
UPDATE questions SET
  stem = $EXPL$Greystone Manufacturing sues the CPA firm that audited its supplier, Keller Industries, claiming the firm''s negligent audit caused Greystone to extend credit and suffer losses. The CPA firm was not in privity with Greystone. Under the Ultramares doctrine, to whom is an accountant liable for ordinary negligence?$EXPL$
WHERE id = 503;

-- ID 2484: Agency and Regulation (13 words)
-- ORIGINAL STEM: A general agent differs from a special agent in that a general agent:
UPDATE questions SET
  stem = $EXPL$Rivera Property Management is hired by a landlord to handle all leasing, maintenance, and tenant relations for an apartment complex on an ongoing basis. A general agent like Rivera differs from a special agent in that a general agent:$EXPL$
WHERE id = 2484;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (2 questions)
-- ============================================================

-- ID 11330: Alternative Minimum Tax (15 words)
-- ORIGINAL STEM: What is the starting point for calculating alternative minimum taxable income for an individual taxpayer?
UPDATE questions SET
  stem = $EXPL$Marcus, a single taxpayer, exercised incentive stock options in 2026 and is now computing his AMT liability. His CPA begins the AMT worksheet by identifying the correct starting figure. What is the starting point for calculating alternative minimum taxable income for an individual taxpayer?$EXPL$
WHERE id = 11330;

-- ID 11338: Alternative Minimum Tax (15 words)
-- ORIGINAL STEM: What is the approximate AMT exemption amount for a married taxpayer filing separately in 2026?
UPDATE questions SET
  stem = $EXPL$Danielle and Robert are married but file separately for 2026 due to Robert''s unpaid tax liabilities. Danielle''s tax advisor is calculating her AMT exposure and needs the correct exemption. What is the approximate AMT exemption amount for a married taxpayer filing separately in 2026?$EXPL$
WHERE id = 11338;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (2 questions)
-- ============================================================

-- ID 11215: Business Law: Contracts (10 words)
-- ORIGINAL STEM: What constitutes undue influence as a defense to contract enforcement?
UPDATE questions SET
  stem = $EXPL$Eleanor, an 82-year-old widow, signed over her home to her live-in caretaker, Martin, who had managed all her finances for three years. Eleanor''s family seeks to void the contract. What constitutes undue influence as a defense to contract enforcement?$EXPL$
WHERE id = 11215;

-- ID 2452: Business Law: Contracts (12 words)
-- ORIGINAL STEM: Under common law, what is the mirror image rule for contract acceptance?
UPDATE questions SET
  stem = $EXPL$Lakewood Construction offered to build an addition for $95,000 with a 90-day completion window. The homeowner replied accepting but added a requirement for a performance bond. Under common law, what is the mirror image rule for contract acceptance?$EXPL$
WHERE id = 2452;

-- ============================================================
-- BUSINESS STRUCTURES (3 questions)
-- ============================================================

-- ID 211: Business Structures (12 words)
-- ORIGINAL STEM: A shareholder of a corporation generally has which of the following rights?
UPDATE questions SET
  stem = $EXPL$Kenji owns 500 shares of Meridian Industries, a publicly traded corporation. He wants to understand the scope of his ownership stake. A shareholder of a corporation generally has which of the following rights?$EXPL$
WHERE id = 211;

-- ID 509: Business Structures (13 words)
-- ORIGINAL STEM: Under Chapter 13 bankruptcy, which of the following is a requirement for eligibility?
UPDATE questions SET
  stem = $EXPL$Sandra, a salaried nurse earning $72,000 annually, has $180,000 in unsecured credit card debt and is considering Chapter 13 rather than Chapter 7. Under Chapter 13 bankruptcy, which of the following is a requirement for eligibility?$EXPL$
WHERE id = 509;

-- ID 2506: Business Structures (13 words)
-- ORIGINAL STEM: A sole proprietor reports business income and expenses on which federal tax form?
UPDATE questions SET
  stem = $EXPL$Helen operates a freelance graphic design business as a sole proprietor. She earned $68,000 in revenue and incurred $22,000 in expenses during 2026. A sole proprietor reports business income and expenses on which federal tax form?$EXPL$
WHERE id = 2506;

-- ============================================================
-- C CORPORATIONS (2 questions)
-- ============================================================

-- ID 11081: C Corporations (13 words)
-- ORIGINAL STEM: What is the purpose of earnings and profits (E&P) in C corporation taxation?
UPDATE questions SET
  stem = $EXPL$Ridgeline Corp, a C corporation, distributed $150,000 to its sole shareholder during 2026. The corporation''s accountant must determine how much of the distribution is taxable as a dividend. What is the purpose of earnings and profits (E&P) in C corporation taxation?$EXPL$
WHERE id = 11081;

-- ID 10807: C Corporations (14 words)
-- ORIGINAL STEM: On what dates are quarterly estimated tax installments due for a calendar-year C corporation?
UPDATE questions SET
  stem = $EXPL$Beacon Technologies, a calendar-year C corporation, expects to owe $400,000 in federal income tax for 2026. The controller is scheduling quarterly estimated payments to avoid underpayment penalties. On what dates are quarterly estimated tax installments due for a calendar-year C corporation?$EXPL$
WHERE id = 10807;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 2375: Circular 230 (11 words)
-- ORIGINAL STEM: Who is authorized to practice before the IRS under Circular 230?
UPDATE questions SET
  stem = $EXPL$A taxpayer under IRS examination wants to hire a representative to appear on her behalf at an office audit. She is reviewing which professionals have unlimited representation rights. Who is authorized to practice before the IRS under Circular 230?$EXPL$
WHERE id = 2375;

-- ID 494: Circular 230 (12 words)
-- ORIGINAL STEM: Under what circumstances does the burden of proof shift to the IRS?
UPDATE questions SET
  stem = $EXPL$During Tax Court litigation, Flores maintained detailed records and cooperated fully with all IRS requests during the examination. Her attorney argues the burden of proof should rest with the IRS rather than the taxpayer. Under what circumstances does the burden of proof shift to the IRS?$EXPL$
WHERE id = 494;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (3 questions)
-- ============================================================

-- ID 2885: Debtor-Creditor Relationships (13 words)
-- ORIGINAL STEM: In a Chapter 7 bankruptcy, what is the purpose of the means test?
UPDATE questions SET
  stem = $EXPL$Derek, an individual earning $85,000 per year in a state where the median income is $62,000, files a Chapter 7 petition. The bankruptcy trustee applies the means test to his case. In a Chapter 7 bankruptcy, what is the purpose of the means test?$EXPL$
WHERE id = 2885;

-- ID 2886: Debtor-Creditor Relationships (13 words)
-- ORIGINAL STEM: When a debtor files a bankruptcy petition, which of the following occurs automatically?
UPDATE questions SET
  stem = $EXPL$On March 10, 2026, Palmer Medical Group files a voluntary Chapter 11 petition. Several creditors had pending lawsuits and a bank was preparing to foreclose on Palmer''s office building. When a debtor files a bankruptcy petition, which of the following occurs automatically?$EXPL$
WHERE id = 2886;

-- ID 11267: Debtor-Creditor Relationships (13 words)
-- ORIGINAL STEM: In a Chapter 7 bankruptcy, what is the purpose of a reaffirmation agreement?
UPDATE questions SET
  stem = $EXPL$After filing Chapter 7, Torres wants to keep her car, which secures a $12,000 auto loan. Her attorney advises her to sign an agreement with the lender to continue making payments. In a Chapter 7 bankruptcy, what is the purpose of a reaffirmation agreement?$EXPL$
WHERE id = 11267;

-- ============================================================
-- ESTATE AND GIFT TAX (2 questions)
-- ============================================================

-- ID 5484: Estate and Gift Tax (14 words)
-- ORIGINAL STEM: Under IRC Section 2042, what are incidents of ownership in a life insurance policy?
UPDATE questions SET
  stem = $EXPL$Franklin transferred a $2 million life insurance policy to an irrevocable trust but retained the right to change beneficiaries and borrow against the cash value. His estate tax advisor is evaluating whether the policy proceeds will be included in his gross estate. Under IRC Section 2042, what are incidents of ownership in a life insurance policy?$EXPL$
WHERE id = 5484;

-- ID 5521: Estate and Gift Tax (14 words)
-- ORIGINAL STEM: Under IRC Section 2056A, what is the purpose of a qualified domestic trust (QDOT)?
UPDATE questions SET
  stem = $EXPL$Richard, a U.S. citizen, dies leaving $4 million to his surviving spouse, Mei, who is a citizen of Japan. Richard''s estate attorney recommends a specific trust structure to preserve the marital deduction. Under IRC Section 2056A, what is the purpose of a qualified domestic trust (QDOT)?$EXPL$
WHERE id = 5521;

-- ============================================================
-- FEDERAL TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 12695: Federal Tax Procedures (11 words)
-- ORIGINAL STEM: What type of IRS examination is conducted entirely through the mail?
UPDATE questions SET
  stem = $EXPL$Patterson received an IRS notice requesting documentation to substantiate a $4,200 charitable contribution claimed on his 2025 return. No in-person meeting was scheduled. What type of IRS examination is conducted entirely through the mail?$EXPL$
WHERE id = 12695;

-- ID 12708: Federal Tax Procedures (11 words)
-- ORIGINAL STEM: What is the penalty rate for civil fraud under Section 6663?
UPDATE questions SET
  stem = $EXPL$After an audit, the IRS determined that Langley intentionally understated his income by $200,000 using fictitious deductions. The IRS assessed a civil fraud penalty on the underpayment. What is the penalty rate for civil fraud under Section 6663?$EXPL$
WHERE id = 12708;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (3 questions)
-- ============================================================

-- ID 557: Individual Taxation: Credits (13 words)
-- ORIGINAL STEM: Under Section 56, which of the following is an adjustment for AMT purposes?
UPDATE questions SET
  stem = $EXPL$Chen, a single taxpayer, claimed $14,000 in state and local tax deductions and exercised incentive stock options during 2026. Her CPA is calculating adjustments for the AMT computation. Under Section 56, which of the following is an adjustment for AMT purposes?$EXPL$
WHERE id = 557;

-- ID 2683: Individual Taxation: Credits (14 words)
-- ORIGINAL STEM: Which of the following is a requirement to claim the earned income credit (EIC)?
UPDATE questions SET
  stem = $EXPL$Garcia, a single parent with two children, earned $34,000 in wages during 2026. She also received $8,000 in investment income from a brokerage account. Garcia wants to claim the earned income credit. Which of the following is a requirement to claim the EIC?$EXPL$
WHERE id = 2683;

-- ID 11369: Individual Taxation: Credits (14 words)
-- ORIGINAL STEM: Under Section 6654, what is the nature of the underpayment penalty for estimated taxes?
UPDATE questions SET
  stem = $EXPL$Nakamura, a self-employed consultant, failed to make quarterly estimated tax payments during 2026 and owed $18,000 when filing her return. The IRS assessed an additional charge for the underpayment. Under Section 6654, what is the nature of the underpayment penalty for estimated taxes?$EXPL$
WHERE id = 11369;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (3 questions)
-- ============================================================

-- ID 10972: Individual Taxation: Credits/AMT (13 words)
-- ORIGINAL STEM: The kiddie tax under IRC Section 1(g) applies to which type of income?
UPDATE questions SET
  stem = $EXPL$Ethan, age 14, received $9,500 in dividend income from a custodial brokerage account funded by his grandparents. Ethan also earned $3,000 from a part-time summer job. The kiddie tax under IRC Section 1(g) applies to which type of income?$EXPL$
WHERE id = 10972;

-- ID 10978: Individual Taxation: Credits/AMT (13 words)
-- ORIGINAL STEM: Under IRC Section 6654, when is the estimated tax underpayment penalty automatically waived?
UPDATE questions SET
  stem = $EXPL$Patel filed his 2026 return and owed $800 after accounting for all withholding and estimated payments. His tax advisor told him no underpayment penalty would apply. Under IRC Section 6654, when is the estimated tax underpayment penalty automatically waived?$EXPL$
WHERE id = 10978;

-- ID 13175: Individual Taxation: Credits/AMT (13 words)
-- ORIGINAL STEM: Under IRC Section 36B, which of the following describes the Premium Tax Credit?
UPDATE questions SET
  stem = $EXPL$The Walters family, with household income at 250% of the federal poverty level, purchased health insurance through the federal marketplace in 2026. They are evaluating available tax benefits. Under IRC Section 36B, which of the following describes the Premium Tax Credit?$EXPL$
WHERE id = 13175;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (2 questions)
-- ============================================================

-- ID 10997: Individual Taxation: Deductions (11 words)
-- ORIGINAL STEM: Under IRC Section 163(h)(1), personal interest paid on consumer debt is:
UPDATE questions SET
  stem = $EXPL$Dunn paid $3,200 in interest on a personal credit card balance and $1,800 in interest on an auto loan used exclusively for personal transportation during 2026. Under IRC Section 163(h)(1), personal interest paid on consumer debt is:$EXPL$
WHERE id = 10997;

-- ID 222: Individual Taxation: Deductions (12 words)
-- ORIGINAL STEM: Which of the following is an above-the-line deduction (adjustment to gross income)?
UPDATE questions SET
  stem = $EXPL$Jordan, a single taxpayer earning $78,000, paid $2,500 in student loan interest and $6,500 into a deductible IRA during 2026. She is determining which deductions reduce her AGI. Which of the following is an above-the-line deduction (adjustment to gross income)?$EXPL$
WHERE id = 222;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (3 questions)
-- ============================================================

-- ID 228: Individual Taxation: Filing/Credits (14 words)
-- ORIGINAL STEM: The Earned Income Tax Credit (EITC) is designed to benefit which group of taxpayers?
UPDATE questions SET
  stem = $EXPL$Congress enacted the Earned Income Tax Credit as a fully refundable credit available to certain qualifying taxpayers. A tax preparer is explaining eligibility to a new client. The EITC is designed to benefit which group of taxpayers?$EXPL$
WHERE id = 228;

-- ID 2753: Individual Taxation: Filing/Credits (14 words)
-- ORIGINAL STEM: A taxpayer who is married but files separately may claim which of the following?
UPDATE questions SET
  stem = $EXPL$Davis and her spouse have been separated since February 2026. Davis chooses to file as married filing separately to limit her liability for her spouse''s unpaid taxes. A taxpayer who is married but files separately may claim which of the following?$EXPL$
WHERE id = 2753;

-- ID 2726: Individual Taxation: Filing/Credits (16 words)
-- ORIGINAL STEM: How many years after a spouse's death can the surviving spouse use qualifying surviving spouse status?
UPDATE questions SET
  stem = $EXPL$Thompson''s wife died in October 2024. He has not remarried and maintains a home for their 10-year-old dependent child. Thompson filed jointly for 2024. How many years after a spouse''s death can the surviving spouse use qualifying surviving spouse status?$EXPL$
WHERE id = 2726;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (3 questions)
-- ============================================================

-- ID 2621: Individual Taxation: Income (13 words)
-- ORIGINAL STEM: Under Section 280A, what is the personal use test for rental vacation homes?
UPDATE questions SET
  stem = $EXPL$Burke owns a lakefront cabin that she rented for 120 days and used personally for 20 days during 2026. Her CPA is applying the vacation home rules to determine deductibility limits. Under Section 280A, what is the personal use test for rental vacation homes?$EXPL$
WHERE id = 2621;

-- ID 2627: Individual Taxation: Income (13 words)
-- ORIGINAL STEM: Which of the following is NOT included in gross income under Section 61?
UPDATE questions SET
  stem = $EXPL$During 2026, Wallace received $52,000 in wages, $3,000 in municipal bond interest, and a $10,000 gift from her parents. Her tax advisor is identifying which items are taxable. Which of the following is NOT included in gross income under Section 61?$EXPL$
WHERE id = 2627;

-- ID 11049: Individual Taxation: Income (13 words)
-- ORIGINAL STEM: What is the approximate standard deduction amount for a single taxpayer in 2026?
UPDATE questions SET
  stem = $EXPL$Okafor, age 28 and single with no dependents, is deciding whether to itemize deductions or claim the standard deduction on her 2026 return. What is the approximate standard deduction amount for a single taxpayer in 2026?$EXPL$
WHERE id = 11049;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 2864: Legal Duties and Responsibilities (13 words)
-- ORIGINAL STEM: Under the Restatement approach, to whom may an accountant be liable for negligence?
UPDATE questions SET
  stem = $EXPL$Central National Bank relied on audited financial statements prepared by Whitfield & Associates when making a $500,000 loan to a client. The CPA firm knew the bank would use the statements for lending decisions. Under the Restatement approach, to whom may an accountant be liable for negligence?$EXPL$
WHERE id = 2864;

-- ID 1166: Legal Duties and Responsibilities (14 words)
-- ORIGINAL STEM: Under Section 6662, what is the penalty for a substantial understatement of income tax?
UPDATE questions SET
  stem = $EXPL$After examination, the IRS determined that Mitchell''s reported tax liability was understated by $28,000, exceeding 10% of the correct tax. No fraud was involved. Under Section 6662, what is the penalty for a substantial understatement of income tax?$EXPL$
WHERE id = 1166;

-- ============================================================
-- LIKE-KIND EXCHANGES (2 questions)
-- ============================================================

-- ID 13059: Like-Kind Exchanges (11 words)
-- ORIGINAL STEM: In a Section 1031 like-kind exchange, how are realized losses treated?
UPDATE questions SET
  stem = $EXPL$Hartley exchanged a rental warehouse with an adjusted basis of $400,000 for a similar property valued at $350,000, resulting in a realized loss. In a Section 1031 like-kind exchange, how are realized losses treated?$EXPL$
WHERE id = 13059;

-- ID 2594: Like-Kind Exchanges (12 words)
-- ORIGINAL STEM: After the TCJA, what property qualifies for Section 1031 like-kind exchange treatment?
UPDATE questions SET
  stem = $EXPL$Keane sold manufacturing equipment in 2026 and acquired replacement equipment of equivalent value, structuring the transaction as an exchange. Her advisor reviewed current eligibility rules. After the TCJA, what property qualifies for Section 1031 like-kind exchange treatment?$EXPL$
WHERE id = 2594;

-- ============================================================
-- PARTNERSHIPS (2 questions)
-- ============================================================

-- ID 11119: Partnerships (13 words)
-- ORIGINAL STEM: Which entity is responsible for choosing the partnership's taxable year under Section 706(b)?
UPDATE questions SET
  stem = $EXPL$Pinnacle Consulting Partners, a newly formed partnership with three calendar-year individual partners, must select its taxable year for its first Form 1065 filing. Which entity is responsible for choosing the partnership''s taxable year under Section 706(b)?$EXPL$
WHERE id = 11119;

-- ID 2836: Partnerships (14 words)
-- ORIGINAL STEM: What is a partner's outside basis after contributing cash and property to a partnership?
UPDATE questions SET
  stem = $EXPL$Reeves contributed $50,000 cash and equipment with an adjusted basis of $30,000 (FMV $45,000) to a new partnership for a 40% interest. What is Reeves''s outside basis in the partnership interest immediately after the contribution?$EXPL$
WHERE id = 2836;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (2 questions)
-- ============================================================

-- ID 2404: Professional Ethics in Tax (14 words)
-- ORIGINAL STEM: Under SSTS No. 1, the "realistic possibility" standard for a tax return position means:
UPDATE questions SET
  stem = $EXPL$A CPA at Harper & Webb is reviewing a client''s aggressive charitable deduction position before signing the return. The firm''s quality review policy requires compliance with SSTS No. 1. Under SSTS No. 1, the "realistic possibility" standard for a tax return position means:$EXPL$
WHERE id = 2404;

-- ID 2412: Professional Ethics in Tax (15 words)
-- ORIGINAL STEM: Under SSTS No. 1, what standard must a CPA meet to recommend a tax position?
UPDATE questions SET
  stem = $EXPL$Castillo, a CPA, is considering whether to recommend that a client claim a home office deduction that has limited supporting authority. Under SSTS No. 1, what standard must a CPA meet to recommend a tax position?$EXPL$
WHERE id = 2412;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (2 questions)
-- ============================================================

-- ID 2536: Property Transactions: Basis (12 words)
-- ORIGINAL STEM: Under Section 1015, what is the donor's basis rule for gifted property?
UPDATE questions SET
  stem = $EXPL$In 2026, Margaret gifted stock to her niece. Margaret''s adjusted basis was $15,000 and the stock''s FMV on the date of the gift was $22,000. Under Section 1015, what is the basis rule when the donee later sells the gifted property at a gain?$EXPL$
WHERE id = 2536;

-- ID 2540: Property Transactions: Basis (12 words)
-- ORIGINAL STEM: Under Section 2032, when can an estate elect the alternate valuation date?
UPDATE questions SET
  stem = $EXPL$Henderson died on April 3, 2026. Between the date of death and six months later, the value of Henderson''s estate assets declined by $800,000. The executor is considering an election to value the estate at a later date. Under Section 2032, when can an estate elect the alternate valuation date?$EXPL$
WHERE id = 2540;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (2 questions)
-- ============================================================

-- ID 2570: Property Transactions: Gains/Losses (11 words)
-- ORIGINAL STEM: How is gain on the sale of nonresidential real property taxed?
UPDATE questions SET
  stem = $EXPL$Waverly Corp sold an office building held for 12 years at a gain. The building had been depreciated using the straight-line method over 39 years. How is gain on the sale of nonresidential real property taxed?$EXPL$
WHERE id = 2570;

-- ID 216: Property Transactions: Gains/Losses (12 words)
-- ORIGINAL STEM: What is the maximum capital loss deduction against ordinary income for individuals?
UPDATE questions SET
  stem = $EXPL$In 2026, Boyd realized $18,000 in net capital losses after offsetting all capital gains. He has $95,000 of ordinary income and wants to know how much of the loss he can deduct this year. What is the maximum capital loss deduction against ordinary income for individuals?$EXPL$
WHERE id = 216;

-- ============================================================
-- S CORPORATIONS (2 questions)
-- ============================================================

-- ID 583: S Corporations (13 words)
-- ORIGINAL STEM: The four-tier loss limitation for S corporation shareholders is applied in which order?
UPDATE questions SET
  stem = $EXPL$Novak, the sole shareholder of Apex Consulting Inc., an S corporation, received a $120,000 pass-through loss on her K-1. Her tax advisor must apply the loss limitation rules sequentially. The four-tier loss limitation for S corporation shareholders is applied in which order?$EXPL$
WHERE id = 583;

-- ID 10773: S Corporations (13 words)
-- ORIGINAL STEM: What form does an S corporation file as its federal income tax return?
UPDATE questions SET
  stem = $EXPL$Sterling Design LLC elected S corporation status in its first year. The company''s accountant is preparing the entity''s initial federal income tax return. What form does an S corporation file as its federal income tax return?$EXPL$
WHERE id = 10773;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 12863: Tax Procedures (13 words)
-- ORIGINAL STEM: How is interest on federal tax underpayments compounded under the Internal Revenue Code?
UPDATE questions SET
  stem = $EXPL$After a field audit, the IRS assessed $45,000 in additional tax against Monroe for 2023, with interest accruing from the original due date. Monroe''s attorney is calculating the total interest obligation. How is interest on federal tax underpayments compounded under the Internal Revenue Code?$EXPL$
WHERE id = 12863;

-- ID 242: Tax Procedures (14 words)
-- ORIGINAL STEM: What is the standard statute of limitations for the IRS to assess additional tax?
UPDATE questions SET
  stem = $EXPL$Werner timely filed her 2023 Form 1040 on April 15, 2024, accurately reporting all income. She wants to know when the IRS can no longer propose adjustments to that return. What is the standard statute of limitations for the IRS to assess additional tax?$EXPL$
WHERE id = 242;

COMMIT;
