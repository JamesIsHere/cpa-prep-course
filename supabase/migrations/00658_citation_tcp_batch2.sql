-- Migration: Citation backfill — TCP batch 2 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for TCP section
-- Affected topics: Advanced Basis Calculations, Capital Structure Tax Planning, Entity Choice and Planning, Entity Tax Compliance: NOLs and Consolidated Returns, Individual Tax Planning: Compensation, International Tax, Multi-Jurisdictional Tax Planning, Nontaxable Dispositions, Owner-Entity Transactions, Passive Activity and At-Risk Rules, Retirement Plans and Education Savings, Trusts and Estates, Wealth Transfer and Gifting Strategies

BEGIN;

-- ============================================================
-- ADVANCED BASIS CALCULATIONS (4 questions)
-- ============================================================

-- ID 4179: Advanced Basis Calculations
UPDATE questions SET
  explanation = 'The correct answer is $125,000. Under IRC Sec. 705(a), a partner''s outside basis is adjusted annually by increasing for the partner''s distributive share of income (including tax-exempt income under Sec. 705(a)(1)(B)) and decreasing for distributions under Sec. 733. Basis = $100,000 + $30,000 income + $10,000 tax-exempt income − $15,000 distribution = $125,000. Unlike taxable income items, tax-exempt income still increases basis to prevent double taxation when the interest is later sold or distributions are received.'
WHERE id = 4179;

-- ID 4180: Advanced Basis Calculations
UPDATE questions SET
  explanation = 'The correct answer is $60,000. Under IRC Sec. 705(a), outside basis is increased by all items of income and gain and decreased by distributions and losses. Basis = $80,000 + $20,000 ordinary income + $5,000 capital gain − $10,000 distribution − $35,000 loss = $60,000. However, under Sec. 704(d), losses are only deductible to the extent of the partner''s basis, so if losses had exceeded basis, the excess would be suspended rather than creating a negative basis.'
WHERE id = 4180;

-- ID 4186: Advanced Basis Calculations
UPDATE questions SET
  explanation = 'The correct answer is $50,000. Under IRC Sec. 732(a)(1), in a current (non-liquidating) distribution, the partner''s basis in distributed property is the lesser of the property''s inside basis or the partner''s pre-distribution outside basis. Since the $50,000 inside basis is less than the $80,000 outside basis, Partner E takes a $50,000 carryover basis. Unlike a liquidating distribution under Sec. 732(b), which substitutes the partner''s outside basis, a current distribution preserves the property''s carryover basis when sufficient outside basis exists.'
WHERE id = 4186;

-- ID 4187: Advanced Basis Calculations
UPDATE questions SET
  explanation = 'The correct answer is $150,000. Under IRC Sec. 732(b), in a liquidating distribution, the partner''s basis in distributed property equals the partner''s remaining outside basis, regardless of the property''s inside basis. Partner F takes the property with a $150,000 basis (their outside basis), creating a $50,000 step-down from the $200,000 inside basis. Unlike a current distribution under Sec. 732(a), which uses the lesser of inside or outside basis, a liquidating distribution substitutes the partner''s entire remaining basis into the distributed property.'
WHERE id = 4187;

-- ============================================================
-- CAPITAL STRUCTURE TAX PLANNING (2 questions)
-- ============================================================

-- ID 4319: Capital Structure Tax Planning
UPDATE questions SET
  explanation = 'The correct answer is that the debt-to-equity ratio suggests the debt is actually equity. Under IRC Sec. 385, the IRS may recharacterize purported debt as equity when factors such as an excessive debt-to-equity ratio (here 10:1), lack of arm''s-length terms, or absence of a fixed repayment schedule indicate the instrument is equity in substance. This recharacterization converts deductible interest payments into nondeductible dividends. Unlike legitimate third-party debt, shareholder loans at extreme ratios lack the economic substance of true indebtedness.'
WHERE id = 4319;

-- ID 4320: Capital Structure Tax Planning
UPDATE questions SET
  explanation = 'The correct answer is that the interest payments are recharacterized as dividends. Under IRC Sec. 385 and related case law, when shareholder-held debt is reclassified as equity, amounts previously deducted as interest are treated as constructive dividend distributions. The corporation loses the interest deduction, increasing taxable income, and shareholders must report the payments as qualified dividends under Sec. 1(h)(11). Unlike true interest payments that are deductible under Sec. 163, reclassified amounts provide no corporate-level tax benefit.'
WHERE id = 4320;

-- ============================================================
-- ENTITY CHOICE AND PLANNING (3 questions)
-- ============================================================

-- ID 4287: Entity Choice and Planning
UPDATE questions SET
  explanation = 'The correct answer is $35,000 tax-free return of basis and $15,000 capital gain. Under IRC Sec. 1368(b), distributions from an S corporation with no accumulated E&P are tax-free to the extent of the shareholder''s stock basis and treated as gain from the sale of stock for any excess. The $50,000 distribution first reduces the $35,000 stock basis to zero (tax-free), and the remaining $15,000 is capital gain. Unlike C corporation distributions, which are dividends to the extent of E&P under Sec. 301(c), S corporation distributions follow the basis-first ordering.'
WHERE id = 4287;

-- ID 4289: Entity Choice and Planning
UPDATE questions SET
  explanation = 'The correct answer is a disregarded entity. Under IRC Sec. 7701(a) and Treas. Reg. Sec. 301.7701-3(b)(1)(ii), a domestic eligible entity with a single owner that does not elect otherwise is classified by default as a disregarded entity for federal tax purposes. The owner reports all income and deductions on their own return (Schedule C for individuals). Unlike a multi-member LLC, which defaults to partnership classification under the same regulation, a single-member LLC is ignored as a separate entity unless it affirmatively elects corporate treatment on Form 8832.'
WHERE id = 4289;

-- ID 4290: Entity Choice and Planning
UPDATE questions SET
  explanation = 'The correct answer is employer-provided health insurance premiums. Under IRC Sec. 1372, an S corporation shareholder owning more than 2% of the stock is treated as a partner (not an employee) for fringe benefit purposes, making health insurance premiums includable in W-2 wages rather than excludable under Sec. 106. The shareholder may then deduct the premiums under Sec. 162(l) on their individual return. Unlike C corporation shareholder-employees, who enjoy full exclusion under Sec. 106, more-than-2% S corporation shareholders cannot exclude these benefits from gross income.'
WHERE id = 4290;

-- ============================================================
-- ENTITY TAX COMPLIANCE: NOLS AND CONSOLIDATED RETURNS (6 questions)
-- ============================================================

-- ID 4068: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'The correct answer is indefinitely. Under IRC Sec. 172(b)(1)(A), as amended by the Tax Cuts and Jobs Act, net operating losses arising in tax years beginning after December 31, 2017 may be carried forward indefinitely with no expiration. However, under Sec. 172(a)(2), the NOL deduction is limited to 80% of taxable income in any carryforward year. Unlike pre-TCJA rules that allowed a 20-year carryforward and a 2-year carryback, current law eliminates both the time limit and the general carryback provision.'
WHERE id = 4068;

-- ID 4069: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'The correct answer is $400,000. Under IRC Sec. 172(a)(2), the NOL deduction is limited to 80% of taxable income computed without regard to the NOL deduction. Here, 80% × $500,000 = $400,000. Since the $400,000 carryforward does not exceed the $400,000 limitation, Apex may deduct the full $400,000 NOL. Unlike the pre-TCJA rules that permitted a 100% offset, the current 80% cap ensures at least 20% of taxable income remains subject to current-year tax.'
WHERE id = 4069;

-- ID 4070: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'The correct answer is $260,000 remaining carryforward. Under IRC Sec. 172(a)(2), the NOL deduction is capped at 80% of taxable income: $300,000 × 80% = $240,000. The unused portion ($500,000 − $240,000 = $260,000) carries forward indefinitely under Sec. 172(b)(1)(A). Unlike the pre-TCJA regime where the full NOL could offset 100% of taxable income, the 80% limitation ensures that at least $60,000 of Delta''s current-year income is taxed.'
WHERE id = 4070;

-- ID 4071: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'The correct answer is farming businesses. Under IRC Sec. 172(b)(1)(B), farming losses (as defined in Sec. 461(j)) retain a 2-year carryback election even after the TCJA eliminated the general carryback. Property and casualty insurance companies also retain carryback provisions under Sec. 172(b)(1)(C). Unlike these special categories, general C corporations and most other taxpayers may only carry NOLs forward indefinitely, whereas S corporations and partnerships do not generate entity-level NOLs at all.'
WHERE id = 4071;

-- ID 4072: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'The correct answer is that they may elect to file a consolidated return. Under IRC Sec. 1504(a), an affiliated group exists when a common parent directly owns at least 80% of the total voting power and 80% of the total value of at least one includible corporation. Parent Corp''s 85% ownership of both voting stock and value exceeds both thresholds, qualifying the group. Unlike a controlled group under Sec. 1563, which uses a 80% voting or value test, the affiliated group definition under Sec. 1504(a) requires meeting both the voting and value tests simultaneously.'
WHERE id = 4072;

-- ID 4073: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'The correct answer is no, they cannot file a consolidated return. Under IRC Sec. 1504(a)(2), affiliation requires the parent to own at least 80% of both the total voting power and the total value of the subsidiary''s stock. Ajax''s 75% ownership fails both the voting power and value thresholds. Without meeting the 80% minimum, no affiliated group exists and a consolidated return is unavailable. Unlike situations where a parent owns exactly 80%, even a single percentage point below the threshold disqualifies the election.'
WHERE id = 4073;

-- ============================================================
-- INDIVIDUAL TAX PLANNING: COMPENSATION (4 questions)
-- ============================================================

-- ID 3926: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = 'The correct answer is that trust assets remain subject to creditors'' claims in bankruptcy. Under IRC Sec. 409A and Rev. Proc. 92-64, a rabbi trust is a grantor trust established by an employer to informally fund nonqualified deferred compensation (NQDC) obligations. The critical feature is that assets must remain available to the employer''s general creditors upon insolvency, preventing constructive receipt under Sec. 451. Unlike a secular trust where assets are secured for the executive (triggering immediate taxation), the rabbi trust''s creditor exposure defers taxation until actual distribution.'
WHERE id = 3926;

-- ID 3927: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = 'The correct answer is that the spread at exercise is ordinary income due to a disqualifying disposition. Under IRC Sec. 422(a), ISO favorable treatment requires holding shares for at least two years from the grant date and one year from the exercise date. Selling 10 months after exercise fails the one-year holding requirement, triggering a disqualifying disposition under Sec. 421(b). The $15 spread at exercise ($40 − $25) is ordinary income, and the additional $15 gain ($55 − $40) is short-term capital gain. Unlike a qualifying disposition where the entire gain would be long-term capital gain, a disqualifying disposition bifurcates the gain into ordinary income and capital gain components.'
WHERE id = 3927;

-- ID 3932: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = 'The correct answer is that ISOs are not taxed at exercise while NSOs are. Under IRC Sec. 421(a), no regular income tax is recognized upon exercise of an incentive stock option if the statutory holding periods are met. By contrast, under Sec. 83(a), NSO exercise triggers ordinary income equal to the spread between FMV and exercise price. However, under Sec. 56(b)(3), the ISO spread is an AMT preference item at exercise. Unlike NSOs where the employer receives a compensation deduction under Sec. 162, ISOs generate no employer deduction unless a disqualifying disposition occurs.'
WHERE id = 3932;

-- ID 3935: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = 'The correct answer is $85,000. Under IRC Sec. 61(a), both the $75,000 signing bonus and the $10,000 moving expense reimbursement are includable in gross income. The TCJA suspended the exclusion for employer-paid moving expenses under Sec. 132(a)(6) for tax years 2018 through 2025, and this suspension has been extended. The only exception under Sec. 217(g) applies to active-duty military members. Unlike pre-TCJA treatment where qualified moving expenses were excludable, current law requires the full $85,000 to be reported as taxable compensation.'
WHERE id = 3935;

-- ============================================================
-- INTERNATIONAL TAX (3 questions)
-- ============================================================

-- ID 4108: International Tax
UPDATE questions SET
  explanation = 'The correct answer is $1,200,000. Under IRC Sec. 951A, GILTI equals a U.S. shareholder''s net CFC tested income minus a deemed tangible income return (DTIR) equal to 10% of qualified business asset investment (QBAI). Here, DTIR = 10% × $8,000,000 = $800,000, and GILTI = $2,000,000 − $800,000 = $1,200,000. The 10% QBAI return represents the routine return on tangible assets excluded from GILTI. Unlike Subpart F income under Sec. 952, which targets specific passive and mobile income categories, GILTI broadly captures excess returns attributable to intangible assets.'
WHERE id = 4108;

-- ID 4110: International Tax
UPDATE questions SET
  explanation = 'The correct answer is $1,500,000 of foreign-derived deduction eligible income (FDDEI). Under IRC Sec. 250(b), FDDEI equals foreign-derived gross income minus allocable deductions: $3,000,000 − $1,500,000 = $1,500,000. This FDDEI is the basis for computing the FDII deduction, which is 37.5% of the FDII amount, yielding an effective rate of 13.125% on qualified foreign-derived income. Unlike GILTI, which taxes income earned by foreign subsidiaries, FDII incentivizes domestic production for foreign markets by providing a reduced rate on the deemed intangible income portion.'
WHERE id = 4110;

-- ID 4111: International Tax
UPDATE questions SET
  explanation = 'The correct answer is 13.125%. Under IRC Sec. 250(a)(1), a domestic C corporation may deduct 37.5% of its FDII, reducing the effective federal tax rate from 21% to 13.125% (21% × 62.5% = 13.125%). This preferential rate encourages U.S. corporations to retain intangible income-generating activities domestically rather than shifting them offshore. Unlike the GILTI deduction under Sec. 250(a)(1)(B), which provides a 50% deduction yielding a 10.5% effective rate on foreign earnings, the FDII deduction specifically targets income derived from serving foreign markets through domestic operations.'
WHERE id = 4111;

-- ============================================================
-- MULTI-JURISDICTIONAL TAX PLANNING (2 questions)
-- ============================================================

-- ID 4969: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'The correct answer is that the availability heuristic causes auditors to overweight vivid recent events. Under IRC Sec. 7214 and AU-C Sec. 200.A55, professional skepticism requires an unbiased mindset. P.L. 86-272 (15 U.S.C. Sec. 381–384) is the relevant multi-jurisdictional standard, but this question addresses cognitive bias in audit. The availability heuristic leads auditors to disproportionately focus on risks from memorable past events (like inventory fraud) while underweighting statistically more likely risks. Unlike confirmation bias, which seeks evidence supporting a preexisting belief, the availability heuristic distorts risk assessment by overemphasizing recently encountered or vivid scenarios.'
WHERE id = 4969;

-- ID 4971: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'The correct answer is that the $2 million in sales is included in State A''s sales factor numerator. Under IRC Sec. 11 and state conformity statutes, corporate income is apportioned among states using sales-based formulas. Throwback rules, based on UDITPA Sec. 16, require that sales of tangible personal property shipped to a state where the seller has no nexus be "thrown back" to the shipping state''s sales factor numerator. This prevents "nowhere income" that escapes all state taxation. Unlike states without throwback rules, where such sales reduce the overall apportionment percentage, throwback states assign these sales to the originating state.'
WHERE id = 4971;

-- ============================================================
-- NONTAXABLE DISPOSITIONS (3 questions)
-- ============================================================

-- ID 4347: Nontaxable Dispositions
UPDATE questions SET
  explanation = 'The correct answer is $30,000. Under IRC Sec. 453(c), gain recognized under the installment method equals payments received multiplied by the gross profit ratio. In Year 1: $50,000 × 60% = $30,000 of gain recognized. The remaining $20,000 represents a tax-free recovery of the seller''s basis. Unlike a standard cash-method sale where the entire gain is recognized in the year of sale, the installment method under Sec. 453 spreads gain recognition proportionally across all payment years.'
WHERE id = 4347;

-- ID 4351: Nontaxable Dispositions
UPDATE questions SET
  explanation = 'The correct answer is 3 years. Under IRC Sec. 1033(g)(4), when real property held for productive use in a trade or business or for investment is involuntarily converted through condemnation, the replacement period extends to 3 years from the close of the first taxable year in which any gain is realized. This longer period recognizes the difficulty of replacing condemned real estate. Unlike voluntary conversions and conversions of personal property, which allow only a 2-year replacement period under Sec. 1033(a)(2)(B), condemned real property receives the extended 3-year window.'
WHERE id = 4351;

-- ID 4353: Nontaxable Dispositions
UPDATE questions SET
  explanation = 'The correct answer is $300,000. Under IRC Sec. 1033(b), the basis of replacement property acquired in an involuntary conversion equals the cost of the replacement property minus the gain deferred. Here, basis = $350,000 − $100,000 deferred gain = $250,000 + $50,000 recognized gain = $300,000. The deferred gain is embedded in the reduced basis so it will be recognized upon eventual disposition. Unlike a like-kind exchange under Sec. 1031 where basis is computed by reference to the relinquished property, involuntary conversion basis starts from the replacement property''s cost.'
WHERE id = 4353;

-- ============================================================
-- OWNER-ENTITY TRANSACTIONS (5 questions)
-- ============================================================

-- ID 4145: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'The correct answer is $90,000. Under IRC Sec. 707(c), guaranteed payments are determined without regard to partnership income and are deductible by the partnership. After the $50,000 guaranteed payment, remaining partnership income is $150,000 − $50,000 = $100,000. Partner C''s 40% distributive share under Sec. 704(b) is $40,000. Total income = $50,000 + $40,000 = $90,000. Unlike a partner''s distributive share, which fluctuates with partnership performance, guaranteed payments under Sec. 707(c) are fixed amounts that the partner receives regardless of whether the partnership has sufficient income.'
WHERE id = 4145;

-- ID 4146: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'The correct answer is that $30,000 of distributions will be reclassified as wages subject to employment taxes. Under IRC Sec. 3121(a) and established IRS guidance (e.g., Rev. Rul. 74-44), S corporation shareholder-employees must receive reasonable compensation for services before taking distributions. If the IRS determines reasonable compensation is $90,000 but only $60,000 was paid as wages, the $30,000 shortfall is reclassified as wages subject to FICA and Medicare taxes. Unlike distributions, which pass through free of payroll taxes, wages are subject to the employer and employee shares of FICA under Sec. 3111 and Sec. 3101.'
WHERE id = 4146;

-- ID 4147: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'The correct answer is that the IRS may reclassify a portion of distributions as wages. Under IRC Sec. 3121(a) and case law such as David E. Watson, P.C. v. United States, S corporation shareholder-employees must receive reasonable compensation for services performed before taking non-wage distributions. There is no statutory safe harbor or fixed minimum—reasonable compensation depends on the shareholder''s duties, experience, hours, and comparable industry wages. Unlike a sole proprietorship where all net income is subject to self-employment tax, S corporations allow non-wage distributions, but only after paying reasonable compensation.'
WHERE id = 4147;

-- ID 4149: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'The correct answer is $150,000. Under IRC Sec. 707(a)(2)(B) and Treas. Reg. Sec. 1.707-3, when a partner contributes property and receives a related distribution within two years, there is a presumption that the transactions constitute a disguised sale. The gain equals the amount realized ($200,000 cash distribution) minus the partner''s basis in the contributed property ($50,000) = $150,000. Unlike a genuine contribution-and-distribution sequence under Sec. 721 and Sec. 731 (which would be largely tax-free), the disguised sale rules recharacterize the transaction as a taxable sale.'
WHERE id = 4149;

-- ID 4151: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'The correct answer is a constructive dividend to the shareholder and deemed interest income to the corporation. Under IRC Sec. 7872(a), below-market loans between a corporation and shareholder are recharacterized: forgone interest ($150,000 × 4% = $6,000) is treated as a deemed transfer from the corporation to the shareholder (constructive dividend) and a deemed interest payment back from the shareholder to the corporation. Unlike arm''s-length loans where actual interest is paid, Sec. 7872 imputes both the dividend and the interest to prevent avoidance of the dividend and interest income rules.'
WHERE id = 4151;

-- ============================================================
-- PASSIVE ACTIVITY AND AT-RISK RULES (2 questions)
-- ============================================================

-- ID 922: Passive Activity and At-Risk Rules
UPDATE questions SET
  explanation = 'The correct answer is that suspended losses are added to the property''s basis. Under IRC Sec. 469(j)(6), when a passive activity interest is transferred by gift, suspended passive activity losses are not allowed as a deduction and are not transferred to the donee. Instead, the suspended losses increase the donor''s basis in the property immediately before the gift: $50,000 + $30,000 = $80,000, which becomes the donee''s carryover basis under Sec. 1015. Unlike a disposition by sale under Sec. 469(g), which triggers full recognition of suspended losses, a gift permanently defers the losses into basis.'
WHERE id = 922;

-- ID 3960: Passive Activity and At-Risk Rules
UPDATE questions SET
  explanation = 'The correct answer is the 500-hour test. Under IRC Sec. 469(h)(1) and Treas. Reg. Sec. 1.469-5T(a)(1), a taxpayer materially participates if they participate in the activity for more than 500 hours during the taxable year. This is one of seven tests, which also include the substantially-all test, the 100-hour/not-less-than-others test, significant participation aggregation, 5-of-10-year history, 3-year personal service history, and the facts-and-circumstances test. Unlike passive activities where losses are suspended under IRC Sec. 469(a), activities in which the taxpayer materially participates allow losses to offset nonpassive income.'
WHERE id = 3960;

-- ============================================================
-- RETIREMENT PLANS AND EDUCATION SAVINGS (6 questions)
-- ============================================================

-- ID 950: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'The correct answer is that the distribution is included in gross income and subject to the 10% early withdrawal penalty. Under IRC Sec. 72(t), distributions from a 401(k) plan before age 59½ are subject to a 10% additional tax unless an exception applies. Hardship is not listed as an exception under Sec. 72(t)(2). The $30,000 is fully includable in gross income under Sec. 402(a) and subject to the 10% penalty. Unlike distributions for medical expenses exceeding 7.5% of AGI or disability under Sec. 72(t)(2)(B) and (A), hardship distributions receive no penalty exemption.'
WHERE id = 950;

-- ID 951: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'The correct answer is 10 years. Under IRC Sec. 401(a)(9)(H), as enacted by the SECURE Act of 2019, most non-spouse designated beneficiaries who inherit an IRA from a decedent dying after December 31, 2019 must distribute the entire account by December 31 of the 10th year following the year of death. This replaced the former "stretch IRA" rules that allowed distributions over the beneficiary''s life expectancy. Unlike eligible designated beneficiaries (surviving spouses, minor children, disabled individuals, and those not more than 10 years younger), standard designated beneficiaries are subject to the 10-year rule.'
WHERE id = 951;

-- ID 4032: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'The correct answer is $24,000. Under IRC Sec. 402(g), the maximum elective deferral to a 401(k) plan for 2026 for an employee under age 50 is $24,000. This limit applies across all 401(k) plans in which the employee participates. Employees age 50 and older may make an additional catch-up contribution of $7,000 under Sec. 414(v), bringing their total to $31,000. Unlike employer matching or profit-sharing contributions, which are subject to the separate Sec. 415(c) limit of $70,000, elective deferrals are constrained by the Sec. 402(g) ceiling.'
WHERE id = 4032;

-- ID 4034: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'The correct answer is approximately $50,000. Under IRC Sec. 408(j) and Sec. 402(h), the maximum deductible SEP IRA contribution for a self-employed individual is 25% of net self-employment income after the deduction for one-half of self-employment tax. The effective contribution rate is approximately 20% of net self-employment earnings before the SE tax adjustment. On $200,000, this yields approximately $50,000, well below the 2026 annual Sec. 415(c) limit of $70,000. Unlike employee contributions, which are capped by Sec. 402(g) deferral limits, SEP contributions are purely employer-funded and limited by the 25% compensation ceiling.'
WHERE id = 4034;

-- ID 4035: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'The correct answer is that the phaseout range for single filers is $150,000 to $161,000 MAGI. Under IRC Sec. 408A(c)(3), the ability to make direct Roth IRA contributions phases out based on modified AGI. For 2026, single filers phase out between $150,000 and $161,000. At $160,000 MAGI, Elena falls within the phaseout range and may make only a reduced contribution. Unlike traditional IRA deductibility limits, which vary by active participant status, Roth IRA eligibility depends solely on MAGI; however, taxpayers above the limit may still use a backdoor Roth conversion, which has no income ceiling.'
WHERE id = 4035;

-- ID 4036: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'The correct answer is that the full $100,000 is included in ordinary income. Under IRC Sec. 408(d)(1) and Sec. 408A(d)(3), converting pre-tax traditional IRA funds to a Roth IRA is a taxable event, with the entire converted amount included in gross income for the year of conversion. The 10% early withdrawal penalty under Sec. 72(t) does not apply to Roth conversions regardless of the taxpayer''s age. Unlike qualified Roth IRA distributions that are tax-free under Sec. 408A(d)(2), the conversion itself triggers full recognition of the previously untaxed amounts.'
WHERE id = 4036;

-- ============================================================
-- TRUSTS AND ESTATES (5 questions)
-- ============================================================

-- ID 1020: Trusts and Estates
UPDATE questions SET
  explanation = 'The correct answer is $0 taxable to the beneficiary. Under IRC Sec. 652(b) and Sec. 662(b), income distributed by a trust retains its character in the hands of the beneficiary. Since the trust''s distributable net income (DNI) consists entirely of tax-exempt municipal bond interest under Sec. 103, the distribution carries out tax-exempt income to the beneficiary. Unlike taxable interest or dividend income that would be included in the beneficiary''s gross income, tax-exempt income passes through the trust without losing its exempt character.'
WHERE id = 1020;

-- ID 1021: Trusts and Estates
UPDATE questions SET
  explanation = 'The correct answer is $40,000 ordinary income, $15,000 capital gains, and $5,000 tax-exempt income. Under IRC Sec. 664(b) and Treas. Reg. Sec. 1.664-1(d)(1), charitable remainder trust distributions are characterized using a four-tier ordering system: (1) ordinary income, (2) capital gains, (3) other (tax-exempt) income, and (4) corpus. The $60,000 distribution exhausts all three income tiers ($40,000 + $15,000 + $5,000 = $60,000) before reaching corpus. Unlike simple or complex trusts that use DNI-based proportional allocation under IRC Sec. 652 and 662, CRATs apply strict worst-in-first-out ordering.'
WHERE id = 1021;

-- ID 4246: Trusts and Estates
UPDATE questions SET
  explanation = 'The correct answer is $50,000. Under IRC Sec. 651(a), a simple trust is required to distribute all of its income currently. Since the trust''s net accounting income is $50,000, the trustee must distribute the full $50,000 to the beneficiary. The trust then claims an income distribution deduction under Sec. 651(b) equal to the lesser of the amount distributed or distributable net income, eliminating the income from the trust''s taxable base. Unlike a complex trust under Sec. 661 that may accumulate income, a simple trust has no discretion to retain current income.'
WHERE id = 4246;

-- ID 4247: Trusts and Estates
UPDATE questions SET
  explanation = 'The correct answer is that a simple trust must distribute all income currently. Under IRC Sec. 651, a simple trust is defined by three requirements: (1) the trust instrument requires distribution of all income currently, (2) the trust makes no charitable contributions, and (3) the trust does not distribute corpus. A complex trust, governed by Sec. 661–663, may accumulate income, make charitable distributions, and distribute principal. Unlike a complex trust''s flexible distribution provisions, a simple trust''s mandatory current income distribution leaves no room for trustee discretion over income timing.'
WHERE id = 4247;

-- ID 4248: Trusts and Estates
UPDATE questions SET
  explanation = 'The correct answer is $30,000. Under IRC Sec. 661(a), a complex trust''s income distribution deduction equals the lesser of distributable net income (DNI) or amounts actually distributed to beneficiaries. Here, DNI is $60,000 and the actual distribution is $30,000, so the deduction is $30,000. The remaining $30,000 of DNI is retained by the trust and taxed at the trust''s compressed rate schedule under Sec. 1(e). Unlike a simple trust under Sec. 651 that must distribute all income, a complex trust''s discretionary accumulation keeps undistributed income taxable at the entity level.'
WHERE id = 4248;

-- ============================================================
-- WEALTH TRANSFER AND GIFTING STRATEGIES (5 questions)
-- ============================================================

-- ID 1301: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'The correct answer is approximately $7 million. Under IRC Sec. 2010(c), the TCJA temporarily doubled the basic exclusion amount (BEA) from approximately $5.49 million to $11.18 million beginning in 2018. This increase was originally scheduled to sunset after December 31, 2025, reverting to the pre-TCJA level of approximately $5 million indexed for inflation from 2011—projected at roughly $7 million by 2026. H.R. 1 extended the higher exemption through 2029. Unlike the permanent pre-TCJA exemption level, the doubled amount remains temporary and subject to future legislative action.'
WHERE id = 1301;

-- ID 3994: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'The correct answer is $19,000 per donee. Under IRC Sec. 2503(b), the annual gift tax exclusion for 2026 is $19,000 per donee, indexed for inflation under Sec. 2503(b)(2). Evelyn may give $19,000 to each grandchild without filing a gift tax return or using any lifetime exemption. Married couples may elect gift-splitting under Sec. 2513 to combine their exclusions for $38,000 per donee. Unlike taxable gifts that reduce the unified credit under Sec. 2505, gifts within the annual exclusion are entirely excluded from the gift tax computation.'
WHERE id = 3994;

-- ID 3996: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'The correct answer is $13.99 million. Under IRC Sec. 2010(c)(3), the basic exclusion amount (also called the applicable exclusion amount or unified credit equivalent) for 2026 is $13.99 million per individual, indexed for inflation. This amount shelters cumulative lifetime taxable gifts and the taxable estate from the 40% federal estate and gift tax under Sec. 2001(c). Married couples may effectively double this to $27.98 million through the portability election under Sec. 2010(c)(4). Unlike the annual exclusion under Sec. 2503(b), the lifetime exemption is a cumulative cap that is reduced by each taxable gift made.'
WHERE id = 3996;

-- ID 3997: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'The correct answer is $56,000. Under IRC Sec. 2503(a) and Sec. 2512(a), the taxable gift equals the fair market value of the property transferred ($75,000) minus the annual exclusion ($19,000 under Sec. 2503(b)), which equals $56,000. The donor''s adjusted basis of $30,000 is irrelevant because gifts are valued at FMV on the date of transfer, not at the donor''s cost basis. Unlike income tax where basis determines gain, gift tax is computed on the full fair market value of the transferred property reduced only by applicable exclusions and deductions.'
WHERE id = 3997;

-- ID 3999: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'The correct answer is to convert future-interest gifts into present-interest gifts qualifying for the annual exclusion. Under IRC Sec. 2503(b), the annual gift tax exclusion applies only to gifts of a present interest. Contributions to an irrevocable trust are generally future interests, ineligible for the exclusion. A Crummey power, established under Crummey v. Commissioner, 397 F.2d 82 (9th Cir. 1968), gives beneficiaries a temporary withdrawal right (typically 30–60 days) that converts the transfer into a present interest. Unlike direct gifts to individuals, which automatically qualify as present interests, trust contributions require Crummey powers to access the annual exclusion.'
WHERE id = 3999;

COMMIT;
