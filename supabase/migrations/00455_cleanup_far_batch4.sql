-- FAR cleanup batch 4 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q147 [easy] topic: Financial Statements
-- Issues: no_citation, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Waverly Holdings reports total assets of $800,000, total liabilities of $500,000, and retained earnings of $150,000. An analyst discovers that a $40,000 prepaid insurance asset was misclassified as an expense, understating both total assets and net income (and therefore retained earnings) by $40,000 before tax. The tax rate is 25%. How does correcting this error affect the balance sheet components and the derived contributed capital?$$,
  choices = '["Correcting the error increases total assets and retained earnings each by $40,000, leaving contributed capital unchanged","Correcting the error increases total assets by $40,000, creates a $10,000 deferred tax liability, and increases retained earnings by $30,000 after tax, leaving contributed capital unchanged","Correcting the error has no balance sheet effect because insurance expense is a period cost","Correcting the error reduces contributed capital by $30,000 to offset the retained earnings increase"]'::jsonb,
  explanation = $$Correct (B): Under ASC 250-10-45-5, error corrections require retrospective restatement. After correction, assets increase by $40,000 (prepaid insurance), a deferred tax liability of $10,000 arises per ASC 740-10-25-20 ($40,000 temporary difference × 25%), and retained earnings increase by $30,000 (after-tax). Contributed capital remains $150,000 because the error affected only retained earnings and a tax liability, not shareholder contributions.
Wrong (A): This answer ignores the tax effect of the correction. The $40,000 asset creates a temporary difference that generates a $10,000 deferred tax liability, so retained earnings increase by only $30,000 after tax, not $40,000.
Wrong (C): Prepaid insurance is a balance sheet asset, not merely a period cost. Misclassifying it as an expense directly understates assets and equity, so correcting the error clearly affects the balance sheet.
Wrong (D): Total equity increases by $30,000 after correction (assets up $40,000, liabilities up $10,000). The increase flows entirely through retained earnings; contributed capital is not reduced to offset it.$$,
  difficulty = 'easy'
WHERE id = 147;

-- Q148 [easy] topic: Financial Statements
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 230-10-45-28, the indirect method adjusts net income for noncash items. Depreciation expense is a noncash charge that reduced net income but did not use cash, so it is added back in the operating activities section.
Wrong (A): Payment of dividends to shareholders is classified as a financing activity under ASC 230-10-45-15, not an operating activity.
Wrong (B): Proceeds from issuance of common stock is a financing activity under ASC 230-10-45-14, as it involves raising capital from equity investors.
Wrong (D): Purchase of equipment is classified as an investing activity under ASC 230-10-45-12, not an operating activity.$$,
  difficulty = 'easy'
WHERE id = 148;

-- Q165 [medium] topic: Leases
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 842-20-35-1, a finance lease right-of-use asset is amortized on a straight-line basis over the shorter of the lease term or the useful life of the underlying asset, unless the lease transfers ownership or includes a purchase option the lessee is reasonably certain to exercise, in which case the useful life is used.
Wrong (A): The ROU asset must be amortized for a finance lease. Only operating leases recognize a single combined lease expense rather than separate amortization and interest components.
Wrong (C): The effective interest method applies to the lease liability, not the ROU asset. The liability is reduced by lease payments less the interest component computed using the discount rate.
Wrong (D): Amortization over the remaining economic life of the building is appropriate only when ownership transfers or a purchase option is reasonably certain to be exercised, not in the general case.$$,
  difficulty = 'medium'
WHERE id = 165;

-- Q176 [medium] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASU 2015-17 (codified in ASC 740-10-45-4), all deferred tax assets and liabilities are classified as noncurrent on the balance sheet. This simplified the previous requirement to classify deferred taxes based on the classification of the related asset or liability.
Wrong (A): The classification has nothing to do with when the related tax return is due. ASU 2015-17 eliminated timing-based current/noncurrent classification.
Wrong (C): The expected reversal date was the basis under the old standard but was superseded by ASU 2015-17, which classifies all deferred taxes as noncurrent regardless of reversal timing.
Wrong (D): The noncurrent classification applies to all entities — public and private alike — so the reporting entity''s public or private status is irrelevant.$$,
  difficulty = 'medium'
WHERE id = 176;

-- Q183 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A not-for-profit organization receives donated services from a licensed electrician who rewires the building. How should this contribution be reported?$$,
  choices = '["No recognition because donated services are never recorded","Recognition as both contribution revenue and expense at fair value","Recognition only if the electrician provides a formal invoice","Recognition as a footnote disclosure without financial statement impact"]'::jsonb,
  explanation = $$Correct (B): Under ASC 958-605-25-16, donated services are recognized at fair value if they (1) create or enhance nonfinancial assets or (2) require specialized skills, are provided by individuals possessing those skills, and would typically need to be purchased if not donated. Rewiring by a licensed electrician meets both criteria, so the NFP records contribution revenue and a corresponding expense.
Wrong (A): Donated services are not universally excluded from recognition. ASC 958 requires recognition when the services meet specific criteria — creating or enhancing nonfinancial assets or requiring specialized skills.
Wrong (C): Recognition does not depend on whether a formal invoice is provided. The criteria are based on the nature of the services (specialized skills, asset enhancement), not billing documentation.
Wrong (D): Qualifying donated services must be recognized in the financial statements, not merely disclosed in footnotes. Footnote-only treatment applies to services that do not meet the recognition criteria.$$,
  difficulty = 'medium'
WHERE id = 183;

-- Q372 [easy] topic: Financial Statements
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 205-10-05-2 and AU-C 800, the income tax basis is a special purpose framework (SPF), which is an alternative to GAAP used when full GAAP reporting is not required. Other SPFs include cash basis, regulatory basis, and contractual basis.
Wrong (A): The income tax basis is not GAAP. GAAP is promulgated by the FASB and follows accrual accounting principles, whereas the tax basis follows Internal Revenue Code rules for income and expense recognition.
Wrong (C): IFRS does not define an "other comprehensive basis of accounting." The income tax basis is a U.S. concept recognized under U.S. auditing standards, not under IFRS.
Wrong (D): The SEC does not require the income tax basis as a regulatory framework. SEC registrants must file financial statements prepared in accordance with U.S. GAAP or IFRS.$$,
  difficulty = 'easy'
WHERE id = 372;

-- Q374 [medium] topic: Financial Statements
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under IAS 1.60, a classified statement of financial position distinguishing current and noncurrent items is required unless a liquidity-based presentation provides information that is reliable and more relevant — for example, financial institutions often present assets and liabilities in order of liquidity.
Wrong (A): Whether an entity is private or public does not affect the classification requirement. IAS 1 applies the same presentation rules regardless of entity type.
Wrong (C): The number of shareholders has no bearing on how the statement of financial position is presented. The exception is based solely on whether a liquidity-based format is more relevant.
Wrong (D): Operating in a single industry does not exempt an entity from current/noncurrent classification. The exception depends on the relevance of a liquidity-based presentation, not industry count.$$,
  difficulty = 'medium'
WHERE id = 374;

-- Q379 [hard] topic: Financial Statements
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under AU-C 800.A14 and the AICPA''s guidance on special purpose frameworks, the modified cash basis starts with pure cash basis and adds modifications with substantial support, such as recording depreciation on long-lived assets and accruing income taxes. These modifications are accepted because they have widespread use and support in practice.
Wrong (B): Capitalizing inventory and recording all accrued liabilities would move the framework too close to full accrual GAAP, exceeding the scope of typical modified cash basis adjustments.
Wrong (C): Percentage-of-completion revenue recognition is a full accrual concept under ASC 606 that is not a typical modification to the cash basis framework.
Wrong (D): Recognizing deferred revenue for subscription contracts is an accrual-based treatment that goes beyond the limited modifications permitted under the modified cash basis.$$,
  difficulty = 'hard'
WHERE id = 379;

-- Q381 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 606-10-55-54, a right-to-use (functional) license provides the customer with the right to use intellectual property as it exists at the point in time the license is granted, with no obligation for the vendor to update it. Revenue is recognized at the point in time when control of the license transfers.
Wrong (A): Over-time recognition applies to right-to-access licenses where the vendor has ongoing obligations that significantly affect the IP''s utility, not to static right-to-use licenses.
Wrong (C): Cash-basis recognition is not consistent with ASC 606. Revenue is recognized when control transfers, not when cash is collected, unless the two events coincide.
Wrong (D): Ratable recognition over the software''s estimated useful life is not required for a right-to-use license. The absence of ongoing vendor obligations means the performance obligation is satisfied at a point in time.$$,
  difficulty = 'medium'
WHERE id = 381;

-- Q382 [hard] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 606-10-55-58, when the licensor''s ongoing activities significantly affect the utility of the intellectual property to the customer, the license is a right-to-access (symbolic) license. Revenue is recognized over time because the customer simultaneously receives and consumes the benefit of the licensor''s continuing performance.
Wrong (A): A right-to-use license with point-in-time recognition applies when the licensor has no ongoing obligations that affect the IP. Here, the continued promotion requirement means the customer''s benefit depends on the licensor''s ongoing activities.
Wrong (C): A sales-type arrangement is a lease classification under ASC 842, not a license classification under ASC 606. Character licensing is intellectual property, not a tangible asset lease.
Wrong (D): Leases under ASC 842 apply to identified physical assets, not to intellectual property licenses such as character rights. IP licenses are governed by ASC 606.$$,
  difficulty = 'hard'
WHERE id = 382;

-- Q383 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 606-10-55-36 through 55-40, the travel agency is an agent because the hotel controls the service before transfer, sets the room price, and bears inventory risk. An agent recognizes revenue net — only the commission earned — because it does not control the goods or services before transfer to the customer.
Wrong (B): Gross recognition would apply only if the agency were a principal that controlled the service before transfer. Because the hotel retains pricing power and inventory risk, the agency is an agent and reports net.
Wrong (C): Collecting cash from the customer does not make the agency a principal. The principal-versus-agent determination depends on control of the specified good or service, not on who handles the cash flows.
Wrong (D): The agency does have a contract with the customer, so this reasoning is incorrect. The net reporting is driven by the agency''s role as an agent lacking control, not by the absence of a customer contract.$$,
  difficulty = 'medium'
WHERE id = 383;

-- Q393 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 330-10-35-7A (LIFO guidance), a LIFO liquidation occurs when current-year purchases are insufficient to replace inventory sold, causing the company to dip into older, lower-cost LIFO layers. These older costs are matched against current higher revenues, reducing COGS and inflating gross profit. This is often called phantom or illusory profit.
Wrong (A): COGS decreases, not increases, in a LIFO liquidation because older, lower costs are being matched against revenue. If costs had risen over time (the typical inflationary assumption), the older layers carry lower unit costs.
Wrong (B): Inventory is not written up to replacement cost under LIFO. LIFO layers remain at their historical costs, and no fair-value or replacement-cost adjustment is made.
Wrong (C): LIFO layers are not automatically replenished. A liquidation specifically occurs because the entity did not purchase enough inventory to replace the quantity sold, depleting older cost layers.$$,
  difficulty = 'medium'
WHERE id = 393;

-- Q397 [easy] topic: Inventory
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under U.S. GAAP, inventory is measured at the lower of cost or net realizable value for companies using FIFO. How is net realizable value defined?$$,
  choices = '["Historical cost minus accumulated depreciation","Fair value minus costs to sell under ASC 820","Replacement cost of the inventory","Estimated selling price minus costs of completion, disposal, and transportation"]'::jsonb,
  explanation = $$Correct (D): Under ASU 2015-11 (codified in ASC 330-10-35-1B), net realizable value is defined as the estimated selling price in the ordinary course of business, less reasonably predictable costs of completion, disposal, and transportation. This standard simplified the previous lower-of-cost-or-market framework for FIFO and weighted-average methods.
Wrong (A): Accumulated depreciation applies to fixed assets, not inventory. Inventory is not depreciated; it is tested against NRV for writedown purposes.
Wrong (B): Fair value minus costs to sell is a concept from ASC 820 used in impairment testing of long-lived assets, not the NRV definition for inventory under ASC 330.
Wrong (C): Replacement cost was part of the old lower-of-cost-or-market framework as the middle value between ceiling (NRV) and floor (NRV minus normal profit margin), but it is not the definition of NRV itself.$$,
  difficulty = 'easy'
WHERE id = 397;

-- Q404 [easy] topic: Fixed Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 360-10-35, how should a long-lived asset classified as held for sale be measured?$$,
  choices = '["At historical cost without adjustment","At fair value with changes in net income","At the lower of carrying amount or fair value less cost to sell","At net realizable value as defined for inventory"]'::jsonb,
  explanation = $$Correct (C): Under ASC 360-10-45-9, a long-lived asset classified as held for sale is measured at the lower of its carrying amount or fair value less cost to sell. Any write-down is recognized as a loss, and the asset is no longer depreciated once classified as held for sale.
Wrong (A): Historical cost without adjustment ignores the possibility that the asset''s recoverable amount has declined. The held-for-sale measurement requires comparing carrying amount to fair value less cost to sell.
Wrong (B): Pure fair value measurement does not apply. The standard uses the lower of carrying amount or fair value less cost to sell, which prevents writing the asset up above its carrying amount.
Wrong (D): Net realizable value as defined for inventory (ASC 330) is a different concept. Held-for-sale assets use fair value less cost to sell, which is determined under ASC 820 fair value principles.$$,
  difficulty = 'easy'
WHERE id = 404;

-- Q406 [easy] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 410-20-35-3, accretion expense increases the asset retirement obligation liability over time to reflect the passage of time and the unwinding of the discount. The journal entry debits accretion expense and credits the ARO liability.
Wrong (A): Depreciation expense and accumulated depreciation relate to the depreciation of the asset retirement cost capitalized as part of the related long-lived asset, not to the accretion of the liability itself. These are two separate charges.
Wrong (C): Debiting the asset and crediting cash describes a cash payment, not the periodic accretion charge. Accretion is a noncash expense recognized over the life of the ARO.
Wrong (D): Interest expense and bonds payable relate to debt instruments, not to asset retirement obligations. Although accretion is conceptually similar to interest, it is recorded against the ARO liability specifically.$$,
  difficulty = 'easy'
WHERE id = 406;

-- Q408 [medium] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 845-10-30-1, when a nonmonetary exchange has commercial substance, gains and losses are recognized in full based on fair values. Company B gave up an asset with a book value of $80,000 and received total consideration of $60,000 ($55,000 fair value of equipment received plus $5,000 cash). The loss is $60,000 − $80,000 = $(20,000).
Wrong (A): A $5,000 gain would require Company B to receive more than its carrying amount, but total consideration received ($60,000) is less than the book value ($80,000), resulting in a loss.
Wrong (C): No gain or loss would only apply in an exchange lacking commercial substance where no boot is received. Here, the exchange has commercial substance, so gains and losses are fully recognized.
Wrong (D): A $15,000 loss incorrectly calculates the difference. The correct comparison is total consideration received ($60,000) minus carrying amount ($80,000), yielding a $20,000 loss.$$,
  difficulty = 'medium'
WHERE id = 408;

-- Q414 [easy] topic: Intangible Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 350-20-35-3C, the qualitative assessment (Step 0) of goodwill impairment considers a broad range of factors: macroeconomic conditions, industry and market conditions, cost factors, overall financial performance, entity-specific events, and changes in share price. No single factor is determinative.
Wrong (A): Stock price changes are one of several factors considered, but the assessment is not limited to stock price alone. Focusing only on share price would ignore other significant indicators of impairment.
Wrong (C): Debt covenant violations are entity-specific events that may be considered, but the assessment encompasses many other macroeconomic, industry, and performance factors beyond covenant compliance.
Wrong (D): The original purchase price allocation is historical and does not reflect current conditions. The qualitative assessment evaluates events and circumstances since the last quantitative test, not the original acquisition accounting.$$,
  difficulty = 'easy'
WHERE id = 414;

-- Q416 [easy] topic: Intangible Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under IAS 38.54, research phase costs must always be expensed as incurred because the entity cannot demonstrate that an intangible asset exists that will generate probable future economic benefits during the research phase.
Wrong (B): Capitalization based on expected profitability is not permitted during the research phase. Only development costs may be capitalized, and only when all six criteria in IAS 38.57 are met, including technical feasibility and intention to complete.
Wrong (C): The six development criteria in IAS 38.57 apply exclusively to the development phase. Research phase costs cannot be capitalized regardless of whether any of those criteria appear to be met.
Wrong (D): IAS 38 does not permit deferral and amortization of research costs over a fixed period. The standard explicitly requires immediate expensing of all research expenditures.$$,
  difficulty = 'easy'
WHERE id = 416;

-- Q425 [hard] topic: Leases
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$In a successful sale-leaseback under ASC 842, if the sale price exceeds the fair value of the asset, how is the excess accounted for by the seller-lessee?$$,
  choices = '["As a gain recognized immediately in full in net income","As additional financing from the buyer-lessor recorded as a liability","As a reduction to cost of goods sold in the current period","As a deferred gain amortized over the leaseback term"]'::jsonb,
  explanation = $$Correct (B): Under ASC 842-40-30-2, if the sale price exceeds fair value in a sale-leaseback transaction, the excess is not treated as a gain. Instead, it is considered additional financing provided by the buyer-lessor and is recorded as a financial liability by the seller-lessee, to be repaid through higher lease payments.
Wrong (A): Immediate full gain recognition is not permitted for the excess above fair value. Only the gain attributable to the difference between fair value and carrying amount may be recognized, and even that may be limited by the retained right of use.
Wrong (C): A reduction to cost of goods sold is unrelated to sale-leaseback accounting. The excess above fair value is a financing arrangement, not a cost-of-goods-sold adjustment.
Wrong (D): Deferred gain amortization was the treatment under the prior standard (ASC 840). Under ASC 842, the excess is classified as a financial liability, not a deferred gain.$$,
  difficulty = 'hard'
WHERE id = 425;

-- Q426 [easy] topic: Leases
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 842-20-25-2, the short-term lease exemption does not require lessor consent. The requirements are: (1) the lease term is 12 months or less at commencement, (2) no purchase option the lessee is reasonably certain to exercise, and (3) the election is applied consistently by underlying asset class.
Wrong (A): A lease term of 12 months or less at commencement is a required condition for the short-term exemption, so this choice correctly states a requirement — it is not the answer to what is NOT required.
Wrong (B): The absence of a purchase option reasonably certain to be exercised is also a required condition under ASC 842-20-25-2, making this a valid requirement.
Wrong (C): Consistent application by asset class is required under the standard. The lessee must apply the election to all leases of the same underlying asset class, not selectively.$$,
  difficulty = 'easy'
WHERE id = 426;

-- Q427 [medium] topic: Leases
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 842-10-25-8, when a lease modification decreases the scope of the lease, the lessee reduces the right-of-use asset proportionately based on the reduction in the right of use and remeasures the lease liability at the modified discount rate. Any difference between the proportionate decrease in the ROU asset and the decrease in the lease liability is recognized as a gain or loss.
Wrong (A): Ignoring the modification would misstate both the ROU asset and lease liability. ASC 842 requires remeasurement when modifications change the scope, consideration, or term of the lease.
Wrong (B): A scope reduction does not automatically trigger reclassification from finance to operating. Lease classification is reassessed based on the modified terms, not merely changed because the scope decreased.
Wrong (C): Recognizing all remaining payments as an immediate expense has no basis in ASC 842. The standard requires proportionate adjustment, not full acceleration of the remaining obligation.$$,
  difficulty = 'medium'
WHERE id = 427;

-- Q430 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 470-10-45-1, when a debt covenant violation occurs at the balance sheet date and the lender has not waived its right to demand repayment, the borrower must reclassify the debt as a current liability. The lender''s call right makes the obligation effectively due on demand.
Wrong (A): The original maturity date is irrelevant when a covenant violation gives the lender the right to accelerate repayment. The callable nature of the debt controls the classification.
Wrong (C): Management''s intent to refinance alone is insufficient to maintain long-term classification when a covenant violation exists. A waiver from the lender obtained before the financial statements are issued is required.
Wrong (D): Mezzanine financing is a capital structure concept, not a balance sheet classification for debt in covenant violation. U.S. GAAP classifies liabilities as either current or noncurrent.$$,
  difficulty = 'medium'
WHERE id = 430;

-- Q433 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASU 2020-06 (codified in ASC 260-10-45-40A), the if-converted method is required for calculating the dilutive impact of convertible instruments on EPS. The treasury stock method is no longer permitted for convertible debt. Under the if-converted method, the numerator is adjusted for interest expense (net of tax) and the denominator is increased by the shares that would be issued upon conversion.
Wrong (A): The treasury stock method is no longer permitted for convertible debt under ASU 2020-06. This simplification eliminated the previous option to use the treasury stock method for certain cash-settled convertibles.
Wrong (B): Convertible debt is not excluded from diluted EPS calculations. If potentially dilutive, convertible instruments must be included using the if-converted method.
Wrong (C): ASU 2020-06 removed the choice between methods. Only the if-converted method is permitted, eliminating the optionality that previously existed.$$,
  difficulty = 'medium'
WHERE id = 433;

-- Q434 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 470-10-45-14, amounts drawn on a revolving credit facility are classified based on the maturity of the underlying agreement and the entity''s ability to refinance on a long-term basis. Since the facility matures in 3 years and the company can refinance draws through the facility, the $500,000 is classified as noncurrent.
Wrong (A): A revolving credit facility is not automatically classified as current. The classification depends on the facility''s maturity and the borrower''s ability and intent to refinance on a long-term basis.
Wrong (B): Management''s intent regarding repayment within 12 months is only one factor. The key consideration is whether the long-term facility provides the ability to maintain the borrowing on a long-term basis.
Wrong (C): Restricted cash is not a criterion for classifying revolving credit facility draws. The classification depends on the facility''s maturity date and the ability to refinance, not on cash set aside for repayment.$$,
  difficulty = 'medium'
WHERE id = 434;

-- Q436 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$When an entity elects the fair value option under ASC 825 for a financial liability at initial recognition, how are subsequent changes in fair value generally recognized?$$,
  choices = '["Directly in retained earnings bypassing the income statement","In a contra-liability account on the balance sheet","Entirely in other comprehensive income each period","In net income, except for changes from the entity''s own credit risk which go to OCI"]'::jsonb,
  explanation = $$Correct (D): Under ASC 825-10-45-5, when the fair value option is elected for a financial liability, subsequent fair value changes are recognized in earnings, except that the portion attributable to the entity''s own instrument-specific credit risk is recognized in other comprehensive income. This prevents the counterintuitive result of reporting a gain when creditworthiness deteriorates.
Wrong (A): Fair value changes are not recorded directly to retained earnings. They flow through the income statement (net income) except for the credit-risk component, which goes to OCI.
Wrong (B): A contra-liability account is not used for fair value option measurements. The liability is remeasured to fair value on the balance sheet, with changes recognized in earnings and OCI as applicable.
Wrong (C): Recognizing all changes in OCI would apply to certain available-for-sale debt securities, not to financial liabilities measured under the fair value option. The default recognition for fair-value-option liabilities is net income.$$,
  difficulty = 'medium'
WHERE id = 436;

-- Q438 [medium] topic: Equity
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$A company grants 1,000 restricted stock units to an employee on January 1, Year 1. The RSUs vest after 3 years of service. The stock price is $50 on the grant date and $70 on the vesting date. Under ASC 718, what is the total compensation expense recognized over the vesting period?$$,
  choices = '["$50,000 based on grant-date fair value","$70,000 based on vesting-date fair value","$60,000 based on average fair value","$20,000 based on the change in stock price"]'::jsonb,
  explanation = $$Correct (A): Under ASC 718-10-30-2, equity-classified awards such as RSUs are measured at the grant-date fair value of the underlying stock. Total compensation expense is $50 × 1,000 = $50,000, recognized ratably over the 3-year vesting period. Subsequent stock price changes do not affect the expense for equity-classified awards.
Wrong (B): The vesting-date fair value of $70 is irrelevant for equity-classified awards. Liability-classified awards would be remeasured at each reporting date, but RSUs classified as equity are fixed at the grant-date value.
Wrong (C): Averaging the grant-date and vesting-date prices has no basis in ASC 718. The standard requires measurement at a single point — the grant date — for equity-classified awards.
Wrong (D): The $20,000 price change between grant and vesting dates does not represent compensation expense. ASC 718 uses the full grant-date fair value, not the incremental change in stock price.$$,
  difficulty = 'medium'
WHERE id = 438;

-- Q443 [easy] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 505-30-30-1, the cost method records treasury stock at the total reacquisition cost. The entry is debit Treasury Stock $40,000 ($40 × 1,000 shares) and credit Cash $40,000. Par value and additional paid-in capital are not affected at the time of reacquisition under the cost method.
Wrong (B): Debiting Treasury Stock at par ($5,000) and APIC for the excess describes the par value method, not the cost method. The cost method records the entire reacquisition cost in a single Treasury Stock debit.
Wrong (C): Debiting Common Stock and Retained Earnings describes the retirement of shares, not the reacquisition as treasury stock. Treasury stock transactions do not remove amounts from the Common Stock account under the cost method.
Wrong (D): Crediting Retained Earnings instead of Cash is incorrect. The company pays cash to reacquire the shares, so the credit must be to Cash, not to Retained Earnings.$$,
  difficulty = 'easy'
WHERE id = 443;

-- Q444 [hard] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 505-30-30-7 (par value method), when shares are reacquired for more than their original issuance price, treasury stock is debited at par value, APIC is debited for the amount originally credited when the shares were issued, and any remaining excess of the reacquisition price over the original issuance price is debited to retained earnings (or APIC from prior treasury stock transactions if available). This method effectively reverses the original issuance entry.
Wrong (A): While this answer partially describes the par value method mechanics, it omits the initial debit to treasury stock at par and incorrectly implies that APIC alone absorbs the excess before retained earnings without specifying the par value entry.
Wrong (C): Debiting retained earnings for the full excess without first reducing APIC from the original issuance is incomplete. The par value method requires APIC to be reversed for the original issuance amount before any remainder flows to retained earnings.
Wrong (D): Treasury stock transactions are equity transactions that do not flow through the income statement under either the cost method or the par value method. A realized loss account on the income statement is not appropriate for equity transactions.$$,
  difficulty = 'hard'
WHERE id = 444;

-- Q445 [medium] topic: Equity
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 830-30-40-1, foreign currency translation adjustments accumulated in AOCI are reclassified (recycled) to net income when the investment in the foreign entity is sold or substantially completely liquidated. This is one of the few AOCI items that recycles through net income upon a triggering event.
Wrong (B): Under ASU 2016-01 (ASC 321-10-35-1), unrealized gains on equity securities are reported directly in net income each period, not in OCI. Therefore, there is no AOCI balance to reclassify.
Wrong (C): Under IFRS (IAS 16.41), revaluation surplus is transferred directly within equity from revaluation surplus to retained earnings when the asset is sold. It is not reclassified through profit or loss, unlike AOCI recycling under U.S. GAAP.
Wrong (D): The minimum pension liability concept was eliminated by ASC 715 (SFAS 158). Pension-related items in AOCI include prior service costs and actuarial gains/losses, which are amortized to net income, not reclassified upon a specific event.$$,
  difficulty = 'medium'
WHERE id = 445;

-- Q450 [medium] topic: Income Taxes
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Which sources of evidence should management consider when assessing whether a valuation allowance is needed for a deferred tax asset under ASC 740?$$,
  choices = '["Future taxable income projections only","Carryback potential to prior tax years only","Reversals of taxable temporary differences, carryback potential, future taxable income, and tax-planning strategies","Current-year pretax income only"]'::jsonb,
  explanation = $$Correct (C): Under ASC 740-10-30-18, four sources of taxable income must be evaluated when assessing realizability of deferred tax assets: (1) future reversals of existing taxable temporary differences, (2) taxable income in carryback years if carryback is permitted, (3) future taxable income exclusive of reversing temporary differences, and (4) tax-planning strategies. All four must be considered.
Wrong (A): Relying solely on future taxable income projections ignores three other required sources, including existing taxable temporary differences that will reverse and generate future taxable income without any projections.
Wrong (B): Carryback potential is one of four sources but is insufficient alone. Many entities may have limited or no carryback availability, so the other three sources must also be evaluated.
Wrong (D): Current-year pretax income is not one of the four sources identified in ASC 740. The analysis is forward-looking, focusing on future sources of taxable income to absorb the deferred tax asset.$$,
  difficulty = 'medium'
WHERE id = 450;

-- Q451 [medium] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 740-10-25-7 (Step 2 of the uncertain tax position framework), the recognized benefit is measured as the largest amount of tax benefit that has a greater than 50% likelihood of being realized upon ultimate settlement with the taxing authority. This is determined by evaluating the cumulative probability of possible outcomes.
Wrong (A): Recognizing the full amount would overstate the benefit. The two-step framework limits recognition to the largest amount exceeding the 50% cumulative probability threshold, which is often less than the full claimed amount.
Wrong (B): The smallest amount that is more likely than not to be sustained is the opposite of the correct measurement. ASC 740 uses the largest cumulative amount above 50%, not the smallest.
Wrong (D): The expected value approach (probability-weighted average of all outcomes) is not the measurement method required by ASC 740. The standard uses a cumulative probability threshold, not a weighted-average calculation.$$,
  difficulty = 'medium'
WHERE id = 451;

-- Q452 [medium] topic: Income Taxes
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Intraperiod tax allocation under ASC 740 requires total income tax expense to be allocated among which components?$$,
  choices = '["Continuing operations only","Continuing operations, discontinued operations, OCI, and items charged to equity","Continuing operations and discontinued operations only","Each operating segment of the entity"]'::jsonb,
  explanation = $$Correct (B): Under ASC 740-20-45-2, intraperiod tax allocation distributes total income tax expense or benefit among: (1) continuing operations, (2) discontinued operations, (3) other comprehensive income, and (4) items charged or credited directly to stockholders'' equity. This ensures each component reflects its own tax effect.
Wrong (A): Allocating tax expense only to continuing operations would misstate the tax burden across the financial statements. OCI items and discontinued operations each have their own tax effects that must be separately presented.
Wrong (C): While continuing operations and discontinued operations receive allocations, this answer omits OCI and direct equity charges, which also require their own tax allocation under ASC 740.
Wrong (D): ASC 740 does not require intraperiod tax allocation by operating segment. Segment reporting under ASC 280 may disclose segment-level information, but intraperiod allocation addresses financial statement components, not segments.$$,
  difficulty = 'medium'
WHERE id = 452;

-- Q453 [easy] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 740-10-25-20, tax-exempt municipal bond interest is a permanent difference because it is included in book income but is never included in taxable income. Permanent differences do not reverse over time and therefore do not create deferred tax assets or liabilities.
Wrong (A): Depreciation differences between tax and book are temporary differences under ASC 740 that reverse over the asset''s life and do give rise to deferred tax items, typically a deferred tax liability.
Wrong (B): Accrued warranty expense is a temporary difference because the expense is recognized for book purposes when accrued but deducted for tax purposes when paid. This timing difference creates a deferred tax asset.
Wrong (D): Prepaid rent creates a temporary difference because it is deducted for tax when paid but expensed for book purposes when incurred. This difference reverses over time and generates a deferred tax item.$$,
  difficulty = 'easy'
WHERE id = 453;

-- Q454 [medium] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 740-10-35-4, deferred tax assets and liabilities are remeasured when enacted tax rates change. The NOL carryforward DTA is remeasured at the new enacted rate: $1,000,000 × 25% = $250,000. Previously it was $1,000,000 × 21% = $210,000. The $40,000 increase is recognized in income from continuing operations in the period of enactment.
Wrong (A): $210,000 reflects the old rate of 21%, not the new enacted rate of 25%. ASC 740 requires remeasurement at the newly enacted rate in the period the change is enacted.
Wrong (C): $200,000 does not correspond to either the old or new rate applied to the $1,000,000 NOL. The correct calculation at 25% yields $250,000.
Wrong (D): $240,000 does not result from applying either the 21% or 25% rate to the $1,000,000 NOL carryforward and appears to be a computational error.$$,
  difficulty = 'medium'
WHERE id = 454;

-- Q455 [easy] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 740-10-25-20, installment sale revenue creates a deferred tax liability because revenue is recognized for book purposes at the time of sale (higher book income now) but is deferred for tax purposes until cash is collected (lower taxable income now). This temporary difference results in future taxable amounts when cash is collected.
Wrong (A): Estimated warranty costs create a deferred tax asset, not a liability. The expense is accrued for book purposes before it is deductible for tax, resulting in future deductible amounts.
Wrong (B): If goodwill amortization is the same for both book and tax, there is no temporary difference and no deferred tax item arises. A difference would arise only if the amortization periods or methods diverge.
Wrong (C): Municipal bond interest is a permanent difference, not a temporary difference. It is excluded from taxable income permanently and therefore does not give rise to any deferred tax asset or liability.$$,
  difficulty = 'easy'
WHERE id = 455;

-- Q456 [hard] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 740-10-25-6 and 740-10-25-7, the two-step UTP framework first tests whether the position meets the more-likely-than-not threshold (Step 1). Since it does, a benefit is recognized. Step 2 measures the benefit at $600,000 — the largest cumulative amount with greater than 50% likelihood of being realized. The remaining $200,000 ($800,000 − $600,000) is recorded as an unrecognized tax benefit liability.
Wrong (A): Recognizing the full $800,000 with no liability ignores Step 2 measurement. Even though the position passes Step 1, the benefit is limited to the largest amount exceeding the 50% cumulative probability threshold.
Wrong (C): The position does meet the more-likely-than-not threshold in Step 1, so a benefit must be recognized. Complete exclusion of the benefit would be appropriate only if the position failed the Step 1 recognition test.
Wrong (D): The 50% threshold refers to cumulative probability in Step 2 measurement, not to recognizing half the claimed amount. The $600,000 measurement is based on probability analysis, not a mechanical 50% reduction.$$,
  difficulty = 'hard'
WHERE id = 456;

-- Q461 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under GASB Statement No. 33, paragraph 8, sales taxes are classified as derived tax revenues because they are assessed on (derived from) underlying exchange transactions — retail sales. The tax arises from and is dependent on the occurrence of the exchange transaction.
Wrong (A): Imposed nonexchange revenues, such as property taxes, are assessed on an act or status (property ownership) rather than on an underlying exchange transaction. Sales taxes are triggered by sales transactions, not by ownership or status.
Wrong (C): Voluntary nonexchange transactions include grants and donations where both parties willingly enter the arrangement. Sales taxes are imposed by law on exchange transactions, not voluntarily contributed.
Wrong (D): Exchange revenues arise when both parties receive and give approximately equal value. Sales taxes are not consideration for a good or service provided by the government to the taxpayer in the transaction.$$,
  difficulty = 'easy'
WHERE id = 461;

-- Q464 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under GASB 68, which components are included in pension expense recognized by the employer?$$,
  choices = '["Service cost component only","Cash contributions made to the pension plan during the period","The annual required contribution calculated under the prior GASB standard","Service cost, interest on total pension liability, projected earnings on plan investments, and amortization of deferred outflows and inflows"]'::jsonb,
  explanation = $$Correct (D): Under GASB Statement No. 68, paragraphs 32-37, pension expense includes: (1) service cost, (2) interest on the total pension liability, (3) projected earnings on pension plan investments (which reduces expense), (4) changes in benefit terms, (5) differences between expected and actual experience (amortized), and (6) changes in assumptions (amortized through deferred outflows/inflows).
Wrong (A): Service cost is only one of several components. Limiting pension expense to service cost alone would significantly understate the total expense by ignoring interest, investment earnings, and amortization components.
Wrong (B): Cash contributions represent the employer''s funding payments, not the accrual-based pension expense. GASB 68 uses accrual accounting for pension expense, which differs from the cash funding amount.
Wrong (C): The annual required contribution (ARC) was the measurement basis under the prior GASB standards (25/27), which were superseded by GASB 67/68. The ARC concept no longer applies under current governmental pension accounting.$$,
  difficulty = 'hard'
WHERE id = 464;

-- Q466 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under GASB Statement No. 33, paragraph 20, government-mandated and voluntary nonexchange transactions (including grants with eligibility requirements) are recognized as revenue when all eligibility requirements are met, including any time requirements. If allowable-cost provisions apply, revenue is recognized as qualifying expenditures are incurred.
Wrong (A): Signing the grant agreement does not trigger revenue recognition. Eligibility requirements — such as incurring allowable costs or meeting time restrictions — must be satisfied before revenue can be recognized.
Wrong (C): Cash receipt does not control the timing of revenue recognition for grants with eligibility requirements. Under accrual accounting, revenue is recognized when eligibility is met, regardless of when cash is received.
Wrong (D): Budget appropriation by the government is an internal planning action that does not satisfy the eligibility requirements of the grant. Revenue recognition depends on meeting the grantor''s specified conditions.$$,
  difficulty = 'medium'
WHERE id = 466;

-- Q470 [easy] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 958-205-45-7, when a purpose restriction is satisfied, the NFP reclassifies the amount from net assets with donor restrictions to net assets without donor restrictions. This is reported as "net assets released from restrictions" on the statement of activities. No new revenue is recognized — it is an internal reclassification.
Wrong (B): Debiting contribution revenue and crediting cash would reverse the original contribution entry, which is not the intent. Satisfying a restriction releases the funds for unrestricted use through reclassification, not through a revenue reversal.
Wrong (C): Debiting program expense and crediting net assets with donor restrictions conflates the spending of funds with the release from restriction. The release entry is separate from the expenditure entry.
Wrong (D): Restrictions are tracked within the accounting system as part of net asset classifications, not off the books. ASC 958 requires on-balance-sheet tracking and reclassification upon satisfaction.$$,
  difficulty = 'easy'
WHERE id = 470;

-- Q473 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASU 2020-07 (codified in ASC 958-605-45-2A), contributed nonfinancial assets (gifts-in-kind) must be presented as a separate line item on the statement of activities, not combined with cash contributions. Additional disclosures include the type of assets, whether they were monetized or used, valuation techniques, donor restrictions, and associated costs.
Wrong (A): Combining gifts-in-kind with cash contributions was the prior practice that ASU 2020-07 specifically addressed. The update requires separate presentation to increase transparency around nonfinancial contributions.
Wrong (C): Footnote-only treatment without statement-of-activities impact is insufficient. ASU 2020-07 requires both a separate line item on the statement of activities and enhanced footnote disclosures.
Wrong (D): Presenting gifts-in-kind net of distribution costs is not required. The standard requires gross presentation of the contributed assets with associated costs disclosed separately.$$,
  difficulty = 'medium'
WHERE id = 473;

-- Q474 [hard] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 958-605-25-2, an unconditional promise to give is recognized as contribution revenue in the period the promise is made, measured at the present value of expected future cash flows. Because the pledge extends beyond the current period, it carries an implicit time restriction and is classified as net assets with donor restrictions until the installments become due.
Wrong (B): Cash-basis recognition at $10,000 per year is not permitted for unconditional promises. ASC 958 requires accrual-basis recognition of the full pledge at present value when the unconditional promise is received.
Wrong (C): An unconditional promise to give is not a liability. It is a receivable (pledge receivable) for the NFP, with the corresponding credit to contribution revenue. Liabilities arise from the NFP''s obligations, not from donor commitments.
Wrong (D): The pledge cannot be classified entirely as net assets without donor restrictions because the multi-year payment schedule creates an implicit time restriction. The amounts are released from restriction as each installment becomes due.$$,
  difficulty = 'hard'
WHERE id = 474;

-- Q475 [medium] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 810-10-15-14, a variable interest entity (VIE) is an entity in which the equity investors as a group lack sufficient equity at risk to finance the entity''s activities without additional subordinated financial support from other parties. Other VIE indicators include equity holders lacking decision-making rights or lacking the obligation to absorb losses or right to receive returns.
Wrong (B): Having the power to direct activities and absorb losses describes the primary beneficiary of a VIE, not the VIE itself. The primary beneficiary is the party that must consolidate the VIE.
Wrong (C): Total asset size is not a criterion for VIE determination. An entity with $100 million in assets could have sufficient equity at risk and not be a VIE, while a small entity with inadequate equity would be a VIE.
Wrong (D): Being publicly traded does not determine whether an entity is a VIE. The analysis focuses on the sufficiency of equity at risk and the characteristics of the equity holders'' rights, not on the entity''s listing status.$$,
  difficulty = 'medium'
WHERE id = 475;

-- Q479 [medium] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 810-10-45-1, in a downstream sale (parent sells to subsidiary), unrealized intercompany profit on inventory remaining in the subsidiary''s ending inventory is eliminated in full from consolidated financial statements. Because the parent originated the transaction, 100% of the elimination is attributed to the controlling interest.
Wrong (A): The elimination is from consolidated net income, not just the parent''s net income. In consolidation, intercompany transactions are removed entirely from the combined results, with the attribution to controlling interest reflecting the parent as the originator.
Wrong (B): Proportional elimination based on ownership interest applies to upstream transactions (subsidiary sells to parent), not downstream. In downstream transactions, the parent generated the profit, so 100% is attributed to the controlling interest.
Wrong (C): The separate legal entity status of the subsidiary does not override consolidation requirements. Intercompany profits must be eliminated regardless of legal separateness to present the consolidated entity as a single economic unit.$$,
  difficulty = 'medium'
WHERE id = 479;

-- Q482 [medium] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 323-10-35-32, when an equity method investment suffers an other-than-temporary decline in fair value below its carrying amount, the investor writes the investment down to fair value and recognizes an impairment loss in net income. The new reduced carrying amount becomes the basis for future equity method accounting.
Wrong (A): Continuing to carry the investment at its equity method basis and disclosing the decline is insufficient when the decline is other-than-temporary. ASC 323 requires a write-down to fair value with loss recognition, not mere disclosure.
Wrong (C): Reclassifying an equity method investment as a trading security has no basis in GAAP. The equity method is determined by the level of influence (typically 20-50% ownership), not by market conditions or impairment events.
Wrong (D): Reversing prior equity method earnings to reduce the carrying amount is not the prescribed treatment. The impairment loss is recognized as a separate charge in net income, and the carrying amount is reset to fair value going forward.$$,
  difficulty = 'medium'
WHERE id = 482;

-- Q484 [easy] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 810-10-45-15, the subsidiary''s net income is allocated between the controlling interest (parent) and the noncontrolling interest (NCI) based on ownership percentages. The parent at 80% is allocated $400,000 and the NCI at 20% is allocated $100,000. NCI income is presented as a separate line item in the consolidated income statement.
Wrong (A): Allocating the full $500,000 to the parent ignores the 20% noncontrolling interest. Consolidation requires that NCI receive its proportionate share of the subsidiary''s income.
Wrong (C): Allocating the full $500,000 to the noncontrolling interest reverses the ownership relationship. The NCI holds only 20%, not 100%, of the subsidiary.
Wrong (D): Allocating $400,000 to NCI and $100,000 to the parent reverses the correct percentages. The parent (80%) receives the larger share, not the minority holders (20%).$$,
  difficulty = 'easy'
WHERE id = 484;

-- Q485 [easy] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 323-10-35-4, when the investee reports net income, the investor debits the Investment account (increasing its carrying value) and credits Equity in Earnings of Investee (income). This reflects the investor''s share of the investee''s earnings and increases both the investment balance and reported income.
Wrong (A): Debiting cash and crediting investment revenue describes the receipt of dividends, not the recognition of the investee''s earnings. Under the equity method, dividends reduce the investment account rather than being recognized as revenue.
Wrong (C): Debiting equity in earnings and crediting the investment account reverses the correct entry. This would decrease both reported income and the investment balance, which is the opposite of the proper treatment.
Wrong (D): Debiting dividend income and crediting cash is the fair value method treatment for dividend receipts, not the equity method treatment. Under the equity method, dividends are not income — they are a return of investment that reduces the carrying amount.$$,
  difficulty = 'easy'
WHERE id = 485;

-- Q1101 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 860-10-40-5 (transfers of financial assets), when receivables are factored without recourse, cash received equals the face amount less the factor''s fee and any holdback. Cash = $150,000 − ($150,000 × 5%) − ($150,000 × 8%) = $150,000 − $7,500 − $12,000 = $130,500. The $12,000 holdback is recorded as a receivable from the factor.
Wrong (B): $142,500 accounts for only the 5% fee ($7,500) but omits the 8% holdback ($12,000). Both deductions reduce the immediate cash proceeds received from the factor.
Wrong (C): $138,000 does not correctly apply either the fee or holdback percentages to the $150,000 face amount and represents a computational error.
Wrong (D): $127,500 appears to apply a combined 15% deduction (5% + an incorrect 10%), overstating the total deductions from the $150,000 face amount.$$,
  difficulty = 'medium'
WHERE id = 1101;

-- Q1103 [hard] topic: Cash and Receivables
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $$Under ASC 326 (CECL), which of the following is NOT a permitted methodology for estimating the allowance for credit losses?$$,
  choices = '["Vintage analysis approach","Probability-of-default method","Incurred loss model requiring losses to be probable","Discounted cash flow method"]'::jsonb,
  explanation = $$Correct (C): Under ASC 326-20-30-3, the incurred loss model — which required losses to be probable and estimable before recognition — was the standard under the prior ASC 310-10 framework and was replaced by CECL. ASC 326 requires recognition of expected credit losses over the life of the asset from Day 1, not merely losses that have already been incurred.
Wrong (A): Vintage analysis is a permitted CECL methodology that tracks loss experience by origination year, which is particularly useful for consumer loan portfolios with homogeneous characteristics.
Wrong (B): The probability-of-default method is a permitted CECL methodology that estimates credit losses by multiplying the probability of default by the loss given default for each instrument or pool.
Wrong (D): The discounted cash flow method is a permitted CECL methodology under ASC 326 that estimates expected credit losses by comparing the present value of expected cash flows to the amortized cost basis.$$,
  difficulty = 'hard'
WHERE id = 1103;

-- Q1114 [hard] topic: Employee Benefit Plans
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 715-60-35-7, the attribution period for postretirement healthcare benefits (OPEB) runs from the employee''s date of hire to the full eligibility date — the date when the employee has earned the right to receive full benefits. This differs from pensions, where costs are typically attributed through the expected retirement date.
Wrong (A): Date of hire to expected retirement date describes the typical pension attribution period, not the OPEB attribution period. OPEB benefits are fully earned at the full eligibility date, which often precedes retirement.
Wrong (C): Vesting date to expected retirement date understates the attribution period by beginning too late. OPEB cost attribution starts at the date of hire, not at some later vesting date.
Wrong (D): Full eligibility date to expected retirement date begins and ends at the wrong points. The attribution period starts at hire and ends at full eligibility, not the reverse sequence described in this choice.$$,
  difficulty = 'hard'
WHERE id = 1114;
