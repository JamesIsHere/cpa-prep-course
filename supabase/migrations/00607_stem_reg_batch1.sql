-- Migration: Stem expansion — REG batch 1 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Estate and Gift Tax, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Partnerships, Professional Ethics in Tax, Property Transactions: Basis, Property Transactions: Gains/Losses, S Corporations, Tax Procedures, Tax-Exempt Organizations

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (2 questions)
-- ============================================================

-- ID 2504: Agency and Regulation (8 words)
-- ORIGINAL STEM: The duty of indemnification requires the principal to:
UPDATE questions SET
  stem = $EXPL$Rivera, a sales agent for Beacon Industries, incurred $4,200 in travel expenses while visiting clients on Beacon''s behalf during Q3 2025. Rivera submitted proper documentation and now seeks reimbursement. The duty of indemnification requires the principal to:$EXPL$
WHERE id = 2504;

-- ID 66: Agency and Regulation (12 words)
-- ORIGINAL STEM: In an agency relationship, which of the following best describes apparent authority?
UPDATE questions SET
  stem = $EXPL$Larson formerly served as purchasing manager for Crestwood Manufacturing and regularly signed supply contracts. Crestwood terminated Larson''s authority in January 2026 but never notified its long-time vendor, Hanover Supply. When Larson placed a new order with Hanover, which concept best describes Larson''s authority?$EXPL$
WHERE id = 66;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (2 questions)
-- ============================================================

-- ID 11325: Alternative Minimum Tax (11 words)
-- ORIGINAL STEM: Under the AMT system, what does IRC Section 57 specifically define?
UPDATE questions SET
  stem = $EXPL$Chen, a high-income taxpayer, holds a portfolio of private activity municipal bonds and has significant intangible drilling cost deductions. Her CPA is reviewing items that must be added back when computing alternative minimum taxable income. Under the AMT system, what does IRC Section 57 specifically define?$EXPL$
WHERE id = 11325;

-- ID 11331: Alternative Minimum Tax (12 words)
-- ORIGINAL STEM: How does the AMT exemption function in the alternative minimum tax calculation?
UPDATE questions SET
  stem = $EXPL$For 2025, Patel files as a single taxpayer with alternative minimum taxable income of $620,000. His tax advisor is computing the tentative minimum tax and must first determine the amount sheltered from the AMT rate. How does the AMT exemption function in this calculation?$EXPL$
WHERE id = 11331;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (2 questions)
-- ============================================================

-- ID 11206: Business Law: Contracts (4 words)
-- ORIGINAL STEM: What is a quasi-contract?
UPDATE questions SET
  stem = $EXPL$Dawson Plumbing mistakenly repaired a burst pipe at 412 Elm Street, believing it was the address of a paying customer. The actual homeowner, Nguyen, benefited from the repair but never agreed to pay. Dawson now seeks compensation. What legal theory would a court most likely apply?$EXPL$
WHERE id = 11206;

-- ID 2455: Business Law: Contracts (7 words)
-- ORIGINAL STEM: What is the doctrine of promissory estoppel?
UPDATE questions SET
  stem = $EXPL$Morrison promised her long-time employee, Blake, a $50,000 year-end bonus if he relocated to the Dallas office. Relying on this promise, Blake signed a new apartment lease and moved his family. Morrison later refused to pay the bonus. Blake seeks to enforce the promise despite the absence of a formal contract. What doctrine supports Blake''s claim?$EXPL$
WHERE id = 2455;

-- ============================================================
-- BUSINESS STRUCTURES (2 questions)
-- ============================================================

-- ID 11224: Business Structures (8 words)
-- ORIGINAL STEM: Which characteristic is unique to a sole proprietorship?
UPDATE questions SET
  stem = $EXPL$Garcia is evaluating whether to operate her new consulting practice as a sole proprietorship, an LLC, or an S corporation. She wants to understand the distinguishing features of each structure before filing any formation documents. Which characteristic is unique to a sole proprietorship?$EXPL$
WHERE id = 11224;

-- ID 508: Business Structures (9 words)
-- ORIGINAL STEM: Under Chapter 11 bankruptcy, what is the debtor-in-possession concept?
UPDATE questions SET
  stem = $EXPL$Waverly Retail Inc. filed a Chapter 11 bankruptcy petition in March 2026 and continues to operate its 12 stores while developing a reorganization plan. No trustee has been appointed. Under Chapter 11, what is the debtor-in-possession concept that allows Waverly to maintain control?$EXPL$
WHERE id = 508;

-- ============================================================
-- C CORPORATIONS (2 questions)
-- ============================================================

-- ID 10815: C Corporations (8 words)
-- ORIGINAL STEM: What does Schedule M-2 of Form 1120 report?
UPDATE questions SET
  stem = $EXPL$Pinnacle Corp''s tax manager is preparing the 2025 Form 1120 and must reconcile the corporation''s retained earnings account with its tax-basis unappropriated earnings. What does Schedule M-2 of Form 1120 report?$EXPL$
WHERE id = 10815;

-- ID 574: C Corporations (10 words)
-- ORIGINAL STEM: Under Section 512, what is unrelated business taxable income (UBTI)?
UPDATE questions SET
  stem = $EXPL$Lakewood Community Foundation, a Section 501(c)(3) organization, operates a commercial parking garage that generated $180,000 in net revenue during 2025. The foundation''s treasurer is determining whether this income is subject to tax. Under Section 512, what is unrelated business taxable income (UBTI)?$EXPL$
WHERE id = 574;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 492: Circular 230 (8 words)
-- ORIGINAL STEM: What is a 30-day letter from the IRS?
UPDATE questions SET
  stem = $EXPL$After completing a field audit of Donovan''s Schedule C, the IRS revenue agent proposed $18,500 in additional tax. Donovan received a preliminary notice allowing him to respond or request an Appeals conference. What is this type of notice commonly called?$EXPL$
WHERE id = 492;

-- ID 2378: Circular 230 (8 words)
-- ORIGINAL STEM: Under Circular 230, what is a covered opinion?
UPDATE questions SET
  stem = $EXPL$Martinez, CPA, has been asked by a corporate client to provide formal written advice regarding a complex tax shelter arrangement involving foreign entities. Martinez is reviewing the Circular 230 requirements governing such written advice. Under Circular 230, what is a covered opinion?$EXPL$
WHERE id = 2378;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (2 questions)
-- ============================================================

-- ID 11258: Debtor-Creditor Relationships (9 words)
-- ORIGINAL STEM: In a Chapter 11 bankruptcy, what is a debtor-in-possession?
UPDATE questions SET
  stem = $EXPL$Grandview Hotels filed for Chapter 11 bankruptcy protection in February 2026. The court has not appointed a separate trustee, and Grandview''s existing management continues to run daily operations. In a Chapter 11 proceeding, what is the debtor-in-possession?$EXPL$
WHERE id = 11258;

-- ID 1180: Debtor-Creditor Relationships (10 words)
-- ORIGINAL STEM: Under UCC Article 9, how is a security interest perfected?
UPDATE questions SET
  stem = $EXPL$First Capital Bank lent $200,000 to Redstone Fabrication, secured by Redstone''s equipment. The bank''s attorney filed a UCC-1 financing statement with the Secretary of State to establish priority over other creditors. Under UCC Article 9, how is a security interest perfected?$EXPL$
WHERE id = 1180;

-- ============================================================
-- ESTATE AND GIFT TAX (2 questions)
-- ============================================================

-- ID 2757: Estate and Gift Tax (9 words)
-- ORIGINAL STEM: Under Section 2503, how is the taxable gift calculated?
UPDATE questions SET
  stem = $EXPL$In December 2025, Wallace transferred $250,000 in securities to his daughter. Wallace''s CPA is computing the taxable gift after considering applicable exclusions and deductions. Under Section 2503, how is the taxable gift calculated?$EXPL$
WHERE id = 2757;

-- ID 565: Estate and Gift Tax (10 words)
-- ORIGINAL STEM: What is the purpose of the generation-skipping transfer tax (GSTT)?
UPDATE questions SET
  stem = $EXPL$Henderson established a $5 million irrevocable trust in 2025 naming her grandchildren as beneficiaries, bypassing her adult children entirely. Her estate planner warned that an additional federal transfer tax may apply. What is the purpose of the generation-skipping transfer tax (GSTT)?$EXPL$
WHERE id = 565;

-- ============================================================
-- FEDERAL TAX PROCEDURES (1 questions)
-- ============================================================

-- ID 12697: Federal Tax Procedures (6 words)
-- ORIGINAL STEM: What is a federal tax lien?
UPDATE questions SET
  stem = $EXPL$Porter owes $85,000 in assessed but unpaid federal income taxes for 2023. The IRS sent a demand for payment, and Porter did not respond. The IRS is now taking steps to protect the government''s claim against Porter''s assets. What is a federal tax lien?$EXPL$
WHERE id = 12697;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (2 questions)
-- ============================================================

-- ID 11281: Government Regulation of Business (8 words)
-- ORIGINAL STEM: The Robinson-Patman Act primarily addresses which anticompetitive practice?
UPDATE questions SET
  stem = $EXPL$Summit Wholesale sells identical cleaning products to two competing retailers. One retailer receives a 30% volume discount while the other pays list price, though both purchase similar quantities. A federal antitrust complaint has been filed. The Robinson-Patman Act primarily addresses which anticompetitive practice?$EXPL$
WHERE id = 11281;

-- ID 4799: Government Regulation of Business (12 words)
-- ORIGINAL STEM: Under the Occupational Safety and Health Act (OSHA), employers are required to:
UPDATE questions SET
  stem = $EXPL$Triton Manufacturing operates a metal fabrication plant with 85 employees. A recent workplace inspection cited several safety deficiencies. Under the Occupational Safety and Health Act (OSHA), employers are required to:$EXPL$
WHERE id = 4799;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (5 questions)
-- ============================================================

-- ID 553: Individual Taxation: Credits (7 words)
-- ORIGINAL STEM: What is the American Opportunity Tax Credit?
UPDATE questions SET
  stem = $EXPL$The Harrisons paid $8,400 in tuition and required course materials for their daughter''s sophomore year at State University in 2025. She is enrolled full-time and has no felony drug convictions. The Harrisons'' AGI is $145,000 (MFJ). Which education credit best applies to their situation, and what are its key features?$EXPL$
WHERE id = 553;

-- ID 555: Individual Taxation: Credits (8 words)
-- ORIGINAL STEM: Under Section 56, what are AMT adjustment items?
UPDATE questions SET
  stem = $EXPL$Kim, a single taxpayer, claimed a $9,800 SALT deduction and exercised incentive stock options with a $45,000 bargain element in 2025. Her CPA is computing her alternative minimum taxable income. Under Section 56, what are AMT adjustment items?$EXPL$
WHERE id = 555;

-- ID 561: Individual Taxation: Credits (8 words)
-- ORIGINAL STEM: Under Section 1(g), what is the kiddie tax?
UPDATE questions SET
  stem = $EXPL$Marcus, age 16, received $14,000 in dividend income from a custodial brokerage account funded by his parents. His only other income is $3,000 from a part-time job. His parents are in the 35% tax bracket. Under Section 1(g), what is the kiddie tax?$EXPL$
WHERE id = 561;

-- ID 10949: Individual Taxation: Credits (8 words)
-- ORIGINAL STEM: What are AMT preference items under Section 57?
UPDATE questions SET
  stem = $EXPL$Thornton holds $300,000 in private activity municipal bonds and has excess intangible drilling cost deductions from an oil and gas partnership. Her CPA is identifying items that always increase alternative minimum taxable income. What are AMT preference items under Section 57?$EXPL$
WHERE id = 10949;

-- ID 559: Individual Taxation: Credits (9 words)
-- ORIGINAL STEM: Under Section 55, what is the AMT exemption amount?
UPDATE questions SET
  stem = $EXPL$Feldman, filing as single for 2025, has computed her alternative minimum taxable income at $450,000. Before applying the 26% and 28% AMT rates, she must determine the threshold amount sheltered from the tax. Under Section 55, what is the AMT exemption amount?$EXPL$
WHERE id = 559;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (2 questions)
-- ============================================================

-- ID 81: Individual Taxation: Credits/AMT (9 words)
-- ORIGINAL STEM: Under Section 25A, what is the Lifetime Learning Credit?
UPDATE questions SET
  stem = $EXPL$Ortiz, a marketing professional, enrolled in two graduate-level business courses at Metro University in 2025, paying $7,500 in tuition. She has already completed her undergraduate degree and is not pursuing a second one. Under Section 25A, which education credit is available to Ortiz, and what are its features?$EXPL$
WHERE id = 81;

-- ID 2705: Individual Taxation: Credits/AMT (9 words)
-- ORIGINAL STEM: Which of the following is an AMT preference item?
UPDATE questions SET
  stem = $EXPL$Brennan, a high-income single taxpayer, is reviewing her 2025 tax return with her CPA. She has income from private activity bonds, excess percentage depletion from a mineral interest, and state income tax deductions. Which of the following is classified as an AMT preference item?$EXPL$
WHERE id = 2705;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (2 questions)
-- ============================================================

-- ID 2650: Individual Taxation: Deductions (8 words)
-- ORIGINAL STEM: Under Section 63, what is the standard deduction?
UPDATE questions SET
  stem = $EXPL$Cooper, a single taxpayer with no dependents, had $62,000 in wages and $1,500 in charitable contributions in 2025. She is deciding whether to itemize or take the flat amount allowed by law. Under Section 63, what is the standard deduction?$EXPL$
WHERE id = 2650;

-- ID 2655: Individual Taxation: Deductions (10 words)
-- ORIGINAL STEM: Under Section 164(f), what deduction is available for self-employment tax?
UPDATE questions SET
  stem = $EXPL$Reeves earned $95,000 of net self-employment income from her consulting practice in 2025. She paid $13,432 in self-employment tax and wants to determine how much she can deduct on her Form 1040 to arrive at AGI. Under Section 164(f), what deduction is available for self-employment tax?$EXPL$
WHERE id = 2655;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (3 questions)
-- ============================================================

-- ID 1261: Individual Taxation: Filing/Credits (9 words)
-- ORIGINAL STEM: Under Section 152, what is a multiple support agreement?
UPDATE questions SET
  stem = $EXPL$Four siblings each contribute toward the support of their elderly mother, who has minimal income. No single sibling provides more than 50% of her support, but together they cover all of her living expenses. Under Section 152, what is a multiple support agreement?$EXPL$
WHERE id = 1261;

-- ID 2724: Individual Taxation: Filing/Credits (10 words)
-- ORIGINAL STEM: What are the requirements to file as head of household?
UPDATE questions SET
  stem = $EXPL$Sanders is unmarried and maintains a home where she and her 10-year-old son lived for all of 2025. She paid all household costs from her $72,000 salary. Sanders wants to determine whether she qualifies for a filing status with wider tax brackets than Single. What are the requirements to file as head of household?$EXPL$
WHERE id = 2724;

-- ID 2725: Individual Taxation: Filing/Credits (11 words)
-- ORIGINAL STEM: Under Section 2, what is the qualifying surviving spouse filing status?
UPDATE questions SET
  stem = $EXPL$Douglas''s wife passed away in November 2024. He has not remarried and maintains a home for their 8-year-old dependent daughter throughout 2025. Douglas filed a joint return with his deceased wife for 2024. Under Section 2, what is the qualifying surviving spouse filing status?$EXPL$
WHERE id = 2725;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (3 questions)
-- ============================================================

-- ID 2618: Individual Taxation: Income (10 words)
-- ORIGINAL STEM: Which types of interest income are excluded from gross income?
UPDATE questions SET
  stem = $EXPL$Palmer received $3,200 in interest from a municipal bond fund, $1,800 from a corporate bond, and $600 from a U.S. Treasury note during 2025. She is determining which amounts to report on her federal return. Which types of interest income are excluded from gross income?$EXPL$
WHERE id = 2618;

-- ID 11054: Individual Taxation: Income (10 words)
-- ORIGINAL STEM: What is the formula for calculating adjusted gross income (AGI)?
UPDATE questions SET
  stem = $EXPL$Hayes earned $88,000 in wages, received $2,000 in bank interest, contributed $6,500 to a deductible IRA, and paid $1,800 in student loan interest during 2025. His CPA is walking through the individual income tax formula. What is the formula for calculating adjusted gross income (AGI)?$EXPL$
WHERE id = 11054;

-- ID 2622: Individual Taxation: Income (11 words)
-- ORIGINAL STEM: At what income level do Social Security benefits become partially taxable?
UPDATE questions SET
  stem = $EXPL$Wagner, a single retiree, received $22,000 in Social Security benefits, $19,000 in pension income, and $3,500 in tax-exempt bond interest during 2025. She is calculating her provisional income to determine the taxability of her benefits. At what income level do Social Security benefits become partially taxable?$EXPL$
WHERE id = 2622;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 1172: Legal Duties and Responsibilities (9 words)
-- ORIGINAL STEM: Under Section 6695, which preparer actions trigger administrative penalties?
UPDATE questions SET
  stem = $EXPL$Grant, CPA, prepared 140 individual returns in 2025. An IRS review found that he failed to include his PTIN on 12 returns and did not furnish copies to three clients. Under Section 6695, which preparer actions trigger administrative penalties?$EXPL$
WHERE id = 1172;

-- ID 1167: Legal Duties and Responsibilities (12 words)
-- ORIGINAL STEM: Under Section 6694, what standard must a preparer meet to avoid penalty?
UPDATE questions SET
  stem = $EXPL$Pearson, CPA, took an aggressive deduction position on a client''s return without disclosing it. The position has roughly a 25% chance of being sustained on the merits. The IRS later disallowed the deduction. Under Section 6694, what standard must a preparer meet to avoid penalty for an undisclosed position?$EXPL$
WHERE id = 1167;

-- ============================================================
-- LIKE-KIND EXCHANGES (2 questions)
-- ============================================================

-- ID 2598: Like-Kind Exchanges (10 words)
-- ORIGINAL STEM: In a Section 1031 exchange, how is boot received taxed?
UPDATE questions SET
  stem = $EXPL$Torres exchanged a rental warehouse (adjusted basis $180,000, FMV $310,000) for a smaller office building (FMV $270,000) plus $40,000 cash. The exchange qualifies under Section 1031. How is the $40,000 cash boot received taxed?$EXPL$
WHERE id = 2598;

-- ID 2600: Like-Kind Exchanges (10 words)
-- ORIGINAL STEM: In a Section 1031 exchange, how is mortgage relief treated?
UPDATE questions SET
  stem = $EXPL$Keller exchanged a rental property (adjusted basis $200,000, FMV $400,000, subject to a $120,000 mortgage) for another rental property (FMV $340,000, subject to a $60,000 mortgage). Both parties assumed each other''s debt. In a Section 1031 exchange, how is Keller''s net mortgage relief treated?$EXPL$
WHERE id = 2600;

-- ============================================================
-- PARTNERSHIPS (2 questions)
-- ============================================================

-- ID 590: Partnerships (9 words)
-- ORIGINAL STEM: What is the purpose of a Section 754 election?
UPDATE questions SET
  stem = $EXPL$Davis purchased a 25% interest in the ABCD Partnership for $300,000. The partnership''s total inside basis in its assets is $960,000, creating a disparity between Davis''s outside basis and her share of inside basis. What is the purpose of a Section 754 election?$EXPL$
WHERE id = 590;

-- ID 593: Partnerships (9 words)
-- ORIGINAL STEM: In what circumstances is a Section 754 election mandatory?
UPDATE questions SET
  stem = $EXPL$Griffin acquired a 30% interest in Lakeview Partners for $500,000. The partnership''s total asset basis is $2,200,000, meaning Griffin''s share of inside basis is $660,000. The partnership has not made a Section 754 election. In what circumstances is a Section 754 adjustment mandatory even without the election?$EXPL$
WHERE id = 593;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (1 questions)
-- ============================================================

-- ID 13016: Professional Ethics in Tax (10 words)
-- ORIGINAL STEM: Under Circular 230, which activity is generally prohibited for practitioners?
UPDATE questions SET
  stem = $EXPL$Franklin, an enrolled agent, is expanding her tax practice and considering various marketing strategies, including in-person solicitation at local business networking events. She reviews the Treasury Department''s rules governing practitioner conduct. Under Circular 230, which activity is generally prohibited for practitioners?$EXPL$
WHERE id = 13016;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (2 questions)
-- ============================================================

-- ID 519: Property Transactions: Basis (7 words)
-- ORIGINAL STEM: What limits the Section 179 expense deduction?
UPDATE questions SET
  stem = $EXPL$Ridgeline Construction placed $1,400,000 of qualifying equipment in service during 2025. The company''s net income from active trades or businesses was $900,000. The controller is evaluating the maximum first-year write-off available. What limits the Section 179 expense deduction?$EXPL$
WHERE id = 519;

-- ID 2539: Property Transactions: Basis (9 words)
-- ORIGINAL STEM: Under Section 1014, what basis does inherited property receive?
UPDATE questions SET
  stem = $EXPL$Thompson inherited 500 shares of stock from her grandmother, who originally purchased them for $12,000. On the date of death, the shares were worth $78,000. Thompson is determining her tax basis for computing gain if she sells. Under Section 1014, what basis does inherited property receive?$EXPL$
WHERE id = 2539;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (2 questions)
-- ============================================================

-- ID 528: Property Transactions: Gains/Losses (8 words)
-- ORIGINAL STEM: What is the Section 1231 five-year lookback rule?
UPDATE questions SET
  stem = $EXPL$In 2025, Barnett sold business equipment at a $40,000 net Section 1231 gain. However, in 2022 she had reported a $15,000 net Section 1231 loss that was deducted as an ordinary loss. Her CPA is determining the character of the 2025 gain. What is the Section 1231 five-year lookback rule?$EXPL$
WHERE id = 528;

-- ID 529: Property Transactions: Gains/Losses (8 words)
-- ORIGINAL STEM: How is the net investment income tax calculated?
UPDATE questions SET
  stem = $EXPL$Rhodes, a married-filing-jointly taxpayer, has modified AGI of $310,000, including $65,000 in long-term capital gains and $20,000 in rental income. His CPA is determining whether the 3.8% surtax applies. How is the net investment income tax calculated?$EXPL$
WHERE id = 529;

-- ============================================================
-- S CORPORATIONS (2 questions)
-- ============================================================

-- ID 10797: S Corporations (10 words)
-- ORIGINAL STEM: What IRS form is used to elect S corporation status?
UPDATE questions SET
  stem = $EXPL$Prism Technology Inc., a newly formed domestic C corporation with 12 individual shareholders and one class of stock, wants to elect pass-through taxation effective for its first tax year beginning January 1, 2026. What IRS form is used to elect S corporation status?$EXPL$
WHERE id = 10797;

-- ID 86: S Corporations (11 words)
-- ORIGINAL STEM: Under Section 1366, how are S corporation losses allocated to shareholders?
UPDATE questions SET
  stem = $EXPL$Crescent Design LLC elected S corporation status and has two shareholders: Avery (60%) and Blake (40%). The S corporation reported a $150,000 ordinary business loss for 2025. Under Section 1366, how are S corporation losses allocated to shareholders?$EXPL$
WHERE id = 86;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 2445: Tax Procedures (8 words)
-- ORIGINAL STEM: Interest on tax underpayments assessed by the IRS:
UPDATE questions SET
  stem = $EXPL$After an audit, the IRS assessed an additional $28,000 in tax against Whitfield for the 2023 tax year. Whitfield paid the deficiency 18 months after the original due date. Interest on tax underpayments assessed by the IRS:$EXPL$
WHERE id = 2445;

-- ID 2437: Tax Procedures (9 words)
-- ORIGINAL STEM: The civil fraud penalty under IRC Section 6663 is:
UPDATE questions SET
  stem = $EXPL$The IRS determined that Jennings intentionally understated income by $120,000 on his 2023 return, resulting in a $30,000 underpayment. The agency proved fraud by clear and convincing evidence. The civil fraud penalty under IRC Section 6663 is:$EXPL$
WHERE id = 2437;

-- ============================================================
-- TAX-EXEMPT ORGANIZATIONS (1 questions)
-- ============================================================

-- ID 2905: Tax-Exempt Organizations (9 words)
-- ORIGINAL STEM: What are the organizational requirements for Section 501(c)(3) status?
UPDATE questions SET
  stem = $EXPL$Bright Horizons Youth Alliance is drafting its articles of incorporation to apply for federal tax-exempt status as a charitable organization. The founding board wants to ensure the governing documents satisfy IRS requirements. What are the organizational requirements for Section 501(c)(3) status?$EXPL$
WHERE id = 2905;

COMMIT;
