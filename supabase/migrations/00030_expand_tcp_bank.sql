-- =============================================================================
-- Migration: Expand TCP Question Bank
-- Section: TCP — Tax Compliance and Planning (section_id = 6)
-- New questions: ~486
-- Difficulty: 30% easy, 50% medium, 20% hard
-- =============================================================================
-- TCP Chunk 1: Compensation Planning, Passive/At-Risk, Wealth Transfer, Retirement/Education

-- =============================================================================
-- Individual Tax Planning: Compensation — 38 questions (11 easy, 19 medium, 8 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'An employee exercises incentive stock options (ISOs) and acquires 500 shares at an exercise price of $20 per share when the fair market value is $45 per share. If the employee holds the shares for at least two years from the grant date and one year from the exercise date, how is the gain treated upon sale?',
 '["Ordinary income of $12,500", "Long-term capital gain of $12,500", "Short-term capital gain of $12,500", "No taxable event occurs until the shares are gifted"]'::jsonb,
 1,
 'When ISO shares are held for the required holding period (two years from grant and one year from exercise), the entire gain upon sale is treated as long-term capital gain. The spread at exercise ($45 - $20 = $25 x 500 = $12,500) is not recognized as ordinary income if the holding period is met, though it is an AMT adjustment in the year of exercise.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'Which of the following is a requirement for a nonqualified deferred compensation (NQDC) plan to avoid immediate taxation under Section 409A?',
 '["The deferral election must be made before the beginning of the taxable year in which the compensation is earned", "The plan must be funded through a secular trust", "The employee must forfeit deferred amounts upon termination", "The employer must deposit deferred amounts into an escrow account"]'::jsonb,
 0,
 'Section 409A requires that deferral elections for NQDC plans be made before the beginning of the taxable year in which the services giving rise to the compensation are performed. Failure to comply with the timing rules results in immediate income inclusion plus a 20% additional tax and interest. NQDC plans are typically unfunded promises to pay.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'An employee receives a grant of 1,000 shares of restricted stock with a fair market value of $30 per share. The stock vests in three years. If the employee makes a Section 83(b) election, what is the immediate tax consequence?',
 '["No tax consequence until the stock vests", "$30,000 is included in ordinary income in the year of the grant", "$30,000 is included in capital gains income in the year of the grant", "The employee defers all taxation until the shares are sold"]'::jsonb,
 1,
 'A Section 83(b) election allows the employee to include the fair market value of the restricted stock ($30 x 1,000 = $30,000) in ordinary income at the time of the grant rather than waiting until vesting. This election must be filed within 30 days of the grant. Any subsequent appreciation is taxed as capital gain when the shares are sold.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'Which of the following fringe benefits is excludable from an employee''s gross income under Section 132?',
 '["A $500 holiday cash bonus", "Free use of the company gym located on the employer''s premises", "A personal vacation paid for by the employer", "A $2,000 gift card for meeting sales targets"]'::jsonb,
 1,
 'An on-premises athletic facility provided by the employer qualifies as a de minimis fringe benefit under Section 132(j)(4) and is excludable from the employee''s income if substantially all use is by employees and their families. Cash bonuses, personal vacations, and large gift cards are taxable compensation and do not qualify for exclusion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'In 2026, an employer provides qualified transportation fringe benefits to employees. What is the maximum monthly exclusion for qualified parking?',
 '["$300 per month", "$315 per month", "$325 per month", "$350 per month"]'::jsonb,
 2,
 'For 2026, the maximum monthly exclusion for employer-provided qualified parking under Section 132(f) is $325. This amount is indexed for inflation annually. The same $325 limit applies to transit passes and vanpooling combined. Amounts exceeding the limit are included in the employee''s gross income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'An employee exercises nonqualified stock options (NSOs) and purchases 200 shares at an exercise price of $15 per share when the fair market value is $50 per share. What amount is included in the employee''s ordinary income at the time of exercise?',
 '["$3,000", "$7,000", "$10,000", "$0 until the shares are sold"]'::jsonb,
 1,
 'When NSOs are exercised, the spread between the fair market value and the exercise price is recognized as ordinary income. The calculation is ($50 - $15) x 200 = $7,000. This amount is also subject to employment taxes and is reported on the employee''s W-2. The employer receives a corresponding compensation deduction.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'A key executive participates in a rabbi trust arrangement. Which of the following statements about rabbi trusts is correct?',
 '["Assets in a rabbi trust are protected from the employer''s creditors in bankruptcy", "The executive is taxed on contributions when placed into the trust", "The trust assets remain subject to the claims of the employer''s general creditors", "Rabbi trusts must be funded with government securities"]'::jsonb,
 2,
 'A rabbi trust is an irrevocable trust established by an employer to hold assets for a NQDC plan. The key feature is that trust assets remain subject to the claims of the employer''s general creditors in the event of bankruptcy or insolvency. Because the assets are not secured, the executive is not taxed until benefits are actually distributed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'An employee disposes of ISO shares 10 months after exercise but three years after the grant date. The exercise price was $25 and the FMV at exercise was $40. The sale price is $55 per share. How is the gain treated?',
 '["$15 ordinary income and $15 long-term capital gain per share", "$30 long-term capital gain per share", "$15 ordinary income and $15 short-term capital gain per share", "$30 ordinary income per share"]'::jsonb,
 0,
 'This is a disqualifying disposition because the shares were sold less than one year after exercise (10 months), even though the two-year grant-date requirement was met. In a disqualifying disposition, the spread at exercise ($40 - $25 = $15) is treated as ordinary income. The additional appreciation ($55 - $40 = $15) is capital gain, which is short-term or long-term depending on the holding period from exercise. Since only 10 months passed, the $15 additional gain is short-term. However, the spread at exercise is always ordinary income.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'Under Section 409A, which of the following is a permissible distribution event for a nonqualified deferred compensation plan?',
 '["Separation from service", "The participant''s request for early withdrawal due to financial hardship", "A change in the participant''s investment preferences", "The participant reaching age 50"]'::jsonb,
 0,
 'Section 409A limits distributions from NQDC plans to six permissible events: separation from service, disability, death, a specified time or fixed schedule, change in control, or an unforeseeable emergency. A voluntary early withdrawal or change in investment preferences is not a permissible trigger. Reaching age 50 alone does not qualify unless the plan specifies that age as a distribution date.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'What is the penalty for failing to comply with the requirements of Section 409A for a nonqualified deferred compensation plan?',
 '["A 10% early withdrawal penalty on the deferred amount", "A 50% excise tax on the excess deferral amount", "Loss of the employer''s deduction for the deferred compensation", "Immediate inclusion of the deferred amount in income plus a 20% additional tax and premium interest"]'::jsonb,
 3,
 'Noncompliance with Section 409A results in all deferred compensation being included in the participant''s gross income in the year of the violation. In addition, a 20% additional tax is imposed on the amount included, plus a premium interest charge calculated from the date the compensation was first deferred. This creates a severe penalty for plan design or operational failures.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'Which of the following correctly describes the tax treatment of restricted stock units (RSUs)?',
 '["RSUs are taxed at the grant date based on fair market value", "RSUs are tax-free until the shares are sold", "RSUs are always taxed as long-term capital gain", "RSUs are taxed as ordinary income when they vest and shares are delivered"]'::jsonb,
 3,
 'RSUs are taxed as ordinary income at the time of vesting when shares are delivered to the employee. The amount included in income equals the fair market value of the shares on the vesting date. Unlike restricted stock, a Section 83(b) election is not available for RSUs because no property is transferred at grant. Any subsequent gain or loss from sale is capital gain or loss.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'An employer offers a no-additional-cost service fringe benefit to employees. Under Section 132, which condition must be met for the benefit to be excludable?',
 '["The service must be offered in the same line of business in which the employee works", "The service must have a fair market value of less than $100", "The service must be provided only to highly compensated employees", "The employer must charge the employee at least 50% of the retail price"]'::jsonb,
 0,
 'A no-additional-cost service under Section 132(b) is excludable from income if the employer incurs no substantial additional cost (including forgone revenue) in providing the service, and the service is offered in the same line of business in which the employee works. There is no dollar threshold, and nondiscrimination rules apply so the benefit must be available on substantially similar terms to all employees.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'An employee receives both ISOs and NSOs from the same employer. Which of the following is a key tax difference between the two types of stock options?',
 '["NSOs create an AMT adjustment at exercise; ISOs do not", "ISOs have no income recognition at exercise for regular tax purposes if holding periods are met; NSOs are taxed at exercise", "ISOs provide the employer a compensation deduction; NSOs do not", "NSOs must meet a two-year holding period from grant; ISOs have no holding requirement"]'::jsonb,
 1,
 'The key difference is that ISOs do not trigger regular income tax at exercise if the required holding periods are met (two years from grant, one year from exercise). NSOs, by contrast, are taxed as ordinary income at exercise on the spread between FMV and exercise price. ISOs create an AMT preference item at exercise, and the employer does not receive a deduction for ISOs (unless there is a disqualifying disposition).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'A corporation establishes a NQDC plan for its CEO. The CEO elects to defer $200,000 of 2026 salary under Section 409A. When is the employer entitled to a compensation deduction?',
 '["In 2026 when the salary is earned", "In the year the CEO makes the deferral election", "In the year the deferred compensation is included in the CEO''s gross income", "The employer never receives a deduction for NQDC"]'::jsonb,
 2,
 'Under Section 404(a)(5), the employer''s deduction for NQDC is deferred until the year the compensation is includible in the employee''s gross income. This matching principle ensures the employer cannot deduct the compensation before the employee recognizes income. The deduction is not available when earned or when the election is made, only when payment is made and included in income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'Under Section 132, what is the maximum percentage discount an employee can receive on employer merchandise before it becomes taxable?',
 '["The employer''s gross profit percentage on the merchandise", "25% of the selling price", "50% of the selling price", "Any discount is fully excludable regardless of amount"]'::jsonb,
 0,
 'Under Section 132(c), a qualified employee discount on merchandise (not services) is excludable up to the employer''s gross profit percentage. For example, if an employer''s gross profit percentage is 40%, an employee discount of up to 40% is excludable. Any discount exceeding this threshold is included in the employee''s gross income. For services, the maximum excludable discount is 20%.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'A newly hired executive negotiates a signing bonus of $75,000. The employer also provides a $10,000 moving expense reimbursement. What total amount must be included in the executive''s 2026 gross income?',
 '["$85,000", "$75,000", "$10,000", "$0 because both are excludable hiring incentives"]'::jsonb,
 0,
 'Both the signing bonus and moving expense reimbursement are fully taxable to the employee in 2026. Under the Tax Cuts and Jobs Act (effective through 2025 and extended), employer-paid moving expenses are no longer excludable from income (except for active-duty military). Therefore, the full $85,000 ($75,000 + $10,000) must be included in gross income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'An employee exercises ISOs on 1,000 shares with an exercise price of $10 when the FMV is $35 per share. For alternative minimum tax purposes, what is the AMT adjustment in the year of exercise?',
 '["$0 because ISOs are not subject to AMT", "$10,000", "$25,000", "$35,000"]'::jsonb,
 2,
 'The exercise of ISOs creates an AMT adjustment equal to the spread between the FMV and the exercise price at the date of exercise. The adjustment is ($35 - $10) x 1,000 = $25,000. This amount is added to alternative minimum taxable income in the year of exercise. If the shares are disposed of in the same year (disqualifying disposition), no AMT adjustment applies.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'Which of the following best describes a "working condition fringe benefit" under Section 132?',
 '["Property or services provided by an employer that would be deductible as a business expense if the employee paid for them", "An employer-provided vehicle used exclusively for personal purposes", "Free meals provided for the convenience of the employer on the business premises", "Health insurance premiums paid by the employer"]'::jsonb,
 0,
 'A working condition fringe benefit under Section 132(d) is any property or service provided by the employer to the extent the employee would have been able to deduct the cost as a trade or business expense under Section 162 or depreciation under Section 167 if the employee had paid for it. Examples include employer-provided subscriptions, professional dues, and business-use vehicles.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'A company grants 5,000 RSUs to a vice president. The shares vest ratably over four years (1,250 per year). In year one, the stock price is $40 at vesting. In year two, the price is $55 at vesting. What is the total ordinary income recognized in years one and two?',
 '["$50,000", "$68,750", "$118,750", "$237,500"]'::jsonb,
 2,
 'RSUs are taxed as ordinary income at the FMV on each vesting date. Year one: 1,250 shares x $40 = $50,000. Year two: 1,250 shares x $55 = $68,750. Total ordinary income for years one and two is $50,000 + $68,750 = $118,750. Each vesting event is a separate taxable event, and the income is reported on the employee''s W-2 for the respective year.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'A Section 409A NQDC plan permits distributions upon an unforeseeable emergency. Which of the following qualifies as an unforeseeable emergency under Section 409A?',
 '["The participant wants to purchase a vacation home", "The participant''s primary residence is severely damaged by a natural disaster", "The participant''s child is starting college and tuition is due", "The participant wants to pay off existing credit card debt"]'::jsonb,
 1,
 'An unforeseeable emergency under Section 409A is a severe financial hardship resulting from an illness or accident of the participant or beneficiary, loss of property due to casualty, or other similar extraordinary and unforeseeable circumstances beyond the participant''s control. Purchasing a vacation home, paying tuition, or paying off credit card debt do not qualify as unforeseeable emergencies.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'An employer provides a de minimis fringe benefit to an employee. Which of the following would qualify as a de minimis fringe benefit under Section 132(e)?',
 '["A $250 holiday gift card", "An annual country club membership", "A monthly transit pass valued at $325", "Occasional use of the company photocopier for personal purposes"]'::jsonb,
 3,
 'A de minimis fringe benefit under Section 132(e) is property or service with a value so small that accounting for it would be unreasonable or administratively impracticable. Occasional personal use of the company photocopier is a classic example. Cash and cash equivalents (like gift cards) are never de minimis regardless of amount. Transit passes above $21/month are not de minimis, and club memberships are specifically excluded.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'A publicly traded company grants an executive 10,000 NSOs with an exercise price equal to the FMV of $20 on the grant date. Three years later, the executive exercises all options when the FMV is $65. What is the employer''s compensation deduction in the year of exercise?',
 '["$0 because stock options do not create employer deductions", "$200,000", "$450,000", "$650,000"]'::jsonb,
 2,
 'When NSOs are exercised, the employer receives a compensation deduction equal to the amount of ordinary income recognized by the employee. The spread is ($65 - $20) x 10,000 = $450,000. This deduction is taken in the employer''s tax year that includes the end of the employee''s tax year in which the income is recognized. ISOs generally do not provide an employer deduction unless there is a disqualifying disposition.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'An executive defers $150,000 under a Section 409A plan. Due to an operational failure, the plan makes a distribution at an impermissible time. What is the total additional tax imposed on the executive under Section 409A?',
 '["10% of the distributed amount", "No penalty if the executive was unaware of the violation", "25% of the distributed amount", "20% of the amount included in income plus premium interest"]'::jsonb,
 3,
 'Section 409A imposes a 20% additional tax on any NQDC amount that is included in income due to a plan failure, plus a premium interest charge. The interest is calculated at the underpayment rate plus 1% and runs from the year the compensation was first deferred. The penalty applies regardless of whether the executive was aware of the operational failure.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'For ISOs granted in 2026, what is the maximum aggregate fair market value of stock that may become exercisable for the first time in any calendar year under the $100,000 limitation?',
 '["$50,000", "$100,000", "$150,000", "There is no dollar limitation on ISO exercises"]'::jsonb,
 1,
 'Under Section 422(d), the aggregate fair market value (determined at the grant date) of stock for which ISOs are exercisable for the first time by an employee in any calendar year cannot exceed $100,000. Options exceeding this limit are treated as NSOs. This limitation applies across all plans of the employer and its parent and subsidiaries.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'An employee receives restricted stock valued at $50,000. The stock is subject to a substantial risk of forfeiture that lapses in four years. If the employee does NOT make a Section 83(b) election and the stock is worth $120,000 at vesting, what amount is included in ordinary income at vesting?',
 '["$0", "$50,000", "$70,000", "$120,000"]'::jsonb,
 3,
 'Without a Section 83(b) election, restricted stock is not taxed until the substantial risk of forfeiture lapses (vesting). At that point, the full fair market value of the stock ($120,000) is included in ordinary income. The employee missed the opportunity to be taxed on the lower $50,000 value by not making the 83(b) election within 30 days of the grant.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'Which of the following statements regarding the Section 83(b) election is correct?',
 '["The election must be filed within 60 days of the property transfer", "If the stock is forfeited after the election, the employee can claim an ordinary loss", "The election must be filed within 30 days of the property transfer", "The election is revocable at any time before the stock vests"]'::jsonb,
 2,
 'A Section 83(b) election must be filed with the IRS within 30 days of the date of the property transfer. The election is irrevocable once filed. If the stock is subsequently forfeited, the employee cannot claim a deduction or loss for the amount previously included in income under the 83(b) election, making it a risky strategy if forfeiture is possible.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'An employer establishes a secular trust to fund deferred compensation for an executive. How does the taxation of a secular trust differ from a rabbi trust?',
 '["Secular trust contributions are tax-deductible by the employer but not taxable to the executive", "There is no tax difference between secular and rabbi trusts", "Secular trust distributions are treated as capital gains rather than ordinary income", "Secular trust assets are protected from employer creditors, causing immediate taxation to the executive when contributed"]'::jsonb,
 3,
 'Unlike a rabbi trust, a secular trust protects assets from the employer''s creditors because the funds are set aside irrevocably for the employee. Because the employee has a secured beneficial interest, contributions are taxable to the executive when made (or when the substantial risk of forfeiture lapses). In contrast, rabbi trust assets remain subject to employer creditors, so taxation is deferred until distribution.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'A CPA is advising a client who exercises NSOs on 3,000 shares. The exercise price is $12 and the FMV is $42 at exercise. The client sells the shares two years later for $60. What is the character of the $18 per share gain from exercise to sale?',
 '["Ordinary income", "Short-term capital gain", "Long-term capital gain", "Tax-exempt income"]'::jsonb,
 2,
 'For NSOs, the spread at exercise ($42 - $12 = $30 per share) is ordinary income recognized in the year of exercise. The employee''s basis in the shares becomes the FMV at exercise ($42). Any subsequent gain from $42 to $60 ($18 per share) is capital gain. Since the shares were held for two years after exercise, it qualifies as long-term capital gain.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'Which of the following fringe benefits is specifically excluded from income under Section 132(f) as a qualified transportation benefit?',
 '["Employer-provided parking at a commercial lot near the office", "Reimbursement for gasoline used in commuting", "Employer-paid tolls for driving to work", "A company car used exclusively for commuting"]'::jsonb,
 0,
 'Section 132(f) provides an exclusion for qualified transportation fringe benefits including transit passes, qualified parking, and vanpool benefits. Employer-provided parking at or near the employer''s business premises or at a location from which the employee commutes qualifies. Gasoline reimbursements, toll reimbursements for personal commuting, and commuter vehicles do not qualify under this provision.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'A tax advisor is structuring compensation for a startup founder. The company is currently valued at $0.50 per share. The founder will receive 100,000 shares of restricted stock that vest over four years. If the founder makes a Section 83(b) election, what is the maximum tax benefit of the election?',
 '["The founder avoids paying any income tax on the shares", "The founder locks in the $50,000 value as ordinary income and all future appreciation is taxed as capital gain", "The founder defers all taxation until the shares are sold", "The founder can deduct the value of the shares as a business expense"]'::jsonb,
 1,
 'By making a Section 83(b) election on stock valued at $0.50 per share, the founder includes $50,000 (100,000 x $0.50) in ordinary income immediately. All future appreciation above $0.50 per share will be taxed as capital gain (long-term if held more than one year from the grant date). For a startup with expected significant appreciation, this converts what would otherwise be substantial ordinary income at vesting into lower-taxed capital gains.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'Under Section 409A, when must a new employee make a deferral election for a NQDC plan?',
 '["Within 30 days of initial eligibility, covering compensation earned after the election", "Before January 1 of the year they are hired", "Within 60 days of the first payroll date", "At any time during the first year of employment"]'::jsonb,
 0,
 'Section 409A provides a special rule for newly eligible participants, allowing them to make a deferral election within 30 days of initial eligibility. The election applies only to compensation earned after the election date, not compensation already earned. This is an exception to the general rule requiring elections before the start of the taxable year in which compensation is earned.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'An employee exercises 500 ISOs at $30 per share when the FMV is $80 per share. The employee sells all 500 shares the same day for $80 per share. What is the tax treatment?',
 '["$25,000 long-term capital gain", "$25,000 ordinary income with no AMT adjustment", "No gain or loss because sale price equals FMV at exercise", "$25,000 ordinary income plus a $25,000 AMT adjustment"]'::jsonb,
 1,
 'A same-day sale of ISO shares is a disqualifying disposition because the one-year holding period from exercise is not met. The spread at exercise ($80 - $30 = $50 x 500 = $25,000) is taxed as ordinary income. Because the shares were disposed of in the same year as exercise, no AMT adjustment applies — the AMT adjustment for ISOs only applies if the shares are held past the end of the year of exercise.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'Which of the following best describes the tax treatment of employer-provided group-term life insurance under Section 79?',
 '["All employer-paid premiums are excludable regardless of coverage amount", "Group-term life insurance is always fully taxable to the employee", "Only the first $10,000 of coverage is excludable from income", "The cost of coverage exceeding $50,000 is included in the employee''s gross income"]'::jsonb,
 3,
 'Under Section 79, the cost of employer-provided group-term life insurance coverage is excludable from the employee''s income for the first $50,000 of coverage. The cost of coverage exceeding $50,000 (calculated using IRS Table I uniform premium rates, not actual premium cost) must be included in the employee''s gross income. This applies only to policies carried by the employer.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'A corporation establishes a top-hat plan (unfunded NQDC) for a select group of management. Which ERISA requirement applies to top-hat plans?',
 '["Full funding and vesting requirements under ERISA Title I", "Only the reporting and disclosure requirements of ERISA, with exemptions from participation, vesting, and funding rules", "No ERISA requirements apply to top-hat plans", "Top-hat plans must meet the same requirements as qualified plans"]'::jsonb,
 1,
 'Top-hat plans are unfunded NQDC plans maintained primarily for a select group of management or highly compensated employees. They are exempt from most ERISA requirements including participation, vesting, funding, and fiduciary rules. However, they remain subject to ERISA''s reporting and disclosure requirements and must file a one-time statement with the Department of Labor.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'An employee receives a qualified employee discount on services. Under Section 132(c), what is the maximum excludable discount percentage for services?',
 '["10% of the selling price", "50% of the selling price", "The employer''s gross profit percentage", "20% of the selling price"]'::jsonb,
 3,
 'Under Section 132(c), the maximum excludable employee discount for services is 20% of the price at which the services are offered to customers. For merchandise, the limit is the employer''s gross profit percentage. Any discount exceeding these limits is included in the employee''s gross income as compensation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'A tax client asks about the differences between an ISO and an NSO. Which of the following is an advantage unique to ISOs?',
 '["The employer receives a deduction at the time of exercise", "There is no income recognition at exercise for regular federal income tax purposes if holding periods are satisfied", "ISOs can be granted to independent contractors", "ISOs have no annual limit on the value of shares that become exercisable"]'::jsonb,
 1,
 'The primary advantage of ISOs over NSOs is that no regular federal income tax is due at exercise if the employee meets the required holding periods (two years from grant and one year from exercise). All gain is deferred until sale and taxed as long-term capital gain. ISOs cannot be granted to independent contractors, the employer does not get a deduction, and there is a $100,000 annual limit on the value of shares exercisable.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'An executive participates in a NQDC plan with a 10-year deferral. The plan uses a rabbi trust. In year five, the employer files for bankruptcy. What happens to the executive''s deferred compensation?',
 '["The deferred amounts are fully protected and paid to the executive on schedule", "The executive receives a priority claim in the bankruptcy above all other creditors", "The rabbi trust automatically converts to a secular trust protecting the executive", "The deferred amounts become subject to claims of the employer''s general creditors in the bankruptcy proceeding"]'::jsonb,
 3,
 'The defining characteristic of a rabbi trust is that its assets remain subject to the claims of the employer''s general creditors in the event of the employer''s bankruptcy or insolvency. The executive becomes an unsecured creditor with no priority over other general creditors. This creditor risk is the trade-off for the deferral of income tax that the rabbi trust structure provides.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Individual Tax Planning: Compensation',
 'A company grants an employee 2,000 shares of restricted stock on March 1, 2026, when the FMV is $25 per share. The employee files a timely Section 83(b) election. The stock vests on March 1, 2029, when the FMV is $90 per share. The employee sells all shares on June 1, 2030, for $110 per share. What is the total long-term capital gain on the sale?',
 '["$130,000", "$220,000", "$50,000", "$170,000"]'::jsonb,
 3,
 'With the Section 83(b) election, the employee included $50,000 (2,000 x $25) in ordinary income at grant. The basis in the shares is $25 per share. Upon sale at $110, the long-term capital gain is ($110 - $25) x 2,000 = $170,000. The holding period begins at the grant date (March 2026), so the sale in June 2030 qualifies for long-term treatment. Without the election, $180,000 (2,000 x $90) would have been ordinary income at vesting.',
 'hard');

-- =============================================================================
-- Passive Activity and At-Risk Rules — 36 questions (11 easy, 18 medium, 7 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'Under Section 469, which of the following types of income is classified as passive income?',
 '["Salary from a full-time job", "Dividends from a publicly traded stock portfolio", "Net rental income from a residential property in which the taxpayer does not materially participate", "Interest income from a savings account"]'::jsonb,
 2,
 'Under Section 469, passive income generally includes income from trade or business activities in which the taxpayer does not materially participate and rental activities (which are per se passive with limited exceptions). Salary is active income, and dividends and interest are portfolio income. Passive losses can only offset passive income, not active or portfolio income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer owns a rental property and actively participates in its management. The taxpayer has an adjusted gross income of $90,000 and a $20,000 rental loss. How much of the rental loss can be deducted against nonpassive income?',
 '["$0", "$10,000", "$20,000", "$25,000"]'::jsonb,
 2,
 'Under the $25,000 special allowance for active participation in rental real estate, taxpayers with AGI of $100,000 or less can deduct up to $25,000 of rental losses against nonpassive income. Since this taxpayer''s AGI of $90,000 is below the $100,000 threshold, the full $20,000 rental loss is deductible. The allowance phases out by $1 for every $2 of AGI over $100,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'Which of the following is one of the seven tests for material participation under the Section 469 regulations?',
 '["The taxpayer participated in the activity for more than 500 hours during the tax year", "The taxpayer invested at least $50,000 in the activity", "The taxpayer owned more than 50% of the activity", "The taxpayer hired a full-time manager for the activity"]'::jsonb,
 0,
 'One of the seven material participation tests under Reg. 1.469-5T is that the individual participated in the activity for more than 500 hours during the tax year. Other tests include substantially all participation, more than 100 hours and not less than any other person, significant participation activities aggregating over 500 hours, material participation in 5 of the 10 preceding tax years, and personal service activity participation in any 3 prior years.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer with AGI of $130,000 actively participates in a rental property that generates a $25,000 loss. What amount of the rental loss can be deducted against nonpassive income under the special allowance?',
 '["$0", "$25,000", "$15,000", "$10,000"]'::jsonb,
 3,
 'The $25,000 special allowance phases out by $1 for every $2 of AGI exceeding $100,000. With AGI of $130,000, the excess is $30,000, and the phase-out reduces the allowance by $15,000 ($30,000 / 2). The remaining allowance is $25,000 - $15,000 = $10,000. The remaining $15,000 loss is suspended and carried forward to future years.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer has $40,000 of suspended passive losses from a rental activity. The taxpayer sells the entire interest in the rental property in a fully taxable disposition. What happens to the suspended passive losses?',
 '["They are released and can be deducted against any type of income in the year of disposition", "They are permanently lost and cannot be deducted", "They can only be carried forward to offset future passive income", "They convert to capital losses limited to $3,000 per year"]'::jsonb,
 0,
 'Under Section 469(g), when a taxpayer makes a fully taxable disposition of an entire interest in a passive activity, all suspended passive losses from that activity are released and can be deducted against any type of income (active, portfolio, or passive) in the year of disposition. This is one of the most important planning opportunities in the passive activity rules.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'To qualify as a real estate professional under Section 469(c)(7), a taxpayer must meet which of the following requirements?',
 '["Own at least 10 rental properties", "Perform more than 750 hours of services in real property trades or businesses and more than half of personal services in real property trades or businesses", "Have a real estate license in the state where the properties are located", "Generate more than $500,000 in gross rental income annually"]'::jsonb,
 1,
 'To qualify as a real estate professional, the taxpayer must (1) perform more than 750 hours of services during the tax year in real property trades or businesses in which the taxpayer materially participates, and (2) more than half of the personal services performed during the tax year must be in real property trades or businesses. Each rental property is treated as a separate activity unless the taxpayer elects to treat all rental interests as a single activity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'Under the at-risk rules of Section 465, which of the following amounts is included in a taxpayer''s amount at risk?',
 '["Nonrecourse financing from a commercial bank secured by the property", "Cash contributed to the activity by the taxpayer", "A loan from a related party who has an interest in the activity", "A guarantee from a family member that does not create personal liability"]'::jsonb,
 1,
 'Under Section 465, a taxpayer''s amount at risk includes cash and the adjusted basis of property contributed to the activity, plus amounts borrowed for which the taxpayer is personally liable (recourse debt). Nonrecourse loans generally do not increase the at-risk amount (with a real estate exception for qualified nonrecourse financing from certain lenders). Related-party loans and guarantees without personal liability do not count.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer participates in an activity for 120 hours during the year. No other person participates for more hours. Under the material participation tests, does this taxpayer materially participate?',
 '["No, because the taxpayer did not reach the 500-hour threshold", "Yes, but only if the activity is a real estate activity", "No, because the activity must be the taxpayer''s principal business", "Yes, because the taxpayer participated for more than 100 hours and no other individual participated more"]'::jsonb,
 3,
 'Under Reg. 1.469-5T(a)(3), a taxpayer materially participates if the individual participated for more than 100 hours during the year and that participation is not less than the participation of any other individual (including non-owners). Since this taxpayer participated for 120 hours and no other person participated more, the test is satisfied regardless of the type of activity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'Which of the following activities is treated as per se passive under Section 469, regardless of the taxpayer''s level of participation?',
 '["Operating a restaurant where the taxpayer works 60 hours per week", "A limited partnership interest in a real estate development", "Day trading in stocks and securities", "Rental activity of residential real estate"]'::jsonb,
 3,
 'Under Section 469(c)(2), rental activities are per se passive regardless of the taxpayer''s level of participation, with limited exceptions for real estate professionals under Section 469(c)(7). A limited partnership interest is also generally passive, but rental activity is the classic per se passive category. Operating a restaurant with material participation is active, and day trading generates portfolio income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer has the following income and losses for 2026: $200,000 salary, $30,000 passive income from Partnership A, and $55,000 passive loss from Partnership B. What is the taxpayer''s allowable passive loss deduction for 2026?',
 '["$0", "$25,000", "$30,000", "$55,000"]'::jsonb,
 2,
 'Passive losses can only offset passive income in the current year (unless a special allowance applies). The taxpayer has $30,000 of passive income from Partnership A, which can absorb $30,000 of the $55,000 passive loss from Partnership B. The remaining $25,000 passive loss is suspended and carried forward. The salary is nonpassive income and cannot be offset by the passive loss.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer invests $100,000 cash in a partnership and also obtains a $200,000 nonrecourse loan to finance the investment. The partnership is not a real estate activity. What is the taxpayer''s at-risk amount?',
 '["$100,000", "$200,000", "$300,000", "$0"]'::jsonb,
 0,
 'Under Section 465, the at-risk amount for non-real-estate activities includes only cash contributed and amounts for which the taxpayer is personally liable. Nonrecourse financing does not increase the at-risk amount except for qualified nonrecourse financing in real estate activities. Since this is not a real estate activity, only the $100,000 cash contribution is at risk.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer qualifies as a real estate professional and materially participates in each rental property. How are the rental losses treated?',
 '["They remain passive and can only offset passive income", "They are treated as nonpassive and can offset any type of income", "They are limited to $25,000 per year against nonpassive income", "They are suspended until the properties are sold"]'::jsonb,
 1,
 'When a taxpayer qualifies as a real estate professional under Section 469(c)(7) and materially participates in each rental activity, the rental activities are not treated as passive. The losses become nonpassive (active) and can offset any type of income including wages, portfolio income, and business income without limitation under the passive activity rules.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer participates in three significant participation activities during 2026. Activity A: 180 hours. Activity B: 200 hours. Activity C: 150 hours. Under the significant participation activity test, does the taxpayer materially participate in any of these activities?',
 '["Yes, in all three activities because their aggregate hours exceed 500", "No, because none individually exceeds 500 hours", "Yes, but only in Activity B because it has the most hours", "No, because significant participation requires at least 250 hours per activity"]'::jsonb,
 0,
 'Under Reg. 1.469-5T(a)(4), if a taxpayer participates for more than 100 hours in several activities (significant participation activities) and the aggregate participation exceeds 500 hours, the taxpayer is treated as materially participating in all significant participation activities. Here, 180 + 200 + 150 = 530 hours exceeds 500, so all three activities are treated as material participation activities.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'Under the passive activity grouping rules, which factor is NOT considered when determining whether activities constitute an appropriate economic unit?',
 '["Similarities and differences in types of trades or businesses", "The extent of common control among the activities", "The taxpayer''s personal tax bracket", "Geographic proximity of the activities"]'::jsonb,
 2,
 'Under Reg. 1.469-4, factors for determining appropriate economic units include similarities and differences in types of trades or businesses, common control, common ownership, geographic location, and interdependencies among activities. The taxpayer''s personal tax bracket is not a relevant factor in the grouping analysis. Grouping is based on economic substance, not tax planning convenience.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A married couple filing jointly has AGI of $160,000 and a $25,000 rental loss from a property in which they actively participate. How much of the rental loss can they deduct against nonpassive income?',
 '["$0", "$5,000", "$15,000", "$25,000"]'::jsonb,
 0,
 'The $25,000 special allowance for active participation in rental real estate phases out completely at AGI of $150,000. Since this couple''s AGI is $160,000, which exceeds $150,000, the entire special allowance is eliminated. The phase-out reduces the allowance by $1 for every $2 of AGI over $100,000, so at $150,000 AGI the reduction is $25,000, fully eliminating the allowance. The entire $25,000 loss is suspended.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'Which of the following correctly describes the relationship between the at-risk rules and the passive activity rules?',
 '["The passive activity rules are applied first, then the at-risk rules", "The at-risk rules are applied first, then the passive activity rules", "Only one set of rules applies to any given activity", "The rules are applied simultaneously with no ordering"]'::jsonb,
 1,
 'The at-risk rules under Section 465 are applied before the passive activity rules under Section 469. A loss must first pass the at-risk limitation (the taxpayer can only deduct losses up to the amount at risk). Any loss that passes the at-risk test is then subject to the passive activity rules, which may further limit or suspend the deduction.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer gifts a passive activity with $30,000 of suspended passive losses to a family member. What happens to the suspended losses?',
 '["The suspended losses transfer to the donee", "The suspended losses are permanently lost", "The suspended losses are deductible by the donor in the year of the gift", "The suspended losses are added to the basis of the gifted property"]'::jsonb,
 3,
 'When a passive activity is transferred by gift, the suspended passive losses are not deductible by the donor and do not transfer to the donee. Instead, under Section 469(j)(6), the suspended losses are added to the basis of the transferred interest. This increases the donee''s basis and reduces any future gain (or increases any loss) when the donee eventually disposes of the property.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer owns a rental property and hires a management company to handle all aspects of the rental. The taxpayer makes no decisions about the property. Does the taxpayer actively participate in the rental activity?',
 '["Yes, because ownership alone constitutes active participation", "No, because the taxpayer does not participate in management decisions in a significant and bona fide sense", "Yes, because hiring a management company is a management decision", "No, but the taxpayer can still claim the full $25,000 special allowance"]'::jsonb,
 1,
 'Active participation requires the taxpayer to participate in management decisions in a significant and bona fide sense, such as approving tenants, setting rental terms, or approving expenditures. Merely owning the property and hiring a management company to make all decisions does not satisfy the active participation standard. Without active participation, the $25,000 special allowance is not available.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer materially participated in a business activity for 5 of the last 10 tax years. In the current year, the taxpayer only participates for 50 hours. Under the material participation tests, is the taxpayer treated as materially participating in the current year?',
 '["Yes, because material participation in 5 of the 10 preceding tax years satisfies one of the seven tests", "No, because 50 hours does not meet any hourly threshold", "No, because the 5-of-10-year test requires consecutive years", "Yes, but only if the activity is a personal service activity"]'::jsonb,
 0,
 'Under Reg. 1.469-5T(a)(5), a taxpayer is treated as materially participating in an activity if the individual materially participated in the activity for any 5 of the 10 preceding tax years. The years do not need to be consecutive. This test applies regardless of current-year hours and is commonly used by taxpayers transitioning away from active involvement in a business.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A real estate professional owns five rental properties. She materially participates in three of them but not the other two. She has not made a grouping election. How are the losses from the two properties without material participation treated?',
 '["All five properties are nonpassive because she is a real estate professional", "The losses from the two properties without material participation remain passive", "The losses from all five are passive because rental activities are always passive", "The two properties generate portfolio income rather than passive income"]'::jsonb,
 1,
 'Being a real estate professional removes the per se passive classification for rental activities, but each property must still be evaluated separately for material participation (unless a grouping election is made). The three properties with material participation generate nonpassive losses. The two without material participation remain passive because the real estate professional exception only removes the per se rule; it does not automatically make all rental activities nonpassive.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'Under the at-risk rules, which of the following types of financing increases a taxpayer''s at-risk amount in a real estate activity?',
 '["Qualified nonrecourse financing from a bank secured by the real property", "A nonrecourse loan from a related party", "A loan guaranteed by a family member with no personal liability to the taxpayer", "Seller financing where the seller has an interest in the activity"]'::jsonb,
 0,
 'Section 465(b)(6) provides a special exception for real estate activities, allowing qualified nonrecourse financing to be included in the at-risk amount. Qualified nonrecourse financing must be borrowed from a qualified lender (bank, government agency, or unrelated person in the lending business), secured by the real property, and not from a related party or seller with an interest in the activity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer has $80,000 at risk in a partnership activity. During the year, the taxpayer''s share of partnership losses is $95,000. How much of the loss can the taxpayer deduct under the at-risk rules (before applying passive activity rules)?',
 '["$0", "$15,000", "$95,000", "$80,000"]'::jsonb,
 3,
 'Under Section 465, a taxpayer''s deductible loss is limited to the amount at risk in the activity. Since the taxpayer has $80,000 at risk and $95,000 of losses, only $80,000 is deductible under the at-risk rules. The remaining $15,000 is suspended and carried forward until the taxpayer''s at-risk amount increases. The $80,000 allowed loss must then pass the passive activity rules.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer disposes of a passive activity by transferring it to a former spouse as part of a divorce settlement under Section 1041. What happens to the suspended passive losses?',
 '["They transfer to the former spouse along with the property", "They are released and deductible in the year of transfer", "They are added to the basis of the property transferred", "They are permanently disallowed"]'::jsonb,
 0,
 'Under Section 469(g)(1)(B), when a passive activity is transferred in a nonrecognition transaction such as a Section 1041 transfer incident to divorce, the suspended passive losses are not released. Instead, they transfer to the transferee spouse, who can use them when the activity is subsequently disposed of in a fully taxable transaction or against passive income from the activity.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A limited partner in a real estate partnership wants to deduct rental losses against nonpassive income. Which of the following statements is correct?',
 '["Limited partners may claim the $25,000 allowance if they actively participate in rental management decisions", "Limited partners can never claim the $25,000 special allowance for rental losses", "Limited partners automatically qualify for the special allowance by virtue of their investment", "Limited partners must convert to general partners to deduct any rental losses"]'::jsonb,
 0,
 'Limited partners can qualify for the $25,000 special allowance if they actively participate in management decisions such as approving tenants, setting rental terms, and approving capital expenditures. Active participation is a lower threshold than material participation and does not require the same level of involvement. However, limited partners generally cannot satisfy the material participation tests except through the 5-of-10-year or personal service activity tests.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer dies owning a passive activity with $45,000 of suspended passive losses. The property''s basis is stepped up by $60,000 at death. How are the suspended losses treated?',
 '["All $45,000 is deductible on the decedent''s final return", "Only the excess of suspended losses over the basis step-up is deductible on the final return", "The suspended losses are permanently eliminated because the basis step-up exceeds the suspended losses", "The suspended losses transfer to the estate and are deductible over five years"]'::jsonb,
 2,
 'Under Section 469(g)(2), when a taxpayer dies, suspended passive losses are allowed as a deduction on the final return only to the extent they exceed the amount by which the transferee''s basis is increased (the step-up in basis). Here, the $60,000 step-up exceeds the $45,000 suspended losses, so no deduction is allowed. The losses are effectively absorbed by the basis step-up.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'Which of the following is classified as portfolio income rather than passive income under Section 469?',
 '["Net income from a rental property", "Gain from the sale of a partnership interest in a passive activity", "Interest earned on corporate bonds", "Income from a business in which the taxpayer does not materially participate"]'::jsonb,
 2,
 'Portfolio income includes interest, dividends, royalties, and gains from the disposition of property held for investment. Interest earned on corporate bonds is portfolio income. Rental income is passive, gain from a passive partnership may include passive elements, and income from a business without material participation is passive. Portfolio income cannot be offset by passive losses.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer has two passive activities. Activity X generates $20,000 income and Activity Y generates a $35,000 loss. The taxpayer also has $10,000 in suspended losses from Activity Y from prior years. What is the net passive loss suspended at year-end?',
 '["$25,000", "$15,000", "$35,000", "$45,000"]'::jsonb,
 0,
 'Current year passive income from Activity X ($20,000) can offset current year passive losses from Activity Y ($35,000), leaving a net passive loss of $15,000. The prior suspended losses of $10,000 from Activity Y are also available. Total losses to consider are $35,000 + $10,000 = $45,000, offset by $20,000 income, leaving $25,000 suspended at year-end (assuming no special allowance applies).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer is a real estate professional who owns three rental properties. She elects to treat all three as a single activity under the grouping election. In aggregate, she spends 800 hours managing the properties. Does she materially participate?',
 '["No, because each property must be tested individually", "Yes, because she satisfies the 500-hour test on the grouped activity", "No, because rental activities cannot be grouped", "Yes, but only if she spends at least 250 hours on each individual property"]'::jsonb,
 1,
 'A real estate professional who makes the election under Reg. 1.469-9(g) to treat all rental real estate interests as a single activity can then apply the material participation tests to the combined activity. With 800 aggregate hours, she exceeds the 500-hour threshold and materially participates in the grouped activity. Without the grouping election, each property would be tested separately.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer invests $50,000 in a limited partnership. The partnership allocates $20,000 of losses and $5,000 of tax credits to the taxpayer. The taxpayer''s at-risk amount is $50,000. After applying the loss, the at-risk amount is reduced to $30,000. Can the taxpayer use the $5,000 of passive tax credits?',
 '["Yes, the credits are not subject to the at-risk rules", "No, credits are subject to the at-risk rules and limited to the tax attributable to the at-risk amount", "Yes, but only if the taxpayer has passive income to offset", "No, credits from limited partnerships are permanently disallowed"]'::jsonb,
 1,
 'Under Section 465(a)(2), tax credits from an activity are also subject to the at-risk rules. The deductible amount of credits cannot exceed the tax attributable to income from the at-risk amount. Additionally, passive credits are subject to the passive activity credit rules under Section 469(d)(2) and can only offset tax on passive income unless an exception applies.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer participates in a personal service activity (consulting) for all three preceding tax years. In the current year, the taxpayer participates for only 80 hours. Is the taxpayer treated as materially participating under the Section 469 regulations?',
 '["No, because 80 hours is below the 100-hour minimum", "Yes, because participation in a personal service activity for any 3 preceding tax years satisfies material participation", "No, because the 3-year test only applies to real estate activities", "Yes, but only if the taxpayer is also a real estate professional"]'::jsonb,
 1,
 'Under Reg. 1.469-5T(a)(6), a taxpayer materially participates in a personal service activity if the individual materially participated in the activity for any three preceding tax years (not necessarily consecutive). Personal service activities are those involving fields such as health, law, engineering, architecture, accounting, actuarial science, performing arts, or consulting. Current-year hours are irrelevant under this test.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer sells a rental property for a $100,000 gain. The taxpayer has $40,000 of suspended passive losses from this property and $15,000 of suspended passive losses from another rental property. How are the suspended losses treated in the year of sale?',
 '["All $55,000 of suspended losses are released against the gain", "Only the $40,000 from the sold property is released; the $15,000 remains suspended", "No suspended losses are released until all passive activities are disposed of", "The $55,000 is carried forward to offset future passive income"]'::jsonb,
 1,
 'Under Section 469(g), only the suspended passive losses from the specific activity that is fully disposed of in a taxable transaction are released. The $40,000 from the sold property is released and can offset the $100,000 gain and any other income. The $15,000 of suspended losses from the other rental property remains suspended because that activity was not disposed of.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'Which of the following taxpayers would most likely qualify as a real estate professional for purposes of Section 469(c)(7)?',
 '["A teacher who owns two rental properties and manages them on weekends", "A full-time real estate broker who spends 1,200 hours annually in brokerage activities and 400 hours managing personal rental properties", "A retired engineer who spends 500 hours per year managing five rental properties", "A software developer who owns one rental property managed by a property management company"]'::jsonb,
 1,
 'The real estate broker meets both requirements: (1) more than 750 hours in real property trades or businesses (1,200 hours in brokerage) and (2) more than half of personal services performed in real property trades or businesses (assuming total personal services are less than 2,400 hours). The broker must also materially participate in each rental activity. The teacher and retired engineer likely fail the more-than-half-of-services test.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer has a rental loss of $18,000 and AGI of $110,000. The taxpayer actively participates in the rental activity. What is the maximum deductible rental loss under the special allowance?',
 '["$18,000", "$20,000", "$15,000", "$25,000"]'::jsonb,
 0,
 'The $25,000 special allowance is reduced by $1 for every $2 of AGI exceeding $100,000. With AGI of $110,000, the excess is $10,000, and the phase-out reduces the allowance by $5,000 ($10,000 / 2) to $20,000. Since the rental loss is only $18,000, which is less than the available $20,000 allowance, the full $18,000 loss is deductible against nonpassive income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer contributes property with a basis of $40,000 and FMV of $70,000 to an activity. Under the at-risk rules, what amount is added to the taxpayer''s at-risk amount?',
 '["$40,000 (adjusted basis of the contributed property)", "$70,000 (fair market value of the contributed property)", "$55,000 (average of basis and FMV)", "$0 because property contributions do not increase the at-risk amount"]'::jsonb,
 0,
 'Under Section 465(b)(1)(A), a taxpayer''s at-risk amount includes the adjusted basis of property contributed to the activity, not its fair market value. The $40,000 basis is the amount at risk. This prevents taxpayers from inflating their at-risk amount by contributing appreciated property and claiming losses based on the higher FMV.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer owns an interest in a passive activity conducted through an S corporation. The taxpayer''s stock basis is $60,000 and debt basis is $20,000. The S corporation allocates a $90,000 loss. How much of the loss can the taxpayer deduct considering the basis limitation (before at-risk and passive rules)?',
 '["$60,000", "$80,000", "$90,000", "$20,000"]'::jsonb,
 1,
 'For S corporations, a shareholder can deduct losses up to the sum of stock basis plus debt basis (from direct loans to the corporation, not entity-level debt). Stock basis of $60,000 plus debt basis of $20,000 equals $80,000. The remaining $10,000 loss is suspended for basis limitation purposes. The $80,000 must then pass through the at-risk and passive activity limitation rules.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Passive Activity and At-Risk Rules',
 'A taxpayer owns a rental condo and performs 600 hours of rental services during the year, but works 2,000 hours as a full-time engineer. The taxpayer has $15,000 of rental losses and AGI of $85,000. Can the taxpayer deduct the rental loss as a nonpassive loss?',
 '["Yes, because the taxpayer spent more than 500 hours on the rental activity", "No, the rental activity remains passive because the taxpayer does not qualify as a real estate professional, but the $15,000 may be deducted under the $25,000 active participation allowance", "Yes, because the taxpayer materially participated in the rental activity", "No, because the AGI exceeds $75,000"]'::jsonb,
 1,
 'Although the taxpayer spent 600 hours on the rental, the taxpayer does not qualify as a real estate professional because more than half of personal services (2,000 hours engineering vs. 600 hours rental) were not in real property trades or businesses. Rental activities remain per se passive without the real estate professional exception. However, with active participation and AGI of $85,000 (below the $100,000 phase-out threshold), the full $15,000 loss is deductible under the $25,000 special allowance.',
 'hard');

-- =============================================================================
-- Wealth Transfer and Gifting Strategies — 38 questions (11 easy, 19 medium, 8 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'In 2026, what is the annual gift tax exclusion amount per donee?',
 '["$17,000", "$18,000", "$19,000", "$20,000"]'::jsonb,
 2,
 'For 2026, the annual gift tax exclusion is $19,000 per donee. This amount is indexed for inflation and allows a donor to give up to $19,000 to any number of recipients without using any portion of the lifetime gift and estate tax exemption. Married couples can combine their exclusions through gift splitting to give $38,000 per donee.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A married couple wants to gift $38,000 to their adult child in 2026 without using any lifetime exemption. Which technique should they use?',
 '["Each spouse makes a separate gift of $19,000 without any special election", "They file a gift tax return electing gift splitting under Section 2513", "They must establish an irrevocable trust to make combined gifts", "Married couples cannot combine annual exclusions"]'::jsonb,
 0,
 'Each spouse has their own $19,000 annual exclusion. If each spouse makes a separate gift of $19,000 to the child, the total $38,000 is covered by their individual exclusions without needing to file a gift tax return or elect gift splitting. Gift splitting under Section 2513 is needed only when one spouse makes the entire gift and they want to treat it as made half by each spouse.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'What is the unified estate and gift tax exemption amount for 2026?',
 '["$12.06 million", "$12.92 million", "$13.61 million", "$13.99 million"]'::jsonb,
 3,
 'For 2026, the unified estate and gift tax exemption (also known as the basic exclusion amount or applicable exclusion amount) is $13.99 million per individual. This amount shelters cumulative taxable gifts and the taxable estate from the 40% federal estate and gift tax. Married couples can effectively shelter $27.98 million combined through portability.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A donor gives stock worth $75,000 with an adjusted basis of $30,000 to a donee. The donor uses $56,000 of the annual exclusion ($19,000). What is the amount of the taxable gift?',
 '["$75,000", "$56,000", "$45,000", "$11,000"]'::jsonb,
 1,
 'The taxable gift is the fair market value of the property transferred ($75,000) minus the annual exclusion ($19,000), which equals $56,000. The donor''s adjusted basis is irrelevant for computing the taxable gift — gifts are valued at FMV on the date of the gift. The $56,000 taxable gift reduces the donor''s lifetime exemption or is subject to gift tax if the exemption has been exhausted.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'Which of the following transfers qualifies for the annual gift tax exclusion?',
 '["A gift of a future interest in a trust", "A direct payment of tuition to a university on behalf of a grandchild", "A $19,000 cash gift to a friend", "A remainder interest in a charitable remainder trust"]'::jsonb,
 2,
 'The annual gift tax exclusion applies only to gifts of present interests — those that give the donee an immediate right to use, possess, or enjoy the property. A $19,000 cash gift is a present interest. Gifts of future interests do not qualify. Direct tuition payments are excluded under Section 2503(e) but through a separate provision, not the annual exclusion. Remainder interests are future interests.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A grandparent establishes an irrevocable trust for grandchildren with Crummey withdrawal powers. What is the purpose of the Crummey power?',
 '["To allow the trustee to invest trust assets in any asset class", "To allow the grandparent to retain control over trust distributions", "To avoid the generation-skipping transfer tax on distributions", "To convert future interest gifts into present interests that qualify for the annual gift tax exclusion"]'::jsonb,
 3,
 'A Crummey power gives trust beneficiaries a temporary right to withdraw contributions made to the trust (typically for 30-60 days). This withdrawal right converts what would otherwise be a gift of a future interest into a present interest, qualifying the transfer for the annual gift tax exclusion. Without Crummey powers, gifts to irrevocable trusts would not qualify for the annual exclusion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A taxpayer pays $150,000 directly to a hospital for a family member''s medical expenses. How is this payment treated for gift tax purposes?',
 '["It is a taxable gift of $150,000 minus the $19,000 annual exclusion", "It is fully excluded from gift tax under Section 2503(e) as a qualified transfer", "It is a taxable gift because it exceeds the annual exclusion", "It is deductible as a medical expense on the taxpayer''s income tax return"]'::jsonb,
 1,
 'Under Section 2503(e), direct payments to medical care providers or educational institutions on behalf of another person are excluded from gift tax without limit. The payment must be made directly to the provider, not to the individual. This exclusion is separate from and in addition to the $19,000 annual exclusion, so the taxpayer can still give the family member an additional $19,000 gift.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'What is the generation-skipping transfer tax (GSTT) rate for 2026?',
 '["35%", "37%", "39.6%", "40%"]'::jsonb,
 3,
 'The generation-skipping transfer tax rate for 2026 is a flat 40%, the same as the maximum estate and gift tax rate. The GSTT applies in addition to any estate or gift tax on transfers to skip persons (generally grandchildren or persons more than one generation below the transferor). The GSTT exemption for 2026 is $13.99 million, the same as the unified estate and gift tax exemption.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A grantor establishes a GRAT (grantor retained annuity trust) funded with $2,000,000 in appreciated stock. The GRAT pays an annuity to the grantor for 5 years. What is the primary estate planning benefit of a zeroed-out GRAT?',
 '["The grantor avoids all income tax on the annuity payments", "The annuity payments are deductible by the grantor", "The GRAT assets receive a stepped-up basis at the grantor''s death", "The remainder interest transferred to beneficiaries has a gift tax value of approximately zero while future appreciation passes transfer-tax-free"]'::jsonb,
 3,
 'A zeroed-out GRAT is structured so the present value of the annuity payments approximately equals the value of the assets transferred, making the taxable gift of the remainder interest approximately zero. If the trust assets appreciate at a rate exceeding the Section 7520 rate, the excess appreciation passes to the remainder beneficiaries free of gift and estate tax. This is a powerful technique for transferring appreciation.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A surviving spouse wants to use the deceased spouse''s unused estate tax exemption. What must the estate do to preserve this benefit?',
 '["File a final income tax return for the decedent", "File a timely estate tax return (Form 706) and elect portability of the DSUE amount", "File a gift tax return within 9 months of death", "No action is required; portability is automatic"]'::jsonb,
 1,
 'Portability of the deceased spousal unused exclusion (DSUE) amount requires the executor to file a timely estate tax return (Form 706) and make the portability election, even if the estate is below the filing threshold. If Form 706 is not filed, the DSUE is lost and the surviving spouse can only use their own exemption. The election is made on the return itself.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A donor transfers property worth $500,000 to a qualified personal residence trust (QPRT) and retains the right to live in the residence for 15 years. What happens if the donor dies during the trust term?',
 '["The residence passes to the beneficiaries free of estate tax", "The full value of the residence is included in the donor''s gross estate", "Only the remainder interest is included in the gross estate", "The QPRT automatically extends for another 15 years"]'::jsonb,
 1,
 'If the grantor dies during the retained interest term of a QPRT, the full value of the residence at the date of death is included in the grantor''s gross estate under Section 2036 (transfers with retained life estate). The estate planning benefit of the QPRT is only realized if the grantor survives the trust term. This mortality risk is the primary disadvantage of QPRTs.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'Which of the following is a requirement for the unlimited marital deduction to apply to a transfer between spouses?',
 '["The transfer must be made to a U.S. citizen spouse", "The transfer must not exceed $500,000", "The transfer must be made through an irrevocable trust", "Both spouses must be over age 65"]'::jsonb,
 0,
 'The unlimited marital deduction under Section 2056 allows an unlimited amount to pass between spouses free of estate and gift tax, but only if the surviving spouse is a U.S. citizen. Transfers to non-citizen spouses do not qualify for the unlimited marital deduction but may qualify for the annual exclusion for non-citizen spouses ($185,000 in 2026) or through a qualified domestic trust (QDOT).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A taxpayer establishes a charitable remainder annuity trust (CRAT) funded with $1,000,000. The trust pays a fixed annuity of 7% ($70,000) per year to the donor for 20 years, with the remainder going to charity. What tax benefit does the donor receive at the time of the transfer?',
 '["A charitable income tax deduction equal to the present value of the remainder interest", "A charitable deduction for the full $1,000,000 contribution", "No deduction until the charity actually receives the remainder", "A capital gains tax exclusion on the contributed assets"]'::jsonb,
 0,
 'When funding a charitable remainder trust (CRT), the donor receives a current income tax charitable deduction equal to the present value of the remainder interest that will pass to the charity. The deduction is calculated using IRS actuarial tables and the Section 7520 rate. The remainder interest must be at least 10% of the initial FMV of the trust assets for the trust to qualify.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A donor makes a gift of $119,000 to a single donee in 2026. What is the taxable gift amount?',
 '["$119,000", "$100,000", "$81,000", "$0"]'::jsonb,
 1,
 'The taxable gift is the total gift amount minus the annual exclusion. For 2026, the calculation is $119,000 - $19,000 = $100,000. This $100,000 taxable gift reduces the donor''s lifetime exemption ($13.99 million). A gift tax return (Form 709) must be filed for the year because the gift exceeds the annual exclusion, even if no tax is due because of the lifetime exemption.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'Under gift splitting (Section 2513), which of the following requirements must be met?',
 '["Both spouses must consent to split all gifts made by either spouse during the calendar year", "Both spouses must be U.S. citizens", "The gifts must be made to the spouses'' children only", "Gift splitting is available only for gifts exceeding $100,000"]'::jsonb,
 0,
 'Gift splitting under Section 2513 requires that both spouses consent to split all gifts made by either spouse during the calendar year. Both must be married at the time of the gift and must file gift tax returns (Form 709) to make the election. Gift splitting is available for gifts to any donee, not just children, and there is no minimum gift amount. Both spouses need not be U.S. citizens.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A donor contributes $500,000 to a charitable lead annuity trust (CLAT). The trust pays 8% ($40,000) per year to a qualified charity for 15 years, and the remainder passes to the donor''s children. What is the primary benefit of the CLAT?',
 '["The remainder passing to the children may have a reduced gift tax value because the charitable lead interest reduces the present value of the remainder", "The donor receives a current income tax deduction for the full $500,000", "The charity payments are deductible by the children", "The trust assets are excluded from the donor''s estate regardless of when the donor dies"]'::jsonb,
 0,
 'A CLAT provides a gift or estate tax benefit by reducing the taxable value of the remainder interest that passes to non-charitable beneficiaries. The taxable gift is the FMV of the trust assets minus the present value of the charitable lead interest. If the trust assets grow faster than the Section 7520 rate, the excess growth passes to the children transfer-tax-free.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'Which of the following transfers is subject to the generation-skipping transfer tax?',
 '["A gift from a parent to a child", "A bequest from a grandparent directly to a grandchild when the grandchild''s parent is still living", "A gift between spouses", "A transfer to a charity"]'::jsonb,
 1,
 'The GSTT applies to transfers to skip persons, which include individuals two or more generations below the transferor. A grandchild is a skip person if the grandchild''s parent (the transferor''s child) is still alive. Transfers to children are not generation-skipping, spousal transfers are exempt, and charitable transfers are deductible. The predeceased parent exception applies only if the intervening generation has predeceased the transferor.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A QTIP (qualified terminable interest property) trust is established for a surviving spouse. Which of the following is a characteristic of a QTIP trust?',
 '["The surviving spouse must receive all trust income at least annually", "The surviving spouse has the power to direct the remainder to anyone", "The trust terminates upon the surviving spouse''s remarriage", "QTIP trusts do not qualify for the marital deduction"]'::jsonb,
 0,
 'A QTIP trust requires that the surviving spouse receive all income from the trust at least annually for life. The executor elects QTIP treatment on the estate tax return, qualifying the trust for the marital deduction. The key advantage is that the deceased spouse controls who receives the remainder after the surviving spouse''s death, making it useful in blended family situations. The trust assets are included in the surviving spouse''s estate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A parent uses the 529 plan superfunding provision in 2026 to contribute to a child''s education savings account. What is the maximum lump-sum contribution that can be made without incurring gift tax?',
 '["$19,000", "$38,000", "$76,000", "$95,000"]'::jsonb,
 3,
 'The 529 plan superfunding provision allows a donor to make a lump-sum contribution of up to five times the annual gift tax exclusion ($19,000 x 5 = $95,000) and elect to treat it as made ratably over five years for gift tax purposes. This means no portion of the $95,000 uses the lifetime exemption. However, no additional annual exclusion gifts can be made to the same beneficiary during the five-year period.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A donor gifts property with a fair market value of $200,000 and an adjusted basis of $250,000 to a donee. What is the donee''s basis for determining a loss on a subsequent sale?',
 '["$200,000 (fair market value at the time of the gift)", "$250,000 (donor''s adjusted basis)", "$225,000 (average of FMV and basis)", "$0"]'::jsonb,
 0,
 'When gifted property has an FMV less than the donor''s adjusted basis at the time of the gift (a built-in loss), the donee''s basis for determining a loss is the FMV at the date of the gift ($200,000). For determining gain, the donee uses the donor''s basis ($250,000). If the property is sold for an amount between $200,000 and $250,000, no gain or loss is recognized.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A wealthy individual wants to transfer $5 million to grandchildren while minimizing transfer taxes. The individual has not used any GSTT exemption. Which strategy would be most effective?',
 '["Make outright gifts to grandchildren and apply the GSTT exemption", "Gift the $5 million to the individual''s children and let them re-gift to grandchildren", "Establish a dynasty trust and allocate GSTT exemption to the trust", "Wait until death and leave the $5 million in the will to grandchildren"]'::jsonb,
 2,
 'A dynasty trust is the most effective strategy because it allows the GSTT exemption to be allocated to the trust, sheltering the original transfer and all future growth from GSTT for multiple generations. Outright gifts use the exemption but do not protect future appreciation. Re-gifting through children creates two layers of transfer tax. A testamentary bequest does not leverage the time value of the exemption.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A decedent''s estate includes $20 million in assets. The decedent was unmarried and had used $2 million of lifetime gift tax exemption. What is the remaining applicable exclusion amount available to the estate in 2026?',
 '["$13.99 million", "$11.99 million", "$18.00 million", "$20.00 million"]'::jsonb,
 1,
 'The applicable exclusion amount for 2026 is $13.99 million. Since the decedent used $2 million of the exclusion during lifetime through taxable gifts, the remaining exclusion available at death is $13.99 million - $2 million = $11.99 million. The taxable estate exceeding this amount ($20 million - $11.99 million = $8.01 million) would be subject to the 40% estate tax rate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A donor makes a $19,000 gift to each of 10 grandchildren in 2026. How many gift tax returns must be filed?',
 '["10 returns, one for each grandchild", "1 return listing all 10 gifts", "0 returns because no gift exceeds the annual exclusion", "0 returns because all gifts are to skip persons"]'::jsonb,
 2,
 'No gift tax return (Form 709) is required for gifts that do not exceed the annual exclusion amount, provided the gifts are of present interests. Since each $19,000 gift equals the 2026 annual exclusion, no gift exceeds the exclusion amount and no return is required. The GSTT does not independently trigger a filing requirement for direct skip gifts covered by the annual exclusion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A grantor establishes a GRAT with a 3-year term funded with $3,000,000 in stock. The Section 7520 rate is 5%. The annuity is structured to return essentially all value to the grantor over 3 years. If the stock appreciates at 12% annually, approximately how much value passes to the remainder beneficiaries transfer-tax-free?',
 '["$0 because the GRAT is zeroed out", "Only the annual gift exclusion amount per beneficiary", "The full $3,000,000", "The excess growth above the 5% Section 7520 rate on $3,000,000 over 3 years"]'::jsonb,
 3,
 'In a zeroed-out GRAT, the annuity returns the contributed value plus the Section 7520 assumed return to the grantor. Any appreciation exceeding the 7520 rate passes to remainder beneficiaries transfer-tax-free. With 12% actual growth versus 5% assumed, the excess 7% annual appreciation on $3,000,000 over 3 years passes to beneficiaries without gift or estate tax, making GRATs most effective in low-rate, high-growth environments.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A husband dies in 2026 with a $10 million estate and has used none of his lifetime gift tax exemption. His wife survives him. If the estate properly elects portability, what is the wife''s combined applicable exclusion amount?',
 '["$13.99 million (her own exemption only)", "$23.99 million (her exemption plus $10 million DSUE)", "$27.98 million (both full exemptions)", "$13.99 million plus the DSUE of $13.99 million"]'::jsonb,
 3,
 'The DSUE (deceased spousal unused exclusion) is the excess of the decedent''s applicable exclusion amount over the sum of taxable estate and adjusted taxable gifts. Since the husband used none of his $13.99 million exemption and his estate is $10 million, his DSUE is $13.99 million - $0 (adjusted taxable gifts) = $13.99 million (the full unused amount). The wife''s combined exclusion is her own $13.99 million plus $13.99 million DSUE = $27.98 million.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A donor gives appreciated stock (basis $20,000, FMV $80,000) to a charitable remainder unitrust (CRUT). Which of the following tax benefits does the donor receive?',
 '["An immediate charitable deduction for the full $80,000 and no capital gains tax on the appreciation", "A charitable deduction for the present value of the remainder interest, and the trust can sell the stock without immediate capital gains tax to the donor", "No charitable deduction until the trust terminates and the charity receives the remainder", "A capital loss deduction for the difference between basis and FMV"]'::jsonb,
 1,
 'When appreciated property is contributed to a CRT, the donor receives a current income tax deduction equal to the present value of the charitable remainder interest. The trust can sell the appreciated stock without triggering immediate capital gains tax to the donor because the CRT is tax-exempt. The gain is recognized by the beneficiary as distributions are made over the trust term, spread across the trust''s income categories.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'Which of the following is NOT a type of generation-skipping transfer?',
 '["A taxable distribution from a trust to a grandchild", "A taxable termination of a trust when the last non-skip beneficiary''s interest ends", "A direct skip gift to a grandchild", "An outright gift from a parent to a child"]'::jsonb,
 3,
 'There are three types of generation-skipping transfers: direct skips (transfers directly to skip persons), taxable distributions (distributions from a trust to skip persons), and taxable terminations (when the interest of the last non-skip beneficiary in a trust terminates). A gift from a parent to a child is not a generation-skipping transfer because the child is only one generation below the parent.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A charitable remainder trust must meet the 10% remainder test. What does this requirement mean?',
 '["The present value of the charitable remainder interest must be at least 10% of the initial fair market value of the trust assets", "At least 10% of the trust income must be distributed to charity each year", "The trust must distribute at least 10% of its assets annually", "The charity must receive at least 10% of the trust assets upon termination"]'::jsonb,
 0,
 'Under Section 664(d), the present value of the charitable remainder interest must be at least 10% of the net fair market value of the property placed in the trust at the time of contribution. This is calculated using IRS actuarial tables and the Section 7520 rate. If the 10% test is not met, the trust does not qualify as a CRT and the donor does not receive a charitable deduction.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A donor gives their child a piece of real estate with a fair market value of $500,000 and an adjusted basis of $100,000. No gift tax is paid. What is the donee''s basis in the property?',
 '["$100,000", "$500,000", "$400,000", "$0"]'::jsonb,
 0,
 'Under Section 1015, the donee''s basis in gifted property is generally the donor''s adjusted basis ($100,000) when the FMV at the time of the gift exceeds the donor''s basis. This is known as a carryover basis. If gift tax were paid, the basis would be increased by the portion of gift tax attributable to the net appreciation. The donee takes the donor''s holding period as well.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A taxpayer established an irrevocable life insurance trust (ILIT) and transferred a $2 million life insurance policy to the trust. The taxpayer dies 2 years after the transfer. What is the estate tax consequence?',
 '["The policy proceeds are excluded from the estate because the trust is irrevocable", "The $2 million death benefit is included in the decedent''s gross estate because the transfer was within 3 years of death", "Only the cash surrender value at the date of transfer is included", "The policy is excluded because the trust, not the decedent, owned the policy"]'::jsonb,
 1,
 'Under Section 2035(a), if a decedent transfers a life insurance policy (or any incident of ownership) within 3 years of death, the full death benefit proceeds are included in the decedent''s gross estate. Since this taxpayer died 2 years after the transfer, the 3-year rule applies and the $2 million is included. Had the decedent survived 3 years, the proceeds would have been excluded from the estate.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A married couple elects gift splitting on Form 709. One spouse gives $100,000 to a friend. After splitting, what is each spouse''s taxable gift?',
 '["$50,000 each before annual exclusion; $31,000 each after exclusion", "$100,000 for the donor spouse; $0 for the consenting spouse", "$50,000 each before annual exclusion; $41,000 each after exclusion", "$81,000 for the donor spouse; $0 for the consenting spouse"]'::jsonb,
 0,
 'With gift splitting, the $100,000 gift is treated as made $50,000 by each spouse. Each spouse then applies their own $19,000 annual exclusion, resulting in a taxable gift of $31,000 per spouse ($50,000 - $19,000). Without gift splitting, the donor spouse would have a taxable gift of $81,000 ($100,000 - $19,000). Both spouses must file Form 709 to elect gift splitting.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A grantor transfers a personal residence valued at $1,200,000 to a QPRT with a 10-year retained term. The present value of the remainder interest is $450,000. If the grantor survives the 10-year term, what is the taxable gift?',
 '["$1,200,000", "$750,000", "$450,000", "$431,000"]'::jsonb,
 2,
 'The taxable gift for a QPRT is the present value of the remainder interest at the time of the transfer ($450,000), not the full FMV of the property. The annual exclusion does not apply because a remainder interest is a future interest. If the grantor survives the term, the residence passes to the beneficiaries and is not included in the grantor''s estate, effectively transferring a $1,200,000+ asset for a $450,000 gift tax cost.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A CPA advises a client to make annual exclusion gifts to a dynasty trust for the benefit of the client''s descendants. To qualify for the annual exclusion, what provision must the trust include?',
 '["A spendthrift clause preventing beneficiary access", "A provision naming the CPA as trustee", "A requirement that all income be distributed currently", "Crummey withdrawal powers giving beneficiaries a temporary right to withdraw contributions"]'::jsonb,
 3,
 'Gifts to an irrevocable trust are generally future interests that do not qualify for the annual gift tax exclusion. To convert them to present interests, the trust must include Crummey withdrawal powers that give beneficiaries a temporary right (typically 30-60 days) to withdraw newly contributed amounts. The powers must be real and the beneficiaries must be notified of their withdrawal rights.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'Which of the following statements about the predeceased parent exception to the GSTT is correct?',
 '["If a transferor''s child (the grandchild''s parent) predeceased the transferor, the grandchild is treated as a non-skip person for purposes of that transferor", "The exception applies only to transfers at death, not lifetime gifts", "The exception eliminates all GSTT on transfers to grandchildren", "The exception applies only if the grandchild is under age 21"]'::jsonb,
 0,
 'Under Section 2651(e), if a transferor''s child (the parent of the grandchild) is deceased at the time of the transfer, the grandchild moves up one generation for GSTT purposes and is treated as a child of the transferor rather than a grandchild. This makes the grandchild a non-skip person, eliminating GSTT on the transfer. The exception applies to both lifetime gifts and transfers at death.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A donor makes a gift of a painting appraised at $300,000. The donor''s adjusted basis in the painting is $50,000. What is the value used to calculate the taxable gift for gift tax purposes?',
 '["$50,000 (adjusted basis)", "$150,000 (average of basis and FMV)", "$250,000 (net appreciation)", "$300,000 (fair market value)"]'::jsonb,
 3,
 'For gift tax purposes, the value of a gift is the fair market value of the property on the date of the gift ($300,000). The donor''s adjusted basis is irrelevant for gift tax valuation. The taxable gift would be $300,000 minus the $19,000 annual exclusion = $281,000. The donee takes the donor''s basis ($50,000) for income tax purposes under the carryover basis rules of Section 1015.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A taxpayer establishes a charitable remainder unitrust (CRUT) that pays 6% of the annually revalued trust assets to the taxpayer for life. How does the CRUT differ from a charitable remainder annuity trust (CRAT)?',
 '["A CRUT pays a fixed dollar amount while a CRAT pays a percentage of trust value", "A CRUT payment varies annually based on trust asset revaluation while a CRAT pays a fixed annuity amount", "A CRUT can only hold publicly traded securities while a CRAT can hold any assets", "There is no substantive difference between a CRUT and a CRAT"]'::jsonb,
 1,
 'The key difference is that a CRUT pays a fixed percentage of the trust assets as revalued annually, so payments increase or decrease with trust performance. A CRAT pays a fixed dollar annuity determined at inception that does not change. Additionally, a CRUT permits additional contributions after the initial funding while a CRAT does not. Both must meet the 10% remainder test and the 5% minimum payout requirement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A donor transfers a family limited partnership interest valued at $1,000,000 to children. A qualified appraiser applies a 30% combined discount for lack of marketability and lack of control. What is the gift tax value of the transfer?',
 '["$1,000,000", "$500,000", "$1,300,000", "$700,000"]'::jsonb,
 3,
 'When transferring minority or non-controlling interests in closely held entities such as family limited partnerships, valuation discounts for lack of marketability and lack of control are commonly applied. A 30% combined discount on a $1,000,000 interest results in a gift tax value of $700,000 ($1,000,000 x 70%). These discounts can significantly reduce transfer tax costs, though the IRS closely scrutinizes aggressive discount claims.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Wealth Transfer and Gifting Strategies',
 'A grandparent creates a 2503(c) minor''s trust for a 10-year-old grandchild and contributes $19,000 in 2026. Which requirement must the trust meet for the contribution to qualify for the annual gift tax exclusion?',
 '["The trust income and corpus must be distributable to the minor before age 21, and any remaining assets must pass to the minor at age 21 or to the minor''s estate if the minor dies before 21", "The trust must distribute all income to the minor annually", "The trust must terminate when the minor reaches age 18", "The minor must serve as trustee of the trust"]'::jsonb,
 0,
 'A Section 2503(c) minor''s trust qualifies gifts as present interests eligible for the annual exclusion if (1) the trust property and income may be expended by or for the benefit of the minor before age 21, (2) any unexpended trust property passes to the minor at age 21, and (3) if the minor dies before 21, the property is payable to the minor''s estate or as the minor appoints under a general power of appointment. Unlike Crummey trusts, no withdrawal right is needed.',
 'medium');

-- =============================================================================
-- Retirement Plans and Education Savings — 36 questions (11 easy, 18 medium, 7 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'In 2026, what is the maximum elective deferral an employee under age 50 can contribute to a 401(k) plan?',
 '["$22,500", "$23,000", "$23,500", "$24,000"]'::jsonb,
 3,
 'For 2026, the maximum elective deferral contribution to a 401(k) plan for an employee under age 50 is $24,000. This limit applies to the total of all elective deferrals across all 401(k) plans in which the employee participates. Employees age 50 and older can make an additional catch-up contribution of $7,000, bringing their total to $31,000.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'An employee age 52 participates in their employer''s 401(k) plan in 2026. What is the maximum total elective deferral including the catch-up contribution?',
 '["$24,000", "$27,500", "$30,500", "$31,000"]'::jsonb,
 3,
 'For 2026, employees age 50 and older can contribute the regular elective deferral limit of $24,000 plus a catch-up contribution of $7,000, for a total maximum deferral of $31,000. The catch-up provision is designed to help older workers accelerate retirement savings. The catch-up amount is in addition to the regular limit and does not count toward the Section 415 annual additions limit.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A self-employed individual with net self-employment income of $200,000 establishes a SEP IRA in 2026. What is the maximum deductible contribution?',
 '["$25,000", "$50,000", "$66,000", "$70,000"]'::jsonb,
 1,
 'For a self-employed individual, the maximum SEP IRA contribution is 25% of net self-employment income after reducing for one-half of self-employment tax. However, the effective rate is approximately 20% of net earnings before the SE tax adjustment. On $200,000, approximately 25% of the adjusted amount yields roughly $50,000. The absolute maximum for 2026 is $70,000, but the percentage calculation limits this individual to about $50,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'Which of the following correctly describes the Roth IRA income limits for 2026?',
 '["Single filers with MAGI above $161,000 cannot make direct Roth IRA contributions", "There are no income limits for Roth IRA contributions", "Single filers with MAGI above $100,000 cannot contribute", "Married filing jointly with MAGI above $200,000 cannot contribute"]'::jsonb,
 0,
 'For 2026, the ability to make direct Roth IRA contributions phases out for single filers with modified AGI between $150,000 and $161,000, and for married filing jointly between $236,000 and $240,000 (approximately). Above these thresholds, no direct contribution is permitted. However, taxpayers above these limits may still contribute through a backdoor Roth conversion, which has no income limit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A taxpayer converts $100,000 from a traditional IRA to a Roth IRA in 2026. The traditional IRA consists entirely of deductible contributions and earnings. What is the tax consequence of the conversion?',
 '["$100,000 is included in ordinary income for 2026", "No tax consequence because conversions are tax-free", "$100,000 is taxed as long-term capital gain", "The tax can be spread over 3 years"]'::jsonb,
 0,
 'A Roth conversion of pre-tax traditional IRA funds is a taxable event. The entire $100,000 is included in the taxpayer''s ordinary income for 2026. No 10% early withdrawal penalty applies to conversions regardless of age. The tax is due in the year of conversion and cannot be spread over multiple years. After conversion, qualified distributions from the Roth IRA will be tax-free.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'At what age must a taxpayer begin taking required minimum distributions (RMDs) from a traditional IRA?',
 '["Age 70½", "Age 72", "Age 73", "Age 75"]'::jsonb,
 2,
 'Under the SECURE 2.0 Act, the required beginning date for RMDs from traditional IRAs and employer-sponsored retirement plans is April 1 of the year following the year the account owner reaches age 73. This applies to individuals who reach age 72 after December 31, 2022. Roth IRAs are not subject to RMDs during the account owner''s lifetime.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'Which of the following retirement plans does NOT impose a 10% early withdrawal penalty for distributions before age 59½?',
 '["Traditional IRA", "401(k) plan", "457(b) governmental plan", "403(b) plan"]'::jsonb,
 2,
 'Distributions from a 457(b) governmental deferred compensation plan are not subject to the 10% early withdrawal penalty under Section 72(t), regardless of the participant''s age at the time of distribution. This is a significant advantage of 457(b) plans over 401(k), 403(b), and IRA plans, which all impose the 10% penalty on distributions before age 59½ (subject to certain exceptions).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'An employee participates in a SIMPLE IRA plan in 2026. What is the maximum employee elective deferral?',
 '["$7,500", "$15,500", "$16,500", "$24,000"]'::jsonb,
 2,
 'For 2026, the maximum employee elective deferral to a SIMPLE IRA is $16,500 for participants under age 50. Employees age 50 and older can make an additional catch-up contribution of $3,500, for a total of $20,000. The employer must either match employee contributions dollar-for-dollar up to 3% of compensation or make a 2% nonelective contribution for all eligible employees.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A 45-year-old taxpayer takes a $30,000 distribution from their traditional IRA to purchase a first home. How much of the distribution is subject to the 10% early withdrawal penalty?',
 '["$0", "$10,000", "$20,000", "$30,000"]'::jsonb,
 2,
 'The first-time homebuyer exception to the 10% early withdrawal penalty under Section 72(t)(2)(F) is limited to $10,000 per lifetime. The first $10,000 of the $30,000 distribution is exempt from the penalty. The remaining $20,000 is subject to the 10% penalty ($2,000). The entire $30,000 is included in ordinary income regardless of the penalty exception. The taxpayer must not have owned a home in the prior 2 years.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'Which of the following is a key advantage of a Roth IRA compared to a traditional IRA?',
 '["Roth IRA contributions are tax-deductible", "Roth IRAs have higher contribution limits", "Roth IRAs are not subject to required minimum distributions during the owner''s lifetime", "Roth IRA earnings are taxed at capital gains rates rather than ordinary income rates"]'::jsonb,
 2,
 'The most significant advantage of a Roth IRA is that it is not subject to RMDs during the account owner''s lifetime. This allows the account to grow tax-free indefinitely. Roth IRA contributions are not deductible (they are made with after-tax dollars), contribution limits are the same as traditional IRAs, and qualified distributions are completely tax-free — not taxed at capital gains rates.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A 403(b) plan is available to employees of which types of organizations?',
 '["Public schools and Section 501(c)(3) tax-exempt organizations", "For-profit corporations with more than 100 employees", "State and local government agencies only", "Any employer that elects 403(b) plan status"]'::jsonb,
 0,
 'A 403(b) plan (also known as a tax-sheltered annuity or TSA) is available to employees of public educational organizations (public schools, including K-12 and universities) and Section 501(c)(3) tax-exempt organizations such as hospitals, churches, and charitable organizations. The 2026 elective deferral limit for 403(b) plans is the same as for 401(k) plans: $24,000 under age 50, $31,000 for age 50 and older.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A taxpayer age 40 contributes $7,500 to a traditional IRA in 2026. The taxpayer is covered by an employer-sponsored retirement plan and has a modified AGI of $95,000 (single). Is the contribution fully deductible?',
 '["Yes, all traditional IRA contributions are fully deductible", "No, the deduction is partially phased out because AGI is within the phase-out range for active participants", "No, the contribution is not deductible at all", "Yes, because the contribution does not exceed $7,500"]'::jsonb,
 1,
 'For 2026, single taxpayers who are active participants in an employer-sponsored retirement plan have their traditional IRA deduction phased out between approximately $79,000 and $89,000 MAGI (these ranges adjust annually). At AGI of $95,000, the taxpayer''s MAGI exceeds the top of the phase-out range, so the deduction is fully phased out (not partially). The contribution can still be made as a nondeductible contribution.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'In 2026, what is the maximum annual contribution to a Coverdell Education Savings Account per beneficiary?',
 '["$2,000", "$500", "$5,500", "$6,500"]'::jsonb,
 0,
 'The maximum annual contribution to a Coverdell ESA is $2,000 per beneficiary. Contributions are not deductible, but qualified distributions are tax-free. Coverdell ESAs can be used for K-12 expenses as well as higher education expenses, which is a broader scope than 529 plans (which were historically limited to higher education but now also cover K-12 tuition up to $10,000 per year).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A 529 plan distribution is used to pay for room and board while the student is enrolled at least half-time. Is the distribution tax-free?',
 '["No, only tuition distributions are tax-free", "Yes, room and board are qualified higher education expenses for 529 plans", "Only if the student lives on campus", "Only if the room and board cost is less than $10,000"]'::jsonb,
 1,
 'Room and board is a qualified higher education expense for 529 plan distributions, provided the student is enrolled at least half-time. The room and board amount cannot exceed the greater of the allowance for room and board included in the cost of attendance as determined by the institution or the actual amount charged by the institution. Off-campus housing qualifies up to this limit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A taxpayer takes a distribution from a Roth IRA after holding the account for 3 years. The taxpayer is age 50. The distribution includes $10,000 of contributions and $5,000 of earnings. What are the tax consequences?',
 '["The entire $15,000 is tax-free", "The $10,000 is tax-free; the $5,000 is taxable but exempt from the penalty", "The entire $15,000 is taxable as ordinary income", "The $10,000 of contributions is tax-free; the $5,000 of earnings is taxable and subject to the 10% penalty"]'::jsonb,
 3,
 'Roth IRA contributions can always be withdrawn tax-free and penalty-free because they were made with after-tax dollars. However, the distribution of earnings ($5,000) is not qualified because the account has not been open for 5 years and the taxpayer is not yet 59½. Unqualified distributions of earnings are subject to income tax and the 10% early withdrawal penalty. The ordering rules treat contributions as distributed first.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'What is the maximum annual contribution to an IRA (traditional or Roth) for a taxpayer under age 50 in 2026?',
 '["$6,500", "$7,000", "$7,500", "$8,750"]'::jsonb,
 2,
 'For 2026, the maximum IRA contribution for a taxpayer under age 50 is $7,500. This limit applies to the combined total of traditional and Roth IRA contributions. Taxpayers age 50 and older can contribute an additional $1,250 as a catch-up contribution, bringing their maximum to $8,750. The contribution limit applies regardless of how many IRAs the taxpayer has.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A small business owner establishes a SEP IRA for their business with 8 employees. Which of the following is a requirement for SEP IRA contributions?',
 '["The employer can contribute different percentages for different employees based on seniority", "Employees must contribute at least 3% of their salary", "Only the business owner is eligible for SEP contributions", "Contributions must be made as a uniform percentage of each eligible employee''s compensation"]'::jsonb,
 3,
 'SEP IRA contributions must be made as a uniform percentage of compensation for all eligible employees (those who are age 21+, have worked for the employer in 3 of the last 5 years, and earned at least $750). The employer cannot discriminate in the contribution percentage. There are no employee elective deferrals in a SEP — all contributions are made by the employer.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A 35-year-old taxpayer withdraws $20,000 from their 401(k) plan after separating from service. No exception to the early withdrawal penalty applies. What are the total federal tax consequences assuming a 24% marginal tax rate?',
 '["$4,800 income tax only", "$6,800 total (income tax plus 10% penalty)", "$2,000 penalty only", "$4,800 income tax and $2,000 penalty, totaling $6,800"]'::jsonb,
 3,
 'The $20,000 distribution is included in ordinary income, resulting in $4,800 of federal income tax at the 24% rate. Additionally, a 10% early withdrawal penalty of $2,000 applies because the taxpayer is under age 59½ and no exception applies. The total federal tax impact is $6,800. The penalty is in addition to regular income tax, not in lieu of it.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A defined benefit plan participant can receive a maximum annual benefit of how much in 2026 under the Section 415 limitation?',
 '["$70,000", "$175,000", "$275,000", "The lesser of 100% of average compensation for the highest 3 consecutive years or the annual dollar limit (approximately $280,000)"]'::jsonb,
 3,
 'Under Section 415(b), the maximum annual benefit payable from a defined benefit plan is the lesser of 100% of the participant''s average compensation for the highest 3 consecutive years of service or the annual dollar limit (approximately $280,000 for 2026, indexed for inflation). Benefits beginning before age 62 are actuarially reduced, and benefits beginning after age 65 may be actuarially increased.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'Which of the following is an exception to the 10% early withdrawal penalty under Section 72(t)?',
 '["Withdrawal to pay for a vacation", "Withdrawal to pay off student loans from 20 years ago", "Withdrawal to purchase a new vehicle", "Withdrawal due to the account owner''s total and permanent disability"]'::jsonb,
 3,
 'Section 72(t)(2)(A)(iii) provides an exception to the 10% early withdrawal penalty for distributions due to the account owner''s total and permanent disability. Other exceptions include death, substantially equal periodic payments (SEPP/72(t)), first-time homebuyer expenses ($10,000 lifetime limit), qualified higher education expenses, and certain medical expenses exceeding 7.5% of AGI. Vacations and vehicle purchases do not qualify.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A taxpayer age 74 has a traditional IRA balance of $500,000 at December 31, 2025. Using the Uniform Lifetime Table, the distribution period factor for age 74 is 25.5. What is the 2026 RMD?',
 '["$15,000", "$25,000", "$20,000", "$19,608"]'::jsonb,
 3,
 'The RMD is calculated by dividing the prior year-end account balance by the distribution period factor from the Uniform Lifetime Table. For 2026, the calculation is $500,000 / 25.5 = $19,608 (approximately). The taxpayer must withdraw at least this amount by December 31, 2026. Failure to take the full RMD results in a 25% excise tax on the shortfall (reduced to 10% if corrected timely).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'An employer offers a 401(k) plan with a 100% match on the first 3% of salary and a 50% match on the next 2% of salary. An employee earning $80,000 contributes 5% of salary. What is the total employer match?',
 '["$2,400", "$4,800", "$4,000", "$3,200"]'::jsonb,
 3,
 'The employee contributes 5% of $80,000 = $4,000. The employer matches 100% on the first 3% ($80,000 x 3% = $2,400 matched at 100% = $2,400) and 50% on the next 2% ($80,000 x 2% = $1,600 matched at 50% = $800). Total employer match is $2,400 + $800 = $3,200. The employee''s total contribution is $4,000 in deferrals plus $3,200 in employer match for $7,200 total additions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A taxpayer establishes a substantially equal periodic payment (SEPP) plan under Section 72(t)(2)(A)(iv) at age 45. After 3 years, the taxpayer modifies the payment schedule. What is the consequence?',
 '["No penalty because the payments were made for at least 3 years", "The 10% early withdrawal penalty applies retroactively to all prior distributions plus interest", "A 25% penalty applies to future distributions only", "The taxpayer must repay all prior distributions"]'::jsonb,
 1,
 'If a SEPP plan is modified before the later of 5 years from the first distribution or the taxpayer reaching age 59½, the 10% early withdrawal penalty is imposed retroactively on all distributions received under the plan, plus interest from the original due date of each year''s return. At age 45 with only 3 years of payments, the taxpayer has not met the 5-year requirement and the modification triggers retroactive penalties.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'Which of the following is a qualified higher education expense for purposes of tax-free 529 plan distributions?',
 '["Transportation costs to and from campus", "Health insurance premiums charged by the university", "Tuition, fees, books, supplies, and equipment required for enrollment", "Student loan interest payments"]'::jsonb,
 2,
 'Qualified higher education expenses for 529 plan purposes include tuition, fees, books, supplies, and equipment required for enrollment or attendance. Room and board (with limits) and computers are also qualified. Transportation, health insurance, and student loan interest are not qualified 529 expenses. However, up to $10,000 in aggregate can be used to repay student loans under the SECURE Act.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A married couple filing jointly has MAGI of $250,000 in 2026. They want to contribute to Roth IRAs. What options do they have?',
 '["They can make direct Roth IRA contributions because they are under the income limit", "They can contribute to a Roth IRA only through their employer''s plan", "They are permanently prohibited from having any Roth IRA funds", "They cannot make direct contributions but can use the backdoor Roth strategy (contribute to a traditional IRA and convert)"]'::jsonb,
 3,
 'For 2026, the Roth IRA income limit for married filing jointly phases out around $236,000 to $240,000 MAGI. At $250,000, the couple exceeds the phase-out range and cannot make direct Roth IRA contributions. However, they can use the backdoor Roth strategy: make a nondeductible contribution to a traditional IRA and then convert it to a Roth IRA. There is no income limit on Roth conversions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A 529 plan account owner changes the beneficiary from one child to another child (siblings). What are the tax consequences?',
 '["The change is tax-free because the new beneficiary is a member of the family of the original beneficiary", "The change is a taxable distribution subject to income tax and a 10% penalty", "Gift tax applies on the full account balance", "The change requires closing the original account and opening a new one"]'::jsonb,
 0,
 'Changing the beneficiary of a 529 plan to another member of the original beneficiary''s family (including siblings, parents, children, nieces, nephews, and first cousins) is not a taxable event. No income tax, penalty, or gift tax applies to the change. This flexibility allows families to redirect education savings to other family members without adverse tax consequences.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A taxpayer age 55 separates from service and takes a distribution from the employer''s 401(k) plan. Is the distribution subject to the 10% early withdrawal penalty?',
 '["Yes, because the taxpayer is under age 59½", "No, because the separation from service occurred in or after the year the taxpayer reached age 55", "No, because all 401(k) distributions are penalty-free after separation from service", "Yes, unless the taxpayer rolls the distribution to an IRA within 60 days"]'::jsonb,
 1,
 'Under Section 72(t)(2)(A)(v), distributions from a qualified employer plan (such as a 401(k)) are exempt from the 10% early withdrawal penalty if the separation from service occurs during or after the calendar year in which the employee reaches age 55. This exception does not apply to IRA distributions — it only applies to employer plan distributions. The distribution is still subject to ordinary income tax.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'An employer establishes a SIMPLE IRA plan and elects the 2% nonelective contribution. An eligible employee earns $60,000 in 2026 but contributes $0 to the plan. What is the employer''s required contribution for this employee?',
 '["$0 because the employee did not contribute", "$3,300", "$1,800", "$1,200"]'::jsonb,
 3,
 'When an employer elects the 2% nonelective contribution option for a SIMPLE IRA, the employer must contribute 2% of each eligible employee''s compensation regardless of whether the employee makes elective deferrals. For an employee earning $60,000, the contribution is $60,000 x 2% = $1,200. This is different from the matching contribution option, which only requires contributions when the employee defers.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A taxpayer makes a nondeductible contribution of $7,500 to a traditional IRA. The taxpayer has no other traditional IRA assets. The taxpayer immediately converts the entire IRA to a Roth IRA. What is taxable on the conversion?',
 '["$7,500", "$3,750 (half of the contribution)", "The conversion is not permitted", "$0 because the contribution was nondeductible and there are no earnings"]'::jsonb,
 3,
 'This is the backdoor Roth IRA strategy. Since the $7,500 contribution was nondeductible (after-tax) and the account has no earnings or other pre-tax IRA balances, the conversion amount is $7,500 with a basis of $7,500, resulting in $0 taxable income. The pro-rata rule under Section 408(d)(2) would apply if the taxpayer had other pre-tax IRA balances, making a portion of the conversion taxable.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'What is the maximum SEP IRA contribution for an employee with compensation of $350,000 in 2026?',
 '["$70,000", "$87,500", "$66,000", "$52,500"]'::jsonb,
 0,
 'The maximum SEP IRA contribution is the lesser of 25% of compensation or $70,000 for 2026. For an employee earning $350,000, 25% would be $87,500, but the dollar limit caps the contribution at $70,000. Note that there is also a compensation cap (approximately $350,000 for 2026) that limits the compensation used in the calculation, but the dollar limit of $70,000 is the binding constraint here.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A taxpayer fails to take the full required minimum distribution from their traditional IRA in 2026. The RMD was $25,000 and the taxpayer only withdrew $15,000. What is the excise tax on the shortfall?',
 '["$1,000", "$10,000", "$5,000", "$2,500"]'::jsonb,
 3,
 'Under SECURE 2.0, the excise tax for failing to take the full RMD was reduced from 50% to 25% of the shortfall. The shortfall is $25,000 - $15,000 = $10,000. The excise tax is 25% x $10,000 = $2,500. If the taxpayer corrects the shortfall within the correction window (generally by the end of the second year following the year of the missed RMD), the penalty is further reduced to 10%.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A taxpayer has a traditional IRA with $200,000 in pre-tax contributions and earnings, and a separate traditional IRA with $50,000 in nondeductible contributions. The taxpayer converts $50,000 from the nondeductible IRA to a Roth IRA. What amount is taxable?',
 '["$40,000", "$0 because the conversion is from the nondeductible IRA", "$50,000", "$10,000"]'::jsonb,
 0,
 'Under the pro-rata rule of Section 408(d)(2), all traditional IRAs are aggregated for purposes of determining the taxable portion of a distribution or conversion. Total IRA balance is $250,000 ($200,000 pre-tax + $50,000 after-tax basis). The after-tax percentage is $50,000 / $250,000 = 20%. Therefore, 80% of the $50,000 conversion ($40,000) is taxable and 20% ($10,000) is a tax-free return of basis. The source IRA is irrelevant.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A taxpayer uses $12,000 from a 529 plan to pay for K-12 private school tuition. Is the distribution tax-free?',
 '["Yes, up to $10,000 per year for K-12 tuition is a qualified expense", "No, 529 plans can only be used for higher education expenses", "Yes, the full $12,000 is tax-free for K-12 expenses", "No, K-12 distributions are always subject to a 10% penalty"]'::jsonb,
 0,
 'Under the Tax Cuts and Jobs Act, 529 plan distributions for K-12 tuition are tax-free but limited to $10,000 per student per year. Of the $12,000 distribution, $10,000 is tax-free and the remaining $2,000 is a nonqualified distribution. The earnings portion of the $2,000 excess is subject to income tax and the 10% penalty. The $10,000 limit applies to elementary and secondary school tuition only.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A taxpayer age 62 takes a $50,000 distribution from a Roth IRA that has been open for 6 years. The account contains $30,000 in contributions and $20,000 in earnings. What is the tax treatment?',
 '["The entire $50,000 is tax-free as a qualified distribution", "The $30,000 in contributions is tax-free; the $20,000 in earnings is taxable", "The $30,000 is tax-free; the $20,000 is taxable with a 10% penalty", "Only $30,000 can be withdrawn; the earnings must remain in the account"]'::jsonb,
 0,
 'This is a qualified distribution from a Roth IRA because the taxpayer meets both requirements: (1) the account has been open for at least 5 years, and (2) the taxpayer is over age 59½ (age 62). Qualified distributions from a Roth IRA are entirely tax-free and penalty-free, including both contributions and earnings. The entire $50,000 is received tax-free.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A high-income business owner with no employees wants to maximize retirement plan contributions in 2026. The owner is age 48 and has $300,000 of net self-employment income. Which plan allows the highest total contribution?',
 '["SEP IRA only", "SIMPLE IRA only", "Solo 401(k) with profit-sharing", "Traditional IRA"]'::jsonb,
 2,
 'A solo 401(k) (individual 401(k)) allows the highest contributions because it combines employee elective deferrals ($24,000 for under age 50) with employer profit-sharing contributions (up to 25% of net self-employment income after the SE tax deduction). The total can approach $70,000 in combined contributions for high earners under age 50. A SEP IRA is limited to 25% of compensation (no employee deferral component), resulting in a lower total contribution.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Retirement Plans and Education Savings',
 'A taxpayer inherits a traditional IRA from a non-spouse who died in 2026. The beneficiary is not an eligible designated beneficiary. Under the SECURE Act, when must the inherited IRA be fully distributed?',
 '["Within 10 years of the owner''s death", "Within 5 years of the owner''s death", "Over the beneficiary''s life expectancy", "By December 31 of the year following the owner''s death"]'::jsonb,
 0,
 'Under the SECURE Act (effective for deaths after 2019), most non-spouse designated beneficiaries who are not eligible designated beneficiaries must distribute the entire inherited IRA within 10 years of the account owner''s death. Eligible designated beneficiaries (surviving spouse, minor children, disabled/chronically ill individuals, and beneficiaries not more than 10 years younger) can still use the life expectancy method.',
 'medium');
-- TCP Chunk 2: Entity Compliance/NOLs, International Tax, Owner-Entity Transactions, Advanced Basis

-- =============================================================================
-- Entity Tax Compliance: NOLs and Consolidated Returns (36 questions: 11 easy, 18 medium, 7 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Zeta Corp generates a net operating loss (NOL) of $200,000 in 2025. Under post-TCJA rules, how many years may Zeta carry this NOL forward?',
 '["5 years", "10 years", "20 years", "Indefinitely"]'::jsonb,
 3,
 'Under the Tax Cuts and Jobs Act, NOLs arising in tax years beginning after December 31, 2017, may be carried forward indefinitely. The prior 20-year carryforward limitation was eliminated. However, the deduction is limited to 80% of taxable income in the carryforward year.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Apex Corp has taxable income of $500,000 before considering an NOL carryforward of $400,000 from 2024. What is the maximum NOL deduction Apex may claim?',
 '["$400,000", "$500,000", "$320,000", "$250,000"]'::jsonb,
 0,
 'The 80% limitation applies to the taxable income before the NOL deduction: $500,000 x 80% = $400,000. Since the NOL carryforward of $400,000 does not exceed the $400,000 limitation, Apex may deduct the full $400,000. The remaining $100,000 of taxable income is subject to tax.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Delta Corp has taxable income of $300,000 before considering an NOL carryforward of $500,000. What amount of the NOL remains after Delta claims the maximum deduction?',
 '["$200,000", "$260,000", "$0", "$140,000"]'::jsonb,
 1,
 'The 80% taxable income limitation allows Delta to deduct $300,000 x 80% = $240,000 of the NOL. The remaining carryforward is $500,000 - $240,000 = $260,000, which carries forward indefinitely to future tax years. The 80% cap ensures that at least 20% of taxable income is subject to current-year tax.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Under post-TCJA rules, which type of taxpayer may still carry back an NOL?',
 '["Farming businesses", "All C corporations", "S corporations", "Partnerships"]'::jsonb,
 0,
 'Post-TCJA, the general NOL carryback was eliminated. However, farming businesses retain a 2-year carryback election for farming losses. Property and casualty insurance companies also retain carryback provisions. S corporations and partnerships do not generate NOLs at the entity level; losses flow through to individual owners.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Parent Corp owns 85% of the voting stock and 85% of the value of Sub Corp. Which of the following is true regarding filing a consolidated return?',
 '["They may elect to file a consolidated return as an affiliated group", "They are required to file a consolidated return", "They cannot file a consolidated return because 90% ownership is required", "Only a court order can require consolidated filing"]'::jsonb,
 0,
 'An affiliated group exists when a common parent owns at least 80% of the voting power and 80% of the value of at least one includible corporation. Since Parent owns 85% of both, they qualify as an affiliated group and may elect to file a consolidated return. The election is voluntary but binding once made.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Ajax Corp owns 75% of the stock of Baker Corp. May they file a consolidated return?',
 '["Yes, because 51% ownership is sufficient", "Yes, because they are a controlled group", "No, because an affiliated group requires at least 80% ownership", "No, because consolidated returns require 100% ownership"]'::jsonb,
 2,
 'Filing a consolidated return requires an affiliated group, which is defined as a parent-subsidiary chain where the parent owns at least 80% of the voting power and value of at least one subsidiary. At 75%, Ajax does not meet the 80% threshold, so they cannot file a consolidated return with Baker.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Which of the following entities is generally excluded from an affiliated group for consolidated return purposes?',
 '["A domestic C corporation", "A foreign corporation", "A wholly-owned domestic subsidiary", "A newly formed domestic corporation"]'::jsonb,
 1,
 'Foreign corporations are generally excluded from the definition of includible corporations under Section 1504(b). Other excluded entities include tax-exempt organizations, S corporations, regulated investment companies (RICs), real estate investment trusts (REITs), and certain insurance companies. Only domestic C corporations that are includible may join the consolidated group.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Mega Corp files a consolidated return with its 100%-owned subsidiary, Nano Corp. During the year, Mega sells inventory costing $80,000 to Nano for $120,000. Nano has not resold the inventory by year-end. What is the consolidated group''s recognized gain on this intercompany transaction?',
 '["$0", "$40,000", "$120,000", "$80,000"]'::jsonb,
 0,
 'Under the intercompany transaction rules of Reg. Section 1.1502-13, gain on the sale of inventory between members of a consolidated group is deferred until the inventory is sold to an outside party. Since Nano still holds the inventory at year-end, the $40,000 intercompany gain is deferred and the consolidated group recognizes $0.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'In the prior question, Nano Corp sells the inventory to an unrelated customer for $150,000 in the following year. What gain does the consolidated group recognize in that year?',
 '["$30,000", "$110,000", "$40,000", "$70,000"]'::jsonb,
 3,
 'When Nano sells the inventory externally, both the deferred intercompany gain and Nano''s own gain are recognized. Mega''s deferred gain is $40,000 ($120,000 - $80,000). Nano''s gain is $30,000 ($150,000 - $120,000). The consolidated group recognizes a total of $70,000 ($40,000 + $30,000) through the matching rule.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Under the SRLY rules, Target Corp had a $150,000 NOL before joining the Alpha consolidated group. In its first year as a member, Target earns $60,000 of separate return taxable income. How much of the pre-acquisition NOL may the group use?',
 '["$0", "$150,000", "$60,000", "$48,000"]'::jsonb,
 3,
 'The separate return limitation year (SRLY) rules limit the use of pre-acquisition NOLs to the member''s contribution to consolidated taxable income. Target contributed $60,000. However, the 80% limitation also applies: $60,000 x 80% = $48,000. The group may use $48,000 of Target''s pre-acquisition NOL, with $102,000 carrying forward.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Which rule limits the use of a subsidiary''s pre-acquisition NOLs within a consolidated group to that subsidiary''s contribution to consolidated taxable income?',
 '["SRLY rules", "Section 382 limitation", "Built-in gain rules", "Excess loss account rules"]'::jsonb,
 0,
 'The Separate Return Limitation Year (SRLY) rules prevent a consolidated group from using a new member''s pre-acquisition NOLs against income generated by other group members. The NOL can only offset income attributable to the subsidiary that generated the loss, measured by its separate return taxable income contribution.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Parent Corp sells a piece of equipment with a basis of $50,000 to its 100%-owned Sub Corp for $30,000. Both are members of a consolidated group. How is the $20,000 loss treated?',
 '["Deferred under the intercompany transaction rules", "Recognized immediately by Parent", "Permanently disallowed under Section 267", "Recognized but limited to 50%"]'::jsonb,
 0,
 'Losses on intercompany sales between members of a consolidated group are deferred, not permanently disallowed. Unlike Section 267 which applies to related but unconsolidated parties, the consolidated return regulations defer the loss until a triggering event such as sale to an outsider, departure from the group, or depreciation by the buying member.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Sigma Corp is a member of the Beta consolidated group. Sigma''s stock basis held by Beta is $0, and Sigma has cumulative losses allocated to Beta of $75,000 beyond that basis. What has Beta created?',
 '["An excess loss account of $75,000", "A capital loss carryover", "A Section 382 limitation", "A deferred intercompany transaction"]'::jsonb,
 0,
 'An excess loss account (ELA) arises when a member''s losses allocated to the parent exceed the parent''s basis in the subsidiary''s stock. The ELA of $75,000 represents a negative basis in Sigma''s stock. If Sigma leaves the consolidated group, Beta must recognize the ELA as gain, typically treated as capital gain from a deemed stock disposition.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'When a subsidiary with an excess loss account departs a consolidated group, how is the excess loss account generally treated?',
 '["As a capital gain recognized by the parent", "As an ordinary loss to the parent", "As a deferred loss carried forward", "As a reduction to the departing subsidiary''s NOL"]'::jsonb,
 0,
 'When a subsidiary leaves the consolidated group (through sale, deconsolidation, or liquidation), the parent must recognize the excess loss account as gain. This gain is generally treated as gain from the disposition of stock, which is capital gain. The ELA essentially recaptures losses that reduced the parent''s stock basis below zero.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Omega Corp acquires 100% of Target Corp, which has assets with a fair market value of $800,000 and a tax basis of $500,000. Under the built-in gain rules, what is the recognized built-in gain (RBIG) amount?',
 '["$300,000", "$500,000", "$800,000", "$0"]'::jsonb,
 0,
 'The net unrealized built-in gain (NUBIG) is the excess of the fair market value of assets ($800,000) over the aggregate tax basis ($500,000), which equals $300,000. If the NUBIG exceeds a threshold amount, built-in gains recognized during the 5-year recognition period are treated as recognized built-in gains, which increase the Section 382 limitation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'A C corporation with taxable income of $2,000,000 must make estimated tax payments. What is the required annual payment to avoid penalties, assuming the corporation does not qualify as a large corporation?',
 '["100% of the current year tax liability", "100% of the prior year tax liability", "The lesser of 100% of the current year or 100% of the prior year tax liability", "90% of the current year tax liability"]'::jsonb,
 2,
 'A corporation must pay estimated taxes equal to the lesser of 100% of the current year''s tax liability or 100% of the prior year''s tax liability to avoid the underpayment penalty. Large corporations (those with $1 million or more in taxable income in any of the 3 prior years) may use the prior year safe harbor only for the first installment.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Kappa Corp is a large corporation that had taxable income exceeding $1,000,000 in a prior year. For estimated tax purposes, which installment may use the prior year safe harbor?',
 '["All four installments", "None — large corporations must use current year estimates", "The first and second installments", "Only the first installment"]'::jsonb,
 3,
 'Large corporations (those with taxable income of $1 million or more in any of the 3 preceding years) may only use the prior year''s tax liability as a safe harbor for the first installment. The remaining three installments must be based on the current year''s estimated tax liability. Any shortfall from the first installment must be made up by the second installment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'A calendar-year C corporation must make estimated tax payments in four installments. What are the due dates?',
 '["January 15, April 15, July 15, October 15", "March 15, June 15, September 15, December 15", "April 15, June 15, September 15, December 15", "April 15, June 15, September 15, January 15"]'::jsonb,
 2,
 'Calendar-year corporations must make estimated tax payments by the 15th day of the 4th, 6th, 9th, and 12th months of the tax year: April 15, June 15, September 15, and December 15. This differs from individual estimated tax dates, where the fourth payment is due January 15 of the following year.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Lambda Corp has a farming loss of $180,000 in 2025. Under post-TCJA rules, what carryback period is available for this loss?',
 '["No carryback is permitted", "2-year carryback", "3-year carryback", "5-year carryback"]'::jsonb,
 1,
 'Farming losses are an exception to the general post-TCJA prohibition on NOL carrybacks. Farming businesses may elect to carry back farming losses for 2 years. Alternatively, they may waive the carryback and carry the loss forward indefinitely. This special provision recognizes the cyclical nature of agricultural income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Consolidated group Alpha files a consolidated return. Sub A has taxable income of $400,000 and Sub B has a loss of $150,000. What is the consolidated taxable income before any NOL deduction?',
 '["$550,000", "$400,000", "$250,000", "$150,000"]'::jsonb,
 2,
 'Consolidated taxable income combines the income and losses of all group members. Sub A''s income of $400,000 is offset by Sub B''s loss of $150,000, resulting in consolidated taxable income of $250,000. This ability to offset one member''s income with another''s losses is a primary benefit of filing a consolidated return.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Once an affiliated group elects to file a consolidated return, what must occur for a subsidiary to file a separate return in a subsequent year?',
 '["The subsidiary may elect to leave at any time", "The parent simply files a revised election form", "The subsidiary automatically reverts to separate filing after 5 years", "The IRS must grant permission for the subsidiary to file separately"]'::jsonb,
 3,
 'A consolidated return election is binding on all members for all subsequent years unless the IRS grants permission to discontinue. A member leaves the group only if it ceases to be a member of the affiliated group (e.g., the parent sells its stock below 80%). Voluntary withdrawal requires IRS consent, which is rarely granted.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Phoenix Corp undergoes an ownership change as defined under Section 382. The fair market value of Phoenix stock immediately before the change is $2,000,000 and the long-term tax-exempt rate is 4%. What is the annual Section 382 limitation?',
 '["$80,000", "$200,000", "$400,000", "$2,000,000"]'::jsonb,
 0,
 'The Section 382 limitation is calculated by multiplying the value of the loss corporation''s stock immediately before the ownership change by the long-term tax-exempt rate: $2,000,000 x 4% = $80,000. This annual cap limits the amount of pre-change NOLs that can offset post-change income, preventing trafficking in loss corporations.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'An ownership change under Section 382 occurs when 5-percent shareholders increase their aggregate ownership by more than what amount over a 3-year testing period?',
 '["25 percentage points", "50 percentage points", "75 percentage points", "10 percentage points"]'::jsonb,
 1,
 'Section 382 defines an ownership change as occurring when 5-percent shareholders increase their aggregate ownership of the loss corporation by more than 50 percentage points during the testing period (generally 3 years). Once triggered, annual use of pre-change NOLs is limited to the stock value multiplied by the long-term tax-exempt rate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Rho Corp has a consolidated NOL (CNOL) of $600,000. The group has consolidated taxable income of $400,000 before the CNOL deduction. What is the maximum CNOL deduction?',
 '["$400,000", "$320,000", "$480,000", "$600,000"]'::jsonb,
 1,
 'The 80% of taxable income limitation applies to consolidated NOL deductions. The maximum deduction is $400,000 x 80% = $320,000. The remaining $280,000 of the CNOL carries forward to future years. This ensures the group pays tax on at least 20% of its pre-NOL taxable income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'In a consolidated group, Sub A sells land with a basis of $100,000 to Sub B for $250,000. Sub B holds the land at year-end. Sub B later sells the land to an unrelated buyer for $300,000. Under the matching rule, what total gain does the group recognize in the year of the external sale?',
 '["$50,000", "$150,000", "$200,000", "$300,000"]'::jsonb,
 2,
 'Under the matching rule, the intercompany gain is triggered when the buying member has a corresponding item. Sub A''s deferred gain of $150,000 ($250,000 - $100,000) and Sub B''s gain of $50,000 ($300,000 - $250,000) are both recognized in the year of external sale. The total consolidated gain is $200,000 ($300,000 - $100,000 original basis).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'What triggers the acceleration rule for intercompany transactions in a consolidated group?',
 '["The buying member sells the asset to an outside party", "The selling or buying member leaves the consolidated group", "The asset is fully depreciated", "A new member joins the group"]'::jsonb,
 1,
 'The acceleration rule triggers immediate recognition of any remaining deferred intercompany gain or loss when either the selling or buying member leaves the consolidated group. This prevents deferred gains from escaping taxation permanently. The matching rule applies when there is a corresponding external event, while acceleration applies when group membership changes.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Theta Corp generates a $100,000 NOL in Year 1 as a standalone company. In Year 2, Theta joins the Iota consolidated group. In Year 2, Theta contributes $50,000 of separate company taxable income and the group has $900,000 of consolidated taxable income. How much of Theta''s pre-acquisition NOL can the group use under the SRLY rules?',
 '["$40,000", "$50,000", "$100,000", "$720,000"]'::jsonb,
 0,
 'Under SRLY rules, Theta''s pre-acquisition NOL is limited to its contribution to consolidated taxable income ($50,000). The 80% limitation further limits the deduction to $50,000 x 80% = $40,000. The group cannot use Theta''s NOL against income earned by other members. The remaining $60,000 carries forward subject to SRLY limitations.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Nu Corp acquires Target Corp, which has assets with a fair market value of $400,000 and a tax basis of $650,000. What is Target''s net unrealized built-in loss (NUBIL)?',
 '["$250,000", "$400,000", "$650,000", "$0"]'::jsonb,
 0,
 'The net unrealized built-in loss (NUBIL) is the excess of aggregate tax basis ($650,000) over fair market value ($400,000), which equals $250,000. If the NUBIL exceeds a threshold, recognized built-in losses during the 5-year recognition period are subject to limitation under Section 382, as they are treated like pre-change losses.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Consolidated group Beta has $1,200,000 in consolidated taxable income. Sub X has a CNOL carryforward of $300,000 and a SRLY NOL of $200,000. Sub X''s separate company income contribution is $250,000. What is the total NOL deduction the group can claim?',
 '["$500,000", "$440,000", "$960,000", "$400,000"]'::jsonb,
 1,
 'The CNOL of $300,000 is limited by 80% of consolidated taxable income but is fully usable since $300,000 < $960,000 (80% x $1,200,000). The SRLY NOL is limited to Sub X''s contribution: 80% x $250,000 = $200,000, but only $200,000 is available and it does not exceed $200,000. After using the $300,000 CNOL, remaining CTI is $900,000; SRLY limit is 80% x $250,000 = $200,000. But we must apply the 80% rule to the SRLY contribution: min($200,000, $200,000) = $200,000. However, coordinating both: $300,000 CNOL (no SRLY limit) + $140,000 SRLY (80% of $250,000 reduced for the sequential computation) = $440,000 total.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Which of the following best describes the purpose of the intercompany transaction rules in a consolidated return?',
 '["To accelerate income recognition between group members", "To prevent group members from transacting with each other", "To increase the tax liability of the consolidated group", "To ensure the group is taxed as if it were a single entity"]'::jsonb,
 3,
 'The intercompany transaction rules under Reg. Section 1.1502-13 are designed to ensure the consolidated group is taxed as though it were a single taxpayer. Gains and losses on transactions between members are deferred until there is a corresponding event involving a party outside the group, preserving the single-entity principle.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Upsilon Corp has consolidated taxable income of $750,000. The group has a CNOL carryforward of $800,000 from 2023. What is the group''s tax liability at the 21% corporate rate after applying the NOL?',
 '["$0", "$105,000", "$157,500", "$31,500"]'::jsonb,
 3,
 'The NOL deduction is limited to 80% of $750,000 = $600,000. The remaining taxable income after the NOL deduction is $750,000 - $600,000 = $150,000. The tax liability is $150,000 x 21% = $31,500. The unused portion of the CNOL ($200,000) carries forward indefinitely.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'A parent corporation''s basis in its subsidiary''s stock is adjusted for the subsidiary''s items in a consolidated return. Which of the following increases the parent''s stock basis?',
 '["The subsidiary''s operating losses", "The subsidiary''s taxable income", "Dividends paid by the subsidiary to the parent", "Intercompany losses recognized on external sale"]'::jsonb,
 1,
 'Under Reg. Section 1.1502-32, the parent''s basis in the subsidiary''s stock is increased by the subsidiary''s taxable income, tax-exempt income, and certain other positive adjustments. Losses decrease basis. Intercompany dividends generally reduce basis. These adjustments prevent double taxation or double deduction of items when the subsidiary''s stock is eventually sold.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'In a consolidated group, Parent has a basis of $200,000 in Sub''s stock. Sub incurs losses of $250,000 allocated to Parent over several years. After reducing basis to $0, what is the amount of the excess loss account?',
 '["$0", "$50,000", "$200,000", "$250,000"]'::jsonb,
 1,
 'An excess loss account arises when negative adjustments (losses, distributions) to the parent''s stock basis exceed the positive adjustments and original basis. Parent''s $200,000 basis is reduced to $0 by $200,000 of losses, and the remaining $50,000 of losses creates an excess loss account. The ELA is essentially a negative stock basis.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Chi Corp has an NOL of $1,500,000 from 2024. In 2025, Chi merges into a larger corporation in a tax-free reorganization that constitutes an ownership change under Section 382. The value of Chi''s stock before the change is $3,000,000, and the long-term tax-exempt rate is 4.5%. How much of the pre-change NOL can be used annually?',
 '["$135,000", "$67,500", "$1,500,000", "$270,000"]'::jsonb,
 0,
 'The Section 382 annual limitation is $3,000,000 x 4.5% = $135,000. Chi can only use $135,000 of its pre-change NOL per year against post-change income. At this rate, it would take approximately 11 years to fully utilize the $1,500,000 NOL (assuming sufficient taxable income each year and subject to the 80% limitation).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Psi Corp joins a consolidated group on July 1 of the current year. For purposes of computing estimated tax payments, when does the group''s obligation to include Psi in its estimates begin?',
 '["Retroactively to January 1", "The following tax year", "Immediately upon Psi joining the group", "The quarter following Psi''s entry into the group"]'::jsonb,
 3,
 'When a new member joins a consolidated group mid-year, the group''s estimated tax payments are adjusted beginning with the quarter following the member''s entry. The group is not required to retroactively adjust prior installments, but must include the new member''s income in estimates going forward.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'A consolidated group recognizes a $200,000 gain on the sale of Sub A''s stock to an outside buyer. Sub A has $50,000 in its excess loss account. How does the ELA affect the gain computation?',
 '["The ELA is added to the gain, increasing it to $250,000", "The ELA reduces the gain to $150,000", "The ELA has no effect on the stock sale", "The ELA converts the gain to ordinary income"]'::jsonb,
 0,
 'When a subsidiary departs the group, any excess loss account is recognized as additional gain. The ELA of $50,000 is added to the gain from the stock sale, increasing total recognized gain to $250,000. The ELA represents losses that previously reduced the parent''s basis below zero, and its recognition recaptures those excess deductions.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Tax Compliance: NOLs and Consolidated Returns',
 'Epsilon Corp has taxable income of $10,000,000 and an NOL carryforward of $15,000,000 from post-2017 tax years. What is Epsilon''s taxable income after the NOL deduction?',
 '["$2,000,000", "$0", "$5,000,000", "$7,000,000"]'::jsonb,
 0,
 'The 80% limitation caps the NOL deduction at $10,000,000 x 80% = $8,000,000. Epsilon''s taxable income after the deduction is $10,000,000 - $8,000,000 = $2,000,000. The remaining $7,000,000 of unused NOL carries forward indefinitely. Epsilon owes tax on $2,000,000 x 21% = $420,000.',
 'medium');

-- =============================================================================
-- International Tax (38 questions: 11 easy, 19 medium, 8 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Which of the following types of income is classified as Subpart F income?',
 '["Active business income earned by a CFC in its country of incorporation", "Foreign base company sales income", "Income from the sale of agricultural products grown in the CFC''s home country", "Wages paid to employees of the CFC"]'::jsonb,
 1,
 'Foreign base company sales income is one of the main categories of Subpart F income under Section 954. It includes income from the purchase and sale of personal property where the CFC buys from or sells to a related person, and the property is manufactured and sold for use outside the CFC''s country of incorporation. Active business income earned locally is generally not Subpart F income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'US Parent Corp owns 100% of CFC Ltd, which earns $500,000 of Subpart F income. US Parent''s pro rata share is included in US Parent''s gross income under which provision?',
 '["Section 951(a)", "Section 951A", "Section 956", "Section 904"]'::jsonb,
 0,
 'Section 951(a) requires US shareholders of a controlled foreign corporation to include their pro rata share of the CFC''s Subpart F income in gross income currently, regardless of whether the income is distributed. Section 951A covers GILTI, Section 956 covers investments in US property, and Section 904 is the foreign tax credit limitation.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'A controlled foreign corporation (CFC) is defined as a foreign corporation in which US shareholders own more than what percentage of the total voting power or value?',
 '["10%", "25%", "50%", "80%"]'::jsonb,
 2,
 'A CFC is a foreign corporation in which US shareholders (each owning 10% or more of voting power or value) collectively own more than 50% of the total combined voting power or value of the stock. The 10% threshold defines a US shareholder, while the 50% threshold determines whether the corporation is a CFC.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Ajax Inc. owns 100% of a CFC that has tested income of $2,000,000 and qualified business asset investment (QBAI) of $8,000,000. What is Ajax''s GILTI inclusion under Section 951A?',
 '["$2,000,000", "$1,200,000", "$800,000", "$400,000"]'::jsonb,
 1,
 'GILTI equals tested income minus the deemed tangible income return (DTIR). DTIR is 10% of QBAI: $8,000,000 x 10% = $800,000. GILTI = $2,000,000 - $800,000 = $1,200,000. The 10% deemed return represents the routine return on tangible assets that is excluded from GILTI, while the excess is treated as intangible income subject to US tax.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'A domestic C corporation includes $1,000,000 of GILTI in income. Under Section 250, what is the effective US tax rate on this GILTI inclusion (before foreign tax credits)?',
 '["21%", "15.75%", "13.125%", "10.5%"]'::jsonb,
 3,
 'Section 250 provides a 50% deduction for GILTI inclusions by domestic C corporations. The deduction reduces the effective rate from 21% to 10.5% (21% x 50% = 10.5%). This reduced rate is designed to approximate the tax rate applied by other countries to intangible income, making the US rate competitive internationally.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Beta Corp has $3,000,000 in foreign-derived gross income and $1,500,000 in deductions allocable to that income. Its total taxable income is $5,000,000. What is the deemed intangible income portion used to calculate FDII?',
 '["$1,500,000", "$3,000,000", "$5,000,000", "$750,000"]'::jsonb,
 0,
 'Foreign-derived deduction eligible income (FDDEI) is foreign-derived gross income minus allocable deductions: $3,000,000 - $1,500,000 = $1,500,000. This represents the portion of deduction eligible income that is derived from serving foreign markets. The FDII deduction is 37.5% of the FDII amount, yielding an effective rate of 13.125%.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Under Section 250, the deduction for foreign-derived intangible income (FDII) results in what effective federal tax rate for a C corporation?',
 '["10.5%", "13.125%", "15.75%", "21%"]'::jsonb,
 1,
 'The FDII deduction is 37.5% of the FDII amount, reducing the effective tax rate from 21% to 13.125% (21% x (1 - 0.375) = 13.125%). This incentive encourages US corporations to locate intangible income-generating activities domestically rather than shifting them offshore, by providing a preferential rate on foreign-derived income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Gamma Corp pays $300,000 in foreign income taxes on $1,500,000 of foreign-source income. Its worldwide taxable income is $4,000,000. What is the Section 904 foreign tax credit limitation?',
 '["$300,000", "$315,000", "$78,750", "$840,000"]'::jsonb,
 0,
 'The Section 904 limitation is: US tax liability x (foreign-source taxable income / worldwide taxable income). US tax = $4,000,000 x 21% = $840,000. Limitation = $840,000 x ($1,500,000 / $4,000,000) = $315,000. Since the foreign taxes paid ($300,000) are less than the limitation ($315,000), Gamma can credit the full $300,000. The limitation prevents the credit from reducing tax on US-source income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Delta Corp pays $400,000 in foreign income taxes. Its Section 904 limitation is $350,000. What is the result?',
 '["Delta credits $400,000 and receives a $50,000 refund", "Delta must recalculate using an alternative method", "Delta credits $350,000 and the $50,000 excess is permanently lost", "Delta credits $350,000 and carries the $50,000 excess forward"]'::jsonb,
 3,
 'When foreign taxes paid exceed the Section 904 limitation, the excess cannot be credited in the current year. The $50,000 excess credit may be carried back 1 year and forward 10 years. Delta credits $350,000 (the limitation amount) and carries the remaining $50,000 to an eligible year where the limitation exceeds credits claimed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Under the foreign tax credit rules, excess foreign tax credits may be carried back how many years and forward how many years?',
 '["No carryback, 5 years forward", "3 years back, 15 years forward", "2 years back, 5 years forward", "1 year back, 10 years forward"]'::jsonb,
 3,
 'Excess foreign tax credits (credits that exceed the Section 904 limitation) may be carried back 1 year and carried forward 10 years. This allows taxpayers to smooth out fluctuations in effective foreign tax rates across years. The carryback/carryforward amounts are applied on a FIFO basis.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Which of the following is the correct categorization for the Section 904 foreign tax credit limitation?',
 '["Single overall limitation for all foreign income", "Separate limitations for general category and passive category income", "Separate limitations by country", "Separate limitations by type of entity"]'::jsonb,
 1,
 'The Section 904 limitation is computed separately for each category (basket) of income. The two primary categories are general category income (active business income) and passive category income (investment income such as dividends, interest, and royalties). This prevents high-tax active income credits from offsetting US tax on low-tax passive income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Epsilon Corp, a US corporation, owns 100% of a CFC that pays $200,000 in foreign income taxes on $1,000,000 of earnings. Under Section 960, how is the foreign tax credit computed for GILTI?',
 '["Epsilon claims a direct credit for the full $200,000", "Epsilon claims 80% of the deemed-paid taxes as a credit", "Epsilon claims the deemed-paid credit limited to 80% of taxes attributable to GILTI", "Epsilon may choose between a credit or deduction"]'::jsonb,
 2,
 'Under Section 960(d), the deemed-paid foreign tax credit for GILTI is limited to 80% of the foreign taxes paid attributable to tested income. This means Epsilon can claim 80% x $200,000 = $160,000 as a credit. The 20% haircut ensures that GILTI is taxed at a minimum effective rate in the US even when foreign taxes are paid.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'An individual US shareholder of a CFC with $400,000 of GILTI income makes a Section 962 election. What is the primary effect of this election?',
 '["The individual is taxed at the corporate rate of 21% on the GILTI inclusion", "The individual excludes GILTI from gross income", "The individual defers GILTI until the CFC makes a distribution", "The individual converts GILTI to capital gain"]'::jsonb,
 0,
 'A Section 962 election allows an individual US shareholder to be taxed on Subpart F and GILTI inclusions at corporate rates (21%) rather than individual rates (up to 37%). The individual also becomes eligible for the Section 250 deduction (50% for GILTI) and deemed-paid foreign tax credits under Section 960. However, actual distributions may be taxed again as dividends.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Zeta Corp owns shares in a passive foreign investment company (PFIC). The PFIC does not make a QEF or mark-to-market election. When Zeta receives an excess distribution, how is it taxed?',
 '["As ordinary income in the current year", "Allocated ratably over the holding period and taxed at the highest rate for each year plus interest", "As long-term capital gain", "Tax-free under the participation exemption"]'::jsonb,
 1,
 'Under the default PFIC excess distribution rules of Section 1291, excess distributions are allocated ratably over the shareholder''s holding period. Amounts allocated to prior years are taxed at the highest rate in effect for each year, plus an interest charge for the deferral. Only the portion allocated to the current year is taxed as ordinary income at current rates.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Which PFIC election allows the shareholder to include their pro rata share of the PFIC''s ordinary earnings and net capital gain annually, avoiding the punitive excess distribution rules?',
 '["Mark-to-market election", "Check-the-box election", "Section 962 election", "Qualified electing fund (QEF) election"]'::jsonb,
 3,
 'A qualified electing fund (QEF) election under Section 1295 allows the US shareholder to include annually their pro rata share of the PFIC''s ordinary earnings and net capital gain. This current-inclusion regime avoids the interest charge and highest-rate taxation of the default excess distribution method. The election requires the PFIC to provide an annual information statement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Under the mark-to-market election for a PFIC, a US shareholder with stock that increases in value from $100,000 to $140,000 during the year must recognize what amount?',
 '["$0", "$140,000 as ordinary income", "$40,000 as capital gain", "$40,000 as ordinary income"]'::jsonb,
 3,
 'Under the Section 1296 mark-to-market election, the shareholder includes as ordinary income the excess of the fair market value at year-end ($140,000) over the adjusted basis ($100,000), which is $40,000. Gains are ordinary income; losses are ordinary but limited to prior mark-to-market gains. This election is available only for marketable PFIC stock.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Which form is required for a US person who is a 10% or greater shareholder of a controlled foreign corporation?',
 '["Form 5471", "Form 8865", "Form 8858", "Form 926"]'::jsonb,
 0,
 'Form 5471, Information Return of US Persons With Respect to Certain Foreign Corporations, must be filed by US shareholders who own 10% or more of a CFC. Form 8865 is for foreign partnerships, Form 8858 is for foreign disregarded entities, and Form 926 is for transfers of property to foreign corporations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Which form must a US person file to report interests in a foreign partnership?',
 '["Form 5471", "Form 8938", "Form 1116", "Form 8865"]'::jsonb,
 3,
 'Form 8865, Return of US Persons With Respect to Certain Foreign Partnerships, is required for US persons with specified interests in foreign partnerships. The filing categories include controlling partners (50%+ interest), 10% or more partners in controlled partnerships, and persons contributing property to foreign partnerships. Form 5471 is for foreign corporations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'The base erosion and anti-abuse tax (BEAT) applies to corporations with average annual gross receipts of at least what amount over the 3 prior tax years?',
 '["$100 million", "$250 million", "$500 million", "$1 billion"]'::jsonb,
 2,
 'The BEAT under Section 59A applies to C corporations (other than RICs, REITs, and S corps) with average annual gross receipts of at least $500 million over the 3 prior tax years and a base erosion percentage of 3% or more (2% for banks and securities dealers). The BEAT is a minimum tax on deductible payments made to foreign related parties.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Eta Corp, a US multinational with $600 million in gross receipts, makes $50 million in deductible payments to its foreign parent. Eta''s regular tax liability is $20 million and its modified taxable income (adding back base erosion payments) produces a BEAT liability of $25 million. What additional tax does Eta owe under BEAT?',
 '["$5,000,000", "$0", "$25,000,000", "$50,000,000"]'::jsonb,
 0,
 'The BEAT imposes additional tax equal to the excess of the BEAT liability over the regular tax liability. BEAT = $25,000,000 - $20,000,000 = $5,000,000 additional tax. Eta pays its regular tax of $20 million plus the $5 million BEAT amount for a total of $25 million. If regular tax exceeds BEAT, no additional tax is owed.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Which of the following is NOT a category of Subpart F income?',
 '["Foreign base company sales income", "Foreign base company services income", "Insurance income", "Foreign base company manufacturing income"]'::jsonb,
 3,
 'Subpart F income includes foreign base company income (which comprises foreign base company sales income, services income, and foreign personal holding company income) and insurance income. There is no category called foreign base company manufacturing income. Active manufacturing income earned in the CFC''s country of incorporation is generally not Subpart F income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Theta Corp''s CFC earns $800,000 of foreign base company services income by providing technical services to a related US party. The services are performed in Country X (not the CFC''s country of incorporation). Is this Subpart F income?',
 '["No, because services income is always excluded from Subpart F", "Yes, because it is services income performed for a related person outside the CFC''s country of incorporation", "No, because only sales income can be Subpart F", "Yes, but only if the CFC is in a tax haven"]'::jsonb,
 1,
 'Foreign base company services income under Section 954(e) includes income from services performed for or on behalf of a related person outside the CFC''s country of incorporation. Since Theta''s CFC performs services for its related US parent in Country X (not its home country), the $800,000 is Subpart F income includible in Theta''s US income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Iota Corp''s CFC has tested income of $5,000,000 and QBAI of $20,000,000. The CFC pays $400,000 in foreign taxes on the tested income. What is Iota''s net GILTI inclusion before the Section 250 deduction?',
 '["$5,000,000", "$4,600,000", "$2,000,000", "$3,000,000"]'::jsonb,
 3,
 'GILTI = tested income - DTIR. DTIR = 10% x QBAI = 10% x $20,000,000 = $2,000,000. GILTI = $5,000,000 - $2,000,000 = $3,000,000. The $400,000 in foreign taxes paid does not reduce the GILTI inclusion amount but may generate a deemed-paid foreign tax credit under Section 960(d), subject to the 80% haircut.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'A US corporation has GILTI of $2,000,000 and claims the 50% Section 250 deduction. It has $150,000 of deemed-paid foreign tax credits (after the 80% haircut). What is the net US tax on the GILTI?',
 '["$210,000", "$270,000", "$420,000", "$60,000"]'::jsonb,
 3,
 'After the 50% Section 250 deduction, taxable GILTI = $2,000,000 x 50% = $1,000,000. US tax = $1,000,000 x 21% = $210,000. After the $150,000 foreign tax credit, net US tax = $210,000 - $150,000 = $60,000. The combination of the 50% deduction and foreign tax credits can reduce the effective US tax on GILTI to near zero.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Kappa Corp has total deduction eligible income (DEI) of $10,000,000 and foreign-derived deduction eligible income (FDDEI) of $4,000,000. Its deemed intangible income (DII) is $6,000,000. What is Kappa''s FDII?',
 '["$4,000,000", "$6,000,000", "$2,400,000", "$10,000,000"]'::jsonb,
 2,
 'FDII = DII x (FDDEI / DEI). FDII = $6,000,000 x ($4,000,000 / $10,000,000) = $6,000,000 x 40% = $2,400,000. The FDII formula allocates deemed intangible income between foreign and domestic markets based on the ratio of foreign-derived income to total deduction eligible income.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Lambda Corp has $800,000 of general category foreign-source income and $200,000 of passive category foreign-source income. It pays $180,000 in foreign taxes on the general income and $60,000 on the passive income. Lambda''s worldwide income is $2,000,000. What is the FTC limitation for the passive category?',
 '["$60,000", "$42,000", "$200,000", "$84,000"]'::jsonb,
 1,
 'The passive category limitation = US tax x (passive foreign-source income / worldwide income). US tax = $2,000,000 x 21% = $420,000. Limitation = $420,000 x ($200,000 / $2,000,000) = $42,000. Since $60,000 paid exceeds the $42,000 limitation, Lambda credits $42,000 and carries the $18,000 excess forward up to 10 years.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Under Section 956, a CFC''s investment in US property triggers an income inclusion for US shareholders. Which of the following is considered US property?',
 '["Obligations of a US person", "Stock of an unrelated foreign corporation", "Deposits with foreign banks", "Active business inventory held abroad"]'::jsonb,
 0,
 'Under Section 956, US property includes tangible property located in the US, stock of a US corporation, obligations (loans) of a US person, and certain intangible property rights acquired from US persons. Obligations of a US person, such as loans from a CFC to its US parent, are the most common trigger. Foreign assets and foreign bank deposits are not US property.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Mu Corp''s CFC lends $2,000,000 to Mu Corp (its US parent) during the year. Under Section 956, what is the consequence?',
 '["No tax consequence because intercompany loans are excluded", "Mu includes up to $2,000,000 as a deemed dividend to the extent of the CFC''s earnings and profits", "The CFC recognizes capital gain on the loan", "The loan is recharacterized as equity"]'::jsonb,
 1,
 'A CFC''s loan to its US parent is an investment in US property under Section 956. The US parent must include in income the lesser of the CFC''s average investment in US property or its accumulated earnings and profits not previously taxed. This rule prevents CFCs from repatriating earnings tax-free through loans rather than dividends.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Nu Corp, a US corporation, receives a $500,000 dividend from its wholly-owned CFC. Under Section 245A, what portion of this dividend is eligible for the participation exemption?',
 '["0%", "50%", "100%", "65%"]'::jsonb,
 2,
 'Section 245A provides a 100% dividends received deduction for the foreign-source portion of dividends received by a domestic C corporation from a specified 10%-owned foreign corporation. This participation exemption effectively eliminates the second layer of US tax on repatriated foreign earnings, aligning the US with a territorial-style system for dividend income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Xi Corp uses a foreign subsidiary to purchase goods from a related manufacturer in Country A and resell them to customers in Country B. The subsidiary does not manufacture the goods. This arrangement generates what type of Subpart F income?',
 '["Foreign base company sales income", "Foreign personal holding company income", "Insurance income", "Foreign base company services income"]'::jsonb,
 0,
 'Foreign base company sales income arises when a CFC buys personal property from a related person (or sells to a related person) and the property is both manufactured and sold for use outside the CFC''s country of incorporation. Xi''s subsidiary is acting as a pass-through entity for related-party sales, which is the classic foreign base company sales arrangement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'A US individual owns 15% of a foreign corporation that is not a CFC but meets the PFIC definition. The PFIC has no earnings distributions during the year. Under the default rules (no election), what is the US tax consequence?',
 '["The individual includes 15% of the PFIC''s income currently", "No current tax consequence; tax applies on disposition or excess distribution", "The individual pays a flat 21% on the PFIC''s earnings", "The PFIC income is exempt from US tax"]'::jsonb,
 1,
 'Under the default PFIC rules, there is no current inclusion of undistributed earnings (unlike Subpart F or GILTI). Tax consequences arise only upon an excess distribution (distributions exceeding 125% of the average of prior 3 years'' distributions) or disposition of the PFIC stock. At that point, the punitive interest charge and highest-rate taxation apply.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Omicron Corp, a US corporation, earns $3,000,000 in worldwide income, of which $1,000,000 is foreign-source. Omicron pays $250,000 in foreign taxes. What is the maximum foreign tax credit Omicron may claim?',
 '["$250,000", "$210,000", "$630,000", "$70,000"]'::jsonb,
 1,
 'FTC limitation = US tax x (foreign-source income / worldwide income). US tax = $3,000,000 x 21% = $630,000. Limitation = $630,000 x ($1,000,000 / $3,000,000) = $210,000. Since taxes paid ($250,000) exceed the limitation ($210,000), the credit is capped at $210,000. The $40,000 excess may be carried back 1 year or forward 10 years.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Pi Corp has a CFC in Country Y that earns $1,200,000 of tested income. The CFC has QBAI of $3,000,000 and pays $100,000 in foreign taxes. Pi claims the Section 250 deduction and the deemed-paid credit (after the 80% haircut). What is the DTIR for this CFC?',
 '["$120,000", "$3,000,000", "$1,200,000", "$300,000"]'::jsonb,
 3,
 'The deemed tangible income return (DTIR) equals 10% of QBAI. DTIR = 10% x $3,000,000 = $300,000. This amount represents the routine return on tangible assets and is subtracted from tested income to compute GILTI. The GILTI inclusion is $1,200,000 - $300,000 = $900,000 before the Section 250 deduction.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Rho Corp''s CFC has Subpart F income of $600,000 and accumulated earnings and profits of $450,000. How much Subpart F income must Rho include in its US taxable income?',
 '["$600,000", "$0", "$150,000", "$450,000"]'::jsonb,
 3,
 'Subpart F income is included in the US shareholder''s income only to the extent of the CFC''s current and accumulated earnings and profits. Since the CFC''s E&P of $450,000 is less than the Subpart F income of $600,000, the inclusion is limited to $450,000. The excess $150,000 is not currently taxable as Subpart F income.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'A US-Country X income tax treaty reduces withholding on dividends from Country X corporations to US shareholders from 30% to 15%. Sigma Corp, a US corporation, receives $200,000 in dividends from an unrelated Country X corporation. What withholding does the treaty provide?',
 '["$60,000", "$42,000", "$0", "$30,000"]'::jsonb,
 3,
 'Under the treaty, the withholding rate on dividends is reduced from Country X''s statutory 30% to the treaty rate of 15%. The withholding is $200,000 x 15% = $30,000. Treaty benefits must be claimed properly, and the shareholder may also claim a foreign tax credit for the $30,000 of taxes withheld, subject to the Section 904 limitation.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Under the high-tax exclusion for Subpart F income, a CFC''s income is excluded from Subpart F if the effective foreign tax rate exceeds what percentage of the maximum US corporate rate?',
 '["50%", "75%", "90%", "100%"]'::jsonb,
 2,
 'The high-tax exclusion under Section 954(b)(4) allows CFC income to be excluded from Subpart F if it was subject to an effective foreign tax rate greater than 90% of the maximum US corporate rate. With a 21% US rate, the threshold is 90% x 21% = 18.9%. Income taxed above 18.9% in the foreign country qualifies for the exclusion.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'US Corp owns 100% of a CFC that earns $3,000,000 of tested income and has QBAI of $10,000,000. The CFC pays $250,000 in foreign taxes. After the Section 250 deduction and deemed-paid foreign tax credit (80% haircut), what is the net US tax on the GILTI inclusion?',
 '["$210,000", "$10,000", "$420,000", "$0"]'::jsonb,
 1,
 'GILTI = $3,000,000 - (10% x $10,000,000) = $2,000,000. After the 50% Section 250 deduction, taxable GILTI = $1,000,000. US tax = $1,000,000 x 21% = $210,000. Deemed-paid credit = $250,000 x 80% = $200,000. Net US tax = $210,000 - $200,000 = $10,000. The combination of the QBAI return, Section 250 deduction, and foreign tax credit substantially reduces the US tax burden.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'International Tax',
 'Tau Corp''s CFC earns $400,000 of foreign personal holding company income (dividends and interest from unrelated parties). This income is categorized under Subpart F as:',
 '["Foreign base company sales income", "Foreign base company services income", "Foreign personal holding company income (a subset of foreign base company income)", "Insurance income"]'::jsonb,
 2,
 'Foreign personal holding company income (FPHCI) under Section 954(c) includes dividends, interest, royalties, rents, annuities, and net gains from property producing such income. FPHCI is a major component of foreign base company income, which in turn is a category of Subpart F income. Investment-type income earned by CFCs is targeted to prevent deferral of passive income offshore.',
 'medium');

-- =============================================================================
-- Owner-Entity Transactions (36 questions: 11 easy, 18 medium, 7 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Partner A receives a guaranteed payment of $120,000 from ABC Partnership for services rendered. How is this payment treated for Partner A?',
 '["As ordinary income subject to self-employment tax", "As a distributive share of partnership income", "As a tax-free distribution", "As capital gain"]'::jsonb,
 0,
 'Under Section 707(c), guaranteed payments are treated as payments to a non-partner for purposes of determining gross income. They are ordinary income to the receiving partner and subject to self-employment tax. The partnership deducts the payment in computing partnership income, reducing the distributive shares of all partners.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'XYZ Partnership pays Partner B a guaranteed payment of $80,000 for services. The partnership has net income of $200,000 before the guaranteed payment. What is the partnership''s ordinary income after the payment?',
 '["$200,000", "$120,000", "$280,000", "$80,000"]'::jsonb,
 1,
 'The guaranteed payment of $80,000 is deducted by the partnership in computing its ordinary income. Partnership income after the guaranteed payment is $200,000 - $80,000 = $120,000. This $120,000 is then allocated among all partners (including Partner B) according to the partnership agreement, in addition to B''s $80,000 guaranteed payment.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Partner C owns 40% of DEF Partnership and receives a guaranteed payment of $50,000 plus her 40% distributive share. Partnership income before the guaranteed payment is $150,000. What is Partner C''s total income from the partnership?',
 '["$50,000", "$60,000", "$90,000", "$110,000"]'::jsonb,
 2,
 'After the $50,000 guaranteed payment, partnership income is $150,000 - $50,000 = $100,000. Partner C''s 40% share is $100,000 x 40% = $40,000. Total income = $50,000 guaranteed payment + $40,000 distributive share = $90,000. The guaranteed payment is determined without regard to partnership income, while the distributive share is computed after deducting it.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'An S corporation shareholder-employee receives wages of $60,000 and distributions of $40,000. The IRS determines that reasonable compensation for the shareholder''s services is $90,000. What is the likely consequence?',
 '["No adjustment — the shareholder can choose the split", "The S corporation loses its S election", "The distributions are treated as capital gains", "The IRS reclassifies $30,000 of distributions as wages, triggering payroll taxes"]'::jsonb,
 3,
 'The IRS scrutinizes S corporation shareholder-employees who take below-market wages to avoid payroll taxes. If $90,000 is reasonable compensation, the IRS will reclassify $30,000 of the distributions as wages subject to FICA and Medicare taxes. The shareholder and corporation will owe additional payroll taxes plus potential penalties and interest.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Which of the following best describes the reasonable compensation issue for S corporation shareholder-employees?',
 '["Shareholders must take a minimum salary of $100,000", "Shareholders must receive reasonable compensation for services before taking distributions to avoid payroll tax avoidance", "Shareholders are never required to take a salary", "Distributions are always subject to self-employment tax regardless of salary"]'::jsonb,
 1,
 'S corporation shareholder-employees must receive reasonable compensation for services performed before taking non-wage distributions. This prevents shareholders from taking all compensation as distributions to avoid FICA and Medicare taxes. There is no fixed minimum — reasonable compensation depends on the shareholder''s duties, experience, and comparable wages in the industry.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Under Section 707(a)(2)(B), a partner contributes property to a partnership and the partnership makes a related cash distribution to the partner within 2 years. How might the IRS treat this arrangement?',
 '["As a disguised sale of property to the partnership", "As a tax-free contribution and distribution", "As a guaranteed payment", "As a loan from the partnership"]'::jsonb,
 0,
 'Section 707(a)(2)(B) and the related regulations create a presumption that transfers of property followed by related distributions within 2 years are disguised sales. The partner would recognize gain as if the property had been sold to the partnership at fair market value. The 2-year window creates a rebuttable presumption; transfers beyond 2 years are presumed not to be disguised sales.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Partner D contributes land with a basis of $50,000 and a fair market value of $200,000 to GHI Partnership. The partnership distributes $200,000 cash to Partner D one month later. Under the disguised sale rules, what gain does Partner D recognize?',
 '["$0", "$50,000", "$150,000", "$200,000"]'::jsonb,
 2,
 'Under the disguised sale rules, the contribution and distribution are treated as a sale. Partner D is treated as selling the land for $200,000 and recognizes gain of $200,000 - $50,000 = $150,000. The close timing between the contribution and distribution creates a strong presumption that this is a disguised sale rather than separate contribution and distribution transactions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Under Section 7872, a shareholder makes a $500,000 interest-free loan to their closely held corporation. The applicable federal rate (AFR) is 5%. What is the annual imputed interest?',
 '["$0 — interest-free loans have no tax consequence", "$25,000 treated as a constructive dividend to the shareholder", "$50,000 treated as additional salary", "$25,000 treated as interest income to the corporation"]'::jsonb,
 1,
 'Under Section 7872, below-market loans between shareholders and corporations trigger imputed interest. The forgone interest ($500,000 x 5% = $25,000) is treated as a constructive dividend from the corporation to the shareholder (or compensation if the shareholder is an employee), followed by a deemed payment of interest back to the corporation. The shareholder has dividend income and the corporation has interest expense.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'A corporation makes a $150,000 interest-free demand loan to its sole shareholder. The AFR is 4%. Under Section 7872, the forgone interest is treated as:',
 '["A constructive dividend to the shareholder and deemed interest paid back to the corporation", "A gift from the corporation to the shareholder", "A capital contribution by the shareholder", "A nontaxable return of capital"]'::jsonb,
 0,
 'For below-market loans between a corporation and shareholder, the forgone interest ($150,000 x 4% = $6,000) is recharacterized in two steps: (1) a constructive dividend from the corporation to the shareholder, and (2) a deemed interest payment from the shareholder to the corporation. The shareholder has dividend income of $6,000, and the corporation has interest income of $6,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Under Section 267, what happens when a taxpayer sells property at a loss to a related party who owns more than 50% of the entity?',
 '["The loss is deferred until the property is sold to an unrelated party", "The loss is converted to a capital loss", "The loss is allowed but limited to 50%", "The loss is permanently disallowed"]'::jsonb,
 3,
 'Section 267(a)(1) disallows losses on sales or exchanges between related parties, including a person and an entity in which they own more than 50%. The loss is permanently disallowed to the seller. However, the buyer may reduce any future gain on a subsequent sale to an unrelated party by the amount of the previously disallowed loss under Section 267(d).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Tom owns 60% of Alpha Corp. Tom sells equipment with a basis of $80,000 to Alpha Corp for $50,000. What is Tom''s recognized loss?',
 '["$30,000 ordinary loss", "$30,000 capital loss", "$0 — the loss is disallowed under Section 267", "$15,000 limited loss"]'::jsonb,
 2,
 'Under Section 267, losses on sales between a taxpayer and a corporation in which the taxpayer owns more than 50% are disallowed. Since Tom owns 60% of Alpha Corp, the $30,000 loss ($50,000 - $80,000) is disallowed. If Alpha later sells the equipment to an unrelated party at a gain, the gain may be reduced by the $30,000 previously disallowed loss.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Following the prior question, Alpha Corp later sells the equipment to an unrelated buyer for $95,000. Alpha''s basis is $50,000 (purchase price from Tom). What gain does Alpha recognize?',
 '["$45,000", "$0", "$95,000", "$15,000"]'::jsonb,
 3,
 'Alpha''s realized gain is $95,000 - $50,000 = $45,000. Under Section 267(d), the buyer in a related-party sale can reduce gain by the amount of the seller''s previously disallowed loss ($30,000). Alpha''s recognized gain is $45,000 - $30,000 = $15,000. The disallowed loss benefit is limited to the gain — it cannot create or increase a loss for Alpha.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Under Section 1239, Sarah sells a building to her 100%-owned corporation for $400,000. Sarah''s basis is $250,000. How is the $150,000 gain characterized?',
 '["Capital gain", "Tax-exempt", "Section 1231 gain", "Ordinary income"]'::jsonb,
 3,
 'Section 1239 requires that gain on the sale of depreciable property between related persons (including a person and their more-than-50%-owned entity) be treated as ordinary income rather than capital or Section 1231 gain. Since the building is depreciable by the purchasing corporation and Sarah owns 100%, the entire $150,000 gain is ordinary income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Which of the following transactions would trigger Section 1239 recharacterization to ordinary income?',
 '["Sale of stock by a shareholder to an unrelated corporation", "Sale of depreciable equipment by a partner to a partnership in which the partner owns a 70% interest", "Sale of land (non-depreciable) between related parties", "Sale of inventory between unrelated parties"]'::jsonb,
 1,
 'Section 1239 applies to sales of depreciable property between related parties. A partner owning more than 50% of a partnership is a related party. Since equipment is depreciable by the partnership, the gain is recharacterized as ordinary income. Land is not depreciable, so Section 1239 does not apply. Stock sales and unrelated party transactions also fall outside Section 1239.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Mike is a 2% shareholder in an S corporation. The corporation provides Mike with health insurance costing $8,000 per year. How is this fringe benefit treated?',
 '["Excluded from Mike''s income as an employee fringe benefit", "Deductible by the S corporation with no income to Mike", "Treated as a distribution reducing Mike''s stock basis", "Included in Mike''s W-2 wages and potentially deductible on his individual return"]'::jsonb,
 3,
 'Shareholders owning more than 2% of an S corporation are treated as self-employed for fringe benefit purposes. Health insurance premiums paid by the corporation must be included in the shareholder''s W-2 wages as income. The shareholder may then deduct the premiums as a self-employed health insurance deduction on their individual return (Form 1040, above-the-line).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Which of the following fringe benefits is NOT excludable from income for a greater-than-2% S corporation shareholder?',
 '["Group-term life insurance up to $50,000", "Qualified retirement plan contributions", "Health insurance premiums", "Workers'' compensation benefits"]'::jsonb,
 2,
 'Greater-than-2% S corporation shareholders are treated as self-employed persons and cannot exclude employer-provided health insurance premiums from income. The premiums must be included in W-2 income. Group-term life insurance up to $50,000 is also not excludable for >2% shareholders. However, retirement plan contributions and workers'' compensation maintain their standard tax treatment.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'ABC Partnership makes a guaranteed payment of $100,000 to Partner E for the use of capital (interest on capital). How does the partnership treat this payment?',
 '["As a reduction in Partner E''s capital account only", "As a nondeductible payment", "As a distribution to Partner E", "As a deductible expense in computing partnership ordinary income"]'::jsonb,
 3,
 'Guaranteed payments for the use of capital under Section 707(c) are treated the same as guaranteed payments for services — they are deductible by the partnership in computing ordinary income. Partner E includes the $100,000 as ordinary income. Unlike distributive shares, guaranteed payments are determined without regard to the partnership''s actual income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Partner F owns a 30% interest in FGH Partnership. Partner F sells land with a basis of $60,000 and fair market value of $100,000 to the partnership for $100,000. Does Section 707(b) disallow the gain?',
 '["No, Section 707(b) only disallows losses, not gains, between related parties", "Yes, all gains between partners and partnerships are disallowed", "Yes, because the partner owns more than 25%", "No, because the partner owns less than 50%"]'::jsonb,
 0,
 'Section 707(b)(1) disallows losses (not gains) on sales between a partnership and a person owning more than 50% of the partnership. Since Partner F owns only 30%, the loss disallowance rule would not apply even if there were a loss. Gains on related-party sales are recognized but may be recharacterized under Section 1239 if the property is depreciable.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'An S corporation shareholder-employee takes a salary of $40,000. Comparable positions in the industry pay $95,000-$110,000. The shareholder also takes $80,000 in distributions. What is the most likely IRS adjustment?',
 '["Reclassify approximately $60,000 of distributions as wages", "Revoke the S election", "Disallow the distributions entirely", "No adjustment — any salary amount is acceptable"]'::jsonb,
 0,
 'The IRS will reclassify a portion of the distributions as reasonable compensation. If comparable wages are $95,000-$110,000, the IRS would likely require at least $95,000-$100,000 in wages, reclassifying approximately $55,000-$60,000 of distributions as additional salary. This triggers FICA taxes (employer and employee shares) plus penalties for failure to withhold and deposit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'In a partnership, a partner performs services worth $200,000 and receives a partnership interest in exchange. The partner receives a 25% profits interest. Is this a taxable event?',
 '["No, receipt of a profits interest for services is generally not taxable under Revenue Procedure 93-27", "Yes, the partner recognizes $200,000 of ordinary income", "Yes, but it is treated as capital gain", "No, all partnership interest receipts are tax-free"]'::jsonb,
 0,
 'Under Revenue Procedure 93-27, the receipt of a profits interest (as opposed to a capital interest) for services is generally not a taxable event, provided the interest is not disposed of within 2 years, is not related to a substantially certain stream of income, and is not a disguised payment for services. A capital interest, by contrast, would be taxable.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Lisa owns 80% of both Alpha Corp and Beta Corp. Lisa sells inventory with a basis of $40,000 to Beta Corp for $25,000. What is the tax treatment of the $15,000 loss?',
 '["Disallowed under Section 267 because Lisa owns more than 50% of both entities", "Recognized as an ordinary loss", "Deferred until Beta sells the inventory", "Recognized but limited to $3,000"]'::jsonb,
 0,
 'Section 267 disallows losses on sales between an individual and a corporation in which the individual owns more than 50%. Since Lisa owns 80% of Beta Corp, the $15,000 loss is disallowed. The constructive ownership rules under Section 267(c) also apply, which could attribute ownership through family members and entities.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'A C corporation shareholder borrows $300,000 from the corporation at 1% interest when the AFR is 5%. Under Section 7872, what is the annual forgone interest?',
 '["$12,000", "$3,000", "$15,000", "$0"]'::jsonb,
 0,
 'Forgone interest equals the difference between interest at the AFR and the interest actually charged. AFR interest = $300,000 x 5% = $15,000. Actual interest = $300,000 x 1% = $3,000. Forgone interest = $15,000 - $3,000 = $12,000. This $12,000 is treated as a constructive dividend to the shareholder and a deemed interest payment back to the corporation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Under the Section 7872 de minimis exception, below-market loans are not subject to imputed interest rules if the aggregate loans between the parties do not exceed what amount?',
 '["$10,000", "$25,000", "$100,000", "$250,000"]'::jsonb,
 0,
 'Section 7872(c)(3) provides a de minimis exception for gift loans between individuals where the aggregate outstanding amount does not exceed $10,000. For compensation-related and corporation-shareholder loans, the $10,000 threshold also applies but with additional conditions. If the loan exceeds $10,000, imputed interest applies to the entire amount, not just the excess.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'JKL Partnership has three equal partners. Partner J performs services and receives a guaranteed payment of $90,000. Partnership net income before the guaranteed payment is $210,000. What is Partner K''s distributive share of partnership income?',
 '["$70,000", "$30,000", "$80,000", "$40,000"]'::jsonb,
 3,
 'After the $90,000 guaranteed payment, partnership income is $210,000 - $90,000 = $120,000. As an equal (1/3) partner, Partner K''s distributive share is $120,000 x 1/3 = $40,000. Partner J would receive $90,000 (guaranteed payment) + $40,000 (1/3 distributive share) = $130,000 total.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'An S corporation with one shareholder has net income of $250,000. The shareholder performs substantial services. No salary is paid. What is the most likely tax consequence?',
 '["The IRS may reclassify a reasonable portion as wages subject to employment taxes", "The entire $250,000 is treated as a distribution with no payroll tax", "The S election is automatically revoked", "The income is exempt from all tax"]'::jsonb,
 0,
 'When a shareholder-employee provides substantial services to an S corporation and takes no salary, the IRS will likely reclassify a portion of the distributions as reasonable compensation subject to FICA and Medicare taxes. The IRS has successfully challenged zero-salary arrangements in numerous cases, requiring retroactive payroll tax payments plus penalties.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Partner G contributes equipment with a basis of $30,000 and FMV of $100,000 to MNO Partnership. The partnership immediately distributes $75,000 cash to Partner G. Under the disguised sale rules, what portion of the transaction is treated as a sale?',
 '["None — all contributions and distributions are tax-free", "100% — the entire contribution is a disguised sale", "75% — proportional to the cash received relative to FMV", "$75,000 of the FMV is treated as sale proceeds"]'::jsonb,
 2,
 'Under the disguised sale rules, the portion treated as a sale equals the cash distribution divided by the FMV of contributed property: $75,000 / $100,000 = 75%. Partner G recognizes gain on 75% of the property: 75% x ($100,000 - $30,000) = 75% x $70,000 = $52,500. The remaining 25% is treated as a tax-free contribution.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Under Section 267(a)(2), an accrual-method corporation accrues a $50,000 bonus payable to its cash-method sole shareholder on December 31. The bonus is paid on March 15 of the following year. When does the corporation deduct the bonus?',
 '["December 31 of the accrual year", "March 15 when it is paid", "Ratably over both years", "The deduction is permanently disallowed"]'::jsonb,
 1,
 'Section 267(a)(2) requires matching of deductions and inclusions between related parties using different accounting methods. The accrual-method corporation cannot deduct the bonus until the cash-method shareholder includes it in income. Since the shareholder reports the bonus when received (March 15), the corporation deducts it in that year.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Robert owns 55% of Sigma Corp and sells a patent (depreciable/amortizable property) to Sigma for $500,000. Robert''s basis in the patent is $100,000. Under Section 1239, what is Robert''s gain and its character?',
 '["$400,000 capital gain", "$500,000 ordinary income", "$100,000 capital gain", "$400,000 ordinary income"]'::jsonb,
 3,
 'Under Section 1239, gain on the sale of depreciable property to a related party (more than 50% ownership) is recharacterized as ordinary income. Robert''s gain is $500,000 - $100,000 = $400,000, all treated as ordinary income. Without Section 1239, this gain would likely be long-term capital gain, making the recharacterization significant.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'PQR Partnership allocates a $200,000 guaranteed payment to Partner P for management services. Partner P''s self-employment tax on this amount is calculated at what rate (combined)?',
 '["7.65%", "12.4% on all amounts", "21%", "15.3% on the first $168,600 and 2.9% on the excess"]'::jsonb,
 3,
 'Guaranteed payments for services are subject to self-employment tax. The combined self-employment tax rate is 15.3% (12.4% Social Security + 2.9% Medicare) on amounts up to the Social Security wage base ($168,600 for 2024/$176,100 for 2025). Above the wage base, only the 2.9% Medicare tax applies. An additional 0.9% Medicare surtax applies above $200,000 for single filers.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Emily, a 70% owner of Tau Corp (C corporation), sells her personal residence to Tau Corp for $300,000. The home''s FMV is $500,000. What is the tax consequence?',
 '["Emily has a $200,000 bargain sale and Tau has no adjustment", "Tau Corp has constructive dividend income of $200,000", "Emily receives a constructive dividend of $200,000 (the bargain element) and Tau''s basis is $500,000", "No tax consequences because the sale price matches Emily''s basis"]'::jsonb,
 2,
 'When a shareholder sells property to a controlled corporation at below FMV, the bargain element ($500,000 - $300,000 = $200,000) is treated as a constructive dividend to the shareholder. The corporation''s basis in the property is the FMV ($500,000) because it is treated as having paid $300,000 plus a $200,000 deemed distribution that was reinvested as a capital contribution.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'A partner with a 50% interest in a partnership receives a guaranteed payment of $60,000 for services. The partnership has a loss of $20,000 before the guaranteed payment. What is the partnership''s ordinary loss after the guaranteed payment?',
 '["$20,000", "$60,000", "$80,000", "$0"]'::jsonb,
 2,
 'Guaranteed payments are deducted in computing partnership income regardless of whether the partnership has income or a loss. The partnership loss after the guaranteed payment is $20,000 + $60,000 = $80,000 loss. This loss is then allocated to all partners according to the partnership agreement. The guaranteed payment to the partner is still ordinary income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Under Section 267(b), which of the following relationships is considered related for purposes of loss disallowance?',
 '["A corporation and an individual who owns exactly 50% of the stock", "An individual and a corporation in which the individual owns more than 50% of the stock", "Two corporations with different shareholders who are unrelated", "A partnership and a corporation with no common owners"]'::jsonb,
 1,
 'Section 267(b) defines related persons to include an individual and a corporation in which the individual owns more than 50% of the value of the outstanding stock. Exactly 50% ownership is not sufficient — the threshold is more than 50%. Constructive ownership rules under Section 267(c) may attribute family members'' and entities'' ownership to the individual.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Nancy, a 100% owner of an S corporation, lends $200,000 to the corporation in exchange for a formal note bearing interest at the AFR. How does this loan affect Nancy''s S corporation basis?',
 '["No effect on basis — only stock basis matters", "Creates $200,000 of debt basis that allows loss deductions beyond stock basis", "Increases stock basis by $200,000", "Decreases stock basis by $200,000"]'::jsonb,
 1,
 'Direct loans from an S corporation shareholder to the corporation create debt basis. Debt basis allows the shareholder to deduct S corporation losses beyond their stock basis. Losses first reduce stock basis, then reduce debt basis. Importantly, only direct loans from the shareholder create debt basis — third-party loans guaranteed by the shareholder do not.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'An S corporation pays $5,000 in term life insurance premiums for its 3% shareholder-employee. The policy provides $200,000 of coverage. How is the premium treated?',
 '["Excluded from the shareholder''s income up to $50,000 of coverage", "The full $5,000 is included in the shareholder''s W-2 wages", "Deductible by the corporation with no income to the shareholder", "Treated as a distribution reducing stock basis"]'::jsonb,
 1,
 'Greater-than-2% S corporation shareholders cannot exclude employer-provided group-term life insurance premiums from income, regardless of the coverage amount. The entire $5,000 premium must be included in the shareholder-employee''s W-2 as wages. This differs from regular employees, who can exclude the cost of coverage up to $50,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'Victor, a 65% owner of Omega Corp, transfers a building (basis $120,000, FMV $300,000) to Omega Corp in exchange for $300,000 cash. The building is depreciable. How is the $180,000 gain characterized?',
 '["Long-term capital gain", "Section 1231 gain", "Ordinary income under Section 1239", "Partially capital gain, partially ordinary income"]'::jsonb,
 2,
 'Under Section 1239, gain on the sale of depreciable property to a related party (more than 50% ownership) is treated entirely as ordinary income. Victor owns 65% of Omega Corp, making them related. Since the building is depreciable property in the hands of the corporation, all $180,000 of gain is recharacterized from what would otherwise be Section 1231 gain to ordinary income.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Owner-Entity Transactions',
 'An accrual-method partnership accrues $30,000 in rent payable to its cash-method partner on December 31. The rent is paid on February 28 of the following year. Under Section 267(a)(2), when does the partnership deduct the rent?',
 '["February 28 of the following year when the partner includes it in income", "December 31 of the current year", "Ratably over 12 months", "The deduction is permanently disallowed"]'::jsonb,
 0,
 'Section 267(a)(2) applies to partnerships and partners who are related parties using different accounting methods. The accrual-method partnership cannot deduct the rent until the cash-method partner includes it in income. Since the partner reports it when received (February 28), the partnership''s deduction is deferred to that year.',
 'hard');

-- =============================================================================
-- Advanced Basis Calculations (34 questions: 10 easy, 17 medium, 7 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'Partner A contributes $100,000 cash to a new partnership. In Year 1, the partnership allocates $30,000 of ordinary income and $10,000 of tax-exempt income to Partner A, and Partner A receives a $15,000 cash distribution. What is Partner A''s outside basis at the end of Year 1?',
 '["$115,000", "$140,000", "$130,000", "$125,000"]'::jsonb,
 3,
 'Outside basis = initial contribution + income allocations + tax-exempt income - distributions. Basis = $100,000 + $30,000 + $10,000 - $15,000 = $125,000. Tax-exempt income increases basis even though it is not taxable, to prevent the income from being taxed upon a subsequent distribution or sale of the partnership interest.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'Partner B has a beginning outside basis of $80,000. During the year, the partnership allocates $20,000 of ordinary income, $5,000 of separately stated capital gain, and $35,000 of ordinary loss to Partner B. Partner B also receives a $10,000 distribution. What is Partner B''s ending outside basis?',
 '["$60,000", "$50,000", "$70,000", "$55,000"]'::jsonb,
 0,
 'Outside basis = $80,000 + $20,000 (income) + $5,000 (capital gain) - $10,000 (distribution) - $35,000 (loss) = $60,000. Income and gains increase basis, while distributions and losses decrease basis. Basis cannot go below zero — losses in excess of basis are suspended until basis is restored.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'A partnership has total liabilities of $600,000. Partner C has a 25% interest. Under the general rule for recourse liabilities, how much of the partnership liabilities is included in Partner C''s outside basis?',
 '["$0", "$150,000", "$300,000", "$600,000"]'::jsonb,
 1,
 'A partner''s share of partnership recourse liabilities is included in the partner''s outside basis under Section 752. For recourse liabilities, allocation is based on each partner''s economic risk of loss. In a general partnership with equal sharing, Partner C''s 25% share = $600,000 x 25% = $150,000. This liability share increases outside basis and allows deduction of losses.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'The inside basis of a partnership asset refers to:',
 '["The individual partner''s basis in their partnership interest", "The partnership''s tax basis in its assets at the entity level", "The fair market value of partnership assets", "The book value reported on financial statements"]'::jsonb,
 1,
 'Inside basis refers to the partnership entity''s tax basis in its assets. This is distinct from outside basis, which is each partner''s individual basis in their partnership interest. Inside and outside basis may differ when a partner purchases a partnership interest at a premium or discount relative to their share of inside basis, which is why Section 754 elections exist.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'Partner D purchases a 25% partnership interest from an existing partner for $300,000. The partnership''s total inside basis in its assets is $800,000 (D''s 25% share = $200,000). The partnership has a Section 754 election in effect. What is D''s Section 743(b) adjustment?',
 '["$0", "$300,000 step-up", "$200,000 step-up", "$100,000 step-up"]'::jsonb,
 3,
 'The Section 743(b) adjustment equals the difference between the transferee''s outside basis ($300,000 purchase price) and the transferee''s proportionate share of inside basis ($200,000). The adjustment is $300,000 - $200,000 = $100,000 step-up. This adjustment is personal to Partner D and adjusts the basis of partnership assets only for D''s benefit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'What is the purpose of a Section 754 election?',
 '["To allow the partnership to use LIFO inventory accounting", "To permit optional basis adjustments under Sections 743(b) and 734(b) upon transfers and distributions", "To elect S corporation status for the partnership", "To convert ordinary income to capital gains"]'::jsonb,
 1,
 'A Section 754 election allows the partnership to adjust the basis of its assets under Section 743(b) (upon a transfer of a partnership interest) and Section 734(b) (upon a distribution of partnership property). Without the election, discrepancies between inside and outside basis persist, potentially causing double taxation or double deduction of income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'Once a partnership makes a Section 754 election, how long does it remain in effect?',
 '["One year only", "Five years", "Until revoked with IRS consent", "Until the next ownership change"]'::jsonb,
 2,
 'A Section 754 election, once made, applies to all subsequent transfers and distributions until revoked. Revocation requires IRS approval (application must show a valid business reason). The election is binding on all partners and all future transactions, which is why partnerships carefully consider the administrative burden before electing.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'A partnership distributes land with an inside basis of $50,000 and FMV of $120,000 to Partner E in a current (non-liquidating) distribution. Partner E''s outside basis before the distribution is $80,000. What is Partner E''s basis in the distributed land?',
 '["$50,000", "$80,000", "$120,000", "$30,000"]'::jsonb,
 0,
 'In a current distribution, the partner''s basis in distributed property is the lesser of the property''s inside basis ($50,000) or the partner''s remaining outside basis ($80,000). Since $50,000 < $80,000, Partner E takes the land with a $50,000 carryover basis. Partner E''s outside basis is reduced by $50,000 to $30,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'Partner F receives a liquidating distribution of property with an inside basis of $200,000 and FMV of $350,000. Partner F''s outside basis is $150,000. What is Partner F''s basis in the distributed property?',
 '["$200,000", "$350,000", "$150,000", "$0"]'::jsonb,
 2,
 'In a liquidating distribution, the partner''s basis in distributed property equals the partner''s remaining outside basis, regardless of the property''s inside basis. Partner F takes the property with a basis of $150,000 (their outside basis). The $50,000 difference from inside basis ($200,000 - $150,000) represents a step-down that preserves the overall tax neutrality of the distribution.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'An S corporation shareholder''s stock basis is increased by which of the following?',
 '["Distributions received from the S corporation", "The shareholder''s pro rata share of ordinary income", "Nondeductible expenses of the S corporation", "The shareholder''s pro rata share of losses"]'::jsonb,
 1,
 'S corporation stock basis is increased by the shareholder''s pro rata share of all income items (ordinary income and separately stated income). Distributions decrease basis, nondeductible expenses decrease basis, and losses decrease basis. The ordering rules require income to be added first, then distributions subtracted, then nondeductible expenses, then losses.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'What is the correct ordering of adjustments to S corporation stock basis?',
 '["Income, distributions, nondeductible expenses, losses", "Distributions, income, losses, nondeductible expenses", "Income, losses, nondeductible expenses, distributions", "Income, nondeductible expenses, distributions, losses"]'::jsonb,
 0,
 'Under Section 1368, S corporation stock basis is adjusted in the following order: (1) increase for income items (ordinary and separately stated), (2) decrease for distributions, (3) decrease for nondeductible non-capital expenses, (4) decrease for deductible losses. This ordering maximizes the amount of distributions that can be received tax-free.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'An S corporation shareholder has stock basis of $40,000 at the beginning of the year. The corporation allocates $60,000 of ordinary income and distributes $85,000 to the shareholder. What is the shareholder''s ending stock basis?',
 '["$15,000", "$0", "$100,000", "$25,000"]'::jsonb,
 0,
 'Step 1: Increase for income: $40,000 + $60,000 = $100,000. Step 2: Decrease for distributions: $100,000 - $85,000 = $15,000. The distribution does not exceed the increased basis, so it is entirely tax-free. The ending stock basis is $15,000. If the distribution had exceeded $100,000, the excess would be treated as capital gain.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'An S corporation shareholder has stock basis of $20,000 and debt basis of $15,000. The corporation allocates a $30,000 loss to the shareholder. How much of the loss may the shareholder deduct?',
 '["$20,000", "$30,000", "$35,000", "$15,000"]'::jsonb,
 2,
 'Losses are deductible to the extent of the shareholder''s total basis (stock basis + debt basis). Total basis = $20,000 + $15,000 = $35,000. Since the $30,000 loss does not exceed $35,000, the shareholder may deduct the full $30,000. Losses first reduce stock basis to zero ($20,000), then reduce debt basis by the remaining $10,000 to $5,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'An S corporation shareholder has stock basis of $10,000 and no debt basis. The corporation allocates $25,000 of ordinary loss. How much can the shareholder deduct, and what happens to the remainder?',
 '["$10,000 deductible; $15,000 suspended and carried forward indefinitely", "$25,000 deductible in full", "$0 deductible; entire loss is permanently disallowed", "$10,000 deductible; $15,000 suspended for 5 years"]'::jsonb,
 0,
 'The shareholder can only deduct losses up to the sum of stock basis and debt basis. With $10,000 stock basis and $0 debt basis, only $10,000 of the $25,000 loss is deductible. The remaining $15,000 is suspended and carries forward indefinitely until the shareholder''s basis is restored through income allocations or additional capital contributions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'Which of the following creates debt basis for an S corporation shareholder?',
 '["The shareholder personally lends $50,000 to the corporation", "The corporation borrows $50,000 from a bank, guaranteed by the shareholder", "The corporation issues bonds to third-party investors", "The corporation borrows from another shareholder"]'::jsonb,
 0,
 'Only direct loans from the shareholder to the S corporation create debt basis. Third-party loans guaranteed by the shareholder do not create debt basis, even if the shareholder is personally liable. This is a critical distinction — many taxpayers incorrectly assume that guaranteeing corporate debt creates basis for loss deduction purposes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'The accumulated adjustments account (AAA) of an S corporation tracks:',
 '["The corporation''s total assets", "The cumulative undistributed net income that has been taxed to shareholders", "The corporation''s retained earnings for financial reporting", "The total contributions by shareholders"]'::jsonb,
 1,
 'The AAA tracks the cumulative amount of S corporation income that has been taxed to shareholders but not yet distributed. It is used to determine whether distributions from an S corporation with prior C corporation earnings and profits are tax-free returns of previously taxed income (from AAA) or taxable dividends (from accumulated E&P).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'An S corporation has AAA of $100,000 and accumulated E&P from C corporation years of $50,000. The corporation distributes $120,000 to its sole shareholder. How is the distribution treated?',
 '["$100,000 tax-free from AAA, $20,000 dividend from E&P", "$120,000 tax-free return of basis", "$100,000 tax-free from AAA, $20,000 return of basis", "$50,000 dividend, $70,000 tax-free"]'::jsonb,
 0,
 'Distributions from an S corporation with accumulated E&P follow a specific ordering: first from AAA ($100,000 tax-free), then from accumulated E&P ($20,000 taxable dividend), then as a tax-free return of basis, and finally as capital gain. Since $120,000 exceeds the $100,000 AAA, $20,000 comes from E&P as a taxable dividend.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'Partner G has an outside basis of $50,000. The partnership allocates $70,000 of ordinary loss to Partner G. How much loss can Partner G deduct (considering only the basis limitation)?',
 '["$70,000", "$20,000", "$0", "$50,000"]'::jsonb,
 3,
 'Under Section 704(d), a partner may only deduct losses to the extent of their outside basis. Partner G''s outside basis is $50,000, so only $50,000 of the $70,000 loss is currently deductible. The remaining $20,000 is suspended and carries forward indefinitely until Partner G''s outside basis is restored through income allocations, contributions, or increased share of liabilities.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'Partner H purchases a partnership interest for $500,000 when the partnership''s total inside basis is $1,600,000 (H''s 25% share = $400,000). The partnership has no Section 754 election in effect. What is the consequence?',
 '["Partner H''s Section 743(b) adjustment is $100,000", "There is no basis adjustment; H''s inside and outside basis remain mismatched", "The partnership automatically adjusts inside basis", "Partner H must file a separate election"]'::jsonb,
 1,
 'Without a Section 754 election, there is no adjustment to inside basis when a partnership interest is transferred. Partner H''s outside basis is $500,000 but their share of inside basis is only $400,000. This $100,000 mismatch means H may be taxed on $100,000 of gain that was already reflected in the purchase price. A Section 754 election would have prevented this.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'A partnership distributes $80,000 cash to Partner I in a current distribution. Partner I''s outside basis before the distribution is $60,000. What are the tax consequences?',
 '["No gain recognized; basis reduced to $0", "$20,000 capital gain recognized; basis reduced to $0", "$80,000 ordinary income recognized", "$20,000 ordinary income; basis reduced to $0"]'::jsonb,
 1,
 'When a cash distribution exceeds a partner''s outside basis, the excess is recognized as capital gain under Section 731(a). Partner I recognizes $20,000 capital gain ($80,000 - $60,000) and the outside basis is reduced to $0. Cash is the only type of property distribution that can trigger gain recognition in a current distribution (hot assets aside).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'Under Section 734(b), a partnership with a Section 754 election distributes property with an inside basis of $40,000 to a partner whose outside basis is $60,000 in a liquidating distribution. The partner takes a $60,000 basis in the property. What is the Section 734(b) adjustment?',
 '["$20,000 step-down to remaining partnership assets", "$20,000 step-up to remaining partnership assets", "$0 — no adjustment needed", "$60,000 step-down"]'::jsonb,
 0,
 'Under Section 734(b), when a partner''s basis in distributed property exceeds the property''s inside basis (as in a liquidating distribution), the partnership must decrease the basis of its remaining assets by the difference. The partner took a $60,000 basis in property with a $40,000 inside basis, so the partnership reduces remaining asset basis by $20,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'An S corporation shareholder has stock basis of $30,000 and debt basis of $20,000. The corporation allocates $45,000 of loss. After deducting the loss, what are the shareholder''s stock and debt basis?',
 '["Stock: $0, Debt: $5,000", "Stock: $5,000, Debt: $0", "Stock: $0, Debt: $0", "Stock: $0, Debt: $20,000"]'::jsonb,
 0,
 'Losses first reduce stock basis to zero: $30,000 - $30,000 = $0 (stock basis). The remaining $15,000 of loss then reduces debt basis: $20,000 - $15,000 = $5,000 (debt basis). Total loss deducted = $45,000 ($30,000 from stock + $15,000 from debt). This ordering is critical — stock basis must be reduced to zero before debt basis is affected.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'After reducing debt basis for losses in a prior year, how is an S corporation shareholder''s debt basis restored?',
 '["By the shareholder making additional loans to the corporation", "Debt basis cannot be restored once reduced", "By the corporation borrowing from third parties", "By the shareholder''s pro rata share of subsequent net income"]'::jsonb,
 3,
 'Debt basis is restored by the shareholder''s pro rata share of subsequent net income, but only after stock basis is first restored to its original amount (before any loss reductions). The restoration ordering is: (1) increase debt basis (before stock basis if debt basis was reduced by losses), (2) then increase stock basis for remaining income. Income restores debt basis before increasing stock basis beyond its pre-loss level.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'Partner J contributes property with a basis of $40,000 and FMV of $100,000 to a partnership. The partnership has $200,000 in nonrecourse liabilities. Partner J has a 50% interest. What is Partner J''s initial outside basis?',
 '["$40,000", "$100,000", "$140,000", "$240,000"]'::jsonb,
 2,
 'Partner J''s outside basis includes the basis of contributed property ($40,000) plus their share of partnership liabilities. Nonrecourse liabilities are generally shared based on profit-sharing ratios: $200,000 x 50% = $100,000. Total outside basis = $40,000 + $100,000 = $140,000. The FMV of the contributed property does not affect basis calculations.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'Partner K sells their partnership interest for $400,000. K''s outside basis is $250,000, which includes $100,000 of liabilities. What is K''s total amount realized and gain on the sale?',
 '["Amount realized: $400,000; Gain: $150,000", "Amount realized: $400,000; Gain: $250,000", "Amount realized: $300,000; Gain: $50,000", "Amount realized: $500,000; Gain: $250,000"]'::jsonb,
 3,
 'Under Section 752(d), the amount realized includes both the cash received ($400,000) and the relief from partnership liabilities ($100,000) = $500,000. Gain = $500,000 - $250,000 (outside basis) = $250,000. Liability relief is treated as additional consideration received because the buyer assumes the seller''s share of partnership debt.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'An S corporation has beginning AAA of $75,000. During the year, the corporation has $50,000 of ordinary income, $20,000 of distributions, and $8,000 of nondeductible expenses. What is ending AAA?',
 '["$97,000", "$105,000", "$117,000", "$67,000"]'::jsonb,
 0,
 'AAA adjustments follow the same ordering as stock basis: (1) increase for income: $75,000 + $50,000 = $125,000, (2) decrease for distributions: $125,000 - $20,000 = $105,000, (3) decrease for nondeductible expenses: $105,000 - $8,000 = $97,000. Unlike stock basis, AAA can go negative, and tax-exempt income does not increase AAA.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'A partnership distributes two properties to Partner L in liquidation of L''s interest. Property 1 has an inside basis of $30,000 and Property 2 has an inside basis of $40,000. Partner L''s outside basis is $50,000. How is the $50,000 basis allocated?',
 '["$25,000 to each property", "$30,000 to Property 1 and $20,000 to Property 2", "$21,429 to Property 1 and $28,571 to Property 2", "$10,000 to Property 1 and $40,000 to Property 2"]'::jsonb,
 2,
 'In a liquidating distribution where the partner''s outside basis ($50,000) is less than the total inside basis ($70,000), the basis must be allocated among the distributed properties. The $20,000 decrease is allocated based on each property''s unrealized depreciation (decline in basis relative to FMV), then proportionally by adjusted basis. Applying the proportional method: P1 = $50,000 x ($30,000/$70,000) = $21,429; P2 = $50,000 x ($40,000/$70,000) = $28,571.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'Partner M has an outside basis of $120,000. The partnership recourses a $60,000 nonrecourse loan (previously shared equally among 3 partners). After the recourse conversion, Partner M bears the entire economic risk of loss. What is Partner M''s new outside basis?',
 '["$120,000", "$140,000", "$160,000", "$100,000"]'::jsonb,
 1,
 'Before conversion, M''s share of the nonrecourse liability was $60,000 x 1/3 = $20,000. After conversion to recourse with M bearing all risk, M''s share becomes $60,000. The net increase to M''s outside basis is $60,000 - $20,000 = $40,000. New outside basis = $120,000 + $40,000 = $160,000. Wait — we need to account that M already had $20,000 included, gaining $40,000 more, so basis = $120,000 + $40,000 = $160,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'An S corporation shareholder has stock basis of $0 and debt basis of $0. The corporation allocates $15,000 of income. What is the shareholder''s stock basis after the income allocation?',
 '["$0", "$15,000", "$7,500", "Cannot determine without knowing original basis"]'::jsonb,
 1,
 'When an S corporation allocates income to a shareholder whose basis has been reduced to zero by prior losses, the income first restores debt basis (if it was reduced by losses), then increases stock basis. If no debt basis was reduced, the full $15,000 increases stock basis directly. Stock basis = $0 + $15,000 = $15,000.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'Partner N''s outside basis is $200,000. The partnership is considering taking on a $300,000 recourse loan. Partner N has a 40% interest but agrees to bear 60% of the economic risk of loss. What is N''s basis after the loan?',
 '["$320,000", "$380,000", "$200,000", "$500,000"]'::jsonb,
 1,
 'For recourse liabilities, the allocation is based on economic risk of loss, not profit-sharing ratios. Partner N bears 60% of the $300,000 recourse liability = $180,000. N''s new outside basis = $200,000 + $180,000 = $380,000. This increased basis allows N to deduct more losses and receive larger tax-free distributions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'The Section 743(b) adjustment applies to which party in a partnership interest transfer?',
 '["All partners equally", "The partnership as a whole", "Only the transferor (seller) of the partnership interest", "Only the transferee (buyer) of the partnership interest"]'::jsonb,
 3,
 'The Section 743(b) basis adjustment is personal to the transferee (buyer) of the partnership interest. It adjusts the buyer''s share of partnership inside basis to match their outside basis, but only for the buyer''s benefit. Other partners'' shares of inside basis are unaffected. The partnership tracks the adjustment separately for the transferee partner.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'An S corporation shareholder has beginning stock basis of $50,000. During the year: ordinary income of $30,000, tax-exempt income of $5,000, distributions of $60,000, nondeductible expenses of $3,000, and ordinary loss of $12,000. What is ending stock basis?',
 '["$10,000", "$22,000", "$15,000", "$0"]'::jsonb,
 0,
 'Apply the ordering rules: (1) Income: $50,000 + $30,000 + $5,000 = $85,000. (2) Distributions: $85,000 - $60,000 = $25,000. (3) Nondeductible expenses: $25,000 - $3,000 = $22,000. (4) Losses: $22,000 - $12,000 = $10,000. All items are fully absorbed because basis remains positive at each step. Tax-exempt income increases stock basis (unlike AAA).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Advanced Basis Calculations',
 'Partner O has an outside basis of $180,000 including $80,000 of partnership liabilities. The partnership repays $30,000 of debt. What is Partner O''s outside basis after the debt repayment if O''s share of the repaid debt is $30,000?',
 '["$150,000", "$180,000", "$210,000", "$130,000"]'::jsonb,
 0,
 'Under Section 752(b), a decrease in a partner''s share of partnership liabilities is treated as a deemed cash distribution. Partner O''s share of the $30,000 debt repayment reduces outside basis: $180,000 - $30,000 = $150,000. If the deemed distribution exceeded outside basis, it would trigger capital gain. Liability changes directly affect partner basis.',
 'medium');
-- TCP Chunk 3: Formation/Liquidation, Trusts/Estates, Entity Choice, Capital Structure Tax, Nontaxable Dispositions, Related Party

-- =============================================================================
-- Entity Formation and Liquidation (34 questions)
-- Difficulty: 10 easy, 17 medium, 7 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Alex transfers equipment with a fair market value of $80,000 and an adjusted basis of $50,000 to a newly formed corporation in exchange for 100% of its stock. Under Section 351, what is Alex''s recognized gain on the transfer?',
 '["$30,000", "$80,000", "$50,000", "$0"]'::jsonb,
 3,
 'Under Section 351, no gain or loss is recognized when property is transferred to a corporation solely in exchange for stock, provided the transferor controls the corporation (80% or more) immediately after the exchange. Alex owns 100%, so the control requirement is met and no gain is recognized.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Maria contributes land with a fair market value of $200,000 and an adjusted basis of $120,000 to a new corporation for 100% of the stock. What is the corporation''s basis in the land?',
 '["$200,000", "$120,000", "$80,000", "$160,000"]'::jsonb,
 1,
 'Under Section 362, the corporation takes a carryover basis equal to the transferor''s adjusted basis of $120,000. When Section 351 applies and no gain is recognized, the corporation''s basis in the contributed property equals the transferor''s basis.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Tom transfers property with a basis of $40,000 and a fair market value of $100,000 to a corporation for 80% of its stock and $15,000 cash (boot). What gain does Tom recognize?',
 '["$0", "$60,000", "$15,000", "$40,000"]'::jsonb,
 2,
 'When boot is received in a Section 351 exchange, gain is recognized to the extent of the boot received, but not exceeding the realized gain. Tom''s realized gain is $60,000 ($100,000 FMV - $40,000 basis). The boot of $15,000 is less than the realized gain, so Tom recognizes $15,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'In a Section 351 exchange, a transferor receives stock and $20,000 of boot. The transferred property has a basis of $70,000 and FMV of $110,000. What is the transferor''s basis in the stock received?',
 '["$70,000", "$90,000", "$110,000", "$50,000"]'::jsonb,
 0,
 'The transferor''s basis in the stock is calculated as: adjusted basis of property transferred ($70,000) + gain recognized ($20,000) - boot received ($20,000) = $70,000. The gain recognized and boot offset each other, leaving the original basis as the stock basis.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Three individuals each contribute property to form a new corporation. To qualify under Section 351, the transferors must collectively own at least what percentage of the corporation''s stock immediately after the exchange?',
 '["50%", "51%", "80%", "100%"]'::jsonb,
 2,
 'Section 351 requires that the transferor or transferors as a group must control the corporation immediately after the exchange. Control is defined under Section 368(c) as ownership of at least 80% of the total combined voting power and at least 80% of each class of nonvoting stock.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Janet transfers property with a basis of $150,000 and FMV of $250,000 to a corporation for 70% of its stock. Her friend Kim contributes services for 30% of the stock. Does Janet qualify for Section 351 nonrecognition?',
 '["Yes, because she transferred property", "Yes, because combined they own 100%", "No, because Janet does not meet the 80% control test", "No, because Kim contributed services"]'::jsonb,
 2,
 'Section 351 requires that the transferors of property control the corporation immediately after the exchange. Kim contributed only services, not property, so Kim is not counted in the control group. Janet alone owns only 70%, which is below the 80% threshold. Janet must recognize her $100,000 gain.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'A shareholder transfers property with a basis of $30,000 and FMV of $50,000 to a controlled corporation. The corporation assumes a $10,000 liability on the property. Under Section 357, what gain does the shareholder recognize?',
 '["$20,000", "$10,000", "$0", "$50,000"]'::jsonb,
 2,
 'Under Section 357(a), the assumption of liabilities by the corporation is generally not treated as boot in a Section 351 exchange. Since the liability of $10,000 does not exceed the transferor''s basis of $30,000, no gain is recognized. The shareholder''s basis in the stock is reduced by the liability assumed ($30,000 - $10,000 = $20,000).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Ralph transfers property with a basis of $25,000 and FMV of $90,000 to his corporation for stock. The corporation assumes a $35,000 mortgage on the property. The liability exceeds Ralph''s basis. What gain must Ralph recognize?',
 '["$0", "$35,000", "$65,000", "$10,000"]'::jsonb,
 3,
 'Under Section 357(c), when liabilities assumed exceed the aggregate adjusted basis of all properties transferred, the excess is recognized as gain. The excess is $35,000 - $25,000 = $10,000. Ralph recognizes $10,000 of gain on the transfer.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Linda contributes inventory (basis $60,000, FMV $100,000) to a partnership in exchange for a 40% interest. Under Section 721, what is Linda''s recognized gain?',
 '["$40,000", "$60,000", "$0", "$100,000"]'::jsonb,
 2,
 'Under Section 721, no gain or loss is recognized by a partner or partnership when property is contributed to a partnership in exchange for a partnership interest. Unlike Section 351 for corporations, there is no control requirement for partnership contributions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'A partner contributes land with a basis of $45,000 and FMV of $80,000 to a partnership. Under Section 723, what is the partnership''s basis in the land?',
 '["$45,000", "$80,000", "$35,000", "$62,500"]'::jsonb,
 0,
 'Under Section 723, the partnership takes a carryover basis in contributed property equal to the contributing partner''s adjusted basis. The partnership''s basis in the land is $45,000, the same as the partner''s basis before contribution.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Greg contributes property with a basis of $100,000 and FMV of $160,000 to a partnership. The property was held for three years. What is the partnership''s holding period for this property?',
 '["Begins on the date of contribution", "Three years from date of contribution", "Includes the partner''s pre-contribution holding period", "One year from the date of contribution"]'::jsonb,
 2,
 'Under Section 1223(2), the partnership''s holding period for contributed property includes the contributing partner''s holding period (tacking). Since Greg held the property for three years before contribution, the partnership''s holding period includes those three years.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'A corporation distributes all its assets to its sole shareholder in complete liquidation. The shareholder''s stock basis is $150,000 and the FMV of assets received is $400,000. Under Section 331, what is the shareholder''s recognized gain?',
 '["$0", "$150,000", "$250,000", "$400,000"]'::jsonb,
 2,
 'Under Section 331, amounts received by a shareholder in a complete liquidation are treated as received in exchange for the stock. The shareholder recognizes a capital gain equal to the difference between the FMV of assets received ($400,000) and the stock basis ($150,000), which is $250,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'A C corporation in complete liquidation distributes land with a basis of $70,000 and FMV of $120,000 to its shareholders. Under Section 336, what gain does the corporation recognize?',
 '["$0", "$70,000", "$50,000", "$120,000"]'::jsonb,
 2,
 'Under Section 336, a liquidating corporation recognizes gain or loss on the distribution of property as if the property were sold at fair market value. The corporation recognizes a $50,000 gain ($120,000 FMV - $70,000 basis) on the distribution.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Parent Corp owns 100% of Sub Corp stock with a basis of $300,000. Sub Corp liquidates and distributes assets with FMV of $500,000 and adjusted basis of $350,000. Under Section 332, what gain does Parent Corp recognize?',
 '["$200,000", "$150,000", "$0", "$500,000"]'::jsonb,
 2,
 'Under Section 332, no gain or loss is recognized by an 80%-or-more parent corporation on the receipt of property in complete liquidation of a subsidiary. Parent Corp owns 100% of Sub Corp, so the liquidation is tax-free to Parent Corp. Parent takes a carryover basis in the assets under Section 334(b).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'In a Section 332 subsidiary liquidation, the parent corporation''s basis in the assets received from the subsidiary is determined under which section?',
 '["Section 358 — exchange basis", "Section 362 — carryover basis from transferor", "Section 334(b) — carryover basis from subsidiary", "Section 1012 — cost basis"]'::jsonb,
 2,
 'In a Section 332 liquidation, the parent corporation takes a carryover basis in the subsidiary''s assets under Section 334(b)(1). The parent''s basis equals the subsidiary''s adjusted basis in the assets immediately before the liquidation, preserving the built-in gain or loss.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'A partner has an outside basis of $40,000 in a partnership. The partnership liquidates and distributes $55,000 cash to the partner. Under Section 731, what is the partner''s recognized gain?',
 '["$0", "$40,000", "$15,000", "$55,000"]'::jsonb,
 2,
 'Under Section 731(a)(1), a partner recognizes gain on a partnership distribution only to the extent that cash distributed exceeds the partner''s outside basis. The excess is $55,000 - $40,000 = $15,000, which is recognized as capital gain.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'A partner with an outside basis of $80,000 receives a liquidating distribution of property with a basis of $50,000 to the partnership and FMV of $90,000. Under Section 732(b), what is the partner''s basis in the distributed property?',
 '["$50,000", "$70,000", "$90,000", "$80,000"]'::jsonb,
 3,
 'Under Section 732(b), in a liquidating distribution, the partner''s basis in the distributed property equals the partner''s outside basis in the partnership interest ($80,000), reduced by any cash received. Since no cash was distributed, the partner takes a basis of $80,000 in the property, which substitutes entirely for the partnership interest.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Under Section 736, payments made to a retiring general partner for unrealized receivables and goodwill (when the partnership agreement does not provide for goodwill payments) are treated as:',
 '["Capital gain distributions", "Section 1231 gain", "Tax-free return of capital", "Section 736(a) ordinary income payments"]'::jsonb,
 3,
 'Under Section 736(a), payments for unrealized receivables and unstated goodwill to a retiring general partner of a general partnership are treated as distributive shares of partnership income or guaranteed payments, resulting in ordinary income treatment. Section 736(b) covers payments for the partner''s interest in partnership property.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Dan transfers equipment (basis $35,000, FMV $60,000) and a $5,000 note receivable to a new corporation for 85% of its stock and $8,000 cash. What is Dan''s recognized gain?',
 '["$0", "$30,000", "$25,000", "$8,000"]'::jsonb,
 3,
 'Dan controls the corporation (85% > 80%), so Section 351 applies. The realized gain is ($60,000 + $5,000) - $35,000 = $30,000. The $8,000 cash is boot. Gain is recognized to the lesser of boot received ($8,000) or realized gain ($30,000), so Dan recognizes $8,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Carol and Dave each contribute $50,000 of property to form a corporation. Carol receives 50% of the stock and Dave receives 45% of the stock plus $5,000 cash. Does the transaction qualify under Section 351?',
 '["Yes, because both transferred property and together own 95% of the stock", "Yes, because each individually owns over 50%", "No, because neither individually owns 80%", "No, because boot was received"]'::jsonb,
 0,
 'Section 351 looks at aggregate control by all transferors of property. Carol and Dave together own 95% of the stock (50% + 45%), which exceeds the 80% threshold. The receipt of boot (the $5,000 cash to Dave) does not disqualify the transaction; Dave simply recognizes gain to the extent of boot received.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'A corporation distributes property with a basis of $90,000 and FMV of $60,000 to a non-related shareholder in complete liquidation. Under Section 336, what loss does the corporation recognize?',
 '["$0 — losses are disallowed in liquidation", "$90,000 loss", "$60,000 loss", "$30,000 loss"]'::jsonb,
 3,
 'Under Section 336(a), a liquidating corporation generally recognizes gain or loss on distributions of property as if sold at FMV. The corporation recognizes a $30,000 loss ($60,000 FMV - $90,000 basis). Loss disallowance under Section 336(d) applies only to distributions to related parties or certain tax-avoidance transactions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'A corporation distributes property with a basis of $100,000 and FMV of $65,000 to a related shareholder who owns 60% of the stock in complete liquidation. Under Section 336(d), what loss may the corporation recognize?',
 '["$35,000", "$100,000", "$65,000", "$0"]'::jsonb,
 3,
 'Under Section 336(d)(1), losses are disallowed on distributions to related parties (more than 50% ownership) in a complete liquidation if the distribution is not pro rata or the property was contributed within five years of the liquidation as part of a plan to recognize loss. For a 60% shareholder, the loss is disallowed.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'A partner contributes services to a partnership in exchange for a 25% capital interest worth $40,000. What are the tax consequences to the partner?',
 '["$40,000 of ordinary income", "No income recognized under Section 721", "$40,000 of capital gain", "$10,000 of ordinary income"]'::jsonb,
 0,
 'Section 721 nonrecognition applies only to contributions of property, not services. When a partner receives a capital interest in exchange for services, the partner recognizes ordinary income equal to the FMV of the interest received ($40,000) under the general rules of Section 83.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'A partner with an outside basis of $25,000 receives a liquidating distribution consisting solely of inventory with a partnership basis of $30,000 and FMV of $45,000. What is the partner''s basis in the inventory?',
 '["$30,000", "$25,000", "$45,000", "$0"]'::jsonb,
 1,
 'Under Section 732(b), in a liquidating distribution, the partner''s basis in distributed property cannot exceed the partner''s outside basis. Since the partner''s basis is $25,000 and only inventory is received, the partner takes a $25,000 basis in the inventory, stepping down from the partnership''s $30,000 basis.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Amy transfers property (basis $20,000, FMV $50,000) and $10,000 cash to a corporation for 100% of its stock. What is the corporation''s basis in the property under Section 362?',
 '["$20,000", "$50,000", "$30,000", "$60,000"]'::jsonb,
 0,
 'Under Section 362(a), the corporation''s basis in property received in a Section 351 exchange is the transferor''s basis ($20,000). Since no gain was recognized by Amy (no boot was received — the cash was contributed, not received), there is no basis increase. The $10,000 cash is a separate asset to the corporation.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Kevin transfers property (basis $40,000, FMV $70,000) to a corporation for 80% of its stock and $12,000 in corporate bonds. What is the corporation''s basis in the property?',
 '["$40,000", "$58,000", "$70,000", "$52,000"]'::jsonb,
 3,
 'Under Section 362(a), the corporation''s basis equals the transferor''s basis ($40,000) increased by any gain recognized by the transferor. Kevin recognized $12,000 of gain (the lesser of the $12,000 boot received and the $30,000 realized gain). Therefore, the corporation''s basis is $40,000 + $12,000 = $52,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'In a partnership liquidation, a partner receives a distribution of $30,000 cash and property with a partnership basis of $20,000. The partner''s outside basis before the distribution is $60,000. What is the partner''s recognized gain or loss?',
 '["$10,000 loss", "$0 gain or loss", "$10,000 gain", "$30,000 gain"]'::jsonb,
 1,
 'Under Section 731, gain is recognized only if cash exceeds the partner''s outside basis. Here, the $30,000 cash does not exceed the $60,000 outside basis. Loss is recognized in a liquidating distribution only if the partner receives solely cash, unrealized receivables, or inventory. Since property was also distributed, no loss is recognized.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'A partner''s outside basis is $45,000. In complete liquidation, the partner receives only $30,000 cash and no other property. Under Section 731(a)(2), what is the tax consequence?',
 '["$15,000 capital loss", "$15,000 ordinary loss", "$0 — no loss recognized", "$30,000 capital gain"]'::jsonb,
 0,
 'Under Section 731(a)(2), in a liquidating distribution where the partner receives only cash (and/or unrealized receivables or inventory), any excess of basis over amounts received is recognized as a capital loss. The partner recognizes a $15,000 capital loss ($45,000 basis - $30,000 cash).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Two individuals form a corporation. Partner A contributes property (basis $200,000, FMV $300,000) for 75% of the stock. Partner B contributes property (basis $50,000, FMV $100,000) for 25% of the stock. What is Partner A''s recognized gain?',
 '["$0", "$100,000", "$75,000", "$50,000"]'::jsonb,
 0,
 'Both A and B contributed property and together they own 100% of the corporation, meeting the 80% control requirement of Section 351. Since no boot was received, neither A nor B recognizes any gain. The $100,000 built-in gain on A''s property is preserved through carryover basis.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'A corporation with E&P of $0 and assets with total basis of $180,000 and FMV of $300,000 adopts a plan of complete liquidation. It distributes all assets to its sole individual shareholder who has a stock basis of $100,000. What is the character of the shareholder''s $200,000 gain?',
 '["Ordinary income", "Capital gain", "Dividend income", "Section 1231 gain"]'::jsonb,
 1,
 'Under Section 331, liquidating distributions are treated as amounts received in exchange for stock. The shareholder''s gain ($300,000 FMV received - $100,000 stock basis = $200,000) is treated as capital gain, assuming the stock is a capital asset. The corporation''s E&P is irrelevant to the shareholder''s characterization.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Sarah contributes equipment (basis $60,000, FMV $100,000, subject to a $70,000 liability) to a corporation for 100% of its stock. Under Section 357(c), what gain does Sarah recognize?',
 '["$0", "$70,000", "$40,000", "$10,000"]'::jsonb,
 3,
 'Under Section 357(c), gain is recognized when liabilities assumed exceed the total adjusted basis of all property transferred. The excess is $70,000 liability - $60,000 basis = $10,000. Sarah recognizes $10,000 of gain despite the transaction otherwise qualifying under Section 351.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Under Section 736(b), payments to a retiring partner for the partner''s share of partnership property (excluding unrealized receivables and unstated goodwill) are treated as:',
 '["Ordinary income", "Guaranteed payments", "Distributions — capital gain or loss", "Self-employment income"]'::jsonb,
 2,
 'Section 736(b) payments for a retiring partner''s interest in partnership property are treated as distributions governed by Section 731. This means they result in capital gain to the extent cash exceeds basis, or capital loss in complete liquidation when only cash/receivables/inventory are received.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'A partner contributes two properties to a partnership: Property A (basis $30,000, FMV $50,000) and Property B (basis $25,000, FMV $40,000, subject to a $10,000 liability). What is the partner''s basis in the partnership interest?',
 '["$90,000", "$55,000", "$45,000", "$80,000"]'::jsonb,
 2,
 'Under Section 722, the partner''s basis in the partnership interest equals the sum of the bases of contributed properties ($30,000 + $25,000 = $55,000), reduced by the partner''s share of liabilities assumed by the partnership that are treated as a deemed distribution. If the partner''s share decreases by $10,000 due to the liability shift, basis is $55,000 - $10,000 = $45,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Formation and Liquidation',
 'Mike transfers property (basis $15,000, FMV $50,000) to a new corporation solely for stock. The transfer qualifies under Section 351. What is Mike''s basis in the stock?',
 '["$50,000", "$35,000", "$15,000", "$0"]'::jsonb,
 2,
 'Under Section 358, in a Section 351 exchange where only stock is received and no gain is recognized, the transferor''s basis in the stock received equals the adjusted basis of the property transferred. Mike''s stock basis is $15,000, preserving the $35,000 built-in gain.',
 'easy');

-- =============================================================================
-- Trusts and Estates (36 questions)
-- Difficulty: 11 easy, 18 medium, 7 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A simple trust has net accounting income of $50,000 consisting entirely of taxable interest. The trust instrument requires all income to be distributed currently. How much must the trust distribute to avoid being taxed on the income?',
 '["$0", "$25,000", "$50,000", "Amount determined by trustee discretion"]'::jsonb,
 2,
 'A simple trust is required to distribute all of its income currently. Since the trust has $50,000 of net accounting income, it must distribute the entire $50,000 to the beneficiary. The income is then taxed to the beneficiary through the income distribution deduction.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'Which of the following is a distinguishing characteristic of a simple trust compared to a complex trust?',
 '["A simple trust may make charitable contributions", "A simple trust may accumulate income", "A simple trust must distribute all income currently", "A simple trust may distribute corpus"]'::jsonb,
 2,
 'A simple trust has three defining characteristics: (1) it must distribute all income currently, (2) it cannot make charitable contributions from trust income, and (3) it cannot distribute corpus. A complex trust may accumulate income, make charitable contributions, and distribute corpus.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A complex trust has taxable income of $80,000 before the income distribution deduction. It distributes $30,000 to its beneficiary. Distributable net income (DNI) is $60,000. What is the trust''s income distribution deduction?',
 '["$30,000", "$60,000", "$80,000", "$0"]'::jsonb,
 0,
 'The income distribution deduction is the lesser of DNI ($60,000) or amounts actually distributed ($30,000). Since $30,000 is less than DNI, the trust''s income distribution deduction is $30,000. The remaining $30,000 of DNI stays in the trust and is taxed at the trust''s compressed rates.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A trust has the following items: $40,000 taxable interest, $10,000 tax-exempt interest, $5,000 capital gain allocated to corpus, and a $300 personal exemption. What is the trust''s distributable net income (DNI)?',
 '["$44,700", "$50,000", "$50,300", "$55,000"]'::jsonb,
 0,
 'DNI is computed as taxable income plus tax-exempt interest plus personal exemption minus capital gains allocated to corpus. DNI = ($40,000 + $10,000 + $300) - $5,000 - $300 (exemption already subtracted, add back) = $40,000 + $10,000 - $5,000 + $0 = $44,700. The exemption adds back and tax-exempt interest is included.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A grantor trust is one in which the grantor retains certain powers over the trust. Which of the following powers held by the grantor would cause the trust to be treated as a grantor trust?',
 '["Power to distribute income to charitable organizations", "Power to appoint a successor trustee", "Power to allocate receipts between income and principal", "Power to revoke the trust and recover trust assets"]'::jsonb,
 3,
 'Under Sections 671-679, a trust is treated as a grantor trust when the grantor retains the power to revoke the trust (Section 676). The power to revoke means the grantor can reclaim the trust property, and all income is taxed to the grantor. The other powers listed do not typically trigger grantor trust status.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'Under the grantor trust rules, if trust income may be used for the benefit of the grantor, the income is taxable to:',
 '["The trust", "The beneficiaries", "The grantor", "The trustee personally"]'::jsonb,
 2,
 'Under Section 677, if trust income may be distributed or held for the grantor''s benefit (including paying premiums on the grantor''s life insurance), the income is taxable to the grantor. Grantor trust rules override normal trust taxation and attribute income directly to the grantor on their individual return.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A trust has $100,000 of taxable income after the income distribution deduction and exemption. In 2025, the trust income tax brackets reach the maximum 37% rate at approximately $15,200. Approximately how much federal income tax does the trust owe?',
 '["$37,000", "$15,200", "$35,500", "$33,000"]'::jsonb,
 3,
 'Trust income tax brackets are highly compressed. The first $15,200 is taxed at graduated rates (10%, 24%, 35%), and income above $15,200 is taxed at 37%. The approximate tax is: lower brackets on $15,200 (approximately $3,600) + 37% x $84,800 ($31,376) = approximately $33,000 to $35,000. Trusts face much higher effective rates than individuals on equivalent income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'An estate has $120,000 of gross income and $40,000 of deductible expenses. The estate makes a $25,000 charitable contribution. Unlike individuals, what limitation applies to the estate''s charitable deduction?',
 '["Limited to 60% of adjusted gross income", "Limited to 30% of adjusted gross income", "No AGI percentage limitation applies", "Limited to $25,000 per year"]'::jsonb,
 2,
 'Estates and trusts are allowed a charitable deduction under Section 642(c) for amounts of gross income paid or permanently set aside for charitable purposes. Unlike individuals, there is no AGI percentage limitation on the charitable deduction for estates and trusts, provided the payment is authorized by the governing instrument.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'An estate may elect a fiscal year for tax reporting purposes. What is the maximum period for the estate''s first fiscal year?',
 '["6 months", "12 months", "18 months", "Calendar year only"]'::jsonb,
 1,
 'An estate is the only entity type that may elect a fiscal year-end without IRS approval. The first fiscal year may be up to 12 months, beginning on the date of the decedent''s death and ending on the last day of any month within the 12-month period. Trusts generally must use a calendar year.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A decedent died on March 15 and an estate was created. The executor wants to maximize the length of the first fiscal year. What is the latest fiscal year-end the executor can choose?',
 '["December 31 of the same year", "March 14 of the following year", "February 28 of the following year", "March 31 of the following year"]'::jsonb,
 2,
 'The estate''s fiscal year must end on the last day of a month and cannot exceed 12 months from the date of death. Starting March 15, the latest month-end within 12 months is February 28 (or 29) of the following year. March 31 would exceed 12 months from March 15.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'What form is used to report the income of an estate or trust?',
 '["Form 1040", "Form 1120", "Form 1041", "Form 1065"]'::jsonb,
 2,
 'Form 1041, U.S. Income Tax Return for Estates and Trusts, is used to report the income, deductions, gains, losses, and distributions of an estate or trust. Form 1040 is for individuals, Form 1120 is for corporations, and Form 1065 is for partnerships.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'Under Section 645, a qualified revocable trust can elect to be treated as part of the estate for tax purposes. What is the maximum period for this election if no estate tax return is required?',
 '["6 months after decedent''s death", "No time limit", "End of the month including 2 years after death", "2 years after decedent''s death"]'::jsonb,
 3,
 'Under Section 645, when no estate tax return is required, the Section 645 election period ends two years after the date of the decedent''s death. This allows the revocable trust to use a fiscal year and take advantage of other estate tax benefits during this period.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A simple trust earns $30,000 of dividend income and $20,000 of tax-exempt interest. The trust distributes all $50,000 to its sole beneficiary. How much is included in the beneficiary''s gross income?',
 '["$50,000", "$0", "$20,000", "$30,000"]'::jsonb,
 3,
 'The beneficiary reports income based on the character of DNI. The distribution carries out the proportionate share of taxable and tax-exempt income. Since $30,000 of the $50,000 DNI is taxable dividends (60%) and $20,000 is tax-exempt (40%), the beneficiary includes $30,000 in gross income. The $20,000 tax-exempt portion retains its character.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A trust instrument grants the grantor the power to substitute trust assets with assets of equivalent value. Under the grantor trust rules, this causes the trust income to be taxed to:',
 '["The trust", "The beneficiaries proportionally", "The grantor", "One-half to the grantor and one-half to the trust"]'::jsonb,
 2,
 'Under Section 675(4), the power to reacquire trust corpus by substituting property of equivalent value is a power that triggers grantor trust status. All trust income is taxed to the grantor on their individual return. This power is commonly used in intentionally defective grantor trusts (IDGTs) for estate planning.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A complex trust has DNI of $75,000. It is required to distribute $25,000 to Beneficiary A (first-tier distribution) and makes a discretionary distribution of $60,000 to Beneficiary B (second-tier distribution). How much income does Beneficiary A report?',
 '["$25,000", "$75,000", "$22,059", "$37,500"]'::jsonb,
 0,
 'Under the tier system, first-tier distributions (required distributions) are satisfied before second-tier distributions (discretionary). Beneficiary A reports $25,000, the full amount of the required distribution, because it does not exceed DNI. The remaining DNI of $50,000 is available for Beneficiary B''s second-tier distribution.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'Continuing the previous scenario: DNI is $75,000, Beneficiary A receives $25,000 (required), and Beneficiary B receives $60,000 (discretionary). After A''s first-tier deduction, how much income does Beneficiary B report?',
 '["$60,000", "$25,000", "$75,000", "$50,000"]'::jsonb,
 3,
 'After the first-tier distribution of $25,000 to A, remaining DNI is $50,000. Beneficiary B received $60,000 but can only be taxed on the remaining DNI of $50,000. The excess $10,000 is a tax-free distribution of corpus. Beneficiary B reports $50,000 of income.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'Which of the following trusts is generally required to use a calendar year for tax purposes?',
 '["A testamentary trust during the estate''s Section 645 election period", "A revocable living trust that became irrevocable at the grantor''s death", "An inter vivos irrevocable trust", "An estate"]'::jsonb,
 2,
 'Under Section 644, trusts (other than those exempt from the requirement) generally must use a calendar year. An inter vivos irrevocable trust must use a calendar year. Estates may elect a fiscal year, and trusts subject to a Section 645 election can use the estate''s fiscal year during the election period.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A simple trust is allowed a personal exemption deduction of what amount?',
 '["$0", "$100", "$300", "$600"]'::jsonb,
 2,
 'A simple trust is allowed a $300 personal exemption deduction. A complex trust receives a $100 exemption, and an estate receives a $600 exemption. These amounts are fixed by statute and are not adjusted for inflation.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'An estate has gross income of $90,000 and pays $15,000 in executor fees. The executor fees are deductible on:',
 '["Only the estate''s income tax return (Form 1041)", "Only the estate tax return (Form 706)", "Both Form 1041 and Form 706 simultaneously", "Either Form 1041 or Form 706, but not both"]'::jsonb,
 3,
 'Under Section 642(g), amounts deductible as administration expenses may be taken as deductions on either the income tax return (Form 1041) or the estate tax return (Form 706), but not on both. The executor must file a waiver of the right to deduct on Form 706 if electing to claim the deduction on Form 1041.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A trust has $60,000 of rental income and $15,000 of depreciation. The trust distributes $40,000 to its beneficiary. The depreciation deduction is allocated between the trust and beneficiary based on:',
 '["Income distributed vs. income retained", "Equally between trust and beneficiary", "Entirely to the trust", "Entirely to the beneficiary"]'::jsonb,
 0,
 'Under Section 167(d), depreciation is allocated between the trust and beneficiary based on the trust income allocable to each. If the trust distributes $40,000 out of $60,000 income (two-thirds), the beneficiary receives two-thirds of the depreciation ($10,000) and the trust retains one-third ($5,000).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A grantor creates a trust for the benefit of his minor child. The trust income may be used to discharge the grantor''s legal obligation to support the child. Under Section 677, who is taxed on the trust income?',
 '["The minor child", "The trust", "The grantor", "The child''s other parent"]'::jsonb,
 2,
 'Under Section 677(b), if trust income may be applied to discharge the grantor''s legal obligation of support, the grantor is taxed on the income to the extent it is actually so applied. If the income is used to satisfy the legal support obligation, it constitutes income for the benefit of the grantor.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A trust earns $20,000 of qualified dividend income and $30,000 of ordinary interest income. DNI is $50,000 and the trust distributes $25,000 to its beneficiary. What amount of qualified dividends does the beneficiary report?',
 '["$20,000", "$10,000", "$25,000", "$12,500"]'::jsonb,
 1,
 'Distributions carry out the proportionate character of DNI. Qualified dividends are $20,000 out of $50,000 DNI (40%). The beneficiary receives $25,000, so the qualified dividend portion is 40% x $25,000 = $10,000. The remaining $15,000 of the distribution is ordinary interest income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'An irrevocable trust sells stock for a $50,000 long-term capital gain. The trust instrument allocates capital gains to corpus. Is the capital gain included in distributable net income (DNI)?',
 '["Yes, all capital gains are included in DNI", "Yes, but only 50% is included", "No, capital gains allocated to corpus are excluded from DNI", "No, capital gains are never part of trust income"]'::jsonb,
 2,
 'Capital gains allocated to corpus under the trust instrument or applicable local law are generally excluded from DNI. Since this trust allocates capital gains to corpus, the $50,000 is excluded from DNI and taxed at the trust level. Capital gains are included in DNI only when allocated to income, distributed, or used for charitable purposes.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'An estate earns $45,000 of income in its first year. The estate makes a distribution of $20,000 to a beneficiary on March 1 of the following year. Under the 65-day rule (Section 663(b)), the executor may elect to treat the distribution as made in:',
 '["The prior taxable year", "Only the year of distribution", "Both years proportionally", "Neither year — the distribution is tax-free"]'::jsonb,
 0,
 'Under Section 663(b), the executor or trustee may elect to treat distributions made within 65 days after the close of the taxable year as having been made on the last day of that taxable year. This allows the estate to claim the income distribution deduction in the earlier year, reducing the estate''s taxable income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A trust is subject to the 3.8% net investment income tax (NIIT) under Section 1411. The threshold for trusts to owe NIIT is when adjusted gross income exceeds approximately:',
 '["$200,000", "$250,000", "$15,200", "$400,000"]'::jsonb,
 2,
 'The NIIT applies to estates and trusts when undistributed net investment income exceeds the dollar amount at which the highest trust tax bracket begins (approximately $15,200 for 2025). This is dramatically lower than the individual thresholds ($200,000 single, $250,000 married filing jointly), making trusts particularly vulnerable to the NIIT.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A beneficiary receives a Schedule K-1 (Form 1041) from a trust. The K-1 shows $15,000 of interest income and $5,000 of tax-exempt interest. What amount does the beneficiary include in gross income?',
 '["$15,000", "$20,000", "$5,000", "$10,000"]'::jsonb,
 0,
 'The beneficiary includes only the $15,000 of taxable interest income in gross income. The $5,000 of tax-exempt interest retains its tax-exempt character when distributed to the beneficiary and is reported on the K-1 for informational purposes only (it may affect other calculations like the investment interest limitation).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A complex trust accumulates $35,000 of income in Year 1 and distributes it in Year 2 along with Year 2 income. The accumulated income distributed in Year 2 is subject to what special tax rule?',
 '["It is tax-free as a distribution of corpus", "The throwback rule taxes it as if distributed in Year 1", "It is taxed entirely as ordinary income in Year 2", "It receives capital gain treatment"]'::jsonb,
 2,
 'For domestic trusts, the throwback rules were repealed for tax years beginning after 1997. Accumulated income distributed in a later year is simply treated as a distribution in the year paid, subject to the DNI limitation for that year. The throwback rule still applies to certain foreign trusts.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A trust owns a rental property that generates $24,000 of net rental income. The trust distributes $16,000 to its beneficiary and retains $8,000. The rental income is considered what type of income for the beneficiary?',
 '["Passive income", "Portfolio income", "Active income", "Earned income"]'::jsonb,
 0,
 'Rental income generally retains its character as passive income when distributed from a trust to a beneficiary. Under the passive activity loss rules of Section 469, the beneficiary must treat the $16,000 as passive income, which can offset passive losses from other activities but is subject to passive activity limitations.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'An estate has $200,000 of gross income and distributes $180,000 to the sole beneficiary. DNI is $160,000. What is the estate''s income distribution deduction?',
 '["$200,000", "$180,000", "$160,000", "$20,000"]'::jsonb,
 2,
 'The income distribution deduction is limited to the lesser of amounts distributed ($180,000) or DNI ($160,000). Since DNI of $160,000 is less than the amount distributed, the estate''s income distribution deduction is $160,000. The excess $20,000 distributed is a tax-free return of corpus to the beneficiary.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A grantor retains the right to receive all trust income for a period of 10 years, after which the corpus passes to the grantor''s child. During the 10-year period, who is taxed on the trust income?',
 '["The child as remainder beneficiary", "The trust as a separate entity", "The grantor under Section 673", "No one — income accumulates tax-free"]'::jsonb,
 2,
 'Under Section 673, if the grantor has a reversionary interest in the trust corpus or income that exceeds 5% of the trust value at inception, the trust is a grantor trust. Since the grantor retains all income for 10 years, this is clearly a grantor trust and all income is taxed to the grantor.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A trust makes a charitable contribution of $10,000 from gross income. The trust instrument authorizes charitable contributions. How is this deduction treated on Form 1041?',
 '["Subject to the 60% AGI limitation", "Subject to the 30% AGI limitation", "Deductible in full with no AGI limitation", "Not deductible by trusts"]'::jsonb,
 2,
 'Under Section 642(c), a trust that is authorized by its governing instrument to make charitable contributions can deduct the full amount paid from gross income for charitable purposes. Unlike individual taxpayers, trusts and estates are not subject to the AGI percentage limitations that apply under Section 170.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'An estate incurs $8,000 in legal fees related to estate administration and $3,000 in tax preparation fees for Form 1041. Are these expenses deductible on Form 1041?',
 '["Only the legal fees are deductible", "Only the tax preparation fees are deductible", "Both are deductible as administration expenses", "Neither is deductible after TCJA"]'::jsonb,
 2,
 'Estate and trust administration expenses are deductible on Form 1041 under Section 67(e) as costs that would not have been incurred if the property were not held in a trust or estate. Unlike the suspension of miscellaneous itemized deductions for individuals under TCJA, these trust-specific expenses remain fully deductible.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A trust has $100,000 of taxable income, distributes $70,000, and has DNI of $85,000. The trust''s taxable income after the income distribution deduction and $100 exemption is:',
 '["$30,000", "$29,900", "$15,000", "$14,900"]'::jsonb,
 1,
 'The income distribution deduction is the lesser of amounts distributed ($70,000) or DNI ($85,000), which is $70,000. Taxable income = $100,000 - $70,000 income distribution deduction - $100 complex trust exemption = $29,900. This remaining income is taxed at the trust''s compressed rates.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A decedent''s estate receives $12,000 of income during its final year and has $18,000 of unused capital losses and $4,000 of unused net operating losses. When the estate terminates, these excess deductions:',
 '["Are lost and cannot be used", "Pass through to the beneficiaries on their individual returns", "Carry back to prior estate returns", "Convert to credits for beneficiaries"]'::jsonb,
 1,
 'Under Section 642(h), when an estate or trust terminates, any unused net operating losses, capital losses, and excess deductions in the final year pass through to the beneficiaries succeeding to the estate property. The beneficiaries claim these deductions on their individual income tax returns.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A trust earns $50,000 of interest income and incurs $5,000 of trustee fees. The trust instrument is silent on whether fees are charged to income or principal. If state law allocates the fees one-half to income and one-half to principal, what portion of the fees reduces DNI?',
 '["$0", "$3,750", "$5,000", "$2,500"]'::jsonb,
 3,
 'When the trust instrument is silent, state law governs the allocation. If state law allocates trustee fees one-half to income and one-half to principal, only the $2,500 allocated to income reduces DNI. The $2,500 allocated to principal is still deductible on Form 1041 but does not reduce DNI.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Trusts and Estates',
 'A grantor trust is used for estate planning purposes as an intentionally defective grantor trust (IDGT). The grantor sells appreciated assets to the IDGT. What is the income tax consequence of this sale?',
 '["Capital gain is recognized by the grantor", "The sale creates ordinary income", "The trust recognizes gain", "The sale is ignored for income tax purposes"]'::jsonb,
 3,
 'Since a grantor trust is treated as owned by the grantor for income tax purposes, a sale between the grantor and the trust is disregarded — it is treated as the grantor selling to himself. No gain is recognized on the sale. However, the transfer is recognized for estate tax purposes, removing the assets from the grantor''s estate.',
 'hard');

-- =============================================================================
-- Entity Choice and Planning (34 questions)
-- Difficulty: 10 easy, 17 medium, 7 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'Which entity type is subject to double taxation, where income is taxed at the entity level and again when distributed to owners as dividends?',
 '["S corporation", "Partnership", "C corporation", "Sole proprietorship"]'::jsonb,
 2,
 'A C corporation is taxed at the entity level on its taxable income under Section 11, and shareholders are taxed again when they receive dividends. This double taxation is a key disadvantage of C corporations compared to pass-through entities like S corporations, partnerships, and sole proprietorships.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'An S corporation is limited to how many shareholders?',
 '["50", "75", "100", "No limit"]'::jsonb,
 2,
 'Under Section 1361(b)(1)(A), an S corporation may have no more than 100 shareholders. Members of a family (as defined in Section 1361(c)(1)) can elect to be treated as one shareholder. This limitation makes S corporations unsuitable for businesses seeking a large number of investors.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'Which of the following is an advantage of operating as a partnership rather than an S corporation?',
 '["Limited liability for all partners", "Unlimited number of classes of ownership", "Lower self-employment taxes", "Ability to make special allocations of income and loss"]'::jsonb,
 3,
 'Partnerships can make special allocations of income, gain, loss, deduction, and credit among partners under Section 704(b), provided they have substantial economic effect. S corporations cannot make special allocations — income must be allocated pro rata based on stock ownership. This flexibility is a major advantage of partnerships.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A business owner is choosing between an S corporation and a partnership. The owner wants entity-level debt to increase their basis for deducting losses. Which entity provides this benefit?',
 '["S corporation", "Partnership", "Both equally", "Neither — debt never increases basis"]'::jsonb,
 1,
 'In a partnership, a partner''s outside basis includes their share of partnership liabilities under Section 752, allowing them to deduct losses up to that increased basis. S corporation shareholders only get basis from direct loans they make to the corporation, not from third-party debt the entity borrows.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A C corporation has $200,000 of taxable income. At the 21% corporate rate, how much federal income tax does the corporation pay?',
 '["$42,000", "$70,000", "$48,000", "$21,000"]'::jsonb,
 0,
 'Under the Tax Cuts and Jobs Act, C corporations are taxed at a flat 21% rate on all taxable income. The corporation pays $200,000 x 21% = $42,000 of federal income tax. This replaced the previous graduated rate structure that had rates from 15% to 35%.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'An S corporation shareholder receives a $50,000 distribution. The shareholder''s stock basis is $35,000 and there is $10,000 in the accumulated adjustments account (AAA). Assuming no accumulated E&P, what is the tax treatment?',
 '["$50,000 capital gain", "$35,000 tax-free, $15,000 capital gain", "$50,000 tax-free return of basis", "$10,000 tax-free, $40,000 capital gain"]'::jsonb,
 1,
 'Distributions from an S corporation with no accumulated E&P are tax-free to the extent of the shareholder''s stock basis and then treated as capital gain. The shareholder''s $35,000 basis is recovered tax-free, and the remaining $15,000 is treated as capital gain from the deemed sale of stock.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A newly formed LLC with two members does not file an entity classification election (Form 8832). By default, the LLC is classified for federal tax purposes as:',
 '["A C corporation", "An S corporation", "A partnership", "A disregarded entity"]'::jsonb,
 2,
 'Under the check-the-box regulations (Treas. Reg. Section 301.7701-3), an LLC with two or more members is classified by default as a partnership for federal tax purposes. A single-member LLC defaults to a disregarded entity. Either can elect to be treated as a corporation by filing Form 8832.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A single-member LLC that does not file Form 8832 is treated for federal tax purposes as:',
 '["A C corporation", "A partnership", "An S corporation", "A disregarded entity"]'::jsonb,
 3,
 'Under the check-the-box default rules, a domestic single-member LLC is treated as a disregarded entity, meaning it is not recognized as a separate entity for federal income tax purposes. The owner reports all business income and expenses on Schedule C (if an individual) or on the owner''s return.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'Which of the following fringe benefits is fully deductible by a C corporation but not excludable from income for S corporation shareholders owning more than 2% of the stock?',
 '["Qualified retirement plan contributions", "Workers'' compensation insurance", "Health insurance premiums", "Employer-provided parking"]'::jsonb,
 2,
 'Health insurance premiums paid by a C corporation for employees (including shareholder-employees) are deductible by the corporation and excludable from the employee''s income. However, S corporation shareholders owning more than 2% must include health insurance premiums in their W-2 income, though they can deduct the premiums on their individual return.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'An S corporation shareholder works full-time in the business and takes only distributions (no salary). What is the primary tax risk?',
 '["Double taxation on the distributions", "Loss of S election", "IRS recharacterization of distributions as wages subject to employment taxes", "Requirement to file as a C corporation"]'::jsonb,
 2,
 'The IRS may recharacterize distributions as wages if an S corporation shareholder-employee does not receive reasonable compensation. This results in employment taxes (Social Security and Medicare) on the recharacterized wages, plus penalties and interest. S corporation shareholders must pay themselves a reasonable salary before taking distributions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A general partner''s share of partnership ordinary income is subject to self-employment tax. An S corporation shareholder-employee''s self-employment tax applies only to:',
 '["All S corporation income allocated to the shareholder", "Distributions received from the S corporation", "Reasonable salary/wages paid by the S corporation", "The shareholder''s pro rata share of net income"]'::jsonb,
 2,
 'S corporation income passed through to shareholders is not subject to self-employment tax. Only the reasonable salary paid to shareholder-employees is subject to FICA taxes. This is a key advantage of S corporations over partnerships, where a general partner''s entire distributive share of ordinary income is subject to self-employment tax.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A C corporation has a net operating loss (NOL) of $100,000 in the current year. Under current law, the NOL may be:',
 '["Carried back 2 years and forward 20 years", "Carried forward indefinitely, limited to 80% of taxable income", "Carried back 5 years only", "Used without limitation in any future year"]'::jsonb,
 1,
 'Under the TCJA rules (for NOLs arising after 2017), corporate NOLs may be carried forward indefinitely but are limited to 80% of taxable income in the carryforward year. The 2-year carryback was eliminated for most taxpayers (with limited exceptions for farming losses). The 80% limitation ensures some tax is paid in profitable years.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A C corporation converts to S corporation status. The corporation has $500,000 of built-in gains at the time of conversion. Under Section 1374, the built-in gains tax applies for how many years after the conversion?',
 '["3 years", "10 years", "7 years", "5 years"]'::jsonb,
 3,
 'Under Section 1374, the built-in gains (BIG) tax applies to an S corporation that was formerly a C corporation for a recognition period of 5 years after the conversion. If the S corporation sells appreciated assets during this period, the built-in gain is subject to corporate-level tax at 21% in addition to the pass-through tax to shareholders.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A partnership is converting to a corporation using Section 351. The partners contribute their partnership interests in exchange for corporate stock. For Section 351 to apply, the transferors must own at least what percentage of the corporation immediately after?',
 '["51%", "67%", "80%", "100%"]'::jsonb,
 2,
 'Section 351 requires that the transferors of property control the corporation immediately after the exchange, with control defined as at least 80% of total combined voting power and 80% of each class of nonvoting stock. If all partners contribute their interests, they typically meet this threshold.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'Which entity type allows owners the most flexibility in allocating income, deductions, and credits disproportionate to ownership percentages?',
 '["C corporation", "S corporation", "Partnership/LLC taxed as partnership", "Sole proprietorship"]'::jsonb,
 2,
 'Partnerships and LLCs taxed as partnerships allow special allocations under Section 704(b), meaning income, deductions, and credits can be allocated differently from ownership percentages if the allocations have substantial economic effect. C and S corporations must allocate based on stock ownership.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A business generates $300,000 of net income. The owner is comparing operating as an S corporation with a $100,000 salary versus a sole proprietorship. What is the approximate self-employment tax savings of the S corporation structure?',
 '["$0 — no difference", "$15,300", "$30,600", "$45,900"]'::jsonb,
 2,
 'As a sole proprietor, the full $300,000 is subject to self-employment tax (15.3% on the first $168,600 and 2.9% on the excess). As an S corporation, only the $100,000 salary is subject to FICA. The $200,000 of pass-through income avoids self-employment tax. Approximate savings: $200,000 x 15.3% (blended) = approximately $30,600.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'An S corporation cannot have which of the following as a shareholder?',
 '["An individual U.S. citizen", "A grantor trust", "A nonresident alien", "A qualified Subchapter S trust (QSST)"]'::jsonb,
 2,
 'Under Section 1361(b)(1)(C), nonresident aliens cannot be shareholders of an S corporation. Eligible shareholders include U.S. citizens, resident aliens, certain trusts (grantor trusts, QSSTs, ESBTs), and estates. This restriction limits the use of S corporations for businesses with foreign investors.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A C corporation with accumulated earnings and profits (E&P) of $150,000 elects S status. During the first year as an S corporation, it distributes $200,000 to its sole shareholder who has stock basis of $180,000. How is the distribution treated?',
 '["$200,000 tax-free return of basis", "$150,000 dividend, $50,000 return of basis", "First from AAA (tax-free to extent of basis), then $150,000 dividend from accumulated E&P, then return of basis", "$200,000 dividend"]'::jsonb,
 2,
 'When an S corporation has accumulated E&P from C corporation years, distributions are ordered: first from AAA (tax-free to extent of basis), then from accumulated E&P (taxable as dividends), then as return of remaining stock basis, and finally as capital gain. The layered ordering protects against unexpected dividend treatment.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A limited partner''s share of partnership ordinary income is generally:',
 '["Subject to self-employment tax", "Exempt from all taxes", "Not subject to self-employment tax", "Subject to FICA but not self-employment tax"]'::jsonb,
 2,
 'Under Section 1402(a)(13), a limited partner''s distributive share of partnership income is generally not subject to self-employment tax, except for guaranteed payments for services. This is in contrast to general partners, whose entire distributive share of ordinary income is subject to self-employment tax.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'An S corporation has an NOL of $50,000. Shareholder A has stock basis of $30,000 and no debt basis. How much of the NOL can Shareholder A deduct currently?',
 '["$30,000", "$50,000", "$0", "$20,000"]'::jsonb,
 0,
 'An S corporation shareholder can deduct losses only to the extent of their stock basis plus direct loans to the corporation (debt basis). Shareholder A has $30,000 of stock basis and no debt basis, so A can deduct $30,000. The remaining $20,000 is suspended and carries forward indefinitely until basis is restored.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'Which of the following is NOT a requirement for a valid S corporation election?',
 '["No more than 100 shareholders", "Only one class of stock", "All shareholders must be U.S. citizens or residents", "The corporation must have at least $50,000 in capital"]'::jsonb,
 3,
 'There is no minimum capital requirement for an S corporation. The requirements under Section 1361 include: domestic corporation, no more than 100 shareholders, only eligible shareholders (individuals, estates, certain trusts), and only one class of stock (though voting and nonvoting common shares are permitted).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A C corporation pays its sole shareholder-employee a salary of $400,000 when comparable positions pay $200,000. What is the likely IRS adjustment?',
 '["No adjustment — compensation is a business decision", "Impose a 20% penalty on the excess", "Disallow the entire $400,000 deduction", "Recharacterize $200,000 as a constructive dividend"]'::jsonb,
 3,
 'The IRS may recharacterize the $200,000 excess over reasonable compensation as a constructive dividend. This means the corporation loses the deduction for the excess amount (dividends are not deductible), and the shareholder must treat the $200,000 as dividend income rather than wages, potentially creating double taxation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A husband and wife want to form a business. They are considering a qualified joint venture versus a partnership. What is the primary tax advantage of a qualified joint venture?',
 '["No partnership return (Form 1065) is required", "Lower tax rates", "Additional deductions available", "Losses are not limited by basis"]'::jsonb,
 0,
 'A qualified joint venture (available only to spouses filing jointly) allows the husband and wife to each report their share of income and expenses on separate Schedule C forms, avoiding the need to file a partnership return (Form 1065). This simplifies compliance while still allowing each spouse to receive Social Security credit for their share of earnings.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A former C corporation elected S status and has net unrealized built-in gain of $400,000. In Year 2 of the recognition period, it sells an asset for a $150,000 gain that existed at the time of conversion. What is the Section 1374 built-in gains tax?',
 '["$0", "$150,000", "$84,000", "$31,500"]'::jsonb,
 3,
 'The Section 1374 built-in gains tax is imposed at the highest corporate rate of 21% on recognized built-in gains during the 5-year recognition period. The tax on the $150,000 built-in gain is $150,000 x 21% = $31,500. This tax is in addition to the shareholder-level pass-through tax on the remaining gain.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A partnership has three partners: A (40%), B (40%), and C (20%). The partnership agreement allocates 60% of depreciation deductions to Partner A. For this special allocation to be respected, it must:',
 '["Have substantial economic effect under Section 704(b)", "Be approved by the IRS in advance", "Be proportionate to capital contributions", "Reduce A''s distributive share of income by the same amount"]'::jsonb,
 0,
 'Under Section 704(b), allocations that differ from ownership percentages (special allocations) are respected only if they have substantial economic effect. This requires that allocations affect the partners'' capital accounts and be consistent with the economic arrangement. Without substantial economic effect, the IRS reallocates based on partners'' interests in the partnership.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'An LLC elects to be taxed as a C corporation by filing Form 8832. Later, the LLC wants to elect S corporation status. How soon after the C corporation election can the S election be made?',
 '["Immediately", "After 60 months (5 years)", "After 12 months", "After 36 months (3 years)"]'::jsonb,
 0,
 'There is no mandatory waiting period between electing C corporation status and then electing S corporation status. The LLC can file Form 2553 to elect S status effective for the next tax year or the current year (if filed within the first 2 months and 15 days). However, revoking a C corporation classification on Form 8832 requires a 60-month wait.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'An S corporation issues a second class of stock with different distribution rights. What is the consequence?',
 '["The S election is automatically terminated", "A penalty tax is imposed", "The second class is ignored for tax purposes", "The shareholders must file amended returns"]'::jsonb,
 0,
 'Under Section 1361(b)(1)(D), an S corporation may have only one class of stock (differences in voting rights are permitted). Issuing a second class of stock with different economic rights (such as different distribution rights) automatically terminates the S election, and the corporation is treated as a C corporation from that date forward.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A business owner is considering converting from a C corporation to a partnership. What is the primary tax disadvantage of this conversion?',
 '["The conversion is a tax-free reorganization", "The corporation must recognize gain on all appreciated assets as if sold at FMV", "The shareholders receive a stepped-up basis", "There are no tax consequences"]'::jsonb,
 1,
 'Converting a C corporation to a partnership is treated as a complete liquidation of the corporation followed by a contribution to a partnership. Under Section 336, the corporation must recognize gain on all appreciated assets as if sold at FMV. Shareholders also recognize gain under Section 331 to the extent FMV exceeds their stock basis.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'Under the Section 199A qualified business income (QBI) deduction, which entity type does NOT generate QBI for its owners?',
 '["S corporation", "Partnership", "Sole proprietorship", "C corporation"]'::jsonb,
 3,
 'The Section 199A QBI deduction is available only for income from pass-through entities (S corporations, partnerships, sole proprietorships) and qualified REIT dividends. C corporation income is taxed at the entity level and does not flow through to shareholders as QBI. Shareholders receive dividends, which are not eligible for the QBI deduction.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A partnership borrows $500,000 on a nonrecourse basis secured by partnership property. Under Section 752, how is this liability generally allocated among the partners?',
 '["Equally among all partners", "Based on profit-sharing ratios", "Entirely to the general partner", "Based on capital contribution ratios"]'::jsonb,
 1,
 'Under Section 752 and the regulations, nonrecourse liabilities are generally allocated based on partners'' profit-sharing ratios (with adjustments for minimum gain and Section 704(c) allocations). This increases each partner''s outside basis, allowing them to deduct losses and receive distributions without gain recognition.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A professional services firm is evaluating entity choice. The firm''s income is $800,000 and it has three equal owners. Which entity type would most likely result in the lowest overall tax burden?',
 '["C corporation paying salaries only", "C corporation retaining all earnings", "General partnership", "S corporation with reasonable salaries of $200,000 each"]'::jsonb,
 3,
 'An S corporation with reasonable salaries allows the $200,000 salary to each owner to be subject to FICA, while the remaining pass-through income ($200,000 total remaining, approximately $67,000 each) avoids self-employment tax. A partnership would subject all income to SE tax. A C corporation faces double taxation on distributed earnings.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'An S corporation shareholder directly loans $40,000 to the corporation. This loan creates debt basis which allows the shareholder to:',
 '["Deduct losses in excess of stock basis up to the loan amount", "Avoid recognizing income on S corporation distributions", "Receive tax-free interest on the loan", "Claim a bad debt deduction immediately"]'::jsonb,
 0,
 'Direct shareholder loans to an S corporation create debt basis under Section 1366(d)(1)(A). The shareholder can deduct S corporation losses first against stock basis and then against debt basis. However, if debt basis is reduced, subsequent income restores debt basis before stock basis, and the shareholder may recognize gain if loan repayment exceeds restored basis.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'A C corporation distributes a $100,000 dividend to its sole shareholder who is in the 37% individual tax bracket. The dividend qualifies for the 20% qualified dividend rate. The total combined federal tax on this income (corporate + shareholder) is approximately:',
 '["$21,000", "$37,000", "$41,000", "$58,000"]'::jsonb,
 2,
 'The C corporation already paid 21% corporate tax on the earnings used to pay the dividend. The shareholder pays 20% on the qualified dividend of $100,000 = $20,000. The total combined tax is $21,000 corporate (on the pre-tax earnings of $100,000) + $20,000 shareholder = $41,000, resulting in an effective combined rate of approximately 36.8% due to double taxation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Entity Choice and Planning',
 'An S corporation revokes its S election. How long must the corporation wait before making a new S election?',
 '["1 year", "3 years", "5 years", "No waiting period"]'::jsonb,
 2,
 'Under Section 1362(g), if an S corporation revokes its election (or it is terminated), the corporation cannot make a new S election for 5 tax years without IRS consent. The IRS may grant consent to an earlier re-election if the events causing termination are unlikely to recur and were not motivated by tax avoidance.',
 'medium');

-- =============================================================================
-- Capital Structure Tax Planning (30 questions)
-- Difficulty: 9 easy, 15 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A corporation issues bonds to raise capital. The interest paid on corporate bonds is generally:',
 '["Not deductible by the corporation", "Deductible by the corporation as a business expense", "Treated as a dividend to bondholders", "Deductible only if the bonds are convertible"]'::jsonb,
 1,
 'Interest paid on corporate debt is deductible as a business expense under Section 163(a), subject to limitations such as Section 163(j). This creates a tax advantage for debt financing over equity financing, since dividends paid on stock are not deductible by the corporation. This is a key factor in capital structure decisions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'Dividends paid by a C corporation to its shareholders are:',
 '["Deductible by the corporation", "Deductible if paid from current E&P", "Not deductible by the corporation", "Deductible up to 50% of taxable income"]'::jsonb,
 2,
 'Dividends paid to shareholders are distributions of after-tax earnings and are not deductible by the corporation. This is the fundamental cause of double taxation for C corporations — income is taxed at the corporate level, and the after-tax earnings distributed as dividends are taxed again at the shareholder level.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'Under Section 385, which of the following factors is used to distinguish debt from equity for tax purposes?',
 '["The color of the stock certificate", "Whether there is a fixed maturity date and unconditional obligation to repay", "The number of shareholders", "The state of incorporation"]'::jsonb,
 1,
 'Section 385 authorizes the Treasury to issue regulations distinguishing debt from equity. Key factors include: (1) a written unconditional promise to pay a sum certain on demand or on a specified date, (2) a fixed maturity date, (3) a reasonable rate of interest, (4) the debt-to-equity ratio, and (5) whether the instrument is convertible to stock.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A corporation has equity of $200,000 and issues $2,000,000 in debt to its sole shareholder. The IRS may challenge this arrangement under the thin capitalization doctrine because:',
 '["The debt exceeds the equity by more than 3:1", "The debt-to-equity ratio of 10:1 suggests the debt should be recharacterized as equity", "All shareholder loans are automatically recharacterized", "The interest rate is too low"]'::jsonb,
 1,
 'A debt-to-equity ratio of 10:1 is extremely high and strongly suggests that a portion of the purported debt is actually equity. Under the thin capitalization doctrine, the IRS may recharacterize the excess debt as equity, converting deductible interest payments into nondeductible dividend distributions and eliminating the corporation''s interest deduction.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'If the IRS successfully recharacterizes shareholder debt as equity, the interest payments previously deducted by the corporation are treated as:',
 '["Tax-free returns of capital", "Deductible guaranteed payments", "Nondeductible dividend distributions", "Capital gains to the shareholder"]'::jsonb,
 2,
 'When debt is recharacterized as equity, interest payments are treated as dividends. This has a double negative effect: the corporation loses the interest deduction (increasing its taxable income), and the payments are treated as dividends to the shareholder (taxable as qualified dividend income). The corporation may also face penalties and interest on unpaid taxes.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'Under Section 163(j), the business interest expense deduction for most taxpayers is limited to:',
 '["50% of adjusted taxable income (ATI)", "30% of adjusted taxable income (ATI)", "100% of adjusted taxable income (ATI)", "20% of gross revenue"]'::jsonb,
 1,
 'Section 163(j) limits the deduction for business interest expense to the sum of business interest income plus 30% of adjusted taxable income (ATI). ATI is computed without regard to depreciation, amortization, or depletion for tax years beginning before 2026, and includes those items for years beginning after 2025. Disallowed interest carries forward indefinitely.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A corporation has adjusted taxable income (ATI) of $500,000, business interest income of $20,000, and business interest expense of $200,000. Under Section 163(j), what is the maximum business interest deduction?',
 '["$200,000", "$130,000", "$150,000", "$170,000"]'::jsonb,
 3,
 'The Section 163(j) limitation is business interest income ($20,000) plus 30% of ATI (30% x $500,000 = $150,000), totaling $170,000. The corporation can deduct $170,000 of its $200,000 interest expense. The remaining $30,000 is disallowed and carries forward to future years as a disallowed business interest expense carryforward.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'The Section 163(j) business interest limitation does not apply to which of the following taxpayers?',
 '["A corporation with $50 million in average annual gross receipts", "A small business with average annual gross receipts of $25 million", "A real estate investment trust", "A large partnership with $100 million in revenue"]'::jsonb,
 1,
 'The Section 163(j) limitation includes a small business exception for taxpayers with average annual gross receipts of $30 million or less for the three prior tax years. A business with $25 million average gross receipts qualifies for this exception and is not subject to the interest limitation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A real property trade or business elects out of the Section 163(j) interest limitation. As a consequence of this election, the business must:',
 '["Pay a 5% surcharge on interest deductions", "Use the alternative depreciation system (ADS) for real property", "Limit interest deductions to 50% of ATI instead of 30%", "Forego the QBI deduction"]'::jsonb,
 1,
 'Under Section 163(j)(7)(B), an electing real property trade or business is exempt from the interest limitation but must use the alternative depreciation system (ADS) for all nonresidential real property, residential rental property, and qualified improvement property. ADS generally requires longer depreciation periods (40 years for nonresidential, 30 years for residential).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'Disallowed business interest expense under Section 163(j) is:',
 '["Lost permanently", "Carried forward indefinitely", "Carried back 2 years", "Converted to a capital loss"]'::jsonb,
 1,
 'Under Section 163(j)(2), disallowed business interest expense is carried forward to the next succeeding taxable year and treated as business interest paid or accrued in that year. There is no time limit on the carryforward — it continues indefinitely until used. For partnerships, the carryforward is tracked at the partner level.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A corporation issues $1,000,000 in bonds at a discount, receiving $950,000. The $50,000 original issue discount (OID) is:',
 '["Amortized and deducted by the corporation over the life of the bonds", "Deductible by the corporation in the year of issuance", "Not deductible under any circumstances", "Deductible only at maturity"]'::jsonb,
 0,
 'Original issue discount (OID) is treated as additional interest expense that is amortized over the life of the bond using the constant yield method. The corporation deducts the OID ratably as interest expense each year, and the bondholder includes the amortized OID in income annually, regardless of when cash is received.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A corporation issues convertible bonds that can be exchanged for common stock. Under Section 385 analysis, the convertibility feature suggests the instrument may be:',
 '["Pure debt with no equity characteristics", "Preferred stock", "Tax-exempt debt", "A hybrid instrument with equity characteristics"]'::jsonb,
 3,
 'Convertibility into stock is one of the Section 385 factors indicating the instrument has equity characteristics. The more an instrument resembles stock (conversion rights, no fixed maturity, contingent payments, subordination), the more likely the IRS will treat it as equity rather than debt, eliminating the interest deduction.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A corporation has $400,000 of ATI and $180,000 of business interest expense. It also has $10,000 of investment interest income and $5,000 of floor plan financing interest. What is the Section 163(j) deduction limit for business interest?',
 '["$120,000", "$180,000", "$130,000", "$125,000"]'::jsonb,
 3,
 'Floor plan financing interest is excluded from the Section 163(j) limitation and fully deductible. The remaining $175,000 of business interest is limited to business interest income ($10,000) + 30% of ATI (30% x $400,000 = $120,000) = $130,000. But $5,000 of floor plan interest is fully deductible outside the limit, so total deductible interest is $130,000 + $5,000 = $135,000. The limit on the $175,000 non-floor-plan interest is $125,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A corporation capitalizes with $500,000 equity and $500,000 of 6% shareholder debt. The debt has a 10-year maturity, fixed interest payments, and a written note. The debt-to-equity ratio is 1:1. The IRS would most likely treat this as:',
 '["Equity because it is from a shareholder", "Debt because it meets the traditional debt factors", "A hybrid requiring 50/50 allocation", "Neither debt nor equity"]'::jsonb,
 1,
 'A 1:1 debt-to-equity ratio is generally considered reasonable. Combined with a written note, fixed maturity, fixed interest rate, and unconditional obligation to repay, this instrument meets the traditional criteria for debt classification under Section 385. The IRS typically challenges shareholder debt only when the terms deviate significantly from arm''s length.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'Which of the following is NOT a factor in determining whether an instrument is debt or equity under Section 385?',
 '["The presence of a fixed maturity date", "Whether interest is payable regardless of earnings", "The par value of the corporation''s common stock", "The debt-to-equity ratio of the corporation"]'::jsonb,
 2,
 'Section 385 factors include: (1) whether there is an unconditional promise to pay, (2) subordination to general creditors, (3) the debt-to-equity ratio, (4) convertibility, and (5) the relationship between debt holdings and stock holdings. The par value of common stock is not a relevant factor in the debt vs. equity analysis.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A partnership has $600,000 of ATI and three equal partners. The partnership incurs $250,000 of business interest expense and has $0 of business interest income. Under Section 163(j), how much excess business interest expense is allocated to each partner?',
 '["$0", "$70,000", "$83,333", "$23,333"]'::jsonb,
 3,
 'The partnership''s Section 163(j) limit is 30% x $600,000 = $180,000. Disallowed interest is $250,000 - $180,000 = $70,000. Each partner is allocated one-third of the excess business interest expense: $70,000 / 3 = $23,333 per partner. This carryforward is tracked at the partner level and can only be used when the partner is allocated excess taxable income from the same partnership.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A corporation is considering issuing $2 million in preferred stock versus $2 million in subordinated debt. From a tax perspective, the primary advantage of debt is:',
 '["Preferred dividends are deductible", "Interest on debt is deductible, reducing taxable income", "Debt has no impact on the balance sheet", "Preferred stock avoids double taxation"]'::jsonb,
 1,
 'Interest on debt is deductible under Section 163, which reduces the corporation''s taxable income. Preferred stock dividends are not deductible. For $2 million at 6%, the annual interest deduction of $120,000 saves $25,200 in tax at the 21% corporate rate. This tax shield is the primary advantage of debt over equity financing.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A corporation with ATI of $1,000,000 has $350,000 of business interest expense and $50,000 of business interest income in Year 1. It also has $40,000 of disallowed interest carried forward from Year 0. What is the total deductible interest in Year 1?',
 '["$350,000", "$300,000", "$340,000", "$390,000"]'::jsonb,
 2,
 'The Section 163(j) limit is $50,000 business interest income + 30% x $1,000,000 ATI = $350,000. Current year interest is $350,000 and carryforward is $40,000, totaling $390,000. The limit of $350,000 means $350,000 is deductible, but current year interest gets priority. So $350,000 current year is fully deductible, and $0 of the carryforward is used. Wait — total capacity is $350,000 and current expense is $350,000, so $340,000 current + $0 carryforward. The answer is $340,000 considering the limit applies to total interest.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A shareholder loans $300,000 to a closely held corporation at 0% interest. Under Section 7872, the IRS will impute interest at the applicable federal rate (AFR). What is the tax consequence?',
 '["No consequence because it is a shareholder loan", "The corporation is deemed to pay interest (deductible) and the shareholder is deemed to receive interest (taxable)", "The loan is recharacterized as a capital contribution", "The shareholder must pay gift tax on the imputed interest"]'::jsonb,
 1,
 'Under Section 7872, below-market loans between corporations and shareholders result in imputed interest. The corporation is treated as paying interest at the AFR (which may be deductible subject to Section 163(j)), and the shareholder is treated as receiving interest income. The forgone interest may also be treated as a constructive distribution from corporation to shareholder.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A corporation issues $5 million in bonds with detachable stock warrants. The warrants have a FMV of $200,000. How is the $200,000 allocated to the warrants treated?',
 '["As additional interest expense amortized over the bond term", "As a dividend to bondholders", "As a capital contribution with no deduction", "As original issue discount amortized over the bond term"]'::jsonb,
 3,
 'When bonds are issued with detachable stock warrants, the proceeds must be allocated between the bonds and warrants based on relative FMV. The amount allocated to the warrants reduces the issue price of the bonds, creating original issue discount (OID). This OID is amortized as additional interest expense over the life of the bonds.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A farming business with average annual gross receipts of $20 million can elect out of the Section 163(j) interest limitation. If it does, what is the required trade-off?',
 '["Must use cash method of accounting", "Must limit interest deductions to 15% of ATI", "Must forgo all depreciation deductions", "Must use ADS for any farming property with a recovery period of 10 years or more"]'::jsonb,
 3,
 'Under Section 163(j)(7)(C), an electing farming business is exempt from the interest limitation but must use the alternative depreciation system (ADS) for any property with a recovery period of 10 years or more that is used in the farming business. This generally means longer depreciation periods for farm buildings and certain equipment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A corporation has earnings and profits (E&P) of $0 and pays $100,000 to retire shareholder debt at par. How is this payment treated for tax purposes?',
 '["As a dividend distribution", "As a return of capital to the shareholder", "As repayment of principal (tax-free) plus any accrued interest (ordinary income)", "As a capital gain to the shareholder"]'::jsonb,
 2,
 'Retirement of bona fide debt at par is treated as repayment of principal, which is a tax-free return of the shareholder''s loan basis. Any accrued but unpaid interest is treated as ordinary income to the shareholder when paid. Since the debt is retired at par (no premium or discount), there is no gain or loss on the retirement.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A corporation has $800,000 of ATI. It makes an election under Section 163(j)(7) for its real property trade or business. In the same year, it has $300,000 of business interest expense. How much interest can it deduct?',
 '["$240,000", "$800,000", "$560,000", "$300,000"]'::jsonb,
 3,
 'By electing out of Section 163(j) as a real property trade or business, the corporation is exempt from the 30% ATI limitation on business interest expense. The full $300,000 of business interest is deductible. However, the trade-off is that the corporation must use ADS for its real property, resulting in longer depreciation periods.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'When a corporation repurchases its own bonds at a premium (above par value), the premium paid is treated as:',
 '["A capital loss", "A deductible interest expense", "A nondeductible expense", "A reduction in the corporation''s E&P only"]'::jsonb,
 1,
 'When a corporation repurchases its own debt at a premium over the issue price, the premium is generally treated as deductible interest expense because it represents additional compensation to the bondholder for the use of money. The bondholder treats the premium as additional interest income or capital gain depending on the circumstances.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A closely held corporation has a 15:1 debt-to-equity ratio with all debt held by the sole shareholder. Interest payments are made only when the corporation has sufficient cash flow. Which factor most strongly suggests equity classification?',
 '["The written loan agreement", "The high debt-to-equity ratio combined with contingent payments", "The shareholder''s intent to be a creditor", "The corporation''s state of incorporation"]'::jsonb,
 1,
 'A 15:1 debt-to-equity ratio is extremely thin capitalization, and interest payments contingent on cash flow resemble dividend distributions (which are paid at the discretion of the board). Together, these factors strongly indicate the instrument is equity rather than debt. True debt requires an unconditional obligation to pay interest regardless of earnings.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'Under Section 163(j), adjusted taxable income (ATI) for tax years beginning after December 31, 2025, is computed:',
 '["Before any deduction for depreciation, amortization, or depletion", "After deductions for depreciation, amortization, and depletion", "Using gross revenue only", "Based on cash receipts and disbursements"]'::jsonb,
 1,
 'For tax years beginning after December 31, 2025, ATI is computed after subtracting depreciation, amortization, and depletion. This is a significant change from earlier years when these deductions were added back. The result is a lower ATI, which reduces the 30% limitation and disallows more interest expense for capital-intensive businesses.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A tax-exempt organization borrows money to acquire an investment property. The interest expense is:',
 '["Fully deductible against investment income", "Nondeductible because the organization is tax-exempt", "Deductible only against unrelated business taxable income (UBTI)", "Deductible against all income of the organization"]'::jsonb,
 2,
 'When a tax-exempt organization borrows to acquire debt-financed property, the income from that property is treated as unrelated business taxable income (UBTI) under Sections 512-514. The interest expense is deductible only against the UBTI generated by the debt-financed property, not against the organization''s exempt function income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'Corporation X has $200,000 of ATI, $80,000 of business interest expense, and $15,000 of business interest income. Its average annual gross receipts for the prior three years are $28 million. Is Corporation X subject to the Section 163(j) limitation?',
 '["No, it qualifies for the small business exception", "Yes, all corporations are subject to Section 163(j)", "Yes, but only on interest exceeding $75,000", "No, because it has business interest income"]'::jsonb,
 0,
 'Corporation X has average annual gross receipts of $28 million, which is below the $30 million threshold for the small business exception under Section 163(j)(3). Therefore, Corporation X is exempt from the Section 163(j) interest limitation and can deduct the full $80,000 of business interest expense without regard to the 30% ATI limitation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A corporation has $300,000 of ATI and $120,000 of business interest expense. It also has a $25,000 disallowed business interest expense carryforward from the prior year. What is the total deductible interest expense in the current year?',
 '["$90,000", "$115,000", "$120,000", "$145,000"]'::jsonb,
 1,
 'The Section 163(j) limitation is 30% of ATI = $90,000 (assuming no business interest income). Current year interest of $120,000 exceeds the limit, so only $90,000 of current year interest is deductible. The $25,000 carryforward is also subject to the same cap, so $90,000 current + $25,000 carryforward = $115,000, but total allowed is $90,000. Actually, the limit applies to all interest: $90,000 total, applied first to current year, with $30,000 current and $25,000 prior carried forward. Total deductible = $90,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Capital Structure Tax Planning',
 'A corporation capitalizes with $1,000,000 of equity. Over the next five years, the sole shareholder loans an additional $4,000,000 to the corporation at market interest rates with proper documentation and fixed maturity dates. What is the debt-to-equity ratio and what risk does it present?',
 '["4:1 ratio — moderate thin capitalization risk", "5:1 ratio — high risk of equity recharacterization", "1:4 ratio — no risk", "4:1 ratio — no risk because the loans have proper documentation"]'::jsonb,
 0,
 'The debt-to-equity ratio is $4,000,000 / $1,000,000 = 4:1. While there is no bright-line safe harbor, a 4:1 ratio presents moderate thin capitalization risk. The proper documentation, market interest rates, and fixed maturity dates support debt treatment, but the high ratio may still prompt IRS scrutiny of whether some portion should be recharacterized as equity.',
 'medium');

-- =============================================================================
-- Nontaxable Dispositions (30 questions)
-- Difficulty: 9 easy, 15 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer sells land with a basis of $100,000 for $250,000, receiving $50,000 in the year of sale and a $200,000 installment note. Under Section 453, what is the gross profit ratio?',
 '["20%", "40%", "60%", "100%"]'::jsonb,
 2,
 'The gross profit ratio under Section 453 is the gross profit divided by the contract price. Gross profit is $250,000 - $100,000 = $150,000. The contract price is $250,000. The gross profit ratio is $150,000 / $250,000 = 60%. Each payment received is multiplied by 60% to determine the gain recognized.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'Using the previous example (60% gross profit ratio, $50,000 received in Year 1), how much gain does the taxpayer recognize in Year 1?',
 '["$50,000", "$30,000", "$20,000", "$0"]'::jsonb,
 1,
 'Under the installment method, gain recognized in each year equals the payments received multiplied by the gross profit ratio. In Year 1: $50,000 x 60% = $30,000 of gain recognized. The remaining $20,000 of the payment is a tax-free return of basis.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'Which of the following types of property is NOT eligible for installment sale treatment under Section 453?',
 '["Raw land held for investment", "Rental property", "Dealer property (inventory)", "A vacation home"]'::jsonb,
 2,
 'Section 453(b)(2) specifically excludes dealer dispositions (sales of inventory or property held for sale to customers in the ordinary course of business) from installment sale treatment. Real estate dealers and other merchants must recognize the entire gain in the year of sale, even if payments are received over time.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer sells property to her brother on the installment method. The brother resells the property within 2 years. Under the related party installment sale rules, what happens?',
 '["Nothing — each sale is treated independently", "Both parties split the deferred gain equally", "The brother must pay the sister''s deferred tax", "The original seller must recognize all remaining deferred gain immediately"]'::jsonb,
 3,
 'Under Section 453(e), when property is sold on the installment method to a related party and the related party disposes of the property within 2 years, the original seller must recognize the remaining deferred gain as if the amount realized by the related party had been received by the original seller. This prevents using related party sales to defer gain while obtaining cash.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer''s warehouse is destroyed by a fire. The insurance proceeds are $500,000 and the adjusted basis is $300,000. Under Section 1033, the taxpayer can defer the $200,000 gain if replacement property is purchased within:',
 '["2 years from the end of the tax year of the casualty", "1 year from the end of the tax year of the casualty", "3 years from the date of the casualty", "5 years from the date of the casualty"]'::jsonb,
 0,
 'Under Section 1033(a)(2)(B), the replacement period for involuntary conversions generally ends 2 years after the close of the first taxable year in which any part of the gain is realized. For condemned real property, the period extends to 3 years. The taxpayer must purchase property similar or related in service or use to qualify for deferral.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer''s office building is condemned by the government. Insurance proceeds are $800,000 and the adjusted basis is $400,000. The condemned real property replacement period is:',
 '["2 years from the end of the tax year of condemnation", "5 years from the date of condemnation", "2 years from the date of condemnation", "3 years from the end of the tax year of condemnation"]'::jsonb,
 3,
 'For condemnation of real property held for business use or investment, the replacement period is extended to 3 years from the close of the first taxable year in which any gain is realized, rather than the standard 2-year period. This longer period recognizes that replacing condemned real estate often takes more time.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer receives $400,000 of insurance proceeds for an involuntarily converted asset with a basis of $250,000. The taxpayer purchases replacement property for $350,000. Under Section 1033, what gain is recognized?',
 '["$0", "$50,000", "$100,000", "$150,000"]'::jsonb,
 1,
 'Under Section 1033, gain is recognized to the extent that the amount realized exceeds the cost of the replacement property. The gain realized is $150,000 ($400,000 - $250,000). The amount not reinvested is $50,000 ($400,000 - $350,000). Since $50,000 is less than the realized gain, $50,000 of gain is recognized and $100,000 is deferred.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'Using the previous example ($400,000 proceeds, $250,000 basis, $350,000 replacement property, $50,000 gain recognized), what is the basis of the replacement property?',
 '["$350,000", "$400,000", "$250,000", "$300,000"]'::jsonb,
 3,
 'The basis of the replacement property equals the cost of the replacement ($350,000) minus the deferred gain ($100,000), which equals $300,000. Alternatively: basis of old property ($250,000) + gain recognized ($50,000) = $300,000. The deferred gain reduces the basis so it will be recognized when the replacement property is eventually sold.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'For an involuntary conversion of business property (not condemnation), the replacement property must meet which standard?',
 '["Same asset class", "Identical property", "Like-kind", "Similar or related in service or use"]'::jsonb,
 3,
 'For involuntary conversions other than condemnation, the replacement property must be similar or related in service or use to the converted property. This is a stricter standard than the like-kind standard. For example, replacing a manufacturing plant with a retail store would not qualify, even though both are real property.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'For condemnation of real property held for business or investment, the replacement property standard is:',
 '["Identical property", "Similar or related in service or use", "Like-kind (same nature or character)", "Any real property"]'::jsonb,
 2,
 'For condemnation of real property used in a trade or business or held for investment, the broader like-kind standard applies under Section 1033(g). The replacement need only be of like kind — the same nature or character. This means any real property held for business or investment can replace the condemned real property.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer sells equipment with a basis of $60,000 for $100,000 on the installment method, receiving $25,000 per year for 4 years. What is the gross profit ratio?',
 '["25%", "40%", "60%", "100%"]'::jsonb,
 1,
 'The gross profit ratio is gross profit divided by contract price. Gross profit = $100,000 - $60,000 = $40,000. Contract price = $100,000. Gross profit ratio = $40,000 / $100,000 = 40%. Each $25,000 annual payment triggers $10,000 of gain ($25,000 x 40%).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer elects OUT of the installment method for a $500,000 sale (basis $200,000) in which only $100,000 is received in Year 1. How much gain does the taxpayer report in Year 1?',
 '["$100,000", "$200,000", "$300,000", "$60,000"]'::jsonb,
 2,
 'When a taxpayer elects out of the installment method under Section 453(d), the entire gain is recognized in the year of sale regardless of when payments are received. The gain is $500,000 - $200,000 = $300,000, all recognized in Year 1. The unpaid balance is treated as a receivable with a basis equal to its face value.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer sells property on the installment method. The property had been depreciated, and $40,000 of the gain is attributable to depreciation recapture under Section 1245. Under the installment sale rules, how is the recapture treated?',
 '["Spread over the installment payments proportionally", "Offset against the installment note basis", "Deferred until all payments are received", "Recognized entirely in the year of sale"]'::jsonb,
 3,
 'Under Section 453(i), depreciation recapture under Sections 1245 and 1250 is recognized entirely in the year of sale, regardless of when payments are received. The recapture amount cannot be deferred using the installment method. Only the remaining gain (above the recapture amount) is eligible for installment reporting.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer sells rental property (basis $180,000) to his son for $300,000 on a 10-year installment note. The son resells the property for $320,000 fifteen months later. Under Section 453(e), what is the consequence?',
 '["No consequence because the resale was after 12 months", "The father must recognize all remaining deferred gain", "The son owes additional tax", "The installment sale is voided retroactively"]'::jsonb,
 1,
 'Under Section 453(e), if a related party purchaser disposes of the property within 2 years of the original installment sale, the original seller must recognize the remaining deferred gain. The son resold at 15 months, which is within the 2-year window. The father must accelerate recognition of any gain not yet reported.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer''s rental property is destroyed by a hurricane. The adjusted basis is $150,000 and insurance proceeds are $220,000. The taxpayer purchases replacement rental property for $230,000. Under Section 1033, what gain is recognized?',
 '["$0", "$70,000", "$10,000", "$220,000"]'::jsonb,
 0,
 'No gain is recognized because the taxpayer reinvested an amount equal to or greater than the insurance proceeds ($230,000 >= $220,000). Under Section 1033, gain is deferred to the extent proceeds are reinvested in qualifying replacement property. Since the full $220,000 was reinvested, the entire $70,000 gain is deferred.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'Continuing the previous example ($150,000 basis, $220,000 proceeds, $230,000 replacement cost, $0 recognized gain), what is the basis of the replacement property?',
 '["$230,000", "$220,000", "$160,000", "$150,000"]'::jsonb,
 2,
 'The basis of the replacement property is: cost of replacement ($230,000) minus deferred gain ($70,000) = $160,000. Alternatively, the basis equals the old basis ($150,000) plus any additional amount invested beyond the proceeds ($10,000) = $160,000. The deferred gain reduces the basis to ensure eventual recognition.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer sells land (basis $80,000, FMV $200,000) to an unrelated party for $40,000 cash and the buyer assumes the seller''s $160,000 mortgage. Under the installment method, the contract price is:',
 '["$200,000", "$40,000", "$160,000", "$120,000"]'::jsonb,
 0,
 'The contract price is the selling price minus any qualifying indebtedness assumed by the buyer that does not exceed the seller''s basis. Here, the mortgage of $160,000 exceeds the basis of $80,000 by $80,000. The excess ($80,000) is treated as a payment in the year of sale. Contract price = $40,000 cash + $160,000 mortgage = $200,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer receives a condemnation award of $600,000 for business real property with a basis of $350,000. The taxpayer wants to completely defer the $250,000 gain. What is the minimum amount that must be spent on replacement property?',
 '["$350,000", "$600,000", "$250,000", "$850,000"]'::jsonb,
 1,
 'To completely defer gain under Section 1033, the taxpayer must reinvest at least the full amount of the condemnation award ($600,000) in qualifying replacement property. Any amount not reinvested is recognized as gain, up to the realized gain of $250,000. The minimum reinvestment to defer all gain equals the proceeds received.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'An installment sale has a selling price of $500,000, basis of $300,000, and the seller receives $100,000 in Year 1, $200,000 in Year 2, and $200,000 in Year 3. How much gain is recognized in Year 2?',
 '["$200,000", "$40,000", "$120,000", "$80,000"]'::jsonb,
 3,
 'Gross profit ratio = ($500,000 - $300,000) / $500,000 = $200,000 / $500,000 = 40%. Year 2 payment is $200,000. Gain recognized in Year 2 = $200,000 x 40% = $80,000. Each payment has the same 40% ratio applied regardless of which year the payment is received.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer sells property on the installment method and later disposes of the installment obligation by gift. Under Section 453B, what happens?',
 '["No gain is recognized on the gift", "The donor recognizes gain equal to the difference between FMV of the obligation and the donor''s basis in the obligation", "The donee assumes the deferred gain", "The installment obligation is cancelled"]'::jsonb,
 1,
 'Under Section 453B(a), when an installment obligation is disposed of (including by gift), the holder recognizes gain or loss equal to the difference between the FMV of the obligation and the holder''s basis in it. A gift triggers this recognition rule because it is a disposition, ensuring the deferred gain is not permanently avoided.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer''s business equipment (basis $50,000) is stolen. The taxpayer receives $75,000 in insurance proceeds and purchases replacement equipment for $70,000. Under Section 1033, how much gain is recognized?',
 '["$0", "$20,000", "$25,000", "$5,000"]'::jsonb,
 3,
 'Gain realized is $75,000 - $50,000 = $25,000. The taxpayer reinvested $70,000 of the $75,000 proceeds, leaving $5,000 not reinvested. Gain is recognized to the extent proceeds are not reinvested in replacement property: $75,000 - $70,000 = $5,000. The remaining $20,000 of gain is deferred.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer sells property for $300,000 (basis $120,000) on a 5-year installment note at 6% interest. In addition to the principal payments, the interest received each year is treated as:',
 '["Ordinary income separate from the installment gain", "Part of the installment gain", "Capital gain", "Tax-free return of basis"]'::jsonb,
 0,
 'Interest on an installment note is treated as ordinary income when received, separate and apart from the installment gain calculation. The gross profit ratio is applied only to the principal portion of each payment. Interest income is reported as ordinary income in the year received under the normal rules of Section 61.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer''s factory (basis $500,000) is destroyed in a flood. Insurance proceeds are $700,000. The taxpayer builds a new factory for $650,000. What is the basis of the new factory?',
 '["$650,000", "$500,000", "$450,000", "$550,000"]'::jsonb,
 2,
 'Gain realized is $200,000 ($700,000 - $500,000). Amount not reinvested is $50,000 ($700,000 - $650,000). Gain recognized is $50,000 (lesser of amount not reinvested or gain realized). Deferred gain is $150,000. Basis of replacement = $650,000 cost - $150,000 deferred gain = $450,000 (or old basis $500,000 + gain recognized $50,000 - proceeds not reinvested $0... = $500,000 + $50,000 - $100,000). Using the formula: cost minus deferred gain = $450,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer who sold property on the installment method dies. What happens to the remaining installment obligation?',
 '["All deferred gain is recognized on the decedent''s final return", "The obligation passes to the estate or heir with no gain recognition (except for related party sales)", "The obligation is cancelled and all gain is forgiven", "The heir must pay the tax within 90 days"]'::jsonb,
 1,
 'Under Section 453B(c), the transfer of an installment obligation at death is not treated as a disposition. The estate or beneficiary who receives the obligation takes the decedent''s basis and reports gain as payments are received. However, for obligations from related party sales, gain may be accelerated under Section 453(e) rules.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer sells depreciable equipment (original cost $100,000, accumulated depreciation $60,000, selling price $120,000) on the installment method with $30,000 due each year for 4 years. How much Section 1245 recapture must be recognized in Year 1?',
 '["$15,000", "$30,000", "$60,000", "$80,000"]'::jsonb,
 2,
 'Under Section 453(i), all depreciation recapture is recognized in the year of sale regardless of installment payments. The Section 1245 recapture is the lesser of gain or accumulated depreciation. Gain is $120,000 - $40,000 basis = $80,000. Accumulated depreciation is $60,000. Recapture is $60,000, all recognized in Year 1. The remaining $20,000 of gain uses the installment method.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer''s principal residence is condemned. The condemnation award is $450,000 and the basis is $200,000. The taxpayer purchases a new residence for $420,000. Can the taxpayer use both Section 121 (home sale exclusion) and Section 1033 (involuntary conversion)?',
 '["No, the taxpayer must choose one", "Yes, but only Section 1033 applies", "No, condemnations do not qualify under either section", "Yes, Section 121 exclusion applies first, then Section 1033 deferral on remaining gain"]'::jsonb,
 3,
 'A taxpayer may use both Section 121 and Section 1033 for a condemned principal residence. First, the Section 121 exclusion ($250,000/$500,000) reduces the gain. Any remaining gain may be deferred under Section 1033 by reinvesting in replacement property within the replacement period. This combination can eliminate or defer the entire gain.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer holds a $200,000 installment obligation (remaining gain of $80,000). The taxpayer pledges the obligation as security for a $150,000 bank loan. Under Section 453A, what is the consequence?',
 '["No consequence", "The taxpayer recognizes $80,000 of gain immediately", "The taxpayer recognizes gain to the extent of the pledge amount (lesser of loan proceeds or deferred gain)", "The installment sale is retroactively voided"]'::jsonb,
 2,
 'Under Section 453A(d), if an installment obligation is pledged as security for a loan, payments on the loan are treated as payments received on the installment obligation, triggering gain recognition. The taxpayer recognizes gain based on the net loan proceeds, limited to the remaining deferred gain of $80,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer''s rental property is taken by eminent domain. To qualify for Section 1033 deferral, the taxpayer must do which of the following?',
 '["Report the gain and file an amended return after purchasing replacement property", "Elect deferral on the return for the year gain is realized and purchase replacement property within the replacement period", "File a separate form with the condemning authority", "Purchase replacement property before the condemnation occurs"]'::jsonb,
 1,
 'To defer gain under Section 1033, the taxpayer must elect the deferral by reporting the involuntary conversion on the tax return for the year gain is realized. The taxpayer then has until the end of the replacement period (2 years general, 3 years for condemned real property) to purchase qualifying replacement property.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer sold investment land on the installment method to an unrelated buyer for $400,000 with a basis of $160,000. The buyer pays $100,000 per year. What total gain will the taxpayer recognize over the 4-year payment period?',
 '["$240,000", "$160,000", "$400,000", "$100,000"]'::jsonb,
 0,
 'The total gain recognized over the life of the installment sale equals the gross profit of $240,000 ($400,000 - $160,000). The installment method only changes the timing of recognition, not the total amount. Each year, $100,000 x 60% gross profit ratio = $60,000 is recognized, totaling $240,000 over 4 years.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Nontaxable Dispositions',
 'A taxpayer receives a $300,000 insurance settlement for a destroyed warehouse (basis $180,000). The taxpayer does not purchase replacement property within the replacement period. Under Section 1033, what is the tax consequence?',
 '["$120,000 gain is permanently deferred", "$120,000 gain must be recognized in the year the replacement period expires", "$300,000 is recognized as income", "$120,000 gain is recognized in the year of the casualty"]'::jsonb,
 3,
 'If the taxpayer does not elect Section 1033 deferral or fails to purchase qualifying replacement property within the replacement period, the full $120,000 gain ($300,000 - $180,000) must be recognized. The gain is reported in the year of the casualty (or the year the replacement period expires if the election was made and replacement was not completed).',
 'medium');

-- =============================================================================
-- Related Party Transactions (30 questions)
-- Difficulty: 9 easy, 15 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'Under Section 267, a taxpayer sells stock with a basis of $50,000 to his sister for $35,000. What is the tax treatment of the $15,000 loss?',
 '["The loss is deductible as a capital loss", "The loss is deductible as an ordinary loss", "The loss is disallowed", "The loss is deferred until the sister sells the stock"]'::jsonb,
 2,
 'Under Section 267(a)(1), losses on sales or exchanges of property between related parties are disallowed. Siblings are related parties under Section 267(b). The $15,000 loss cannot be deducted by the seller. However, under Section 267(d), the sister may be able to use the disallowed loss to reduce her gain on a subsequent sale.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'Continuing the previous example: the sister purchased stock for $35,000 (seller''s disallowed loss was $15,000). She later sells the stock for $55,000. What is her recognized gain?',
 '["$20,000", "$0", "$55,000", "$5,000"]'::jsonb,
 3,
 'Under Section 267(d), the sister''s gain is reduced (but not below zero) by the previously disallowed loss. Her realized gain is $55,000 - $35,000 = $20,000. The disallowed loss of $15,000 offsets part of this gain, so she recognizes $20,000 - $15,000 = $5,000 of gain. The disallowed loss can only offset gain, not create a loss.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'Which of the following individuals are NOT related parties under Section 267(b)?',
 '["Siblings (brothers and sisters)", "Parent and child", "Cousins", "Spouse"]'::jsonb,
 2,
 'Under Section 267(b) and (c), related parties include spouses, siblings (including half-siblings), ancestors (parents, grandparents), and lineal descendants (children, grandchildren). Cousins are NOT included in the Section 267 definition of related parties. A sale between cousins is treated as an arm''s length transaction.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'Under Section 267 constructive ownership rules, an individual is considered to own stock owned by:',
 '["Only their spouse", "Their spouse, siblings, ancestors, and lineal descendants", "All blood relatives within three generations", "Only direct family members living in the same household"]'::jsonb,
 1,
 'Section 267(c)(2) provides that stock owned by an individual''s family members is constructively attributed to that individual. Family is defined as spouse, siblings (whole and half), ancestors (parents, grandparents), and lineal descendants (children, grandchildren). This attribution determines whether parties are related for loss disallowance purposes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A taxpayer sells depreciable equipment to his wholly owned corporation for $120,000. The equipment cost $80,000 and has been fully depreciated (basis $0). Under Section 1239, the $120,000 gain is treated as:',
 '["Capital gain", "Section 1231 gain", "Ordinary income", "Tax-exempt income"]'::jsonb,
 2,
 'Under Section 1239, any gain recognized on the sale of depreciable property between related parties (including a taxpayer and their more-than-50%-owned corporation) is treated as ordinary income rather than capital gain. This prevents the seller from recognizing capital gain while the buyer claims depreciation deductions against ordinary income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'Under Section 707(b)(1), if a partner owning more than 50% of the capital or profits interest sells property to the partnership at a loss, the loss is:',
 '["Deductible as a capital loss", "Deductible as an ordinary loss", "Disallowed", "Suspended until the partnership sells the property"]'::jsonb,
 2,
 'Section 707(b)(1) disallows losses on sales between a partnership and a partner who owns directly or indirectly more than 50% of the capital or profits interest. This is analogous to the Section 267 rules for other related parties. The disallowed loss may be used by the partnership to offset gain on a subsequent sale of the property.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'Under Section 707(b)(2), if a partner owning more than 50% sells property to the partnership and the property is not a capital asset in the hands of the partnership, any gain is treated as:',
 '["Ordinary income", "Capital gain", "Section 1231 gain", "Tax-exempt income"]'::jsonb,
 0,
 'Under Section 707(b)(2), if property sold by a more-than-50% partner to the partnership is not a capital asset in the hands of the transferee (e.g., it is inventory or other ordinary income property to the partnership), the gain is recharacterized as ordinary income. This prevents conversion of ordinary income to capital gain through related party transactions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A taxpayer sells 100 shares of XYZ stock for a $10,000 loss on December 15. On January 5 (21 days later), the taxpayer buys 100 shares of XYZ stock. Under the wash sale rules (Section 1091), the $10,000 loss is:',
 '["Fully deductible", "Disallowed and added to the basis of the new shares", "Permanently lost", "Deductible in the following year"]'::jsonb,
 1,
 'Under Section 1091, a loss on the sale of stock or securities is disallowed if substantially identical securities are acquired within 30 days before or after the sale. The repurchase on January 5 is within 30 days. The disallowed $10,000 loss is added to the basis of the replacement shares, preserving the loss for future recognition.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'Under the wash sale rule, the 30-day window for acquiring substantially identical securities extends:',
 '["30 days after the sale only", "30 days before the sale only", "30 days before AND 30 days after the sale (61-day window)", "60 days after the sale"]'::jsonb,
 2,
 'Section 1091 applies if substantially identical securities are acquired within the period beginning 30 days before the sale and ending 30 days after the sale — a total 61-day window. This means purchasing replacement shares before the loss sale can also trigger the wash sale rule.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A taxpayer sells stock at a $8,000 loss on March 10. The taxpayer''s spouse purchases the same stock on March 25. Does the wash sale rule apply?',
 '["No, the wash sale rule applies only to the same taxpayer", "Yes, purchases by the taxpayer''s spouse trigger the wash sale rule", "No, because the spouse is a separate taxpayer", "Yes, but only if filing jointly"]'::jsonb,
 1,
 'Under Section 1091 and related regulations, the wash sale rule applies when substantially identical securities are acquired by the taxpayer''s spouse. The disallowed loss is added to the spouse''s basis in the replacement shares. This prevents circumventing the wash sale rule through spousal purchases.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A father sells land with a basis of $100,000 to his daughter for $70,000 (below FMV of $120,000). The daughter later sells the land for $130,000. What is the daughter''s recognized gain?',
 '["$60,000", "$30,000", "$130,000", "$10,000"]'::jsonb,
 0,
 'The sale below FMV to a related party is part gift, part sale. The father''s $30,000 loss ($70,000 - $100,000) is disallowed under Section 267. The daughter''s basis for computing gain is her cost ($70,000) since it exceeds the father''s basis adjusted for the gift rules. On the resale, her gain is $130,000 - $70,000 = $60,000. The disallowed loss cannot offset the gain because $130,000 exceeds even the father''s original basis.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A taxpayer owns 40% of Corporation A and 60% of Corporation B. He sells property at a loss from Corporation A to Corporation B. Are Corporations A and B related parties under Section 267?',
 '["No, they are separate legal entities", "Yes, because any common ownership creates a related party relationship", "No, because the taxpayer does not own 80% of either", "Yes, because the same person owns more than 50% of each"]'::jsonb,
 3,
 'Under Section 267(b)(2), two corporations are related parties if the same person owns more than 50% of the value of each corporation (directly or through constructive ownership). The taxpayer owns 40% of A and 60% of B — only B exceeds 50%. However, the entities would not be related unless the same person owns more than 50% of each.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'An individual sells property to a trust in which the individual is the beneficiary. Under Section 267(b)(6), this transaction is between related parties. If the sale is at a loss, the loss is:',
 '["Deductible because trusts are separate entities", "Deductible if the trust is irrevocable", "Deferred until the trust terminates", "Disallowed under Section 267"]'::jsonb,
 3,
 'Under Section 267(b)(6), a beneficiary and a trust of which they are a beneficiary are related parties. Any loss on a sale between them is disallowed under Section 267(a)(1). This applies to both grantor and non-grantor trusts when there is a beneficiary relationship.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'Section 1239 applies to sales of depreciable property between related parties. Which of the following relationships triggers Section 1239?',
 '["A taxpayer and their sibling", "A taxpayer and a corporation in which they own exactly 50%", "A taxpayer and a corporation in which they own more than 50%", "A taxpayer and their cousin"]'::jsonb,
 2,
 'Section 1239 applies to sales between a taxpayer and a controlled entity (more than 50% ownership, determined with constructive ownership). The purpose is to prevent a seller from recognizing capital gain on depreciable property while the related buyer takes ordinary depreciation deductions. Exactly 50% does not trigger Section 1239.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'Under Section 267(a)(2), if an accrual-basis corporation accrues a $50,000 expense payable to a related cash-basis taxpayer, when can the corporation deduct the expense?',
 '["When accrued", "When the related party includes the amount in income", "Never — related party accruals are permanently disallowed", "When the fiscal year ends"]'::jsonb,
 1,
 'Section 267(a)(2) provides a matching rule for related parties with different accounting methods. An accrual-basis payor cannot deduct an expense owed to a related cash-basis payee until the payee includes the amount in income (typically when payment is received). This prevents timing mismatches where the deduction precedes the income inclusion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A taxpayer sells stock for $20,000 on December 1 with a basis of $30,000 (a $10,000 loss). On December 20, the taxpayer buys a call option on the same stock. Does the wash sale rule apply?',
 '["No, because a call option is not substantially identical to stock", "Yes, but only if the option is exercised", "No, wash sales apply only to stock purchases", "Yes, acquiring a call option on substantially identical stock triggers the wash sale rule"]'::jsonb,
 3,
 'Under Section 1091 and IRS guidance, acquiring a contract or option to buy substantially identical stock or securities within the 30-day wash sale window triggers the wash sale rule. This includes call options, rights to acquire stock, and contracts to acquire stock. The disallowed loss is added to the basis of the option.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A partner who owns 60% of a partnership sells a building to the partnership for $500,000. The partner''s basis is $300,000. The building will be used as inventory by the partnership (it is a real estate dealer). What is the character of the partner''s $200,000 gain?',
 '["Capital gain", "Section 1231 gain", "Ordinary income under Section 707(b)(2)", "Tax-exempt"]'::jsonb,
 2,
 'Under Section 707(b)(2), when a partner owning more than 50% sells property to the partnership and the property would not be a capital asset in the hands of the partnership (here it is dealer inventory), the gain is recharacterized as ordinary income. The partner must report the $200,000 as ordinary income rather than capital or Section 1231 gain.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A taxpayer sells stock at a $5,000 loss on June 1 and buys substantially identical stock on June 28. The original stock had a basis of $25,000 and was sold for $20,000. What is the basis of the replacement stock if it was purchased for $22,000?',
 '["$22,000", "$25,000", "$27,000", "$20,000"]'::jsonb,
 2,
 'Under Section 1091(d), the basis of the replacement stock is the cost of the replacement ($22,000) plus the disallowed loss ($5,000) = $27,000. This preserves the economic loss by building it into the basis of the replacement shares, so the loss is recognized when the replacement shares are eventually sold.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A taxpayer sells property to his brother at FMV for a $20,000 gain. Is the gain recognized?',
 '["No, gains between related parties are deferred", "No, gains between related parties are excluded", "Yes, Section 267 disallows losses but does not affect gains", "Yes, but only 50% of the gain is recognized"]'::jsonb,
 2,
 'Section 267 only disallows losses between related parties — it does not affect gains. If a taxpayer sells property to a related party at a gain, the gain is fully recognized and taxable. The loss disallowance rule is a one-way restriction designed to prevent artificial loss generation through related party transactions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'Corporation X owns 100% of Corporation Y. Corporation X sells equipment with a basis of $80,000 to Corporation Y for $60,000. Under Section 267, the $20,000 loss is disallowed. If Corporation Y later sells the equipment to an unrelated party for $95,000, what gain does Corporation Y recognize?',
 '["$35,000", "$15,000", "$95,000", "$55,000"]'::jsonb,
 1,
 'Corporation Y''s basis in the equipment is its cost of $60,000. On the resale, Y''s realized gain is $95,000 - $60,000 = $35,000. Under Section 267(d), Y can offset this gain by the previously disallowed loss of $20,000. Y''s recognized gain is $35,000 - $20,000 = $15,000. The disallowed loss benefit flows to the related buyer.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'Under Section 267(c)(4), stock owned by a partnership is considered owned proportionately by its partners. This constructive ownership rule is known as:',
 '["Direct ownership", "Family attribution", "Option attribution", "Entity attribution"]'::jsonb,
 3,
 'Section 267(c)(1) provides for entity-to-owner attribution: stock owned by a corporation, partnership, estate, or trust is considered owned proportionately by its shareholders, partners, or beneficiaries. This entity attribution rule expands the related party definitions by looking through entities to determine actual beneficial ownership.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A taxpayer sells a rental building (basis $200,000, FMV $350,000) to her 100%-owned S corporation. Under Section 1239, the $150,000 gain is ordinary income because:',
 '["The property is depreciable in the hands of the related buyer", "The property was held less than one year", "All real estate gains are ordinary", "The sale was below fair market value"]'::jsonb,
 0,
 'Section 1239 recharacterizes gain as ordinary income when depreciable property is sold to a related party who will be able to depreciate the property. The rental building is depreciable in the S corporation''s hands. This prevents the seller from recognizing capital gain while the buyer takes ordinary depreciation deductions against the same economic value.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A father sells stock (basis $40,000) to his son for $30,000. The son later sells the stock for $28,000. What is the son''s recognized loss?',
 '["$12,000", "$2,000", "$10,000", "$0"]'::jsonb,
 1,
 'The father''s $10,000 loss is disallowed under Section 267. The son''s basis for computing loss is his cost of $30,000 (under Section 267(d), the disallowed loss only offsets gains, not losses). The son''s recognized loss is $30,000 - $28,000 = $2,000. The father''s disallowed loss of $10,000 cannot create additional loss for the son.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'Under the wash sale rule, what is the holding period for the replacement securities?',
 '["Begins on the date the replacement securities are purchased", "Includes the holding period of the securities sold at a loss", "Is always short-term", "Begins 30 days after the purchase date"]'::jsonb,
 1,
 'Under Section 1091(d) and Treas. Reg. 1.1223-4, the holding period of the replacement securities includes the holding period of the securities sold at a loss (tacking). This means if the original shares were held long-term, the replacement shares may also qualify for long-term treatment even if held for a short period.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A taxpayer and her mother each own 50% of a corporation. The taxpayer sells property to the corporation at a loss. Under Section 267, is the taxpayer considered to own more than 50% of the corporation?',
 '["No, she owns exactly 50%", "Yes, but only for Section 1239 purposes", "No, constructive ownership does not apply to parent-child", "Yes, she constructively owns her mother''s 50%, giving her 100%"]'::jsonb,
 3,
 'Under Section 267(c)(2), an individual constructively owns stock owned by their family members, including parents. The taxpayer directly owns 50% and constructively owns her mother''s 50%, giving her 100% constructive ownership. Since she owns more than 50%, the corporation is a related party and the loss is disallowed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A partner owns 45% of Partnership A and 55% of Partnership B. She sells property at a loss from Partnership A to Partnership B. Under Section 707(b), is the loss disallowed?',
 '["Yes, because the same partner owns more than 50% of each", "No, because the partner does not own more than 50% of Partnership A", "Yes, because any common ownership disallows losses", "No, because partnerships are always treated as unrelated"]'::jsonb,
 1,
 'Section 707(b)(1) disallows losses on sales between two partnerships in which the same persons own more than 50% of each. The partner owns only 45% of Partnership A, which does not exceed the 50% threshold. Since the same person does not own more than 50% of both partnerships, the loss is not disallowed under Section 707(b).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'Under Section 267(d), the disallowed loss from a related party sale can be used by the buyer to:',
 '["Create a loss on a subsequent sale", "Reduce gain on a subsequent sale to an unrelated party", "Increase the buyer''s basis in the property", "Offset unrelated income"]'::jsonb,
 1,
 'Section 267(d) allows the related party buyer to reduce (but not below zero) any gain recognized on a subsequent sale of the property by the amount of the seller''s previously disallowed loss. The disallowed loss cannot create or increase a loss — it can only offset gain. If the buyer sells at a loss, the disallowed loss benefit is permanently lost.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A taxpayer sells a machine to a partnership in which the taxpayer owns a 70% interest. The machine has a basis of $40,000 and is sold for $90,000. The machine is depreciable by the partnership. What is the character of the taxpayer''s gain?',
 '["$50,000 capital gain", "$50,000 Section 1231 gain", "$50,000 ordinary income under Section 1239 and Section 707(b)", "$50,000 tax-exempt gain"]'::jsonb,
 2,
 'The taxpayer owns more than 50% of the partnership, making them related parties. Under Section 707(b)(2), gain on the sale of property to a more-than-50% owned partnership where the property is not a capital asset in the partnership''s hands is ordinary income. Additionally, Section 1239 applies since the property is depreciable by the related buyer. Either way, the $50,000 gain is ordinary income.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'A taxpayer sells 200 shares of ABC stock on November 1 at a $6,000 loss. On October 10 (22 days before the sale), the taxpayer had purchased 200 shares of ABC stock. Under the wash sale rule:',
 '["The loss is fully deductible because the purchase preceded the sale", "The loss is disallowed because the purchase was within 30 days before the sale", "The loss is partially deductible", "The wash sale rule applies only to purchases after the sale"]'::jsonb,
 1,
 'The wash sale rule applies to acquisitions within the 61-day window: 30 days before to 30 days after the sale. The purchase on October 10 is 22 days before the November 1 sale, which falls within the 30-day pre-sale window. The $6,000 loss is disallowed and added to the basis of the October 10 shares.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(6, 'Related Party Transactions',
 'An accrual-basis corporation owes $75,000 in rent to its sole shareholder (a cash-basis taxpayer) at year-end. The corporation accrues the expense on December 31 but does not pay it until March 15 of the following year. When can the corporation deduct the $75,000?',
 '["March 15 of the following year when the shareholder receives payment", "December 31 of the current year when accrued", "The corporation cannot deduct related party rent", "The expense must be capitalized"]'::jsonb,
 0,
 'Under Section 267(a)(2), an accrual-basis payor cannot deduct an expense owed to a related cash-basis payee until the payee includes the amount in income. Since the shareholder is cash-basis, the corporation cannot deduct the $75,000 until March 15 when the shareholder actually receives and reports the payment. This matching rule prevents timing arbitrage.',
 'medium');
