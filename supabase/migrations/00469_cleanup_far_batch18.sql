-- FAR cleanup batch 18 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q5442 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB 34, paragraph 48, charges for services include revenues from exchange or exchange-like transactions and are classified as program revenues on the statement of activities. Admission fees charged by a swimming pool directly relate to the recreation function and offset that function''s expenses when calculating net expense.
Wrong (A): General revenues include items like property taxes and unrestricted grants that are not tied to a specific function. Admission fees are directly linked to the recreation program and thus qualify as program revenues, not general revenues.
Wrong (C): Miscellaneous revenue is a subcategory of general revenues for items not easily classified elsewhere. Charges for services have their own specific program revenue classification under GASB 34.
Wrong (D): Interfund transfers involve movements between funds within the same government. Admission fees collected from the public are external exchange transactions, not interfund transfers.$EXPL$,
  difficulty = 'medium'
WHERE id = 5442;

-- Q5443 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB 68, paragraph 57, employer contributions made after the measurement date of the net pension liability but before the end of the reporting period are reported as deferred outflows of resources. These amounts will reduce the net pension liability in the subsequent measurement period.
Wrong (A): Contributions made after the measurement date cannot be recognized as pension expense in the current period because the pension liability is measured as of the earlier measurement date, not the reporting date.
Wrong (B): The contribution does not directly reduce the net pension liability on the reporting date because the liability is fixed at the measurement date. The contribution is instead deferred until the next measurement cycle.
Wrong (D): Contributions made before the reporting date are not excluded from the financial statements. GASB 68 specifically requires recognition as deferred outflows rather than note disclosure only.$EXPL$,
  difficulty = 'medium'
WHERE id = 5443;

-- Q5444 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB 54, paragraph 10, committed fund balance requires formal action by the government''s highest level of decision-making authority, typically the governing body such as a city council or county board. The commitment must be made before fiscal year-end and can only be removed by the same authority through the same type of formal action.
Wrong (B): A finance director is an administrative official who lacks the authority to establish committed fund balance. Administrative actions can establish assigned fund balance, but committed requires the governing body.
Wrong (C): Department heads operate at an administrative level below the governing body and cannot commit fund balance through operational decisions.
Wrong (D): Individual elected officials do not constitute the highest level of decision-making authority. The governing body as a whole must take formal action, such as passing a resolution or ordinance.$EXPL$,
  difficulty = 'easy'
WHERE id = 5444;

-- Q5446 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB 34, paragraph 130, governments must present budgetary comparison schedules for the general fund and each major special revenue fund that has a legally adopted annual budget. The comparison shows original budget, final budget, and actual amounts on the budgetary basis.
Wrong (A): Enterprise funds are proprietary funds and are not required to present budgetary comparisons as required supplementary information, even if they have legally adopted budgets.
Wrong (B): Capital projects funds are not automatically required to present budgetary comparisons. The requirement applies specifically to the general fund and major special revenue funds with legally adopted budgets.
Wrong (D): There is no $5 million threshold for debt service fund budgetary reporting. The budgetary comparison requirement applies to the general fund and major special revenue funds, not to debt service funds based on outstanding debt levels.$EXPL$,
  difficulty = 'easy'
WHERE id = 5446;

-- Q5447 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB 87, paragraph 16, a short-term lease has a maximum possible term of 12 months or less, including any options to extend that are reasonably certain to be exercised. Because the 3-year extension is reasonably certain, the total lease term is 5 years, far exceeding the 12-month threshold. The city must recognize a lease liability and intangible right-to-use asset.
Wrong (B): GASB 87 does not use the initial noncancellable period alone to determine eligibility for the short-term exemption. Extension options that are reasonably certain must be included when calculating the maximum possible term.
Wrong (C): GASB 87 does not provide a blanket exclusion for equipment leases based on materiality or asset type. The short-term exemption is based solely on the maximum possible term, not on the nature of the leased asset.
Wrong (D): GASB 87 did not eliminate all short-term lease exemptions. The standard explicitly provides a short-term exemption for leases with a maximum possible term of 12 months or less.$EXPL$,
  difficulty = 'hard'
WHERE id = 5447;

-- Q5448 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB 34, paragraph 100, capital contributions from developers and other external sources are reported separately after nonoperating revenues and expenses on the proprietary fund statement of revenues, expenses, and changes in net position. The infrastructure is capitalized at fair value upon dedication.
Wrong (A): Capital contributions are not operating revenues. Operating revenues arise from the fund''s principal ongoing operations, such as charges for water service, not from one-time infrastructure dedications.
Wrong (C): Contributed infrastructure is not recorded as a reduction of construction costs. The asset is capitalized at fair value, and the contribution is recognized as a capital contribution, a distinct line item.
Wrong (D): Contributed capital assets are not deferred inflows amortized over useful life. They are recognized as capital contributions at the point of dedication, reflecting the immediate transfer of resources to the government.$EXPL$,
  difficulty = 'medium'
WHERE id = 5448;

-- Q5449 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB 34, paragraph 92, proprietary funds use the economic resources measurement focus combined with the accrual basis of accounting. All assets, deferred outflows, liabilities, deferred inflows, revenues, and expenses are recognized regardless of when cash is received or paid.
Wrong (A): The current financial resources measurement focus is used by governmental funds such as the general fund and special revenue funds, not by proprietary funds like enterprise and internal service funds.
Wrong (B): Modified accrual is an accounting basis, not a measurement focus. It is paired with the current financial resources measurement focus in governmental fund statements, not in proprietary fund statements.
Wrong (C): The cash basis is not used for proprietary fund financial statements under GASB standards. Proprietary funds follow full accrual accounting, recognizing economic events when they occur rather than when cash changes hands.$EXPL$,
  difficulty = 'easy'
WHERE id = 5449;

-- Q5450 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB 54, paragraph 18, when both restricted and unrestricted resources are available for an expenditure, restricted resources are considered spent first. The $600,000 of qualifying public safety expenditures reduces the restricted balance from $800,000 to $200,000 before any unrestricted resources are consumed.
Wrong (B): GASB 54 presumes that the most constrained resources are consumed first. Spending unassigned resources before restricted resources would contradict the default spending order and potentially violate the purpose restrictions on those funds.
Wrong (C): Proportional allocation across fund balance categories is not the default approach under GASB 54. The standard establishes a hierarchical spending order, not a pro-rata distribution.
Wrong (D): Committed resources are not spent first when restricted resources are available. The default order is restricted first, then committed, assigned, and finally unassigned.$EXPL$,
  difficulty = 'medium'
WHERE id = 5450;

-- Q5451 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB 14, paragraph 21 (as amended by GASB 61), financial accountability exists when the primary government appoints a voting majority of the component unit''s governing board and either can impose its will on the entity or there is a potential for financial benefit or burden. Both conditions must be present.
Wrong (A): Operating within the same geographic boundary does not establish financial accountability. Many legally separate entities share geographic boundaries without any accountability relationship under GASB 14.
Wrong (B): Receiving operational funding from the general fund alone does not create financial accountability. The board appointment criterion must be met in addition to the benefit/burden or imposition of will test.
Wrong (D): Creation through enabling legislation and sharing a fiscal year-end are not sufficient to establish financial accountability. Without board appointment authority and benefit/burden or imposition of will, these factors alone do not trigger the component unit relationship.$EXPL$,
  difficulty = 'medium'
WHERE id = 5451;

-- Q5452 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB 33, paragraph 19, government-mandated nonexchange transactions occur when a higher-level government requires a lower-level government to perform a specific activity and provides funding. Revenue is recognized when all eligibility requirements are met and, for governmental funds, the resources are available.
Wrong (A): Voluntary nonexchange transactions involve willing participation by both parties, such as voluntary grants. When the state mandates the activity, the transaction is classified as government-mandated, not voluntary.
Wrong (B): Exchange transactions involve a direct exchange of approximately equal value. A mandated grant with spending restrictions is a nonexchange transaction because the grantor does not receive comparable direct benefits.
Wrong (C): Derived tax revenues arise from assessments imposed on exchange transactions, such as sales or income taxes. A mandated intergovernmental grant does not derive from an underlying exchange transaction.$EXPL$,
  difficulty = 'medium'
WHERE id = 5452;

-- Q31 [medium] topic: Financial Statements
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 210-10-45, total assets at year-end include all recognized assets regardless of acquisition timing. ROA equals $900,000 divided by $7.8 million, or 11.5%, down from $900,000 divided by $6.0 million, or 15.0%. The equipment contributed virtually no revenue in three days yet inflated the denominator, distorting the ratio''s measure of asset efficiency.
Wrong (A): ROA uses total assets in the denominator, not net assets. The $1.8 million loan creates a liability, but total assets still increase by $1.8 million for the equipment, and the liability does not offset the asset in the ROA calculation.
Wrong (C): ROA is a backward-looking ratio based on actual net income and reported total assets. Future revenue capacity from new equipment does not enter the numerator until revenue is actually earned.
Wrong (D): Loan-financed assets are included in total assets upon recognition. There is no revenue-generation prerequisite for asset recognition under U.S. GAAP.$EXPL$,
  difficulty = 'medium'
WHERE id = 31;

-- Q33 [hard] topic: Financial Statements
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 855-10-25-1, subsequent events are classified as recognized (Type I) or nonrecognized (Type II) based on whether the condition existed at the balance sheet date. The fire occurred in January 2026, so conditions causing the loss did not exist at December 31, 2025, making it a Type II event requiring disclosure only without adjustment to the financial statements.
Wrong (A): Not all events occurring before issuance require adjustment. Only Type I events, which provide evidence of conditions existing at the balance sheet date, warrant recognition. A post-balance-sheet fire is a new event, not evidence of a pre-existing condition.
Wrong (B): Events occurring after the balance sheet date cannot be ignored entirely if they are material. ASC 855 requires note disclosure for Type II events that are significant enough to affect users'' understanding of the financial statements.
Wrong (D): There is no basis for splitting a loss between fiscal years based on insurable periods. The fire is a single event that occurred entirely after the balance sheet date and is addressed through disclosure, not allocation.$EXPL$,
  difficulty = 'hard'
WHERE id = 33;

-- Q34 [medium] topic: Revenue Recognition
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 606-10-32-33, the $360,000 transaction price is allocated by relative standalone selling prices. The license receives $270,000 divided by $450,000 times $360,000, equaling $216,000, recognized at delivery. Support receives $180,000 divided by $450,000 times $360,000, equaling $144,000, of which $60,000 is recognized in 2025 (10 of 24 months). Total 2025 revenue is $276,000.
Wrong (A): The license is not the sole performance obligation. ASC 606 requires identification of distinct performance obligations and allocation of the transaction price to each, preventing any single obligation from absorbing the full amount.
Wrong (C): Standalone selling prices are used to determine the allocation ratio, not as direct amounts. The $20,000 discount must be distributed proportionally across all obligations, reducing each below its standalone price.
Wrong (D): Support revenue is recognized over time as the service is delivered, not deferred entirely until the end of the service term. Ten months of the 24-month support period fall in 2025.$EXPL$,
  difficulty = 'medium'
WHERE id = 34;

-- Q35 [medium] topic: Revenue Recognition
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 606-10-32-33, discounts are allocated proportionally by relative standalone selling prices unless specific criteria for allocating a discount to fewer obligations are met. Hardware receives $60,000 divided by $100,000 times $80,000, equaling $48,000, absorbing $12,000 of the discount. Services receive $40,000 divided by $100,000 times $80,000, equaling $32,000, absorbing $8,000.
Wrong (B): Equal allocation of the discount is not permitted under ASC 606. The relative standalone selling price method distributes the discount in proportion to each obligation''s standalone value, resulting in unequal dollar amounts.
Wrong (C): Allocating the entire discount to services would require meeting the criteria in ASC 606-10-32-36 through 32-38, including observable evidence that the discount relates entirely to that obligation. No such evidence is described here.
Wrong (D): Delivery sequence does not determine discount allocation. The allocation is based on relative standalone selling prices, not the timing of when each obligation is satisfied.$EXPL$,
  difficulty = 'medium'
WHERE id = 35;

-- Q37 [medium] topic: Inventory
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 330-10-30-1, inventory must be valued at historical cost using an acceptable cost flow assumption such as FIFO, LIFO, or weighted-average. Replacement cost is not a permitted primary inventory costing method and departs from the historical cost principle.
Wrong (A): Replacement cost is not an acceptable cost flow assumption under ASC 330. The permitted methods are FIFO, LIFO, and weighted-average, all of which are based on historical cost.
Wrong (C): While replacement cost plays a limited role in the lower of cost or market test for LIFO inventories as a ceiling and floor reference, it cannot serve as the standalone costing method for valuing inventory.
Wrong (D): U.S. GAAP does not require replacement cost as an inventory valuation method. The historical cost principle, modified by the lower of cost or NRV framework, governs inventory measurement.$EXPL$,
  difficulty = 'medium'
WHERE id = 37;

-- Q38 [medium] topic: Inventory
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 330-10-30, adding the LIFO reserve converts LIFO inventory to a FIFO approximation: $500,000 plus $80,000 equals $580,000. LIFO turnover is $2,000,000 divided by $500,000, or 4.0. FIFO-adjusted turnover is $2,000,000 divided by $580,000, or approximately 3.45, which is close to Cascade''s 3.39. LIFO understates inventory during inflation, artificially inflating turnover.
Wrong (A): LIFO and FIFO produce different turnover ratios when prices are rising because LIFO understates the inventory denominator, resulting in a higher turnover figure compared to FIFO.
Wrong (B): Subtracting the LIFO reserve would further reduce inventory and increase turnover. The reserve is added to LIFO inventory to approximate FIFO, not subtracted.
Wrong (D): A simplified LIFO-to-FIFO conversion adjusts only the inventory denominator. A full conversion would actually reduce COGS because higher-cost recent purchases would remain in inventory rather than flowing to cost of goods sold.$EXPL$,
  difficulty = 'medium'
WHERE id = 38;

-- Q39 [medium] topic: Fixed Assets
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 360-10-35, double-declining balance applies twice the straight-line rate to the declining book value. At 20% per year on $200,000, Year 3 net book value is $102,400. Fixed asset turnover equals $450,000 divided by $102,400, or 4.39. Under straight-line with $18,000 annual depreciation, Year 3 NBV would be $146,000, producing turnover of 3.08. DDB''s faster depreciation creates a lower denominator and higher turnover.
Wrong (A): Accumulated depreciation does not reduce revenue. The turnover ratio divides revenue by net book value of fixed assets, so DDB affects the denominator, not the numerator.
Wrong (B): While total depreciation over the asset''s life is the same under both methods, the annual amounts differ significantly, producing different period-by-period book values and therefore different turnover ratios.
Wrong (C): DDB reduces book value faster, which decreases the denominator. A smaller denominator produces a higher turnover ratio, not a lower one.$EXPL$,
  difficulty = 'medium'
WHERE id = 39;

-- Q40 [hard] topic: Fixed Assets
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 835-20-30, avoidable interest uses a two-tiered approach: specific borrowings first ($4 million times 8% equals $320,000), then excess expenditures at the weighted-average general borrowing rate ($6 million minus $4 million times 5% equals $100,000), totaling $420,000 in capitalizable interest. The CFO''s $320,000 understates the asset and overstates period interest expense by $100,000.
Wrong (A): ASC 835-20 does not limit capitalization to specific borrowings only. When qualifying expenditures exceed specific construction debt, general borrowings are included at the weighted-average rate to the extent of the excess.
Wrong (C): Expected return on plan assets is a pension concept under ASC 715, not related to interest capitalization. The avoidable interest calculation uses actual borrowing rates, not investment returns.
Wrong (D): General borrowings supplement, rather than replace, the specific borrowing rate. The 8% rate applies to the first $4 million of expenditures, and the 5% rate applies only to the remaining $2 million excess.$EXPL$,
  difficulty = 'hard'
WHERE id = 40;

-- Q41 [medium] topic: Intangible Assets
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 350-30-35, finite-lived intangible assets are amortized over their useful lives. The customer list amortizes at $600,000 divided by 5 years times 6/12, equaling $60,000. The patent amortizes at $400,000 divided by 8 years times 6/12, equaling $25,000. The $2.4 million goodwill is not amortized because ASC 350-20-35 treats it as indefinite-lived, subject to impairment testing only.
Wrong (B): Goodwill is not amortized under ASC 350-20-35 for public companies. It is tested for impairment annually or when triggering events occur, but it does not generate periodic amortization expense.
Wrong (C): Customer lists are finite-lived intangible assets with determinable useful lives and must be amortized. Only goodwill and certain other intangibles with indefinite lives avoid amortization.
Wrong (D): The $85,000 represents systematic amortization of finite-lived intangibles for six months, not an impairment charge. Impairment and amortization are distinct concepts under ASC 350.$EXPL$,
  difficulty = 'medium'
WHERE id = 41;

-- Q44 [medium] topic: Leases
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 842-20-25, both finance and operating lease classifications recognize a ROU asset and lease liability of $210,618 and produce identical total expense of $250,000 over five years. Finance leases front-load expense through declining-balance interest on the liability, while operating leases spread expense evenly at $50,000 per year.
Wrong (B): Accelerated depreciation and tax benefits do not reduce total lease expense. Total expense under both classifications equals total lease payments, and the tax treatment is separate from the accounting expense recognition pattern.
Wrong (C): ASC 842 did not eliminate the distinction between finance and operating leases. The classification affects the pattern of expense recognition, with finance leases producing higher expense in early years and lower expense in later years.
Wrong (D): Finance leases do not produce higher total expense. The interest component redistributes the same aggregate $250,000 across periods rather than adding cost beyond the lease payments.$EXPL$,
  difficulty = 'medium'
WHERE id = 44;

-- Q45 [medium] topic: Bonds and Debt
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 835-30-35, total interest expense equals cash interest paid plus discount amortization or minus premium amortization over the bond term. Series A total expense is $600,000 cash plus $40,000 discount, equaling $640,000. Series B total expense is $600,000 cash minus $40,000 premium, equaling $560,000. The discount signals the market demanded a higher effective yield than the stated rate.
Wrong (B): Total interest expense differs between the two series because the discount and premium adjust total cost above or below the stated rate cash payments. Identical stated rates and face values do not produce identical total expense when issuance prices differ.
Wrong (C): Premium amortization reduces interest expense below cash interest paid, not increases it. Series B''s total expense is lower than Series A''s because the premium offsets a portion of the cash interest.
Wrong (D): Annual expense differs under the effective interest method due to changing carrying amounts, and total expense also differs by the $80,000 spread between the discount and premium amounts.$EXPL$,
  difficulty = 'medium'
WHERE id = 45;

-- Q46 [hard] topic: Bonds and Debt
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 835-30-35-2, the effective interest method computes expense as the carrying amount times the market rate. Each period, the discount amortization increases the carrying amount, which produces progressively larger interest expense while the cash payment remains fixed at $15,000. This creates an accelerating amortization pattern that continues until the carrying amount reaches face value at maturity.
Wrong (A): The effective interest method applies a constant rate, not a constant dollar amount. Because the carrying amount grows each period, the dollar amount of interest expense increases even though the percentage rate is fixed.
Wrong (B): For a discount bond, the difference between interest expense and cash payment increases, not decreases, each period as the carrying amount rises closer to face value.
Wrong (C): The carrying amount of a discount bond increases over time as discount amortization is added, causing interest expense to grow. The carrying amount does not decline; it converges upward toward the face value at maturity.$EXPL$,
  difficulty = 'hard'
WHERE id = 46;

-- Q48 [medium] topic: Equity
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 505-30-30-3, the cost method debits treasury stock at the reacquisition cost of 5,000 shares times $18, equaling $90,000. Treasury stock is a contra-equity account that reduces total stockholders'' equity by $90,000. The $6 per-share premium is not a loss because transactions in an entity''s own equity are capital transactions that never flow through earnings.
Wrong (A): The cost method records treasury stock at the repurchase price of $18, not the original issue price of $12. The $90,000 debit reflects the full reacquisition cost.
Wrong (B): Gains and losses on transactions in a company''s own equity are not recognized on the income statement under U.S. GAAP. The premium paid over original issue price is an equity transaction, not an earnings event.
Wrong (D): The repurchase is not netted against additional paid-in capital under the cost method. Treasury stock is recorded as a separate contra-equity account at the full repurchase cost.$EXPL$,
  difficulty = 'medium'
WHERE id = 48;

-- Q49 [medium] topic: Income Taxes
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 740-10-25-20, excess tax depreciation creates future taxable amounts because the asset''s tax basis is lower than its book basis. The deferred tax liability equals $400,000 times 25%, or $100,000. The warranty accrual creates future deductible amounts because the expense is recognized for books but not yet deductible for tax, producing a deferred tax asset of $150,000 times 25%, or $37,500. The net position is a $62,500 deferred tax liability.
Wrong (A): Both differences do not create future deductible amounts. The depreciation difference creates future taxable amounts because book depreciation will exceed tax depreciation in later years, resulting in a liability, not an asset.
Wrong (B): Both differences do not increase future taxable income. The warranty accrual creates future deductible amounts when claims are paid, producing a deferred tax asset, not a liability.
Wrong (C): This choice reverses the classifications. The depreciation difference produces a liability from future taxable amounts, and the warranty produces an asset from future deductible amounts, not the reverse.$EXPL$,
  difficulty = 'medium'
WHERE id = 49;

-- Q50 [medium] topic: Income Taxes
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 740-10-30-5, a valuation allowance is required when it is more likely than not that some or all of a deferred tax asset will not be realized. Three years of cumulative losses constitute significant negative evidence, and the declining market segment and absence of taxable temporary differences provide no offsetting positive evidence to support realization.
Wrong (A): An indefinite carryforward period does not guarantee realization. The company must generate sufficient future taxable income to use the NOL carryforwards, and cumulative losses provide strong negative evidence against that expectation.
Wrong (C): The more-likely-than-not threshold (greater than 50%) is the standard for a valuation allowance, not the remote threshold. A valuation allowance is required well before realization becomes remote.
Wrong (D): A deferred tax asset from NOL carryforwards cannot be reclassified as a deferred tax liability. DTAs and DTLs arise from different types of temporary differences and have distinct economic meanings.$EXPL$,
  difficulty = 'medium'
WHERE id = 50;

-- Q52 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB 34, paragraphs 6 and 78, the dual reporting model uses different measurement focuses by design. Fund-level governmental statements employ modified accrual and current financial resources, recognizing expenditures rather than capitalizing assets. Government-wide statements use full accrual and economic resources, capitalizing infrastructure and reporting depreciation.
Wrong (B): Road construction is correctly reported as an expenditure in governmental fund statements under the current financial resources measurement focus. Capitalization occurs only in the government-wide statements.
Wrong (C): Government-wide statements correctly capitalize infrastructure under the economic resources measurement focus. GASB 34 requires capitalization of capital assets, including infrastructure, at the government-wide level.
Wrong (D): Fund type selection does not eliminate the measurement focus difference. The distinction between current financial resources and economic resources persists regardless of which governmental fund records the transaction.$EXPL$,
  difficulty = 'medium'
WHERE id = 52;

-- Q55 [hard] topic: Consolidations
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 805-20-30-1, full fair value NCI of $2.1 million produces goodwill of $8 million plus $2.1 million minus $9 million, equaling $1.1 million. Proportionate share NCI of $1.8 million produces goodwill of $8 million plus $1.8 million minus $9 million, equaling $800,000. The $300,000 difference represents goodwill attributable to NCI, exposing a larger asset to future impairment testing under ASC 350 without changing the 80/20 income allocation under ASC 810-10-45-15.
Wrong (A): Post-acquisition income allocation is based on ownership percentages under ASC 810-10-45-15, not on the NCI measurement method. The 80/20 split remains identical regardless of whether full fair value or proportionate share NCI is used.
Wrong (C): Total consolidated equity is not permanently higher because the additional goodwill attributable to NCI is offset by the higher NCI equity balance. The net effect on the parent''s equity is the same under both methods.
Wrong (D): U.S. GAAP permits both the full fair value and proportionate share methods for measuring NCI under ASC 805-20-30, so the comparison is valid and relevant for financial analysis.$EXPL$,
  difficulty = 'hard'
WHERE id = 55;

-- Q56 [medium] topic: Consolidations
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 810-10-45-1, all intercompany balances and transactions must be eliminated in consolidated statements. Failing to eliminate the $2 million intercompany sale overstates both revenue and COGS, while the $180,000 management fee overstates both revenue and expense. Combined, consolidated revenue is overstated by $2.18 million, misrepresenting external activity.
Wrong (A): Intercompany transactions, even if at arm''s length prices, must be eliminated because the consolidated entity cannot transact with itself. The arm''s length nature of the pricing does not exempt them from elimination.
Wrong (B): Partial elimination does not understate revenue and expenses. The uneliminateed intercompany sales and fees inflate both sides, overstating gross amounts rather than understating them.
Wrong (D): Intercompany sales have corresponding costs that also inflate expenses. Net income is unaffected because the revenue and expense overstatements offset, but the gross amounts are misstated.$EXPL$,
  difficulty = 'medium'
WHERE id = 56;

-- Q57 [medium] topic: Leases
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 842-20-25-1, lessees recognize a right-of-use asset and lease liability for all leases exceeding 12 months, including operating leases. Both are measured at the present value of lease payments, approximately $505,740. This was a fundamental change from ASC 840, which kept operating leases off the balance sheet.
Wrong (A): Operating leases are no longer off-balance-sheet under ASC 842. The core objective of the standard was to bring virtually all leases onto the lessee''s balance sheet, eliminating the off-balance-sheet treatment of ASC 840.
Wrong (B): Both a ROU asset and a lease liability are recognized for operating leases under ASC 842. The standard does not permit recognizing only the liability without the corresponding asset.
Wrong (C): Both the ROU asset and the lease liability affect financial ratios. The liability increases leverage ratios like debt-to-equity, while the asset affects asset turnover and return on assets.$EXPL$,
  difficulty = 'medium'
WHERE id = 57;

-- Q58 [easy] topic: Revenue Recognition
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 606-10-55-49 through 55-50, when an entity expects to be entitled to a breakage amount, the entity recognizes breakage revenue in proportion to the pattern of rights exercised by the customer. This means breakage is recognized gradually over time as redemptions occur, matching the pattern of actual gift card usage.
Wrong (A): Breakage revenue is not deferred until legal expiration. ASC 606 requires recognition proportionate to the redemption pattern, which typically begins well before any statutory expiration date.
Wrong (C): The gift card sale creates a contract liability, not immediate revenue. Revenue is recognized only as the customer exercises rights by redeeming the card or as breakage is recognized over the redemption period.
Wrong (D): Breakage recognition follows the customer''s actual redemption pattern, not an arbitrary fiscal-year cutoff. The timing is driven by when and how customers use their gift cards.$EXPL$,
  difficulty = 'easy'
WHERE id = 58;

-- Q59 [easy] topic: Income Taxes
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 740-10-20, a temporary difference arises when there is a difference between the tax basis and the reported amount of an asset or liability that will result in taxable or deductible amounts in future years. A warranty accrual is a classic example: the expense is recognized for books when estimated but is deductible for tax only when paid, creating a deductible temporary difference.
Wrong (A): A difference that never reverses is a permanent difference, not a temporary difference. Municipal bond interest is permanently excluded from taxable income and creates no deferred tax effect.
Wrong (C): Permanent exclusions from taxation do not create temporary differences or deferred tax assets and liabilities. They affect only the effective tax rate, not the deferred tax computation.
Wrong (D): A difference in accounting periods is not the definition of a temporary difference under ASC 740. Temporary differences arise from basis differences between book and tax treatment of specific assets and liabilities.$EXPL$,
  difficulty = 'easy'
WHERE id = 59;

-- Q145 [medium] topic: Financial Statements
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 210-10-45-1, assets expected to be realized within one year or the operating cycle are classified as current. Reclassifying the $500,000 note receivable increases current assets to $3.7 million, and the current ratio improves from $3.2 million divided by $2.0 million (1.60) to $3.7 million divided by $2.0 million (1.85), strengthening covenant compliance through classification alone.
Wrong (B): Reclassifying an asset from noncurrent to current does not create a corresponding current liability. The note receivable simply moves between balance sheet classifications without affecting total liabilities.
Wrong (C): While total assets and total liabilities are unchanged, the current ratio depends specifically on current assets and current liabilities, not aggregate totals. The reclassification directly changes the numerator of the current ratio.
Wrong (D): Assets can be reclassified when circumstances change. If a noncurrent receivable''s maturity falls within 12 months, ASC 210 requires reclassification to current regardless of the original classification.$EXPL$,
  difficulty = 'medium'
WHERE id = 145;

-- Q146 [medium] topic: Financial Statements
-- Issues: choice_cuing
UPDATE questions SET
  stem = $EXPL$Pemberton Corp. reports net income of $2.1 million for 2025. Other comprehensive income includes a $180,000 unrealized gain on available-for-sale debt securities, a $45,000 foreign currency translation loss, and a $30,000 pension prior service cost adjustment. Comprehensive income is $2.205 million. What is the analytical significance of the $105,000 difference between net income and comprehensive income under ASC 220?$EXPL$,
  choices = $EXPL$["The difference is insignificant because OCI items eventually reclassify to net income, making comprehensive income redundant","The difference reveals unrealized gains and losses routed to OCI that affect equity but are excluded from earnings, signaling risks that may affect future income","The difference indicates net income is overstated because the foreign currency and pension losses should reduce reported earnings","The difference results from an accounting error because all gains and losses must flow through the income statement"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 220-10-45, the $105,000 OCI balance ($180,000 AFS gain minus $45,000 translation loss minus $30,000 pension adjustment) represents items that affect shareholders'' equity but bypass net income because they are unrealized, volatile, or outside management''s core operating control. These items signal economic exposures including interest rate risk, currency risk, and pension obligations that may affect future earnings when reclassified.
Wrong (A): Not all OCI items eventually reclassify to net income. Certain pension remeasurements remain in AOCI permanently, and unrealized gains may reverse before reclassification, making comprehensive income a distinct and informative measure.
Wrong (C): ASC 220 deliberately routes these items to OCI by design. The foreign currency and pension items are not errors or omissions from net income but are classified outside earnings to avoid distorting core operating performance measures.
Wrong (D): The all-inclusive income concept is reflected through comprehensive income, which combines both net income and OCI. Reporting OCI separately from net income is required by the standard, not an error.$EXPL$,
  difficulty = 'medium'
WHERE id = 146;

-- Q149 [easy] topic: Financial Statements
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 280-10-50-12, an operating segment is reportable if it meets any one of three 10% quantitative thresholds: revenue (including intersegment) is 10% or more of combined revenue, reported profit or loss is 10% or more of the greater of combined profit or combined loss, or assets are 10% or more of combined assets.
Wrong (A): Employee count is not a criterion for segment reporting under ASC 280. The quantitative thresholds are based on revenue, profit or loss, and assets, not on headcount or staffing levels.
Wrong (B): Intersegment revenue is included in the 10% revenue test, not excluded. ASC 280 considers total segment revenue from both external and intersegment sources when evaluating the threshold.
Wrong (C): Geographic location alone does not determine whether a segment is reportable. A segment may operate in the same region as the parent and still be reportable if it meets any quantitative threshold.$EXPL$,
  difficulty = 'easy'
WHERE id = 149;

-- Q150 [easy] topic: Revenue Recognition
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 606-10-55-17 through 55-21, the cost-to-cost method is a widely used input method for measuring progress on performance obligations satisfied over time. It calculates the percentage of completion as costs incurred to date divided by total estimated costs and applies that percentage to the total transaction price.
Wrong (A): ASC 606 does not include a completed-contract method by name. When performance obligations are satisfied over time, revenue is recognized progressively using an appropriate measure of progress, not deferred until project completion.
Wrong (B): Units-of-delivery is an output method that may be appropriate in some contexts but is not the most commonly used method for long-term construction contracts where costs provide the most reliable measure of progress.
Wrong (D): The sales-value method is used for inventory estimation in certain retail contexts, not for measuring progress on long-term construction contracts under ASC 606.$EXPL$,
  difficulty = 'easy'
WHERE id = 150;

-- Q151 [medium] topic: Revenue Recognition
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 606-10-55-22 through 55-27, a right of return is accounted for using the variable consideration framework. Revenue is recognized only for units not expected to be returned: 940 times $500 equals $470,000. A refund liability of $30,000 and a right-of-return asset of $18,000 are recorded. The controller''s error is using a contingent liability model instead of the variable consideration framework.
Wrong (A): ASC 450 contingent liabilities do not apply to sales returns under ASC 606. The variable consideration framework constrains the transaction price to exclude amounts expected to be refunded, which is a revenue measurement approach, not a separate liability model.
Wrong (B): The return estimate is not fully variable. The entity can reasonably estimate the 6% return rate using historical data, so only the expected return portion is excluded from revenue rather than deferring the entire amount.
Wrong (D): A refund liability is required under ASC 606, not merely a contra-revenue account. The standard specifically prescribes a refund liability for expected returns along with a corresponding right-of-return asset for the expected inventory recovery.$EXPL$,
  difficulty = 'medium'
WHERE id = 151;

-- Q152 [easy] topic: Revenue Recognition
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 606-10-55-41 through 55-45, loyalty points that provide a material right to a customer are treated as a separate performance obligation. A portion of the transaction price is allocated to the points based on relative standalone selling prices and recognized as revenue when the points are redeemed or expire.
Wrong (A): Loyalty points are a revenue allocation issue under ASC 606, not a marketing expense. The points represent a material right that constitutes a separate performance obligation within the original transaction.
Wrong (B): The points create a contract liability on the balance sheet, not merely a footnote disclosure. The allocated transaction price is deferred as a contract liability until the points are redeemed or expire.
Wrong (C): The transaction price reduction is allocated to the points as a separate performance obligation, not applied entirely to the original sale. Revenue for the points is deferred and recognized upon redemption or expiration.$EXPL$,
  difficulty = 'easy'
WHERE id = 152;

-- Q153 [medium] topic: Revenue Recognition
-- Issues: choice_cuing
UPDATE questions SET
  stem = $EXPL$Clearwater Software has a three-year license and maintenance contract with Ridgemont Financial for $900,000. Six months in, both parties agree to add customization features and extend support for an additional $150,000. Separately, the original contract includes a $50,000 performance bonus if uptime exceeds 99.9%. Under ASC 606, how do the $150,000 scope change and the $50,000 performance bonus differ in their accounting treatment?$EXPL$,
  choices = $EXPL$["Both are contract modifications because they change the total consideration under the contract","The $150,000 is variable consideration and the $50,000 bonus is a contract modification added after inception","The scope change is a contract modification requiring evaluation as a potential separate contract, while the bonus is variable consideration estimated under the constraint","Neither qualifies as a modification because the scope change is an option exercise and the bonus is a contingent asset"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 606-10-25-10, a contract modification is a change approved by the parties that creates new or changes existing enforceable rights and obligations. The $150,000 scope change meets this definition and must be evaluated under ASC 606-10-25-12 for treatment as a separate contract or adjustment. The $50,000 bonus is variable consideration under ASC 606-10-32-5, embedded in the original terms and estimated using the constraint.
Wrong (A): Not all changes in expected consideration are modifications. The $50,000 bonus was part of the original contract terms and represents variable consideration, not a modification requiring mutual approval of new rights and obligations.
Wrong (B): This reverses the classifications. The $150,000 scope change involves new mutual approval of changed rights and is a modification, while the $50,000 bonus is contingent on performance within the original terms and is variable consideration.
Wrong (D): The scope change required new mutual approval, which defines a contract modification under ASC 606, not an option exercise. The bonus is variable consideration estimated under the constraint, not a contingent asset recognized only when realized.$EXPL$,
  difficulty = 'medium'
WHERE id = 153;

-- Q155 [easy] topic: Inventory
-- Issues: no_citation
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 330-10-30-1, inventory cost flow assumptions determine which costs are assigned to ending inventory and cost of goods sold. Under FIFO, ending inventory consists of the most recently purchased units at $13, producing higher ending inventory and lower COGS than weighted-average. Under weighted-average, the cost per unit is $3,600 divided by 300 units, equaling $12.00. Switching to FIFO increases gross profit during rising prices because older, lower costs flow to COGS first.
Wrong (A): The conclusion in this choice contradicts FIFO mechanics. FIFO assigns the newest, higher costs to ending inventory and the oldest, lower costs to COGS, which increases gross profit during rising prices.
Wrong (B): Different cost flow assumptions produce different results whenever purchase prices change during the period. FIFO and weighted-average yield identical results only when all units are purchased at the same price.
Wrong (D): FIFO assigns the newest (highest) costs to ending inventory during rising prices, not the cheapest. The first-in, first-out flow means older, lower-cost units are sold first, leaving newer, higher-cost units on the balance sheet.$EXPL$,
  difficulty = 'easy'
WHERE id = 155;

-- Q156 [medium] topic: Inventory
-- Issues: choice_cuing
UPDATE questions SET
  stem = $EXPL$Thornfield Electronics carries 5,000 units of a smartphone model in inventory at a cost of $400 per unit. A new competing product has driven the estimated selling price down to $380, with $30 in estimated completion and disposal costs. The controller argues against a write-down because the company can still sell above cost. Under ASC 330 as amended by ASU 2015-11, what is the correct inventory valuation and income statement impact?$EXPL$,
  choices = $EXPL$["No write-down is needed because the $380 selling price exceeds the $30 disposal cost","A $250,000 write-down is required because NRV of $350 per unit is below the $400 cost","A $100,000 write-down is required based on the difference between cost and selling price","The write-down should be deferred until the units are actually sold below cost"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 330-10-35-1B (as amended by ASU 2015-11), inventory is measured at the lower of cost or net realizable value. NRV equals selling price of $380 minus disposal costs of $30, equaling $350 per unit. Since $350 is below the $400 cost, a write-down of $50 per unit times 5,000 units equals $250,000, recognized in cost of goods sold. Once written down, $350 becomes the new cost basis with no reversal permitted.
Wrong (A): The NRV framework compares NRV to cost, not selling price to disposal costs. The $380 selling price must be reduced by estimated completion and disposal costs before comparison with cost.
Wrong (C): The write-down calculation requires deducting estimated completion and disposal costs from selling price to determine NRV. Using selling price alone without deducting the $30 disposal costs understates the required write-down.
Wrong (D): ASU 2015-11 simplified the lower of cost or market framework but did not eliminate the requirement for timely write-downs. Inventory must be adjusted when NRV falls below cost, not deferred until actual sale.$EXPL$,
  difficulty = 'medium'
WHERE id = 156;

-- Q160 [easy] topic: Fixed Assets
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 250-10-45-18, a change in depreciation method is treated as a change in accounting estimate effected by a change in accounting principle. It is accounted for prospectively by applying the new method to the remaining depreciable base over the remaining useful life, with no retroactive restatement.
Wrong (A): Retroactive restatement applies to changes in accounting principle under ASC 250-10-45-5, not to changes in estimate. A depreciation method change is classified as a change in estimate effected by a change in principle, requiring prospective treatment.
Wrong (B): Extraordinary item classification was eliminated by ASU 2015-01. A depreciation method change has never been classified as extraordinary, and the category no longer exists under U.S. GAAP.
Wrong (D): A cumulative catch-up adjustment to retained earnings is not the prescribed treatment for depreciation method changes. The prospective approach applies the new method going forward without adjusting prior periods or beginning retained earnings.$EXPL$,
  difficulty = 'easy'
WHERE id = 160;

-- Q162 [medium] topic: Intangible Assets
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 985-20-25, costs incurred before technological feasibility are expensed as research and development under ASC 730. Costs incurred after technological feasibility through general release are capitalized. Ridgemont capitalizes $2.5 million while Thornfield capitalizes $3.2 million, demonstrating that the timing of the feasibility milestone directly determines how much is expensed versus capitalized.
Wrong (A): Pre-feasibility costs must be expensed as R&D under ASC 730. ASC 985-20 does not permit capitalization of all software development costs regardless of the feasibility milestone.
Wrong (C): Capitalization begins at technological feasibility, not at first sale. Waiting until the first sale would result in expensing all development costs, which contradicts the capitalization requirements of ASC 985-20.
Wrong (D): Pre-feasibility costs are expensed, not capitalized. The standard requires expensing costs before the feasibility milestone because the future economic benefits are too uncertain at that stage to justify capitalization.$EXPL$,
  difficulty = 'medium'
WHERE id = 162;

-- Q164 [medium] topic: Leases
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 842-20-25-2, the short-term lease exemption applies only to leases with terms of 12 months or less at commencement. The 10-month lease qualifies for the exemption with no balance sheet recognition, while the 13-month lease requires a $62,000 ROU asset and liability. This binary threshold creates a comparability gap for economically similar commitments.
Wrong (A): The two leases are not treated identically. The 10-month lease is expensed straight-line with no balance sheet recognition under the short-term exemption, while the 13-month lease requires full balance sheet recognition of a ROU asset and liability.
Wrong (C): ASC 842 does not round lease terms to the nearest year. The 12-month threshold is a strict cutoff applied to the lease term at commencement without any rounding provision.
Wrong (D): The short-term lease expense is recognized straight-line without a prepaid asset on the balance sheet. The 13-month lease creates a lease liability, not merely a different type of balance sheet presentation.$EXPL$,
  difficulty = 'medium'
WHERE id = 164;

-- Q166 [hard] topic: Leases
-- Issues: choice_cuing
UPDATE questions SET
  stem = $EXPL$Evergreen Equipment Co. leases a machine with a carrying amount of $80,000 and a fair value of $110,000 under a sales-type lease. The lease term is 5 years with annual payments of $25,000, and the implicit rate produces a present value equal to fair value. If the same machine were leased under an operating lease instead, how would the lessor''s income recognition pattern differ over the 5-year term?$EXPL$,
  choices = $EXPL$["Both classifications produce the same total income recognized in the same annual pattern","The sales-type lease front-loads a $30,000 selling profit at commencement plus interest income, while the operating lease recognizes straight-line rental income annually","The sales-type lease defers all profit until lease expiration, while the operating lease recognizes profit as payments are received","Both classifications recognize $25,000 per year, but the sales-type lease also requires a $30,000 impairment loss at commencement"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 842-30-25-1, a sales-type lease requires the lessor to derecognize the underlying asset, recognize a net investment in the lease, and record a $30,000 selling profit ($110,000 fair value minus $80,000 carrying amount) at commencement plus interest income over 5 years. Under an operating lease per ASC 842-30-25-11, the lessor retains the asset, depreciates it, and recognizes $25,000 in straight-line rental income annually.
Wrong (A): While total income over 5 years is identical ($45,000), the recognition pattern differs significantly. The sales-type lease front-loads the selling profit at inception, while the operating lease spreads income evenly across the term.
Wrong (C): The sales-type lease accelerates profit recognition at commencement, not defers it. Deferral until expiration would contradict the derecognition and immediate profit recognition required by ASC 842 for sales-type leases.
Wrong (D): The $30,000 difference between fair value and carrying amount is a selling profit, not an impairment loss. An impairment loss would occur only if fair value were below carrying amount, which is the opposite of the facts presented.$EXPL$,
  difficulty = 'hard'
WHERE id = 166;

-- Q167 [medium] topic: Bonds and Debt
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 810-10-45-1, unrealized intercompany profit in ending inventory must be eliminated in consolidation. The gross profit on the intercompany sale is $150,000 ($500,000 minus $350,000). Of this, 80% ($120,000) is realized through external sales. The remaining 20% ($30,000) is unrealized profit in ending inventory, reducing consolidated net income from $950,000 to $920,000.
Wrong (A): Arm''s length pricing does not exempt intercompany transactions from elimination. The consolidated entity cannot recognize profit on transactions with itself until the goods are sold to external parties.
Wrong (C): Only the unrealized portion of intercompany profit is eliminated, not the full gross profit. The 80% that has been resold externally is realized and properly included in consolidated net income.
Wrong (D): Eliminating intercompany transactions reduces both revenue and cost of goods sold. The unrealized profit elimination reduces net income by $30,000; it does not increase net income by reducing expenses alone.$EXPL$,
  difficulty = 'medium'
WHERE id = 167;

-- Q168 [medium] topic: Bonds and Debt
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 835-30-35-4, the straight-line method produces constant annual expense of $108,000, while the effective interest method starts at $113,200 in Year 1 and declines to $103,600 by Year 10 as the carrying amount decreases through premium amortization. Straight-line understates expense early and overstates it later, but is acceptable when results are not materially different from effective interest.
Wrong (A): The straight-line method is permitted under U.S. GAAP when the results are not materially different from the effective interest method. It is not categorically prohibited by ASC 835-30.
Wrong (C): The straight-line method is not preferred over the effective interest method. ASC 835-30-35-2 identifies the effective interest method as the preferred approach, with straight-line allowed only as a practical expedient when immaterial differences result.
Wrong (D): While total interest expense is identical over 10 years under both methods, annual expense amounts differ. The effective interest method produces declining annual expense for a premium bond, while straight-line produces a constant amount.$EXPL$,
  difficulty = 'medium'
WHERE id = 168;

-- Q171 [medium] topic: Equity
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 505-30-30, the cost method records treasury stock at acquisition cost of $25 per share. Reissuance at $32 creates $42,000 in APIC from treasury stock (6,000 shares times $7 excess). Reissuance at $20 draws $20,000 from that APIC balance (4,000 shares times $5 deficit), leaving $22,000 remaining. Total equity increases by $272,000 ($192,000 plus $80,000). Had the deficit exceeded the APIC balance, the excess would be charged to retained earnings.
Wrong (A): Both reissuances increase equity by the cash received, but the equity account entries differ. The above-cost reissuance credits APIC, while the below-cost reissuance debits APIC. Corporations cannot recognize gains or losses on their own stock, but the APIC treatment is distinct for each transaction.
Wrong (C): Gains and losses on transactions in a company''s own equity are never reported on the income statement under U.S. GAAP per ASC 505-30-25-2. The $42,000 excess and $20,000 deficit are both equity adjustments.
Wrong (D): The below-cost reissuance still increases total equity by the $80,000 cash received. The $20,000 deficit is absorbed by the APIC from treasury stock balance, not netted against the cash proceeds to eliminate the equity increase.$EXPL$,
  difficulty = 'medium'
WHERE id = 171;

-- Q173 [medium] topic: Income Taxes
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 740-10-25, municipal bond interest is a permanent difference that is included in book income but never subject to tax, permanently lowering the effective tax rate below the statutory 21%. The $200,000 excess tax depreciation is a temporary difference that creates a deferred tax liability, which will reverse in future periods when book depreciation exceeds tax depreciation.
Wrong (A): The two items do not create identical tax effects. Municipal bond interest is a permanent difference with no deferred tax consequence, while the depreciation difference is temporary and generates a deferred tax liability.
Wrong (B): This reverses the classifications. Municipal bond interest is the permanent difference, and excess tax depreciation is the temporary difference creating a deferred tax liability, not the other way around.
Wrong (D): Only the municipal bond interest is a permanent difference. The depreciation timing difference is temporary and will reverse, creating a deferred tax liability rather than a permanent reduction in the effective tax rate.$EXPL$,
  difficulty = 'medium'
WHERE id = 173;

-- Q174 [easy] topic: Income Taxes
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 740-10-25-20, a permanent difference never reverses and does not create deferred tax assets or liabilities. Examples include municipal bond interest and nondeductible fines. A temporary difference reverses in future periods and requires recognition of deferred tax assets or liabilities, such as depreciation timing differences and warranty accruals deductible when paid.
Wrong (A): This reverses the relationship. Temporary differences affect the deferred tax computation, while permanent differences affect only the effective tax rate without creating deferred tax balances.
Wrong (B): Both revenue and expense items can create either permanent or temporary differences. The distinction is based on whether the difference reverses, not on whether it involves revenue or expense recognition.
Wrong (D): ASC 740 explicitly distinguishes permanent and temporary differences. Permanent differences have no deferred tax effect, while temporary differences require deferred tax recognition, making the classification essential to proper tax accounting.$EXPL$,
  difficulty = 'easy'
WHERE id = 174;

-- Q177 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB 34, paragraphs 18 and 78, governmental funds use the current financial resources measurement focus and modified accrual basis, excluding long-term assets and long-term liabilities. The fire truck should be reported as a capital outlay expenditure, and bond proceeds as an other financing source. Both the capital asset and long-term liability appear only in the government-wide statements.
Wrong (A): Governmental funds do not use the economic resources measurement focus. That focus applies to government-wide and proprietary fund statements, which is why capital assets and long-term liabilities are excluded from governmental fund balance sheets.
Wrong (B): The truck is not always expensed immediately. In governmental fund statements it is reported as an expenditure, but it is capitalized in government-wide statements. The issue is the recording in governmental fund statements, not whether the asset is ever capitalized.
Wrong (C): Bond proceeds are not required to be recorded in the debt service fund. Capital projects funds commonly record bond proceeds as other financing sources. The error is recording the bonds as a long-term liability in the general fund, which excludes long-term obligations.$EXPL$,
  difficulty = 'medium'
WHERE id = 177;
