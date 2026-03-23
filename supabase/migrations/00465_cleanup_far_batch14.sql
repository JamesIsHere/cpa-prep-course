-- FAR cleanup batch 14 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q1988 [easy] topic: Fixed Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 360-10-30-1, the cost of property, plant, and equipment includes all expenditures necessary to acquire the asset and prepare it for its intended use. This includes the purchase price ($120,000), shipping ($8,000), and installation ($5,000), totaling $133,000.
Wrong (A): $120,000 excludes shipping and installation costs, which are required to be capitalized as part of the asset''s cost because they are necessary to bring the asset to working condition.
Wrong (B): $128,000 includes shipping but omits the $5,000 installation cost, which is also a necessary expenditure to prepare the equipment for use.
Wrong (D): $136,000 incorrectly includes the $3,000 maintenance contract, which is a period expense because it maintains rather than enhances the asset.$$,
  difficulty = 'easy'
WHERE id = 1988;

-- Q1992 [easy] topic: Fixed Assets
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 360-10-35-4, the units-of-production method allocates depreciable cost based on actual usage. Depreciable base = $80,000 − $5,000 = $75,000. Rate per mile = $75,000 / 200,000 = $0.375. Year 1 depreciation = 35,000 × $0.375 = $13,125.
Wrong (A): $14,000 results from using the full cost of $80,000 without subtracting salvage value, which overstates the depreciable base.
Wrong (C): $12,250 does not correspond to any correct calculation of the depreciable base or mileage rate.
Wrong (D): $15,750 likely results from applying an incorrect mileage figure or failing to deduct salvage value properly.$$,
  difficulty = 'easy'
WHERE id = 1992;

-- Q1999 [medium] topic: Fixed Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 410-20-25-2, an asset retirement obligation is initially recognized at fair value when a legal obligation exists and a reasonable estimate can be made. Fair value is typically measured using expected present value techniques, discounting future settlement costs at a credit-adjusted risk-free rate.
Wrong (A): Undiscounted estimated cost ignores the time value of money, which ASC 410-20 requires be reflected through present value discounting.
Wrong (B): The carrying amount of the related fixed asset is what gets adjusted after the ARO is measured — it is not the basis for measuring the ARO itself.
Wrong (C): Replacement cost of the asset is irrelevant to measuring the retirement obligation, which relates to the cost of settling the obligation, not replacing the asset.$$,
  difficulty = 'medium'
WHERE id = 1999;

-- Q2001 [hard] topic: Fixed Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 410-20-35-8, upward revisions to ARO estimates are treated as new layers of obligation. The $200,000 increase is discounted at the current credit-adjusted risk-free rate (5%), and the resulting present value is added to both the ARO liability and the carrying amount of the related asset.
Wrong (A): Recognizing the full $200,000 as a current period expense ignores the requirement to capitalize the increase as part of the asset and discount it to present value.
Wrong (B): Adding the $200,000 undiscounted would overstate the liability because ASC 410-20 requires upward revisions to be discounted at the current rate.
Wrong (D): Recording the adjustment in other comprehensive income is incorrect because ARO adjustments are recognized through the asset and liability, not through OCI.$$,
  difficulty = 'hard'
WHERE id = 2001;

-- Q2008 [hard] topic: Fixed Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 360-10-35-17, impairment of assets held and used follows a two-step process. Step 1: the carrying amount ($2,000,000) exceeds undiscounted future cash flows ($1,800,000), confirming impairment. Step 2: the impairment loss equals carrying amount minus fair value = $2,000,000 − $1,500,000 = $500,000.
Wrong (A): $200,000 is the difference between carrying amount and undiscounted cash flows, but ASC 360 measures impairment using fair value, not undiscounted cash flows.
Wrong (B): $400,000 appears to use the value in use ($1,600,000) rather than fair value ($1,500,000), but ASC 360 requires fair value for measurement.
Wrong (D): $300,000 does not correspond to any correct application of the two-step impairment test under ASC 360.$$,
  difficulty = 'hard'
WHERE id = 2008;

-- Q2009 [medium] topic: Fixed Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 360-10-35-20, once an impairment loss is recognized on a long-lived asset held and used, the reduced carrying amount becomes the new cost basis. Restoration of previously recognized impairment losses is prohibited under U.S. GAAP.
Wrong (A): Reversal above original cost is not permitted; U.S. GAAP prohibits any reversal of impairment on long-lived assets held and used, regardless of fair value recovery.
Wrong (B): Reversal above the written-down amount is also prohibited; this treatment is allowed under IFRS (IAS 36) but not under U.S. GAAP.
Wrong (D): Assets held for sale follow ASC 360-10-35-40, which allows subsequent increases in fair value less costs to sell, but only up to the cumulative loss previously recognized — this does not apply to assets held and used.$$,
  difficulty = 'medium'
WHERE id = 2009;

-- Q2014 [hard] topic: Fixed Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 360-10-45-9, when an asset is reclassified to held-for-sale, it is measured at the lower of carrying amount or fair value less costs to sell. Since $350,000 < $400,000, a $50,000 loss is recognized. Depreciation ceases once the asset is classified as held-for-sale.
Wrong (A): Continuing to depreciate is incorrect because ASC 360 requires depreciation to cease once an asset meets the held-for-sale criteria.
Wrong (B): Reversing previously recognized depreciation is not permitted; depreciation already recorded reflects past use of the asset and cannot be undone.
Wrong (C): Waiting until the asset is sold would fail to recognize the impairment at the reclassification date, violating the lower-of-cost-or-fair-value-less-costs-to-sell requirement.$$,
  difficulty = 'hard'
WHERE id = 2014;

-- Q2019 [easy] topic: Intangible Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 350-30-35-4, an intangible asset has an indefinite useful life when there is no foreseeable limit to the period over which it generates cash flows. A trademark renewable indefinitely at minimal cost meets this criterion and is not amortized but tested for impairment annually.
Wrong (A): A patent with 15 years remaining has a finite legal life and must be amortized over that remaining period under ASC 350-30-35-3.
Wrong (B): A 20-year franchise agreement has a definite contractual life and is amortized over the franchise term.
Wrong (D): A customer list with a 5-year attrition rate has a determinable useful life based on the expected pattern of economic benefit and must be amortized.$$,
  difficulty = 'easy'
WHERE id = 2019;

-- Q2020 [medium] topic: Intangible Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 350-20-35-4, the quantitative goodwill impairment test compares the fair value of the reporting unit to its carrying amount (including goodwill). If carrying amount exceeds fair value, an impairment loss is recognized equal to the excess, limited to the total goodwill allocated to that reporting unit.
Wrong (B): Undiscounted future cash flows are used in the ASC 360 recoverability test for long-lived assets, not for goodwill impairment testing under ASC 350.
Wrong (C): Goodwill is not amortized for public companies under U.S. GAAP (though private companies may elect amortization under ASU 2014-02); the impairment test does not involve amortization.
Wrong (D): Replacement cost is not the measurement basis for goodwill impairment; ASC 350 uses fair value of the reporting unit as the benchmark.$$,
  difficulty = 'medium'
WHERE id = 2020;

-- Q2024 [medium] topic: Intangible Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 730-10-25-1, all research and development costs are expensed as incurred. This includes materials consumed ($120,000), personnel costs ($200,000), depreciation on equipment with no alternative future use ($45,000), and a reasonable allocation of overhead ($30,000), totaling $395,000.
Wrong (A): $320,000 omits both the depreciation on R&D equipment and the overhead allocation, both of which are R&D costs under ASC 730.
Wrong (B): $365,000 omits the overhead allocation of $30,000, which ASC 730-10-25-2 requires to be included as an R&D cost.
Wrong (D): $350,000 omits the depreciation on R&D equipment ($45,000), which must be expensed because the equipment has no alternative future use.$$,
  difficulty = 'medium'
WHERE id = 2024;

-- Q2032 [medium] topic: Intangible Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 730-10-25-2, equipment acquired for R&D that has alternative future use beyond the current project is capitalized as a fixed asset and depreciated over its useful life. The depreciation charge is then allocated to R&D expense for periods the equipment is used in R&D.
Wrong (A): Salaries of scientists conducting basic research are expensed as incurred under ASC 730 because personnel costs are a direct R&D expenditure.
Wrong (B): Materials consumed in R&D experiments are expensed as incurred because they have no future economic benefit once consumed.
Wrong (D): Costs of operating a dedicated R&D facility are expensed as incurred under ASC 730, including depreciation and maintenance of the facility.$$,
  difficulty = 'medium'
WHERE id = 2032;

-- Q2033 [medium] topic: Intangible Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 350-40-25-2, internal-use software costs are capitalized only during the application development stage. Preliminary project stage costs ($80,000) and post-implementation stage costs ($40,000) are expensed as incurred, leaving $350,000 to be capitalized.
Wrong (A): $470,000 incorrectly capitalizes all three stages, but ASC 350-40 limits capitalization to the application development stage only.
Wrong (C): $430,000 incorrectly includes post-implementation costs ($40,000), which cover training, maintenance, and minor modifications that must be expensed.
Wrong (D): $80,000 represents only the preliminary project stage costs, which are expensed, not capitalized — this inverts the correct treatment.$$,
  difficulty = 'medium'
WHERE id = 2033;

-- Q2034 [easy] topic: Intangible Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 350-20-35-13, once a goodwill impairment loss is recognized, it cannot be reversed in subsequent periods. Any recovery in value would be considered internally generated goodwill, which is not recognized under U.S. GAAP.
Wrong (A): Recovery in fair value does not permit reversal because the prohibition is absolute under ASC 350, regardless of the reporting unit''s subsequent performance.
Wrong (B): Reversal up to the original goodwill amount is not allowed; the prohibition applies to any amount of previously recognized goodwill impairment.
Wrong (D): A qualitative assessment may indicate no further impairment is needed, but it cannot be used to reverse a previously recognized impairment loss.$$,
  difficulty = 'easy'
WHERE id = 2034;

-- Q2045 [hard] topic: Intangible Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 985-20-35-1, capitalized software costs are amortized using the greater of (1) the revenue ratio method or (2) straight-line over the remaining economic life. Revenue ratio: ($900,000 / $3,000,000) × $450,000 = $135,000. Straight-line: $450,000 / 4 years = $112,500. The greater amount is $135,000.
Wrong (B): $112,500 is the straight-line amount, but ASC 985-20 requires the greater of straight-line or the revenue ratio, and the revenue ratio produces a higher figure in Year 1.
Wrong (C): $90,000 does not correspond to either the revenue ratio or straight-line calculation and appears to use an incorrect denominator or revenue figure.
Wrong (D): $150,000 overstates amortization and does not match either the revenue ratio method or straight-line calculation.$$,
  difficulty = 'hard'
WHERE id = 2045;

-- Q2046 [easy] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 842-10-25-2, a lease is classified as a finance lease if any one of five criteria is met, including when the present value of lease payments equals or exceeds substantially all (typically 90% or more) of the asset''s fair value.
Wrong (A): A lease term of 50% of the economic life does not meet the threshold; ASC 842 requires the lease term to be for a major part (typically 75% or more) of the remaining economic life.
Wrong (C): Variable payments based on an index are included in lease measurement but are not a classification criterion for finance versus operating leases.
Wrong (D): A renewal option alone is not a classification criterion; it affects lease classification only to the extent it changes the lease term when reasonably certain to be exercised.$$,
  difficulty = 'easy'
WHERE id = 2046;

-- Q2048 [easy] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 842-20-25-6, a lessee with an operating lease recognizes a single lease cost on a straight-line basis over the lease term, regardless of the timing or pattern of payments.
Wrong (A): Accelerated expense recognition applies to finance leases, where separate amortization of the ROU asset and interest on the lease liability produce a front-loaded pattern.
Wrong (B): The effective interest method is used for the interest component of finance leases, not for operating lease expense recognition.
Wrong (D): Variable expense based on actual usage applies only to variable lease payments tied to usage or performance, not to the base lease cost of an operating lease.$$,
  difficulty = 'easy'
WHERE id = 2048;

-- Q2051 [medium] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 842-20-25-2, the short-term lease exemption applies only to leases with a term of 12 months or less at commencement (after considering renewal options reasonably certain to be exercised). A 3-year lease exceeds this threshold and does not qualify for the exemption.
Wrong (A): While a ROU asset and lease liability must be recognized, this choice does not address why the short-term exemption fails — the lease term exceeds 12 months.
Wrong (B): Straight-line expense without balance sheet recognition is the treatment for qualifying short-term leases, but this 3-year lease does not qualify.
Wrong (C): Capitalizing total lease payments as a prepaid asset is not a recognized treatment under ASC 842 for any lease classification.$$,
  difficulty = 'medium'
WHERE id = 2051;

-- Q2052 [medium] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 842-10-30-5, the lease liability includes fixed payments, variable payments that depend on an index or rate (measured using the index at commencement), amounts probable under residual value guarantees, and purchase option exercise prices if reasonably certain to be exercised.
Wrong (B): Variable payments based on usage or performance are excluded from the lease liability and expensed as incurred under ASC 842-20-55-1.
Wrong (C): Executory costs such as insurance paid directly by the lessee are not components of the lease liability; they are separate operating expenses.
Wrong (D): Initial direct costs are added to the ROU asset, not included in the lease liability measurement.$$,
  difficulty = 'medium'
WHERE id = 2052;

-- Q2053 [medium] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 842-10-25-2, meeting any single finance lease criterion is sufficient for classification. The lease term (10 years) is 83% of the economic life (12 years), which constitutes a major part (typically 75%+), satisfying the economic life criterion even though the PV threshold (85% < 90%) is not met.
Wrong (A): An operating lease classification would apply only if none of the five finance lease criteria are met, but the economic life test is satisfied here.
Wrong (B): Short-term lease applies only to leases of 12 months or less at commencement, which clearly does not apply to a 10-year lease.
Wrong (D): Direct financing lease is a lessor classification under ASC 842, not a lessee classification — lessees classify leases as either finance or operating.$$,
  difficulty = 'medium'
WHERE id = 2053;

-- Q2055 [easy] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 842-10-25-3, a lessor classifies a lease as sales-type if any of the five criteria are met (the same criteria as lessee finance lease classification). Transfer of ownership at the end of the lease term is the first criterion, and the lessor derecognizes the asset and recognizes a net investment in the lease.
Wrong (B): An operating lease classification applies when none of the five criteria are met, but transfer of ownership satisfies the first criterion.
Wrong (C): A direct financing lease requires that none of the five criteria are met but the lessor''s residual value is guaranteed or collectibility is probable — it cannot apply when ownership transfers.
Wrong (D): Leveraged lease is a legacy classification from ASC 840 that is no longer recognized under ASC 842 for new leases.$$,
  difficulty = 'easy'
WHERE id = 2055;

-- Q2057 [medium] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 842-20-25-6, operating lease expense is recognized on a straight-line basis over the lease term. Total payments = (2 × $40,000) + (4 × $60,000) = $320,000. Annual straight-line expense = $320,000 / 6 = $53,333.
Wrong (A): $40,000 is the Year 1-2 payment amount, not the straight-line expense, which must average all payments over the full lease term.
Wrong (B): $50,000 is the simple average of $40,000 and $60,000 but fails to weight the payments by the number of years at each rate.
Wrong (D): $60,000 is the Year 3-6 payment amount and ignores the lower payments in the first two years that reduce the straight-line average.$$,
  difficulty = 'medium'
WHERE id = 2057;

-- Q2058 [medium] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 842-10-25-8, a lease modification that does not grant an additional right of use is accounted for by remeasuring the lease liability using the revised payments, revised term, and a revised discount rate as of the modification date. The corresponding adjustment is made to the ROU asset.
Wrong (B): Treating the modification as an entirely new lease applies only when the modification grants an additional right of use that is priced commensurate with its standalone price under ASC 842-10-25-8(a).
Wrong (C): Continuing with original terms and deferring recognition would fail to reflect the economic substance of the changed lease terms in the financial statements.
Wrong (D): Expensing additional payments as incurred ignores the requirement to remeasure the lease liability and adjust the ROU asset prospectively.$$,
  difficulty = 'medium'
WHERE id = 2058;

-- Q2059 [medium] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 842-20-50-4, lessees must disclose a maturity analysis of lease liabilities showing undiscounted future lease payments for each of the first five years and a total for remaining years, reconciled to the lease liabilities on the balance sheet.
Wrong (A): The lessor''s implicit rate is typically not known to the lessee and is not a required lessee disclosure under ASC 842.
Wrong (C): The lessor''s cost basis in the leased asset is a lessor consideration, not a lessee disclosure requirement.
Wrong (D): The fair value of the leased asset at commencement is used by the lessor for classification purposes and is not a required lessee disclosure.$$,
  difficulty = 'medium'
WHERE id = 2059;

-- Q2060 [hard] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 842-20-30-5, the lease liability = $24,000 × 2.7232 = $65,357. The ROU asset equals the lease liability minus lease incentives received: $65,357 − $6,000 = $59,357. Lease incentives reduce the ROU asset, not the lease liability.
Wrong (A): $72,000 represents the total undiscounted payments (3 × $24,000) and ignores both the present value discounting and the lease incentive reduction.
Wrong (B): $65,357 is the lease liability amount, not the ROU asset; the ROU asset must be reduced by the $6,000 lease incentive received.
Wrong (D): $71,357 appears to subtract only a partial amount rather than the full $6,000 incentive from a base figure.$$,
  difficulty = 'hard'
WHERE id = 2060;

-- Q2065 [medium] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 842-20-30-5, the lease liability = $30,000 × 3.6730 = $110,190. The ROU asset = lease liability + initial direct costs = $110,190 + $4,000 = $114,190. Initial direct costs are added to the ROU asset but are not included in the lease liability.
Wrong (A): $110,190 is the lease liability only and omits the $4,000 of initial direct costs that must be added to the ROU asset.
Wrong (B): $120,000 represents the total undiscounted payments (4 × $30,000) and ignores present value discounting.
Wrong (D): $116,190 does not correspond to any correct combination of the lease liability and initial direct costs.$$,
  difficulty = 'medium'
WHERE id = 2065;

-- Q2067 [medium] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 842-10-15-3, a lease requires an identified asset that the customer controls. If the supplier has a substantive right to substitute the server at any time without the customer''s approval and the substitution is practical and economically beneficial to the supplier, there is no identified asset, so the contract is a service arrangement, not a lease.
Wrong (A): A contract for specific office space for 3 years involves an identified asset (the specific space) with customer control, meeting the lease definition.
Wrong (B): Warehouse space where the customer controls access and usage involves an identified asset under customer control, qualifying as a lease.
Wrong (C): Exclusive use of a vehicle for 2 years involves a specifically identified asset under customer control, satisfying the lease criteria.$$,
  difficulty = 'medium'
WHERE id = 2067;

-- Q2068 [easy] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 842-20-25-6, operating lease expense is recognized on a straight-line basis over the entire lease term, including rent-free periods. Total payments = $210,000. Annual straight-line expense = $210,000 / 5 years = $42,000.
Wrong (B): $60,000 is the annual payment rate during the non-free periods and ignores the requirement to spread total cost evenly across the entire 5-year term.
Wrong (C): $46,667 does not correspond to any correct calculation of the straight-line expense and may result from dividing by an incorrect number of payment periods.
Wrong (D): $35,000 does not correspond to the correct total payments divided by the lease term.$$,
  difficulty = 'easy'
WHERE id = 2068;

-- Q2083 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 835-30-45-1A, debt issuance costs are reported as a direct deduction from the face amount of the related debt on the balance sheet, similar to a debt discount. They are amortized over the life of the debt using the effective interest method, increasing interest expense each period.
Wrong (A): Reporting issuance costs as a deferred charge asset was the prior treatment, but ASU 2015-03 amended ASC 835-30 to require presentation as a deduction from the debt.
Wrong (B): Issuance costs do not represent contributed capital and have no relation to additional paid-in capital.
Wrong (C): Immediate expensing is incorrect because the costs provide benefit over the entire term of the debt and must be amortized.$$,
  difficulty = 'medium'
WHERE id = 2083;

-- Q2084 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 470-50-40-2, gain or loss on early extinguishment equals carrying amount minus reacquisition price. Here: $960,000 − $975,000 = −$15,000, a loss. The reacquisition price exceeds the carrying amount (which includes the unamortized discount), resulting in a loss.
Wrong (A): A $15,000 gain reverses the correct sign; since the reacquisition price exceeds the carrying amount, the result is a loss, not a gain.
Wrong (B): A $25,000 gain incorrectly uses the face value ($1,000,000) minus the reacquisition price ($975,000) and also gets the direction wrong.
Wrong (C): A $25,000 loss incorrectly computes the difference from face value rather than carrying amount; the carrying amount (net of discount) is the relevant figure.$$,
  difficulty = 'medium'
WHERE id = 2084;

-- Q2087 [hard] topic: Bonds and Debt
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 470-20-25-12 (book value method), when convertible bonds are converted, the carrying amount ($4,850,000) is transferred to equity with no gain or loss. Shares issued = ($5,000,000 / $1,000) × 50 = 250,000 shares. Common stock at par = 250,000 × $10 = $2,500,000. APIC = $4,850,000 − $2,500,000 = $2,350,000.
Wrong (A): Crediting $5,000,000 to common stock uses the face value of the bonds rather than the carrying amount, which would overstate equity and create an imbalance.
Wrong (B): While the allocation amounts are correct, this choice is listed to test whether students can distinguish the overall total credit ($4,850,000) from the face value ($5,000,000).
Wrong (D): Crediting the full $4,850,000 to common stock only ignores the distinction between par value and additional paid-in capital.$$,
  difficulty = 'hard'
WHERE id = 2087;

-- Q2089 [easy] topic: Bonds and Debt
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 835-30-45-1A, bond issuance costs are presented as a direct deduction from the carrying amount of the debt. Carrying amount = $1,000,000 − $25,000 = $975,000. The issuance costs will be amortized over the bond term, increasing effective interest expense.
Wrong (A): $1,000,000 ignores the issuance costs, which must reduce the carrying amount under ASC 835-30.
Wrong (B): $1,025,000 incorrectly adds the issuance costs to the face value rather than subtracting them.
Wrong (D): $997,500 does not correspond to any correct calculation of par value minus issuance costs.$$,
  difficulty = 'easy'
WHERE id = 2089;

-- Q2100 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 470-20-25-2, traditional convertible debt (without a beneficial conversion feature and when no separate equity component is identified) is recorded entirely as a liability. The $120,000 premium ($2,000,000 × 0.06) is recorded as a bond premium and amortized over the term, reducing interest expense each period.
Wrong (A): Allocation between debt and equity components applies to convertible instruments with a beneficial conversion feature or under ASU 2020-06''s specific scope, not to traditional convertible debt.
Wrong (C): Crediting APIC for the conversion feature would apply only if a separate equity component is identified, which is not the case for traditional convertible debt without a BCF.
Wrong (D): Recognizing the premium as revenue is incorrect because the premium represents an excess price paid for the debt instrument, not earned revenue.$$,
  difficulty = 'medium'
WHERE id = 2100;

-- Q2106 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 835-30-45-1A, both the bond discount and issuance costs reduce the carrying amount. Issue price = $800,000 × 0.94 = $752,000. After deducting issuance costs of $12,000: initial carrying amount = $752,000 − $12,000 = $740,000.
Wrong (A): $752,000 reflects the issue price but omits the $12,000 issuance cost deduction required by ASC 835-30.
Wrong (C): $788,000 subtracts the issuance costs from par rather than from the actual proceeds, ignoring the discount.
Wrong (D): $800,000 is the par value and ignores both the discount and the issuance costs.$$,
  difficulty = 'medium'
WHERE id = 2106;

-- Q2118 [medium] topic: Equity
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 505-20-25-3, a stock dividend transfers an amount from retained earnings to paid-in capital (common stock and APIC). Retained earnings decreases, but total equity is unchanged because the transfer is within equity. EPS decreases because the number of outstanding shares increases while net income remains the same.
Wrong (A): Total equity does not decrease because a stock dividend is a reclassification within equity, not a distribution of assets.
Wrong (B): EPS does not increase; the additional shares outstanding cause EPS to decrease, not increase.
Wrong (C): Retained earnings is not unchanged — it decreases by the fair value (for small stock dividends) or par value (for large stock dividends) of the shares issued.$$,
  difficulty = 'medium'
WHERE id = 2118;

-- Q2121 [hard] topic: Equity
-- Issues: no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 505-30-30-6 (par value method), treasury stock is debited at par ($10). The original APIC from issuance is reversed: $25 − $10 = $15 debited to APIC. The excess of reacquisition cost over original issue price is charged to retained earnings: $30 − $25 = $5 debited to RE. Cash is credited $30.
Wrong (A): Debiting APIC for $20 incorrectly computes APIC as the difference between reacquisition cost and par ($30 − $10), conflating the par value method with the cost method approach.
Wrong (B): Debiting treasury stock at $30 is the cost method treatment under ASC 505-30-30-3, not the par value method specified in the question.
Wrong (D): Debiting treasury stock at $25 and recognizing a gain on treasury stock is incorrect because treasury stock transactions never result in gains or losses on the income statement.$$,
  difficulty = 'hard'
WHERE id = 2121;

-- Q2127 [hard] topic: Equity
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 852-20 (reorganizations other than bankruptcy), a quasi-reorganization allows a company to eliminate a retained earnings deficit by restating assets to fair value and offsetting the deficit against paid-in capital, giving the company a fresh start. Retained earnings is then dated for a reasonable period.
Wrong (A): Restructuring debt obligations with creditors is addressed under ASC 470-60 (troubled debt restructuring) or ASC 852-10 (bankruptcy), not a quasi-reorganization.
Wrong (B): Liquidation and distribution of assets to shareholders is a dissolution proceeding governed by state law and ASC 205-30, not a quasi-reorganization.
Wrong (C): Converting preferred stock to common stock is a recapitalization transaction, not a quasi-reorganization, and does not address retained earnings deficits.$$,
  difficulty = 'hard'
WHERE id = 2127;

-- Q2141 [easy] topic: Contingencies
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 450-20-25-2, when the likelihood of a loss contingency is remote, neither accrual nor disclosure is required. The only exception is for guarantees of indebtedness of others under ASC 460, which require disclosure even if remote.
Wrong (A): Accruing $1,000,000 would be appropriate only if the loss were probable and reasonably estimable, not when the likelihood is remote.
Wrong (B): Disclosure in the notes is required for reasonably possible losses, not for remote contingencies (except for debt guarantees).
Wrong (D): Accruing a partial amount has no basis under ASC 450; accrual is an all-or-nothing determination based on the probability and estimability criteria.$$,
  difficulty = 'easy'
WHERE id = 2141;

-- Q2142 [medium] topic: Contingencies
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 460-10-25-4, guarantees of indebtedness of others must be disclosed in the notes even when the likelihood of loss is remote. This is a specific exception to the general ASC 450 rule. The guarantor must also recognize the fair value of the guarantee obligation at inception.
Wrong (A): Omitting disclosure is incorrect because ASC 460 creates a specific exception requiring disclosure of guarantees regardless of the probability of loss.
Wrong (B): Recording a receivable from the subsidiary has no basis under ASC 460; the guarantee is a contingent obligation of Bentley, not an asset.
Wrong (C): Accruing $400,000 is inappropriate because the likelihood of having to perform is remote, so the contingent loss does not meet the accrual threshold under ASC 450.$$,
  difficulty = 'medium'
WHERE id = 2142;

-- Q2143 [medium] topic: Contingencies
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 450-30-25-1, gain contingencies are never accrued regardless of probability, to avoid recognizing revenue before it is realized. When the gain is probable, adequate note disclosure is appropriate, but the disclosure should not give misleading implications about realization likelihood.
Wrong (A): Accruing the gain violates the conservatism principle embedded in ASC 450-30, which prohibits recognition of gain contingencies until realized.
Wrong (B): Recording as deferred revenue is inappropriate because the gain from a lawsuit settlement is not revenue from a contract with a customer and has no deferral mechanism.
Wrong (C): No disclosure would be inadequate when the gain is probable; ASC 450-30 requires note disclosure for probable gain contingencies.$$,
  difficulty = 'medium'
WHERE id = 2143;

-- Q2145 [hard] topic: Contingencies
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 450-20-25-5, loss contingencies are generally not discounted to present value. The full estimated amount of $2,000,000 should be accrued. Discounting is only permitted when the amount and timing of payments are fixed or reliably determinable and a specific authoritative standard supports it.
Wrong (A): Discounting at the incremental borrowing rate is not permitted under ASC 450 because the standard does not allow present value measurement for loss contingencies with uncertain timing.
Wrong (B): Discounting at the risk-free rate is also not permitted; ASC 450 does not provide for present value discounting of contingent losses regardless of the discount rate used.
Wrong (D): Discounting only when timing is fixed describes the narrow exception, but even then a specific authoritative standard must support it — the general rule under ASC 450 is no discounting.$$,
  difficulty = 'hard'
WHERE id = 2145;

-- Q2147 [hard] topic: Contingencies
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 855-10-25-1, the lawsuit settlement is a recognized (Type I) subsequent event because the lawsuit existed at the balance sheet date. The settlement provides additional evidence about conditions at year-end, so the financial statements should be adjusted to accrue the $500,000 loss.
Wrong (B): Disclosure-only treatment applies to nonrecognized (Type II) subsequent events — conditions that arose after the balance sheet date — which is not the case here since the lawsuit existed before year-end.
Wrong (C): Ignoring the settlement would result in materially misstated financial statements, as the subsequent event provides definitive evidence of a loss existing at the balance sheet date.
Wrong (D): Accruing $250,000 as a compromise has no basis in GAAP; the settlement amount of $500,000 is the best estimate and must be accrued in full.$$,
  difficulty = 'hard'
WHERE id = 2147;

-- Q2148 [medium] topic: Contingencies
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 450-10-05-4, a commitment is a contractual obligation to perform in the future that does not depend on uncertain future events. Unlike a contingency, the obligation itself is certain — only the future performance remains. Material commitments such as noncancelable purchase orders are disclosed in the notes.
Wrong (A): An obligation whose outcome depends on future events describes a contingency, not a commitment, under ASC 450.
Wrong (B): A claim by an outside party is a type of loss contingency (e.g., a lawsuit), not a commitment.
Wrong (C): A probable future outflow of resources is the accrual criterion for a loss contingency, not the definition of a commitment.$$,
  difficulty = 'medium'
WHERE id = 2148;

-- Q2151 [easy] topic: Contingencies
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 450-20-25-2 and further specified by ASC 326 (CECL model), credit losses on accounts receivable represent a loss contingency that is typically probable and estimable, requiring accrual through an allowance for doubtful accounts.
Wrong (A): A pending lawsuit with an uncertain outcome may be only reasonably possible, which requires disclosure rather than accrual.
Wrong (B): An unasserted claim that counsel believes is frivolous is unlikely to be asserted, so it does not meet the probability threshold for accrual or even disclosure.
Wrong (C): A guarantee where loss is remote does not meet the accrual criteria, though ASC 460 requires note disclosure of the guarantee.$$,
  difficulty = 'easy'
WHERE id = 2151;

-- Q2153 [medium] topic: Contingencies
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 460-10-25-4, the guarantor must recognize a liability at the inception of a guarantee at its fair value, representing the stand-ready obligation. This initial measurement reflects the premium the guarantor would charge for issuing the guarantee in a standalone transaction.
Wrong (A): The maximum potential amount of the guarantee is a required disclosure under ASC 460-10-50, but it is not the measurement basis for initial recognition.
Wrong (B): Recording zero with disclosure only was the treatment under prior standards, but ASC 460 now requires fair value recognition at inception.
Wrong (C): Expected value of future payments is a component that may be used in estimating fair value, but the standard specifically requires fair value, not expected value alone.$$,
  difficulty = 'medium'
WHERE id = 2153;

-- Q2154 [hard] topic: Contingencies
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 450-20-25-2, when it is probable that an unasserted claim will be asserted and, upon assertion, a loss is probable and reasonably estimable, the entity must accrue the estimated loss. Both conditions are met here — probable assertion and probable loss of $250,000.
Wrong (A): The claim being unasserted does not exempt the entity from accrual; ASC 450 explicitly addresses unasserted claims and requires accrual when both assertion and loss are probable.
Wrong (B): Disclosure without accrual would be appropriate if the loss were reasonably possible rather than probable, but here the loss is assessed as probable.
Wrong (D): Accruing $125,000 as a conservative estimate has no basis under ASC 450; when a single best estimate exists, that amount must be accrued in full.$$,
  difficulty = 'hard'
WHERE id = 2154;

-- Q2156 [medium] topic: Contingencies
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 450-30-25-1, gain contingencies are never accrued regardless of probability, even when virtually certain. The appropriate treatment is note disclosure. Gain contingencies are recognized only when realized — typically when cash is received or a legally binding settlement is finalized.
Wrong (A): Accruing the gain violates ASC 450-30, which prohibits recognition of gain contingencies before realization to maintain conservative financial reporting.
Wrong (C): Recording a receivable would prematurely recognize the gain as an asset before the settlement is finalized and cash is received.
Wrong (D): Waiting until cash is received without any disclosure would be inadequate when a gain contingency is virtually certain; note disclosure is warranted.$$,
  difficulty = 'medium'
WHERE id = 2156;

-- Q2164 [easy] topic: Income Taxes
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 740-10-30-5, a valuation allowance is required when it is more likely than not (greater than 50% likelihood) that some portion or all of the deferred tax asset will not be realized. The assessment considers all available positive and negative evidence.
Wrong (A): Any uncertainty about realization is too low a threshold; ASC 740 uses the more-likely-than-not standard (>50%), not a zero-uncertainty standard.
Wrong (B): Having a net operating loss carryforward does not automatically require a valuation allowance; it is only required if realization is not more likely than not.
Wrong (C): There is no dollar threshold in ASC 740; the valuation allowance requirement is based on probability of realization, not the size of the DTA.$$,
  difficulty = 'easy'
WHERE id = 2164;

-- Q2166 [medium] topic: Income Taxes
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 740-10-30-3, deferred tax assets and liabilities are computed using enacted tax rates. DTL from depreciation = $200,000 × 21% = $42,000. DTA from warranty = $60,000 × 21% = $12,600. Net DTL = $42,000 − $12,600 = $29,400. Under ASC 740-10-45-6, DTAs and DTLs from the same jurisdiction are presented net.
Wrong (B): A net DTA of $29,400 reverses the direction; the taxable temporary difference ($200,000) exceeds the deductible difference ($60,000), producing a net liability, not an asset.
Wrong (C): $42,000 represents only the DTL from excess tax depreciation and ignores the offsetting DTA from the warranty accrual.
Wrong (D): $12,600 represents only the DTA from the warranty accrual and ignores the larger DTL from depreciation.$$,
  difficulty = 'medium'
WHERE id = 2166;

-- Q2170 [hard] topic: Income Taxes
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 740-10-35-4, deferred taxes are adjusted in the period the rate change is enacted. The underlying temporary difference = $420,000 / 0.21 = $2,000,000. New DTL at 25% = $2,000,000 × 0.25 = $500,000, an increase of $80,000. This adjustment is recognized as additional income tax expense.
Wrong (B): A decrease in the DTL would occur if the rate decreased, not increased; a higher enacted rate increases the deferred tax liability.
Wrong (C): Waiting until the rate change takes effect is incorrect; ASC 740 requires recognition in the period of enactment, not the period of effectiveness.
Wrong (D): Reporting the adjustment in OCI is incorrect; rate change adjustments on items originally recognized in income are reported in income tax expense, not OCI.$$,
  difficulty = 'hard'
WHERE id = 2170;

-- Q2173 [easy] topic: Income Taxes
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 740-10-25-6, the recognition threshold for uncertain tax positions is more likely than not (greater than 50% likelihood) that the position will be sustained upon examination. Only positions meeting this threshold proceed to Step 2 (measurement) using the largest amount of benefit with greater than 50% cumulative probability.
Wrong (A): Probable (75-80%) is the threshold used for loss contingencies under ASC 450, not for uncertain tax positions under ASC 740.
Wrong (C): Virtually certain (95%+) is too high a threshold and is not used in ASC 740; this standard would prevent recognition of most legitimate tax positions.
Wrong (D): Reasonably possible (25-50%) is below the required threshold and is a classification used in ASC 450 for contingencies requiring disclosure only.$$,
  difficulty = 'easy'
WHERE id = 2173;
