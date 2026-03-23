-- FAR cleanup batch 16 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q2315 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 54, paragraph 6, restricted fund balance represents amounts constrained by external parties such as creditors, grantors, or other governments, or by constitutional provisions or enabling legislation. Among the spendable categories, restricted is the most restrictive classification in the hierarchy.
Wrong (A): Committed fund balance is constrained by formal action of the government's highest decision-making authority, which is less restrictive than externally imposed restrictions because it can be removed by the same governing body.
Wrong (B): Assigned fund balance reflects amounts intended for a specific purpose by the governing body or a designated official, representing a lower level of constraint than either restricted or committed.
Wrong (D): Unassigned fund balance is the residual classification for the General Fund with no constraints, making it the least restrictive category in the GASB 54 hierarchy.$EXPL$,
  difficulty = 'easy'
WHERE id = 2315;

-- Q2316 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 54, paragraph 6, nonspendable fund balance includes amounts that are not in spendable form, such as inventories, prepaid items, and long-term receivables. The $500,000 of prepaid insurance and $1,200,000 of inventory total $1,700,000 classified as nonspendable because these resources cannot be spent in their current form.
Wrong (A): Restricted fund balance requires constraints imposed by external parties or enabling legislation, not simply a non-spendable form of the asset.
Wrong (B): Committed fund balance requires formal action by the government's highest decision-making authority to constrain resources for a specific purpose, which has not occurred here.
Wrong (D): Assigned fund balance represents amounts intended for a specific purpose, but prepaid items and inventory are classified as nonspendable because the constraint relates to their form, not their intended use.$EXPL$,
  difficulty = 'easy'
WHERE id = 2316;

-- Q2321 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 68, paragraphs 48-49, governments participating in cost-sharing multiple-employer defined benefit pension plans must report their proportionate share of the collective net pension liability and pension expense on their government-wide financial statements. The proportionate share is typically based on the employer's contributions relative to total contributions from all employers.
Wrong (A): Reporting only annual contributions as expense reflects a cash-basis approach that ignores the accrual-based requirements of GASB 68, which requires recognition of the full actuarially determined pension expense.
Wrong (C): Reporting the total plan liability as a single-employer plan would grossly overstate the government's obligation, as GASB 68 specifically requires proportionate allocation among participating employers.
Wrong (D): GASB 68 explicitly requires cost-sharing plan participants to recognize their proportionate share of the net pension liability, so claiming no liability is incorrect.$EXPL$,
  difficulty = 'hard'
WHERE id = 2321;

-- Q2326 [easy] topic: Employee Benefit Plans
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 715-30-25-1, the funded status of a defined benefit plan is recognized on the balance sheet as the difference between the projected benefit obligation and the fair value of plan assets. Here, PBO of $8,000,000 minus plan assets of $6,500,000 equals a $1,500,000 underfunded status, reported as a net pension liability.
Wrong (A): A net pension asset would exist only if plan assets exceeded the PBO, which is the opposite of the situation here where the plan is underfunded.
Wrong (B): Reporting $6,500,000 as a pension asset ignores the PBO entirely and does not reflect the funded status as required by ASC 715.
Wrong (C): Reporting the full $8,000,000 PBO as a liability ignores the offsetting plan assets, which must be netted against the obligation to determine funded status.$EXPL$,
  difficulty = 'easy'
WHERE id = 2326;

-- Q2334 [medium] topic: Employee Benefit Plans
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 715-30-35-3, prior service cost arising from a plan amendment is initially recognized in other comprehensive income (OCI) in the period of the amendment. It is subsequently amortized from accumulated OCI into net periodic pension cost over the remaining service period of employees expected to receive benefits under the amendment.
Wrong (A): Immediate expense recognition of the full $600,000 is incorrect because ASC 715 requires prior service cost to be recognized in OCI first and amortized systematically, not expensed immediately.
Wrong (B): While prior service cost is amortized into pension expense over time, the initial recognition occurs in OCI, not directly as a component of net periodic pension cost in the amendment period.
Wrong (D): A direct reduction of retained earnings would bypass both OCI and pension expense recognition, violating the systematic amortization approach required by ASC 715.$EXPL$,
  difficulty = 'medium'
WHERE id = 2334;

-- Q2337 [hard] topic: Employee Benefit Plans
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 715-30-35-92, a curtailment occurs when an event significantly reduces the expected years of future service or eliminates the accrual of defined benefits for a significant portion of employees. Unrecognized prior service cost associated with years of service no longer expected to be rendered must be recognized as a curtailment loss in the income statement.
Wrong (A): Waiting until plan termination is incorrect because ASC 715-30 requires immediate recognition of curtailment effects when the event occurs, not deferral until full termination.
Wrong (B): Reversing the $240,000 against OCI with no income statement effect ignores the curtailment loss recognition requirement, which accelerates prior service cost into income when future service is eliminated.
Wrong (D): A curtailment affects both the PBO and any unrecognized prior service cost, as the accelerated recognition of prior service cost is a core element of curtailment accounting under ASC 715-30.$EXPL$,
  difficulty = 'hard'
WHERE id = 2337;

-- Q2339 [medium] topic: Employee Benefit Plans
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 715-30-35-22, a decrease in the discount rate increases the present value of future benefit payments, raising the PBO. This change is classified as an actuarial loss and is recognized in other comprehensive income. It is subsequently amortized into pension expense only if the cumulative net actuarial gain or loss exceeds the corridor threshold.
Wrong (A): While the PBO does increase, actuarial losses from assumption changes are not immediately recognized in pension expense under ASC 715; they must flow through OCI first.
Wrong (B): Discount rate changes are applied retroactively to remeasure the PBO, not prospectively, so the obligation does change when the rate is updated.
Wrong (D): A lower discount rate increases the PBO (higher present value of future payments), it does not decrease it, and the adjustment goes to OCI, not pension expense.$EXPL$,
  difficulty = 'medium'
WHERE id = 2339;

-- Q2341 [medium] topic: Employee Benefit Plans
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 715-60-35-2, the accumulated postretirement benefit obligation (APBO) for other postretirement employee benefits is measured using expected future cost trends, including healthcare cost trend rates that project future medical cost increases. This is a key distinction from pension measurement, which does not incorporate healthcare trend assumptions.
Wrong (B): ASC 715-60-25-2 requires OPEB obligations to be recognized on the balance sheet at their funded status, just as pensions are under ASC 715-30. Off-balance-sheet treatment is not permitted.
Wrong (C): OPEB plans may or may not require employer contributions depending on plan design, but many employers contribute to OPEB plans or fund benefits on a pay-as-you-go basis.
Wrong (D): OPEB expense does include service cost as a component, along with interest cost, expected return on plan assets (if funded), and amortization of prior service cost and actuarial gains and losses.$EXPL$,
  difficulty = 'medium'
WHERE id = 2341;

-- Q2342 [easy] topic: Employee Benefit Plans
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 715-30-25-1, when plan assets exceed the projected benefit obligation, the plan is overfunded and the difference is reported as a noncurrent asset on the balance sheet. Here, $13,500,000 minus $12,000,000 equals a $1,500,000 overfunded status reported as a net pension asset.
Wrong (A): Under U.S. GAAP, there is no asset ceiling test that would prevent recognition of the overfunded amount. The full overfunded status is recognized as a noncurrent asset.
Wrong (B): The plan is not in balance because plan assets exceed the PBO by $1,500,000, so a net amount must be reported.
Wrong (C): The plan is overfunded, not underfunded, because plan assets of $13,500,000 exceed the PBO of $12,000,000.$EXPL$,
  difficulty = 'easy'
WHERE id = 2342;

-- Q2345 [easy] topic: Employee Benefit Plans
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 715-60-25-1, the funded status of an OPEB plan is recognized on the balance sheet. The APBO of $4,200,000 minus plan assets of $1,800,000 equals an underfunded status of $2,400,000, reported as a net postretirement benefit liability.
Wrong (A): Reporting the full $4,200,000 APBO ignores the offsetting plan assets, which must be netted to determine funded status under ASC 715-60.
Wrong (B): Reporting only the $1,800,000 as an asset ignores the APBO entirely and fails to reflect the plan's underfunded status.
Wrong (D): The $6,000,000 figure incorrectly adds the APBO and plan assets rather than computing the difference, which has no basis in the accounting guidance.$EXPL$,
  difficulty = 'easy'
WHERE id = 2345;

-- Q2346 [hard] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 715-30-35-5, the ending PBO is calculated as: $6,000,000 + $350,000 (service cost) + $300,000 (interest cost) - $200,000 (benefits paid) - $120,000 (actuarial gain) = $6,330,000. Ending plan assets are: $5,400,000 + $450,000 (actual return) + $500,000 (contributions) - $200,000 (benefits paid) = $6,150,000. Funded status = $6,150,000 - $6,330,000 = underfunded by $180,000.
Wrong (A): Underfunded by $600,000 is the beginning funded status, not the ending amount, and fails to account for the year's activity that improved the plan's position.
Wrong (B): Underfunded by $480,000 likely results from a computational error in applying the actuarial gain or omitting the employer contributions from the plan asset rollforward.
Wrong (D): Overfunded by $120,000 confuses the actuarial gain with the funded status, but the gain reduces the PBO rather than creating an overfunded position.$EXPL$,
  difficulty = 'hard'
WHERE id = 2346;

-- Q2347 [hard] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 715-30-35-5, the ending PBO is: $9,000,000 + $450,000 (service cost) + $360,000 (interest cost) - $300,000 (benefits paid) = $9,510,000. Ending plan assets are: $7,800,000 + $500,000 (actual return) + $600,000 (contributions) - $300,000 (benefits paid) = $8,600,000. Funded status = $8,600,000 - $9,510,000 = underfunded by $910,000.
Wrong (A): Underfunded by $610,000 likely results from double-counting the benefits paid deduction from the PBO or incorrectly including an additional offset not present in the data.
Wrong (B): Underfunded by $1,510,000 likely results from an error such as failing to credit employer contributions to plan assets or incorrectly adding interest cost to plan assets.
Wrong (D): Underfunded by $1,200,000 is the beginning funded status, not the ending amount, and ignores all current-year activity that reduced the underfunding.$EXPL$,
  difficulty = 'hard'
WHERE id = 2347;

-- Q2352 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under AICPA guidance and AU-C Section 800.A15, the modified cash basis of accounting permits modifications to the pure cash basis that have substantial support, such as capitalizing and depreciating long-lived assets, recording income taxes, and recording long-term debt. These modifications are considered acceptable because they bring the financial statements closer to accrual without fully converting to GAAP.
Wrong (A): Recording all accruals identical to GAAP would eliminate the distinction between modified cash basis and full accrual GAAP, making the framework essentially GAAP rather than a special purpose framework.
Wrong (C): Percentage-of-completion revenue recognition is a complex accrual method under ASC 606 that goes beyond the scope of acceptable modifications to the cash basis.
Wrong (D): Mark-to-market accounting for investments is a fair value measurement approach under ASC 320 that exceeds acceptable cash-basis modifications and would fundamentally alter the measurement basis.$EXPL$,
  difficulty = 'medium'
WHERE id = 2352;

-- Q2353 [easy] topic: Special Purpose Frameworks
-- Issues: unstructured, choice_cuing
UPDATE questions SET
  stem = $STEM$Under the income tax basis of accounting, when is revenue generally recognized?$STEM$,
  choices = '["When included in taxable income under the IRC","When the performance obligation is satisfied under GAAP","When cash is received from the customer","When an invoice is issued to the customer"]'::jsonb,
  explanation = $EXPL$Correct (A): Under the income tax basis special purpose framework, as described in AU-C Section 800.A14, revenue recognition follows the timing rules of the Internal Revenue Code. Revenue is recognized when it is included in or required to be included in taxable income, which may differ from both cash-basis and accrual-basis GAAP timing.
Wrong (B): Performance obligation satisfaction is the revenue recognition trigger under ASC 606 for GAAP financial statements, not for income tax basis statements.
Wrong (C): Cash receipt is the revenue trigger under the cash basis of accounting, but the income tax basis follows IRC provisions that may recognize revenue before or after cash receipt depending on the taxpayer's method.
Wrong (D): Invoice issuance does not determine revenue recognition under the IRC; tax rules focus on when income is realized and recognized under the applicable tax accounting method.$EXPL$,
  difficulty = 'easy'
WHERE id = 2353;

-- Q2354 [easy] topic: Special Purpose Frameworks
-- Issues: no_contrast, choice_cuing
UPDATE questions SET
  stem = $STEM$Prescott Engineering purchased equipment for $500,000 on January 1, Year 1. GAAP depreciation is straight-line over 10 years with no residual value. For tax purposes, the company uses MACRS 5-year depreciation (Year 1: 20%, Year 2: 32%). What is the tax-basis net book value at the end of Year 2?$STEM$,
  choices = '["$240,000","$400,000","$500,000","$340,000"]'::jsonb,
  explanation = $EXPL$Correct (A): Under IRC Section 168, MACRS 5-year depreciation applies rates of 20% ($100,000) in Year 1 and 32% ($160,000) in Year 2, totaling $260,000 of accumulated depreciation. The tax-basis net book value is $500,000 minus $260,000 = $240,000. GAAP straight-line under ASC 360-10-35-4 would yield $400,000 ($50,000 per year for two years).
Wrong (B): $400,000 is the GAAP net book value using straight-line depreciation ($500,000 minus two years at $50,000), not the tax-basis value that uses accelerated MACRS rates.
Wrong (C): $500,000 represents the original cost with no depreciation, which ignores both MACRS and straight-line depreciation entirely.
Wrong (D): $340,000 likely results from applying only the Year 2 MACRS rate of 32% ($160,000) without including the Year 1 depreciation of $100,000.$EXPL$,
  difficulty = 'easy'
WHERE id = 2354;

-- Q2356 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under AICPA guidance for tax-basis financial statements (AU-C Section 800.A14), the income statement presents all items as they appear on or relate to the tax return. Tax-exempt municipal bond interest, while excluded from taxable income under IRC Section 103, is still economic income of the entity and is reported as revenue on the tax-basis income statement, typically as a separately identified line item.
Wrong (B): Excluding the income entirely would understate the entity's economic activity and is inconsistent with the objective of presenting all financial activity through the lens of the tax return.
Wrong (C): Note disclosure only would fail to capture the $500,000 as part of the entity's operating results, which tax-basis statements are designed to present even for nontaxable items.
Wrong (D): A reconciling item between book and tax income is a concept used in tax provision computations under ASC 740, not in the presentation of tax-basis financial statements.$EXPL$,
  difficulty = 'medium'
WHERE id = 2356;

-- Q2361 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under AU-C Section 800.15, when reporting on financial statements prepared under a special purpose framework, the auditor's report must include an emphasis-of-matter paragraph that describes the framework, refers the reader to the note disclosing the basis of accounting, and states that the basis differs from GAAP. An unmodified opinion can still be expressed.
Wrong (A): The standard GAAP audit report must be modified for SPF engagements to alert users that the financial statements are prepared under a basis other than GAAP, as required by AU-C 800.
Wrong (B): A disclaimer of opinion is not required simply because the framework is not GAAP; special purpose frameworks are recognized as acceptable bases of accounting for which unmodified opinions can be issued.
Wrong (D): An adverse opinion would be appropriate only if the financial statements were purported to be GAAP but materially departed from it, not when they are properly presented under a recognized special purpose framework.$EXPL$,
  difficulty = 'medium'
WHERE id = 2361;

-- Q2369 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under the pure cash basis of accounting as described in AU-C Section 800.A14, the increase in net assets equals total cash received minus total cash disbursed: $2,400,000 minus $2,100,000 = $300,000. The restricted nature of the grant does not create a deferral because the cash basis recognizes all receipts when received regardless of donor restrictions.
Wrong (B): $2,400,000 represents total cash received but ignores the $2,100,000 in disbursements, which must be subtracted to determine the net change in assets.
Wrong (C): $1,600,000 appears to exclude the $800,000 restricted grant from receipts, but under the cash basis all cash received is recognized regardless of restrictions.
Wrong (D): $2,100,000 represents total cash disbursed, not the increase in net assets, and confuses outflows with the net change.$EXPL$,
  difficulty = 'medium'
WHERE id = 2369;

-- Q2370 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under the income tax basis of accounting (AU-C Section 800.A14), lease payments are recognized as expense following IRC rules. For tax purposes, operating lease payments are generally deductible when paid or accrued per the tax return, and there is no requirement to record right-of-use assets or lease liabilities as mandated under ASC 842 for GAAP.
Wrong (A): Lease expense is recognized when payments are made or accrued for tax purposes, not deferred until lease termination, as IRC Section 162 allows current deduction of ordinary business expenses including rent.
Wrong (B): Recording a liability for total future lease payments overstates the obligation and is not required under either the tax basis or GAAP; even ASC 842 records only the present value of lease payments.
Wrong (C): GAAP treatment under ASC 842 requires right-of-use assets and lease liabilities, but the tax basis follows IRC provisions that do not impose these recognition requirements.$EXPL$,
  difficulty = 'medium'
WHERE id = 2370;

-- Q2372 [easy] topic: Special Purpose Frameworks
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under AU-C Section 800.A21, financial statements prepared under any special purpose framework must include a note describing the significant accounting policies and the basis of accounting used, including how the framework differs from GAAP. This disclosure is essential for users to understand the measurement and recognition principles applied.
Wrong (B): A full reconciliation from SPF net income to GAAP net income is not required, although significant differences should be apparent from the policy disclosures and framework description.
Wrong (C): The note describes the framework used, not why GAAP was not followed; SPF financial statements are not deficient versions of GAAP statements but valid presentations under a different framework.
Wrong (D): Notes are required for SPF financial statements, as users need disclosure of the accounting framework and significant policies to properly interpret the statements.$EXPL$,
  difficulty = 'easy'
WHERE id = 2372;

-- Q2373 [hard] topic: Special Purpose Frameworks
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under the pure cash basis of accounting as described in AU-C Section 800.A14, only cash receipts and disbursements are recorded. The $1,000,000 loan proceeds are recorded as a cash receipt, but no corresponding liability is recognized because the pure cash basis does not record obligations or receivables. This is a recognized limitation of the pure cash basis framework.
Wrong (A): Classifying loan proceeds as revenue would misrepresent the nature of the transaction; even under the cash basis, borrowed funds are cash receipts, not revenue from operations.
Wrong (B): Recording both a cash receipt and a liability would be a modified cash basis or accrual treatment, not pure cash basis, which does not recognize liabilities on the balance sheet.
Wrong (D): The cash receipt of $1,000,000 must be recorded because the pure cash basis captures all cash transactions; failing to record it would understate the entity's cash position.$EXPL$,
  difficulty = 'hard'
WHERE id = 2373;

-- Q4724 [medium] topic: Conceptual Framework and Standards
-- Issues: unstructured, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under the Securities Exchange Act of 1934, Section 13(b), the SEC has statutory authority to prescribe accounting standards for public companies. In practice, per ASC 105-10-05-1, the SEC has delegated the standard-setting role to the FASB while retaining oversight authority, including the power to override or supplement FASB guidance through Staff Accounting Bulletins and Regulation S-X.
Wrong (A): The SEC has not rejected FASB standards; it generally accepts the FASB Accounting Standards Codification as the authoritative source of GAAP for public companies.
Wrong (C): While the AICPA historically set accounting standards through the APB and CAP, the SEC transferred its delegation to the FASB in 1973, not to the AICPA.
Wrong (D): The IASB sets International Financial Reporting Standards, not U.S. GAAP. The SEC has not delegated authority to the IASB, though it has considered IFRS convergence.$EXPL$,
  cognitive_level = 1,
  difficulty = 'medium'
WHERE id = 4724;

-- Q4752 [medium] topic: Accounting Changes and Error Corrections
-- Issues: unstructured, no_blooms
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 250-10-45-21, a change in reporting entity occurs when financial statements are effectively those of a different reporting entity than in prior periods. Consolidating a previously unconsolidated subsidiary changes the entities included in the financial statements, requiring retrospective application to all prior periods presented.
Wrong (A): Changing from LIFO to FIFO is a change in accounting principle under ASC 250-10-45-2, not a change in reporting entity, because the entity remains the same even though the measurement method changed.
Wrong (B): Revising a bad debt estimate is a change in accounting estimate under ASC 250-10-45-17, recognized prospectively in the period of change, not a change in reporting entity.
Wrong (C): Failure to capitalize a patent in a prior year is a correction of an error under ASC 250-10-45-23, requiring restatement of prior periods, but it does not constitute a change in reporting entity.$EXPL$,
  cognitive_level = 2,
  difficulty = 'medium'
WHERE id = 4752;

-- Q5248 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 87, paragraphs 18-20, governmental fund statements use the current financial resources measurement focus and modified accrual accounting, reporting only the $95,000 payment as an expenditure with no long-term lease liability. Government-wide statements use the economic resources measurement focus and full accrual, recognizing a right-of-use asset, amortization expense, interest expense, and a lease liability reduced by the principal portion of each payment.
Wrong (B): Governmental funds do not report long-term liabilities because the current financial resources measurement focus excludes obligations beyond the current period.
Wrong (C): Recording the $712,000 lease liability in governmental funds violates the modified accrual basis, and government-wide statements include both amortization and interest expense, not just amortization.
Wrong (D): Governmental funds do not defer lease payments as prepaid assets, and government-wide statements recognize the lease liability over the term rather than as an immediate expense.$EXPL$,
  difficulty = 'hard'
WHERE id = 5248;

-- Q5249 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 14 (as amended by GASB 61), paragraphs 53-54, the Foundation should be blended because its board is appointed entirely by the school board and it provides services almost exclusively to the district. The Transportation Authority should be discretely presented because it operates under independent governance serving multiple districts, failing the substantively-the-same test.
Wrong (A): Blending both entities ignores the Transportation Authority's independent governance and multi-district service, which disqualify it from blending under GASB 61.
Wrong (B): Discrete presentation for both ignores the Foundation's appointed board and exclusive service relationship, which meet the criteria for blending under GASB 14.
Wrong (C): This reverses the correct treatment; the Foundation meets blending criteria due to its appointed board and exclusive service, while the Transportation Authority's independent governance requires discrete presentation.$EXPL$,
  difficulty = 'hard'
WHERE id = 5249;

-- Q5252 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 34, paragraph 76, a governmental fund qualifies as major if any single financial statement element is at least 10% of the corresponding total for all funds of its category (governmental or enterprise) and at least 5% of the combined governmental and enterprise total. The capital projects fund's $9.2 million is 11.5% of the $80 million governmental total. With no enterprise funds, the combined total also equals $80 million, so the 5% threshold ($4 million) is also met.
Wrong (A): Capital projects funds are not categorically excluded from major fund status; any governmental fund can qualify as major if it meets the quantitative thresholds.
Wrong (C): The 10% threshold applies to the fund's own category (governmental or enterprise), not to government-wide total assets, which is a different reporting level.
Wrong (D): While a government may designate additional funds as major at its discretion, meeting the quantitative thresholds automatically qualifies a fund as major without requiring officer designation.$EXPL$,
  difficulty = 'medium'
WHERE id = 5252;

-- Q5254 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 75, paragraphs 137-140, a government with an irrevocable OPEB trust reports a net OPEB liability (total OPEB liability minus fiduciary net position) along with related deferred inflows and outflows. Without a trust, the government reports the total OPEB liability with no fiduciary net position offset, resulting in a significantly larger reported liability.
Wrong (B): Establishing a trust does not eliminate the OPEB liability; it reduces the reported net liability by the amount of fiduciary net position, but the total obligation remains.
Wrong (C): GASB 75 requires accrual-basis recognition of the OPEB obligation regardless of funding approach, so pay-as-you-go does not eliminate the liability from government-wide statements.
Wrong (D): The funding mechanism directly affects the reported liability because the fiduciary net position of a trust offsets the total OPEB liability, producing a smaller net amount.$EXPL$,
  difficulty = 'hard'
WHERE id = 5254;

-- Q5257 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 34, paragraph 33, net investment in capital assets equals capital assets net of depreciation ($42 million) minus outstanding capital-related debt ($28 million) plus unspent bond proceeds restricted for capital construction ($3 million), yielding $17 million. The unspent proceeds are added back because those resources have not yet been converted into capital assets.
Wrong (B): $14 million incorrectly omits the $3 million add-back for unspent bond proceeds, overstating the net debt attributable to existing capital assets.
Wrong (C): $42 million represents capital assets net of depreciation but ignores the outstanding debt that must be deducted to determine the government's equity in those assets.
Wrong (D): $24 million does not correspond to any valid calculation under the GASB 34 formula for net investment in capital assets.$EXPL$,
  difficulty = 'medium'
WHERE id = 5257;

-- Q5258 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 34, paragraph 92, proprietary funds (enterprise and internal service funds) use the economic resources measurement focus and full accrual basis of accounting, recognizing all assets, liabilities, revenues, and expenses regardless of when cash is received or paid.
Wrong (A): The current financial resources measurement focus applies to governmental funds (general, special revenue, capital projects, debt service, and permanent funds), not to proprietary funds.
Wrong (B): Modified accrual is an accounting basis, not a measurement focus, and it applies to governmental funds in combination with the current financial resources measurement focus.
Wrong (C): The cash basis measurement focus is not used by any fund type under GASB standards; it is associated with special purpose frameworks outside the governmental reporting model.$EXPL$,
  difficulty = 'easy'
WHERE id = 5258;

-- Q5260 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 77, paragraphs 4-7, governments must disclose tax abatement agreements including the program purpose, the gross dollar amount of taxes abated, and commitments made. The standard also requires disclosure of other governments' abatements that reduce the reporting government's tax revenue. GASB 77 treats abatements as revenue reductions, not expenditures.
Wrong (A): Reporting the abatement as an expenditure misclassifies the transaction; GASB 77 treats tax abatements as reductions of revenue, and it requires disclosure of other governments' abatements affecting the city.
Wrong (C): Reporting the $12 million total as a long-term liability is incorrect because tax abatements are disclosed, not recorded as liabilities, and GASB 77 requires annual disclosure rather than a single liability entry.
Wrong (D): GASB 77 requires quantitative disclosure of the dollar amounts abated, not merely a qualitative statement that an agreement exists.$EXPL$,
  difficulty = 'hard'
WHERE id = 5260;

-- Q5261 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 33, paragraphs 18-20, government-mandated nonexchange transactions are recognized when eligibility requirements are met and, under modified accrual, when resources are available. The program eligibility begins September 1, 2026, but the $1.5 million received February 1, 2027, falls outside the 60-day availability period ending February 28, so only $2.5 million is recognized in 2026.
Wrong (A): Recognizing $4 million on July 1 is premature because eligibility requirements (program start) are not met until September 1, and the availability criterion further limits recognition.
Wrong (B): Recognizing $2.5 million on August 15 uses the correct amount but the wrong date; revenue is recognized when eligibility is met (September 1), not when cash is received.
Wrong (C): Recognizing $4 million on September 1 satisfies the eligibility criterion but ignores the modified accrual availability requirement, which defers the $1.5 million received beyond the 60-day window.$EXPL$,
  difficulty = 'medium'
WHERE id = 5261;

-- Q5263 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 34, paragraph 8, management's discussion and analysis (MD&A) provides an objective, easily readable analysis of the government's financial activities based on currently known facts, decisions, or conditions. It serves as required supplementary information introducing the basic financial statements.
Wrong (A): Federal grant compliance reporting is addressed through the Single Audit and is presented separately, not in the MD&A section.
Wrong (C): Budget-to-actual comparisons are presented as required supplementary information for the general fund and major special revenue funds, but they are separate from the MD&A.
Wrong (D): Listing all accounting policies is the function of the summary of significant accounting policies note within the notes to the financial statements, not the MD&A.$EXPL$,
  difficulty = 'easy'
WHERE id = 5263;

-- Q5264 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 34, paragraphs 87-88, the debt service fund reports bond premiums received as other financing sources and records interest payments as expenditures under modified accrual. Government-wide statements add the $300,000 premium to the bonds payable carrying amount ($10.3 million) and amortize it as a reduction of interest expense over the bond term using full accrual accounting.
Wrong (A): Governmental funds under modified accrual do not amortize premiums using the effective interest method; they recognize premiums as other financing sources in the period received.
Wrong (B): The debt service fund does not record the premium as a reduction of bonds payable; it records the premium as an other financing source, while bonds payable are reported only in government-wide statements.
Wrong (D): The debt service fund does not capitalize the premium as a long-term asset, and government-wide statements amortize it over the bond term rather than expensing it immediately.$EXPL$,
  difficulty = 'medium'
WHERE id = 5264;

-- Q5265 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 68, paragraphs 28-32, pension expense on government-wide statements is actuarially determined and often differs from the cash contribution. When the contribution ($3.2 million) is less than recognized expense ($4.1 million), the $900,000 difference increases the net pension liability because the government has not fully funded the cost recognized in the current period.
Wrong (A): The $900,000 difference does not reduce restricted net position; it affects the net pension liability on the statement of net position, not a restriction classification.
Wrong (B): While deferred outflows and inflows of resources exist in GASB 68 pension accounting, the excess of expense over contributions directly increases the net pension liability rather than being eliminated through deferred items.
Wrong (C): Reporting only the $3.2 million contribution as pension expense follows a cash-basis approach that violates GASB 68's requirement for accrual-based pension expense recognition.$EXPL$,
  difficulty = 'medium'
WHERE id = 5265;

-- Q5266 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 24, paragraph 5, when a government acts as a pass-through entity with administrative involvement or discretion over fund distribution, it must report the pass-through amount as both revenue and expenditure, resulting in gross reporting. The state recognizes $4.5 million in federal grant revenue and $4.5 million in grant expenditures.
Wrong (B): Excluding the $4.5 million pass-through would be appropriate only if the state were acting as a mere cash conduit with no administrative involvement, which is not the case here.
Wrong (C): Reporting the full $6 million as revenue with a contra-revenue reduction is not the prescribed treatment; GASB 24 requires gross presentation of both revenue and expenditure for the pass-through portion.
Wrong (D): Reporting the $4.5 million as a liability is incorrect because the pass-through is recognized as revenue and expenditure simultaneously, not as a deferred liability pending eligible costs.$EXPL$,
  difficulty = 'medium'
WHERE id = 5266;

-- Q5268 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 62, paragraphs 81-82, corrections of errors in previously issued financial statements require restatement of the beginning net position of the earliest period presented and revision of any comparative-period statements displayed. The $1.4 million adjustment flows through beginning net position, not current-year expense.
Wrong (A): Recording the $1.4 million as current-year depreciation expense would overstate 2026 expenses and fail to correct the periods (2023-2024) where the error originated.
Wrong (B): Reporting the correction as a special item misclassifies it; special items are unusual or infrequent transactions within management's control, not corrections of prior-period errors.
Wrong (C): Disclosure-only treatment is insufficient for a material error; GASB 62 requires restatement of beginning net position to correct the financial statements.$EXPL$,
  difficulty = 'medium'
WHERE id = 5268;

-- Q5270 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 84, paragraph 11, an investment trust fund reports the external portion of investment pools operated by the sponsoring government on behalf of legally separate entities that participate in the pool. Only the external participants' share is reported in the trust fund.
Wrong (B): A government's own investment portfolio is reported within its participating fund, not in an investment trust fund, which is reserved for external participants' shares.
Wrong (C): Bond proceeds held pending disbursement for capital projects are reported in a capital projects fund, not an investment trust fund.
Wrong (D): Pension contributions invested for employee benefits are reported in a pension trust fund, which is a different fiduciary fund type from an investment trust fund.$EXPL$,
  difficulty = 'easy'
WHERE id = 5270;

-- Q5272 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 33, paragraph 15, derived tax revenues such as sales taxes are recognized in the period of the underlying exchange transaction. Under modified accrual, revenue must also be available, meaning collected within the availability period. The December 2026 sales generated the $5.2 million, and the January 28 receipt falls within the 60-day availability window, so the full $53.2 million is recognized in 2026.
Wrong (A): Requiring cash receipt before year-end ignores the availability period extension, which allows recognition of amounts received shortly after year-end if they relate to current-period transactions.
Wrong (B): The $5.2 million relates to December 2026 sales transactions, not a different fiscal year, and the January receipt falls within the availability period.
Wrong (C): While the underlying transaction criterion is correct, this answer omits the availability requirement under modified accrual that must also be satisfied for fund-level recognition.$EXPL$,
  difficulty = 'medium'
WHERE id = 5272;

-- Q5273 [medium] topic: Governmental Accounting
-- Issues: unstructured, choice_cuing
UPDATE questions SET
  stem = $STEM$A city's finance director reports fund balance using nonspendable, restricted, committed, assigned, and unassigned categories. A council member asks why the term "unrestricted" does not appear. Which statement best explains the terminology difference?$STEM$,
  choices = '["GASB 54 replaced the reserved/unreserved framework with five categories; unrestricted applies only to net position","All governmental fund balance is considered restricted under GASB 54","Unrestricted should replace unassigned in the fund balance section","GASB 54 uses unrestricted only for fiduciary fund net position"]'::jsonb,
  explanation = $EXPL$Correct (A): Under GASB Statement No. 54, paragraph 5, governmental fund balance uses five specific classifications: nonspendable, restricted, committed, assigned, and unassigned. The term "unrestricted" is reserved for net position reporting on government-wide and proprietary fund statements under GASB 34, not for governmental fund balance. GASB 54 replaced the older reserved/unreserved/designated framework.
Wrong (B): Not all governmental fund balance is restricted; GASB 54 provides five distinct categories ranging from nonspendable to unassigned, with most General Fund balances classified as unassigned.
Wrong (C): Unrestricted and unassigned are not interchangeable terms; they belong to different reporting frameworks with distinct definitions and measurement contexts.
Wrong (D): Fiduciary funds report fiduciary net position, not unrestricted net position; the unrestricted category applies to government-wide and proprietary fund statements.$EXPL$,
  difficulty = 'medium'
WHERE id = 5273;

-- Q5337 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 14 (as amended by GASB 61), paragraph 53, a component unit should be blended when the governing body is substantively the same as the primary government and there is a financial benefit or burden relationship. The city council appoints and can remove all RIA board members (substantively the same), and the city backs RIA's bonds (financial burden), satisfying both blending criteria.
Wrong (B): Legal separation alone does not mandate discrete presentation; GASB 14 evaluates the substantive relationship between governing bodies and the financial interdependence, which here supports blending.
Wrong (C): Board appointment alone is insufficient for blending; GASB 61 also requires either a financial benefit/burden relationship or that the component unit provides services almost entirely to the primary government.
Wrong (D): Tax-increment revenues are governmental resources generated through the city's taxing authority, and discrete presentation would be inappropriate given the substantively-the-same governing body and financial burden relationship.$EXPL$,
  difficulty = 'hard'
WHERE id = 5337;

-- Q5340 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 54, paragraph 10, committed fund balance represents resources constrained by formal action of the government's highest level of decision-making authority. A city council resolution qualifies as such formal action, and the commitment can only be removed or modified by the same level of authority through a subsequent formal action.
Wrong (B): Restricted fund balance requires externally imposed constraints from creditors, grantors, or laws of other governments under GASB 54, paragraph 8, not internal governing body actions.
Wrong (C): The absence of purchase orders does not prevent classification as committed; the commitment is established by the council's formal action, not by procurement activity.
Wrong (D): Assigned fund balance reflects intended use established by a body or official authorized by the governing body under GASB 54, paragraph 13, representing a lower level of constraint than a formal council resolution.$EXPL$,
  difficulty = 'medium'
WHERE id = 5340;

-- Q5342 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB 68, paragraphs 28-29, the single-employer plan reports a net pension liability of $4,300,000 ($18,500,000 total pension liability minus $14,200,000 plan fiduciary net position). Under paragraph 48, the cost-sharing plan requires reporting the proportionate share: $2,800,000,000 times 0.42% equals $11,760,000. Both amounts are reported on the statement of net position.
Wrong (A): Reporting total pension liabilities without netting against fiduciary net position would overstate the single-employer plan obligation and is inconsistent with GASB 68's net liability approach.
Wrong (B): GASB 68 explicitly requires cost-sharing plan participants to recognize their proportionate share of the net pension liability on the face of the financial statements, not just the single-employer plan.
Wrong (D): Combining both plans into a single calculation based on funded ratios and payroll has no basis in GASB 68; each plan type follows its own measurement and recognition requirements.$EXPL$,
  difficulty = 'hard'
WHERE id = 5342;

-- Q5344 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 34, paragraph 33, net investment in capital assets equals capital assets net of depreciation ($125M minus $48M = $77M) minus outstanding capital-related debt adjusted for unspent proceeds ($62M minus $8.5M = $53.5M) plus deferred outflows on refunding ($1.2M), totaling $77M minus $53.5M plus $1.2M = $24,700,000.
Wrong (B): $15,000,000 results from computing $77M minus $62M without adjusting for unspent bond proceeds or the deferred amount on refunding.
Wrong (C): $23,500,000 likely adds back the unspent proceeds but omits the deferred amount on refunding, which should be included as a deferred outflow in the calculation.
Wrong (D): $16,200,000 may result from including only the deferred refunding amount without properly adjusting for unspent bond proceeds in the capital-related debt calculation.$EXPL$,
  difficulty = 'medium'
WHERE id = 5344;

-- Q5348 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 34, paragraphs 48-52, program revenues include charges for services and operating or capital grants directly associated with specific functions. The parking meter revenue ($1,100,000) is a charge for services and the federal highway grant ($5,200,000) is a capital grant, totaling $6,300,000 in program revenues.
Wrong (A): $41,590,000 incorrectly includes all revenue items as program revenues, but property taxes, state-shared revenues, and investment earnings are general revenues under GASB 34.
Wrong (B): $35,290,000 incorrectly includes the state-shared sales tax and investment earnings as program revenues when they are classified as general revenues.
Wrong (C): $13,190,000 incorrectly adds the $6,400,000 state-shared sales tax to program revenues, but unrestricted intergovernmental revenues are classified as general revenues under GASB 34.$EXPL$,
  difficulty = 'medium'
WHERE id = 5348;

-- Q5350 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 68, paragraphs 33-36, differences between projected and actual investment earnings ($8.2M minus $6.5M = $1.7M gain) are deferred and amortized over a closed 5-year period. Changes in actuarial assumptions ($900,000 liability increase) are recognized as deferred inflows or outflows and amortized over the average remaining service life of plan members.
Wrong (A): Immediate full recognition of both items violates GASB 68's systematic deferral and amortization approach, which smooths the impact on pension expense over time.
Wrong (B): While the investment gain is correctly deferred over 5 years, the assumption change is not recognized immediately; it is also deferred and amortized over the average remaining service life.
Wrong (D): Both amounts affect pension expense recognition through systematic amortization, not merely disclosure in required supplementary information.$EXPL$,
  difficulty = 'medium'
WHERE id = 5350;

-- Q5351 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 34, paragraph 62, the reconciliation removes capital outlay qualifying for capitalization ($5,100,000) from expenditures and adds it to capital assets. The $1,300,000 maintenance remains an expense in both presentations. Depreciation of $4,800,000 is added to government-wide expenses. Net effect: $5,100,000 minus $4,800,000 = $300,000 increase in change in net position.
Wrong (A): The $1,600,000 incorrectly removes the full $6,400,000 capital outlay from expenditures, but only the $5,100,000 qualifying as capital assets is reclassified; the $1,300,000 maintenance remains an expense.
Wrong (C): Recording only depreciation without the offsetting capital asset reclassification ignores the removal of capital outlay from fund-level expenditures in the reconciliation.
Wrong (D): The $5,100,000 represents only the capitalization adjustment without netting the $4,800,000 depreciation expense that is added to government-wide expenses.$EXPL$,
  difficulty = 'medium'
WHERE id = 5351;

-- Q5352 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 54, paragraph 5, fund balance in governmental funds is classified into five categories in order of constraint: nonspendable, restricted, committed, assigned, and unassigned. This framework replaced the previous reserved/unreserved/designated classification system.
Wrong (B): The reserved, unreserved, and designated classifications were the pre-GASB 54 framework superseded to provide more meaningful and consistent fund balance reporting.
Wrong (C): Restricted/unrestricted terminology applies to net position in government-wide and proprietary fund statements, not to governmental fund balance classifications under GASB 54.
Wrong (D): While some of these terms overlap with GASB 54 categories, replacing nonspendable with invested in capital assets conflates fund balance categories with net position components reported on the government-wide statement.$EXPL$,
  difficulty = 'easy'
WHERE id = 5352;

-- Q5353 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 34, paragraph 67, proprietary funds consist of enterprise funds, which account for business-type activities provided to the general public, and internal service funds, which provide services to other departments or governments on a cost-reimbursement basis.
Wrong (A): Special revenue funds and capital projects funds are governmental fund types under GASB 34, not proprietary funds.
Wrong (B): Agency funds and investment trust funds are fiduciary fund types under GASB 84, not proprietary funds.
Wrong (C): The general fund and debt service funds are governmental fund types that use the current financial resources measurement focus, unlike proprietary funds which use the economic resources measurement focus.$EXPL$,
  difficulty = 'easy'
WHERE id = 5353;

-- Q5355 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 49, paragraph 19, when a government cannot determine a single best estimate of a pollution remediation obligation and no amount within the estimated range is more likely than any other, the minimum amount of the range ($3,200,000) is recognized as a liability. The compliance order from the state agency establishes the obligating event triggering recognition.
Wrong (A): Recognizing the maximum amount ($5,800,000) is not supported by GASB 49, which requires the minimum of the range when no single amount is more likely, not the maximum.
Wrong (B): The midpoint approach ($4,500,000) is not permitted under GASB 49; the standard follows the minimum-of-the-range principle consistent with GASB guidance for estimated liabilities.
Wrong (D): Deferring recognition until costs are incurred violates the accrual basis required for government-wide statements; the compliance order and cost estimate trigger recognition of the liability.$EXPL$,
  difficulty = 'hard'
WHERE id = 5355;

-- Q5357 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 34, paragraph 106, fiduciary funds use the economic resources measurement focus and the accrual basis of accounting, recognizing revenues when earned and expenses when incurred regardless of when cash is exchanged.
Wrong (A): Modified accrual is the basis used by governmental funds (general, special revenue, capital projects, debt service, and permanent funds), not fiduciary funds.
Wrong (B): The cash basis is not used by any fund type under GASB standards; it is associated with special purpose frameworks outside the governmental reporting model.
Wrong (C): The budgetary basis is used for budget-to-actual comparisons in required supplementary information, not as the accounting basis for fiduciary fund financial statements.$EXPL$,
  difficulty = 'easy'
WHERE id = 5357;
