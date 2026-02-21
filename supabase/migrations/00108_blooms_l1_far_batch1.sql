-- Migration: Bloom's L1 rebalancing — FAR batch 1 (51 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 51 L2 (Application) questions to L1 (Remember/Understand) depth for FAR section
-- Affected topics: Revenue Recognition, Equity, Fixed Assets, Leases, Bonds and Debt, Not-for-Profit Accounting, Income Taxes, Contingencies, Governmental Accounting, Consolidations, Employee Benefit Plans, Financial Statements, Intangible Assets, Fair Value, Cash and Receivables, Special Purpose Frameworks, Accounting Changes and Error Corrections, Earnings Per Share, Payables and Accrued Liabilities, Inventory, Statement of Cash Flows

BEGIN;

-- ============================================================
-- REVENUE RECOGNITION (4 questions)
-- ============================================================

-- ID 35: Revenue Recognition — Discount allocation under ASC 606
-- correct_index = 0
UPDATE questions SET
  stem = 'Under ASC 606, what is the general rule for allocating a discount in a bundled contract?',
  choices = '["The discount is allocated proportionally to all performance obligations based on their relative standalone selling prices", "The discount is allocated entirely to the performance obligation with the highest standalone selling price", "The discount is allocated equally among all performance obligations regardless of standalone selling prices", "The discount is deferred and recognized only when all performance obligations are satisfied"]'::jsonb,
  explanation = 'Correct (A): Under ASC 606-10-32-33, when a bundled contract includes a discount, the default rule allocates the discount proportionally to each performance obligation based on relative standalone selling prices. An exception exists under ASC 606-10-32-36 through 32-37 allowing concentration of the discount in one obligation when observable evidence supports it. (B) is wrong because the discount is not assigned to the largest obligation. (C) is wrong because allocation is proportional to standalone selling prices, not equal. (D) is wrong because the discount is allocated at contract inception, not deferred.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 35;

-- ID 58: Revenue Recognition — Gift card breakage recognition
-- correct_index = 1
UPDATE questions SET
  stem = 'Under ASC 606, when is gift card breakage revenue recognized?',
  choices = '["Only when the gift card legally expires under state law", "In proportion to the pattern of rights exercised by the customer, when the entity expects to be entitled to the breakage amount", "Immediately upon sale of the gift card because the customer has paid in full", "At the end of the fiscal year in which the gift card was sold"]'::jsonb,
  explanation = 'Correct (B): Under ASC 606-10-55-49 through 55-50, when an entity expects to be entitled to a breakage amount, the entity recognizes breakage revenue in proportion to the pattern of rights exercised by the customer. This means breakage is recognized over time as redemptions occur. (A) is wrong because breakage is not deferred until legal expiration. (C) is wrong because the gift card creates a contract liability at sale, not immediate revenue. (D) is wrong because recognition follows the redemption pattern, not a fiscal-year cutoff.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 58;

-- ID 150: Revenue Recognition — Progress measurement on long-term contracts
-- correct_index = 2
UPDATE questions SET
  stem = 'Under ASC 606, what method is commonly used to measure progress on long-term construction contracts?',
  choices = '["The completed-contract method, which defers all revenue until the project is finished", "The units-of-delivery method, which measures progress by physical units transferred", "The cost-to-cost input method, which measures progress as costs incurred divided by total estimated costs", "The sales-value method, which measures progress by the selling price of work completed"]'::jsonb,
  explanation = 'Correct (C): Under ASC 606-10-55-20, the cost-to-cost method is a common input method for measuring progress on long-term contracts. It calculates the percentage of completion as costs incurred to date divided by total estimated costs and applies that percentage to the total transaction price. (A) is wrong because ASC 606 generally requires over-time recognition when criteria are met, and the completed-contract method is not a named method under ASC 606. (B) is wrong because units-of-delivery is an output method, not the most commonly used method for construction. (D) is wrong because the sales-value method relates to inventory estimation, not contract progress.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 150;

-- ID 152: Revenue Recognition — Customer loyalty points under ASC 606
-- correct_index = 3
UPDATE questions SET
  stem = 'Under ASC 606, how are customer loyalty points treated?',
  choices = '["As a marketing expense recognized at the time of the original sale", "As a contingent liability disclosed in the footnotes until redeemed", "As a reduction of the transaction price applied entirely to the original sale", "As a separate performance obligation, with a portion of the transaction price allocated to the points based on relative standalone selling price"]'::jsonb,
  explanation = 'Correct (D): Under ASC 606-10-55-41 through 55-45, loyalty points that provide a material right to a customer are treated as a separate performance obligation. A portion of the transaction price from the original sale is allocated to the loyalty points based on relative standalone selling prices and recognized as revenue when the points are redeemed or expire. (A) is wrong because loyalty points are a revenue allocation issue, not a marketing expense. (B) is wrong because the points are accounted for as a contract liability, not merely a footnote disclosure. (C) is wrong because the transaction price is allocated to the points as a separate obligation, not deducted from the original sale.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 152;

-- ============================================================
-- EQUITY (4 questions)
-- ============================================================

-- ID 48: Equity — Definition of treasury stock
-- correct_index = 0
UPDATE questions SET
  stem = 'What is the definition of treasury stock?',
  choices = '["A corporation''s own shares that have been issued and subsequently reacquired but not retired", "Shares authorized by the corporate charter but never issued to investors", "Shares held in a trust for future employee compensation plans", "Shares that have been permanently cancelled and removed from authorized capital"]'::jsonb,
  explanation = 'Correct (A): Treasury stock is a corporation''s own shares that were previously issued to shareholders and later reacquired by the corporation. These shares are issued but no longer outstanding, carry no voting rights, and receive no dividends. (B) is wrong because unissued shares have never been distributed to shareholders. (C) is wrong because shares held in a trust are still outstanding, not treasury stock. (D) is wrong because retired shares are cancelled and no longer exist as treasury stock.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 48;

-- ID 437: Equity — ASC 718 measurement attribute for stock options
-- correct_index = 1
UPDATE questions SET
  stem = 'Under ASC 718, at what value are employee stock options measured?',
  choices = '["At intrinsic value on the date the options are exercised", "At fair value on the grant date", "At par value of the underlying shares on the vesting date", "At the difference between exercise price and market price on the reporting date"]'::jsonb,
  explanation = 'Correct (B): Under ASC 718-10-30-2, share-based compensation awards are measured at fair value on the grant date. For stock options, fair value is typically estimated using an option-pricing model such as Black-Scholes or a lattice model. (A) is wrong because ASC 718 uses grant-date fair value, not exercise-date intrinsic value. (C) is wrong because par value is irrelevant to compensation measurement. (D) is wrong because ongoing mark-to-market adjustments apply to liability-classified awards, not typical equity-classified options.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 437;

-- ID 439: Equity — Performance condition effect on stock options
-- correct_index = 2
UPDATE questions SET
  stem = 'Under ASC 718, how does a performance condition affect stock option accounting?',
  choices = '["It requires the options to be measured at intrinsic value rather than fair value", "It eliminates the compensation expense entirely if the condition is not expected to be met", "It affects whether compensation cost is recognized but does not affect the grant-date fair value measurement of the award", "It requires compensation cost to be recognized only on the date the performance condition is achieved"]'::jsonb,
  explanation = 'Correct (C): Under ASC 718-10-25-20, a performance condition affects whether and when compensation cost is recognized. The grant-date fair value is determined without regard to the performance condition. If the performance condition is probable of being achieved, compensation cost is recognized over the requisite service period. If it later becomes improbable, previously recognized cost is reversed. (A) is wrong because performance conditions do not change the measurement attribute from fair value to intrinsic value. (B) is wrong because the expense is not eliminated — it is simply not recognized until the condition becomes probable. (D) is wrong because cost is recognized over the service period as the condition becomes probable, not solely on the achievement date.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 439;

-- ID 440: Equity — Market condition on stock compensation
-- correct_index = 3
UPDATE questions SET
  stem = 'Under ASC 718, how does a market condition affect the recognition of compensation cost?',
  choices = '["It causes compensation cost to be recognized only if the market condition is actually achieved", "It defers all compensation cost until the market price target is reached", "It requires remeasurement of the award at each reporting date until the condition is resolved", "It is reflected in the grant-date fair value of the award, and compensation cost is recognized regardless of whether the condition is met"]'::jsonb,
  explanation = 'Correct (D): Under ASC 718-10-30-14, a market condition is incorporated into the grant-date fair value measurement using an option-pricing model. Compensation cost is then recognized over the requisite service period regardless of whether the market condition is ultimately achieved. This differs from a performance condition, where recognition depends on probability of achievement. (A) is wrong because compensation cost is recognized even if the market condition is never met. (B) is wrong because recognition is not deferred until the target is achieved. (C) is wrong because equity-classified awards with market conditions are not remeasured after the grant date.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 440;

-- ============================================================
-- FIXED ASSETS (3 questions)
-- ============================================================

-- ID 158: Fixed Assets — Capitalizable building costs
-- correct_index = 0
UPDATE questions SET
  stem = 'Which of the following is capitalized as part of building cost?',
  choices = '["Architect fees, building permits, and excavation costs incurred to construct the building", "Routine maintenance costs incurred after the building is placed in service", "Interest on a short-term loan taken out six months after the building was completed", "Property taxes assessed on the building during its first year of operation"]'::jsonb,
  explanation = 'Correct (A): Under GAAP, costs necessary to bring a long-lived asset to its intended use are capitalized. For a building, this includes architect fees, building permits, excavation, and construction costs. (B) is wrong because routine maintenance is expensed as incurred under ASC 360. (C) is wrong because only interest incurred during the construction period qualifies for capitalization under ASC 835-20. (D) is wrong because property taxes during operations are period expenses, not capitalizable costs.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 158;

-- ID 159: Fixed Assets — Impairment testing trigger under ASC 360
-- correct_index = 1
UPDATE questions SET
  stem = 'Under ASC 360, what triggers impairment testing for long-lived assets?',
  choices = '["Impairment testing is performed annually on a fixed schedule regardless of circumstances", "Events or changes in circumstances that indicate the carrying amount may not be recoverable", "A decline in the asset''s fair value below its original cost at any reporting date", "A change in the asset''s estimated useful life or depreciation method"]'::jsonb,
  explanation = 'Correct (B): Under ASC 360-10-35-21, long-lived assets are tested for impairment when events or changes in circumstances indicate that the carrying amount may not be recoverable. Examples include a significant decrease in market price, adverse change in how the asset is used, or an accumulation of costs significantly exceeding original expectations. (A) is wrong because long-lived assets under ASC 360 use a triggered approach, not an annual fixed schedule (unlike goodwill under ASC 350). (C) is wrong because a fair value decline below original cost alone does not trigger the test — the trigger is based on recoverability indicators. (D) is wrong because a change in estimate or method is an accounting change under ASC 250, not an impairment trigger by itself.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 159;

-- ID 160: Fixed Assets — Depreciation method change reporting
-- correct_index = 2
UPDATE questions SET
  stem = 'Under ASC 250, how is a change in depreciation method reported?',
  choices = '["As a prior-period adjustment with retroactive restatement of all prior financial statements", "As an extraordinary item reported below income from continuing operations", "As a change in accounting estimate effected by a change in principle, applied prospectively", "As a cumulative catch-up adjustment recorded in retained earnings at the beginning of the period"]'::jsonb,
  explanation = 'Correct (C): Under ASC 250-10-45-18, a change in depreciation method is treated as a change in accounting estimate effected by a change in accounting principle. It is accounted for prospectively — the new method is applied to the remaining depreciable base over the remaining useful life. No retroactive restatement is required. (A) is wrong because retroactive restatement applies to changes in accounting principle, not changes in estimate. (B) is wrong because extraordinary item classification was eliminated by ASU 2015-01. (D) is wrong because a cumulative catch-up to retained earnings is not the prescribed treatment for depreciation method changes.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 160;

-- ============================================================
-- LEASES (3 questions)
-- ============================================================

-- ID 57: Leases — Lessee operating lease balance sheet recognition
-- correct_index = 3
UPDATE questions SET
  stem = 'Under ASC 842, what does a lessee recognize on the balance sheet for an operating lease?',
  choices = '["Nothing — operating leases are disclosed only in the footnotes under ASC 842", "A lease receivable asset and an unearned revenue liability", "Only a lease liability with no corresponding asset", "A right-of-use asset and a lease liability"]'::jsonb,
  explanation = 'Correct (D): Under ASC 842-20-25-1, a lessee recognizes both a right-of-use (ROU) asset and a lease liability on the balance sheet for all leases with terms greater than 12 months, including operating leases. This was a major change from ASC 840, which kept operating leases off the balance sheet. (A) is wrong because ASC 842 requires balance sheet recognition for operating leases. (B) is wrong because lease receivables and unearned revenue relate to lessor accounting, not lessee accounting. (C) is wrong because both an ROU asset and a lease liability are recognized.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 57;

-- ID 419: Leases — Lessor classification when no transfer criteria are met
-- correct_index = 0
UPDATE questions SET
  stem = 'Under ASC 842, what type of lease results when none of the transfer criteria are met from the lessor''s perspective?',
  choices = '["An operating lease", "A sales-type lease", "A direct financing lease", "A leveraged lease"]'::jsonb,
  explanation = 'Correct (A): Under ASC 842-10-25-2, a lessor classifies a lease as a sales-type lease if any of the five transfer criteria are met (ownership transfer, purchase option reasonably certain, major part of economic life, present value of payments substantially all of fair value, or specialized asset). If none of the criteria are met, the lease is classified as an operating lease (unless the present value plus any residual value guarantee meets the substantially-all test, which would make it a direct financing lease). (B) is wrong because sales-type requires at least one transfer criterion to be met. (C) is wrong because direct financing has its own specific criteria. (D) is wrong because ASC 842 eliminated leveraged lease classification for new leases.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 419;

-- ID 423: Leases — Short-term lease exemption
-- correct_index = 1
UPDATE questions SET
  stem = 'Under ASC 842, what is the short-term lease exemption?',
  choices = '["Leases with terms of 24 months or less are exempt from all recognition and disclosure requirements", "Leases with terms of 12 months or less at commencement, with no purchase option reasonably certain of exercise, may be excluded from balance sheet recognition", "Any lease with total payments under $5,000 is automatically exempt from recognition", "Leases between related parties are exempt from recognition requirements regardless of lease term"]'::jsonb,
  explanation = 'Correct (B): Under ASC 842-20-25-2, a lessee may elect, as a practical expedient, not to recognize right-of-use assets and lease liabilities for short-term leases. A short-term lease has a term of 12 months or less at commencement and does not include a purchase option the lessee is reasonably certain to exercise. Lease payments are recognized on a straight-line basis. (A) is wrong because the threshold is 12 months, not 24 months. (C) is wrong because there is no dollar-amount threshold for the short-term exemption. (D) is wrong because related-party leases are not exempt from recognition.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 423;

-- ============================================================
-- BONDS AND DEBT (3 questions)
-- ============================================================

-- ID 428: Bonds and Debt — ASU 2020-06 convertible debt changes
-- correct_index = 2
UPDATE questions SET
  stem = 'Under ASU 2020-06, what change was made to convertible debt accounting?',
  choices = '["All convertible debt must now be classified as equity rather than a liability", "Convertible debt is measured at fair value through earnings at each reporting date", "The cash conversion and beneficial conversion feature models were eliminated, requiring most convertible debt to be reported as a single liability", "Convertible instruments are no longer subject to earnings per share dilution calculations"]'::jsonb,
  explanation = 'Correct (C): ASU 2020-06 simplified convertible debt accounting by eliminating the cash conversion model (ASC 470-20) and the beneficial conversion feature model. Under the updated guidance, most convertible debt is accounted for as a single liability measured at amortized cost, unless the fair value option is elected. This reduced complexity and eliminated the separate equity component previously required. (A) is wrong because convertible debt remains classified as a liability, not reclassified to equity. (B) is wrong because amortized cost remains the default measurement; fair value through earnings is only an election. (D) is wrong because convertible instruments still affect EPS calculations under ASC 260.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 428;

-- ID 429: Bonds and Debt — Fair value option under ASC 825
-- correct_index = 3
UPDATE questions SET
  stem = 'Under ASC 825, what is the fair value option for financial instruments?',
  choices = '["A requirement that all financial instruments be measured at fair value at each reporting date", "A mandate that applies only to derivatives and requires mark-to-market accounting", "A rule that prohibits the use of amortized cost for any debt instruments after initial recognition", "An irrevocable election, made on an instrument-by-instrument basis, to measure eligible financial assets or liabilities at fair value with changes reported in earnings"]'::jsonb,
  explanation = 'Correct (D): Under ASC 825-10-25, the fair value option allows an entity to irrevocably elect, at specified election dates (typically initial recognition), to measure eligible financial instruments at fair value. Changes in fair value are reported in earnings each period. The election is made on an instrument-by-instrument basis. (A) is wrong because the fair value option is elective, not a blanket requirement. (B) is wrong because the option applies to a broad range of financial instruments, not just derivatives. (C) is wrong because amortized cost remains available for instruments where the fair value option is not elected.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 429;

-- ID 431: Bonds and Debt — In-substance defeasance definition
-- correct_index = 0
UPDATE questions SET
  stem = 'What is the definition of an in-substance defeasance?',
  choices = '["An arrangement in which a debtor places assets in an irrevocable trust sufficient to cover all scheduled principal and interest payments, effectively eliminating the debt obligation", "A legal agreement in which the creditor formally releases the debtor from all obligations under the debt contract", "A refinancing transaction in which existing debt is replaced with new debt at a lower interest rate", "A modification of debt terms that reduces the face amount owed without any transfer of assets"]'::jsonb,
  explanation = 'Correct (A): An in-substance defeasance occurs when a debtor irrevocably places essentially risk-free assets (typically government securities) in a trust, and the cash flows from those assets are sufficient to cover all scheduled principal and interest payments on the debt. Although the debtor is not legally released, the debt is considered extinguished for accounting purposes under ASC 405-20-40. (B) is wrong because that describes a legal defeasance, not an in-substance defeasance. (C) is wrong because that describes a refinancing, not a defeasance. (D) is wrong because that describes a troubled debt restructuring or modification.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 431;

-- ============================================================
-- NOT-FOR-PROFIT ACCOUNTING (3 questions)
-- ============================================================

-- ID 184: Not-for-Profit Accounting — Expense reporting under ASC 958
-- correct_index = 1
UPDATE questions SET
  stem = 'Under ASC 958, how must a not-for-profit report expenses?',
  choices = '["By natural classification only, such as salaries, rent, and depreciation", "By both natural classification and functional classification, with functional categories including program services and supporting activities", "By functional classification only, such as management and fundraising", "In a single line item on the statement of activities with detailed breakdowns in footnotes only"]'::jsonb,
  explanation = 'Correct (B): Under ASC 958-720-45-2A (as amended by ASU 2016-14), a not-for-profit entity must present expenses by both their natural classification (such as salaries, rent, and supplies) and their functional classification (such as program services, management and general, and fundraising). This can be shown on the face of the statement of activities, in a separate statement, or in the notes. (A) is wrong because natural classification alone is insufficient. (C) is wrong because functional classification alone does not satisfy the requirement. (D) is wrong because a single line item without the dual classification does not comply.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 184;

-- ID 468: Not-for-Profit Accounting — Contributed services recognition
-- correct_index = 2
UPDATE questions SET
  stem = 'Under ASC 958-605, when are contributed services recognized as revenue?',
  choices = '["Whenever any volunteer provides services to the organization, regardless of the nature of the services", "Only when the services are provided by licensed professionals such as doctors or lawyers", "When the services create or enhance a nonfinancial asset, or require specialized skills that would otherwise be purchased by the entity", "Only when the donor provides a written statement of the fair value of the services contributed"]'::jsonb,
  explanation = 'Correct (C): Under ASC 958-605-25-16, contributed services are recognized as revenue only when they (1) create or enhance nonfinancial assets, or (2) require specialized skills, are provided by individuals possessing those skills, and would typically need to be purchased if not donated. Examples include accounting, legal, and medical services. (A) is wrong because general volunteer time does not meet the recognition criteria. (B) is wrong because the standard focuses on specialized skills, not licensure status specifically. (D) is wrong because the donor''s written statement is not the recognition criterion — the nature of the services determines recognition.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 468;

-- ID 469: Not-for-Profit Accounting — Donor restriction classification
-- correct_index = 3
UPDATE questions SET
  stem = 'Under ASC 958, how are donor-restricted contributions classified?',
  choices = '["All contributions are reported as unrestricted revenue regardless of donor intent", "Restricted contributions are reported as liabilities until the restriction is fulfilled", "Restricted contributions reduce the organization''s net assets without donor restrictions", "Contributions with donor-imposed restrictions are classified as net assets with donor restrictions until the restrictions are met or expire"]'::jsonb,
  explanation = 'Correct (D): Under ASC 958-205-05 (as amended by ASU 2016-14), not-for-profit entities classify net assets into two categories: with donor restrictions and without donor restrictions. Contributions received with donor-imposed restrictions are reported as increases in net assets with donor restrictions. When the restriction is satisfied (either by purpose or by passage of time), the amount is reclassified to net assets without donor restrictions. (A) is wrong because donor intent determines the classification. (B) is wrong because restricted contributions are net assets, not liabilities. (C) is wrong because restricted contributions increase the with-restrictions category, not the without-restrictions category.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 469;

-- ============================================================
-- INCOME TAXES (3 questions)
-- ============================================================

-- ID 50: Income Taxes — Valuation allowance purpose
-- correct_index = 0
UPDATE questions SET
  stem = 'Under ASC 740, what is the purpose of a valuation allowance on a deferred tax asset?',
  choices = '["To reduce the deferred tax asset to the amount that is more likely than not to be realized", "To increase the deferred tax asset to its gross undiscounted value", "To convert the deferred tax asset into a deferred tax liability when tax rates change", "To offset the deferred tax asset against any existing deferred tax liabilities on the balance sheet"]'::jsonb,
  explanation = 'Correct (A): Under ASC 740-10-30-5, a valuation allowance is established when it is more likely than not (greater than 50% likelihood) that some or all of the deferred tax asset will not be realized. The allowance reduces the net deferred tax asset to the amount expected to provide future tax benefits. (B) is wrong because the allowance reduces, not increases, the deferred tax asset. (C) is wrong because a valuation allowance does not convert an asset into a liability. (D) is wrong because the valuation allowance is a contra-asset, not a netting mechanism between deferred tax assets and liabilities.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 50;

-- ID 59: Income Taxes — Temporary difference from warranty accrual
-- correct_index = 1
UPDATE questions SET
  stem = 'Under ASC 740, what creates a temporary difference for tax purposes?',
  choices = '["A difference between book and tax income that will never reverse, such as municipal bond interest", "A difference between the book basis and tax basis of an asset or liability that will reverse in future periods, such as a warranty accrual recognized for books but not yet deductible for tax", "A permanent exclusion of income from taxation under the Internal Revenue Code", "A difference in accounting periods used for book and tax reporting"]'::jsonb,
  explanation = 'Correct (B): Under ASC 740-10-20, a temporary difference arises when there is a difference between the tax basis and the reported amount of an asset or liability in the financial statements that will result in taxable or deductible amounts in future years. A warranty accrual is a classic example: the expense is recognized for book purposes when estimated, but is deductible for tax only when paid, creating a deductible temporary difference and a deferred tax asset. (A) is wrong because a difference that never reverses is a permanent difference, not temporary. (C) is wrong because permanent exclusions do not create deferred tax effects. (D) is wrong because differences in reporting periods are not the definition of temporary differences under ASC 740.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 59;

-- ID 174: Income Taxes — Permanent vs temporary differences
-- correct_index = 2
UPDATE questions SET
  stem = 'Under ASC 740, what is the distinction between a permanent difference and a temporary difference?',
  choices = '["A permanent difference affects the deferred tax computation, while a temporary difference affects only the current tax provision", "A permanent difference arises from timing of revenue recognition, while a temporary difference arises from expense recognition only", "A permanent difference never reverses and does not create deferred taxes, while a temporary difference reverses in future periods and requires deferred tax recognition", "There is no distinction — ASC 740 treats all book-tax differences identically for deferred tax purposes"]'::jsonb,
  explanation = 'Correct (C): A permanent difference is a book-tax difference that will never reverse — examples include municipal bond interest income (book income, never taxed) and nondeductible fines. Permanent differences affect the effective tax rate but do not create deferred tax assets or liabilities. A temporary difference reverses in future periods and requires recognition of deferred tax assets or liabilities under ASC 740-10-25. Examples include depreciation timing differences and accrued liabilities deductible when paid. (A) is wrong because it reverses the relationship — temporary differences affect deferred taxes. (B) is wrong because both revenue and expense items can create either type of difference. (D) is wrong because ASC 740 explicitly distinguishes the two types.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 174;

-- ============================================================
-- CONTINGENCIES (3 questions)
-- ============================================================

-- ID 1136: Contingencies — Loss contingency accrual criteria
-- correct_index = 3
UPDATE questions SET
  stem = 'Under ASC 450, when must a loss contingency be accrued?',
  choices = '["When the loss is possible and the amount can be reasonably estimated", "When the loss is remote but the amount exceeds a materiality threshold", "When a lawsuit has been filed, regardless of the likelihood of an unfavorable outcome", "When the loss is probable and the amount can be reasonably estimated"]'::jsonb,
  explanation = 'Correct (D): Under ASC 450-20-25-2, a loss contingency is accrued (recognized as a liability and charged to expense) when two conditions are met: (1) it is probable that a liability has been incurred, and (2) the amount of the loss can be reasonably estimated. If the loss is only possible or remote, it is disclosed or ignored, respectively, but not accrued. (A) is wrong because a possible loss requires disclosure, not accrual. (B) is wrong because remote losses generally require no recognition or disclosure. (C) is wrong because filing a lawsuit alone does not determine probability.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1136;

-- ID 1137: Contingencies — Range of loss estimation
-- correct_index = 0
UPDATE questions SET
  stem = 'Under ASC 450, how is a loss accrued when the probable amount falls within a range?',
  choices = '["The minimum amount in the range is accrued when no amount within the range is a better estimate than any other", "The maximum amount in the range is always accrued to be conservative", "The midpoint of the range is accrued as the most representative estimate", "No accrual is recorded until the exact amount of the loss is determined"]'::jsonb,
  explanation = 'Correct (A): Under ASC 450-20-30-1, when the estimated loss falls within a range and no amount within the range is a better estimate, the minimum amount of the range is accrued. If a specific amount within the range is the best estimate, that amount is accrued. (B) is wrong because the maximum is not automatically accrued — GAAP does not default to the most conservative figure. (C) is wrong because the standard specifies the minimum, not the midpoint, when no best estimate exists. (D) is wrong because the standard requires accrual even when only a range is available, provided the conditions are met.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1137;

-- ID 1139: Contingencies — Subsequent events and contingency recognition
-- correct_index = 1
UPDATE questions SET
  stem = 'Under ASC 855, how are subsequent events evaluated for contingency recognition?',
  choices = '["Subsequent events are never considered when evaluating contingencies because the measurement date is the balance sheet date only", "Recognized (Type I) subsequent events provide additional evidence about conditions that existed at the balance sheet date and may require adjustment to the financial statements", "All subsequent events require adjustment to the financial statements regardless of whether the condition existed at the balance sheet date", "Subsequent events related to contingencies are disclosed only in the auditor''s report, not in the financial statements"]'::jsonb,
  explanation = 'Correct (B): Under ASC 855-10-25, subsequent events are classified as recognized (Type I) or nonrecognized (Type II). Recognized events provide additional evidence about conditions that existed at the balance sheet date, such as the settlement of a lawsuit that was pending at year-end. These events may require adjustment of the financial statements, including accrual of a loss contingency. Nonrecognized events relate to conditions that arose after the balance sheet date and require disclosure but not adjustment. (A) is wrong because subsequent events are explicitly part of the evaluation process. (C) is wrong because only Type I events require adjustment. (D) is wrong because subsequent events are addressed in the financial statements or notes, not solely in the auditor''s report.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1139;

-- ============================================================
-- GOVERNMENTAL ACCOUNTING (3 questions)
-- ============================================================

-- ID 179: Governmental Accounting — Five governmental fund types
-- correct_index = 2
UPDATE questions SET
  stem = 'Under GASB standards, what are the five types of governmental funds?',
  choices = '["General, enterprise, internal service, pension trust, and investment trust", "General, special revenue, capital projects, permanent, and enterprise", "General, special revenue, capital projects, debt service, and permanent", "General, proprietary, fiduciary, budgetary, and agency"]'::jsonb,
  explanation = 'Correct (C): Under GASB standards, the five governmental fund types are: (1) general fund, (2) special revenue funds, (3) capital projects funds, (4) debt service funds, and (5) permanent funds. These funds use the current financial resources measurement focus and modified accrual basis of accounting. (A) is wrong because enterprise, internal service, pension trust, and investment trust are proprietary or fiduciary fund types, not governmental. (B) is wrong because enterprise is a proprietary fund type, not governmental. (D) is wrong because proprietary, fiduciary, budgetary, and agency are fund categories or types that do not belong to the governmental fund classification.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 179;

-- ID 457: Governmental Accounting — Government-wide statements basis of accounting
-- correct_index = 3
UPDATE questions SET
  stem = 'Under GASB 34, what basis of accounting is used in government-wide financial statements?',
  choices = '["Modified accrual basis, the same as governmental funds", "Cash basis, recognizing transactions only when cash is received or paid", "Budgetary basis, aligning with the adopted budget", "Full accrual basis, using the economic resources measurement focus"]'::jsonb,
  explanation = 'Correct (D): Under GASB Statement No. 34, government-wide financial statements use the economic resources measurement focus and full accrual basis of accounting. This means revenues are recognized when earned and expenses when incurred, regardless of cash timing. This contrasts with governmental fund statements, which use modified accrual. (A) is wrong because modified accrual applies to governmental fund statements, not government-wide statements. (B) is wrong because cash basis is not used for government-wide reporting. (C) is wrong because budgetary basis is used for budgetary comparison schedules, not government-wide statements.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 457;

-- ID 458: Governmental Accounting — Net pension liability under GASB 68
-- correct_index = 0
UPDATE questions SET
  stem = 'Under GASB 68, what is the net pension liability?',
  choices = '["The difference between the total pension liability and the pension plan''s fiduciary net position (plan assets)", "The total amount of pension benefits that will be paid to all current retirees", "The annual required contribution that a government employer must pay to the pension fund", "The unfunded actuarial accrued liability as calculated by the pension plan''s actuary"]'::jsonb,
  explanation = 'Correct (A): Under GASB Statement No. 68, the net pension liability is defined as the total pension liability (the actuarial present value of projected benefit payments attributed to past service) minus the pension plan''s fiduciary net position (the plan''s assets available to pay benefits). This net amount is reported on the employer''s statement of net position. (B) is wrong because the total pension liability includes benefits for all participants, not just current retirees, and the net pension liability is the liability minus plan assets. (C) is wrong because the annual required contribution is a funding concept, not the net pension liability. (D) is wrong because GASB 68 replaced the unfunded actuarial accrued liability concept with the net pension liability framework.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 458;

-- ============================================================
-- CONSOLIDATIONS (3 questions)
-- ============================================================

-- ID 56: Consolidations — Intercompany elimination
-- correct_index = 1
UPDATE questions SET
  stem = 'In consolidated financial statements, which intercompany items must be eliminated?',
  choices = '["Only intercompany loans and interest, because other transactions are considered arm''s length", "All intercompany transactions and balances, including sales, receivables, payables, interest, and unrealized profits on transfers between consolidated entities", "Only intercompany equity investments, because other balances net to zero automatically", "Only intercompany transactions that exceed a materiality threshold set by management"]'::jsonb,
  explanation = 'Correct (B): Under ASC 810-10-45-1, all intercompany balances and transactions must be eliminated in preparing consolidated financial statements. This includes intercompany sales and cost of goods sold, receivables and payables, interest revenue and expense, unrealized profits on inventory or asset transfers, and intercompany investments. The consolidated entity is presented as if it were a single economic unit. (A) is wrong because all intercompany items are eliminated, not just loans and interest. (C) is wrong because equity investment elimination is just one component — all intercompany balances must be removed. (D) is wrong because there is no materiality exception for intercompany eliminations in consolidation.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 56;

-- ID 185: Consolidations — Noncontrolling interest in income
-- correct_index = 2
UPDATE questions SET
  stem = 'How is noncontrolling interest presented in a consolidated income statement?',
  choices = '["As an operating expense deducted before arriving at consolidated net income", "As a footnote disclosure only, with no line item on the face of the income statement", "As a separate line item that allocates a portion of consolidated net income to the noncontrolling shareholders", "As an extraordinary item reported below income from continuing operations"]'::jsonb,
  explanation = 'Correct (C): Under ASC 810-10-45-19, consolidated net income must be attributed to both the parent and the noncontrolling interest. The noncontrolling interest''s share of consolidated net income is presented as a separate line item on the face of the consolidated income statement. Total consolidated net income is reported first, then allocated between the controlling and noncontrolling interests. (A) is wrong because the noncontrolling interest share is an allocation of net income, not an operating expense. (B) is wrong because ASC 810 requires presentation on the face of the income statement, not just footnote disclosure. (D) is wrong because extraordinary item classification was eliminated by ASU 2015-01.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 185;

-- ID 186: Consolidations — Acquisition method under ASC 805
-- correct_index = 3
UPDATE questions SET
  stem = 'Under ASC 805, what method is used to account for business combinations?',
  choices = '["The pooling-of-interests method, which combines the book values of both entities", "The equity method, which records the investment at cost and adjusts for the investor''s share of earnings", "The cost method, which records the acquired entity at its historical book value", "The acquisition method, which measures identifiable assets acquired and liabilities assumed at fair value on the acquisition date"]'::jsonb,
  explanation = 'Correct (D): Under ASC 805-10-05-4, all business combinations are accounted for using the acquisition method. This requires the acquirer to recognize the identifiable assets acquired and liabilities assumed at their acquisition-date fair values, measure any noncontrolling interest, and recognize goodwill or a gain from a bargain purchase. (A) is wrong because the pooling-of-interests method was eliminated by SFAS 141 (now codified in ASC 805). (B) is wrong because the equity method is used for significant influence investments, not business combinations. (C) is wrong because recording at historical book value does not comply with ASC 805.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 186;

-- ============================================================
-- EMPLOYEE BENEFIT PLANS (3 questions)
-- ============================================================

-- ID 1107: Employee Benefit Plans — Netting pension plan assets
-- correct_index = 0
UPDATE questions SET
  stem = 'Under ASC 715, can a company offset the funded status of multiple defined benefit plans?',
  choices = '["No — an overfunded plan is reported as an asset and an underfunded plan is reported as a liability; they cannot be netted against each other", "Yes — all defined benefit plans are combined and a single net pension asset or liability is reported", "Yes — but only when the plans cover the same employee group", "No — but the company may elect to net the plans if it discloses the gross amounts in the footnotes"]'::jsonb,
  explanation = 'Correct (A): Under ASC 715-30-25-1, an employer must recognize the funded status of each defined benefit plan separately. An overfunded plan (plan assets exceed the benefit obligation) is reported as a noncurrent asset, while an underfunded plan (benefit obligation exceeds plan assets) is reported as a current or noncurrent liability. Netting of separately funded plans is not permitted. (B) is wrong because aggregation of separately funded plans is prohibited. (C) is wrong because covering the same employee group does not allow netting. (D) is wrong because there is no election to net with footnote disclosure.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1107;

-- ID 1109: Employee Benefit Plans — PBO components
-- correct_index = 1
UPDATE questions SET
  stem = 'Under ASC 715, what components are included in the projected benefit obligation calculation?',
  choices = '["Only the benefits earned by employees to date based on current salary levels", "Benefits earned to date based on expected future salary levels, incorporating assumptions about salary growth, discount rates, and employee turnover", "Only the present value of benefits currently being paid to retirees", "The total of all contributions made by the employer to the pension trust"]'::jsonb,
  explanation = 'Correct (B): Under ASC 715-30-35-31, the projected benefit obligation (PBO) measures the actuarial present value of all benefits attributed to employee service to date, using assumptions about future salary increases. Key assumptions include the discount rate, expected salary progression, employee turnover, and mortality rates. The PBO differs from the accumulated benefit obligation (ABO), which uses current salary levels. (A) is wrong because that describes the accumulated benefit obligation, not the projected benefit obligation. (C) is wrong because the PBO includes obligations to current employees, not just retirees. (D) is wrong because employer contributions relate to plan funding, not the obligation measurement.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1109;

-- ID 1110: Employee Benefit Plans — Corridor approach for actuarial losses
-- correct_index = 2
UPDATE questions SET
  stem = 'Under ASC 715, what is the corridor approach for amortizing net actuarial gains and losses?',
  choices = '["All actuarial gains and losses are recognized immediately in net income as they occur", "Actuarial gains and losses are never recognized — they remain permanently in accumulated other comprehensive income", "The excess of net actuarial gains or losses over 10% of the greater of the PBO or plan assets is amortized over the average remaining service period of active employees", "Actuarial gains and losses are amortized on a straight-line basis over 20 years regardless of amount"]'::jsonb,
  explanation = 'Correct (C): Under ASC 715-30-35-24, the corridor approach requires amortization of net actuarial gains or losses only when the cumulative unrecognized amount exceeds a corridor equal to 10% of the greater of the projected benefit obligation (PBO) or the market-related value of plan assets. The excess beyond the corridor is amortized over the average remaining service period of active employees expected to receive benefits. (A) is wrong because the corridor approach defers recognition, not recognizing amounts immediately. (B) is wrong because the corridor approach does require eventual amortization of amounts exceeding the threshold. (D) is wrong because the amortization period is based on remaining service life, not a fixed 20-year period.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1110;

-- ============================================================
-- FINANCIAL STATEMENTS (2 questions)
-- ============================================================

-- ID 149: Financial Statements — Segment reporting criteria
-- correct_index = 3
UPDATE questions SET
  stem = 'Under ASC 280, what criteria determine a reportable operating segment?',
  choices = '["Any division with more than 100 employees must be reported as a separate segment", "Only segments that generate external revenue are reportable; intersegment revenue is excluded", "Segments are reportable only if they operate in a different geographic region than the parent", "A segment is reportable if it meets any one of the 10% quantitative thresholds for revenue, profit or loss, or assets"]'::jsonb,
  explanation = 'Correct (D): Under ASC 280-10-50-12, an operating segment is reportable if it meets any one of three quantitative thresholds: (1) its revenue (including intersegment revenue) is 10% or more of combined revenue, (2) its reported profit or loss is 10% or more of the greater of combined reported profit or combined reported loss, or (3) its assets are 10% or more of combined assets. (A) is wrong because employee count is not a segment reporting criterion. (B) is wrong because intersegment revenue is included in the 10% revenue test. (C) is wrong because geographic location alone does not determine reportability.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 149;

-- ID 370: Financial Statements — GAAP hierarchy
-- correct_index = 0
UPDATE questions SET
  stem = 'Under ASC 105, what is the highest level of authority in the GAAP hierarchy?',
  choices = '["The FASB Accounting Standards Codification", "AICPA Accounting Interpretations and Implementation Guides", "Widely recognized industry practices and textbooks", "SEC Staff Accounting Bulletins"]'::jsonb,
  explanation = 'Correct (A): Under ASC 105-10-05-1, the FASB Accounting Standards Codification (ASC) is the single source of authoritative U.S. GAAP for nongovernmental entities. It superseded all previously issued standards, interpretations, and technical bulletins by consolidating them into one framework. (B) is wrong because AICPA interpretations are nonauthoritative unless incorporated into the Codification. (C) is wrong because industry practices and textbooks are nonauthoritative sources. (D) is wrong because SEC guidance is authoritative only for SEC registrants and sits alongside, not above, the Codification.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 370;

-- ============================================================
-- INTANGIBLE ASSETS (2 questions)
-- ============================================================

-- ID 411: Intangible Assets — Internal-use software capitalization stage
-- correct_index = 1
UPDATE questions SET
  stem = 'Under ASC 350-40, during which project stage are internal-use software costs capitalized?',
  choices = '["During the preliminary project stage when feasibility is being evaluated", "During the application development stage when coding, testing, and installation occur", "During the post-implementation stage when training and maintenance take place", "During all stages, from preliminary planning through post-implementation"]'::jsonb,
  explanation = 'Correct (B): Under ASC 350-40-25, costs incurred during the application development stage are capitalized. This stage includes coding, software configuration, testing, and installation. Costs during the preliminary project stage (conceptual formulation, evaluating alternatives) and the post-implementation/operation stage (training, maintenance, data conversion for ongoing use) are expensed as incurred. (A) is wrong because preliminary project costs are expensed. (C) is wrong because post-implementation costs are expensed. (D) is wrong because only the application development stage qualifies for capitalization.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 411;

-- ID 412: Intangible Assets — Acquired IPR&D in a business combination
-- correct_index = 2
UPDATE questions SET
  stem = 'Under ASC 805, how is in-process research and development acquired in a business combination accounted for?',
  choices = '["It is expensed immediately on the acquisition date as required by SFAS 2", "It is recognized as goodwill and never separately identified on the balance sheet", "It is recognized as an indefinite-lived intangible asset at fair value and tested for impairment until the project is completed or abandoned", "It is recognized as a finite-lived intangible asset and amortized over the estimated development period beginning on the acquisition date"]'::jsonb,
  explanation = 'Correct (C): Under ASC 805-20-25-4 and ASC 350-30-35-17A, in-process research and development (IPR&D) acquired in a business combination is recognized as a separate intangible asset at fair value. It is classified as an indefinite-lived asset and is not amortized while the research is in progress. Instead, it is tested for impairment at least annually. Once the project is completed, the asset is reclassified as finite-lived and amortized; if abandoned, it is written off. (A) is wrong because the immediate-expensing rule under SFAS 2 was superseded by SFAS 141(R) (now ASC 805). (B) is wrong because IPR&D is separately identified, not subsumed into goodwill. (D) is wrong because amortization does not begin until the project is completed.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 412;

-- ============================================================
-- FAIR VALUE (2 questions)
-- ============================================================

-- ID 1151: Fair Value — Trading securities measurement
-- correct_index = 3
UPDATE questions SET
  stem = 'Under ASC 320, how are trading securities measured after initial recognition?',
  choices = '["At amortized cost with impairment testing at each reporting date", "At the lower of cost or market value", "At original cost with no subsequent adjustments until sale", "At fair value, with unrealized gains and losses reported in net income"]'::jsonb,
  explanation = 'Correct (D): Under ASC 320-10-35-1, trading securities are measured at fair value at each reporting date. Unrealized holding gains and losses are included in earnings (net income) for the period. This differs from available-for-sale securities, where unrealized gains and losses are reported in other comprehensive income. (A) is wrong because amortized cost applies to held-to-maturity debt securities, not trading securities. (B) is wrong because lower of cost or market is an inventory concept, not the measurement for trading securities. (C) is wrong because trading securities require ongoing fair value measurement.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1151;

-- ID 1152: Fair Value — Cost approach under ASC 820
-- correct_index = 0
UPDATE questions SET
  stem = 'Under ASC 820, what does the cost approach measure in a fair value assessment?',
  choices = '["The amount that would be required to replace the service capacity of an asset, often called current replacement cost", "The present value of expected future cash flows generated by the asset", "The price that would be received in an orderly transaction between market participants", "The original acquisition cost adjusted for accumulated depreciation"]'::jsonb,
  explanation = 'Correct (A): Under ASC 820-10-35-34, the cost approach reflects the amount that would be required currently to replace the service capacity of an asset (current replacement cost). The approach considers obsolescence — physical deterioration, functional obsolescence, and economic obsolescence. (B) is wrong because that describes the income approach. (C) is wrong because that describes the general definition of fair value and the market approach. (D) is wrong because net book value (cost less depreciation) is a historical cost concept, not the cost approach under ASC 820.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1152;

-- ============================================================
-- CASH AND RECEIVABLES (2 questions)
-- ============================================================

-- ID 1099: Cash and Receivables — Bank reconciliation purpose
-- correct_index = 1
UPDATE questions SET
  stem = 'What is the purpose of a bank reconciliation?',
  choices = '["To determine the amount of interest earned on the bank account during the period", "To identify and explain differences between the cash balance per the bank statement and the cash balance per the company''s books", "To verify that all checks written during the period have been cashed by the payees", "To calculate the total deposits made during the reporting period"]'::jsonb,
  explanation = 'Correct (B): A bank reconciliation identifies and explains the differences between the ending cash balance reported on the bank statement and the ending cash balance recorded in the company''s accounting records. Common reconciling items include outstanding checks, deposits in transit, bank service charges, and errors. The reconciliation ensures both balances are adjusted to the correct (true) cash balance. (A) is wrong because interest identification is only one small reconciling item, not the purpose. (C) is wrong because verifying check clearance is a byproduct, not the primary purpose. (D) is wrong because calculating total deposits is not the goal of a reconciliation.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1099;

-- ID 1100: Cash and Receivables — Allowance for credit losses under CECL
-- correct_index = 2
UPDATE questions SET
  stem = 'Under CECL (ASC 326), how is the allowance for credit losses determined?',
  choices = '["Based only on losses that have already been incurred and are confirmed as uncollectible", "By applying a flat percentage to all outstanding receivables regardless of credit risk", "Based on expected lifetime credit losses, incorporating historical data, current conditions, and reasonable and supportable forecasts", "By recording losses only when specific accounts are identified as uncollectible"]'::jsonb,
  explanation = 'Correct (C): Under ASC 326-20-30-1 (the current expected credit losses model, or CECL), the allowance for credit losses is measured based on expected lifetime credit losses on financial assets. The estimate must consider historical loss experience, current conditions, and reasonable and supportable forecasts of future economic conditions. This forward-looking model replaced the previous incurred-loss model. (A) is wrong because CECL requires expected losses, not just incurred losses. (B) is wrong because CECL requires a risk-based assessment, not a flat percentage. (D) is wrong because CECL measures expected losses on a pool basis, not waiting for specific identification.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1100;

-- ============================================================
-- SPECIAL PURPOSE FRAMEWORKS (2 questions)
-- ============================================================

-- ID 1116: Special Purpose Frameworks — SPF types
-- correct_index = 3
UPDATE questions SET
  stem = 'Which of the following is a special purpose framework recognized under AU-C 800?',
  choices = '["IFRS as issued by the International Accounting Standards Board", "The full accrual basis of accounting under U.S. GAAP", "The modified accrual basis used by governmental funds under GASB", "The tax basis of accounting, which uses tax law rules for revenue and expense recognition"]'::jsonb,
  explanation = 'Correct (D): Under AU-C Section 800, special purpose frameworks include (1) the tax basis of accounting, (2) the cash basis of accounting, (3) a regulatory basis of accounting, and (4) a contractual basis of accounting. The tax basis uses income tax rules (IRC and regulations) rather than GAAP to determine revenue and expense recognition. (A) is wrong because IFRS is a general-purpose framework, not a special purpose framework. (B) is wrong because U.S. GAAP is the standard general-purpose framework. (C) is wrong because GASB modified accrual is part of the governmental GAAP framework, not a special purpose framework under AU-C 800.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1116;

-- ID 1117: Special Purpose Frameworks — Tax basis financial statements
-- correct_index = 0
UPDATE questions SET
  stem = 'What distinguishes tax-basis financial statements from GAAP-basis financial statements?',
  choices = '["Tax-basis statements use income tax law to determine recognition and measurement, which may differ from GAAP on items like depreciation methods and revenue timing", "Tax-basis statements are identical to GAAP statements except they exclude the statement of cash flows", "Tax-basis statements are prepared only by governmental entities that are exempt from federal income tax", "Tax-basis statements must be audited by a CPA before they can be filed with the IRS"]'::jsonb,
  explanation = 'Correct (A): Tax-basis financial statements apply the recognition and measurement rules of the Internal Revenue Code and related regulations rather than GAAP. This results in differences such as depreciation methods (MACRS vs. GAAP straight-line), revenue recognition timing, and treatment of certain expenses. Tax-basis statements are commonly used by small businesses and partnerships. (B) is wrong because the differences go beyond excluding one financial statement — the measurement basis itself differs. (C) is wrong because tax-basis statements are used by private entities, not just governmental organizations. (D) is wrong because tax-basis statements do not require an audit to be filed; they are an alternative reporting framework.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1117;

-- ============================================================
-- ACCOUNTING CHANGES AND ERROR CORRECTIONS (2 questions)
-- ============================================================

-- ID 5250: Accounting Changes — Change in accounting principle
-- correct_index = 1
UPDATE questions SET
  stem = 'Under ASC 250, how is a change in accounting principle generally reported?',
  choices = '["Prospectively, by applying the new principle only to current and future transactions", "Retrospectively, by adjusting prior-period financial statements as though the new principle had always been used", "As a cumulative effect adjustment to net income in the period of the change", "As an extraordinary item in the income statement for the year of the change"]'::jsonb,
  explanation = 'Correct (B): Under ASC 250-10-45-5, a change in accounting principle is generally reported retrospectively. This means the entity adjusts the carrying amounts of assets and liabilities as of the beginning of the first period presented, with an offsetting adjustment to retained earnings (or other appropriate equity component), and restates prior-period comparative financial statements. (A) is wrong because prospective treatment is reserved for changes in estimate and certain impracticability exceptions. (C) is wrong because the cumulative-effect method was the approach under APB 20, which was superseded by SFAS 154 (ASC 250). (D) is wrong because extraordinary item classification was eliminated by ASU 2015-01.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5250;

-- ID 5251: Accounting Changes — Change in accounting estimate
-- correct_index = 2
UPDATE questions SET
  stem = 'Under ASC 250, how is a change in accounting estimate reported?',
  choices = '["Retrospectively, by restating all prior periods presented", "As a cumulative catch-up adjustment to retained earnings at the beginning of the current period", "Prospectively, in the period of the change and future periods if the change affects both", "As a separate line item between income from continuing operations and net income"]'::jsonb,
  explanation = 'Correct (C): Under ASC 250-10-45-17, a change in accounting estimate is accounted for prospectively. The effect of the change is recognized in the period of change if only that period is affected, or in the period of change and future periods if both are affected. Examples include changes in useful life, salvage value, or bad debt estimates. (A) is wrong because retrospective treatment applies to changes in accounting principle, not estimate. (B) is wrong because cumulative catch-up to retained earnings is not the required treatment for estimate changes. (D) is wrong because estimate changes are not presented as a separate line item.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5251;

-- ============================================================
-- EARNINGS PER SHARE (1 question)
-- ============================================================

-- ID 194: Earnings Per Share — Basic EPS formula
-- correct_index = 3
UPDATE questions SET
  stem = 'What is the formula for basic earnings per share?',
  choices = '["Net income divided by total shares authorized in the corporate charter", "Net income plus preferred dividends divided by weighted-average common shares outstanding", "Operating income divided by weighted-average common and preferred shares outstanding combined", "Net income minus preferred dividends divided by weighted-average common shares outstanding"]'::jsonb,
  explanation = 'Correct (D): Under ASC 260-10-45-10, basic earnings per share is calculated as net income available to common shareholders (net income minus preferred dividends) divided by the weighted-average number of common shares outstanding during the period. Preferred dividends are subtracted because that income is not available to common shareholders. (A) is wrong because authorized shares include unissued shares and do not reflect shares actually outstanding. (B) is wrong because preferred dividends are subtracted from, not added to, net income. (C) is wrong because operating income is not the numerator and preferred shares are not included in the denominator for basic EPS.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 194;

-- ============================================================
-- PAYABLES AND ACCRUED LIABILITIES (1 question)
-- ============================================================

-- ID 5231: Payables and Accrued Liabilities — Compensated absences
-- correct_index = 0
UPDATE questions SET
  stem = 'Under ASC 710, when must an employer accrue a liability for compensated absences?',
  choices = '["When the obligation is attributable to services already rendered, the right vests or accumulates, payment is probable, and the amount can be reasonably estimated", "Only when employees submit formal requests for time off during the current fiscal year", "Only at the end of the fiscal year, regardless of whether employees have earned the time off", "When the employer decides to grant additional vacation days beyond the standard policy"]'::jsonb,
  explanation = 'Correct (A): Under ASC 710-10-25-1, an employer must accrue a liability for compensated absences (such as vacation and sick leave) when all four conditions are met: (1) the obligation relates to services already rendered, (2) the rights vest or accumulate, (3) payment is probable, and (4) the amount can be reasonably estimated. (B) is wrong because the accrual is based on earned rights, not formal requests. (C) is wrong because the accrual is recognized as the obligation arises during the year, not only at year-end. (D) is wrong because the accrual relates to earned benefits under existing policy, not management discretion to grant additional days.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5231;

-- ============================================================
-- INVENTORY (1 question)
-- ============================================================

-- ID 395: Inventory — Retail inventory method purpose
-- correct_index = 1
UPDATE questions SET
  stem = 'What is the purpose of the retail inventory method?',
  choices = '["To determine the selling price of inventory by applying a standard markup to cost", "To estimate ending inventory at cost by applying a cost-to-retail ratio to the ending inventory stated at retail prices", "To track individual inventory items using barcode scanning at the point of sale", "To record inventory at net realizable value for companies that sell perishable goods"]'::jsonb,
  explanation = 'Correct (B): The retail inventory method estimates the cost of ending inventory by converting the known retail value of ending inventory to cost using a cost-to-retail percentage. The ratio is calculated as goods available for sale at cost divided by goods available for sale at retail. This method is commonly used by retailers with large volumes of inventory. (A) is wrong because the method estimates cost from retail, not the other way around. (C) is wrong because barcode scanning is a perpetual inventory system technique, not the retail method. (D) is wrong because the retail method estimates cost, not net realizable value.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 395;

-- ============================================================
-- STATEMENT OF CASH FLOWS (1 question)
-- ============================================================

-- ID 1879: Statement of Cash Flows — Indirect method adjustments
-- correct_index = 2
UPDATE questions SET
  stem = 'Under ASC 230, what adjustments are made to net income when preparing the operating section using the indirect method?',
  choices = '["Only depreciation and amortization are added back; no other adjustments are necessary", "Net income is replaced by cash receipts from customers minus cash payments to suppliers", "Non-cash items such as depreciation are added back, gains on asset sales are subtracted, losses are added back, and changes in operating assets and liabilities are adjusted", "Net income is adjusted only for changes in current assets and current liabilities, with no adjustment for non-cash charges"]'::jsonb,
  explanation = 'Correct (C): Under ASC 230-10-45-28, the indirect method begins with net income and adjusts for (1) non-cash items included in net income, such as depreciation, amortization, and impairment charges (added back); (2) gains on sales of assets (subtracted, because the cash is reported in investing activities) and losses (added back); and (3) changes in operating assets and liabilities (such as increases in accounts receivable subtracted and increases in accounts payable added). (A) is wrong because depreciation is only one of many required adjustments. (B) is wrong because that describes the direct method, not the indirect method. (D) is wrong because non-cash charges like depreciation are essential adjustments under the indirect method.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1879;

COMMIT;
