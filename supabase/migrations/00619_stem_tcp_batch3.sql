-- Migration: Stem expansion — TCP batch 3 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for TCP section
-- Affected topics: Advanced Basis Calculations, Capital Structure Tax Planning, Entity Formation and Liquidation, Entity Formation and Restructuring, Entity Tax Compliance: NOLs and Consolidated Returns, Individual Tax Planning: Compensation, International Tax, Multi-Jurisdictional Tax Planning, Nontaxable Dispositions, Owner-Entity Transactions, Passive Activity and At-Risk Rules, Related Party Transactions, Retirement Plans and Education Savings, Trusts and Estates, Wealth Transfer and Gifting Strategies

BEGIN;

-- ============================================================
-- ADVANCED BASIS CALCULATIONS (4 questions)
-- ============================================================

-- ID 12916: Advanced Basis Calculations (12 words)
-- ORIGINAL STEM: What is the open account debt basis rule for S corporation shareholders?
UPDATE questions SET
  stem = $EXPL$Vivian holds a 40% interest in Bridger Corp, an S corporation, and has periodically advanced small unsecured amounts to the company throughout 2025. She wants to determine how these informal advances affect her loss deduction capacity. What is the open account debt basis rule for S corporation shareholders?$EXPL$
WHERE id = 12916;

-- ID 14488: Advanced Basis Calculations (12 words)
-- ORIGINAL STEM: Under IRC Section 705(a), how is a partner's outside basis adjusted annually?
UPDATE questions SET
  stem = $EXPL$Marcus joined the Ridgeview Partnership in 2023 by contributing $150,000 in cash. At the end of 2025, the partnership reports taxable income, tax-exempt income, and several deduction items on Schedule K-1. Under IRC Section 705(a), how is a partner''s outside basis adjusted annually?$EXPL$
WHERE id = 14488;

-- ID 1006: Advanced Basis Calculations (13 words)
-- ORIGINAL STEM: When an S corporation subsequently earns income, the shareholder's basis restoration order is:
UPDATE questions SET
  stem = $EXPL$Nolan is a shareholder in Cascade Consulting, an S corporation. In prior years, losses reduced both his stock basis to zero and his $30,000 debt basis to $12,000. In 2026, the corporation reports $25,000 of ordinary income. When the S corporation subsequently earns income, the shareholder''s basis restoration order is:$EXPL$
WHERE id = 1006;

-- ID 4188: Advanced Basis Calculations (13 words)
-- ORIGINAL STEM: An S corporation shareholder's stock basis is increased by which of the following?
UPDATE questions SET
  stem = $EXPL$Petra owns 100% of Sequoia Services, an S corporation. She is computing her year-end stock basis to determine whether she can deduct a $40,000 pass-through loss. An S corporation shareholder''s stock basis is increased by which of the following?$EXPL$
WHERE id = 4188;

-- ============================================================
-- CAPITAL STRUCTURE TAX PLANNING (3 questions)
-- ============================================================

-- ID 4317: Capital Structure Tax Planning (17 words)
-- ORIGINAL STEM: For federal income tax purposes, dividends paid by a C corporation to its shareholders are treated as:
UPDATE questions SET
  stem = $EXPL$Redstone Manufacturing, a C corporation, declared and paid $200,000 in dividends to its shareholders during 2025. The company''s tax advisor is analyzing the deductibility of this distribution. For federal income tax purposes, dividends paid by a C corporation to its shareholders are treated as:$EXPL$
WHERE id = 4317;

-- ID 4341: Capital Structure Tax Planning (17 words)
-- ORIGINAL STEM: Under Section 163(j), adjusted taxable income (ATI) for tax years beginning after December 31, 2025, is computed:
UPDATE questions SET
  stem = $EXPL$Granite Industries, a capital-intensive manufacturer, is projecting its 2026 interest expense limitation. The CFO asks how depreciation and amortization factor into the Section 163(j) calculation going forward. Under Section 163(j), adjusted taxable income (ATI) for tax years beginning after December 31, 2025, is computed:$EXPL$
WHERE id = 4341;

-- ID 1226: Capital Structure Tax Planning (18 words)
-- ORIGINAL STEM: Which of the following is the PRIMARY tax advantage of debt financing over equity financing for a corporation?
UPDATE questions SET
  stem = $EXPL$Pinnacle Corp is evaluating whether to raise $5 million through a new bond issuance or a secondary stock offering. The board asks the tax director to identify the key tax distinction between the two options. Which of the following is the primary tax advantage of debt financing over equity financing for a corporation?$EXPL$
WHERE id = 1226;

-- ============================================================
-- ENTITY FORMATION AND LIQUIDATION (2 questions)
-- ============================================================

-- ID 13275: Entity Formation and Liquidation (13 words)
-- ORIGINAL STEM: Under Section 302(b)(4), partial liquidation treatment providing sale/exchange treatment is available only to:
UPDATE questions SET
  stem = $EXPL$Cornerstone Inc. ceased operating its retail division in 2025 and distributed the $600,000 in sale proceeds to its shareholders pro rata. The tax advisor is determining which shareholders qualify for favorable treatment on this corporate contraction. Under Section 302(b)(4), partial liquidation treatment providing sale/exchange treatment is available only to:$EXPL$
WHERE id = 13275;

-- ID 1031: Entity Formation and Liquidation (17 words)
-- ORIGINAL STEM: Under Section 334, what basis does the parent take in assets received from a Section 332 liquidation?
UPDATE questions SET
  stem = $EXPL$Whitfield Corp owns 100% of Beacon Industries and plans to liquidate the subsidiary in 2026. Beacon''s assets have a fair market value of $4 million and an adjusted basis of $2.8 million. Under Section 334, what basis does the parent take in assets received from a Section 332 liquidation?$EXPL$
WHERE id = 1031;

-- ============================================================
-- ENTITY FORMATION AND RESTRUCTURING (3 questions)
-- ============================================================

-- ID 13562: Entity Formation and Restructuring (14 words)
-- ORIGINAL STEM: Under Section 368(a)(1)(E), a Type E reorganization refers to which type of corporate restructuring?
UPDATE questions SET
  stem = $EXPL$Summit Corp''s board of directors has approved converting all outstanding preferred shares into common shares to simplify the capital structure. The tax counsel is classifying this transaction. Under Section 368(a)(1)(E), a Type E reorganization refers to which type of corporate restructuring?$EXPL$
WHERE id = 13562;

-- ID 13569: Entity Formation and Restructuring (14 words)
-- ORIGINAL STEM: In a Section 355 transaction, a "spin-off" is best described as a distribution where:
UPDATE questions SET
  stem = $EXPL$Titan Industries plans to transfer its software division into a newly formed subsidiary, TitanTech, and distribute TitanTech shares to existing shareholders without requiring them to surrender any Titan stock. In a Section 355 transaction, a "spin-off" is best described as a distribution where:$EXPL$
WHERE id = 13569;

-- ID 13567: Entity Formation and Restructuring (15 words)
-- ORIGINAL STEM: Under Section 368(c), what percentage of stock ownership constitutes "control" for purposes of corporate reorganizations?
UPDATE questions SET
  stem = $EXPL$Apex Corp is acquiring Sterling Inc. and needs to determine whether the post-transaction ownership satisfies the control requirement for tax-free reorganization treatment. Under Section 368(c), what percentage of stock ownership constitutes "control" for purposes of corporate reorganizations?$EXPL$
WHERE id = 13567;

-- ============================================================
-- ENTITY TAX COMPLIANCE: NOLS AND CONSOLIDATED RETURNS (3 questions)
-- ============================================================

-- ID 962: Entity Tax Compliance: NOLs and Consolidated Returns (14 words)
-- ORIGINAL STEM: In a consolidated return, how are gains on intercompany sales of depreciable property treated?
UPDATE questions SET
  stem = $EXPL$Delta Corp and its wholly owned subsidiary, Echo Corp, file a consolidated return. In 2025, Delta sold manufacturing equipment with a basis of $80,000 to Echo for $120,000. In a consolidated return, how are gains on intercompany sales of depreciable property treated?$EXPL$
WHERE id = 962;

-- ID 14600: Entity Tax Compliance: NOLs and Consolidated Returns (15 words)
-- ORIGINAL STEM: What role does the "common parent" serve in a consolidated return group under Section 1504?
UPDATE questions SET
  stem = $EXPL$Vanguard Holdings owns 100% of three domestic C corporation subsidiaries and files a consolidated federal income tax return. The group''s tax advisor is explaining each member''s responsibilities. What role does the "common parent" serve in a consolidated return group under Section 1504?$EXPL$
WHERE id = 14600;

-- ID 4073: Entity Tax Compliance: NOLs and Consolidated Returns (16 words)
-- ORIGINAL STEM: Ajax Corp owns 75% of the stock of Baker Corp. May they file a consolidated return?
UPDATE questions SET
  stem = $EXPL$Ajax Corp owns 75% of the total voting power and 75% of the total value of Baker Corp stock. Both are domestic C corporations. Ajax''s tax director wants to combine the two entities on a single return. May Ajax and Baker file a consolidated return?$EXPL$
WHERE id = 4073;

-- ============================================================
-- INDIVIDUAL TAX PLANNING: COMPENSATION (5 questions)
-- ============================================================

-- ID 899: Individual Tax Planning: Compensation (16 words)
-- ORIGINAL STEM: Under Section 409A, which of the following is a permissible distribution event for nonqualified deferred compensation?
UPDATE questions SET
  stem = $EXPL$Kevin, a senior executive at Orion Pharmaceuticals, participates in the company''s nonqualified deferred compensation plan with a balance of $1.2 million. He asks his advisor when he can access the funds without penalty. Under Section 409A, which of the following is a permissible distribution event for nonqualified deferred compensation?$EXPL$
WHERE id = 899;

-- ID 906: Individual Tax Planning: Compensation (16 words)
-- ORIGINAL STEM: Section 162(m) limits the deduction for compensation paid to covered employees of publicly held corporations to:
UPDATE questions SET
  stem = $EXPL$NovaTech, a publicly traded corporation, paid its CEO $3.5 million in total compensation for 2025, including salary, bonuses, and stock awards. The tax department is determining the deductible portion. Section 162(m) limits the deduction for compensation paid to covered employees of publicly held corporations to:$EXPL$
WHERE id = 906;

-- ID 3923: Individual Tax Planning: Compensation (16 words)
-- ORIGINAL STEM: Which of the following fringe benefits is excludable from an employee's gross income under Section 132?
UPDATE questions SET
  stem = $EXPL$Lighthouse Consulting provides various benefits to its employees, including gym memberships, transit passes, and occasional personal use of the office copier. The payroll manager is reviewing which items must appear on employees'' W-2s. Which of the following fringe benefits is excludable from an employee''s gross income under Section 132?$EXPL$
WHERE id = 3923;

-- ID 3950: Individual Tax Planning: Compensation (16 words)
-- ORIGINAL STEM: Under Section 409A, when must a new employee make a deferral election for a NQDC plan?
UPDATE questions SET
  stem = $EXPL$Angela was hired by Regent Financial on March 15, 2026, and is immediately eligible to participate in the firm''s nonqualified deferred compensation plan. She wants to defer a portion of her 2026 salary. Under Section 409A, when must a new employee make a deferral election for a NQDC plan?$EXPL$
WHERE id = 3950;

-- ID 14636: Individual Tax Planning: Compensation (16 words)
-- ORIGINAL STEM: Under Section 409A regulations, what standard determines whether an employee has experienced a separation from service?
UPDATE questions SET
  stem = $EXPL$Dr. Ramos reduced her hours at Pacific Health Systems from 40 to 12 hours per week due to a chronic illness. Her NQDC plan allows distribution upon separation from service. Under Section 409A regulations, what standard determines whether an employee has experienced a separation from service?$EXPL$
WHERE id = 14636;

-- ============================================================
-- INTERNATIONAL TAX (4 questions)
-- ============================================================

-- ID 974: International Tax (14 words)
-- ORIGINAL STEM: Under Section 250, what is the purpose of the foreign-derived intangible income (FDII) deduction?
UPDATE questions SET
  stem = $EXPL$Crestline Technologies, a domestic C corporation, generates $8 million in revenue from licensing patented software to customers in Europe and Asia. The company''s tax advisor recommends evaluating the Section 250 deduction. Under Section 250, what is the purpose of the foreign-derived intangible income (FDII) deduction?$EXPL$
WHERE id = 974;

-- ID 978: International Tax (14 words)
-- ORIGINAL STEM: Under the TCJA transition tax (Section 965), accumulated E&P of CFCs was taxed at:
UPDATE questions SET
  stem = $EXPL$Meridian Corp, a U.S. multinational, had two controlled foreign corporations with combined accumulated post-1986 earnings of $50 million as of the TCJA transition date. Under the TCJA transition tax (Section 965), accumulated E&P of CFCs was taxed at:$EXPL$
WHERE id = 978;

-- ID 4122: International Tax (14 words)
-- ORIGINAL STEM: Which form must a US person file to report interests in a foreign partnership?
UPDATE questions SET
  stem = $EXPL$Sandra, a U.S. citizen, acquired a 25% interest in a Swiss-based investment partnership in January 2025. Her CPA is preparing her international filing obligations. Which form must a U.S. person file to report interests in a foreign partnership?$EXPL$
WHERE id = 4122;

-- ID 14145: International Tax (15 words)
-- ORIGINAL STEM: Under most U.S. income tax treaties, what is the significance of a "permanent establishment" (PE)?
UPDATE questions SET
  stem = $EXPL$BrightEdge Ltd., a UK software company, sends employees to a U.S. client site for a six-month consulting engagement and is evaluating whether U.S. tax obligations arise. Under most U.S. income tax treaties, what is the significance of a "permanent establishment" (PE)?$EXPL$
WHERE id = 14145;

-- ============================================================
-- MULTI-JURISDICTIONAL TAX PLANNING (1 questions)
-- ============================================================

-- ID 4976: Multi-Jurisdictional Tax Planning (14 words)
-- ORIGINAL STEM: What is the primary purpose of a successor auditor communicating with the predecessor auditor?
UPDATE questions SET
  stem = $EXPL$Hargrove & Associates, CPA, has been engaged to audit Coastal Distributors for 2025 after the prior auditors resigned. Before accepting the engagement, the firm initiates contact with the predecessor. What is the primary purpose of a successor auditor communicating with the predecessor auditor?$EXPL$
WHERE id = 4976;

-- ============================================================
-- NONTAXABLE DISPOSITIONS (2 questions)
-- ============================================================

-- ID 1241: Nontaxable Dispositions (12 words)
-- ORIGINAL STEM: Under Section 453, what restriction applies to installment sales between related parties?
UPDATE questions SET
  stem = $EXPL$In October 2025, Nathan sold investment land to his daughter Claire for $400,000 using an installment note. Claire then sold the same property to an unrelated buyer six months later. Under Section 453, what restriction applies to installment sales between related parties?$EXPL$
WHERE id = 1241;

-- ID 14377: Nontaxable Dispositions (13 words)
-- ORIGINAL STEM: Under Section 453, when does the installment method apply to a qualifying sale?
UPDATE questions SET
  stem = $EXPL$Rivera sold a parcel of undeveloped land in 2025 for $300,000, receiving $75,000 at closing with the balance due over four annual payments. She did not make any special elections on her return. Under Section 453, when does the installment method apply to a qualifying sale?$EXPL$
WHERE id = 14377;

-- ============================================================
-- OWNER-ENTITY TRANSACTIONS (3 questions)
-- ============================================================

-- ID 14547: Owner-Entity Transactions (12 words)
-- ORIGINAL STEM: What is "foregone interest" as defined under Section 7872 for below-market loans?
UPDATE questions SET
  stem = $EXPL$Bradley loaned his wholly owned C corporation $200,000 at 1% annual interest when the applicable federal rate was 5%. The IRS is evaluating the below-market loan consequences. What is "foregone interest" as defined under Section 7872 for below-market loans?$EXPL$
WHERE id = 14547;

-- ID 991: Owner-Entity Transactions (13 words)
-- ORIGINAL STEM: Under Section 1202, what is the qualified small business stock (QSBS) gain exclusion?
UPDATE questions SET
  stem = $EXPL$In 2019, Lena invested $500,000 in newly issued stock of a qualifying C corporation with gross assets under $50 million. She sells the stock in 2026 for $3 million. Under Section 1202, what is the qualified small business stock (QSBS) gain exclusion?$EXPL$
WHERE id = 991;

-- ID 4156: Owner-Entity Transactions (13 words)
-- ORIGINAL STEM: Which of the following transactions would trigger Section 1239 recharacterization to ordinary income?
UPDATE questions SET
  stem = $EXPL$Owen, who owns 100% of Cedar Corp, is considering selling a commercial building to the corporation for $750,000. Cedar Corp plans to depreciate the building over its remaining useful life. Which of the following transactions would trigger Section 1239 recharacterization to ordinary income?$EXPL$
WHERE id = 4156;

-- ============================================================
-- PASSIVE ACTIVITY AND AT-RISK RULES (5 questions)
-- ============================================================

-- ID 6014: Passive Activity and At-Risk Rules (14 words)
-- ORIGINAL STEM: Under Section 469(i), what does active participation in a rental real estate activity require?
UPDATE questions SET
  stem = $EXPL$Diane owns a duplex that generated a $22,000 rental loss in 2025. She personally approved the tenants and set rental terms but hired a property manager for day-to-day operations. Under Section 469(i), what does active participation in a rental real estate activity require?$EXPL$
WHERE id = 6014;

-- ID 6065: Passive Activity and At-Risk Rules (14 words)
-- ORIGINAL STEM: What types of income does Section 469(e)(1) exclude from classification as passive activity income?
UPDATE questions SET
  stem = $EXPL$Graham, a limited partner in two ventures, also received $18,000 in dividends and $12,000 in interest during 2025. He wants to use this investment income to offset his passive losses. What types of income does Section 469(e)(1) exclude from classification as passive activity income?$EXPL$
WHERE id = 6065;

-- ID 3958: Passive Activity and At-Risk Rules (15 words)
-- ORIGINAL STEM: Under Section 469, which of the following types of income is classified as passive income?
UPDATE questions SET
  stem = $EXPL$Felicia, a software engineer, has income from wages, a limited partnership interest in which she does not materially participate, stock dividends, and bank interest. She is determining how each source is categorized for the passive activity rules. Under Section 469, which of the following types of income is classified as passive income?$EXPL$
WHERE id = 3958;

-- ID 5918: Passive Activity and At-Risk Rules (15 words)
-- ORIGINAL STEM: Under Section 465, which of the following reduces a taxpayer's at-risk amount in an activity?
UPDATE questions SET
  stem = $EXPL$Ross invested $120,000 cash in a film production partnership and is tracking his at-risk amount at year-end after receiving distributions and recognizing his share of losses. Under Section 465, which of the following reduces a taxpayer''s at-risk amount in an activity?$EXPL$
WHERE id = 5918;

-- ID 5953: Passive Activity and At-Risk Rules (15 words)
-- ORIGINAL STEM: Under IRC Section 465(b)(6), what is qualified nonrecourse financing for purposes of the at-risk rules?
UPDATE questions SET
  stem = $EXPL$Trenton acquired a rental apartment building in 2025, financing $800,000 of the purchase with a nonrecourse bank loan secured solely by the property. He asks whether this debt increases his at-risk amount. Under IRC Section 465(b)(6), what is qualified nonrecourse financing for purposes of the at-risk rules?$EXPL$
WHERE id = 5953;

-- ============================================================
-- RELATED PARTY TRANSACTIONS (3 questions)
-- ============================================================

-- ID 4379: Related Party Transactions (15 words)
-- ORIGINAL STEM: Under Section 267 constructive ownership rules, an individual is considered to own stock owned by:
UPDATE questions SET
  stem = $EXPL$Evelyn directly owns 30% of Orchard Corp. Her daughter owns 25% and her husband owns 10%. The tax advisor is determining Evelyn''s total constructive ownership for related party purposes. Under Section 267 constructive ownership rules, an individual is considered to own stock owned by:$EXPL$
WHERE id = 4379;

-- ID 14459: Related Party Transactions (15 words)
-- ORIGINAL STEM: Under Section 267(c)(3), how is a person treated who holds an option to acquire stock?
UPDATE questions SET
  stem = $EXPL$Clark holds an unexercised option to purchase 20% of Birchwood Corp stock. The company''s tax counsel is evaluating whether Clark is a related party to another Birchwood shareholder. Under Section 267(c)(3), how is a person treated who holds an option to acquire stock?$EXPL$
WHERE id = 14459;

-- ID 14483: Related Party Transactions (15 words)
-- ORIGINAL STEM: Under Section 267(b)(1), which of the following family members is NOT considered a related party?
UPDATE questions SET
  stem = $EXPL$Martin sold investment property at a loss to a family member and is determining whether the loss is disallowed. His potential buyers include his brother, his daughter, his mother-in-law, and his father. Under Section 267(b)(1), which of the following family members is NOT considered a related party?$EXPL$
WHERE id = 14483;

-- ============================================================
-- RETIREMENT PLANS AND EDUCATION SAVINGS (5 questions)
-- ============================================================

-- ID 945: Retirement Plans and Education Savings (15 words)
-- ORIGINAL STEM: Under the SECURE Act, what is the required beginning date for traditional IRA minimum distributions?
UPDATE questions SET
  stem = $EXPL$Harold, born in 1955, retired in 2025 at age 70. He has a traditional IRA worth $620,000 and has not yet taken any distributions. His advisor is determining when RMDs must begin. Under the SECURE Act, what is the required beginning date for traditional IRA minimum distributions?$EXPL$
WHERE id = 945;

-- ID 14238: Retirement Plans and Education Savings (15 words)
-- ORIGINAL STEM: What is the deadline for correcting an excess 401(k) elective deferral under IRC Section 402(g)?
UPDATE questions SET
  stem = $EXPL$In 2025, Javier contributed a total of $28,000 in elective deferrals across two employers'' 401(k) plans, exceeding the annual limit. His tax advisor is determining when the excess must be distributed to avoid double taxation. What is the deadline for correcting an excess 401(k) elective deferral under IRC Section 402(g)?$EXPL$
WHERE id = 14238;

-- ID 4037: Retirement Plans and Education Savings (16 words)
-- ORIGINAL STEM: At what age must a taxpayer begin taking required minimum distributions (RMDs) from a traditional IRA?
UPDATE questions SET
  stem = $EXPL$Miriam, born in 1962, is planning her retirement income strategy. She holds $850,000 in a traditional IRA and wants to know when she will be legally required to start withdrawing funds. At what age must a taxpayer born after 1959 begin taking required minimum distributions (RMDs) from a traditional IRA?$EXPL$
WHERE id = 4037;

-- ID 4044: Retirement Plans and Education Savings (16 words)
-- ORIGINAL STEM: In 2026, what is the maximum annual contribution to a Coverdell Education Savings Account per beneficiary?
UPDATE questions SET
  stem = $EXPL$Patricia and her husband want to set up a Coverdell Education Savings Account for their 8-year-old grandson to cover private school tuition. Their combined AGI is $150,000. In 2026, what is the maximum annual contribution to a Coverdell Education Savings Account per beneficiary?$EXPL$
WHERE id = 4044;

-- ID 4051: Retirement Plans and Education Savings (16 words)
-- ORIGINAL STEM: Which of the following is an exception to the 10% early withdrawal penalty under Section 72(t)?
UPDATE questions SET
  stem = $EXPL$Isaac, age 45, needs to withdraw $30,000 from his traditional IRA to cover unexpected expenses. His advisor is reviewing whether any exception to the early distribution penalty might apply. Which of the following is an exception to the 10% early withdrawal penalty under Section 72(t)?$EXPL$
WHERE id = 4051;

-- ============================================================
-- TRUSTS AND ESTATES (2 questions)
-- ============================================================

-- ID 1017: Trusts and Estates (14 words)
-- ORIGINAL STEM: The two-percent floor on miscellaneous itemized deductions does NOT apply to which trust expense?
UPDATE questions SET
  stem = $EXPL$The Whitaker Family Trust incurred $8,000 in trustee fees, $3,000 in tax preparation costs, and $2,500 in investment advisory fees during 2025. The fiduciary is determining which expenses are fully deductible. The two-percent floor on miscellaneous itemized deductions does NOT apply to which trust expense?$EXPL$
WHERE id = 1017;

-- ID 1018: Trusts and Estates (14 words)
-- ORIGINAL STEM: A decedent's estate receives income during the period of administration. The estate's fiscal year:
UPDATE questions SET
  stem = $EXPL$Robert passed away on September 15, 2025. His estate received rental income and interest during the administration period. The executor is selecting a tax year for the estate''s first Form 1041 filing. A decedent''s estate receives income during the period of administration. The estate''s fiscal year:$EXPL$
WHERE id = 1018;

-- ============================================================
-- WEALTH TRANSFER AND GIFTING STRATEGIES (5 questions)
-- ============================================================

-- ID 12797: Wealth Transfer and Gifting Strategies (12 words)
-- ORIGINAL STEM: What is the top federal estate and gift tax rate for 2026?
UPDATE questions SET
  stem = $EXPL$The executor of the Harrington estate is computing the federal estate tax liability on a taxable estate of $18 million. She needs to apply the highest marginal rate to the amount exceeding the exemption. What is the top federal estate and gift tax rate for 2026?$EXPL$
WHERE id = 12797;

-- ID 14175: Wealth Transfer and Gifting Strategies (12 words)
-- ORIGINAL STEM: What makes a transfer an incomplete gift for federal gift tax purposes?
UPDATE questions SET
  stem = $EXPL$Carolyn transferred stock to an irrevocable trust but retained the power to redirect the trust assets among her children at any time. Her estate planner is evaluating the gift tax consequences. What makes a transfer an incomplete gift for federal gift tax purposes?$EXPL$
WHERE id = 14175;

-- ID 4008: Wealth Transfer and Gifting Strategies (13 words)
-- ORIGINAL STEM: Under gift splitting (Section 2513), which of the following requirements must be met?
UPDATE questions SET
  stem = $EXPL$In 2026, Daniel gave $80,000 to his niece. His wife, Sharon, did not contribute any portion of the gift but is willing to elect gift splitting on their returns. Under gift splitting (Section 2513), which of the following requirements must be met?$EXPL$
WHERE id = 4008;

-- ID 14191: Wealth Transfer and Gifting Strategies (13 words)
-- ORIGINAL STEM: What does the credit for tax on prior transfers under Section 2013 provide?
UPDATE questions SET
  stem = $EXPL$Eleanor inherited property from her aunt in 2022, and estate tax was paid on that transfer. Eleanor died in 2026, and the same property is now included in Eleanor''s gross estate. What does the credit for tax on prior transfers under Section 2013 provide?$EXPL$
WHERE id = 14191;

-- ID 12802: Wealth Transfer and Gifting Strategies (14 words)
-- ORIGINAL STEM: Who is primarily liable for paying the federal gift tax on a taxable gift?
UPDATE questions SET
  stem = $EXPL$In December 2025, Margaret gifted $500,000 in securities to her son, exceeding her remaining lifetime exemption. Her son asks whether he will owe any gift tax on the transfer. Who is primarily liable for paying the federal gift tax on a taxable gift?$EXPL$
WHERE id = 12802;

COMMIT;
