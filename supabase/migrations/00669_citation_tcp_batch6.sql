-- Migration: Citation backfill — TCP batch 6 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for TCP section
-- Affected topics: Advanced Basis Calculations, Capital Structure Tax Planning, Entity Choice and Planning, Entity Tax Compliance: NOLs and Consolidated Returns, Individual Tax Planning: Compensation, International Tax, Multi-Jurisdictional Tax Planning, Nontaxable Dispositions, Owner-Entity Transactions, Retirement Plans and Education Savings, Trusts and Estates, Wealth Transfer and Gifting Strategies

BEGIN;

-- ============================================================
-- ADVANCED BASIS CALCULATIONS (4 questions)
-- ============================================================

-- ID 4208: Advanced Basis Calculations
UPDATE questions SET
  explanation = 'Under IRC Section 752(a), a partner''s share of recourse liabilities is determined by economic risk of loss, not profit-sharing ratios. Partner N bears 60% of the $300,000 recourse liability ($180,000), increasing outside basis from $200,000 to $380,000. While the 40% profit-sharing ratio might suggest a $120,000 allocation, IRC Section 752 regulations require allocation based on who would bear the economic burden if the partnership could not pay, making N''s higher risk-sharing agreement controlling.'
WHERE id = 4208;

-- ID 4210: Advanced Basis Calculations
UPDATE questions SET
  explanation = 'Under IRC Section 1367(a), S corporation stock basis adjustments follow a mandatory ordering rule: first increase for income items (ordinary income and tax-exempt income), then decrease for distributions, nondeductible expenses, and losses. Starting at $50,000, basis increases to $85,000 after income items, then reduces by $60,000 distributions, $3,000 nondeductible expenses, and $12,000 losses, yielding $10,000. Unlike AAA, which excludes tax-exempt income under Section 1368(e)(1)(A), stock basis includes all income items.'
WHERE id = 4210;

-- ID 12929: Advanced Basis Calculations
UPDATE questions SET
  explanation = 'Under IRC Section 1368(e)(1)(A), the accumulated adjustments account excludes tax-exempt income and related expenses from its computation. Starting AAA of $50,000 is increased by $80,000 ordinary income, then reduced by $6,000 nondeductible premiums, $12,000 capital loss, and $40,000 distributions, yielding $72,000. While stock basis under Section 1367 includes the $10,000 tax-exempt interest, AAA intentionally excludes it because AAA tracks only amounts that have been subjected to shareholder-level taxation.'
WHERE id = 12929;

-- ID 12931: Advanced Basis Calculations
UPDATE questions SET
  explanation = 'Under IRC Sections 704(d), 465, and 469, partnership losses must clear the BAP-E hierarchy sequentially: basis, at-risk, then passive activity limits. The $120,000 allocated loss is first limited to $100,000 outside basis under Section 704(d), then to $80,000 at-risk under Section 465, and finally subjected to passive activity rules under Section 469 where only $25,000 of passive income offsets the loss. Although the Section 469(i) rental allowance might apply, limited partners generally cannot demonstrate the active participation required for that exception.'
WHERE id = 12931;

-- ============================================================
-- CAPITAL STRUCTURE TAX PLANNING (3 questions)
-- ============================================================

-- ID 4345: Capital Structure Tax Planning
UPDATE questions SET
  explanation = 'Under IRC Section 385, the IRS examines multiple factors to distinguish debt from equity in shareholder-corporation transactions. The 4:1 debt-to-equity ratio ($4,000,000 debt to $1,000,000 equity) presents thin capitalization risk, though proper documentation, market interest rates, and fixed maturities support debt treatment. While no statutory bright-line ratio exists, unlike some foreign jurisdictions that impose fixed safe harbors, courts have found ratios above 3:1 or 4:1 warrant heightened scrutiny under the multi-factor substance-over-form analysis.'
WHERE id = 4345;

-- ID 14683: Capital Structure Tax Planning
UPDATE questions SET
  explanation = 'Under the multi-factor debt-equity classification test established in case law and referenced by IRC Section 385, proportional holdings of debt and equity is one of the strongest indicators of disguised equity. When shareholders hold notes in the same ratio as their stock (50/50 here), courts view this as evidence the advances function as additional capital contributions rather than genuine loans. Although market-rate interest and a fixed 10-year maturity support debt treatment, unlike proportionality, those features can easily be engineered and carry less weight in the overall analysis.'
WHERE id = 14683;

-- ID 14689: Capital Structure Tax Planning
UPDATE questions SET
  explanation = 'Under IRC Section 385 and the multi-factor debt-equity test, instruments lacking fundamental debt characteristics are reclassified as equity regardless of their label. The discretionary interest, full subordination, profit-contingent repayment, and absent maturity date all point overwhelmingly to equity. While the shareholder argues the written promissory note establishes debt, unlike genuine indebtedness which requires an unconditional obligation to repay a fixed sum at a determinable date, this instrument bears none of the hallmarks courts require for debt classification.'
WHERE id = 14689;

-- ============================================================
-- ENTITY CHOICE AND PLANNING (3 questions)
-- ============================================================

-- ID 4307: Entity Choice and Planning
UPDATE questions SET
  explanation = 'Under IRC Section 1362(a) and the Form 2553 filing rules, an LLC taxed as a C corporation may elect S status at any time without a mandatory waiting period. The S election can be effective for the current year if filed within two months and 15 days of the year''s start, or for the following year. However, unlike the S election, revoking a prior entity classification election on Form 8832 under Treas. Reg. Section 301.7701-3(c)(1)(iv) requires a 60-month waiting period before a new classification change.'
WHERE id = 4307;

-- ID 4312: Entity Choice and Planning
UPDATE questions SET
  explanation = 'Under IRC Sections 1361-1379, an S corporation allows owners to split income between reasonable compensation subject to FICA under Sections 3101-3111 and pass-through distributions exempt from self-employment tax. With $800,000 and three equal owners, reasonable salaries are subject to payroll taxes while remaining distributions avoid the 15.3% SE tax. Unlike a general partnership where all ordinary income is subject to self-employment tax under Section 1402(a), the S corporation structure provides significant payroll tax savings on the distribution portion.'
WHERE id = 4312;

-- ID 4314: Entity Choice and Planning
UPDATE questions SET
  explanation = 'Under IRC Section 11, the corporation pays a 21% tax on earnings, and under Section 1(h)(11), the shareholder pays a 20% qualified dividend rate on the distribution. On $100,000 of pre-tax corporate earnings, the corporate tax is $21,000 and the shareholder tax on the $100,000 dividend is $20,000, yielding a combined burden of approximately $41,000 or 36.8%. Unlike pass-through entities taxed only at the individual level under Subchapter S or K, C corporations face this double taxation on distributed earnings.'
WHERE id = 4314;

-- ============================================================
-- ENTITY TAX COMPLIANCE: NOLS AND CONSOLIDATED RETURNS (6 questions)
-- ============================================================

-- ID 4098: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'Under IRC Section 172(a)(2), as amended by the Tax Cuts and Jobs Act, post-2017 NOL deductions are limited to 80% of taxable income. The $800,000 carryforward is capped at 80% of $750,000 ($600,000), leaving $150,000 of taxable income and a tax liability of $31,500 at the 21% rate under Section 11. Unlike pre-TCJA NOLs which could offset 100% of taxable income, the 80% limitation ensures a minimum tax is always owed when the corporation has positive income.'
WHERE id = 4098;

-- ID 4100: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'Under Treas. Reg. Section 1.1502-32, the parent''s basis in a subsidiary''s stock is adjusted for the subsidiary''s income, losses, and distributions. When cumulative negative adjustments exceed the original $200,000 basis, the excess creates an excess loss account under Treas. Reg. Section 1.1502-19. Here, $200,000 of losses reduce basis to zero, and the remaining $50,000 creates a $50,000 ELA. Unlike ordinary negative basis which cannot exist for stock, the ELA functions as a negative basis that must be recognized as gain upon certain disposition events.'
WHERE id = 4100;

-- ID 4102: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'Under Treas. Reg. Section 1.1502-76(b), when a new member joins a consolidated group mid-year, its income is included in the consolidated return from the date of entry. The group''s estimated tax payments under IRC Section 6655 must be adjusted beginning with the quarter following the member''s entry to reflect the additional income. While the group is not required to retroactively adjust prior installments, unlike a full-year member whose income is included in all quarterly estimates, a mid-year entrant only affects forward-looking installment calculations.'
WHERE id = 4102;

-- ID 4103: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'Under Treas. Reg. Section 1.1502-19(b), when a subsidiary departs the consolidated group, any excess loss account is triggered and recognized as additional gain. The $50,000 ELA is added to the $200,000 gain on the stock sale, producing total recognized gain of $250,000. While the stock sale gain reflects the arm''s-length transaction price, the ELA recapture is required because the parent previously deducted losses that reduced basis below zero, and departure is a recognition event under the consolidated return regulations.'
WHERE id = 4103;

-- ID 4104: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'Under IRC Section 172(a)(2), the post-TCJA 80% limitation restricts the NOL deduction to $8,000,000 (80% of $10,000,000 taxable income), leaving $2,000,000 subject to the 21% corporate rate for a tax liability of $420,000. The remaining $7,000,000 of unused NOL carries forward indefinitely under Section 172(b)(1)(A)(ii). Unlike pre-2018 NOLs that could eliminate taxable income entirely, the 80% cap ensures corporations with large carryforwards still pay a minimum effective tax on current-year earnings.'
WHERE id = 4104;

-- ID 13749: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'Under Treas. Reg. Section 1.1502-13, intercompany transactions within a consolidated group are eliminated in computing consolidated taxable income. The $300,000 management fee nets to zero, and under Treas. Reg. Section 1.1502-22, Ridge''s $400,000 capital losses offset Summit''s $400,000 capital gains on a consolidated basis. Consolidated taxable income is $2,000,000 with tax of $420,000, compared to $504,000 filing separately. Unlike separate filing where IRC Section 1211(a) prevents corporate capital losses from offsetting ordinary income, consolidated filing allows cross-member capital loss netting.'
WHERE id = 13749;

-- ============================================================
-- INDIVIDUAL TAX PLANNING: COMPENSATION (4 questions)
-- ============================================================

-- ID 12659: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = 'Under fundamental tax rate arbitrage principles and IRC Section 409A governing deferred compensation, the optimal strategy when rates increase is to accelerate income into the lower-rate year and defer deductions to the higher-rate year. Accelerating $200,000 into 2027 saves $10,000 ($200,000 x 5% differential), and deferring $80,000 of deductions to 2028 saves $4,000 ($80,000 x 5%), totaling $14,000 in savings. Unlike deferring income into a higher-rate year, which increases the marginal tax on that income, acceleration locks in the current lower rate.'
WHERE id = 12659;

-- ID 14088: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = 'Under Treas. Reg. Sections 1.61-22 and 1.7872-15, when the employer owns a split-dollar life insurance policy (endorsement method), the economic benefit regime applies. The employee is taxed annually on the value of current life insurance protection measured by Table 2001 rates, minus any employee premium contributions. While the loan regime under Treas. Reg. Section 1.7872-15 applies when the employee owns the policy in a collateral assignment arrangement, employer-owned policies are governed exclusively by the economic benefit regime because the employer retains the policy ownership interest.'
WHERE id = 14088;

-- ID 14091: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = 'Under IRC Section 83(b), the restricted stock election allows Dr. Okafor to recognize $600,000 of ordinary income at grant ($20 x 30,000 shares), with subsequent appreciation taxed as long-term capital gain at 20% upon sale. The NQSO spread of $3,000,000 ($60 x 50,000) is entirely ordinary income at 37% under IRC Section 83(a). Option 2 total equity tax is $582,000 versus Option 1''s $1,110,000. Unlike NQSOs where the entire spread is ordinary income at exercise, the Section 83(b) election converts future appreciation to preferential capital gains rates.'
WHERE id = 14091;

-- ID 14636: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = 'Under Treas. Reg. Section 1.409A-1(h), a separation from service occurs when the employee''s service level is reasonably anticipated to permanently decrease to 20% or less of the average level over the prior 36-month period. Dr. Ramos''s reduction from 40 to 12 hours (30%) does not meet the 20% threshold, so no separation has occurred. Unlike a formal resignation or termination, which clearly trigger separation, the Section 409A standard requires a facts-and-circumstances analysis based on the actual and anticipated permanent reduction in service level.'
WHERE id = 14636;

-- ============================================================
-- INTERNATIONAL TAX (4 questions)
-- ============================================================

-- ID 4138: International Tax
UPDATE questions SET
  explanation = 'Under IRC Section 952(c)(1)(A), Subpart F income includible by a U.S. shareholder is limited to the CFC''s current and accumulated earnings and profits. Since the CFC''s E&P of $450,000 is less than the $600,000 of Subpart F income, the inclusion is capped at $450,000. While the full $600,000 qualifies as Subpart F income under Section 952(a), the E&P limitation prevents inclusion of the excess $150,000 because Subpart F was designed to tax only actual economic earnings available for distribution, not hypothetical income exceeding the CFC''s capacity to pay.'
WHERE id = 4138;

-- ID 14145: International Tax
UPDATE questions SET
  explanation = 'Under IRC Section 894(a) and U.S. bilateral tax treaties, a permanent establishment is a fixed place of business through which an enterprise carries on its business, creating source-country taxing jurisdiction over business profits. Without a PE, the treaty generally prevents the source country from taxing the foreign enterprise''s business profits under the business profits article. Unlike incorporation, which creates a separate legal entity, a PE is a threshold concept applied to branches, offices, and fixed business locations that does not require forming a local entity to trigger U.S. taxing jurisdiction.'
WHERE id = 14145;

-- ID 14150: International Tax
UPDATE questions SET
  explanation = 'Under IRC Section 894(a) and the limitation on benefits provisions in U.S. tax treaties, the LOB clause prevents treaty shopping by requiring the claimant to demonstrate it is a qualified resident satisfying ownership, base erosion, or active trade or business tests. FrancoChem must prove it is not a conduit entity established solely to access the reduced treaty rate. Unlike the general treaty rate provisions which apply to all residents of the treaty partner, the LOB clause restricts benefits to entities with a genuine connection to the treaty country, denying reduced withholding to shell companies owned by third-country residents.'
WHERE id = 14150;

-- ID 14654: International Tax
UPDATE questions SET
  explanation = 'Under the tie-breaker provisions of most U.S. income tax treaties, dual-resident individuals are assigned residency based on permanent home, center of vital interests, habitual abode, and nationality, in that order. Morrison''s permanent home, closer ties, and habitual abode in Country M assign treaty residency to Country M. However, unlike pure treaty analysis, the U.S. saving clause (found in most U.S. treaties) preserves the U.S. right to tax its own citizens under IRC Section 1, meaning Morrison remains subject to full U.S. taxation despite the tie-breaker determination.'
WHERE id = 14654;

-- ============================================================
-- MULTI-JURISDICTIONAL TAX PLANNING (3 questions)
-- ============================================================

-- ID 14324: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'Under IRC Section 894(a) and the applicable U.S. income tax treaty, dividends paid to a parent corporation owning 10% or more of the paying corporation''s voting stock qualify for a reduced 5% withholding rate (versus the statutory 30% under IRC Section 1442), resulting in $50,000 of withholding on the $1,000,000 dividend. This direct investment rate rewards substantial cross-border investment. Unlike portfolio dividends from less than 10% ownership, which typically face a 15% treaty rate, direct investment dividends receive the lower rate because the ownership threshold demonstrates a genuine economic stake.'
WHERE id = 14324;

-- ID 14329: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'Under IRC Section 894(a) and the U.S.-Japan tax treaty, a permanent establishment is a fixed place of business through which an enterprise wholly or partly carries on its business, establishing the host country''s right to tax attributable business profits. Sakura''s Chicago office with full-time employees negotiating contracts clearly constitutes a PE. Unlike mere preparatory or auxiliary activities (such as storage or advertising), which are specifically excluded from PE status under treaty provisions, active sales negotiation and contract finalization create a taxable presence triggering U.S. income tax obligations.'
WHERE id = 14329;

-- ID 14333: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'Under IRC Section 7852(d) and the last-in-time rule, treaties and federal statutes have equal standing, and a later-enacted statute prevails over a conflicting prior treaty. The 2026 statute imposing 15% minimum withholding overrides the treaty''s 5% rate because Congress enacted it after the treaty was ratified. While treaties are the supreme law of the land under Article VI of the Constitution, unlike constitutional provisions which override all statutes, treaties share equal rank with federal legislation under Section 7852(d), allowing Congress to override treaty obligations through subsequent enactment.'
WHERE id = 14333;

-- ============================================================
-- NONTAXABLE DISPOSITIONS (4 questions)
-- ============================================================

-- ID 14384: Nontaxable Dispositions
UPDATE questions SET
  explanation = 'Under IRC Section 453 and the installment sale regulations, in a wrap-around mortgage sale the seller remains liable on the existing mortgage and the buyer does not assume it, making the full $600,000 selling price the contract price. Gross profit is $350,000 ($600,000 minus $250,000 adjusted basis), yielding a gross profit percentage of 58.33% ($350,000 / $600,000). Unlike a sale where the buyer assumes the mortgage, which reduces the contract price under Treas. Reg. Section 15A.453-1(b)(2)(iii), a wrap-around note keeps the full selling price in the contract price calculation.'
WHERE id = 14384;

-- ID 14386: Nontaxable Dispositions
UPDATE questions SET
  explanation = 'Under IRC Sections 483 and 1274, when an installment sale note carries stated interest below the applicable federal rate, a portion of each principal payment is recharacterized as imputed (unstated) interest. This increases the seller''s ordinary interest income while reducing the selling price used to compute capital gain. Unlike a note bearing adequate stated interest at or above the AFR, where all principal payments are treated as return of capital and gain, a below-market note triggers the original issue discount rules that reallocate payments between interest and principal components.'
WHERE id = 14386;

-- ID 14391: Nontaxable Dispositions
UPDATE questions SET
  explanation = 'Under IRC Section 453(a) and Treas. Reg. Section 15A.453-1(b)(2)(iii), when the mortgage assumed ($350,000) exceeds the seller''s adjusted basis ($250,000), the excess $100,000 is treated as a deemed payment received in the year of sale. The contract price equals the buyer''s cash payments ($450,000) plus the excess mortgage ($100,000), totaling $550,000. Gross profit of $550,000 yields a 100% gross profit percentage, so Year 1 gain on the deemed payment plus first installment ($100,000 + $150,000) is $250,000. Unlike sales where the mortgage is less than basis, the excess mortgage triggers immediate gain recognition rather than being deferred.'
WHERE id = 14391;

-- ID 14393: Nontaxable Dispositions
UPDATE questions SET
  explanation = 'Under IRC Section 1033 and established case law, severance damages received in a condemnation compensate for the decline in value of retained property and reduce the basis of the retained portion rather than being recognized as immediate gain. The $50,000 severance damages reduce the retained 7-acre parcel''s basis from $350,000 to $300,000. Unlike the condemnation award for the taken property, which is treated as an amount realized on a disposition under Section 1001, severance damages are a basis adjustment that defers recognition until the retained property is ultimately sold or disposed of.'
WHERE id = 14393;

-- ============================================================
-- OWNER-ENTITY TRANSACTIONS (5 questions)
-- ============================================================

-- ID 13500: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'Under IRC Section 301 and constructive dividend principles, when a C corporation pays personal expenses of a shareholder without a business purpose, the payments are treated as constructive dividends to the extent of E&P. The $35,000 vacation and $18,000 tuition total $53,000 of dividend income to Grayson, and the corporation cannot deduct these amounts under Section 162 because they lack a business purpose. Unlike legitimate business expenses that are deductible by the corporation, personal expenditures for a shareholder''s benefit are recharacterized as distributions from accumulated E&P.'
WHERE id = 13500;

-- ID 13508: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'Under IRC Section 301 and constructive dividend doctrine, a constructive dividend occurs when a C corporation confers an economic benefit on a shareholder without formally declaring a dividend, such as personal expense payments, bargain sales, or rent-free use of corporate property like Keene''s beach house. The IRS recharacterizes the benefit as a dividend to the extent of the corporation''s E&P. Unlike a formally declared dividend which requires board action and a formal distribution, a constructive dividend arises from the substance of the transaction regardless of the form chosen by the parties.'
WHERE id = 13508;

-- ID 13509: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'Under the multi-factor debt-equity analysis applied by courts following IRC Section 385, the totality of circumstances determines whether a shareholder advance is debt or equity. The 1.25:1 debt-to-equity ratio, written note, 7-year maturity, AFR interest, and proven repayment history on the prior identical loan all support debt classification. While subordination and earnings-contingent suspension are negative factors, unlike cases where multiple indicators favor equity (no note, no maturity, no interest), the strong positive factors here outweigh the negative ones in the overall substance-over-form analysis.'
WHERE id = 13509;

-- ID 13514: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'Under IRC Section 301 and constructive dividend principles, when a C corporation with sufficient E&P allows a shareholder to use corporate property rent-free, the fair rental value constitutes a constructive dividend. Monroe''s sole shareholder must report $36,000 as dividend income, and the corporation loses any deduction for the personal-use portion of the property costs. Unlike legitimate business use of corporate property which generates deductible expenses under Section 162, rent-free personal use by a shareholder is a distribution of corporate earnings that must be reported as dividend income.'
WHERE id = 13514;

-- ID 13520: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'Under IRC Section 301 and the constructive dividend doctrine, when a corporation advances funds to a shareholder with no promissory note, no interest, no repayment schedule, and no actual repayments, the advance is recharacterized as a constructive dividend to the extent of E&P. The absence of genuine debt characteristics indicates no bona fide intent to repay under the multi-factor test. Unlike legitimate shareholder loans that bear interest, have fixed maturities, and demonstrate actual repayment history, Ryland''s advance lacks every hallmark of genuine indebtedness and is treated as a $150,000 taxable distribution.'
WHERE id = 13520;

-- ============================================================
-- RETIREMENT PLANS AND EDUCATION SAVINGS (3 questions)
-- ============================================================

-- ID 4066: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'Under IRC Section 401(k) and Section 404(a), a solo 401(k) allows the highest contribution by combining employee elective deferrals (up to $23,500 for 2026 under Section 402(g)) with employer profit-sharing contributions of up to 25% of net self-employment income after the SE tax deduction. For a high-earning sole proprietor, total contributions can approach $70,000. Unlike a SEP IRA under Section 408(k), which is limited to employer contributions of 25% of compensation with no employee deferral component, the solo 401(k) captures both sides of the contribution equation.'
WHERE id = 4066;

-- ID 4067: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'Under IRC Section 401(a)(9)(H), as enacted by the SECURE Act, most non-spouse designated beneficiaries who are not eligible designated beneficiaries must distribute the entire inherited IRA within 10 years of the account owner''s death. This replaces the prior life expectancy (stretch) method for these beneficiaries. Unlike eligible designated beneficiaries (surviving spouses, minor children, disabled or chronically ill individuals, and those not more than 10 years younger than the decedent) who retain the life expectancy method under Section 401(a)(9)(E)(ii), non-eligible beneficiaries face accelerated distribution requirements.'
WHERE id = 4067;

-- ID 14240: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'Under IRC Section 401(c) and the Keogh (HR-10) plan rules, only self-employed individuals and unincorporated business owners (sole proprietors and partners) may establish Keogh plans. These plans may be structured as defined benefit or defined contribution plans with the same contribution limits as corporate plans. Unlike W-2 employees of corporations who participate in employer-sponsored qualified plans, self-employed individuals use Keogh plans to access tax-deferred retirement savings, and there is no AGI limitation on eligibility to establish one.'
WHERE id = 14240;

-- ============================================================
-- TRUSTS AND ESTATES (5 questions)
-- ============================================================

-- ID 4272: Trusts and Estates
UPDATE questions SET
  explanation = 'Under IRC Section 665, the throwback rules for accumulation distributions were repealed for domestic trusts for tax years beginning after 1997 by the Taxpayer Relief Act of 1997. Accumulated income distributed in a later year is treated as a distribution in the year paid, subject to the distributable net income limitation under Section 661. While the throwback rule still applies to certain foreign trusts under Sections 665-668, unlike domestic trusts which benefit from the repeal, foreign trusts that accumulate income remain subject to the throwback tax on accumulation distributions.'
WHERE id = 4272;

-- ID 4274: Trusts and Estates
UPDATE questions SET
  explanation = 'Under IRC Section 661(a), the income distribution deduction is limited to the lesser of amounts actually distributed or distributable net income. Since DNI of $160,000 is less than the $180,000 distributed, the estate''s income distribution deduction is $160,000. The beneficiary includes $160,000 in gross income under Section 662(a). Unlike the full distribution amount, which might suggest a $180,000 deduction, the DNI ceiling under Section 661(a) prevents the estate from deducting more than its economic income, with the excess $20,000 treated as a tax-free return of corpus.'
WHERE id = 4274;

-- ID 4278: Trusts and Estates
UPDATE questions SET
  explanation = 'Under IRC Section 661(a), the income distribution deduction equals the lesser of amounts distributed ($70,000) or DNI ($85,000), yielding a $70,000 deduction. Taxable income is computed as $100,000 minus the $70,000 distribution deduction minus the $100 complex trust exemption under Section 642(b)(2), resulting in $29,900. Unlike a simple trust that must distribute all income currently and receives a $300 exemption, a complex trust retains the flexibility to accumulate income but faces highly compressed tax brackets on undistributed amounts under Section 1(e).'
WHERE id = 4278;

-- ID 4280: Trusts and Estates
UPDATE questions SET
  explanation = 'Under IRC Section 643(a) and Treas. Reg. Section 1.643(a)-0, distributable net income is reduced only by expenses allocable to trust income, not those allocable to corpus. When the trust instrument is silent, state law governs the allocation under the Uniform Principal and Income Act. Only the $2,500 of trustee fees allocated to income reduces DNI. While the $2,500 allocated to principal remains deductible on Form 1041 under Section 67(e), unlike income-allocated expenses, corpus-allocated expenses do not affect the DNI calculation that determines beneficiary taxation.'
WHERE id = 4280;

-- ID 4281: Trusts and Estates
UPDATE questions SET
  explanation = 'Under IRC Sections 671-679 (the grantor trust rules), all transactions between the grantor and the trust are disregarded for income tax purposes because the trust is treated as owned by the grantor. A sale of appreciated assets to an intentionally defective grantor trust produces no recognized gain under Rev. Rul. 85-13. However, unlike income tax treatment where the sale is invisible, the transfer is recognized for estate and gift tax purposes under IRC Chapter 11, effectively removing the assets and future appreciation from the grantor''s gross estate while deferring income tax recognition.'
WHERE id = 4281;

-- ============================================================
-- WEALTH TRANSFER AND GIFTING STRATEGIES (6 questions)
-- ============================================================

-- ID 4030: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'Under IRC Section 2512(a) and Treasury valuation regulations, the gift tax value of transferred property is its fair market value on the date of the gift, determined by what a willing buyer would pay a willing seller. For minority interests in family limited partnerships, courts and the IRS recognize valuation discounts for lack of marketability and lack of control. A 30% combined discount on the $1,000,000 interest yields a gift tax value of $700,000. Unlike publicly traded securities valued at quoted market prices, closely held entity interests require qualified appraisals reflecting their inherent illiquidity.'
WHERE id = 4030;

-- ID 12791: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'Under the net gift doctrine established in Diedrich v. Commissioner, 457 U.S. 191 (1982), when the donee agrees to pay the resulting gift tax, the taxable gift equals the fair market value minus the gift tax paid by the donee, creating a circular calculation that reduces the effective tax burden. This technique is codified in Treas. Reg. Section 25.2512-1. The donee''s payment reduces the net transfer and thus the base on which tax is computed. Unlike a traditional gift where the donor pays tax on the full FMV, the net gift structure produces a lower total tax because the tax itself reduces the taxable amount.'
WHERE id = 12791;

-- ID 14181: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'Under IRC Section 2518, a qualified disclaimer allows the surviving spouse to redirect assets into a credit shelter (bypass) trust funded with the decedent''s unused applicable exclusion amount ($14,500,000). Leonard''s exclusion shelters the trust from estate tax, and the trust assets, including future appreciation, are excluded from Carolyn''s gross estate under IRC Section 2041. Unlike an outright bequest that qualifies for the marital deduction under Section 2056 but merely defers estate tax until the surviving spouse''s death, the disclaimer strategy permanently removes the trust principal from both estates.'
WHERE id = 14181;

-- ID 14182: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'Under IRC Section 2631, the GST exemption allocated to a dynasty trust achieves an inclusion ratio of zero under Section 2642, making the trust entirely exempt from generation-skipping transfer tax. Because the trust, rather than individual beneficiaries, owns the assets, trust property is excluded from each beneficiary''s gross estate under Section 2041. Assets pass through multiple generations without additional estate tax or GSTT. Unlike outright gifts that are included in each generation''s estate and potentially taxed at 40% per transfer, the dynasty trust permanently eliminates multi-generational transfer taxes on trust assets.'
WHERE id = 14182;

-- ID 14190: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'Under IRC Section 2512(a) and Revenue Ruling 93-12, fractional (undivided) interest discounts are recognized for gift and estate tax purposes because a partial interest in real property is worth less than a proportionate share of the whole. A 25% undivided interest in $8,000,000 property has a pro rata value of $2,000,000, and the 20% discount reduces the gift tax value to $1,600,000. Unlike interests in real property owned outright where FMV equals the full appraised value, undivided interests carry inherent limitations on sale, development, and management that justify the discount.'
WHERE id = 14190;

-- ID 14663: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'Under IRC Section 6019, a donor must file Form 709 when a gift to any single donee exceeds the annual exclusion amount ($19,000 for 2026 under Section 2503(b)). The $25,000 gift to the niece exceeds the exclusion by $6,000, triggering a filing requirement. The $15,000 gift to the nephew is within the exclusion and requires no filing. Unlike gifts of future interests which require Form 709 regardless of amount under Section 2503(b), present-interest gifts at or below the annual exclusion are excluded from both taxation and filing requirements.'
WHERE id = 14663;

COMMIT;
