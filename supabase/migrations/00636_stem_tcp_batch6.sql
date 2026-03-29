-- Migration: Stem expansion — TCP batch 6 (43 questions)
-- Date: 2026-03-29
-- Purpose: Expand 43 short stems with scenario context for TCP section
-- Affected topics: Advanced Basis Calculations, Capital Structure Tax Planning, Entity Choice and Planning, Entity Formation and Liquidation, Entity Formation and Restructuring, Entity Tax Compliance: NOLs and Consolidated Returns, Individual Tax Planning: Compensation, International Tax, Multi-Jurisdictional Tax Planning, Nontaxable Dispositions, Owner-Entity Transactions, Passive Activity and At-Risk Rules, Related Party Transactions, Retirement Plans and Education Savings, Trusts and Estates

BEGIN;

-- ============================================================
-- ADVANCED BASIS CALCULATIONS (4 questions)
-- ============================================================

-- ID 1001: Advanced Basis Calculations (16 words)
-- ORIGINAL STEM: Under Section 732, what basis does a partner take in property received in a liquidating distribution?
UPDATE questions SET
  stem = $EXPL$Eastgate Partners LP liquidates and distributes a commercial building to partner Dana Chen in complete termination of her interest. Dana''s outside basis in the partnership is $185,000. Under Section 732, what basis does Dana take in the property received in this liquidating distribution?$EXPL$
WHERE id = 1001;

-- ID 14514: Advanced Basis Calculations (18 words)
-- ORIGINAL STEM: Under IRC Section 1367, what happens when an S corporation's losses and deductions exceed a shareholder's stock basis?
UPDATE questions SET
  stem = $EXPL$Marco is a 40% shareholder in Ridgeview Construction Inc., a calendar-year S corporation. His stock basis at the start of the year is $25,000, and his pro rata share of losses and deductions totals $38,000. Under IRC Section 1367, what happens to the losses that exceed Marco''s stock basis?$EXPL$
WHERE id = 14514;

-- ID 4201: Advanced Basis Calculations (19 words)
-- ORIGINAL STEM: After reducing debt basis for losses in a prior year, how is an S corporation shareholder's debt basis restored?
UPDATE questions SET
  stem = $EXPL$Helen loaned $50,000 to her S corporation in 2024 and used all of the debt basis to deduct pass-through losses that year. In 2025 the corporation reports $30,000 of ordinary income allocated to her. How is Helen''s debt basis restored?$EXPL$
WHERE id = 4201;

-- ID 14502: Advanced Basis Calculations (20 words)
-- ORIGINAL STEM: Under IRC Section 722, what is a partner's initial basis in a partnership interest received in exchange for a contribution?
UPDATE questions SET
  stem = $EXPL$Nina contributes equipment with an adjusted basis of $45,000 and a fair market value of $72,000 to Birchwood Partners LLC in exchange for a 25% partnership interest. Under IRC Section 722, what is Nina''s initial basis in her partnership interest?$EXPL$
WHERE id = 14502;

-- ============================================================
-- CAPITAL STRUCTURE TAX PLANNING (3 questions)
-- ============================================================

-- ID 4320: Capital Structure Tax Planning (20 words)
-- ORIGINAL STEM: If the IRS successfully recharacterizes shareholder debt as equity, the interest payments previously deducted by the corporation are treated as:
UPDATE questions SET
  stem = $EXPL$Lakeview Holdings Corp. has been deducting $120,000 of annual interest on notes held by its two equal shareholders. After an audit, the IRS recharacterizes these notes as equity contributions. The interest payments previously deducted by the corporation are treated as:$EXPL$
WHERE id = 4320;

-- ID 4330: Capital Structure Tax Planning (20 words)
-- ORIGINAL STEM: Which of the following is NOT a factor in determining whether an instrument is debt or equity under Section 385?
UPDATE questions SET
  stem = $EXPL$Pinnacle Industries issues subordinated notes to its majority shareholder, and the IRS is evaluating whether the instruments should be reclassified as equity. Which of the following is NOT a factor courts consider in determining whether an instrument is debt or equity?$EXPL$
WHERE id = 4330;

-- ID 14690: Capital Structure Tax Planning (20 words)
-- ORIGINAL STEM: Which type of taxpayer is prohibited from using the Section 163(j) small business exception, regardless of its gross receipts level?
UPDATE questions SET
  stem = $EXPL$A CPA advisor reviews several clients to determine eligibility for the Section 163(j) small business exception. One client''s average annual gross receipts are under $30 million but it is still ineligible. Which type of taxpayer is prohibited from using the exception regardless of gross receipts?$EXPL$
WHERE id = 14690;

-- ============================================================
-- ENTITY CHOICE AND PLANNING (2 questions)
-- ============================================================

-- ID 4315: Entity Choice and Planning (19 words)
-- ORIGINAL STEM: An S corporation revokes its S election. How long must the corporation wait before making a new S election?
UPDATE questions SET
  stem = $EXPL$On March 1, 2025, the shareholders of Clearwater Services Inc. consent to revoke the company''s S corporation election, effective immediately. The officers later decide the S election was beneficial. How long must Clearwater wait before making a new S election?$EXPL$
WHERE id = 4315;

-- ID 4313: Entity Choice and Planning (20 words)
-- ORIGINAL STEM: An S corporation shareholder directly loans $40,000 to the corporation. This loan creates debt basis which allows the shareholder to:
UPDATE questions SET
  stem = $EXPL$Priya, a 30% shareholder in Falcon Tech Inc. (an S corporation), directly loans $40,000 to the company under a written promissory note bearing market-rate interest. This loan creates debt basis, which allows Priya to:$EXPL$
WHERE id = 4313;

-- ============================================================
-- ENTITY FORMATION AND LIQUIDATION (1 questions)
-- ============================================================

-- ID 13258: Entity Formation and Liquidation (19 words)
-- ORIGINAL STEM: In a Section 351 exchange, a transferor receives stock plus a short-term corporate note. The note is classified as:
UPDATE questions SET
  stem = $EXPL$Reeves transfers manufacturing equipment worth $300,000 to a newly formed corporation in a Section 351 exchange. In addition to 1,000 shares of common stock, Reeves receives a $50,000 two-year corporate note. The note is classified as:$EXPL$
WHERE id = 13258;

-- ============================================================
-- ENTITY FORMATION AND RESTRUCTURING (3 questions)
-- ============================================================

-- ID 5005: Entity Formation and Restructuring (18 words)
-- ORIGINAL STEM: In a qualifying reorganization, the acquiring corporation's basis in the assets received from the target corporation is generally:
UPDATE questions SET
  stem = $EXPL$Atlas Manufacturing acquires all of the assets of Beacon Corp. in a qualifying Type A statutory merger. Beacon''s assets have a combined adjusted basis of $2 million and a fair market value of $3.4 million. The acquiring corporation''s basis in the assets received from Beacon is generally:$EXPL$
WHERE id = 5005;

-- ID 14588: Entity Formation and Restructuring (18 words)
-- ORIGINAL STEM: What is a key difference between Section 351 corporate formations and Section 721 partnership formations regarding ownership requirements?
UPDATE questions SET
  stem = $EXPL$Two entrepreneurs are deciding whether to form a C corporation or a partnership. Their attorney explains that the nonrecognition rules differ in one important respect. What is a key difference between Section 351 corporate formations and Section 721 partnership formations regarding ownership requirements?$EXPL$
WHERE id = 14588;

-- ID 14586: Entity Formation and Restructuring (20 words)
-- ORIGINAL STEM: Under Section 336, in which situation does a liquidating corporation NOT recognize gain or loss on the distribution of property?
UPDATE questions SET
  stem = $EXPL$Granite Industries is preparing to liquidate and distribute appreciated real estate to its shareholders. The tax director is evaluating whether the corporation must recognize gain. Under Section 336, in which situation does a liquidating corporation NOT recognize gain or loss on the distribution of property?$EXPL$
WHERE id = 14586;

-- ============================================================
-- ENTITY TAX COMPLIANCE: NOLS AND CONSOLIDATED RETURNS (4 questions)
-- ============================================================

-- ID 964: Entity Tax Compliance: NOLs and Consolidated Returns (19 words)
-- ORIGINAL STEM: Section 269 allows the IRS to disallow tax benefits when a corporation is acquired and the principal purpose is:
UPDATE questions SET
  stem = $EXPL$Northstar Corp. acquires 100% of a loss corporation with $4 million in NOL carryforwards. The IRS challenges the acquisition under Section 269, which allows disallowance of tax benefits when the principal purpose of the acquisition is:$EXPL$
WHERE id = 964;

-- ID 4081: Entity Tax Compliance: NOLs and Consolidated Returns (20 words)
-- ORIGINAL STEM: When a subsidiary with an excess loss account departs a consolidated group, how is the excess loss account generally treated?
UPDATE questions SET
  stem = $EXPL$Horizon Group sells its 100%-owned subsidiary, Vantage Inc., to an outside buyer. Horizon''s investment basis in Vantage stock has been reduced to an excess loss account of $600,000 due to years of cumulative losses. How is the excess loss account generally treated upon departure?$EXPL$
WHERE id = 4081;

-- ID 13764: Entity Tax Compliance: NOLs and Consolidated Returns (20 words)
-- ORIGINAL STEM: Which type of entity is classified as an "includible corporation" eligible for membership in an affiliated group under Section 1504?
UPDATE questions SET
  stem = $EXPL$Continental Holdings is forming a consolidated group and evaluating which subsidiaries qualify for inclusion. Under Section 1504, which type of entity is classified as an "includible corporation" eligible for membership in an affiliated group?$EXPL$
WHERE id = 13764;

-- ID 14603: Entity Tax Compliance: NOLs and Consolidated Returns (20 words)
-- ORIGINAL STEM: For purposes of Section 382, how long is the recognition period for built-in gains and losses following an ownership change?
UPDATE questions SET
  stem = $EXPL$Sterling Corp. undergoes a Section 382 ownership change in June 2025 and holds assets with substantial built-in gains at that date. For purposes of Section 382, how long is the recognition period during which built-in gains and losses are subject to the annual limitation?$EXPL$
WHERE id = 14603;

-- ============================================================
-- INDIVIDUAL TAX PLANNING: COMPENSATION (4 questions)
-- ============================================================

-- ID 3929: Individual Tax Planning: Compensation (20 words)
-- ORIGINAL STEM: What is the penalty for failing to comply with the requirements of Section 409A for a nonqualified deferred compensation plan?
UPDATE questions SET
  stem = $EXPL$Orion Corp.''s nonqualified deferred compensation plan allows executives to accelerate distributions at will, violating Section 409A rules. The IRS discovers the defect during an audit. What is the penalty for failing to comply with Section 409A requirements?$EXPL$
WHERE id = 3929;

-- ID 3934: Individual Tax Planning: Compensation (20 words)
-- ORIGINAL STEM: Under Section 132, what is the maximum percentage discount an employee can receive on employer merchandise before it becomes taxable?
UPDATE questions SET
  stem = $EXPL$Summit Retail Inc. offers merchandise discounts to employees at its stores. The HR department wants to confirm the taxable fringe benefit threshold. Under Section 132, what is the maximum percentage discount an employee can receive on employer merchandise before it becomes taxable?$EXPL$
WHERE id = 3934;

-- ID 14085: Individual Tax Planning: Compensation (20 words)
-- ORIGINAL STEM: What is the employer's tax deduction when an employee makes a qualifying disposition of shares acquired through incentive stock options?
UPDATE questions SET
  stem = $EXPL$Jade, a senior engineer at Apex Dynamics, exercises ISOs and sells the shares two years after grant and fourteen months after exercise. What is Apex Dynamics'' tax deduction when an employee makes a qualifying disposition of shares acquired through incentive stock options?$EXPL$
WHERE id = 14085;

-- ID 14094: Individual Tax Planning: Compensation (20 words)
-- ORIGINAL STEM: Which of the following is a requirement for a stock option plan to grant incentive stock options under Section 422?
UPDATE questions SET
  stem = $EXPL$NovaTech Inc. is designing a new stock option plan to qualify for incentive stock option treatment under Section 422. The board asks its tax advisor about mandatory requirements. Which of the following is a requirement for the plan to grant ISOs?$EXPL$
WHERE id = 14094;

-- ============================================================
-- INTERNATIONAL TAX (4 questions)
-- ============================================================

-- ID 14148: International Tax (19 words)
-- ORIGINAL STEM: What is the filing threshold for FinCEN Form 114 (FBAR), which requires U.S. persons to report foreign financial accounts?
UPDATE questions SET
  stem = $EXPL$A U.S. citizen holds bank accounts in Switzerland and the United Kingdom with combined peak balances during 2025. Her CPA advises that FinCEN Form 114 (FBAR) may be required. What is the filing threshold for this form?$EXPL$
WHERE id = 14148;

-- ID 14152: International Tax (19 words)
-- ORIGINAL STEM: Under Section 59A, which of the following is classified as a "base erosion payment" for purposes of the BEAT?
UPDATE questions SET
  stem = $EXPL$Global Systems Corp., a U.S. multinational with average gross receipts exceeding $500 million, makes several deductible payments to its foreign parent. Under Section 59A, which of the following is classified as a "base erosion payment" for BEAT purposes?$EXPL$
WHERE id = 14152;

-- ID 4121: International Tax (20 words)
-- ORIGINAL STEM: Which form is required for a US person who is a 10% or greater shareholder of a controlled foreign corporation?
UPDATE questions SET
  stem = $EXPL$Claire, a U.S. citizen, owns 25% of Delphine SA, a French corporation that qualifies as a controlled foreign corporation. Which form is Claire required to file as a 10% or greater shareholder of a CFC?$EXPL$
WHERE id = 4121;

-- ID 14655: International Tax (20 words)
-- ORIGINAL STEM: Under Section 898, what taxable year is required for a specified foreign corporation (a CFC with a majority U.S. shareholder)?
UPDATE questions SET
  stem = $EXPL$Aragon Ltd., a CFC incorporated in the UK, currently uses a March 31 fiscal year. Its majority U.S. shareholder files on a calendar-year basis. Under Section 898, what taxable year is required for a specified foreign corporation?$EXPL$
WHERE id = 14655;

-- ============================================================
-- MULTI-JURISDICTIONAL TAX PLANNING (1 questions)
-- ============================================================

-- ID 14331: Multi-Jurisdictional Tax Planning (19 words)
-- ORIGINAL STEM: How does the Base Erosion and Anti-Abuse Tax (BEAT) function in relation to a corporation's regular income tax liability?
UPDATE questions SET
  stem = $EXPL$Vertex Industries, a large U.S. corporation, makes substantial deductible royalty payments to its foreign subsidiary. The tax director calculates both regular tax and the BEAT amount. How does the BEAT function in relation to a corporation''s regular income tax liability?$EXPL$
WHERE id = 14331;

-- ============================================================
-- NONTAXABLE DISPOSITIONS (3 questions)
-- ============================================================

-- ID 4348: Nontaxable Dispositions (17 words)
-- ORIGINAL STEM: Which of the following types of property is NOT eligible for installment sale treatment under Section 453?
UPDATE questions SET
  stem = $EXPL$A CPA reviews several asset sales completed by different clients during 2025 to determine which can report gain using the installment method. Which of the following types of property is NOT eligible for installment sale treatment under Section 453?$EXPL$
WHERE id = 4348;

-- ID 4369: Nontaxable Dispositions (17 words)
-- ORIGINAL STEM: A taxpayer who sold property on the installment method dies. What happens to the remaining installment obligation?
UPDATE questions SET
  stem = $EXPL$Robert sold investment land in 2023 for $400,000, reporting gain under the installment method over five annual payments. Robert dies in 2025 with three payments still outstanding. What happens to the remaining installment obligation?$EXPL$
WHERE id = 4369;

-- ID 14396: Nontaxable Dispositions (19 words)
-- ORIGINAL STEM: Under Section 1033(g), what replacement property standard applies specifically to condemned real property held for productive use or investment?
UPDATE questions SET
  stem = $EXPL$The state condemns a warehouse owned by Sycamore Holdings that was used as investment property. Sycamore plans to reinvest the condemnation proceeds. Under Section 1033(g), what replacement property standard applies specifically to condemned real property held for productive use or investment?$EXPL$
WHERE id = 14396;

-- ============================================================
-- OWNER-ENTITY TRANSACTIONS (3 questions)
-- ============================================================

-- ID 4158: Owner-Entity Transactions (17 words)
-- ORIGINAL STEM: Which of the following fringe benefits is NOT excludable from income for a greater-than-2% S corporation shareholder?
UPDATE questions SET
  stem = $EXPL$Derek owns 35% of Cascade Consulting Inc., an S corporation. The company provides several fringe benefits to its shareholder-employees. Which of the following fringe benefits is NOT excludable from income for a greater-than-2% S corporation shareholder like Derek?$EXPL$
WHERE id = 4158;

-- ID 14561: Owner-Entity Transactions (17 words)
-- ORIGINAL STEM: What two numerical requirements must a stock redemption meet to qualify as "substantially disproportionate" under Section 302(b)(2)?
UPDATE questions SET
  stem = $EXPL$Mercer Corp. plans to redeem a portion of shares held by one of its four shareholders. The tax advisor evaluates whether the redemption qualifies as substantially disproportionate. What two numerical requirements must the redemption meet under Section 302(b)(2)?$EXPL$
WHERE id = 14561;

-- ID 14565: Owner-Entity Transactions (18 words)
-- ORIGINAL STEM: What is the character of income recognized by a partner who receives a guaranteed payment under Section 707(c)?
UPDATE questions SET
  stem = $EXPL$Whitfield & Associates LLP pays partner Kenji a $10,000 monthly guaranteed payment for management services, regardless of partnership income. What is the character of income recognized by Kenji for this guaranteed payment under Section 707(c)?$EXPL$
WHERE id = 14565;

-- ============================================================
-- PASSIVE ACTIVITY AND AT-RISK RULES (4 questions)
-- ============================================================

-- ID 5984: Passive Activity and At-Risk Rules (19 words)
-- ORIGINAL STEM: What type of interest in oil and gas property is exempt from passive activity loss limitations under Section 469(c)(3)?
UPDATE questions SET
  stem = $EXPL$Dr. Patel, a physician, invests in several oil and gas ventures alongside her medical practice income. She reviews which investments may generate deductible losses without passive activity limitations. What type of interest in oil and gas property is exempt from passive activity loss limitations under Section 469(c)(3)?$EXPL$
WHERE id = 5984;

-- ID 3964: Passive Activity and At-Risk Rules (20 words)
-- ORIGINAL STEM: Under the at-risk rules of Section 465, which of the following amounts is included in a taxpayer's amount at risk?
UPDATE questions SET
  stem = $EXPL$Tanya invests in a rental equipment leasing business, contributing cash and borrowing funds through various arrangements. She is determining her at-risk amount. Under Section 465, which of the following amounts is included in a taxpayer''s amount at risk?$EXPL$
WHERE id = 3964;

-- ID 3971: Passive Activity and At-Risk Rules (20 words)
-- ORIGINAL STEM: Under the passive activity grouping rules, which factor is NOT considered when determining whether activities constitute an appropriate economic unit?
UPDATE questions SET
  stem = $EXPL$Grant owns a restaurant, a catering service, and a food truck in the same metropolitan area. He wants to group these as one activity for passive activity purposes. Under the grouping rules, which factor is NOT considered when determining whether activities constitute an appropriate economic unit?$EXPL$
WHERE id = 3971;

-- ID 6059: Passive Activity and At-Risk Rules (20 words)
-- ORIGINAL STEM: What level of involvement does Section 469(i) require for a taxpayer to claim the $25,000 rental real estate loss allowance?
UPDATE questions SET
  stem = $EXPL$Simone owns a duplex that generates a $20,000 rental loss for 2025. Her modified AGI is $85,000 and she personally approves tenants and sets rental terms. What level of involvement does Section 469(i) require for a taxpayer to claim the $25,000 rental real estate loss allowance?$EXPL$
WHERE id = 6059;

-- ============================================================
-- RELATED PARTY TRANSACTIONS (3 questions)
-- ============================================================

-- ID 4402: Related Party Transactions (18 words)
-- ORIGINAL STEM: Under Section 267(d), the disallowed loss from a related party sale can be used by the buyer to:
UPDATE questions SET
  stem = $EXPL$Mother sells corporate stock with a basis of $60,000 to her daughter for $45,000. The $15,000 loss is disallowed under Section 267. Under Section 267(d), the disallowed loss can be used by the daughter to:$EXPL$
WHERE id = 4402;

-- ID 4389: Related Party Transactions (19 words)
-- ORIGINAL STEM: Section 1239 applies to sales of depreciable property between related parties. Which of the following relationships triggers Section 1239?
UPDATE questions SET
  stem = $EXPL$A tax advisor is evaluating several property transactions to determine whether gain will be recharacterized as ordinary income under Section 1239. This section applies to sales of depreciable property between related parties. Which of the following relationships triggers Section 1239?$EXPL$
WHERE id = 4389;

-- ID 14465: Related Party Transactions (20 words)
-- ORIGINAL STEM: Under Section 267(b), what is the relationship between an executor of an estate and a beneficiary of that same estate?
UPDATE questions SET
  stem = $EXPL$Thomas serves as executor of the Albright estate, which lists his nephew as a beneficiary. Thomas is considering selling estate property to the nephew. Under Section 267(b), what is the relationship between an executor and a beneficiary of the same estate?$EXPL$
WHERE id = 14465;

-- ============================================================
-- RETIREMENT PLANS AND EDUCATION SAVINGS (3 questions)
-- ============================================================

-- ID 4047: Retirement Plans and Education Savings (20 words)
-- ORIGINAL STEM: What is the maximum annual contribution to an IRA (traditional or Roth) for a taxpayer under age 50 in 2026?
UPDATE questions SET
  stem = $EXPL$Aiden, age 34, earns $95,000 as a software engineer and wants to maximize his IRA contributions for 2026. He does not qualify for any catch-up provisions. What is the maximum annual contribution to an IRA for a taxpayer under age 50?$EXPL$
WHERE id = 4047;

-- ID 4057: Retirement Plans and Education Savings (20 words)
-- ORIGINAL STEM: A 529 plan account owner changes the beneficiary from one child to another child (siblings). What are the tax consequences?
UPDATE questions SET
  stem = $EXPL$Karen opened a Section 529 plan for her older daughter, who received a full scholarship. Karen changes the beneficiary to her younger daughter, a sibling. What are the tax consequences of this beneficiary change?$EXPL$
WHERE id = 4057;

-- ID 7799: Retirement Plans and Education Savings (20 words)
-- ORIGINAL STEM: What is the IRA deductibility rule for a taxpayer who is not an active participant in any employer-sponsored retirement plan?
UPDATE questions SET
  stem = $EXPL$Sandra, a freelance graphic designer with $75,000 of net self-employment income, does not participate in any employer-sponsored retirement plan. She contributes $7,000 to a traditional IRA. What is the deductibility rule for a taxpayer who is not an active participant in any employer plan?$EXPL$
WHERE id = 7799;

-- ============================================================
-- TRUSTS AND ESTATES (1 questions)
-- ============================================================

-- ID 4264: Trusts and Estates (19 words)
-- ORIGINAL STEM: An estate has gross income of $90,000 and pays $15,000 in executor fees. The executor fees are deductible on:
UPDATE questions SET
  stem = $EXPL$The estate of Margaret Thornton generates $90,000 of rental and investment income during its administration. The estate pays $15,000 in executor fees to the appointed personal representative. These executor fees are deductible on:$EXPL$
WHERE id = 4264;

COMMIT;
