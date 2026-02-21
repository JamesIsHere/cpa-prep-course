-- Migration: Bloom's L1 rebalancing — TCP batch 1 (36 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 36 L2 (Application) questions to L1 (Remember/Understand) depth for TCP section
-- Affected topics: Passive Activity and At-Risk Rules, Owner-Entity Transactions, Entity Formation and Liquidation, Retirement Plans and Education Savings, International Tax, Nontaxable Dispositions, Individual Tax Planning: Compensation, Entity Tax Compliance: NOLs and Consolidated Returns, Related Party Transactions, Advanced Basis Calculations, Trusts and Estates, Wealth Transfer and Gifting Strategies

BEGIN;

-- ============================================================
-- PASSIVE ACTIVITY AND AT-RISK RULES (4 questions)
-- ============================================================

-- ID 917: Passive Activity and At-Risk Rules — grouping election
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 469, what is the grouping election for passive activities?',
  choices = '["An election allowing a taxpayer to treat one or more trade or business activities as a single activity for passive activity purposes", "An election to exclude rental activities from the passive activity rules entirely", "An election to group all portfolio income with passive income for netting purposes", "An election to defer passive losses until the taxpayer retires"]'::jsonb,
  explanation = 'Correct (A): Under Section 469 and Treasury Regulation 1.469-4, a taxpayer may elect to group one or more trade or business activities or rental activities as a single activity if the activities form an appropriate economic unit. This grouping can help a taxpayer satisfy the material participation tests by combining hours across grouped activities. (B) is wrong because the grouping election does not exclude rental activities from the passive rules. (C) is wrong because portfolio income (interest, dividends, capital gains) is never grouped with passive income under Section 469. (D) is wrong because the grouping election relates to combining activities, not deferring losses until retirement.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 917;

-- ID 918: Passive Activity and At-Risk Rules — material participation tests
-- correct_index = 1
UPDATE questions SET
  stem = 'Which of the following is a test for material participation under Section 469?',
  choices = '["The taxpayer must own at least 50% of the activity to be considered materially participating", "The taxpayer participates in the activity for more than 500 hours during the tax year", "The taxpayer must receive at least 10% of gross income from the activity", "The taxpayer must be a licensed professional in the field of the activity"]'::jsonb,
  explanation = 'Correct (B): Under Treasury Regulation 1.469-5T(a)(1), a taxpayer materially participates in an activity if the individual participates for more than 500 hours during the tax year. This is one of seven tests, any one of which can establish material participation. (A) is wrong because material participation is based on the taxpayer''s involvement in operations, not ownership percentage. (C) is wrong because there is no income-percentage threshold test for material participation. (D) is wrong because professional licensing is not a requirement for material participation under the regulations.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 918;

-- ID 919: Passive Activity and At-Risk Rules — at-risk rules purpose
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 465, what is the purpose of the at-risk rules?',
  choices = '["To prevent taxpayers from deducting losses from activities in which they have no capital invested", "To limit passive activity losses to the amount of passive income earned during the year", "To limit a taxpayer''s deductible losses to the amount the taxpayer has economically at risk in the activity", "To require taxpayers to report all business activities on a single Schedule C"]'::jsonb,
  explanation = 'Correct (C): Under Section 465, the at-risk rules limit a taxpayer''s deductible loss from an activity to the amount the taxpayer has at risk, which generally includes cash contributions, the adjusted basis of property contributed, and amounts borrowed for which the taxpayer is personally liable or has pledged property. (A) is wrong because the at-risk rules limit losses to the at-risk amount, not simply to whether capital was invested. (B) is wrong because that describes the passive activity loss rules under Section 469, not the at-risk rules. (D) is wrong because the at-risk rules do not consolidate reporting onto a single schedule.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 919;

-- ID 920: Passive Activity and At-Risk Rules — passive loss netting
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 469, how are passive activity losses netted across activities?',
  choices = '["Passive losses may offset portfolio income such as dividends and interest without limitation", "Passive losses may offset wages and salary income up to $25,000 per year", "Each passive activity must be considered separately, and losses from one may never offset income from another", "Passive losses from all activities are combined and may offset passive income from other activities, with excess losses suspended"]'::jsonb,
  explanation = 'Correct (D): Under Section 469(d), all passive activity losses are aggregated and may offset passive activity income from other passive sources. If total passive losses exceed total passive income for the year, the excess is suspended and carried forward to future years until the taxpayer generates passive income or disposes of the activity in a fully taxable transaction. (A) is wrong because passive losses generally cannot offset portfolio income. (B) is wrong because the $25,000 allowance applies only to rental real estate activities with active participation, not to all passive losses against wages. (C) is wrong because passive income and losses from different activities may be netted against each other.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 920;

-- ============================================================
-- OWNER-ENTITY TRANSACTIONS (4 questions)
-- ============================================================

-- ID 988: Owner-Entity Transactions — corporate basis in contributed property
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 362, what basis does a corporation take in property received in a Section 351 exchange?',
  choices = '["The transferor''s adjusted basis in the property, increased by any gain recognized by the transferor", "The fair market value of the property at the date of transfer", "The lower of the transferor''s basis or fair market value of the property", "Zero basis, because the exchange is nontaxable to the corporation"]'::jsonb,
  explanation = 'Correct (A): Under Section 362(a), in a Section 351 exchange the corporation takes a transferred basis equal to the transferor''s adjusted basis in the property, increased by any gain recognized by the transferor on the exchange (for example, gain triggered by receipt of boot). This preserves the built-in gain or loss for future recognition by the corporation. (B) is wrong because fair market value basis applies to taxable purchases, not Section 351 transfers. (C) is wrong because the lower-of rule applies to certain loss property under Section 362(e)(2), not to the general rule. (D) is wrong because the corporation does not take a zero basis in contributed property.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 988;

-- ID 989: Owner-Entity Transactions — services in Section 351
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 351, what is the tax treatment when a transferor receives stock solely for services?',
  choices = '["The stock received for services qualifies for nonrecognition under Section 351", "The fair market value of the stock received for services is taxable as ordinary compensation income", "The stock received for services is tax-free if the transferor also contributes nominal property", "Services are treated as property for Section 351 purposes when contributed to a newly formed corporation"]'::jsonb,
  explanation = 'Correct (B): Under Section 351, stock issued for services is not treated as issued in exchange for property. Therefore, the transferor must recognize ordinary compensation income equal to the fair market value of the stock received. Stock issued for services does not count toward the 80% control requirement. (A) is wrong because Section 351 nonrecognition applies only to transfers of property, not services. (C) is wrong because receiving stock for services is always taxable regardless of additional nominal property contributions. (D) is wrong because services are explicitly excluded from the definition of property under Section 351.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 989;

-- ID 991: Owner-Entity Transactions — QSBS exclusion
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 1202, what is the qualified small business stock (QSBS) gain exclusion?',
  choices = '["An exclusion of up to $1 million of gain on the sale of any corporate stock held for at least one year", "A 50% exclusion of gain on the sale of stock in any domestic C corporation regardless of size", "An exclusion of up to 100% of gain on the sale of stock in a qualified small business, subject to holding period and other requirements", "An exclusion available only to corporate shareholders that sell stock in subsidiaries"]'::jsonb,
  explanation = 'Correct (C): Under Section 1202, a noncorporate taxpayer may exclude up to 100% of gain on the sale of qualified small business stock (QSBS) acquired after September 27, 2010, subject to a per-issuer limit of the greater of $10 million or 10 times the adjusted basis. The stock must be held for more than five years and issued by a qualified small business (a domestic C corporation with gross assets not exceeding $50 million). (A) is wrong because the holding period is five years, not one year, and the limit structure differs. (B) is wrong because the exclusion applies only to qualified small businesses meeting specific criteria, not any C corporation. (D) is wrong because the exclusion is for noncorporate taxpayers, not corporate shareholders.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 991;

-- ID 992: Owner-Entity Transactions — appreciated property distribution
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 311, what happens when a corporation distributes appreciated property to a shareholder?',
  choices = '["The corporation recognizes no gain or loss on the distribution", "The shareholder recognizes gain equal to the excess of the property''s basis over its fair market value", "The distribution is treated as a nontaxable return of capital to the shareholder", "The corporation recognizes gain as if it had sold the property at fair market value"]'::jsonb,
  explanation = 'Correct (D): Under Section 311(b), when a corporation distributes property with a fair market value exceeding its adjusted basis, the corporation recognizes gain as if it had sold the property at fair market value on the date of distribution. This prevents corporations from distributing appreciated property to avoid corporate-level tax. (A) is wrong because Section 311(b) requires gain recognition on appreciated property distributions. (B) is wrong because the shareholder''s treatment depends on Section 301, not the corporation''s basis-to-FMV comparison. (C) is wrong because the distribution is a taxable event at the corporate level.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 992;

-- ============================================================
-- ENTITY FORMATION AND LIQUIDATION (3 questions)
-- ============================================================

-- ID 1029: Entity Formation and Liquidation — Section 351 requirements
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 351, what are the requirements for tax-free incorporation?',
  choices = '["One or more persons must transfer property to a corporation solely in exchange for stock, and the transferors must control the corporation immediately after the exchange", "Any transfer of property to a corporation qualifies for nonrecognition if the transferor receives at least one share of stock", "The transferor must contribute property worth at least $50,000 to qualify for nonrecognition", "Tax-free incorporation requires approval from the IRS before the transfer occurs"]'::jsonb,
  explanation = 'Correct (A): Under Section 351(a), no gain or loss is recognized when one or more persons transfer property to a corporation solely in exchange for stock, provided the transferors are in control of the corporation immediately after the exchange. Control is defined under Section 368(c) as ownership of at least 80% of the total combined voting power and at least 80% of each class of nonvoting stock. (B) is wrong because the 80% control requirement must be met immediately after the exchange. (C) is wrong because there is no minimum dollar threshold for the property transferred. (D) is wrong because Section 351 is self-executing and does not require IRS approval.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1029;

-- ID 1031: Entity Formation and Liquidation — parent basis in Section 332 liquidation
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 334, what basis does the parent take in assets received from a Section 332 liquidation?',
  choices = '["Fair market value of the assets on the date of distribution", "The subsidiary''s adjusted basis in the assets carries over to the parent (transferred basis)", "The parent''s basis in the subsidiary stock is allocated among the assets received", "Zero basis, because the liquidation is a nontaxable event"]'::jsonb,
  explanation = 'Correct (B): Under Section 334(b)(1), when a parent corporation receives assets in a complete liquidation of an 80%-or-more owned subsidiary under Section 332, the parent takes a transferred basis — the subsidiary''s adjusted basis in the assets carries over to the parent. This preserves the built-in gain or loss for future recognition. (A) is wrong because fair market value basis applies to taxable liquidations under Section 331, not Section 332. (C) is wrong because the parent''s stock basis is not allocated to the assets; the subsidiary''s asset bases carry over. (D) is wrong because the parent does not take a zero basis in the distributed assets.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1031;

-- ID 1032: Entity Formation and Liquidation — minority shareholder in liquidation
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 331, how is a liquidating distribution to a minority shareholder taxed?',
  choices = '["It is tax-free because all corporate liquidations qualify for nonrecognition", "It is treated as ordinary dividend income to the extent of earnings and profits", "It is treated as a sale or exchange of stock, with gain or loss measured as the difference between the distribution and the shareholder''s stock basis", "It is taxed at a flat 28% capital gains rate regardless of the holding period"]'::jsonb,
  explanation = 'Correct (C): Under Section 331(a), amounts received by a shareholder in a complete liquidation are treated as full payment in exchange for the stock. The shareholder recognizes capital gain or loss equal to the difference between the fair market value of the distribution and the adjusted basis in the stock surrendered. This sale-or-exchange treatment applies to minority shareholders who do not qualify for Section 332 nonrecognition. (A) is wrong because Section 331 requires gain or loss recognition by the shareholder. (B) is wrong because liquidating distributions are treated as a stock sale, not as dividends. (D) is wrong because the rate depends on the holding period and the shareholder''s tax bracket, not a flat 28%.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1032;

-- ============================================================
-- RETIREMENT PLANS AND EDUCATION SAVINGS (3 questions)
-- ============================================================

-- ID 945: Retirement Plans and Education Savings — RMD beginning date
-- correct_index = 3
UPDATE questions SET
  stem = 'Under the SECURE Act, what is the required beginning date for traditional IRA minimum distributions?',
  choices = '["Age 59 1/2, which is the earliest age for penalty-free withdrawals", "Age 65, aligning with Medicare eligibility", "Age 70 1/2, the original threshold under pre-SECURE Act law", "April 1 of the year following the year the account owner reaches age 73"]'::jsonb,
  explanation = 'Correct (D): Under the SECURE 2.0 Act, the required beginning date for traditional IRA required minimum distributions (RMDs) is April 1 of the year following the year the owner reaches age 73 (for individuals reaching age 72 after December 31, 2022). The original SECURE Act raised the age from 70 1/2 to 72, and SECURE 2.0 further raised it to 73. (A) is wrong because age 59 1/2 is the penalty-free withdrawal age, not the RMD beginning date. (B) is wrong because the RMD age is not tied to Medicare eligibility at 65. (C) is wrong because age 70 1/2 was the pre-SECURE Act threshold, which has been superseded.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 945;

-- ID 946: Retirement Plans and Education Savings — SIMPLE IRA purpose
-- correct_index = 0
UPDATE questions SET
  stem = 'What is the purpose of a SIMPLE IRA plan?',
  choices = '["To provide a tax-advantaged retirement savings vehicle for small employers with 100 or fewer employees", "To allow self-employed individuals to defer unlimited amounts of compensation", "To replace 401(k) plans for employers with more than 500 employees", "To provide a tax-free savings account for medical and education expenses"]'::jsonb,
  explanation = 'Correct (A): A SIMPLE (Savings Incentive Match Plan for Employees) IRA is a retirement plan designed for small businesses with 100 or fewer employees who received at least $5,000 in compensation during the preceding year. It provides a simplified alternative to a 401(k) with lower administrative costs. Employers must make either matching contributions or nonelective contributions. (B) is wrong because SIMPLE IRAs have annual contribution limits, not unlimited deferral. (C) is wrong because SIMPLE IRAs are for small employers with 100 or fewer employees, not large employers. (D) is wrong because SIMPLE IRAs are retirement savings vehicles, not health or education accounts.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 946;

-- ID 947: Retirement Plans and Education Savings — Roth conversion consequences
-- correct_index = 1
UPDATE questions SET
  stem = 'What is the tax consequence of converting a traditional IRA to a Roth IRA?',
  choices = '["The conversion is tax-free as long as the funds remain in the Roth IRA for at least five years", "The converted amount is included in gross income as ordinary income in the year of conversion", "The conversion triggers a 10% early withdrawal penalty regardless of the account owner''s age", "The converted amount is taxed at long-term capital gains rates"]'::jsonb,
  explanation = 'Correct (B): When a taxpayer converts a traditional IRA to a Roth IRA, the converted amount (to the extent it represents previously deducted contributions and earnings) is included in gross income as ordinary income in the year of conversion. The 10% early withdrawal penalty under Section 72(t) does not apply to conversions. Future qualified distributions from the Roth IRA are tax-free. (A) is wrong because the five-year rule applies to qualified distributions from the Roth, not to whether the conversion itself is taxable. (C) is wrong because the 10% penalty is waived for Roth conversions. (D) is wrong because the converted amount is taxed as ordinary income, not at capital gains rates.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 947;

-- ============================================================
-- INTERNATIONAL TAX (3 questions)
-- ============================================================

-- ID 971: International Tax — CFC definition
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 957, what defines a controlled foreign corporation (CFC)?',
  choices = '["Any foreign corporation that has at least one U.S. shareholder", "Any foreign corporation that earns more than 50% of its income from U.S. sources", "A foreign corporation in which U.S. shareholders (each owning 10% or more) collectively own more than 50% of the vote or value", "A foreign corporation that is incorporated in a country with no U.S. tax treaty"]'::jsonb,
  explanation = 'Correct (C): Under Section 957(a), a controlled foreign corporation (CFC) is any foreign corporation in which U.S. shareholders own more than 50% of the total combined voting power or more than 50% of the total value of the stock. A U.S. shareholder is defined under Section 951(b) as a U.S. person who owns 10% or more of the foreign corporation''s voting power or value. (A) is wrong because having at least one U.S. shareholder does not alone make the corporation a CFC; the 50% threshold must be met. (B) is wrong because CFC status depends on ownership, not the source of income. (D) is wrong because CFC status is based on ownership percentages, not the country of incorporation or treaty status.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 971;

-- ID 973: International Tax — Section 245A DRD
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 245A, what is the dividends received deduction for foreign-source dividends?',
  choices = '["A 50% deduction for dividends received from any foreign corporation", "A deduction limited to dividends from foreign corporations in tax-treaty countries", "A deduction that applies only to dividends received by individual shareholders from foreign sources", "A 100% deduction for the foreign-source portion of dividends received by a domestic corporate shareholder from a specified 10%-owned foreign corporation"]'::jsonb,
  explanation = 'Correct (D): Under Section 245A, a domestic C corporation that is a U.S. shareholder of a specified 10%-owned foreign corporation may deduct 100% of the foreign-source portion of dividends received from that corporation. This effectively exempts foreign earnings from U.S. tax when repatriated as dividends, implementing a participation exemption system. (A) is wrong because the deduction is 100%, not 50%, and applies only to 10%-owned foreign corporations. (B) is wrong because Section 245A is not limited to treaty countries. (C) is wrong because the deduction is available only to domestic C corporations, not individual shareholders.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 973;

-- ID 974: International Tax — FDII deduction
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 250, what is the purpose of the foreign-derived intangible income (FDII) deduction?',
  choices = '["To incentivize domestic corporations to serve foreign markets by providing a reduced effective tax rate on income derived from exports of property and services to foreign persons", "To eliminate U.S. tax on all income earned by domestic corporations from foreign customers", "To replace the Section 245A dividends received deduction for foreign-source income", "To allow individual taxpayers to exclude foreign-earned income up to a statutory threshold"]'::jsonb,
  explanation = 'Correct (A): Under Section 250, the FDII deduction provides domestic C corporations with a deduction equal to 37.5% (reduced to 21.875% for tax years beginning after 2025) of their foreign-derived intangible income. This results in a lower effective tax rate on income from serving foreign markets, incentivizing domestic production and export of goods and services. (B) is wrong because the FDII deduction reduces, but does not eliminate, U.S. tax on foreign-derived income. (C) is wrong because the FDII deduction and Section 245A serve different purposes and are not substitutes. (D) is wrong because the FDII deduction applies to domestic C corporations, and the foreign-earned income exclusion under Section 911 is a separate provision for individuals.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 974;

-- ============================================================
-- NONTAXABLE DISPOSITIONS (3 questions)
-- ============================================================

-- ID 1239: Nontaxable Dispositions — installment method definition
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 453, what is the installment method of reporting gain?',
  choices = '["A method that defers all gain until the final payment is received from the buyer", "A method that recognizes gain proportionally as each payment is received, based on the gross profit ratio", "A method that requires the seller to report the entire gain in the year of sale regardless of when payments are received", "A method available only for sales of personal-use property under $150,000"]'::jsonb,
  explanation = 'Correct (B): Under Section 453(c), the installment method allocates the gross profit (selling price minus adjusted basis) proportionally across each payment received using the gross profit ratio (gross profit divided by total contract price). Each payment includes a return of basis, recognized gain, and interest income. (A) is wrong because the installment method recognizes gain with each payment, not only upon the final payment. (C) is wrong because the installment method is the opposite of full recognition in the year of sale. (D) is wrong because the installment method applies to sales of real and personal property with at least one payment after the year of sale, without a $150,000 threshold.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1239;

-- ID 1240: Nontaxable Dispositions — depreciation recapture in installment sales
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 453, how is depreciation recapture treated in an installment sale?',
  choices = '["Depreciation recapture is deferred and recognized proportionally with each installment payment", "Depreciation recapture is excluded from gain because the asset was fully depreciated", "Depreciation recapture under Sections 1245 and 1250 must be recognized in full in the year of sale, regardless of when payments are received", "Depreciation recapture is treated as a long-term capital gain eligible for installment reporting"]'::jsonb,
  explanation = 'Correct (C): Under Section 453(i), depreciation recapture under Sections 1245 and 1250 is recognized in full in the year of the installment sale, even if no payment is received that year. Only the gain in excess of the recapture amount may be reported using the installment method. This acceleration rule prevents taxpayers from deferring ordinary income recapture through installment reporting. (A) is wrong because recapture is accelerated, not deferred. (B) is wrong because depreciation recapture is recognized as ordinary income regardless of full depreciation. (D) is wrong because recapture is ordinary income, not capital gain.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1240;

-- ID 1241: Nontaxable Dispositions — related party installment sales
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 453, what restriction applies to installment sales between related parties?',
  choices = '["Installment sales between related parties are completely prohibited under Section 453", "Related party installment sales are allowed but the interest rate must be at least double the applicable federal rate", "Related party installment sales are only restricted when the property is inventory", "If the related-party buyer resells the property within two years, the original seller must recognize the remaining deferred gain immediately"]'::jsonb,
  explanation = 'Correct (D): Under Section 453(e), when a taxpayer makes an installment sale to a related party (as defined in Sections 267(b) and 318(a)) and the related party resells the property within two years, the original seller must recognize gain on the earlier of the date of resale or the date the remaining installment payments are received. This rule prevents related parties from using two-step transactions to accelerate cash while deferring tax. (A) is wrong because installment sales to related parties are allowed, just subject to the resale acceleration rule. (B) is wrong because there is no doubled interest rate requirement. (C) is wrong because the restriction applies to all types of property, not just inventory.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1241;

-- ============================================================
-- INDIVIDUAL TAX PLANNING: COMPENSATION (3 questions)
-- ============================================================

-- ID 902: Individual Tax Planning: Compensation — Section 83(b) election
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 83(b), what is the purpose of an 83(b) election for restricted stock?',
  choices = '["To include the fair market value of restricted stock in gross income at the time of grant rather than waiting until the stock vests", "To defer all taxation on restricted stock until the stock is sold", "To convert ordinary compensation income on restricted stock into long-term capital gain", "To exclude restricted stock from gross income entirely if the vesting period exceeds three years"]'::jsonb,
  explanation = 'Correct (A): Under Section 83(b), a taxpayer who receives restricted property (such as restricted stock) may elect to include the fair market value of the property (minus any amount paid) in gross income in the year of receipt, rather than waiting until the restrictions lapse. This election allows the taxpayer to start the capital gain holding period at the grant date and limits ordinary income to the spread at grant. (B) is wrong because the election accelerates income, not defers it. (C) is wrong because the election does not convert compensation income to capital gain; it simply starts the holding period earlier. (D) is wrong because Section 83(b) includes property in income at grant, not excludes it.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 902;

-- ID 904: Individual Tax Planning: Compensation — excluded compensation types
-- correct_index = 1
UPDATE questions SET
  stem = 'Which of the following types of compensation is excluded from gross income?',
  choices = '["Cash bonuses paid by an employer at year-end", "Employer-provided health insurance premiums under a group plan excluded under Section 106", "Vacation pay accrued and paid during the year", "Tips received by an employee totaling more than $20 per month"]'::jsonb,
  explanation = 'Correct (B): Under Section 106(a), employer-provided coverage under an accident or health plan is excluded from an employee''s gross income. The premiums paid by the employer for group health insurance are not taxable to the employee. (A) is wrong because cash bonuses are included in gross income as compensation under Section 61. (C) is wrong because vacation pay is taxable compensation when received. (D) is wrong because tips are included in gross income and are subject to income and employment taxes.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 904;

-- ID 905: Individual Tax Planning: Compensation — NQSO tax treatment
-- correct_index = 2
UPDATE questions SET
  stem = 'What is the tax treatment of a nonqualified stock option (NQSO) at exercise?',
  choices = '["No tax is owed at exercise; tax is deferred until the stock is sold", "The option premium paid at grant is deductible as a capital loss at exercise", "The employee recognizes ordinary compensation income equal to the difference between the fair market value and the exercise price", "The spread at exercise is taxed as long-term capital gain if the option was held for more than one year"]'::jsonb,
  explanation = 'Correct (C): When a nonqualified stock option is exercised, the employee recognizes ordinary compensation income under Section 83(a) equal to the spread — the difference between the fair market value of the stock on the exercise date and the exercise price paid. The employer receives a corresponding compensation deduction. (A) is wrong because NQSOs are taxed at exercise, unlike incentive stock options (ISOs) which defer tax. (B) is wrong because there is no capital loss deduction for the option premium. (D) is wrong because the spread at exercise is ordinary income, not capital gain, regardless of the holding period of the option.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 905;

-- ============================================================
-- ENTITY TAX COMPLIANCE: NOLS AND CONSOLIDATED RETURNS (3 questions)
-- ============================================================

-- ID 959: Entity Tax Compliance — consolidated return requirements
-- correct_index = 3
UPDATE questions SET
  stem = 'What is required for a group of affiliated corporations to file a consolidated return?',
  choices = '["Each member must be incorporated in the same state", "The parent must own at least 51% of each subsidiary''s voting stock", "All members must have the same fiscal year-end", "A common parent must own at least 80% of the voting power and 80% of the value of at least one subsidiary, and all includible corporations must consent"]'::jsonb,
  explanation = 'Correct (D): Under Section 1504(a), an affiliated group eligible to file a consolidated return requires a common parent corporation that directly owns at least 80% of the total voting power and at least 80% of the total value of at least one includible corporation. Each other includible corporation must be connected to the parent through 80% ownership chains. All members must consent to filing the consolidated return, and the election is binding for subsequent years unless the group terminates. (A) is wrong because there is no same-state incorporation requirement. (B) is wrong because the threshold is 80%, not 51%. (C) is wrong because members may have different fiscal year-ends, though practical alignment is common.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 959;

-- ID 960: Entity Tax Compliance — NOL carryforward under TCJA
-- correct_index = 0
UPDATE questions SET
  stem = 'Under the TCJA, how are net operating losses (NOLs) generated after 2017 treated?',
  choices = '["They may be carried forward indefinitely but are limited to offsetting 80% of taxable income in any carryforward year", "They may be carried back two years and carried forward 20 years without limitation", "They may offset 100% of taxable income but expire after five years", "They are eliminated entirely and may not be carried to any other tax year"]'::jsonb,
  explanation = 'Correct (A): Under the Tax Cuts and Jobs Act (TCJA), NOLs arising in tax years after December 31, 2017 may be carried forward indefinitely but are limited to 80% of taxable income (computed without regard to the NOL deduction) in any carryforward year. The TCJA also eliminated the two-year carryback for most taxpayers (with exceptions for certain farming losses). (B) is wrong because the two-year carryback and 20-year carryforward with no limitation was the pre-TCJA rule. (C) is wrong because post-TCJA NOLs do not expire but are limited to 80% of taxable income. (D) is wrong because NOLs were not eliminated; they were modified.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 960;

-- ID 962: Entity Tax Compliance — intercompany transactions in consolidation
-- correct_index = 1
UPDATE questions SET
  stem = 'In a consolidated return, how are gains on intercompany sales of depreciable property treated?',
  choices = '["They are recognized immediately by the selling member and taxed at the group level", "The gain is deferred and recognized over the remaining depreciable life of the asset through reduced depreciation deductions to the buying member", "They are permanently excluded from the consolidated group''s taxable income", "They are recognized only when the parent corporation files a separate company return"]'::jsonb,
  explanation = 'Correct (B): Under Treasury Regulation 1.1502-13, gains on intercompany sales within a consolidated group are deferred. For depreciable property, the deferred gain is taken into account over the remaining useful life of the asset as the buying member claims depreciation deductions based on the higher intercompany purchase price. This matching rule ensures the gain is recognized as the corresponding depreciation deductions offset the buying member''s income. (A) is wrong because the gain is deferred, not immediately recognized. (C) is wrong because the gain is deferred and eventually recognized, not permanently excluded. (D) is wrong because the gain is triggered by depreciation or disposition, not by filing status.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 962;

-- ============================================================
-- RELATED PARTY TRANSACTIONS (3 questions)
-- ============================================================

-- ID 1248: Related Party Transactions — Section 267 relationships
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 267, which relationships create related-party status?',
  choices = '["Only relationships between a corporation and its shareholders owning more than 80% of the stock", "Only relationships between family members as defined by state law", "Members of a family (siblings, spouses, ancestors, and lineal descendants), and an individual and a corporation in which the individual owns more than 50% of the stock, among other specified relationships", "Any two taxpayers who file returns with the same tax preparer"]'::jsonb,
  explanation = 'Correct (C): Under Section 267(b), related parties include members of a family (defined in Section 267(c)(4) as brothers, sisters, spouse, ancestors, and lineal descendants), an individual and a corporation in which the individual directly or indirectly owns more than 50% of the stock, two corporations that are members of the same controlled group, and several other specified relationships. (A) is wrong because the threshold for individual-corporation related-party status is more than 50%, not 80%. (B) is wrong because Section 267 covers relationships beyond family members. (D) is wrong because sharing a tax preparer does not create related-party status.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1248;

-- ID 1251: Related Party Transactions — family attribution
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 267, how does family attribution work for determining related-party status?',
  choices = '["Stock owned by aunts, uncles, and cousins is attributed to the taxpayer", "Attribution applies only to stock owned by the taxpayer''s spouse", "Attribution extends to all relatives within three degrees of kinship under state law", "Stock owned by a taxpayer''s siblings, spouse, ancestors, and lineal descendants is attributed to the taxpayer"]'::jsonb,
  explanation = 'Correct (D): Under Section 267(c)(4), for purposes of determining constructive ownership, an individual is considered to own stock owned by brothers, sisters (including half-siblings), spouse, ancestors (parents, grandparents), and lineal descendants (children, grandchildren). This attribution determines whether the more-than-50% ownership threshold is met for related-party status between an individual and a corporation. (A) is wrong because aunts, uncles, and cousins are not included in the Section 267 family attribution rules. (B) is wrong because attribution extends beyond the spouse to siblings, ancestors, and descendants. (C) is wrong because Section 267 uses a specific federal definition, not a state-law degrees-of-kinship test.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1251;

-- ID 1253: Related Party Transactions — loss disallowance
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 267, what is the consequence of a loss on a sale to a related party?',
  choices = '["The loss is disallowed to the seller, but the buyer may use the disallowed loss to reduce gain on a subsequent sale to an unrelated party", "The loss is deferred until the related party sells the property to an unrelated third party, at which point both parties recognize gain or loss", "The loss is permanently disallowed and can never benefit either party", "The loss is allowed but limited to 50% of the amount that would otherwise be recognized"]'::jsonb,
  explanation = 'Correct (A): Under Section 267(a)(1), a loss on a sale or exchange between related parties is disallowed to the seller. However, under Section 267(d), if the buyer later sells the property to an unrelated party at a gain, the buyer may reduce the recognized gain by the amount of the previously disallowed loss. The disallowed loss can only offset gain, not create or increase a loss for the buyer. (B) is wrong because the seller''s loss is permanently disallowed, not deferred; only the buyer benefits on resale. (C) is wrong because the buyer may use the disallowed loss to reduce gain on a subsequent sale. (D) is wrong because the loss is fully disallowed, not partially limited.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1253;

-- ============================================================
-- ADVANCED BASIS CALCULATIONS (3 questions)
-- ============================================================

-- ID 999: Advanced Basis Calculations — purchased partnership interest basis
-- correct_index = 1
UPDATE questions SET
  stem = 'What is a partner''s outside basis when a partnership interest is purchased?',
  choices = '["The selling partner''s adjusted basis in the interest at the time of sale", "The purchase price paid for the interest, including the buyer''s share of partnership liabilities assumed", "The fair market value of the partnership''s underlying assets multiplied by the buyer''s ownership percentage", "The original capital contribution made by the selling partner when the partnership was formed"]'::jsonb,
  explanation = 'Correct (B): When a partner purchases a partnership interest, the buyer''s outside basis (tax basis in the interest) equals the purchase price paid plus the buyer''s share of partnership liabilities under Section 752. The purchase price reflects the arm''s-length value negotiated between the buyer and seller. Assumption of the selling partner''s share of liabilities is treated as an additional cost of acquiring the interest. (A) is wrong because the buyer''s basis is the purchase price, not the seller''s carryover basis. (C) is wrong because the buyer''s basis is determined by the purchase price, not a proportionate share of asset fair values. (D) is wrong because the buyer''s basis derives from the purchase transaction, not the original capital contribution.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 999;

-- ID 1000: Advanced Basis Calculations — S corporation basis ordering
-- correct_index = 2
UPDATE questions SET
  stem = 'What is the ordering rule for S corporation shareholder basis adjustments?',
  choices = '["Losses reduce basis first, then income items increase basis, then distributions reduce basis", "Distributions reduce basis first, then income and loss items are applied simultaneously", "Income items increase basis first, then distributions reduce basis, then losses and deductions reduce basis", "Income items and losses are netted, and the net amount adjusts basis in a single step at year-end"]'::jsonb,
  explanation = 'Correct (C): Under Section 1368 and Treasury Regulation 1.1367-1(f), the ordering rules for adjusting an S corporation shareholder''s stock basis are: (1) increase for income items (including tax-exempt income), (2) decrease for distributions (nontaxable to the extent of basis), and (3) decrease for losses, deductions, and nondeductible expenses. This ordering maximizes the amount of distributions that can be received tax-free before losses reduce basis. (A) is wrong because losses do not reduce basis before income items. (B) is wrong because distributions do not come before income items. (D) is wrong because the adjustments follow a specific sequential order, not a single netting step.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1000;

-- ID 1001: Advanced Basis Calculations — liquidating distribution basis
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 732, what basis does a partner take in property received in a liquidating distribution?',
  choices = '["The fair market value of the property on the date of distribution", "The partnership''s inside basis in the property, without adjustment", "The lower of the partnership''s basis in the property or the fair market value", "The partner''s outside basis in the partnership interest, reduced by any cash received in the same distribution"]'::jsonb,
  explanation = 'Correct (D): Under Section 732(b), in a liquidating distribution the partner''s basis in property received equals the partner''s outside basis in the partnership interest, reduced by any cash received in the same distribution. This substituted basis rule ensures that the partner''s entire remaining basis in the interest is absorbed by the distributed property, preventing gain or loss recognition in most cases. (A) is wrong because fair market value basis applies to taxable transactions, not partnership liquidating distributions. (B) is wrong because the partnership''s inside basis is used only in current (nonliquidating) distributions under Section 732(a). (C) is wrong because the lower-of rule applies to current distributions, not liquidating distributions.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1001;

-- ============================================================
-- TRUSTS AND ESTATES (2 questions)
-- ============================================================

-- ID 1013: Trusts and Estates — grantor trust definition
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Sections 671-679, what defines a grantor trust?',
  choices = '["A trust in which the grantor retains certain powers or interests, causing the trust income to be taxed to the grantor rather than the trust", "A trust that distributes all income to beneficiaries annually and pays no tax at the trust level", "A trust established by a will that becomes effective upon the grantor''s death", "Any trust with more than one beneficiary regardless of the grantor''s retained powers"]'::jsonb,
  explanation = 'Correct (A): Under Sections 671 through 679, a grantor trust is one in which the grantor retains specified powers or interests — such as the power to revoke the trust (Section 676), the power to control beneficial enjoyment (Section 674), or a reversionary interest exceeding 5% (Section 673) — causing all or a portion of the trust''s income, deductions, and credits to be taxed directly to the grantor. (B) is wrong because that describes a simple trust, not a grantor trust. (C) is wrong because a trust established by a will is a testamentary trust, which is not inherently a grantor trust. (D) is wrong because the number of beneficiaries is irrelevant to grantor trust status.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1013;

-- ID 1014: Trusts and Estates — distribution deduction
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 661, what is the distribution deduction for a complex trust?',
  choices = '["A deduction equal to the fair market value of all property distributed to beneficiaries during the year", "A deduction for the lesser of distributions actually paid or required to be paid, or distributable net income (DNI), reducing the trust''s taxable income", "A deduction that allows the trust to exclude all capital gains from taxable income", "A deduction available only when the trust distributes more than 50% of its gross income"]'::jsonb,
  explanation = 'Correct (B): Under Section 661(a), a complex trust may deduct the sum of income required to be distributed currently and any other amounts properly paid, credited, or required to be distributed, but the deduction is limited to distributable net income (DNI) as defined in Section 643(a). This deduction operates as a conduit mechanism — income taxed to the trust is reduced by amounts flowing through to beneficiaries, who then report the income. (A) is wrong because the deduction is limited to DNI, not the fair market value of distributed property. (C) is wrong because capital gains are generally excluded from DNI, but the distribution deduction itself does not exclude them from taxable income. (D) is wrong because there is no 50% threshold for claiming the distribution deduction.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1014;

-- ============================================================
-- WEALTH TRANSFER AND GIFTING STRATEGIES (2 questions)
-- ============================================================

-- ID 930: Wealth Transfer and Gifting Strategies — qualified tuition exclusion
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 2503(e), what payments are excluded from the gift tax?',
  choices = '["Any payment made to a family member for living expenses up to the annual exclusion amount", "Payments for room and board at an educational institution made on behalf of any individual", "Payments made directly to an educational institution for tuition or to a medical provider for medical care on behalf of any individual", "All payments made to a 529 plan regardless of the amount contributed"]'::jsonb,
  explanation = 'Correct (C): Under Section 2503(e), an unlimited exclusion from the gift tax applies to amounts paid directly to an educational institution for tuition or to a medical care provider for medical expenses on behalf of any individual. These qualified transfers are not treated as taxable gifts and do not reduce the annual exclusion or lifetime exemption. (A) is wrong because living expenses are not covered by the Section 2503(e) exclusion. (B) is wrong because room and board are not qualified tuition expenses under this provision. (D) is wrong because 529 plan contributions are subject to gift tax rules, not the Section 2503(e) exclusion.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 930;

-- ID 931: Wealth Transfer and Gifting Strategies — GSTT definition
-- correct_index = 3
UPDATE questions SET
  stem = 'What is the purpose of the generation-skipping transfer tax (GSTT)?',
  choices = '["To tax transfers of property between spouses who are different generations apart in age", "To impose an additional income tax on inherited property received by grandchildren", "To replace the estate tax for all transfers made more than three years before death", "To impose a transfer tax on gifts and bequests that skip a generation, preventing avoidance of estate or gift tax at the skipped generation level"]'::jsonb,
  explanation = 'Correct (D): The generation-skipping transfer tax (GSTT) under Chapter 13 of the IRC (Sections 2601-2664) imposes a flat-rate tax on transfers that skip a generation — such as gifts or bequests from grandparents to grandchildren — to prevent families from avoiding one layer of estate or gift tax by transferring wealth directly to a lower generation. The GSTT applies to direct skips, taxable distributions, and taxable terminations. (A) is wrong because the GSTT applies to generational skips among family members, not transfers between spouses. (B) is wrong because the GSTT is a transfer tax, not an income tax on inherited property. (C) is wrong because the GSTT supplements the estate and gift taxes rather than replacing them.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 931;

COMMIT;
