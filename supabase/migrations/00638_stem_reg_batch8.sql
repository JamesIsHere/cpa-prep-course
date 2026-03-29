-- Migration: Stem expansion — REG batch 8 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Estate and Gift Tax, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Partnerships, Professional Ethics in Tax, Property Transactions: Basis, Property Transactions: Gains/Losses, S Corporations, Tax Procedures, Tax-Exempt Organizations

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (2 questions)
-- ============================================================

-- ID 11164: Agency and Regulation (17 words)
-- ORIGINAL STEM: Under UCC Article 3, which of the following is a requirement for an instrument to be negotiable?
UPDATE questions SET
  stem = $EXPL$Kendall Industries receives a promissory note from a customer as payment for a large equipment order. The company''s treasurer asks a CPA to confirm the note qualifies as a negotiable instrument. Under UCC Article 3, which of the following is a requirement for an instrument to be negotiable?$EXPL$
WHERE id = 11164;

-- ID 2490: Agency and Regulation (18 words)
-- ORIGINAL STEM: An agent who uses confidential information obtained during the agency to personally profit has breached the duty of:
UPDATE questions SET
  stem = $EXPL$Harper, a purchasing agent for Baxter Corp, learns through her duties that Baxter plans to acquire a parcel of land. Harper secretly purchases an adjacent lot and resells it at a profit after Baxter''s acquisition is announced. Harper has breached the duty of:$EXPL$
WHERE id = 2490;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (2 questions)
-- ============================================================

-- ID 10914: Alternative Minimum Tax (18 words)
-- ORIGINAL STEM: Under IRC Section 57, which of the following is classified as a tax preference item for AMT purposes?
UPDATE questions SET
  stem = $EXPL$Morgan, a single taxpayer, is computing her alternative minimum taxable income for 2026. Her CPA reviews her portfolio to identify items requiring adjustment. Under IRC Section 57, which of the following is classified as a tax preference item for AMT purposes?$EXPL$
WHERE id = 10914;

-- ID 11337: Alternative Minimum Tax (18 words)
-- ORIGINAL STEM: Under the Inflation Reduction Act, what tax rate applies to the Corporate Alternative Minimum Tax for applicable corporations?
UPDATE questions SET
  stem = $EXPL$Ridgeway Industries, a publicly traded corporation with average annual adjusted financial statement income exceeding $1 billion, is subject to the Corporate Alternative Minimum Tax enacted by the Inflation Reduction Act. What tax rate applies to this corporate AMT for applicable corporations?$EXPL$
WHERE id = 11337;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (3 questions)
-- ============================================================

-- ID 2469: Business Law: Contracts (16 words)
-- ORIGINAL STEM: Specific performance as a remedy for breach of contract is most likely to be granted when:
UPDATE questions SET
  stem = $EXPL$Thornton agrees to sell a historic brownstone in downtown Charleston to Rivera for $950,000. Thornton later refuses to close. Rivera files suit seeking specific performance rather than monetary damages. Specific performance is most likely to be granted when:$EXPL$
WHERE id = 2469;

-- ID 498: Business Law: Contracts (18 words)
-- ORIGINAL STEM: Under the UCC, what remedy is available to a buyer when a seller breaches a contract for goods?
UPDATE questions SET
  stem = $EXPL$Eastwood Furnishings orders 200 custom desks from Palmer Manufacturing under a written sales contract. Palmer delivers desks that do not conform to the contract specifications. Under the UCC, what remedy is available to Eastwood?$EXPL$
WHERE id = 498;

-- ID 2466: Business Law: Contracts (18 words)
-- ORIGINAL STEM: Which of the following is a valid defense to contract enforcement based on a lack of genuine assent?
UPDATE questions SET
  stem = $EXPL$Garrett signs a contract to purchase a commercial building from Donovan. Garrett later discovers material facts about the property were misrepresented during negotiations and seeks to void the agreement. Which of the following is a valid defense to contract enforcement based on a lack of genuine assent?$EXPL$
WHERE id = 2466;

-- ============================================================
-- BUSINESS STRUCTURES (2 questions)
-- ============================================================

-- ID 2530: Business Structures (17 words)
-- ORIGINAL STEM: Under corporate governance principles and state corporation law, which of the following is true regarding corporate officers?
UPDATE questions SET
  stem = $EXPL$The board of directors of Waverly Corp recently appointed a new CEO and CFO. A shareholder asks a CPA about the legal authority and accountability of these officers. Under corporate governance principles and state corporation law, which of the following is true regarding corporate officers?$EXPL$
WHERE id = 2530;

-- ID 11239: Business Structures (18 words)
-- ORIGINAL STEM: What filing may a sole proprietor need when operating under a name other than the owner's legal name?
UPDATE questions SET
  stem = $EXPL$Janet Cho launches a freelance graphic design business and plans to market her services under the name "Bright Pixel Design" rather than her own name. What filing may Janet need to make?$EXPL$
WHERE id = 11239;

-- ============================================================
-- C CORPORATIONS (2 questions)
-- ============================================================

-- ID 232: C Corporations (19 words)
-- ORIGINAL STEM: Which of the following is a requirement for a corporation to be classified as a personal holding company (PHC)?
UPDATE questions SET
  stem = $EXPL$Crestview Inc. is a closely held C corporation owned by three shareholders. The IRS is examining whether Crestview qualifies as a personal holding company subject to the 20% PHC penalty tax. Which of the following is a requirement for PHC classification?$EXPL$
WHERE id = 232;

-- ID 11096: C Corporations (19 words)
-- ORIGINAL STEM: How many years may a C corporation carry forward excess charitable contributions that exceed the 10% taxable income limitation?
UPDATE questions SET
  stem = $EXPL$Atlas Manufacturing, a C corporation, made $500,000 in charitable contributions during 2026, but its 10% taxable income limitation only permits a current deduction of $320,000. How many years may Atlas carry forward the $180,000 excess?$EXPL$
WHERE id = 11096;

-- ============================================================
-- CIRCULAR 230 (5 questions)
-- ============================================================

-- ID 2381: Circular 230 (16 words)
-- ORIGINAL STEM: Which of the following best practices is recommended under Circular 230 Section 10.33 for all practitioners?
UPDATE questions SET
  stem = $EXPL$Chen, a newly licensed CPA, is reviewing the best practices guidance in Treasury Circular 230 before taking on her first tax advisory engagement. Which of the following best practices is recommended under Section 10.33 for all practitioners?$EXPL$
WHERE id = 2381;

-- ID 2395: Circular 230 (17 words)
-- ORIGINAL STEM: Which individual has limited representation rights before the IRS without being a CPA, attorney, or enrolled agent?
UPDATE questions SET
  stem = $EXPL$During an IRS examination, a taxpayer asks who besides a CPA, attorney, or enrolled agent may represent them. Which individual has limited representation rights before the IRS?$EXPL$
WHERE id = 2395;

-- ID 2400: Circular 230 (18 words)
-- ORIGINAL STEM: Under Treasury Department Circular 230, which of the following best describes the "censure" disciplinary sanction imposed on practitioners?
UPDATE questions SET
  stem = $EXPL$The IRS Office of Professional Responsibility concludes that CPA Martinez violated due diligence standards but determines the infraction does not warrant suspension. OPR instead issues a censure. Under Circular 230, which of the following best describes this sanction?$EXPL$
WHERE id = 2400;

-- ID 2389: Circular 230 (19 words)
-- ORIGINAL STEM: Which of the following actions by a practitioner would most likely result in disbarment from practice before the IRS?
UPDATE questions SET
  stem = $EXPL$The Office of Professional Responsibility is reviewing the conduct of several practitioners for potential disciplinary action. Which of the following actions by a practitioner would most likely result in disbarment from practice before the IRS?$EXPL$
WHERE id = 2389;

-- ID 2386: Circular 230 (20 words)
-- ORIGINAL STEM: A CPA is soliciting new tax clients through direct mail advertising. Under Circular 230, which statement about solicitation is correct?
UPDATE questions SET
  stem = $EXPL$Torres, CPA, mails promotional brochures to local businesses offering discounted tax preparation services. A colleague warns Torres that Circular 230 restricts certain solicitation methods. Under Circular 230, which statement about solicitation is correct?$EXPL$
WHERE id = 2386;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (2 questions)
-- ============================================================

-- ID 11250: Debtor-Creditor Relationships (17 words)
-- ORIGINAL STEM: How many creditors must join an involuntary bankruptcy petition when the debtor has 12 or more creditors?
UPDATE questions SET
  stem = $EXPL$Granite Construction owes money to 18 separate creditors and has failed to pay debts as they come due. Several creditors are considering filing an involuntary bankruptcy petition. How many creditors must join the petition when the debtor has 12 or more creditors?$EXPL$
WHERE id = 11250;

-- ID 11259: Debtor-Creditor Relationships (17 words)
-- ORIGINAL STEM: Under UCC Article 9, which type of collateral may be perfected by the secured party obtaining control?
UPDATE questions SET
  stem = $EXPL$First National Bank extends a $250,000 loan to Dawson Enterprises and wants to perfect its security interest without filing a UCC-1 financing statement. Under UCC Article 9, which type of collateral may be perfected by the secured party obtaining control?$EXPL$
WHERE id = 11259;

-- ============================================================
-- ESTATE AND GIFT TAX (2 questions)
-- ============================================================

-- ID 5564: Estate and Gift Tax (17 words)
-- ORIGINAL STEM: Which type of gift does not qualify for the annual gift tax exclusion under IRC Section 2503(b)?
UPDATE questions SET
  stem = $EXPL$Eleanor establishes an irrevocable trust for her grandchildren and funds it with $200,000. The trust terms restrict any distributions until the youngest grandchild turns 25. Which type of gift does not qualify for the annual gift tax exclusion under Section 2503(b)?$EXPL$
WHERE id = 5564;

-- ID 5141: Estate and Gift Tax (18 words)
-- ORIGINAL STEM: Under IRC Section 2058, what is the estate tax treatment of state death taxes paid by an estate?
UPDATE questions SET
  stem = $EXPL$The executor of the Whitfield estate pays $340,000 in state inheritance tax to Pennsylvania. The estate''s CPA is preparing the federal estate tax return and evaluating allowable deductions. Under IRC Section 2058, what is the estate tax treatment of state death taxes paid?$EXPL$
WHERE id = 5141;

-- ============================================================
-- FEDERAL TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 12720: Federal Tax Procedures (14 words)
-- ORIGINAL STEM: At what minimum expected tax liability must an individual begin making estimated tax payments?
UPDATE questions SET
  stem = $EXPL$Nguyen, a self-employed consultant, expects to owe federal income tax after subtracting withholding and credits for 2026. Her CPA advises that she may need to make quarterly estimated payments. At what minimum expected tax liability must an individual begin making estimated tax payments?$EXPL$
WHERE id = 12720;

-- ID 1161: Federal Tax Procedures (16 words)
-- ORIGINAL STEM: Which court allows a taxpayer to challenge a tax deficiency without first paying the disputed amount?
UPDATE questions SET
  stem = $EXPL$After receiving a statutory notice of deficiency for $42,000, Patterson wants to contest the assessment but lacks the funds to pay first. Which court allows a taxpayer to challenge a tax deficiency without first paying the disputed amount?$EXPL$
WHERE id = 1161;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (2 questions)
-- ============================================================

-- ID 11307: Government Regulation of Business (19 words)
-- ORIGINAL STEM: Under the Securities Act of 1933, which of the following is included in the statutory definition of a 'security'?
UPDATE questions SET
  stem = $EXPL$Pinnacle Ventures is raising capital by offering ownership interests to investors through a new limited partnership. The company''s counsel evaluates whether the offering must be registered. Under the Securities Act of 1933, which of the following is included in the statutory definition of a "security"?$EXPL$
WHERE id = 11307;

-- ID 4790: Government Regulation of Business (20 words)
-- ORIGINAL STEM: Under the Sarbanes-Oxley Act (SOX), which of the following is a responsibility of the Public Company Accounting Oversight Board (PCAOB)?
UPDATE questions SET
  stem = $EXPL$A newly formed audit firm plans to audit public companies and must register with the PCAOB. The firm''s managing partner reviews SOX requirements to understand the board''s authority. Under SOX, which of the following is a responsibility of the PCAOB?$EXPL$
WHERE id = 4790;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (2 questions)
-- ============================================================

-- ID 2678: Individual Taxation: Credits (19 words)
-- ORIGINAL STEM: Under H.R. 1 provisions for 2026, what is the child tax credit amount per qualifying child under age 17?
UPDATE questions SET
  stem = $EXPL$The Delgado family files jointly for 2026 and has two children, ages 8 and 14. Their CPA is calculating the family''s available child tax credit. Under H.R. 1 provisions for 2026, what is the credit amount per qualifying child under age 17?$EXPL$
WHERE id = 2678;

-- ID 2685: Individual Taxation: Credits (19 words)
-- ORIGINAL STEM: The American Opportunity Tax Credit (AOTC) has a maximum credit of $2,500 per eligible student. What portion is refundable?
UPDATE questions SET
  stem = $EXPL$Kim, a single filer, claims the AOTC for her daughter''s first year of college tuition. After applying nonrefundable credits, Kim''s tax liability reaches zero with unused AOTC remaining. The AOTC has a maximum credit of $2,500 per eligible student. What portion is refundable?$EXPL$
WHERE id = 2685;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (2 questions)
-- ============================================================

-- ID 2714: Individual Taxation: Credits/AMT (18 words)
-- ORIGINAL STEM: When computing the AMT, which of the following itemized deductions is NOT added back as a preference item?
UPDATE questions SET
  stem = $EXPL$Brewer, a single taxpayer, itemizes deductions including state income taxes, home mortgage interest, and charitable contributions. Her CPA is calculating her AMT by reviewing which deductions require add-back. When computing the AMT, which of the following itemized deductions is NOT added back?$EXPL$
WHERE id = 2714;

-- ID 2717: Individual Taxation: Credits/AMT (18 words)
-- ORIGINAL STEM: Linda and Robert (MFJ) have MAGI of $300,000, including $120,000 of net investment income. What is their NIIT?
UPDATE questions SET
  stem = $EXPL$Linda and Robert file jointly for 2026 with MAGI of $300,000. Their income includes $120,000 of net investment income from dividends, capital gains, and rental income. The MFJ threshold for the Net Investment Income Tax is $250,000. What is their NIIT?$EXPL$
WHERE id = 2717;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (2 questions)
-- ============================================================

-- ID 11001: Individual Taxation: Deductions (17 words)
-- ORIGINAL STEM: What is the maximum carryforward period for unused charitable contributions that exceed the applicable AGI percentage limitations?
UPDATE questions SET
  stem = $EXPL$Franklin donates $200,000 in cash to a qualified public charity in 2026, but his 60% AGI limitation caps his current-year deduction at $150,000. What is the maximum carryforward period for the $50,000 excess contribution?$EXPL$
WHERE id = 11001;

-- ID 11009: Individual Taxation: Deductions (17 words)
-- ORIGINAL STEM: The mnemonic ACID helps taxpayers remember major above-the-line deductions (adjustments to gross income). What does ACID represent?
UPDATE questions SET
  stem = $EXPL$A CPA candidate is reviewing above-the-line deductions that reduce gross income to arrive at AGI. A study guide uses the mnemonic "ACID" to categorize these adjustments. What does ACID represent?$EXPL$
WHERE id = 11009;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (2 questions)
-- ============================================================

-- ID 2729: Individual Taxation: Filing/Credits (19 words)
-- ORIGINAL STEM: For 2026, what is the maximum gross income a qualifying relative can have to be claimed as a dependent?
UPDATE questions SET
  stem = $EXPL$Dennis supports his elderly mother, who lives in an assisted-care facility and receives a small pension. Dennis wants to claim her as a qualifying relative on his 2026 return. What is the maximum gross income she can have to qualify as his dependent?$EXPL$
WHERE id = 2729;

-- ID 2732: Individual Taxation: Filing/Credits (19 words)
-- ORIGINAL STEM: The estimated tax safe harbor for individuals with prior-year AGI of $150,000 or less requires payments of at least:
UPDATE questions SET
  stem = $EXPL$Sanders, a self-employed consultant, had AGI of $130,000 in 2025 and expects higher income in 2026. His CPA advises him on the estimated tax safe harbor to avoid underpayment penalties. For individuals with prior-year AGI of $150,000 or less, the safe harbor requires payments of at least:$EXPL$
WHERE id = 2732;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (2 questions)
-- ============================================================

-- ID 2635: Individual Taxation: Income (18 words)
-- ORIGINAL STEM: Carlos receives $15,000 in unemployment compensation benefits in 2026. How is this treated for federal income tax purposes?
UPDATE questions SET
  stem = $EXPL$Carlos loses his job in March 2026 and collects $15,000 in state unemployment compensation benefits over the next several months. When preparing his federal return, how is this unemployment compensation treated for income tax purposes?$EXPL$
WHERE id = 2635;

-- ID 11062: Individual Taxation: Income (18 words)
-- ORIGINAL STEM: What is the tax treatment of health insurance premiums paid by an employer on behalf of an employee?
UPDATE questions SET
  stem = $EXPL$Lakeshore Technologies pays $9,600 annually for each employee''s health insurance premiums under a group plan. An employee asks how these employer-paid premiums are treated on their federal income tax return. What is the tax treatment?$EXPL$
WHERE id = 11062;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 2869: Legal Duties and Responsibilities (19 words)
-- ORIGINAL STEM: Under Section 6694(b), what is the penalty for a tax return preparer who engages in willful or reckless conduct?
UPDATE questions SET
  stem = $EXPL$An IRS examination reveals that CPA Wallace intentionally disregarded regulations when preparing a client''s return, resulting in a substantial understatement. Under Section 6694(b), what is the penalty for a tax return preparer who engages in willful or reckless conduct?$EXPL$
WHERE id = 2869;

-- ID 2871: Legal Duties and Responsibilities (19 words)
-- ORIGINAL STEM: Which of the following defenses is NOT available to a CPA in a negligence lawsuit brought by a client?
UPDATE questions SET
  stem = $EXPL$A client sues CPA Owens for negligence, alleging that errors in the audit of financial statements caused the client financial loss. Owens consults legal counsel about available defenses. Which of the following defenses is NOT available to a CPA in a negligence lawsuit brought by a client?$EXPL$
WHERE id = 2871;

-- ============================================================
-- PARTNERSHIPS (2 questions)
-- ============================================================

-- ID 10752: Partnerships (17 words)
-- ORIGINAL STEM: What type of income does a partner recognize when receiving guaranteed payments for the use of capital?
UPDATE questions SET
  stem = $EXPL$The LMN Partnership agreement provides that Partner Lee receives a $40,000 annual guaranteed payment for the use of capital she contributed. When Lee reports this amount on her individual return, what type of income does she recognize?$EXPL$
WHERE id = 10752;

-- ID 11107: Partnerships (18 words)
-- ORIGINAL STEM: Under IRC Section 706(a), in which tax year does a partner report their distributive share of partnership income?
UPDATE questions SET
  stem = $EXPL$The Aspen Partnership has a fiscal year ending January 31, 2027. Partner Davis, a calendar-year taxpayer, receives his Schedule K-1 in February. Under IRC Section 706(a), in which tax year does Davis report his distributive share of partnership income?$EXPL$
WHERE id = 11107;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (2 questions)
-- ============================================================

-- ID 253: Professional Ethics in Tax (17 words)
-- ORIGINAL STEM: Under SSTS No. 6, what is a CPA's responsibility upon discovering an error in a prior-year return?
UPDATE questions SET
  stem = $EXPL$While preparing the 2026 return for a long-standing client, CPA Reeves discovers that a $28,000 deduction on the client''s 2024 return was claimed in error. Under SSTS No. 6, what is Reeves''s responsibility upon discovering this error?$EXPL$
WHERE id = 253;

-- ID 2416: Professional Ethics in Tax (18 words)
-- ORIGINAL STEM: Under the AICPA Code of Professional Conduct, a CPA performing tax services must maintain which of the following?
UPDATE questions SET
  stem = $EXPL$Brooks, CPA, prepares individual and business tax returns for a portfolio of 60 clients. A peer reviewer evaluates Brooks''s compliance with the AICPA Code of Professional Conduct. A CPA performing tax services must maintain which of the following?$EXPL$
WHERE id = 2416;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (2 questions)
-- ============================================================

-- ID 2546: Property Transactions: Basis (18 words)
-- ORIGINAL STEM: Under Section 165, what is the basis for determining loss on property converted from personal to business use?
UPDATE questions SET
  stem = $EXPL$In 2024, Patel purchased a home for $400,000. In 2026, when the fair market value has declined to $340,000, Patel converts it to a rental property. Under Section 165, what is the basis for determining a loss if Patel later sells the property?$EXPL$
WHERE id = 2546;

-- ID 2547: Property Transactions: Basis (18 words)
-- ORIGINAL STEM: Under Section 1015, what is the basis for determining gain on property converted from personal to business use?
UPDATE questions SET
  stem = $EXPL$Wagner purchased a condominium for $280,000 and used it as a personal residence. In 2026, Wagner converts the condo to a rental unit when its FMV is $260,000. Under Section 1015, what is the basis for determining gain on this converted property?$EXPL$
WHERE id = 2547;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (2 questions)
-- ============================================================

-- ID 2568: Property Transactions: Gains/Losses (14 words)
-- ORIGINAL STEM: Under Section 1245, how is gain on the sale of depreciable personal property treated?
UPDATE questions SET
  stem = $EXPL$Meridian Logistics sells a delivery truck for $38,000. The truck was purchased for $55,000, and $22,000 of MACRS depreciation has been claimed, leaving an adjusted basis of $33,000. Under Section 1245, how is the $5,000 gain treated?$EXPL$
WHERE id = 2568;

-- ID 2580: Property Transactions: Gains/Losses (14 words)
-- ORIGINAL STEM: Which of the following correctly describes the netting process for capital gains and losses?
UPDATE questions SET
  stem = $EXPL$For 2026, Hoffman reports short-term capital losses of $8,000 and long-term capital gains of $12,000 from various stock transactions. Hoffman''s CPA must apply the netting rules before computing the tax. Which of the following correctly describes the netting process for capital gains and losses?$EXPL$
WHERE id = 2580;

-- ============================================================
-- S CORPORATIONS (2 questions)
-- ============================================================

-- ID 11137: S Corporations (16 words)
-- ORIGINAL STEM: What is the effect of an additional cash contribution by a shareholder to an S corporation?
UPDATE questions SET
  stem = $EXPL$Norris, the sole shareholder of Birch Creek Inc. (an S corporation), contributes an additional $50,000 in cash to the company in September 2026 to fund expansion. What is the effect of this contribution on Norris''s shareholder basis?$EXPL$
WHERE id = 11137;

-- ID 11154: S Corporations (16 words)
-- ORIGINAL STEM: When an S corporation election terminates mid-year, what returns must the corporation file for that year?
UPDATE questions SET
  stem = $EXPL$On August 1, 2026, Vanguard Corp''s S election is involuntarily terminated when an ineligible shareholder acquires stock. The corporation must now address its filing obligations for the year. When an S corporation election terminates mid-year, what returns must the corporation file?$EXPL$
WHERE id = 11154;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 2436: Tax Procedures (17 words)
-- ORIGINAL STEM: A taxpayer's return contains an understatement due to negligence. The accuracy-related penalty under IRC Section 6662 is:
UPDATE questions SET
  stem = $EXPL$An IRS audit reveals that Doyle failed to substantiate several deductions on his 2025 return, resulting in a $14,000 understatement attributed to negligence. The accuracy-related penalty under IRC Section 6662 is:$EXPL$
WHERE id = 2436;

-- ID 2438: Tax Procedures (17 words)
-- ORIGINAL STEM: A taxpayer receives a 30-day letter from the IRS proposing changes to their return. The taxpayer may:
UPDATE questions SET
  stem = $EXPL$After an office audit, Quinn receives a 30-day letter from the IRS proposing additional tax of $9,500 based on disallowed business expenses. Quinn disagrees with the adjustments. The taxpayer may:$EXPL$
WHERE id = 2438;

-- ============================================================
-- TAX-EXEMPT ORGANIZATIONS (2 questions)
-- ============================================================

-- ID 1271: Tax-Exempt Organizations (18 words)
-- ORIGINAL STEM: Under Section 6033, what happens if a tax-exempt organization fails to file Form 990 for three consecutive years?
UPDATE questions SET
  stem = $EXPL$Sunrise Community Foundation, a 501(c)(3) organization, has not filed its annual Form 990 since 2023. The foundation''s new board treasurer discovers the lapse in early 2027. Under Section 6033, what happens if a tax-exempt organization fails to file Form 990 for three consecutive years?$EXPL$
WHERE id = 1271;

-- ID 9021: Tax-Exempt Organizations (18 words)
-- ORIGINAL STEM: Which Form 990 schedule requires a tax-exempt organization to report its public charity classification and public support calculations?
UPDATE questions SET
  stem = $EXPL$Horizons Education Alliance, a 501(c)(3) public charity, is preparing its annual Form 990 filing. The executive director needs to document the organization''s public support percentage. Which Form 990 schedule requires reporting of public charity classification and public support calculations?$EXPL$
WHERE id = 9021;

COMMIT;
