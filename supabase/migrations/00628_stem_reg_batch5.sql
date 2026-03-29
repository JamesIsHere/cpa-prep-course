-- Migration: Stem expansion — REG batch 5 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Estate and Gift Tax, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Partnerships, Professional Ethics in Tax, Property Transactions: Basis, Property Transactions: Gains/Losses, S Corporations, Tax Procedures, Tax-Exempt Organizations

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (2 questions)
-- ============================================================

-- ID 11163: Agency and Regulation (13 words)
-- ORIGINAL STEM: UCC Article 2 governs transactions involving the sale of which type of property?
UPDATE questions SET
  stem = $EXPL$Beacon Supply Co. enters into a contract with Ridgeline Industries to purchase 500 units of custom-fabricated steel shelving for its warehouse. A dispute arises over delivery terms. UCC Article 2 governs transactions involving the sale of which type of property?$EXPL$
WHERE id = 11163;

-- ID 11178: Agency and Regulation (13 words)
-- ORIGINAL STEM: An agent's duty of care requires the agent to perform with what standard?
UPDATE questions SET
  stem = $EXPL$Harmon Real Estate hired Lisa Chen as a leasing agent to negotiate commercial lease agreements on the firm''s behalf. A client claims Lisa failed to investigate a prospective tenant''s credit history before executing a lease. An agent''s duty of care requires the agent to perform with what standard?$EXPL$
WHERE id = 11178;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (2 questions)
-- ============================================================

-- ID 10890: Alternative Minimum Tax (16 words)
-- ORIGINAL STEM: For AMT purposes, what happens to the standard deduction claimed on a taxpayer's regular tax return?
UPDATE questions SET
  stem = $EXPL$Kevin Park, a single filer, claimed the $15,000 standard deduction on his 2025 regular tax return. His CPA is now computing his alternative minimum taxable income. For AMT purposes, what happens to the standard deduction claimed on a taxpayer''s regular tax return?$EXPL$
WHERE id = 10890;

-- ID 11326: Alternative Minimum Tax (16 words)
-- ORIGINAL STEM: Under IRC Section 55, which categories of taxpayers may be subject to the alternative minimum tax?
UPDATE questions SET
  stem = $EXPL$A tax advisor is reviewing whether several clients—an individual, a C corporation, and a trust—could face additional tax liability beyond their regular income tax. Under IRC Section 55, which categories of taxpayers may be subject to the alternative minimum tax?$EXPL$
WHERE id = 11326;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (2 questions)
-- ============================================================

-- ID 11207: Business Law: Contracts (12 words)
-- ORIGINAL STEM: Under common law, how do courts generally treat the adequacy of consideration?
UPDATE questions SET
  stem = $EXPL$Dawson agrees to sell his vintage car, worth approximately $35,000, to his neighbor Rivera for $5,000. Rivera later claims the contract is enforceable despite the price disparity. Under common law, how do courts generally treat the adequacy of consideration?$EXPL$
WHERE id = 11207;

-- ID 11213: Business Law: Contracts (12 words)
-- ORIGINAL STEM: Under common law, what is the effect of illegality on a contract?
UPDATE questions SET
  stem = $EXPL$Two parties execute a written agreement for the sale of goods that violates a state licensing statute. When one party fails to perform, the other seeks enforcement in court. Under common law, what is the effect of illegality on a contract?$EXPL$
WHERE id = 11213;

-- ============================================================
-- BUSINESS STRUCTURES (2 questions)
-- ============================================================

-- ID 11226: Business Structures (13 words)
-- ORIGINAL STEM: What is the immediate legal effect when a debtor files a bankruptcy petition?
UPDATE questions SET
  stem = $EXPL$Greenleaf Manufacturing owes $2.4 million to various creditors and files a voluntary Chapter 11 bankruptcy petition on March 1, 2026. Several creditors are actively pursuing collection lawsuits. What is the immediate legal effect when a debtor files a bankruptcy petition?$EXPL$
WHERE id = 11226;

-- ID 507: Business Structures (14 words)
-- ORIGINAL STEM: Which of the following debts is generally NOT dischargeable in a Chapter 7 bankruptcy?
UPDATE questions SET
  stem = $EXPL$Reynolds, an individual debtor, files for Chapter 7 bankruptcy. He owes $40,000 in credit card debt, $28,000 in student loans, $12,000 in medical bills, and $6,000 in utility arrears. Which of the following debts is generally NOT dischargeable in a Chapter 7 bankruptcy?$EXPL$
WHERE id = 507;

-- ============================================================
-- C CORPORATIONS (2 questions)
-- ============================================================

-- ID 10720: C Corporations (15 words)
-- ORIGINAL STEM: At what tax rates are qualified dividends from a C corporation taxed to individual shareholders?
UPDATE questions SET
  stem = $EXPL$Pinnacle Corp, a C corporation, distributes $80,000 in dividends to shareholder Tran, who held the stock for three years. Tran''s CPA is determining the applicable rate for these qualified dividends. At what tax rates are qualified dividends from a C corporation taxed to individual shareholders?$EXPL$
WHERE id = 10720;

-- ID 10811: C Corporations (15 words)
-- ORIGINAL STEM: Which type of dividends does NOT qualify for the dividends received deduction under Section 243?
UPDATE questions SET
  stem = $EXPL$Atlas Industries, a C corporation, owns stock in several domestic and foreign companies and received dividend income during 2025. The tax department is determining which dividends qualify for the dividends received deduction. Which type of dividends does NOT qualify for the DRD under Section 243?$EXPL$
WHERE id = 10811;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 2397: Circular 230 (12 words)
-- ORIGINAL STEM: Under Circular 230, a practitioner negotiating a client's tax refund check is:
UPDATE questions SET
  stem = $EXPL$CPA Martin Blake receives a federal income tax refund check issued to his client, Nguyen. Blake endorses and deposits the check into his firm''s trust account at Nguyen''s request. Under Circular 230, a practitioner negotiating a client''s tax refund check is:$EXPL$
WHERE id = 2397;

-- ID 2377: Circular 230 (13 words)
-- ORIGINAL STEM: Under Circular 230, what due diligence standard applies to CPAs preparing tax returns?
UPDATE questions SET
  stem = $EXPL$During busy season, CPA Rivera relies on a client''s oral representations about deductible expenses without requesting supporting documentation. A supervisor questions whether the firm met its professional obligations. Under Circular 230, what due diligence standard applies to CPAs preparing tax returns?$EXPL$
WHERE id = 2377;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (2 questions)
-- ============================================================

-- ID 1181: Debtor-Creditor Relationships (14 words)
-- ORIGINAL STEM: Under the automatic stay in bankruptcy, which of the following actions is NOT prohibited?
UPDATE questions SET
  stem = $EXPL$Garner Industries files a Chapter 11 bankruptcy petition. At the time of filing, a criminal fraud case is pending against Garner''s CEO, a landlord is suing for unpaid rent, and the state is collecting a child support obligation from the CEO personally. Under the automatic stay, which of the following actions is NOT prohibited?$EXPL$
WHERE id = 1181;

-- ID 2884: Debtor-Creditor Relationships (14 words)
-- ORIGINAL STEM: What is the primary method of perfecting a security interest under UCC Article 9?
UPDATE questions SET
  stem = $EXPL$Central Bank lends $500,000 to Oakmont Distributors, secured by Oakmont''s accounts receivable and inventory. The bank''s attorney advises that the security interest must be perfected to establish priority over other creditors. What is the primary method of perfecting a security interest under UCC Article 9?$EXPL$
WHERE id = 2884;

-- ============================================================
-- ESTATE AND GIFT TAX (2 questions)
-- ============================================================

-- ID 5459: Estate and Gift Tax (15 words)
-- ORIGINAL STEM: Under IRC Section 6075(b), when is the federal gift tax return (Form 709) generally due?
UPDATE questions SET
  stem = $EXPL$In December 2025, Margaret Walsh transferred $250,000 in stock to her daughter, exceeding the annual exclusion. Walsh''s CPA is determining the filing deadline for the gift tax return. Under IRC Section 6075(b), when is the federal gift tax return (Form 709) generally due?$EXPL$
WHERE id = 5459;

-- ID 5467: Estate and Gift Tax (15 words)
-- ORIGINAL STEM: Under IRC Section 6075(a), when must a federal estate tax return (Form 706) be filed?
UPDATE questions SET
  stem = $EXPL$Thomas Hartley, a U.S. citizen, died on June 15, 2025, with a gross estate exceeding the applicable exclusion amount. The executor needs to determine the filing deadline for the estate tax return. Under IRC Section 6075(a), when must a federal estate tax return (Form 706) be filed?$EXPL$
WHERE id = 5467;

-- ============================================================
-- FEDERAL TAX PROCEDURES (1 questions)
-- ============================================================

-- ID 12711: Federal Tax Procedures (12 words)
-- ORIGINAL STEM: What is the monthly rate for the failure-to-pay penalty under Section 6651?
UPDATE questions SET
  stem = $EXPL$Sandra Cole filed her 2025 federal income tax return on time but did not pay the $18,000 balance due until four months later. Her CPA is calculating the applicable penalty. What is the monthly rate for the failure-to-pay penalty under Section 6651?$EXPL$
WHERE id = 12711;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (2 questions)
-- ============================================================

-- ID 11299: Government Regulation of Business (15 words)
-- ORIGINAL STEM: Under the Equal Pay Act of 1963, employers are prohibited from engaging in which practice?
UPDATE questions SET
  stem = $EXPL$Vanguard Corp pays its male production supervisors an average of $72,000 per year while female supervisors performing identical duties earn $65,000. An employee files a complaint citing federal employment law. Under the Equal Pay Act of 1963, employers are prohibited from engaging in which practice?$EXPL$
WHERE id = 11299;

-- ID 11302: Government Regulation of Business (16 words)
-- ORIGINAL STEM: Under the Securities Act of 1933, which type of security is exempt from the registration requirement?
UPDATE questions SET
  stem = $EXPL$A financial advisor is reviewing a portfolio that includes U.S. Treasury bonds, corporate stock, and municipal bonds. The advisor needs to determine which instruments did not require SEC registration. Under the Securities Act of 1933, which type of security is exempt from the registration requirement?$EXPL$
WHERE id = 11302;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (2 questions)
-- ============================================================

-- ID 10925: Individual Taxation: Credits (15 words)
-- ORIGINAL STEM: Under Section 904(c), what are the carryback and carryforward periods for unused foreign tax credits?
UPDATE questions SET
  stem = $EXPL$Patel, a U.S. citizen, paid $45,000 in foreign income taxes in 2025 but could only use $38,000 due to the foreign tax credit limitation. Her CPA is advising on how to apply the $7,000 excess. Under Section 904(c), what are the carryback and carryforward periods for unused foreign tax credits?$EXPL$
WHERE id = 10925;

-- ID 11364: Individual Taxation: Credits (15 words)
-- ORIGINAL STEM: Under Section 36B, is the premium tax credit for marketplace health insurance refundable or nonrefundable?
UPDATE questions SET
  stem = $EXPL$Garcia, a self-employed graphic designer with AGI of $42,000, purchased health insurance through the federal marketplace in 2025 and received advance premium assistance. Under Section 36B, is the premium tax credit for marketplace health insurance refundable or nonrefundable?$EXPL$
WHERE id = 11364;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (2 questions)
-- ============================================================

-- ID 2707: Individual Taxation: Credits/AMT (14 words)
-- ORIGINAL STEM: Interest on which type of bonds is a tax preference item for AMT purposes?
UPDATE questions SET
  stem = $EXPL$Whitfield, a high-income individual, holds municipal bonds in her portfolio, including both general obligation bonds and bonds issued to finance a private sports arena. Her CPA is computing AMTI. Interest on which type of bonds is a tax preference item for AMT purposes?$EXPL$
WHERE id = 2707;

-- ID 2720: Individual Taxation: Credits/AMT (14 words)
-- ORIGINAL STEM: For NIIT purposes, which of the following is NOT included in net investment income?
UPDATE questions SET
  stem = $EXPL$Dr. Okafor has MAGI of $280,000, including $90,000 in wages, $35,000 in rental income, $20,000 in dividends, and $15,000 in capital gains. His CPA is determining which items are subject to the 3.8% net investment income tax. Which of the following is NOT included in net investment income?$EXPL$
WHERE id = 2720;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (2 questions)
-- ============================================================

-- ID 1289: Individual Taxation: Deductions (12 words)
-- ORIGINAL STEM: The auto loan interest deduction introduced by H.R. 1 is limited to:
UPDATE questions SET
  stem = $EXPL$In 2026, Jordan Beck finances the purchase of a U.S.-manufactured electric vehicle with a $55,000 auto loan and pays $4,200 in interest during the year. Beck''s CPA is determining the above-the-line deduction. The auto loan interest deduction introduced by H.R. 1 is limited to:$EXPL$
WHERE id = 1289;

-- ID 10988: Individual Taxation: Deductions (12 words)
-- ORIGINAL STEM: Under IRC Section 165(d), how are gambling losses treated for individual taxpayers?
UPDATE questions SET
  stem = $EXPL$During 2025, Martinez reported $8,000 in gambling winnings from casino visits and documented $12,000 in gambling losses. She itemizes deductions and wants to know how to report the losses. Under IRC Section 165(d), how are gambling losses treated for individual taxpayers?$EXPL$
WHERE id = 10988;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (2 questions)
-- ============================================================

-- ID 2728: Individual Taxation: Filing/Credits (16 words)
-- ORIGINAL STEM: What tests must be met for a child to qualify as a dependent under Section 152?
UPDATE questions SET
  stem = $EXPL$Sara Kim, age 35 and single, provides full financial support for her 14-year-old niece who lives with her year-round. Kim''s tax preparer is determining whether the niece qualifies as a dependent. What tests must be met for a child to qualify as a dependent under Section 152?$EXPL$
WHERE id = 2728;

-- ID 11031: Individual Taxation: Filing/Credits (16 words)
-- ORIGINAL STEM: Which expense is included in the cost of maintaining a home for Head of Household purposes?
UPDATE questions SET
  stem = $EXPL$Thompson, who is unmarried, pays the mortgage, property taxes, homeowner''s insurance, food, and clothing for the household where she lives with her qualifying child. She is determining whether she paid more than half the cost of maintaining the home. Which expense is included in the cost of maintaining a home for Head of Household purposes?$EXPL$
WHERE id = 11031;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (2 questions)
-- ============================================================

-- ID 76: Individual Taxation: Income (14 words)
-- ORIGINAL STEM: Which of the following is excluded from gross income under the Internal Revenue Code?
UPDATE questions SET
  stem = $EXPL$During 2025, Danielle Foster received $50,000 in wages, $3,000 in municipal bond interest, $2,000 in gambling winnings, and a $10,000 gift from her grandmother. Her CPA is identifying which items are excluded from gross income. Which of the following is excluded from gross income under the Internal Revenue Code?$EXPL$
WHERE id = 76;

-- ID 2620: Individual Taxation: Income (14 words)
-- ORIGINAL STEM: What holding period must be met for dividends to qualify for preferential tax rates?
UPDATE questions SET
  stem = $EXPL$Investor Nathan Wells purchased shares of Crestline Corp on February 1 and received a dividend on March 15 before selling the shares on April 10. His CPA is evaluating the tax treatment of the dividend. What holding period must be met for dividends to qualify for preferential tax rates?$EXPL$
WHERE id = 2620;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 2861: Legal Duties and Responsibilities (14 words)
-- ORIGINAL STEM: Under common law, what standard of care does a CPA owe to a client?
UPDATE questions SET
  stem = $EXPL$Meridian Corp sues its external CPA firm, alleging that errors in the 2024 audit caused the company to make poor financial decisions. The firm argues it followed standard procedures. Under common law, what standard of care does a CPA owe to a client?$EXPL$
WHERE id = 2861;

-- ID 2874: Legal Duties and Responsibilities (15 words)
-- ORIGINAL STEM: The Section 7525 tax practitioner privilege does NOT apply in which of the following situations?
UPDATE questions SET
  stem = $EXPL$CPA Thornton provided written tax advice to a corporate client regarding a complex transaction. When the IRS later initiated proceedings, the client sought to invoke the Section 7525 practitioner privilege to shield those communications. The Section 7525 tax practitioner privilege does NOT apply in which of the following situations?$EXPL$
WHERE id = 2874;

-- ============================================================
-- LIKE-KIND EXCHANGES (2 questions)
-- ============================================================

-- ID 2601: Like-Kind Exchanges (12 words)
-- ORIGINAL STEM: In a Section 1031 exchange, what is the effect of giving boot?
UPDATE questions SET
  stem = $EXPL$Draper Properties exchanges a rental warehouse (FMV $600,000, basis $350,000) for a smaller office building (FMV $520,000) plus $80,000 in cash paid by Draper to equalize values. In a Section 1031 exchange, what is the effect of giving boot?$EXPL$
WHERE id = 2601;

-- ID 2602: Like-Kind Exchanges (12 words)
-- ORIGINAL STEM: Under Section 1031, how does depreciation recapture interact with like-kind exchange treatment?
UPDATE questions SET
  stem = $EXPL$Harper Industries exchanges a commercial building with $120,000 of accumulated straight-line depreciation in a qualifying Section 1031 like-kind exchange. The tax director is determining whether recapture rules apply. Under Section 1031, how does depreciation recapture interact with like-kind exchange treatment?$EXPL$
WHERE id = 2602;

-- ============================================================
-- PARTNERSHIPS (2 questions)
-- ============================================================

-- ID 11114: Partnerships (15 words)
-- ORIGINAL STEM: Under IRC Section 731(a)(2), when can a partner recognize a loss from a partnership distribution?
UPDATE questions SET
  stem = $EXPL$Davis, a 25% partner in Elm Street Partners, receives a liquidating distribution consisting of $30,000 cash and $10,000 in unrealized receivables. Davis''s outside basis before the distribution is $60,000. Under IRC Section 731(a)(2), when can a partner recognize a loss from a partnership distribution?$EXPL$
WHERE id = 11114;

-- ID 10756: Partnerships (16 words)
-- ORIGINAL STEM: Unlike Section 351 for corporations, what requirement does Section 721 NOT impose for tax-free partnership contributions?
UPDATE questions SET
  stem = $EXPL$Bennett contributes equipment worth $200,000 for a 15% interest in a new partnership. Her attorney notes that tax-free treatment applies even though she owns a small percentage. Unlike Section 351 for corporations, what requirement does Section 721 NOT impose for tax-free partnership contributions?$EXPL$
WHERE id = 10756;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (1 questions)
-- ============================================================

-- ID 2407: Professional Ethics in Tax (16 words)
-- ORIGINAL STEM: Under SSTS No. 4, when is a CPA permitted to use estimates on a tax return?
UPDATE questions SET
  stem = $EXPL$CPA Warren is preparing a return for a small business owner whose receipts for several deductible expenses were destroyed in an office flood. The client provides reasonable approximations based on bank records. Under SSTS No. 4, when is a CPA permitted to use estimates on a tax return?$EXPL$
WHERE id = 2407;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (8 questions)
-- ============================================================

-- ID 2548: Property Transactions: Basis (12 words)
-- ORIGINAL STEM: Under Section 1014, what basis does a beneficiary take in inherited property?
UPDATE questions SET
  stem = $EXPL$In 2025, Rachel Grant inherits 500 shares of Brightline Corp stock from her late uncle, who originally purchased the shares for $12,000. The stock''s fair market value on the date of death is $85,000. Under Section 1014, what basis does Rachel take in the inherited property?$EXPL$
WHERE id = 2548;

-- ID 2559: Property Transactions: Basis (12 words)
-- ORIGINAL STEM: Which of the following statements correctly distinguishes Section 1014 from Section 1015?
UPDATE questions SET
  stem = $EXPL$A CPA is advising two clients: one who inherited stock from a deceased parent and another who received stock as a birthday gift from a living relative. The CPA must apply different basis rules. Which of the following statements correctly distinguishes Section 1014 from Section 1015?$EXPL$
WHERE id = 2559;

-- ID 1285: Property Transactions: Basis (13 words)
-- ORIGINAL STEM: H.R. 1 restored 100% bonus depreciation effective for property placed in service after:
UPDATE questions SET
  stem = $EXPL$Apex Manufacturing placed $750,000 of new production equipment in service during 2026 and wants to claim full bonus depreciation. The controller is confirming the effective date. H.R. 1 restored 100% bonus depreciation effective for property placed in service after:$EXPL$
WHERE id = 1285;

-- ID 2532: Property Transactions: Basis (13 words)
-- ORIGINAL STEM: Which costs are included in the tax basis of a purchased rental property?
UPDATE questions SET
  stem = $EXPL$Evans purchases a rental duplex for $320,000. The closing statement shows $1,500 in title insurance, $900 in legal fees, a $3,000 loan origination fee, and $1,800 in prorated property taxes. Which costs are included in the tax basis of the purchased rental property?$EXPL$
WHERE id = 2532;

-- ID 2541: Property Transactions: Basis (13 words)
-- ORIGINAL STEM: What is the effect of electing the alternate valuation date under Section 2032?
UPDATE questions SET
  stem = $EXPL$The executor of the Marshall estate is considering the alternate valuation date because several estate assets declined in value during the six months following the decedent''s death. What is the effect of electing the alternate valuation date under Section 2032?$EXPL$
WHERE id = 2541;

-- ID 2544: Property Transactions: Basis (13 words)
-- ORIGINAL STEM: What is the depreciable basis of property converted from personal to rental use?
UPDATE questions SET
  stem = $EXPL$Fischer purchased a home for $280,000 in 2020 and converts it to a rental property in 2025 when the fair market value is $240,000. Fischer''s CPA needs to determine the appropriate depreciable basis. What is the depreciable basis of property converted from personal to rental use?$EXPL$
WHERE id = 2544;

-- ID 2542: Property Transactions: Basis (14 words)
-- ORIGINAL STEM: Under Section 1015, what is the dual basis rule for gifts of depreciated property?
UPDATE questions SET
  stem = $EXPL$In 2025, Robert gifts stock to his daughter Megan. Robert''s adjusted basis is $30,000 and the stock''s fair market value at the date of the gift is $22,000. Under Section 1015, what is the dual basis rule for gifts of depreciated property?$EXPL$
WHERE id = 2542;

-- ID 2543: Property Transactions: Basis (14 words)
-- ORIGINAL STEM: How is the cost allocated when multiple assets are purchased in a single transaction?
UPDATE questions SET
  stem = $EXPL$Horizon LLC purchases a small office building, the underlying land, and office furniture from a single seller for a lump-sum price of $800,000. The buyer''s CPA must allocate the purchase price for depreciation purposes. How is the cost allocated when multiple assets are purchased in a single transaction?$EXPL$
WHERE id = 2543;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (1 questions)
-- ============================================================

-- ID 524: Property Transactions: Gains/Losses (13 words)
-- ORIGINAL STEM: Which types of income are subject to the 3.8% net investment income tax?
UPDATE questions SET
  stem = $EXPL$The Nguyens, married filing jointly, have MAGI of $310,000, including wages, rental income, dividends, and capital gains from stock sales. Their CPA is identifying which items trigger the 3.8% surtax. Which types of income are subject to the 3.8% net investment income tax?$EXPL$
WHERE id = 524;

-- ============================================================
-- S CORPORATIONS (2 questions)
-- ============================================================

-- ID 11139: S Corporations (13 words)
-- ORIGINAL STEM: Who is responsible for making estimated tax payments on S corporation pass-through income?
UPDATE questions SET
  stem = $EXPL$Quinn is a 40% shareholder in Crestview Services, an S corporation that expects $500,000 in ordinary business income for 2026. Quinn''s CPA is advising on quarterly payment obligations. Who is responsible for making estimated tax payments on S corporation pass-through income?$EXPL$
WHERE id = 11139;

-- ID 85: S Corporations (14 words)
-- ORIGINAL STEM: Which of the following would cause an S corporation to lose its S election?
UPDATE questions SET
  stem = $EXPL$Lakewood Inc., an S corporation with 95 individual shareholders, is considering issuing preferred stock to raise additional capital. The CFO is concerned about maintaining the S election. Which of the following would cause an S corporation to lose its S election?$EXPL$
WHERE id = 85;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 2428: Tax Procedures (14 words)
-- ORIGINAL STEM: The general statute of limitations for the IRS to assess additional income tax is:
UPDATE questions SET
  stem = $EXPL$Palmer filed her 2022 federal income tax return on April 15, 2023. In 2026, the IRS sends a notice proposing additional tax. Palmer''s CPA is evaluating whether the assessment period has expired. The general statute of limitations for the IRS to assess additional income tax is:$EXPL$
WHERE id = 2428;

-- ID 2444: Tax Procedures (14 words)
-- ORIGINAL STEM: A taxpayer can avoid the estimated tax penalty if the taxpayer pays at least:
UPDATE questions SET
  stem = $EXPL$Henderson, a self-employed consultant with prior-year AGI of $130,000, expects to owe $40,000 in federal income tax for 2025. She wants to make quarterly estimated payments to avoid the underpayment penalty. A taxpayer can avoid the estimated tax penalty if the taxpayer pays at least:$EXPL$
WHERE id = 2444;

-- ============================================================
-- TAX-EXEMPT ORGANIZATIONS (1 questions)
-- ============================================================

-- ID 1275: Tax-Exempt Organizations (12 words)
-- ORIGINAL STEM: Under Section 513, which activities are excluded from unrelated business taxable income?
UPDATE questions SET
  stem = $EXPL$Hope Community Foundation, a 501(c)(3) organization, operates a thrift store staffed entirely by volunteers selling donated merchandise. The foundation also runs a commercial parking lot. Under Section 513, which activities are excluded from unrelated business taxable income?$EXPL$
WHERE id = 1275;

COMMIT;
