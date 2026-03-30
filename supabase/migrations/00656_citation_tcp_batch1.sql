-- Migration: Citation backfill — TCP batch 1 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for TCP section
-- Affected topics: Advanced Basis Calculations, Capital Structure Tax Planning, Entity Choice and Planning, Entity Formation and Restructuring, Entity Tax Compliance: NOLs and Consolidated Returns, Individual Tax Planning: Compensation, International Tax, Multi-Jurisdictional Tax Planning, Nontaxable Dispositions, Owner-Entity Transactions, Passive Activity and At-Risk Rules, Retirement Plans and Education Savings, Trusts and Estates, Wealth Transfer and Gifting Strategies

BEGIN;

-- ============================================================
-- ADVANCED BASIS CALCULATIONS (4 questions)
-- ============================================================

-- ID 1002: Advanced Basis Calculations
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 732(a)(2), in a current (non-liquidating) partnership distribution, a partner''s basis in distributed property cannot exceed the partner''s outside basis (reduced by any cash received in the same distribution). Because the partner''s outside basis of $50,000 is less than the property''s inside basis of $70,000, the partner takes a $50,000 carryover basis limited to outside basis. Unlike a liquidating distribution under Section 732(b), where the partner''s entire remaining basis is allocated to distributed property, a current distribution caps the property basis at outside basis to prevent the creation of a loss without an actual economic disposition.$EXPL$
WHERE id = 1002;

-- ID 1003: Advanced Basis Calculations
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 301(c), distributions from a C corporation are treated as dividends to the extent of the corporation''s earnings and profits (E&P). Because the corporation has $50,000 of accumulated E&P, which exceeds the $30,000 distribution, the entire $30,000 is a taxable dividend under Section 301(c)(1). The shareholder''s stock basis of $20,000 is not affected because the distribution is fully covered by E&P. Unlike an S corporation distribution under Section 1368, which first reduces stock basis, a C corporation distribution is characterized solely by reference to E&P without regard to the shareholder''s basis.$EXPL$
WHERE id = 1003;

-- ID 1006: Advanced Basis Calculations
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1366(d)(1)(A) and Section 1367(b)(2)(B), when an S corporation shareholder''s losses have reduced both stock basis and debt basis, subsequent income restores debt basis first (up to its original amount) before increasing stock basis. This restoration order under Treas. Reg. Section 1.1367-2(c) is the reverse of the loss absorption order, ensuring the shareholder''s loan is made whole before stock basis increases. Unlike the loss deduction sequence, which reduces stock basis first and then debt basis under Section 1367(b)(2)(A), the income restoration sequence prioritizes debt basis to preserve the shareholder''s ability to recover loan principal tax-free.$EXPL$
WHERE id = 1006;

-- ID 1007: Advanced Basis Calculations
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 722 and Section 752, a partner''s initial outside basis equals cash contributed ($50,000) minus the decrease in individual liabilities assumed by the partnership ($30,000), plus the partner''s share of partnership liabilities ($30,000 x 40% = $12,000). The net result is $50,000 - $30,000 + $12,000 = $32,000. Section 752(a) treats a partner''s share of partnership liabilities as a deemed contribution, while Section 752(b) treats the partnership''s assumption of a partner''s liability as a deemed distribution. Unlike a corporate contribution under Section 358, partnership basis calculations must account for the partner''s allocable share of all partnership liabilities.$EXPL$
WHERE id = 1007;

-- ============================================================
-- CAPITAL STRUCTURE TAX PLANNING (2 questions)
-- ============================================================

-- ID 1226: Capital Structure Tax Planning
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 163(a), interest paid on corporate debt is deductible as a business expense, reducing the corporation''s taxable income. This deductibility creates a "tax shield" that makes debt financing less expensive on an after-tax basis than equity financing. Unlike dividends paid to shareholders, which are distributions of after-tax earnings under IRC Section 301 and are not deductible by the corporation, interest payments directly reduce the corporation''s tax liability, although Section 163(j) may limit the deduction to 30% of adjusted taxable income for certain taxpayers.$EXPL$
WHERE id = 1226;

-- ID 4317: Capital Structure Tax Planning
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 301(c), dividends paid by a C corporation to shareholders are distributions of after-tax earnings and are not deductible by the corporation. This non-deductibility is the fundamental cause of double taxation — income is taxed at the 21% corporate rate under Section 11(b), and the after-tax earnings distributed as dividends are taxed again at the shareholder level at qualified dividend rates under Section 1(h)(11). Unlike interest payments on corporate debt, which are deductible under Section 163(a) and reduce the corporation''s taxable income, dividends provide no tax benefit to the distributing corporation.$EXPL$
WHERE id = 4317;

-- ============================================================
-- ENTITY CHOICE AND PLANNING (3 questions)
-- ============================================================

-- ID 1039: Entity Choice and Planning
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 199A, the qualified business income (QBI) deduction allows eligible taxpayers to deduct up to 20% of qualified business income from pass-through entities, reducing the effective tax rate on S corporation income. With only 80% of income taxed at the owner''s 37% marginal rate, the effective rate is 80% x 37% = 29.6%. However, C corporation income taxed at the flat 21% rate under Section 11(b) faces additional shareholder-level tax when distributed as dividends under Section 301, whereas S corporation income under Section 1366 is subject to only one level of taxation at the owner level.$EXPL$
WHERE id = 1039;

-- ID 1302: Entity Choice and Planning
UPDATE questions SET
  explanation = $EXPL$Under H.R. 1 (the One Big Beautiful Bill), the TCJA individual income tax provisions originally set to sunset after 2025 were extended, including the 37% top marginal rate under IRC Section 1, the nearly doubled standard deduction under Section 63(c), wider tax brackets, and the $10,000 SALT deduction cap under Section 164(b)(6). These provisions preserve the TCJA''s individual rate structure through the extension period. Choice A is incorrect because no flat 25% rate was enacted — the progressive rate structure was maintained, while Choice C is incorrect because the standard deduction was increased rather than eliminated under TCJA.$EXPL$
WHERE id = 1302;

-- ID 4286: Entity Choice and Planning
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 11(b), as amended by the Tax Cuts and Jobs Act, C corporations are taxed at a flat 21% rate on all taxable income, resulting in $200,000 x 21% = $42,000 of federal income tax. This flat rate replaced the prior graduated rate structure that ranged from 15% to 35%. Unlike S corporations under Section 1366, which pass income through to shareholders for taxation at individual rates, C corporations pay entity-level tax, and shareholders are taxed again on distributions under Section 301.$EXPL$
WHERE id = 4286;

-- ============================================================
-- ENTITY FORMATION AND RESTRUCTURING (1 questions)
-- ============================================================

-- ID 4986: Entity Formation and Restructuring
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 368(a)(1)(A), a Type A reorganization is a statutory merger or consolidation effected under applicable corporate law. The key requirement is compliance with state, federal, or foreign merger statutes. Type A reorganizations offer the most flexible consideration requirements — the acquiring corporation may use a mix of stock, cash, and other property, subject to the judicial continuity of interest and continuity of business enterprise doctrines. Unlike a Type B reorganization under Section 368(a)(1)(B), which requires solely voting stock as consideration, or a Type C reorganization under Section 368(a)(1)(C), which requires substantially all assets for voting stock, Type A imposes no statutory limitation on the form of consideration.$EXPL$
WHERE id = 4986;

-- ============================================================
-- ENTITY TAX COMPLIANCE: NOLS AND CONSOLIDATED RETURNS (6 questions)
-- ============================================================

-- ID 953: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 172(a) as amended by the TCJA, post-2017 net operating losses may offset only 80% of taxable income in any carryforward year. The maximum NOL deduction is $500,000 x 80% = $400,000, leaving taxable income of $100,000 after the NOL. The remaining $200,000 of unused NOL carries forward indefinitely under Section 172(b)(1)(A)(ii). Unlike pre-TCJA NOLs, which could offset 100% of taxable income and included a two-year carryback, post-2017 NOLs are subject to the 80% limitation and generally cannot be carried back.$EXPL$
WHERE id = 953;

-- ID 955: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = $EXPL$Under Treas. Reg. Section 1.1502-11 and Section 1.1502-13, filing a consolidated return provides two key advantages here. First, Subsidiary B''s $1,200,000 loss offsets Subsidiary A''s income dollar-for-dollar in the current year under the consolidated taxable income computation. Second, the $200,000 intercompany gain on the inventory sale is deferred under Treas. Reg. Section 1.1502-13 until the inventory leaves the group. Consolidated taxable income equals $3,000,000 minus $1,200,000 minus $200,000 = $1,600,000, producing $336,000 in tax at 21%. Unlike separate filing, where Subsidiary B''s loss creates only an NOL carryforward with no current benefit and the intercompany gain is immediately recognized, consolidation saves $336,000 in current-year tax.$EXPL$
WHERE id = 955;

-- ID 958: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = $EXPL$Under Treas. Reg. Section 1.1502-21(b)(2), when a member departs a consolidated group, it takes its apportioned share of the consolidated net operating loss (CNOL) based on the member''s contribution to the loss. Member A contributed $200,000 of the $300,000 CNOL, so it takes $200,000 upon departure. The remaining $100,000 attributable to Member B stays with the continuing group. Unlike the SRLY (separate return limitation year) rules under Treas. Reg. Section 1.1502-21(c), which limit losses brought into a group, the departure apportionment rules allocate existing CNOLs proportionally based on each member''s contribution.$EXPL$
WHERE id = 958;

-- ID 960: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 172(a) and (b) as amended by the Tax Cuts and Jobs Act, NOLs arising in tax years after December 31, 2017 may be carried forward indefinitely but are limited to 80% of taxable income in any carryforward year. The TCJA also eliminated the two-year carryback for most taxpayers, with limited exceptions for farming losses under Section 172(b)(1)(B). Choice B is incorrect because the two-year carryback with 20-year carryforward and no income limitation was the pre-TCJA rule, while Choice C is incorrect because post-TCJA NOLs do not expire but are subject to the 80% limitation rather than being unlimited.$EXPL$
WHERE id = 960;

-- ID 962: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = $EXPL$Under Treas. Reg. Section 1.1502-13(c), gains on intercompany transactions within a consolidated group are deferred and taken into account under the matching rule. For depreciable property, the $40,000 deferred gain ($120,000 sale price minus $80,000 basis) is recognized over the asset''s remaining useful life as the buying member claims depreciation on the higher intercompany purchase price. This matching rule ensures the selling member''s gain is triggered as the corresponding depreciation deductions offset the buying member''s income. Unlike separate filing, where the $40,000 gain would be immediately recognized by the selling corporation, consolidation defers intercompany gains until a realization event occurs outside the group.$EXPL$
WHERE id = 962;

-- ID 965: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1504(b)(8), S corporations are excluded from the definition of "includible corporation" and therefore cannot be members of an affiliated group filing a consolidated return. Only domestic C corporations meeting the 80% ownership test under Section 1504(a)(2) may join the consolidated group. Similarly, REITs are excluded under Section 1504(b)(6). Although the REIT in this scenario is also ineligible, the S corporation is the clearest exclusion because Section 1361 and Section 1504 are mutually exclusive regimes, whereas a C corporation and a manufacturing C corporation may both be included in the consolidated return.$EXPL$
WHERE id = 965;

-- ============================================================
-- INDIVIDUAL TAX PLANNING: COMPENSATION (4 questions)
-- ============================================================

-- ID 903: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 422(a), gain from the sale of shares acquired through an incentive stock option (ISO) is treated as long-term capital gain if the taxpayer meets both holding period requirements: the shares must be held at least two years from the grant date and at least one year from the exercise date. Here, 26 months exceeds the two-year grant requirement and 14 months exceeds the one-year exercise requirement, so the entire gain qualifies as long-term capital gain. Unlike a disqualifying disposition under Section 421(b), where the spread at exercise would be recharacterized as ordinary income, a qualifying disposition treats all gain as capital gain.$EXPL$
WHERE id = 903;

-- ID 907: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 56(b)(3), the spread between the fair market value and the exercise price of an incentive stock option at the time of exercise is an adjustment for alternative minimum tax (AMT) purposes. The AMT adjustment equals ($60 - $25) x 500 shares = $17,500, which is added to alternative minimum taxable income in the exercise year (assuming the shares are not sold in the same calendar year). Unlike nonqualified stock options under Section 83(a), where the spread is recognized as ordinary income for regular tax purposes at exercise, ISOs generate no regular tax consequence at exercise but trigger this AMT preference item.$EXPL$
WHERE id = 907;

-- ID 909: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 423(c), in a qualifying disposition of shares acquired through an employee stock purchase plan (ESPP), ordinary income is limited to the lesser of the discount at the grant date or the actual gain on sale. The discount at grant date is 15% x $48 x 200 = $1,440, and the actual gain is ($65 - $42.50) x 200 = $4,500. The lesser amount of $1,440 is ordinary income, and the remaining $3,060 is long-term capital gain under Section 1222(3). Unlike a disqualifying disposition under Section 421(b), where the entire spread at purchase ($50 - $42.50 = $7.50 per share) would be ordinary income, the qualifying disposition limits ordinary income to the grant-date discount.$EXPL$
WHERE id = 909;

-- ID 3925: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 83(a), when nonqualified stock options (NSOs) are exercised, the spread between the fair market value and the exercise price is recognized as ordinary income in the year of exercise. The taxable amount is ($50 - $15) x 200 shares = $7,000, which is also subject to employment taxes and reported on the employee''s W-2. The employer receives a corresponding compensation deduction under Section 83(h). Unlike incentive stock options under Section 422, which generate no regular income tax at exercise, NSOs create immediate ordinary income recognition upon exercise equal to the full bargain element.$EXPL$
WHERE id = 3925;

-- ============================================================
-- INTERNATIONAL TAX (3 questions)
-- ============================================================

-- ID 976: International Tax
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1297(a)(1), a foreign corporation is classified as a passive foreign investment company (PFIC) if 75% or more of its gross income consists of passive income (the income test). Alternatively, under Section 1297(a)(2), a corporation qualifies as a PFIC if 50% or more of its assets produce or are held for the production of passive income (the asset test). The 75% income test is the primary threshold most commonly applied. Unlike controlled foreign corporation (CFC) rules under Section 957, which require more than 50% ownership by U.S. shareholders, the PFIC rules apply regardless of the level of U.S. ownership and focus solely on the character of the corporation''s income and assets.$EXPL$
WHERE id = 976;

-- ID 979: International Tax
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 59A, the Base Erosion and Anti-Abuse Tax (BEAT) applies to C corporations (other than RICs, REITs, and S corporations) with average annual gross receipts of at least $500 million over the prior three-year period and a base erosion percentage of 3% or more (2% for banks and securities dealers). The BEAT operates as a minimum tax on base erosion payments made to related foreign persons. Unlike the GILTI regime under Section 951A, which targets the income of controlled foreign corporations, the BEAT targets deductible payments from U.S. corporations to foreign related parties that erode the domestic tax base.$EXPL$
WHERE id = 979;

-- ID 4107: International Tax
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 957(a), a controlled foreign corporation (CFC) is defined as a foreign corporation in which U.S. shareholders collectively own more than 50% of the total combined voting power or total value of the stock. A "U.S. shareholder" is defined under Section 951(b) as a U.S. person owning 10% or more of the voting power or value. The 10% threshold identifies who qualifies as a U.S. shareholder, while the 50% aggregate threshold determines CFC status. Unlike PFIC classification under Section 1297, which depends on the character of income and assets rather than ownership levels, CFC status is determined solely by the concentration of U.S. shareholder ownership.$EXPL$
WHERE id = 4107;

-- ============================================================
-- MULTI-JURISDICTIONAL TAX PLANNING (2 questions)
-- ============================================================

-- ID 4967: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 7501 and the Commerce Clause as interpreted in South Dakota v. Wayfair, Inc. (2018), the U.S. Supreme Court overruled Quill Corp. v. North Dakota and established that states may require sales tax collection from remote sellers based on economic nexus — typically meeting thresholds such as $100,000 in sales or 200 transactions within the state. This eliminated the prior physical presence requirement, allowing states to impose collection obligations based on economic activity alone. Unlike the physical presence standard under Quill, which required a seller to have tangible property or employees in a state, the Wayfair decision permits states to assert sales tax nexus through economic presence thresholds without any physical connection to the taxing jurisdiction.$EXPL$
WHERE id = 4967;

-- ID 4968: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = $EXPL$Under the Uniform Division of Income for Tax Purposes Act (UDITPA) Section 9, the traditional three-factor apportionment formula weights property, payroll, and sales equally, each receiving one-third weight. The apportionment percentage is (20% + 30% + 50%) / 3 = 33.33%. This equally weighted formula is the foundational UDITPA approach for allocating multistate income. Unlike the single sales factor or double-weighted sales factor formulas adopted by many states, which heavily weight the sales factor to benefit in-state manufacturers, the traditional UDITPA formula gives equal importance to the taxpayer''s property and payroll presence in the state.$EXPL$
WHERE id = 4968;

-- ============================================================
-- NONTAXABLE DISPOSITIONS (3 questions)
-- ============================================================

-- ID 1242: Nontaxable Dispositions
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1033(a)(2), when property is involuntarily converted and the taxpayer reinvests in qualified replacement property, gain is recognized only to the extent the conversion proceeds exceed the cost of the replacement. Here, the realized gain is $900,000 - $600,000 = $300,000, and the amount not reinvested is $900,000 - $850,000 = $50,000. Only $50,000 of gain is recognized, with $250,000 deferred. Under Section 1033(b), the basis of the replacement property is its cost ($850,000) reduced by the deferred gain ($250,000), yielding a $550,000 basis. Unlike a Section 1031 exchange, where boot received triggers gain recognition, Section 1033 measures recognized gain by the shortfall in reinvestment.$EXPL$
WHERE id = 1242;

-- ID 1244: Nontaxable Dispositions
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1033(h)(1)(B), business or investment real property involuntarily converted as a result of a presidentially declared disaster has a four-year replacement period from the close of the first tax year in which any part of the gain is realized. This extended period provides additional time for taxpayers to locate suitable replacement property after a catastrophic event. Unlike the general two-year replacement period under Section 1033(a)(2)(B) or the three-year period for condemned real property under Section 1033(g)(4), the four-year disaster provision recognizes the heightened difficulty of replacing property in areas affected by major disasters.$EXPL$
WHERE id = 1244;

-- ID 1245: Nontaxable Dispositions
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 453(d), a taxpayer may elect out of the installment method on the return for the year of sale, recognizing the entire gain in the current year. When a taxpayer has $150,000 of capital loss carryforwards under Section 1212(b), electing out allows the $200,000 gain to be offset by those carryforwards, resulting in only $50,000 of net taxable gain. This strategic timing maximizes the use of expiring carryforwards. Unlike using the installment method, which would defer gain recognition and risk the carryforwards expiring unused under Section 1212(b)''s five-year limitation, electing out accelerates gain into a year where existing losses can absorb it.$EXPL$
WHERE id = 1245;

-- ============================================================
-- OWNER-ENTITY TRANSACTIONS (5 questions)
-- ============================================================

-- ID 982: Owner-Entity Transactions
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 162(a)(1), reasonable compensation paid to a shareholder-employee is deductible by the corporation, resulting in only one level of tax at the shareholder''s individual rate. However, when a payment is recharacterized as a constructive dividend under Section 301, the corporation loses the deduction, creating double taxation — the corporation pays tax on the income at 21% under Section 11(b), and the shareholder pays qualified dividend rates under Section 1(h)(11). Unlike deductible compensation, which reduces the corporation''s taxable income, a constructive dividend is a nondeductible distribution from after-tax earnings, producing a significantly worse combined tax result.$EXPL$
WHERE id = 982;

-- ID 984: Owner-Entity Transactions
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 302(b)(2), a redemption qualifies as substantially disproportionate if the shareholder owns less than 50% of the total voting power after the redemption and the shareholder''s post-redemption ownership percentage is less than 80% of the pre-redemption percentage. Here, 80% x 60% = 48%, and the shareholder''s post-redemption ownership of 45% satisfies both prongs (45% < 50% and 45% < 48%). A qualifying redemption is treated as an exchange under Section 302(a) rather than a dividend. Unlike a redemption that fails the Section 302(b)(2) test, which would be treated as a Section 301 distribution taxable as a dividend to the extent of E&P, a substantially disproportionate redemption receives capital gain treatment.$EXPL$
WHERE id = 984;

-- ID 986: Owner-Entity Transactions
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1366(d)(1), S corporation losses are deductible to the extent of the shareholder''s combined basis in stock and any direct loans to the corporation. Stock basis is $100,000 and debt basis is $200,000 under Section 1367(b)(2), for a total of $300,000. Since the $250,000 allocated loss does not exceed the $300,000 combined basis, the full loss is deductible (assuming material participation). Unlike a shareholder guarantee of third-party debt, which does not create debt basis under Treas. Reg. Section 1.1366-2(a)(2), a direct shareholder loan provides additional basis against which losses may be deducted.$EXPL$
WHERE id = 986;

-- ID 993: Owner-Entity Transactions
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1368(b), distributions from an S corporation with no accumulated earnings and profits are tax-free to the extent of the shareholder''s stock basis. The first $35,000 reduces stock basis to zero as a nontaxable return of capital. The excess $15,000 ($50,000 - $35,000) is treated as gain from the sale or exchange of stock under Section 1368(b)(2), taxed as capital gain. Unlike distributions from an S corporation with accumulated E&P under Section 1368(c), which follow a more complex ordering rule involving the accumulated adjustments account (AAA), distributions with no E&P are applied entirely against stock basis first.$EXPL$
WHERE id = 993;

-- ID 4144: Owner-Entity Transactions
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 707(c), guaranteed payments to a partner for services are deducted by the partnership in computing its ordinary income, similar to salary payments. The partnership''s ordinary income after the $80,000 guaranteed payment is $200,000 - $80,000 = $120,000, which is then allocated among all partners (including Partner B) according to the partnership agreement under Section 704(a). Partner B reports both the $80,000 guaranteed payment and the allocable share of the $120,000. Unlike a partner''s distributive share under Section 704(b), which depends on the partnership agreement allocation, guaranteed payments are determined without regard to partnership income and are deductible by the partnership.$EXPL$
WHERE id = 4144;

-- ============================================================
-- PASSIVE ACTIVITY AND AT-RISK RULES (2 questions)
-- ============================================================

-- ID 916: Passive Activity and At-Risk Rules
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 465(b), a taxpayer''s at-risk amount includes cash contributed and the taxpayer''s share of qualified nonrecourse financing as defined in Section 465(b)(6). Cash contributed is $50,000, and the partner''s 25% share of the $200,000 qualified nonrecourse mortgage is $50,000, yielding a total at-risk amount of $100,000. Qualified nonrecourse financing must be secured by real property used in the activity and obtained from a qualified lender. Unlike general nonrecourse debt, which does not increase the at-risk amount under Section 465(b)(4), qualified nonrecourse financing on real estate is specifically exempted from the nonrecourse exclusion, allowing it to increase the taxpayer''s at-risk basis.$EXPL$
WHERE id = 916;

-- ID 918: Passive Activity and At-Risk Rules
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 469(h)(1) and Treas. Reg. Section 1.469-5T(a)(1), a taxpayer materially participates in an activity if the individual participates for more than 500 hours during the tax year. This is one of seven tests under the temporary regulations, any one of which establishes material participation and removes the activity from passive activity treatment. Kevin''s 520 hours exceeds the 500-hour threshold. Unlike the passive activity rules that focus on participation levels, choice A is incorrect because ownership percentage alone does not determine material participation, and choice C is incorrect because there is no income-percentage threshold in the regulations.$EXPL$
WHERE id = 918;

-- ============================================================
-- RETIREMENT PLANS AND EDUCATION SAVINGS (6 questions)
-- ============================================================

-- ID 938: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 402A and Section 402(a), the choice between traditional and Roth 401(k) contributions turns on the tax-rate differential between the contribution year and the withdrawal year. With a traditional 401(k) under Section 402(a), Diane defers tax at 24% now but pays 32% on all withdrawals including investment growth. With a Roth 401(k) under Section 402A, she pays 24% on contributions today and withdraws everything — including growth — tax-free under Section 402A(d). Because Diane''s expected retirement rate (32%) exceeds her current rate (24%), the Roth produces superior after-tax wealth. Unlike the scenario where tax rates remain constant, which produces mathematically equivalent outcomes, the rate differential is the sole factor driving the Roth advantage here.$EXPL$
WHERE id = 938;

-- ID 940: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 72(t)(1), distributions from a traditional IRA before age 59½ are subject to a 10% additional tax (early distribution penalty) unless an exception under Section 72(t)(2) applies. The $50,000 distribution is included in gross income under Section 408(d)(1) and taxed at 24%, producing $12,000 of income tax. The 10% penalty adds $5,000 ($50,000 x 10%), for a total tax cost of $17,000. Unlike distributions taken after age 59½, which avoid the penalty entirely, or those qualifying for exceptions such as disability under Section 72(t)(2)(A)(iii), this early distribution incurs both regular income tax and the additional 10% penalty.$EXPL$
WHERE id = 940;

-- ID 942: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 412 and ERISA Section 3(35), a defined benefit plan sets a target retirement benefit (up to $275,000 annually, indexed under Section 415(b)) and uses actuarial calculations to determine the required annual contribution. For Thornton at age 58 with only 7 years to fund the benefit, the compressed funding period drives annual contributions well above $200,000 — far exceeding the SEP-IRA limit of approximately $66,000 under Section 408(j) or the solo 401(k) limit of approximately $73,500 under Section 415(c). Although administrative and actuarial costs are higher, the additional tax deductions of $130,000+ per year at $400,000 of income vastly outweigh those costs. Unlike defined contribution plans under Section 415(c), which cap total annual additions, defined benefit plans under Section 415(b) allow dramatically higher contributions when the participant is near retirement age.$EXPL$
WHERE id = 942;

-- ID 945: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 401(a)(9)(C)(i)(II) as amended by the SECURE 2.0 Act of 2022, the required beginning date for traditional IRA required minimum distributions (RMDs) is April 1 of the year following the year the owner reaches age 73, for individuals reaching age 72 after December 31, 2022. The original SECURE Act of 2019 raised the RMD age from 70½ to 72, and SECURE 2.0 further increased it to 73. Choice A is incorrect because age 59½ under Section 72(t) is the penalty-free withdrawal age, not the RMD trigger, while Choice C is incorrect because the age 70½ threshold was the pre-SECURE Act rule that has been superseded by subsequent legislation.$EXPL$
WHERE id = 945;

-- ID 946: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 408(p), a SIMPLE (Savings Incentive Match Plan for Employees) IRA is a retirement plan designed for small employers with 100 or fewer employees who received at least $5,000 in compensation during the preceding calendar year. It provides a simplified alternative to a traditional 401(k) with lower administrative costs and no annual Form 5500 filing requirement. Employers must make either matching contributions (dollar-for-dollar up to 3% of compensation) or 2% nonelective contributions under Section 408(p)(2). Unlike a 401(k) plan, which has no employer size restriction and involves more complex nondiscrimination testing, SIMPLE IRAs are exclusively for small employers and satisfy nondiscrimination requirements through mandatory employer contributions.$EXPL$
WHERE id = 946;

-- ID 948: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 408(d)(2) and the pro-rata rule in Treas. Reg. Section 1.408-4(c)(2), when a taxpayer converts a portion of a traditional IRA containing both pretax and after-tax (basis) amounts, the taxable percentage is determined by dividing the total basis by the total IRA balance. The nontaxable percentage is $20,000 / $100,000 = 20%, so the taxable portion of the $50,000 conversion is $50,000 x 80% = $40,000. This pro-rata rule under Section 408(d)(2) prevents taxpayers from selectively converting only basis (after-tax) amounts. Unlike a Roth conversion of an IRA containing solely pretax contributions, where the entire conversion amount would be taxable, the presence of nondeductible basis under Section 8606 reduces the taxable portion proportionally.$EXPL$
WHERE id = 948;

-- ============================================================
-- TRUSTS AND ESTATES (4 questions)
-- ============================================================

-- ID 1015: Trusts and Estates
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 642(b), an estate is allowed a $600 personal exemption deduction on its Form 1041 income tax return. This is distinct from the exemption amounts for trusts: a simple trust required to distribute all income currently receives a $300 exemption, while a complex trust receives only a $100 exemption. The $600 estate exemption reflects the temporary nature of estate administration. Unlike individual taxpayers, whose personal exemptions were suspended by the TCJA under Section 151(d)(5) through 2025, the estate and trust exemption amounts under Section 642(b) remain in effect and were not modified by the TCJA.$EXPL$
WHERE id = 1015;

-- ID 1016: Trusts and Estates
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 665, the throwback rules for accumulation distributions were largely repealed for domestic trusts by the Tax Reform Act of 1997. As a result, accumulation distributions from domestic trusts are taxed to the beneficiaries as ordinary income in the year of distribution under Section 662, without throwback treatment or the "averaging" computation formerly required. The trust receives a distribution deduction under Section 661 for the amount distributed. Unlike foreign trusts, which remain subject to the throwback rules under Section 665 to prevent indefinite deferral of U.S. tax, domestic trusts distribute accumulated income without penalty or look-back computation.$EXPL$
WHERE id = 1016;

-- ID 1018: Trusts and Estates
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 441(b)(2) and Section 644, a decedent''s estate may elect any fiscal year ending within 12 months of the date of death. This flexibility is unique to estates and allows the executor to control the timing of income distributions and the Section 661 distribution deduction. For Robert, who died September 15, 2025, the estate could elect a fiscal year ending on any month-end from October 2025 through August 2026. Unlike trusts, which are generally required to use a calendar year under Section 644(a), estates have unrestricted fiscal year flexibility, giving the executor a powerful tool for managing the timing of beneficiary income recognition.$EXPL$
WHERE id = 1018;

-- ID 1019: Trusts and Estates
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 661(a), a trust''s distribution deduction equals the lesser of distributable net income (DNI) under Section 643(a) or the amount actually distributed to beneficiaries. DNI is $185,000 ($200,000 income minus $15,000 trustee fees), and actual distributions are $120,000. Since $120,000 is less than $185,000, the distribution deduction is $120,000, and the trust pays tax on the remaining $65,000 of undistributed taxable income. Unlike a simple trust under Section 651, which must distribute all income currently and always deducts the full DNI, a complex trust''s distribution deduction under Section 661 is limited to amounts actually paid or required to be distributed.$EXPL$
WHERE id = 1019;

-- ============================================================
-- WEALTH TRANSFER AND GIFTING STRATEGIES (5 questions)
-- ============================================================

-- ID 932: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 2051, the taxable estate equals the gross estate under Section 2031 minus allowable deductions. Debts of the decedent ($200,000) and funeral expenses ($50,000) are deductible under Section 2053(a), and the charitable bequest ($500,000) is deductible under Section 2055(a). The taxable estate is $8,000,000 - $200,000 - $50,000 - $500,000 = $7,250,000. The unified credit under Section 2010 would then reduce the estate tax owed. Unlike the marital deduction under Section 2056, which requires the bequest to pass to a surviving spouse, the charitable deduction under Section 2055 is available for bequests to qualifying charitable organizations without limitation.$EXPL$
WHERE id = 932;

-- ID 934: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 2503(b), the annual gift tax exclusion applies only to gifts of present interests. Crummey withdrawal powers, established in Crummey v. Commissioner (397 F.2d 82, 9th Cir. 1968), convert contributions to an irrevocable life insurance trust into present interest gifts by giving each beneficiary a temporary right to withdraw their share. With 4 beneficiaries, the annual exclusion covers 4 x $19,000 = $76,000 under Section 2503(b). Since the $40,000 premium is less than $76,000, the entire gift is excluded from taxable gifts. Unlike a direct premium payment without Crummey powers, which would be a future interest gift not qualifying for the annual exclusion, the withdrawal right satisfies the present interest requirement.$EXPL$
WHERE id = 934;

-- ID 935: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 2512(a) and Treas. Reg. Section 25.2512-1, gifts are valued at fair market value on the date of the gift. For a 30% limited partnership interest in assets worth $10,000,000, the pro-rata value before discounts is $3,000,000. Valuation discounts for lack of control and lack of marketability, recognized under Section 2512 and supported by case law such as Estate of Mandelbaum v. Commissioner (T.C. Memo 1995-255), reduce the taxable gift by 35% to $3,000,000 x (1 - 0.35) = $1,950,000. Unlike transfers of publicly traded securities, which are valued at readily determinable market prices, transfers of limited partnership interests in family limited partnerships qualify for valuation discounts because the interests lack control rights and an active secondary market.$EXPL$
WHERE id = 935;

-- ID 936: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = $EXPL$Under IRC Section 1015(a), a donee''s basis in gifted property is generally the donor''s basis (carryover basis), which here is $40,000. Under Section 1015(d)(6), the donee''s basis may be increased by the portion of gift tax paid that is attributable to the net appreciation in the property. Because the fair market value ($40,000) equals the donor''s basis ($40,000), there is no appreciation, and none of the $8,000 gift tax paid increases the donee''s basis. The donee''s basis remains $40,000. Unlike a gift of appreciated property, where a portion of the gift tax paid would be added to basis under the Section 1015(d)(6) formula, a gift with no built-in appreciation generates no basis adjustment from gift tax paid.$EXPL$
WHERE id = 936;

-- ID 1300: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = $EXPL$Under H.R. 1 (the One Big Beautiful Bill), the elevated estate and gift tax lifetime exemption originally enacted by the TCJA under IRC Section 2010(c)(3) and scheduled to sunset after December 31, 2025, was extended through 2029. Without the extension, the exemption would have reverted to approximately $7 million (indexed for inflation) under the pre-TCJA formula. The extension preserves the higher exemption amount ($14.5 million for 2026) for an additional four years of estate and gift tax planning. Choice A is incorrect because the original TCJA sunset was after 2025 and H.R. 1 extends beyond 2026, while Choice D is incorrect because the extension is temporary through 2029 rather than a permanent provision.$EXPL$
WHERE id = 1300;

COMMIT;
