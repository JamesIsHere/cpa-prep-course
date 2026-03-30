-- Migration: Citation backfill — TCP batch 3 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for TCP section
-- Affected topics: Advanced Basis Calculations, Capital Structure Tax Planning, Entity Choice and Planning, Entity Formation and Liquidation, Entity Formation and Restructuring, Entity Tax Compliance: NOLs and Consolidated Returns, Individual Tax Planning: Compensation, International Tax, Multi-Jurisdictional Tax Planning, Nontaxable Dispositions, Owner-Entity Transactions, Passive Activity and At-Risk Rules, Related Party Transactions, Retirement Plans and Education Savings, Trusts and Estates, Wealth Transfer and Gifting Strategies

BEGIN;

-- ============================================================
-- ADVANCED BASIS CALCULATIONS (4 questions)
-- ============================================================

-- ID 4188: Advanced Basis Calculations
UPDATE questions SET
  explanation = 'Under IRC Sec. 1367(a)(1), an S corporation shareholder''s stock basis is increased by the shareholder''s pro rata share of all income items, including ordinary income and separately stated items such as capital gains and tax-exempt income. This ensures the shareholder is not taxed again when income is distributed. Unlike distributions, nondeductible expenses, and losses — which all reduce basis under Sec. 1367(a)(2) — income items are the only category that increases stock basis.'
WHERE id = 4188;

-- ID 4190: Advanced Basis Calculations
UPDATE questions SET
  explanation = 'Under IRC Sec. 1368 and the ordering rules in Sec. 1367(a), the shareholder first increases basis for income ($40,000 + $60,000 = $100,000), then reduces basis for distributions ($100,000 - $85,000 = $15,000). The distribution does not exceed the income-adjusted basis, so it is entirely tax-free under Sec. 1368(b). However, if the distribution had exceeded $100,000, the excess would be treated as capital gain under Sec. 1368(b)(2) rather than simply reducing basis further.'
WHERE id = 4190;

-- ID 4192: Advanced Basis Calculations
UPDATE questions SET
  explanation = 'Under IRC Sec. 1366(d)(1), an S corporation shareholder may only deduct losses up to the combined stock and debt basis. With $10,000 stock basis and $0 debt basis, only $10,000 of the $25,000 loss is currently deductible. The remaining $15,000 is suspended and carries forward indefinitely under Sec. 1366(d)(2) until basis is restored through income allocations or additional contributions. Unlike partnership at-risk rules under Sec. 465, S corporation debt basis requires direct shareholder loans to the entity.'
WHERE id = 4192;

-- ID 4194: Advanced Basis Calculations
UPDATE questions SET
  explanation = 'Under IRC Sec. 1368(e)(1), the accumulated adjustments account (AAA) tracks the cumulative S corporation income that has been taxed to shareholders but not yet distributed. AAA determines whether distributions come from previously taxed S income (tax-free) or from accumulated earnings and profits (taxable as dividends under Sec. 1368(c)). Unlike retained earnings, which is a GAAP financial reporting concept, AAA is a tax-only construct relevant only when the S corporation has accumulated E&P from a prior C corporation period.'
WHERE id = 4194;

-- ============================================================
-- CAPITAL STRUCTURE TAX PLANNING (2 questions)
-- ============================================================

-- ID 4326: Capital Structure Tax Planning
UPDATE questions SET
  explanation = 'Under IRC Sec. 1272(a), original issue discount (OID) is treated as additional interest expense amortized over the life of the bond using the constant yield method. The issuing corporation deducts the OID ratably each year, and the bondholder includes the amortized amount in gross income annually under Sec. 1272(a)(1), regardless of cash receipt. Unlike market discount under Sec. 1276, which is recognized at disposition or payment, OID accrues and is reportable each year during the bond''s term.'
WHERE id = 4326;

-- ID 4335: Capital Structure Tax Planning
UPDATE questions SET
  explanation = 'Under IRC Sec. 1273(c)(2) and Treas. Reg. 1.1273-2, when bonds are issued with detachable stock warrants, the proceeds must be allocated between the bonds and warrants based on their relative fair market values. The $200,000 allocated to the warrants reduces the issue price of the bonds, creating original issue discount that is amortized as additional interest expense under Sec. 1272. Unlike non-detachable warrants, which do not require separate allocation, detachable warrants are treated as independent instruments with their own basis.'
WHERE id = 4335;

-- ============================================================
-- ENTITY CHOICE AND PLANNING (3 questions)
-- ============================================================

-- ID 4291: Entity Choice and Planning
UPDATE questions SET
  explanation = 'Under IRC Sec. 3121(a) and IRS guidance in Rev. Rul. 74-44, S corporation shareholder-employees must receive reasonable compensation for services performed before taking distributions. The IRS may recharacterize distributions as wages, triggering FICA taxes under Sec. 3101 and 3111 plus penalties and interest. Unlike limited partners in a partnership who may avoid self-employment tax on distributive shares under Sec. 1402(a)(13), S corporation shareholder-employees cannot use distributions to circumvent employment tax obligations.'
WHERE id = 4291;

-- ID 4292: Entity Choice and Planning
UPDATE questions SET
  explanation = 'Under IRC Sec. 1402(a) and Sec. 3121, S corporation pass-through income is not subject to self-employment tax — only the reasonable salary paid to shareholder-employees is subject to FICA taxes. This creates a planning advantage because distributions above reasonable compensation avoid employment taxes. In contrast, under Sec. 1402(a), a general partner''s entire distributive share of partnership ordinary income is subject to self-employment tax, making partnerships generally less favorable for employment tax minimization.'
WHERE id = 4292;

-- ID 4293: Entity Choice and Planning
UPDATE questions SET
  explanation = 'Under IRC Sec. 172(a) as amended by the TCJA, corporate net operating losses arising after December 31, 2017 may be carried forward indefinitely but are limited to 80% of taxable income in the carryforward year under Sec. 172(a)(2). This ensures some taxable income remains in profitable years. Unlike the pre-TCJA rules that permitted a 2-year carryback and 20-year carryforward, the current rules eliminate the carryback for most taxpayers, with limited exceptions for farming losses under Sec. 172(b)(1)(B).'
WHERE id = 4293;

-- ============================================================
-- ENTITY FORMATION AND LIQUIDATION (1 questions)
-- ============================================================

-- ID 4215: Entity Formation and Liquidation
UPDATE questions SET
  explanation = 'Under IRC Sec. 358(a)(1), the transferor''s basis in stock received in a Sec. 351 exchange equals the adjusted basis of the property transferred ($70,000) plus gain recognized ($20,000) minus boot received ($20,000), resulting in a $70,000 stock basis. The gain recognized equals the lesser of the realized gain or the boot received under Sec. 351(b). Unlike a fully taxable sale where basis would equal FMV, the Sec. 358 substituted basis preserves the deferred gain for future recognition upon disposition of the stock.'
WHERE id = 4215;

-- ============================================================
-- ENTITY FORMATION AND RESTRUCTURING (1 questions)
-- ============================================================

-- ID 4989: Entity Formation and Restructuring
UPDATE questions SET
  explanation = 'Under IRC Sec. 368 and Treas. Reg. 1.368-1(e), the continuity of interest doctrine requires that a substantial portion of the consideration received by target shareholders in a tax-free reorganization consist of equity (stock) in the acquiring corporation. The IRS safe harbor requires at least 40% of total consideration to be acquirer stock, ensuring target shareholders maintain a continuing equity interest. Unlike a taxable acquisition where cash or debt consideration triggers full gain recognition, meeting the continuity threshold preserves tax-free treatment under IRC Sec. 368.'
WHERE id = 4989;

-- ============================================================
-- ENTITY TAX COMPLIANCE: NOLS AND CONSOLIDATED RETURNS (5 questions)
-- ============================================================

-- ID 4076: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'Under IRC Sec. 1502 and Treas. Reg. 1.1502-13(c), the matching rule requires that intercompany gains are recognized when a triggering event occurs, such as an external sale. Mega''s deferred intercompany gain of $40,000 ($120,000 - $80,000) and Nano''s gain of $30,000 ($150,000 - $120,000) are both recognized, producing total group gain of $70,000. Unlike separate return treatment where each entity independently recognizes gain at each sale, the consolidated return matching rule under IRC Sec. 1502 defers intercompany gains until an outside transaction triggers recognition.'
WHERE id = 4076;

-- ID 4077: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'Under Treas. Reg. 1.1502-21(c), the SRLY rules limit use of a member''s pre-acquisition NOLs to that member''s contribution to consolidated taxable income. Target contributed $60,000 of separate return taxable income, but the 80% limitation under IRC Sec. 172(a)(2) applies: $60,000 x 80% = $48,000 usable. The remaining $102,000 carries forward. Unlike post-acquisition losses that are fully available to the consolidated group, SRLY losses are ring-fenced to prevent acquired NOLs from sheltering income earned by other group members.'
WHERE id = 4077;

-- ID 4078: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'Under IRC Sec. 1502 and Treas. Reg. 1.1502-21(c), the Separate Return Limitation Year (SRLY) rules prevent a consolidated group from using a new member''s pre-acquisition NOLs against income generated by other group members. The NOL can only offset income attributable to the subsidiary that generated the loss, measured by its separate return taxable income contribution. Unlike IRC Sec. 382 which limits annual usage based on stock value and the long-term tax-exempt rate, the SRLY rules restrict usage based on the member''s actual income contribution to the group.'
WHERE id = 4078;

-- ID 4080: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'Under IRC Sec. 1502 and Treas. Reg. 1.1502-19(a), an excess loss account (ELA) arises when a member''s cumulative losses allocated to the parent exceed the parent''s adjusted basis in the subsidiary''s stock, creating a negative basis of $75,000. The ELA represents a deferred income inclusion that must be recognized as gain if the subsidiary departs the group under Sec. 1502 regulations. Unlike ordinary stock basis which simply reduces to zero, the ELA tracks below-zero amounts and triggers capital gain recognition upon a disposition or deconsolidation event.'
WHERE id = 4080;

-- ID 4081: Entity Tax Compliance: NOLs and Consolidated Returns
UPDATE questions SET
  explanation = 'Under IRC Sec. 1502 and Treas. Reg. 1.1502-19(b), when a subsidiary departs the consolidated group, the parent must recognize the excess loss account as gain from the disposition of stock, generally treated as capital gain. The $600,000 ELA recaptures cumulative losses that reduced the parent''s stock basis below zero during consolidation. Unlike an ordinary stock sale where gain is simply proceeds minus basis under IRC Sec. 1001, the ELA recognition ensures that previously deducted subsidiary losses do not permanently escape taxation at the parent level.'
WHERE id = 4081;

-- ============================================================
-- INDIVIDUAL TAX PLANNING: COMPENSATION (3 questions)
-- ============================================================

-- ID 3936: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = 'Under IRC Sec. 56(b)(3) and Sec. 422, the exercise of incentive stock options (ISOs) creates an alternative minimum tax adjustment equal to the spread between FMV and exercise price at the date of exercise: ($35 - $10) x 1,000 = $25,000. This amount is added to alternative minimum taxable income in the exercise year because ISOs receive preferential regular tax treatment. However, if the shares are disposed of in a disqualifying disposition under Sec. 422(a)(1) in the same year, no AMT adjustment applies because the spread is already recognized as ordinary income.'
WHERE id = 3936;

-- ID 3938: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = 'Under IRC Sec. 83(a) and Treas. Reg. 1.83-3(e), restricted stock units (RSUs) are taxed as ordinary income at the fair market value on each vesting date. Year one: 1,250 x $40 = $50,000; year two: 1,250 x $55 = $68,750, totaling $118,750. Each vesting event is a separate taxable event reported on the employee''s W-2. Unlike stock options where taxation depends on exercise timing, RSU income recognition is triggered automatically at vesting, and the employee cannot defer recognition through a Sec. 83(b) election because no property is transferred at grant.'
WHERE id = 3938;

-- ID 3941: Individual Tax Planning: Compensation
UPDATE questions SET
  explanation = 'Under IRC Sec. 83(h), when nonqualified stock options (NSOs) are exercised, the employer receives a compensation deduction equal to the ordinary income recognized by the employee. The spread is ($65 - $20) x 10,000 = $450,000, deductible in the employer''s tax year that includes the end of the employee''s tax year of recognition. Unlike incentive stock options under Sec. 422, which generally provide no employer deduction because the employee recognizes no regular income at exercise, NSOs create a matching deduction tied to the employee''s income inclusion.'
WHERE id = 3941;

-- ============================================================
-- INTERNATIONAL TAX (3 questions)
-- ============================================================

-- ID 4121: International Tax
UPDATE questions SET
  explanation = 'Under IRC Sec. 6038(a), U.S. shareholders owning 10% or more of a controlled foreign corporation (CFC) must file Form 5471, Information Return of U.S. Persons With Respect to Certain Foreign Corporations. Claire''s 25% ownership exceeds the 10% threshold under Sec. 951(b), triggering the filing requirement. Unlike Form 8865 which applies to foreign partnerships or Form 8858 for foreign disregarded entities, Form 5471 is specifically required for reporting interests in foreign corporations classified as CFCs.'
WHERE id = 4121;

-- ID 4122: International Tax
UPDATE questions SET
  explanation = 'Under IRC Sec. 6038(a) and Sec. 6038B, Form 8865, Return of U.S. Persons With Respect to Certain Foreign Partnerships, must be filed by U.S. persons with specified interests in foreign partnerships, including controlling partners (50%+ interest) and 10% or greater partners in controlled partnerships. Sandra''s 25% interest triggers a Category 2 filing obligation. Unlike Form 5471 which is required for foreign corporations, Form 8865 is the designated return for reporting ownership and transactions in foreign partnership structures.'
WHERE id = 4122;

-- ID 4124: International Tax
UPDATE questions SET
  explanation = 'Under IRC Sec. 59A, the Base Erosion and Anti-Abuse Tax (BEAT) imposes additional tax equal to the excess of the BEAT liability over regular tax liability. Here, BEAT liability of $25 million minus regular tax of $20 million yields $5 million in additional tax, for a total payment of $25 million. Unlike regular corporate income tax which applies to all taxable income, the BEAT specifically targets corporations with average annual gross receipts of $500 million or more that make significant deductible payments to foreign related parties under Sec. 59A(e).'
WHERE id = 4124;

-- ============================================================
-- MULTI-JURISDICTIONAL TAX PLANNING (2 questions)
-- ============================================================

-- ID 4982: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'Under IRC Sec. 381 (P.L. 86-272), protection from state income tax applies only to the solicitation of orders for tangible personal property where orders are approved and filled from outside the state. Activities exceeding mere solicitation — such as maintaining a repair or service center, making collections, or providing installation services — destroy the statute''s protection and create nexus for state income tax purposes. Unlike protected solicitation activities such as sending sales representatives or distributing samples, these service-related activities constitute a business presence that subjects the company to state income taxation.'
WHERE id = 4982;

-- ID 4983: Multi-Jurisdictional Tax Planning
UPDATE questions SET
  explanation = 'Under state combined reporting statutes (e.g., IRC Sec. 482 principles applied at the state level), when State A mandates combined reporting and a subsidiary conducts a unitary business with the parent, State A includes the subsidiary''s income in the combined report regardless of where the income is earned. The combined group''s total income is then apportioned using combined apportionment factors of all entities in the group. Unlike separate entity reporting where each entity files independently in each state, combined reporting prevents income shifting by aggregating all unitary income and applying a single apportionment formula.'
WHERE id = 4983;

-- ============================================================
-- NONTAXABLE DISPOSITIONS (3 questions)
-- ============================================================

-- ID 4354: Nontaxable Dispositions
UPDATE questions SET
  explanation = 'Under IRC Sec. 1033(a), involuntary conversions other than condemnations require the replacement property to be similar or related in service or use to the converted property. This functional use test is stricter than the like-kind standard under Sec. 1031, requiring that the taxpayer use the replacement property in a similar manner. Unlike condemnation conversions where Sec. 1033(g) applies a broader like-kind standard for real property, casualty and theft conversions demand a closer functional relationship between the original and replacement assets.'
WHERE id = 4354;

-- ID 4356: Nontaxable Dispositions
UPDATE questions SET
  explanation = 'Under IRC Sec. 453(c), the gross profit ratio equals gross profit divided by the total contract price. Gross profit is $100,000 - $60,000 = $40,000, and contract price is $100,000, yielding a 40% ratio. Each $25,000 annual payment triggers $10,000 of gain ($25,000 x 40%). Unlike a lump-sum sale where the entire $40,000 gain would be recognized immediately, the installment method under Sec. 453 spreads gain recognition proportionally across the payment period as cash is received.'
WHERE id = 4356;

-- ID 4362: Nontaxable Dispositions
UPDATE questions SET
  explanation = 'Under IRC Sec. 453 and Treas. Reg. 15A.453-1(b)(3), the contract price equals the selling price minus qualifying indebtedness assumed that does not exceed the seller''s basis. Here, the $160,000 mortgage exceeds the $80,000 basis by $80,000, and that excess is treated as a payment in the year of sale. Contract price = selling price of $200,000 (since the excess mortgage is included). Unlike situations where assumed debt is less than basis, the mortgage excess here accelerates gain recognition because it represents proceeds beyond the seller''s investment.'
WHERE id = 4362;

-- ============================================================
-- OWNER-ENTITY TRANSACTIONS (5 questions)
-- ============================================================

-- ID 4157: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'Under IRC Sec. 1372(a), shareholders owning more than 2% of an S corporation are treated as self-employed for fringe benefit purposes. Health insurance premiums paid by the corporation must be included in the shareholder''s W-2 wages under Notice 2008-1. The shareholder may then deduct the premiums as a self-employed health insurance deduction under Sec. 162(l) on their individual return (above-the-line). Unlike rank-and-file employees who exclude employer-paid health premiums under Sec. 106, greater-than-2% shareholders must first include the amount in income.'
WHERE id = 4157;

-- ID 4158: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'Under IRC Sec. 1372(a), greater-than-2% S corporation shareholders are treated as self-employed persons and cannot exclude employer-provided health insurance premiums from income under Sec. 106. The premiums must be included in W-2 income per IRS Notice 2008-1, though a deduction may be available under Sec. 162(l). Unlike regular employees who may exclude health insurance premiums entirely, greater-than-2% shareholders lose this exclusion because Sec. 1372 treats them as partners rather than employees for fringe benefit purposes.'
WHERE id = 4158;

-- ID 4161: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'Under IRC Sec. 3121(a) and the reasonable compensation doctrine established in David E. Watson, P.C. v. United States, the IRS will reclassify S corporation distributions as wages when compensation is unreasonably low. With comparable pay of $95,000-$110,000, approximately $55,000-$60,000 of the $80,000 in distributions would be recharacterized as additional salary, triggering FICA taxes under Sec. 3101 and 3111. Unlike distributions which avoid employment taxes, reclassified wages also carry penalties for failure to withhold and deposit under Sec. 6672.'
WHERE id = 4161;

-- ID 4162: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'Under Rev. Proc. 93-27, the receipt of a profits interest in a partnership for services is generally not a taxable event, provided the interest is not disposed of within two years, is not related to a substantially certain income stream, and is not a disguised payment under IRC Sec. 707(a)(2)(A). A profits interest entitles the partner only to future appreciation and income. Unlike a capital interest — which gives immediate rights to a share of existing partnership assets and would be taxable at FMV under Sec. 83(a) — a profits interest has no liquidation value at grant.'
WHERE id = 4162;

-- ID 4164: Owner-Entity Transactions
UPDATE questions SET
  explanation = 'Under IRC Sec. 7872(a), below-market loans between a corporation and its shareholders require imputation of forgone interest at the applicable federal rate (AFR). Forgone interest equals AFR interest ($300,000 x 5% = $15,000) minus actual interest ($300,000 x 1% = $3,000), totaling $12,000. This amount is treated as a constructive dividend to the shareholder under Sec. 301 and a deemed interest payment back to the corporation. Unlike arm''s-length loans at or above the AFR, below-market loans trigger both dividend and interest income consequences under Sec. 7872.'
WHERE id = 4164;

-- ============================================================
-- PASSIVE ACTIVITY AND AT-RISK RULES (2 questions)
-- ============================================================

-- ID 3971: Passive Activity and At-Risk Rules
UPDATE questions SET
  explanation = 'Under IRC Sec. 469 and Treas. Reg. 1.469-4(c), factors for determining appropriate economic units include similarities in business types, common control, common ownership, geographic location, and interdependencies among activities. The taxpayer''s personal tax bracket is not a relevant factor because grouping is based on economic substance, not tax planning objectives. Unlike the material participation tests under IRC Sec. 469(h) which focus on hours and involvement, the grouping rules evaluate the economic relationship between the activities themselves.'
WHERE id = 3971;

-- ID 3975: Passive Activity and At-Risk Rules
UPDATE questions SET
  explanation = 'Under IRC Sec. 469(i), the $25,000 special rental loss allowance requires active participation, which demands that the taxpayer make management decisions in a significant and bona fide sense — such as approving tenants, setting rental terms, or approving expenditures. Merely owning the property while a management company makes all decisions does not meet this standard. Unlike material participation under Sec. 469(h) which has specific hour-based tests, active participation under Sec. 469(i)(6) is a lower but still substantive threshold requiring meaningful involvement in rental operations.'
WHERE id = 3975;

-- ============================================================
-- RELATED PARTY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4404: Related Party Transactions
UPDATE questions SET
  explanation = 'Under IRC Sec. 1091(a), the wash sale rule disallows a loss when substantially identical securities are acquired within the 61-day window — 30 days before to 30 days after the sale date. The October 10 purchase is 22 days before the November 1 sale, falling squarely within the pre-sale window. The $6,000 disallowed loss is added to the basis of the replacement shares under Sec. 1091(d). Unlike related party loss disallowance under Sec. 267 which permanently defers losses until the related party disposes of the asset, wash sale adjustments preserve the loss through increased basis.'
WHERE id = 4404;

-- ============================================================
-- RETIREMENT PLANS AND EDUCATION SAVINGS (6 questions)
-- ============================================================

-- ID 4037: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'Under the SECURE 2.0 Act (Sec. 107, amending IRC Sec. 401(a)(9)(C)), taxpayers born after 1959 must begin taking required minimum distributions (RMDs) from traditional IRAs by April 1 of the year following the year they reach age 73. Miriam, born in 1962, falls under this rule and must begin RMDs at age 73. Unlike Roth IRAs which are exempt from RMDs during the owner''s lifetime under Sec. 408A(c)(5), traditional IRAs and employer-sponsored plans require mandatory distributions once the age threshold is reached.'
WHERE id = 4037;

-- ID 4039: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'Under IRC Sec. 408(p)(2)(A)(ii), the maximum employee elective deferral to a SIMPLE IRA is $16,500 for 2026 for participants under age 50. Employees age 50 and older may make an additional catch-up contribution of $3,500 under Sec. 414(v). The employer must either match dollar-for-dollar up to 3% of compensation or make a 2% nonelective contribution under Sec. 408(p)(2)(B). Unlike 401(k) plans which permit higher deferral limits, SIMPLE IRAs have lower contribution ceilings designed for small employers with 100 or fewer employees.'
WHERE id = 4039;

-- ID 4041: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'Under IRC Sec. 408A(c)(5), Roth IRAs are not subject to required minimum distributions during the account owner''s lifetime, allowing tax-free growth indefinitely. This is the most significant advantage compared to traditional IRAs, which mandate RMDs beginning at age 73 under Sec. 401(a)(9). While Roth contributions are not deductible under Sec. 408A(c)(1) and contribution limits are the same as traditional IRAs, qualified Roth distributions are entirely tax-free under Sec. 408A(d)(1) — not taxed at capital gains rates as some candidates incorrectly assume.'
WHERE id = 4041;

-- ID 4043: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'Under IRC Sec. 219(g), single taxpayers who are active participants in an employer-sponsored retirement plan have their traditional IRA deduction phased out between $79,000 and $89,000 of modified AGI (2026 indexed amounts). At $95,000 MAGI, the taxpayer exceeds the phase-out ceiling, so the deduction is fully eliminated — not partially available. The $7,500 contribution can still be made as a nondeductible contribution under Sec. 408(o). Unlike taxpayers not covered by an employer plan, who face no income-based deduction limits, active participants must navigate these phase-out thresholds.'
WHERE id = 4043;

-- ID 4044: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'Under IRC Sec. 530(b)(1)(A)(iii), the maximum annual contribution to a Coverdell Education Savings Account is $2,000 per beneficiary. Contributions are not deductible, but qualified distributions are tax-free under Sec. 530(d)(2). Coverdell ESAs may be used for both K-12 expenses and higher education costs under Sec. 530(b)(2). Unlike 529 plans which were historically limited to higher education and now cover K-12 tuition up to $10,000 per year under Sec. 529(c)(7), Coverdell accounts have broader qualified expense coverage but a significantly lower contribution ceiling.'
WHERE id = 4044;

-- ID 4045: Retirement Plans and Education Savings
UPDATE questions SET
  explanation = 'Under IRC Sec. 529(e)(3)(B), room and board qualifies as a higher education expense for 529 plan distributions when the student is enrolled at least half-time. The qualifying amount cannot exceed the greater of the institution''s cost-of-attendance allowance or the actual amount charged by the institution under Sec. 529(e)(3)(B)(ii). Off-campus housing qualifies up to this limit. Unlike tuition which has no enrollment-intensity requirement, room and board expenses require at least half-time enrollment status to receive tax-free distribution treatment.'
WHERE id = 4045;

-- ============================================================
-- TRUSTS AND ESTATES (4 questions)
-- ============================================================

-- ID 4249: Trusts and Estates
UPDATE questions SET
  explanation = 'Under IRC Sec. 643(a), distributable net income (DNI) is computed by starting with taxable income, adding back tax-exempt interest under Sec. 643(a)(5), adding back the personal exemption under Sec. 643(a)(2), and excluding capital gains allocated to corpus under Sec. 643(a)(3). The calculation yields: $40,000 taxable interest + $10,000 tax-exempt interest - $5,000 capital gains allocated to corpus = $45,000. Unlike taxable income which excludes tax-exempt interest, DNI includes it to properly measure the trust''s economic income available for distribution.'
WHERE id = 4249;

-- ID 4252: Trusts and Estates
UPDATE questions SET
  explanation = 'Under IRC Sec. 1(e), trust and estate income tax brackets are highly compressed, reaching the maximum 37% rate at approximately $15,200 of taxable income. The approximate tax is: graduated rates on the first $15,200 (roughly $3,600) plus 37% on the remaining $84,800 ($31,376), totaling approximately $34,976. Unlike individual taxpayers who do not reach the 37% bracket until over $600,000 of taxable income, trusts face substantially higher effective tax rates on equivalent income amounts, creating strong incentives to distribute income to beneficiaries.'
WHERE id = 4252;

-- ID 4254: Trusts and Estates
UPDATE questions SET
  explanation = 'Under IRC Sec. 441(e) and Sec. 645, an estate is the only entity type that may elect a fiscal year-end without obtaining prior IRS approval. The first fiscal year may be up to 12 months, beginning on the date of the decedent''s death and ending on the last day of any chosen month within that period. Unlike trusts, which are generally required to use a calendar year under Sec. 644(a), estates have unique flexibility to select a fiscal year that can provide deferral advantages for beneficiaries receiving distributions.'
WHERE id = 4254;

-- ID 4255: Trusts and Estates
UPDATE questions SET
  explanation = 'Under IRC Sec. 441(e), the estate''s fiscal year must end on the last day of a month and cannot exceed 12 months from the date of death. Starting March 15, the latest month-end within the 12-month window is February 28 (or 29 in a leap year) of the following year. Choosing March 31 would exceed 12 months from the March 15 date of death, which is not permitted. Unlike calendar year taxpayers whose year-end is fixed, the executor''s choice of fiscal year-end can strategically affect the timing of income distribution deductions.'
WHERE id = 4255;

-- ============================================================
-- WEALTH TRANSFER AND GIFTING STRATEGIES (5 questions)
-- ============================================================

-- ID 4003: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'Under IRC Sec. 2010(c)(4), portability of the deceased spousal unused exclusion (DSUE) amount requires the executor to file a timely estate tax return (Form 706) and make the portability election, even if the estate is below the filing threshold. If Form 706 is not filed, the DSUE is permanently lost and the surviving spouse may only use their own exemption. Unlike the generation-skipping transfer tax exemption which is not portable under Sec. 2631, the estate tax exemption may be transferred between spouses through this affirmative election process.'
WHERE id = 4003;

-- ID 4007: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'Under IRC Sec. 2503(b), the annual gift tax exclusion for 2026 is $19,000 per donee. Patricia''s taxable gift equals total gift minus exclusion: $119,000 - $19,000 = $100,000. This $100,000 reduces her lifetime exemption under Sec. 2505 ($13.99 million for 2026). A gift tax return (Form 709) must be filed under Sec. 6019 because the gift exceeds the annual exclusion. Unlike gifts that qualify for the annual exclusion and require no reporting, taxable gifts must be reported even when no tax is owed due to the lifetime exemption.'
WHERE id = 4007;

-- ID 4010: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'Under IRC Sec. 2612(a), the generation-skipping transfer tax (GSTT) applies to transfers to skip persons — individuals two or more generations below the transferor under Sec. 2613(a). A grandchild is a skip person if the grandchild''s parent (the transferor''s child) is still alive. Direct transfers to children are not generation-skipping. Unlike the predeceased parent exception under Sec. 2651(e), which reclassifies the grandchild as a non-skip person when the intervening generation has died, no exception applies when the grandchild''s parent is living.'
WHERE id = 4010;

-- ID 4011: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'Under IRC Sec. 2056(b)(7), a qualified terminable interest property (QTIP) trust requires that the surviving spouse receive all income from the trust at least annually for life. The executor elects QTIP treatment on the estate tax return, qualifying the trust for the unlimited marital deduction under Sec. 2056(a). The key advantage is that the deceased spouse controls the remainder beneficiaries after the surviving spouse''s death. Unlike an outright bequest where the surviving spouse has full control, QTIP trust assets are included in the surviving spouse''s gross estate under Sec. 2044 but pass to the first decedent''s chosen beneficiaries.'
WHERE id = 4011;

-- ID 4012: Wealth Transfer and Gifting Strategies
UPDATE questions SET
  explanation = 'Under IRC Sec. 529(c)(2)(B), the 529 plan superfunding provision allows a donor to make a lump-sum contribution of up to five times the annual gift tax exclusion ($19,000 x 5 = $95,000 for 2026) and elect to treat it as made ratably over five years for gift tax purposes. This means no portion uses the lifetime exemption under Sec. 2505. However, no additional annual exclusion gifts may be made to the same beneficiary during the five-year period. Unlike regular annual exclusion gifts under Sec. 2503(b), the superfunding election requires reporting on Form 709 for each of the five years.'
WHERE id = 4012;

COMMIT;
