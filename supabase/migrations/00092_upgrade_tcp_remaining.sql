-- Migration: Upgrade remaining moderate-scoring TCP questions
-- Fixes: short-stem, length-cuing, short-expl, missing citations
-- Target: all questions score 7+ after this migration

-- === Entity Tax Compliance: NOLs and Consolidated Returns (2 questions) ===

-- Q959 [score:6] short-stem → expand with scenario, cite Treas. Reg. Section 1.1502-21
UPDATE questions SET
  stem = 'Grandview Holdings Inc. acquires 100% of Ferndale Manufacturing in March 2026 and includes Ferndale in its consolidated return beginning that year. Ferndale had accumulated $2,400,000 of net operating losses during its prior three years as a stand-alone C corporation. Grandview''s consolidated taxable income for 2026 (before applying any NOL deductions) is $6,000,000, of which Ferndale''s separate contribution is $800,000. Under the SRLY (Separate Return Limitation Year) rules of Treas. Reg. Section 1.1502-21, the use of Ferndale''s pre-acquisition NOLs is limited to:',
  explanation = 'Under Treas. Reg. Section 1.1502-21(c), the SRLY rules prevent a newly acquired subsidiary from using its pre-acquisition NOLs to shelter the income of other group members. Ferndale''s $2,400,000 NOL carryforward may only offset Ferndale''s own $800,000 contribution to consolidated taxable income — not the remaining $5,200,000 earned by other members of the Grandview group. The unused $1,600,000 carries forward subject to the same SRLY limitation in future years. Choice B is incorrect because the parent''s ability to file a consolidated return is governed by IRC Section 1501 ownership rules, not the SRLY provisions. Choice C is incorrect because the SRLY rules do not prohibit all NOL usage in the acquisition year — they limit the NOL to the acquired member''s own income. Choice D is incorrect because intercompany dividend deductions are addressed under IRC Section 243 and the consolidated return elimination rules, not SRLY.'
WHERE id = 959;

-- Q961 [score:6] short-stem → expand with scenario, cite IRC Section 461(l)
UPDATE questions SET
  stem = 'In 2026, Dr. Elaine Whitfield operates a solo medical practice as a sole proprietorship. Her practice generates a $750,000 net business loss for the year after accounting for all ordinary and necessary expenses. Dr. Whitfield is single and has no other business income. The excess business loss threshold under IRC Section 461(l) for a single filer in 2026 is $305,000. Under Section 461(l), the $445,000 of losses exceeding the threshold are:',
  choices = '["Permanently disallowed and cannot be used in any future tax year", "Allowed without limitation because the loss is from an active trade or business", "Deductible only against net capital gains recognized in the same tax year", "Treated as a net operating loss carryforward to the next taxable year"]',
  explanation = 'Under IRC Section 461(l), noncorporate taxpayers may not deduct aggregate net business losses exceeding the threshold amount ($305,000 for single filers, $610,000 for MFJ in 2026, indexed annually). Dr. Whitfield''s $750,000 loss minus the $305,000 threshold leaves $445,000 of excess business loss. This excess is not permanently lost — it is recharacterized as an NOL carryforward under Section 172, subject to the 80% taxable income limitation in subsequent years. Choice A is incorrect because excess business losses are carried forward, not permanently disallowed. Choice B is incorrect because Section 461(l) applies regardless of material participation. Choice C is incorrect because the excess is treated as an NOL carryforward, not limited to capital gain offset.'
WHERE id = 961;

-- === Individual Tax Planning: Compensation (2 questions) ===

-- Q897 [score:6] short-expl → expand to 50-100 words with IRC citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under IRC Section 83(a), when a taxpayer does not file a Section 83(b) election, restricted property is not taxed at grant — instead, ordinary income is recognized when the substantial risk of forfeiture lapses (i.e., at vesting). The taxable amount equals FMV at vesting minus any amount paid for the property. Here, income = $30 FMV at vesting x 5,000 shares = $150,000. Choice A ($50,000) incorrectly uses the grant-date FMV ($10 x 5,000), which would only apply if an 83(b) election had been filed. Choice B ($100,000) incorrectly computes the appreciation ($30 − $10 = $20 x 5,000) rather than the full FMV at vesting. Choice D ($0) is incorrect because income recognition is deferred to vesting, not eliminated entirely.'
WHERE id = 897;

-- Q904 [score:6] length-cuing → rebalance choice lengths
UPDATE questions SET
  choices = '["$200,000 salary only, with no additional inclusions for benefits received", "$212,000 including the salary plus the employer 401(k) matching contribution", "$200,000 salary plus the Table I cost of group-term life coverage over $50,000", "$362,000 including all compensation, the 401(k) match, and the full insurance"]',
  explanation = 'Under IRC Section 61, the $200,000 salary is fully includible in gross income. The employer''s $12,000 401(k) matching contribution is excluded under Section 402(a) because it is an employer contribution to a qualified plan — it is not taxable until distributed. For group-term life insurance under Section 79, the first $50,000 of employer-provided coverage is excluded. The cost of the excess $100,000 of coverage ($150,000 − $50,000) is included in gross income using the IRS Table I uniform premium rates. Choice A is incorrect because it ignores the taxable portion of the group-term life insurance. Choice B is incorrect because the 401(k) match is not currently taxable. Choice D is incorrect because it includes the full insurance amount and the excluded 401(k) match.'
WHERE id = 904;

-- === International Tax (3 questions) ===

-- Q967 [score:5] short-expl → expand to 50-100 words with IRC citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under IRC Section 951A, GILTI (Global Intangible Low-Taxed Income) equals a U.S. shareholder''s aggregate tested income minus the net deemed tangible income return (DTIR). The DTIR represents a 10% return on qualified business asset investment (QBAI), which approximates a routine return on tangible assets deployed overseas. Here, GILTI = $1,000,000 tested income − (10% x $3,000,000 QBAI) = $1,000,000 − $300,000 = $700,000. The $300,000 DTIR shelters the portion of CFC income attributable to tangible asset returns. Choice A ($1,000,000) ignores the QBAI offset entirely, overstating the inclusion. Choice B ($0) would require DTIR to equal or exceed tested income, which only occurs when QBAI is $10,000,000+. Choice C ($300,000) confuses the DTIR amount with the GILTI inclusion — $300,000 is the offset, not the taxable amount.'
WHERE id = 967;

-- Q977 [score:5] short-expl → expand to 50-100 words with IRC citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under IRC Section 951A(b), net CFC tested income is computed at the U.S. shareholder level by aggregating tested income from all CFCs and subtracting the net deemed tangible income return (DTIR). Net DTIR = 10% x aggregate QBAI = 10% x $20,000,000 = $2,000,000. Net GILTI = $5,000,000 tested income − $2,000,000 DTIR = $3,000,000. A domestic C corporation may then claim a 50% deduction under Section 250(a)(1), reducing the effective GILTI rate to approximately 10.5% before foreign tax credits. Choice A ($5,000,000) ignores the QBAI offset entirely. Choice C ($2,000,000) confuses the DTIR offset with the GILTI inclusion. Choice D ($0) would require QBAI of $50,000,000 or more to fully shelter the tested income, which is not the case here.'
WHERE id = 977;

-- Q978 [score:6] short-expl → expand to 50-100 words with IRC citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under IRC Section 965, enacted as part of the TCJA in December 2017, the transition tax imposed a one-time repatriation charge on accumulated post-1986 deferred foreign earnings of specified foreign corporations. Cash and cash-equivalent positions were taxed at 15.5%, while illiquid assets (non-cash) were taxed at 8%. Taxpayers could elect to pay the liability in installments over eight years under Section 965(h), with smaller payments in the early years and larger payments in later years. Choice A (21%) is incorrect because the 21% rate applies to ongoing corporate income, not the transition tax. Choice B (35%) is incorrect because the pre-TCJA regular corporate rate was not used for this one-time provision. Choice C (10%) is incorrect because 10% is the deemed tangible income return rate under GILTI (Section 951A), not the transition tax rate.'
WHERE id = 978;

-- === Owner-Entity Transactions (1 question) ===

-- Q990 [score:5] short-expl → expand to 50-100 words with IRC citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under IRC Section 1366(d)(2), S corporation losses are deductible only to the extent of the shareholder''s combined stock and debt basis, with a mandatory ordering rule: losses first reduce stock basis to zero, then reduce debt basis. Here, the shareholder starts with $0 stock basis and $30,000 debt basis. Since stock basis is already zero, the entire $20,000 loss reduces debt basis: $30,000 − $20,000 = $10,000 remaining debt basis. When the corporation later generates income, debt basis must be restored to its original amount before stock basis can increase under Section 1367(b)(2). Choice B is incorrect because losses cannot increase stock basis — they can only reduce it. Choice C is incorrect because it fails to apply the loss against debt basis. Choice D is incorrect because the $20,000 loss does not exceed total available basis ($30,000), so it is fully deductible and reduces debt basis accordingly.'
WHERE id = 990;

-- === Passive Activity and At-Risk Rules (2 questions) ===

-- Q910 [score:6] short-expl → expand to 50-100 words with IRC citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under IRC Section 469(a), passive activity losses may only offset passive activity income — they cannot be deducted against active (nonpassive) income, portfolio income, or compensation. The taxpayer''s $60,000 passive income from Activity A absorbs $60,000 of Activity B''s $85,000 passive loss, leaving a net excess passive loss of $25,000. This $25,000 is suspended under Section 469(b) and carried forward indefinitely until the taxpayer generates additional passive income or fully disposes of Activity B in a taxable transaction under Section 469(g). Choice B is incorrect because passive losses and income must be netted — they are not reported separately. Choice C is incorrect because passive losses cannot offset ordinary (nonpassive) income. Choice D is incorrect because passive losses cannot offset portfolio income such as dividends and interest.'
WHERE id = 910;

-- Q917 [score:5] short-expl → expand to 50-100 words with IRC citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under IRC Section 469(a)(1), passive activity losses are deductible only against passive activity income. Activity X is nonpassive because the taxpayer materially participates, and Activity Y is passive. The $70,000 passive loss from Activity Y cannot offset the $50,000 of nonpassive income from Activity X — passive and nonpassive income are in separate computational "buckets" under the Section 469 framework. The entire $70,000 passive loss is suspended under Section 469(b) and carried forward until the taxpayer either generates passive income from other sources or makes a fully taxable disposition of Activity Y under Section 469(g). Choice A is incorrect because nonpassive income cannot absorb passive losses. Choice B is incorrect because partial netting against nonpassive income is not permitted under Section 469. Choice D is incorrect because the $25,000 rental exception under Section 469(i) applies only to rental real estate activities with active participation, not to non-rental passive activities.'
WHERE id = 917;

-- === Retirement Plans and Education Savings (4 questions) ===

-- Q938 [score:5] short-expl → expand to 50-100 words with IRC citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under IRC Section 402(g), the maximum elective deferral limit for 401(k) plans in 2026 is $24,000 for employees under age 50. Employees aged 50 and older may make an additional catch-up contribution of $7,500 under Section 414(v), bringing their total to $31,500. The $71,000 figure represents the total annual additions limit under Section 415(c), which includes employee deferrals, employer matching contributions, and employer profit-sharing contributions combined — it is not the employee deferral limit alone. Choice A ($23,500) was the 2025 limit before the 2026 cost-of-living adjustment. Choice C ($31,500) is the age 50+ limit including the catch-up contribution. Choice D ($71,000) is the Section 415(c) total additions limit, not the employee elective deferral limit.'
WHERE id = 938;

-- Q943 [score:6] length-cuing → rebalance choice lengths
UPDATE questions SET
  choices = '["The owner has reached age 55 and separated from service with the employer", "The owner is over age 50 and has held the account for at least three years", "The distribution is used exclusively for qualified higher education expenses", "The owner is 59½ or older, disabled, deceased, or a first-time homebuyer up to $10,000"]',
  explanation = 'Under IRC Section 408A(d)(2), a qualified Roth IRA distribution must meet two requirements: (1) the five-year holding period beginning with the first taxable year a Roth contribution was made, AND (2) one of four triggering events — the owner reaches age 59½, becomes disabled, dies (distribution to beneficiary), or uses up to $10,000 for a first-time home purchase. Non-qualified distributions are subject to income tax on the earnings portion and may also incur a 10% early distribution penalty. Choice A is incorrect because the age threshold is 59½, not 55 — the age-55 separation rule applies to employer plans under Section 72(t), not IRAs. Choice B is incorrect because the holding period is five years, not three, and the age threshold is 59½. Choice C is incorrect because education expenses are an exception to the 10% penalty under Section 72(t)(2)(E), not a qualifying event for a tax-free Roth distribution.'
WHERE id = 943;

-- Q944 [score:6] length-cuing → rebalance choice lengths
UPDATE questions SET
  choices = '["$0 because all 529 distributions are exempt from federal income tax", "$3,000 in full, taxed as ordinary income with no basis recovery applied", "The earnings portion of the $3,000 excess, subject to tax and 10% penalty", "$15,000 in full because the distribution exceeds the qualified expense amount"]',
  explanation = 'Under IRC Section 529(c)(3)(A), 529 plan distributions used for qualified education expenses (tuition, fees, books, room and board for at least half-time students) are entirely tax-free. The $12,000 used for qualified expenses is excluded from income. The remaining $3,000 is a non-qualified distribution, but only the earnings portion of that $3,000 is subject to income tax and the 10% additional penalty under Section 529(c)(6). The basis (return of contributions) portion of the $3,000 is received tax-free because contributions were made with after-tax dollars. Choice A is incorrect because non-qualified distributions do have tax consequences on the earnings portion. Choice B is incorrect because it ignores the pro-rata allocation between basis and earnings. Choice D is incorrect because only the $3,000 excess — not the full $15,000 — triggers any tax consequence.'
WHERE id = 944;

-- Q949 [score:4] short-stem + short-expl → expand stem with scenario, expand explanation
UPDATE questions SET
  stem = 'Marcus and Elena Chen want to save for their daughter Lily''s education and are considering opening a Coverdell Education Savings Account (ESA). Marcus''s parents and Elena''s sister also want to contribute to Lily''s account. The family asks their CPA at Brookfield Advisory about the maximum total that can go into Lily''s Coverdell ESA in a single year from all sources combined. Under IRC Section 530(b)(1)(A)(iii), the annual Coverdell ESA contribution limit per beneficiary is:',
  choices = '["$2,000 per year from all contributors combined for the beneficiary", "$5,500 per year, matching the traditional IRA contribution limit", "$6,000 per year, matching the Roth IRA contribution limit for 2026", "No statutory limit, subject only to the contributor''s income phase-out"]',
  explanation = 'Under IRC Section 530(b)(1)(A)(iii), the maximum annual contribution to a Coverdell ESA is $2,000 per beneficiary from all contributors combined — not per contributor. If Marcus, Elena, Marcus''s parents, and Elena''s sister all contribute, their total for Lily cannot exceed $2,000 for the year. Contributions are not tax-deductible, but earnings grow tax-free and qualified distributions for K-12 and higher education expenses are excluded from income under Section 530(d)(2). Contributors must also meet MAGI phase-out limits ($95,000-$110,000 single, $190,000-$220,000 MFJ). Choice B ($5,500) is incorrect because it confuses the Coverdell limit with historical IRA limits. Choice C ($6,000) is incorrect because it references the Roth IRA limit, not the Coverdell limit. Choice D is incorrect because the $2,000 cap is a firm statutory ceiling regardless of income.'
WHERE id = 949;

-- === Wealth Transfer and Gifting Strategies (1 question) ===

-- Q929 [score:6] short-expl → expand to 50-100 words with IRC citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under IRC Section 1014(a)(1), property acquired from a decedent receives a basis equal to the fair market value at the date of death (or the alternate valuation date under Section 2032, if elected). The heir''s basis in the stock is $400,000 — the full FMV at death — regardless of the decedent''s original $100,000 cost basis. The $300,000 of built-in appreciation that accrued during the decedent''s lifetime is permanently excluded from income tax, which is why the stepped-up basis is one of the most significant tax benefits in estate planning. Choice A ($100,000) is incorrect because it uses the decedent''s carryover basis, which applies to lifetime gifts under Section 1015 — not inherited property. Choice C ($300,000) is incorrect because it represents only the appreciation amount, not the full stepped-up basis. Choice D ($250,000) is incorrect because it appears to average the cost and FMV, which has no basis in the statute.'
WHERE id = 929;
