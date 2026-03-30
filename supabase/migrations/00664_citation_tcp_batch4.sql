-- Migration: Citation backfill — TCP batch 4 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for TCP section
-- Affected topics: Advanced Basis Calculations, Capital Structure Tax Planning, Entity Choice and Planning, Entity Tax Compliance: NOLs and Consolidated Returns, Individual Tax Planning: Compensation, International Tax, Nontaxable Dispositions, Owner-Entity Transactions, Passive Activity and At-Risk Rules, Retirement Plans and Education Savings, Trusts and Estates, Wealth Transfer and Gifting Strategies

BEGIN;

-- ============================================================
-- ADVANCED BASIS CALCULATIONS (4 questions)
-- ============================================================

-- ID 4195: Advanced Basis Calculations
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1368(c), distributions from an S corporation with accumulated E&P follow a specific ordering: first from the accumulated adjustments account (AAA) tax-free ($100,000), then from accumulated E&P as a taxable dividend ($20,000), then as a return of basis, and finally as capital gain. The $20,000 exceeding AAA is treated as a dividend from accumulated E&P, whereas a distribution from AAA alone would be entirely tax-free to the extent of the shareholder''s stock basis.$EXPL$
WHERE id = 4195;

-- ID 4201: Advanced Basis Calculations
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1367(b)(2), when an S corporation shareholder''s debt basis has been reduced by pass-through losses, subsequent net income restores debt basis before increasing stock basis beyond its pre-loss amount. Helen''s $30,000 share of income first restores the $50,000 debt basis that was consumed by prior losses. This restoration ordering ensures the shareholder can repay the corporate loan without recognizing gain, whereas if stock basis were restored first, the debt repayment could trigger unexpected income recognition.$EXPL$
WHERE id = 4201;

-- ID 4202: Advanced Basis Calculations
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 722, a partner''s initial outside basis equals the basis of contributed property ($40,000), not its fair market value. Under Sec. 752(a), a partner''s share of partnership liabilities is treated as a contribution of money, increasing basis. Partner J''s 50% share of $200,000 nonrecourse liabilities adds $100,000, yielding a total outside basis of $140,000. Unlike stock basis in a corporation, partnership basis includes the partner''s allocable share of entity-level debt, which is why basis exceeds the contributed property''s carryover basis alone.$EXPL$
WHERE id = 4202;

-- ID 4204: Advanced Basis Calculations
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1368(e)(1)(A), the accumulated adjustments account (AAA) is adjusted in the same manner as stock basis under Sec. 1367: increased by income items and decreased by distributions and nondeductible expenses. Beginning AAA of $75,000 plus $50,000 ordinary income equals $125,000, minus $20,000 distributions equals $105,000, minus $8,000 nondeductible expenses equals $97,000. Unlike stock basis, AAA can become negative, and tax-exempt income does not increase AAA, whereas it does increase stock basis.$EXPL$
WHERE id = 4204;

-- ============================================================
-- CAPITAL STRUCTURE TAX PLANNING (3 questions)
-- ============================================================

-- ID 4337: Capital Structure Tax Planning
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1271(a), retirement of bona fide debt at par is treated as a tax-free return of principal to the lending shareholder. The payment simply reduces the shareholder''s loan basis dollar-for-dollar with no gain or loss recognized because there is no premium or discount. However, any accrued but unpaid interest would be ordinary income under Sec. 61(a)(4) when paid, whereas the principal repayment itself is not a distribution from E&P and cannot be recharacterized as a dividend.$EXPL$
WHERE id = 4337;

-- ID 4339: Capital Structure Tax Planning
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 249 and Treas. Reg. Sec. 1.163-4(c), when a corporation repurchases its own bonds at a premium over the issue price, the premium generally constitutes deductible interest expense representing additional compensation for the use of borrowed funds. The $300,000 premium paid above the $5 million par value is deductible as interest. In contrast, if the corporation had retired the bonds at a discount, the difference would be recognized as cancellation of debt income under Sec. 61(a)(11), rather than an interest adjustment.$EXPL$
WHERE id = 4339;

-- ID 4340: Capital Structure Tax Planning
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 385, the IRS applies a multi-factor test to distinguish debt from equity, considering the debt-to-equity ratio, payment contingency, and subordination. A 15:1 ratio represents extreme thin capitalization, and interest payments contingent on cash flow resemble discretionary dividends rather than fixed obligations. These factors strongly indicate equity classification. Unlike bona fide debt, which requires an unconditional obligation to repay principal and pay interest at a fixed rate regardless of earnings, contingent payments mirror the economic characteristics of equity ownership.$EXPL$
WHERE id = 4340;

-- ============================================================
-- ENTITY CHOICE AND PLANNING (3 questions)
-- ============================================================

-- ID 4297: Entity Choice and Planning
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1402(a), sole proprietorship net income is fully subject to self-employment tax at 15.3% (Sec. 1401). In an S corporation under Sec. 1366, only reasonable compensation paid as wages is subject to FICA under Sec. 3121, while the remaining pass-through income avoids employment taxes. With a $100,000 salary, the $200,000 of pass-through income escapes self-employment tax, saving approximately $30,600. However, the IRS requires S corporation shareholder-employees to take reasonable compensation, unlike a sole proprietorship where all net earnings are automatically subject to SE tax.$EXPL$
WHERE id = 4297;

-- ID 4299: Entity Choice and Planning
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1368(c), when an S corporation has accumulated E&P from prior C corporation years, distributions follow a layered ordering: first from the accumulated adjustments account (AAA) tax-free to the extent of stock basis, then from accumulated E&P as taxable dividends under Sec. 301(c)(1), then as a return of remaining stock basis, and finally as capital gain. This tiered structure ensures that current S corporation earnings are distributed tax-free before reaching the C corporation E&P layer, whereas a C corporation distribution would be a dividend from the first dollar if E&P exists.$EXPL$
WHERE id = 4299;

-- ID 4301: Entity Choice and Planning
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1366(d)(1), an S corporation shareholder may deduct pass-through losses only to the extent of stock basis plus direct debt basis (loans from the shareholder to the corporation). Shareholder A''s $30,000 stock basis limits the current deduction to $30,000 of the $50,000 NOL. The remaining $20,000 is suspended under Sec. 1366(d)(2) and carries forward indefinitely until basis is restored. Unlike partnership losses where a partner''s share of entity-level debt creates basis, S corporation shareholders receive debt basis only from direct personal loans to the corporation.$EXPL$
WHERE id = 4301;

-- ============================================================
-- ENTITY TAX COMPLIANCE: NOLS AND CONSOLIDATED RETURNS (6 questions)
-- ============================================================

-- ID 4083: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 6655(d)(1), a corporation must make estimated tax payments equal to the lesser of 100% of the current year''s tax liability or 100% of the prior year''s tax liability to avoid the underpayment penalty. For non-large corporations, either safe harbor applies to all four installments. However, under Sec. 6655(d)(2), large corporations (those with $1 million or more in taxable income in any of the three prior years) may use the prior year safe harbor only for the first installment, whereas the remaining three must be based on current-year estimated liability.$EXPL$
WHERE id = 4083;

-- ID 4084: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 6655(d)(2), large corporations — those with taxable income of $1 million or more in any of the three preceding years — may use the prior year''s tax liability as a safe harbor only for the first quarterly installment. The remaining three installments must be based on the current year''s estimated tax liability. Any shortfall from using the prior-year method on the first installment must be recaptured by the second installment, whereas non-large corporations may use the prior-year safe harbor for all four installments under Sec. 6655(d)(1).$EXPL$
WHERE id = 4084;

-- ID 4085: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 6655(c), calendar-year corporations must make estimated tax payments by the 15th day of the 4th, 6th, 9th, and 12th months of the tax year: April 15, June 15, September 15, and December 15. Each installment equals 25% of the required annual payment. This schedule differs from individual estimated tax dates under Sec. 6654, where the fourth installment is due January 15 of the following year, whereas corporate estimated taxes are fully due within the same calendar year.$EXPL$
WHERE id = 4085;

-- ID 4086: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 172(b)(1)(B), farming losses are an exception to the general post-TCJA prohibition on NOL carrybacks. Taxpayers engaged in a farming business may carry back farming losses for two years, or elect under Sec. 172(b)(3) to waive the carryback and carry the loss forward indefinitely. This special provision recognizes the cyclical nature of agricultural income, whereas general business NOLs arising after 2017 may only be carried forward and are limited to 80% of taxable income under Sec. 172(a).$EXPL$
WHERE id = 4086;

-- ID 4087: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = $EXPL$Under Treas. Reg. Sec. 1.1502-11, consolidated taxable income combines the separate taxable income and losses of all affiliated group members. Sub A''s income of $400,000 is offset by Sub B''s loss of $150,000, producing consolidated taxable income of $250,000 before any NOL deduction. This intercompany loss offset is a primary benefit of filing consolidated returns under IRC Sec. 1501, whereas separately filed returns would not permit one subsidiary''s loss to reduce another''s income in the current year.$EXPL$
WHERE id = 4087;

-- ID 4088: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1501 and Treas. Reg. Sec. 1.1502-75(a)(2), a consolidated return election is binding on all members for all subsequent taxable years unless the IRS grants permission to discontinue filing on a consolidated basis. A member leaves the group only by ceasing to meet the Sec. 1504(a) affiliation requirements (e.g., parent''s ownership drops below 80%). Voluntary withdrawal requires IRS consent under Reg. Sec. 1.1502-75(c), which is rarely granted, whereas involuntary departure occurs automatically upon deaffiliation.$EXPL$
WHERE id = 4088;

-- ============================================================
-- INDIVIDUAL TAX PLANNING: COMPENSATION (4 questions)
-- ============================================================

-- ID 3946: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 402(b), a secular trust is a funded, irrevocable arrangement that protects assets from the employer''s creditors, causing immediate taxation to the employee when contributions vest. Because the employee has a secured beneficial interest, amounts are included in gross income when the substantial risk of forfeiture lapses under Sec. 83(a). In contrast, a rabbi trust under Rev. Proc. 92-64 keeps assets subject to the employer''s general creditors, deferring taxation until actual distribution because the employee''s interest remains at risk.$EXPL$
WHERE id = 3946;

-- ID 3947: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 83(a) and Treas. Reg. Sec. 1.83-7, the spread on nonstatutory stock options (NSOs) at exercise ($42 − $12 = $30 per share) is ordinary compensation income recognized in the year of exercise. The employee''s basis becomes the FMV at exercise ($42) under Sec. 1012. The subsequent gain from $42 to $60 ($18 per share) is capital gain, qualifying as long-term under Sec. 1222(3) because the holding period exceeds one year. Unlike ISOs under Sec. 422, NSOs generate ordinary income at exercise rather than deferring all gain to the sale date.$EXPL$
WHERE id = 3947;

-- ID 3953: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = $EXPL$Under ERISA Sec. 201(2) and 301(a)(3), top-hat plans — unfunded nonqualified deferred compensation plans maintained for a select group of management or highly compensated employees — are exempt from ERISA''s participation, vesting, funding, and fiduciary requirements. However, they remain subject to ERISA''s reporting and disclosure provisions under Part 1 of Title I and must file a one-time statement with the Department of Labor. Unlike qualified plans under IRC Sec. 401(a), top-hat plans offer no tax deferral to the employer and provide no creditor protection for participants.$EXPL$
WHERE id = 3953;

-- ID 3955: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 422(a), incentive stock options (ISOs) provide that no regular federal income tax is due at exercise if the employee meets the statutory holding periods — two years from grant and one year from exercise under Sec. 422(a)(1). All gain is deferred and taxed as long-term capital gain at sale. Unlike NSOs under Sec. 83(a), which trigger ordinary income on the exercise spread immediately, ISOs defer all recognition to the disposition date, although the spread at exercise is an AMT preference item under Sec. 56(b)(3).$EXPL$
WHERE id = 3955;

-- ============================================================
-- INTERNATIONAL TAX (3 questions)
-- ============================================================

-- ID 4125: International Tax
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 952(a) and Sec. 954, Subpart F income includes foreign base company income (comprising foreign base company sales income, services income, and foreign personal holding company income under Sec. 954(c)-(e)) and insurance income under Sec. 953. There is no category of foreign base company manufacturing income. Active manufacturing income earned in the CFC''s country of incorporation is generally excluded from Subpart F, whereas passive investment income and base company sales income earned outside the CFC''s home country trigger current U.S. inclusion.$EXPL$
WHERE id = 4125;

-- ID 4129: International Tax
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 250(b), foreign-derived intangible income (FDII) is calculated as deemed intangible income (DII) multiplied by the ratio of foreign-derived deduction eligible income (FDDEI) to total deduction eligible income (DEI). FDII = $6,000,000 × ($4,000,000 / $10,000,000) = $2,400,000. The Sec. 250(a) deduction of 37.5% on FDII yields an effective tax rate of approximately 13.125% on foreign-derived intangible income, whereas domestic intangible income (the remainder of DII) is taxed at the full 21% corporate rate under Sec. 11(b).$EXPL$
WHERE id = 4129;

-- ID 4130: International Tax
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 904(a), the foreign tax credit limitation is calculated separately for each category: U.S. tax × (foreign-source income in category / worldwide income). For the passive category, the limitation is $420,000 × ($200,000 / $2,000,000) = $42,000. Since Lambda paid $60,000 in foreign taxes on passive income, only $42,000 can be credited currently. Under Sec. 904(c), the $18,000 excess may be carried back one year or forward ten years, whereas the general category has its own separate limitation calculation that does not interact with the passive basket.$EXPL$
WHERE id = 4130;

-- ============================================================
-- NONTAXABLE DISPOSITIONS (3 questions)
-- ============================================================

-- ID 4364: Nontaxable Dispositions
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 453(c), the gross profit ratio for an installment sale equals total gain divided by total contract price: ($500,000 − $300,000) / $500,000 = 40%. Under Sec. 453(a), each payment received is multiplied by this ratio to determine gain recognized. Year 2 gain is $200,000 × 40% = $80,000. The same 40% ratio applies to every installment regardless of the year received, whereas recognizing all gain in the year of sale under Sec. 1001 would accelerate the entire $200,000 gain into a single period.$EXPL$
WHERE id = 4364;

-- ID 4366: Nontaxable Dispositions
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1033(a)(2), gain from an involuntary conversion is recognized only to the extent that insurance proceeds exceed the cost of qualifying replacement property. The realized gain is $75,000 − $50,000 = $25,000. Because the taxpayer reinvested $70,000 of the $75,000 proceeds, only $5,000 was not reinvested, and gain recognized is limited to that $5,000. The remaining $20,000 of gain is deferred. Unlike a voluntary sale under Sec. 1001, which requires full gain recognition, Sec. 1033 provides mandatory deferral when proceeds are fully reinvested.$EXPL$
WHERE id = 4366;

-- ID 4368: Nontaxable Dispositions
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1033(b)(2), the basis of replacement property acquired in an involuntary conversion equals its cost minus the deferred gain. Gain realized is $200,000 ($700,000 − $500,000). Gain recognized is $50,000 (the $700,000 proceeds minus $650,000 reinvested). Deferred gain is $150,000. The new factory''s basis is $650,000 cost minus $150,000 deferred gain = $500,000. This basis reduction preserves the deferred gain for future recognition upon disposition, whereas full reinvestment under Sec. 1033 would defer the entire gain and reduce basis to the old property''s $500,000 basis.$EXPL$
WHERE id = 4368;

-- ============================================================
-- OWNER-ENTITY TRANSACTIONS (5 questions)
-- ============================================================

-- ID 4166: Owner-Entity Transactions
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 707(c), guaranteed payments are deducted from partnership income before calculating each partner''s distributive share under Sec. 704(b). After deducting Partner J''s $90,000 guaranteed payment, remaining partnership income is $210,000 − $90,000 = $120,000. Partner K''s one-third distributive share is $120,000 × 1/3 = $40,000. Unlike distributive shares that depend on partnership profitability, guaranteed payments are determined without regard to partnership income and are treated as ordinary income to the recipient regardless of partnership earnings.$EXPL$
WHERE id = 4166;

-- ID 4167: Owner-Entity Transactions
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 3121(a) and Rev. Rul. 74-44, when a shareholder-employee provides substantial services to an S corporation and takes no salary, the IRS will reclassify a portion of distributions as reasonable compensation subject to FICA taxes. Courts have consistently upheld this recharacterization in cases such as Watson v. United States (668 F.3d 1008). The reclassified amount is subject to both the employee and employer shares of FICA, whereas properly structured S corporation distributions of pass-through income under Sec. 1366 are not subject to employment taxes.$EXPL$
WHERE id = 4167;

-- ID 4168: Owner-Entity Transactions
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 707(a)(2)(B) and Treas. Reg. Sec. 1.707-3, when a partner contributes property and receives a related cash distribution within two years, the transaction is presumed to be a disguised sale. The sale portion equals $75,000 / $100,000 = 75% of the contributed property. Partner G recognizes gain of 75% × ($100,000 − $30,000) = $52,500. The remaining 25% is treated as a tax-free contribution under Sec. 721. Unlike a straightforward Sec. 721 contribution followed by a distribution under Sec. 731, the disguised sale rules require immediate gain recognition on the sale portion.$EXPL$
WHERE id = 4168;

-- ID 4171: Owner-Entity Transactions
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1402(a) and Sec. 707(c), guaranteed payments for services are subject to self-employment tax. The combined SE tax rate under Sec. 1401 is 15.3% — comprising 12.4% Social Security tax (on earnings up to the wage base under Sec. 1401(a)) and 2.9% Medicare tax with no cap. Above the Social Security wage base, only the 2.9% Medicare tax applies. An additional 0.9% Medicare surtax under Sec. 3101(b)(2) applies to earned income exceeding $200,000 for single filers, whereas distributive shares of partnership income are generally not subject to SE tax for limited partners under Sec. 1402(a)(13).$EXPL$
WHERE id = 4171;

-- ID 4172: Owner-Entity Transactions
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 267(a) and Sec. 482, when a controlling shareholder (owning more than 50% under Sec. 267(b)) sells property to a controlled corporation at below fair market value, the bargain element ($500,000 − $300,000 = $200,000) is treated as a constructive dividend to the shareholder. The corporation''s basis reflects the FMV because the transaction is recharacterized as a purchase at $300,000 plus a $200,000 deemed distribution reinvested as a capital contribution. Unlike arm''s-length sales between unrelated parties, below-FMV transfers between related parties trigger dividend treatment regardless of the parties'' intent.$EXPL$
WHERE id = 4172;

-- ============================================================
-- PASSIVE ACTIVITY AND AT-RISK RULES (2 questions)
-- ============================================================

-- ID 3983: Passive Activity and At-Risk Rules
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 469(e)(1), portfolio income — including interest, dividends, royalties, and gains from the disposition of investment property — is specifically excluded from passive activity income. Interest earned on corporate bonds is classified as portfolio income. This distinction is critical because under Sec. 469(d)(1), passive activity losses cannot offset portfolio income or active income. Rental income is generally passive under Sec. 469(c)(2), and income from a business without material participation is passive, whereas portfolio income stands in its own category outside the passive activity framework.$EXPL$
WHERE id = 3983;

-- ID 3984: Passive Activity and At-Risk Rules
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 469(a), passive activity losses may only offset passive activity income. Activity X generates $20,000 of passive income, and Activity Y generates a $35,000 current loss plus $10,000 of suspended losses from prior years under Sec. 469(b). Total passive losses are $45,000, offset by $20,000 passive income, leaving $25,000 suspended at year-end. The suspended losses carry forward indefinitely under Sec. 469(b) until offset by future passive income. Unlike the $25,000 rental real estate exception under Sec. 469(i), no special allowance applies here because this is not a rental activity with active participation.$EXPL$
WHERE id = 3984;

-- ============================================================
-- RETIREMENT PLANS AND EDUCATION SAVINGS (6 questions)
-- ============================================================

-- ID 4046: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 408A(d)(4), Roth IRA distributions follow ordering rules: contributions are withdrawn first, tax-free and penalty-free. The $10,000 of contributions comes out without tax consequences. However, under Sec. 408A(d)(2), the $5,000 of earnings is not a qualified distribution because the account has not met the five-year holding period under Sec. 408A(d)(2)(B) and the taxpayer is under age 59½. Unqualified earnings are subject to income tax and the 10% early withdrawal penalty under Sec. 72(t), whereas contributions are always recoverable tax-free since they were made with after-tax dollars.$EXPL$
WHERE id = 4046;

-- ID 4047: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 219(b)(5)(A), the maximum annual IRA contribution for a taxpayer under age 50 is $7,000 (as adjusted for inflation to $7,500 for 2026). This limit applies to the combined total of traditional and Roth IRA contributions. Under Sec. 219(b)(5)(B), taxpayers age 50 and older may contribute an additional catch-up amount of $1,000 (indexed), bringing their maximum to $8,750. The contribution limit applies per individual regardless of the number of IRA accounts, whereas 401(k) plans have a separate, higher elective deferral limit under Sec. 402(g).$EXPL$
WHERE id = 4047;

-- ID 4048: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 408(k), SEP IRA contributions must be made as a uniform percentage of compensation for all eligible employees. Eligible employees are those who are at least age 21, have worked for the employer in at least three of the last five years, and earned at least $750 (as adjusted) under Sec. 408(k)(2). The employer cannot discriminate in contribution percentages among eligible employees. Unlike 401(k) plans that allow employee elective deferrals under Sec. 402(g), SEP IRAs permit only employer contributions, and the maximum is the lesser of 25% of compensation or $69,000 (2024 limit, indexed).$EXPL$
WHERE id = 4048;

-- ID 4049: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 72(t)(1), a 10% early withdrawal penalty applies to distributions from qualified plans before age 59½ unless an exception applies. The $20,000 distribution is included in ordinary income under Sec. 402(a), producing $4,800 in federal income tax at the 24% marginal rate. The additional 10% penalty under Sec. 72(t) adds $2,000, for a total federal tax impact of $6,800. The penalty is imposed in addition to regular income tax, whereas distributions after age 59½ or qualifying for an exception under Sec. 72(t)(2) avoid the penalty entirely.$EXPL$
WHERE id = 4049;

-- ID 4052: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 401(a)(9) and Treas. Reg. Sec. 1.401(a)(9)-5, the required minimum distribution (RMD) is calculated by dividing the prior year-end account balance by the applicable distribution period from the Uniform Lifetime Table. For 2026, the RMD is $500,000 / 25.5 = $19,608 (approximately). The taxpayer must withdraw at least this amount by December 31, 2026. Under Sec. 4974, failure to take the full RMD results in a 25% excise tax on the shortfall, whereas timely correction within two years reduces the penalty to 10%.$EXPL$
WHERE id = 4052;

-- ID 4053: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 401(m) and Treas. Reg. Sec. 1.401(m)-1, employer matching contributions must satisfy nondiscrimination requirements. The employer matches 100% of the first 3% of salary ($80,000 × 3% = $2,400) and 50% of the next 2% ($80,000 × 2% = $1,600 × 50% = $800), for a total employer match of $3,200. Combined with the employee''s $4,000 deferral, total additions are $7,200, well within the Sec. 415(c) annual additions limit. Unlike employee elective deferrals that are subject to the Sec. 402(g) limit, employer matching contributions are limited only by the overall Sec. 415 ceiling.$EXPL$
WHERE id = 4053;

-- ============================================================
-- TRUSTS AND ESTATES (5 questions)
-- ============================================================

-- ID 4256: Trusts and Estates
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 6012(a)(3) and Sec. 641, Form 1041 (U.S. Income Tax Return for Estates and Trusts) is used to report the income, deductions, gains, losses, and distributions of an estate or trust. The estate files Form 1041 for each taxable year it has gross income of $600 or more. Form 1040 is used for individual returns, Form 1120 for C corporations, and Form 1065 for partnerships, whereas estates and trusts are treated as separate taxable entities with their own compressed rate brackets under Sec. 1(e).$EXPL$
WHERE id = 4256;

-- ID 4258: Trusts and Estates
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 652(b), the character of income distributed by a simple trust retains its character in the hands of the beneficiary. Since $30,000 of the $50,000 distributable net income (DNI) under Sec. 643(a) is taxable dividends (60%) and $20,000 is tax-exempt interest (40%), the beneficiary includes $30,000 in gross income. The $20,000 tax-exempt portion retains its character under Sec. 652(b) and is not taxable to the beneficiary, whereas if all DNI were taxable, the entire $50,000 distribution would be included in the beneficiary''s gross income.$EXPL$
WHERE id = 4258;

-- ID 4260: Trusts and Estates
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 662(a)(1), first-tier distributions (amounts required to be distributed currently) are satisfied before second-tier distributions (all other amounts paid or required to be distributed). Beneficiary A reports the full $25,000 required distribution because it does not exceed the trust''s $75,000 DNI under Sec. 643(a). The remaining $50,000 of DNI is then available for Beneficiary B''s second-tier discretionary distribution. Unlike second-tier distributions that may be limited by remaining DNI, first-tier distributions are fully deductible by the trust up to DNI.$EXPL$
WHERE id = 4260;

-- ID 4261: Trusts and Estates
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 662(a)(2), second-tier distributions carry out remaining DNI after first-tier distributions are satisfied. After Beneficiary A''s $25,000 first-tier deduction, remaining DNI is $50,000. Although Beneficiary B received $60,000 in discretionary distributions, only $50,000 is taxable because distributions cannot carry out more than remaining DNI. The excess $10,000 is a tax-free distribution of corpus under Sec. 662(a)(2), whereas Beneficiary A''s entire $25,000 first-tier distribution was fully taxable because DNI was sufficient to cover it.$EXPL$
WHERE id = 4261;

-- ID 4263: Trusts and Estates
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 642(b), a simple trust is allowed a $300 personal exemption deduction. This amount is fixed by statute and is not adjusted for inflation. A complex trust receives only a $100 exemption under the same provision, and an estate receives a $600 exemption. The distinction depends on whether the trust is required to distribute all income currently and makes no charitable contributions or corpus distributions. Unlike the individual personal exemption that was suspended by the TCJA under Sec. 151(d)(5), trust and estate exemptions remain available.$EXPL$
WHERE id = 4263;

-- ============================================================
-- WEALTH TRANSFER AND GIFTING STRATEGIES (6 questions)
-- ============================================================

-- ID 4013: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 1015(a) and Treas. Reg. Sec. 1.1015-1(a)(2), when gifted property has an FMV less than the donor''s adjusted basis at the time of the gift, the donee uses dual basis rules. For determining a loss, the donee''s basis is the FMV at the date of gift ($200,000). For determining gain, the donee uses the donor''s basis ($250,000). If the property is sold for an amount between $200,000 and $250,000, no gain or loss is recognized under the indeterminate zone rule, whereas property with FMV exceeding donor''s basis simply takes a carryover basis for all purposes.$EXPL$
WHERE id = 4013;

-- ID 4014: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 2631(a), each individual has a generation-skipping transfer tax (GSTT) exemption equal to the applicable exclusion amount under Sec. 2010(c). A dynasty trust allows the GSTT exemption to be allocated under Sec. 2632, sheltering both the original transfer and all future appreciation from GSTT for multiple generations. This leverages the time value of the exemption because trust growth compounds free of transfer tax. Unlike outright gifts that use the exemption but expose future appreciation to GSTT at the next generation, a dynasty trust permanently removes assets from the transfer tax system.$EXPL$
WHERE id = 4014;

-- ID 4015: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 2010(c), the applicable exclusion amount for 2026 is $13.99 million (indexed for inflation). Under Sec. 2001(b)(2), the unified credit shelters both lifetime gifts and the taxable estate. Since the decedent used $2 million of the exclusion during lifetime through taxable gifts, the remaining exclusion at death is $13.99 million minus $2 million = $11.99 million. The taxable estate exceeding this amount ($20 million − $11.99 million = $8.01 million) is subject to the 40% estate tax rate under Sec. 2001(c), whereas the unlimited marital deduction under Sec. 2056 could have eliminated the tax entirely if the decedent had been married.$EXPL$
WHERE id = 4015;

-- ID 4016: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 6019(a), a gift tax return (Form 709) is required only when gifts to any donee exceed the annual exclusion amount under Sec. 2503(b). For 2026, the annual exclusion is $19,000 per donee. Since each $19,000 gift equals the exclusion amount, no gift exceeds the threshold and no return is required. The GSTT does not independently trigger a filing requirement for direct skip gifts covered by the annual exclusion under Sec. 2642(c), whereas gifts exceeding the annual exclusion — even by $1 — require a Form 709 filing regardless of available lifetime exemption.$EXPL$
WHERE id = 4016;

-- ID 4018: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 2010(c)(4), portability allows the surviving spouse to use the deceased spouse''s unused exclusion amount (DSUE). Since the husband used none of his $13.99 million exemption and his estate is $10 million, his DSUE equals the full $13.99 million (the excess of his applicable exclusion over the sum of taxable estate and adjusted taxable gifts, computed per Sec. 2010(c)(4)(B)). The wife''s combined applicable exclusion is her own $13.99 million plus the $13.99 million DSUE = $27.98 million, whereas without a proper portability election on a timely filed Form 706, the DSUE would be permanently lost.$EXPL$
WHERE id = 4018;

-- ID 4019: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = $EXPL$Under IRC Sec. 664, a charitable remainder trust (CRT) is tax-exempt under Sec. 664(c), allowing it to sell appreciated property without triggering immediate capital gains tax to the donor. The donor receives a current income tax deduction under Sec. 170(a) equal to the present value of the charitable remainder interest. Gain is recognized by the beneficiary as distributions are made over the trust term under the four-tier ordering system of Sec. 664(b). Unlike an outright sale followed by a charitable contribution, the CRT structure avoids recognizing gain before the charitable deduction, whereas a direct sale would trigger full capital gains tax immediately.$EXPL$
WHERE id = 4019;

COMMIT;
