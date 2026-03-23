-- FAR cleanup batch 7 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q1995 [medium] topic: Fixed Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Lennox Co. has a machine with a carrying amount of $300,000. Undiscounted expected future cash flows are $320,000, and the fair value is $260,000. Under ASC 360, what impairment loss, if any, should Lennox record?$EXPL$,
  choices = $EXPL$["$0","$40,000","$20,000","$60,000"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (A): Under ASC 360-10-35-17, a long-lived asset is tested for recoverability by comparing the carrying amount to undiscounted expected future cash flows. Because $320,000 exceeds the $300,000 carrying amount, the asset passes the recoverability test and no impairment is recognized. Fair value is only relevant if the recoverability test fails.
Wrong (B): $40,000 incorrectly computes carrying amount minus fair value ($300,000 − $260,000), but this step is never reached because the asset passes the recoverability test.
Wrong (C): $20,000 is not a meaningful difference in this scenario and reflects a computational error.
Wrong (D): $60,000 incorrectly uses the difference between undiscounted cash flows and fair value, which is not part of the ASC 360 impairment model.$EXPL$,
  difficulty = 'medium'
WHERE id = 1995;

-- Q1996 [easy] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 360-10-25-1, expenditures that extend an asset's useful life, increase its capacity, or improve its efficiency are capitalized. Replacing a major component that extends useful life meets the capitalization criteria because it enhances the future economic benefits of the asset.
Wrong (A): Ordinary repairs that merely maintain an asset's condition are period expenses under ASC 360-10-25-1 because they do not increase future benefits.
Wrong (B): Repainting the exterior is a routine maintenance activity that does not extend useful life or improve efficiency, so it is expensed as incurred.
Wrong (C): Annual maintenance costs preserve existing functionality without enhancing it and are expensed in the period incurred.$EXPL$,
  difficulty = 'easy'
WHERE id = 1996;

-- Q1997 [easy] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 360-10-40-5, gain or loss on disposal equals the difference between proceeds and carrying amount. Book value = $150,000 − $90,000 = $60,000. Gain = $75,000 − $60,000 = $15,000. The gain is recognized in income in the period of disposal.
Wrong (B): $75,000 incorrectly treats the entire proceeds as a gain, ignoring the remaining book value of the asset.
Wrong (C): A $15,000 loss would apply only if proceeds were below book value, but here proceeds ($75,000) exceed book value ($60,000).
Wrong (D): $25,000 loss is not a valid computation under the disposal model and does not correspond to any difference in this scenario.$EXPL$,
  difficulty = 'easy'
WHERE id = 1997;

-- Q1998 [medium] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 360-10-30-1, the cost of a self-constructed asset includes all costs directly attributable to construction: materials ($400,000), direct labor ($200,000), variable overhead ($80,000), and a reasonable allocation of fixed overhead ($60,000). Total = $740,000.
Wrong (A): $600,000 omits both variable and fixed overhead, but overhead attributable to construction must be capitalized under U.S. GAAP.
Wrong (B): $680,000 includes variable overhead but excludes fixed overhead, which should also be allocated to self-constructed assets.
Wrong (D): $660,000 includes fixed overhead but excludes variable overhead, which is directly attributable to the construction activity.$EXPL$,
  difficulty = 'medium'
WHERE id = 1998;

-- Q2000 [medium] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 410-20-35-3, accretion expense increases the ARO liability each period to reflect the passage of time. Year 1 accretion = $500,000 × 6% = $30,000. This expense is classified as an operating expense, not interest expense.
Wrong (B): $50,000 applies an incorrect 10% rate rather than the stated 6% credit-adjusted risk-free rate.
Wrong (C): $25,000 applies a 5% rate, which does not match the credit-adjusted risk-free rate used to initially measure the ARO.
Wrong (D): $35,000 applies a 7% rate, which is not the rate specified in the ARO measurement.$EXPL$,
  difficulty = 'medium'
WHERE id = 2000;

-- Q2002 [medium] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 845-10-30-1, when a nonmonetary exchange has commercial substance, the new asset is recorded at its fair value. The new equipment has a fair value of $45,000, which becomes its recorded cost. A $5,000 gain is also recognized (fair value received $45,000 minus total consideration given of $40,000).
Wrong (A): $40,000 represents the total consideration given (book value of old asset plus cash), which would only apply if the exchange lacked commercial substance.
Wrong (B): $35,000 is the fair value of the old equipment, but the new asset is recorded at its own fair value, not the fair value of the asset given up.
Wrong (D): $30,000 is the book value of the old equipment alone and ignores both the cash paid and the fair value measurement required for exchanges with commercial substance.$EXPL$,
  difficulty = 'medium'
WHERE id = 2002;

-- Q2003 [medium] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 845-10-30-3, when a nonmonetary exchange lacks commercial substance, the acquired asset is recorded at the book value of the asset given up plus any cash paid (or minus cash received). No gain is recognized because the earning process is not considered complete.
Wrong (A): Recording at fair value of the asset received is the treatment for exchanges with commercial substance, not those lacking it.
Wrong (B): Recording at fair value of the asset given up is also a commercial-substance treatment and would result in gain or loss recognition, which is prohibited here.
Wrong (D): Lower of cost or fair value is an inventory valuation concept under ASC 330, not applicable to nonmonetary exchanges of long-lived assets.$EXPL$,
  difficulty = 'medium'
WHERE id = 2003;

-- Q2004 [medium] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 360-10-35-4, the sum-of-the-years'-digits method uses declining fractions. SYD = 6+5+4+3+2+1 = 21. In Year 3, the numerator is (6 − 3 + 1) = 4, so the fraction is 4/21. Depreciation = $180,000 × 4/21 = $34,286 (rounded).
Wrong (B): $25,714 uses a fraction of 3/21, which would be the Year 4 depreciation amount, not Year 3.
Wrong (C): $30,000 is the straight-line amount ($180,000 ÷ 6), not the accelerated SYD calculation.
Wrong (D): $42,857 uses a fraction of 5/21, which is the Year 2 depreciation amount, not Year 3.$EXPL$,
  difficulty = 'medium'
WHERE id = 2004;

-- Q2005 [easy] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 805-50-30-1, when multiple assets are acquired in a lump-sum purchase, the total cost is allocated based on relative fair values. Total appraised value = $300,000 + $700,000 = $1,000,000. Building allocation = ($700,000 / $1,000,000) × $900,000 = $630,000.
Wrong (A): $700,000 is the appraised value, not the allocated cost. When the purchase price differs from total appraised values, a proportional allocation is required.
Wrong (C): $600,000 does not correspond to any valid allocation ratio and represents an arithmetic error.
Wrong (D): $675,000 applies an incorrect allocation percentage that does not reflect the relative fair value proportions.$EXPL$,
  difficulty = 'easy'
WHERE id = 2005;

-- Q2006 [medium] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 360-10-35-4, the double-declining-balance rate is 2/5 = 40%. Year 1: $240,000 × 40% = $96,000 (BV $144,000). Year 2: $144,000 × 40% = $57,600 (BV $86,400). Year 3: $86,400 × 40% = $34,560 (BV $51,840). Since $51,840 exceeds salvage of $40,000, the full amount is recognized.
Wrong (B): $38,400 does not match any correct DDB calculation for Year 3 and appears to apply an incorrect book value.
Wrong (C): $24,000 is a fraction of the straight-line amount and does not reflect the accelerated DDB methodology.
Wrong (D): $57,600 is the Year 2 depreciation amount, not Year 3. Under DDB, each year's expense decreases as the declining book value is multiplied by the constant rate.$EXPL$,
  difficulty = 'medium'
WHERE id = 2006;

-- Q2007 [easy] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 360-10-35-4, depreciation is recognized from the date the asset is placed in service. Annual straight-line depreciation = $72,000 / 6 = $12,000. For an April 1 acquisition, only 9 months apply in the first calendar year: $12,000 × 9/12 = $9,000.
Wrong (A): $12,000 is the full-year depreciation amount, but a partial year must be recognized when the asset is acquired mid-year.
Wrong (B): $6,000 represents only 6 months (half-year), but the asset was in service for 9 months from April through December.
Wrong (D): $10,000 does not correspond to any valid monthly proration of the $12,000 annual amount.$EXPL$,
  difficulty = 'easy'
WHERE id = 2007;

-- Q2010 [medium] topic: Fixed Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$A company has an asset group with a carrying amount of $1,200,000 that generates identifiable cash flows. Expected undiscounted cash flows total $1,350,000 and the fair value of the group is $1,050,000. Under ASC 360, what impairment loss should be recognized?$EXPL$,
  choices = $EXPL$["$0","$150,000","$300,000","$1,050,000"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (A): Under ASC 360-10-35-17, the recoverability test for an asset group compares the carrying amount ($1,200,000) to undiscounted expected future cash flows ($1,350,000). Because $1,350,000 exceeds $1,200,000, the group passes the recoverability test and no impairment is recorded.
Wrong (B): $150,000 incorrectly measures the difference between carrying amount and fair value, but the fair value comparison is never reached when undiscounted cash flows exceed carrying amount.
Wrong (C): $300,000 computes the difference between undiscounted cash flows and fair value, which is not a recognized measure in the ASC 360 impairment model.
Wrong (D): $1,050,000 is the fair value of the group, not an impairment loss. Writing the asset down to zero would only occur in extreme circumstances where fair value is zero.$EXPL$,
  difficulty = 'medium'
WHERE id = 2010;

-- Q2011 [medium] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 410-20-25-4, when an ARO is initially recognized, the corresponding asset retirement cost is added to the carrying amount of the related long-lived asset. This additional cost is then depreciated over the remaining useful life of the asset using a systematic and rational method consistent with the entity's depreciation policy.
Wrong (A): The ARO asset cost must be depreciated; failing to depreciate would overstate the asset's carrying amount and understate expense over the asset's useful life.
Wrong (B): A 40-year period has no basis under ASC 410-20 and does not correspond to the well's 15-year useful life.
Wrong (C): Immediate expensing would violate the matching principle; the asset retirement cost benefits future periods and should be allocated over the asset's remaining useful life.$EXPL$,
  difficulty = 'medium'
WHERE id = 2011;

-- Q2013 [easy] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 360-10-25-1, expenditures that extend an asset's useful life, increase capacity, or improve efficiency are capital expenditures. Adding a new wing that extends the building's useful life by 10 years clearly meets the capitalization criteria and should be depreciated over the remaining extended useful life.
Wrong (A): Expensing immediately would only be appropriate for routine maintenance that does not increase future economic benefits, not a major addition.
Wrong (B): A building addition is a tangible capital improvement, not a contingent liability requiring only disclosure.
Wrong (C): A deferred charge amortized over the original useful life is incorrect because the expenditure is a tangible improvement capitalized to the asset, and the useful life has been extended.$EXPL$,
  difficulty = 'easy'
WHERE id = 2013;

-- Q2015 [medium] topic: Fixed Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Which of the following is required for an asset to be classified as held-for-sale under ASC 360?$EXPL$,
  choices = $EXPL$["The asset must be fully depreciated","A binding purchase agreement must exist","The asset must currently be impaired","Management must commit to a plan to sell with the sale probable within one year"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (D): Under ASC 360-10-45-9, held-for-sale classification requires that management commits to a plan to sell, the asset is available for immediate sale, an active program to locate a buyer has begun, and the sale is probable within one year at a reasonable price. All criteria must be met simultaneously.
Wrong (A): Full depreciation is not a prerequisite for held-for-sale classification; an asset at any stage of its useful life may qualify if the sale criteria are met.
Wrong (B): A binding purchase agreement is not required; the standard requires only that the sale be probable within one year and that an active marketing program exists.
Wrong (C): Impairment is a separate assessment under ASC 360-10-35; an asset need not be impaired to be classified as held-for-sale.$EXPL$,
  difficulty = 'medium'
WHERE id = 2015;

-- Q2016 [hard] topic: Fixed Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Milton Inc. owns a manufacturing plant with a carrying amount of $5,000,000. Undiscounted future cash flows are $4,200,000 and the fair value is $3,800,000. Milton recognizes an impairment loss. Two years later, the plant's fair value has increased to $4,500,000. What is the carrying amount after the recovery?$EXPL$,
  choices = $EXPL$["The impaired amount less subsequent depreciation","$4,500,000","$5,000,000","$4,200,000"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (A): Under ASC 360-10-35-20, once an impairment is recognized for an asset held and used, the new reduced carrying amount becomes the asset's cost basis. Subsequent recovery of value is prohibited under U.S. GAAP. The carrying amount equals $3,800,000 less depreciation taken since the impairment date.
Wrong (B): $4,500,000 reflects the current fair value, but U.S. GAAP prohibits upward revaluation of previously impaired long-lived assets held and used.
Wrong (C): $5,000,000 is the original carrying amount before impairment. Reversal to the pre-impairment amount is not permitted under ASC 360.
Wrong (D): $4,200,000 is the undiscounted cash flows used in the recoverability test and has no role in determining the post-impairment carrying amount.$EXPL$,
  difficulty = 'hard'
WHERE id = 2016;

-- Q2017 [hard] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 250-10-45-17, changes in accounting estimates are applied prospectively. After 4 years: accumulated depreciation = 4 × ($150,000 − $10,000) / 10 = $56,000. Book value = $94,000. Revised annual depreciation = ($94,000 − $6,000) / 4 = $22,000.
Wrong (A): $24,000 incorrectly uses the original salvage value ($10,000) in the revised calculation rather than the new salvage value of $6,000.
Wrong (B): $23,500 does not correspond to any valid combination of the given book value, revised salvage, and remaining life.
Wrong (D): $25,000 may result from dividing $100,000 by 4, which incorrectly uses the original depreciable base rather than the current book value.$EXPL$,
  difficulty = 'hard'
WHERE id = 2017;

-- Q2018 [easy] topic: Intangible Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 350-30-35-6, a finite-lived intangible asset is amortized over the shorter of its legal life or estimated useful life. Since the useful life (10 years) is shorter than the legal life (14 years), annual amortization = $280,000 / 10 = $28,000.
Wrong (A): $20,000 incorrectly uses the 14-year legal life ($280,000 / 14), but the shorter useful life governs amortization.
Wrong (C): $14,000 results from dividing by 20, which has no basis in either the legal or useful life of the patent.
Wrong (D): $40,000 divides by 7, which does not correspond to any stated period in this scenario.$EXPL$,
  difficulty = 'easy'
WHERE id = 2018;

-- Q2021 [medium] topic: Intangible Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Hartley Inc. has a reporting unit with a carrying amount of $8,000,000 (including goodwill of $2,500,000). The fair value of the reporting unit is $6,200,000. What goodwill impairment loss should Hartley recognize?$EXPL$,
  choices = $EXPL$["$1,800,000","$2,500,000","$800,000","$0"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (A): Under ASC 350-20-35-3C, goodwill impairment equals the excess of the reporting unit's carrying amount over its fair value, capped at the goodwill balance. Impairment = $8,000,000 − $6,200,000 = $1,800,000. Because $1,800,000 does not exceed goodwill of $2,500,000, the full $1,800,000 is recognized.
Wrong (B): $2,500,000 equals the total goodwill balance, but the impairment loss is limited to the excess of carrying amount over fair value, which is only $1,800,000.
Wrong (C): $800,000 does not correspond to any valid difference in this scenario and may reflect an arithmetic error.
Wrong (D): $0 would apply only if the reporting unit's fair value exceeded its carrying amount, which is not the case here.$EXPL$,
  difficulty = 'medium'
WHERE id = 2021;

-- Q2025 [medium] topic: Intangible Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$A software company incurs $500,000 before establishing technological feasibility and $300,000 after feasibility but before general release. Under ASC 985-20, what amount should be capitalized?$EXPL$,
  choices = $EXPL$["$500,000","$800,000","$300,000","$0"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 985-20-25-1, costs of software to be sold are expensed as R&D until technological feasibility is established. After feasibility, costs are capitalized until the product is available for general release. The $500,000 pre-feasibility costs are expensed and only the $300,000 post-feasibility costs are capitalized.
Wrong (A): $500,000 represents the pre-feasibility costs, which must be expensed as research and development, not capitalized.
Wrong (B): $800,000 capitalizes all costs, but pre-feasibility costs must be expensed under ASC 985-20 regardless of their nature.
Wrong (D): $0 would mean no capitalization, but ASC 985-20 specifically requires capitalization of costs incurred after technological feasibility is established.$EXPL$,
  difficulty = 'medium'
WHERE id = 2025;

-- Q2026 [easy] topic: Intangible Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 350-30-25-3, legal fees incurred to successfully defend a patent are capitalized because they protect the future economic benefits of an existing intangible asset. These costs are added to the patent's carrying amount and amortized over the remaining useful life.
Wrong (A): Under ASC 350-30-25-4, internally developed brand names cannot be recognized as intangible assets because their costs are not separable from the cost of developing the business as a whole.
Wrong (B): Under ASC 730-10-25-1, research costs are expensed as incurred regardless of their potential future value.
Wrong (C): Advertising costs are expensed as incurred under ASC 720-35-25-1; they cannot be capitalized as intangible assets even when associated with a trademark.$EXPL$,
  difficulty = 'easy'
WHERE id = 2026;

-- Q2027 [medium] topic: Intangible Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 250-10-45-17, a change in the useful life of an intangible asset is a change in accounting estimate applied prospectively. After 3 years: accumulated amortization = 3 × ($180,000 / 6) = $90,000. Remaining book value = $90,000. Revised amortization = $90,000 / 2 = $45,000 per year.
Wrong (A): $30,000 is the original annual amortization ($180,000 / 6) and does not reflect the revised shorter remaining useful life.
Wrong (B): $90,000 is the remaining book value, not the annual amortization amount. Expensing the entire balance in one year would require an abandonment, not a change in estimate.
Wrong (C): $60,000 divides the remaining balance incorrectly and does not reflect the 2-year revised remaining life.$EXPL$,
  difficulty = 'medium'
WHERE id = 2027;

-- Q2028 [easy] topic: Intangible Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 350-20-25-2, internally generated goodwill is not recognized as an asset because it cannot be reliably measured and does not arise from a discrete exchange transaction. Only goodwill acquired in a business combination under ASC 805 is recognized on the balance sheet.
Wrong (A): Capitalizing and amortizing over 40 years was the treatment for acquired goodwill under the superseded APB 17, not for internally generated goodwill, which has never been capitalizable.
Wrong (B): Annual impairment testing under ASC 350-20-35 applies only to acquired goodwill, not internally generated goodwill.
Wrong (D): There is no materiality threshold for capitalizing internally generated goodwill; it is prohibited regardless of amount.$EXPL$,
  difficulty = 'easy'
WHERE id = 2028;

-- Q2030 [medium] topic: Intangible Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$A finite-lived intangible asset with a carrying amount of $350,000 has estimated undiscounted future cash flows of $300,000 and a fair value of $240,000. What impairment loss should be recognized?$EXPL$,
  choices = $EXPL$["$50,000","$60,000","$0","$110,000"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (D): Under ASC 360-10-35-17, finite-lived intangible assets follow the same two-step impairment test as other long-lived assets. Step 1: carrying amount ($350,000) exceeds undiscounted cash flows ($300,000), so the asset is impaired. Step 2: impairment loss = carrying amount minus fair value = $350,000 − $240,000 = $110,000.
Wrong (A): $50,000 is the difference between carrying amount and undiscounted cash flows, but the impairment loss is measured using fair value, not undiscounted cash flows.
Wrong (B): $60,000 is the difference between undiscounted cash flows and fair value, which is not a recognized measure in the impairment model.
Wrong (C): $0 would apply only if undiscounted cash flows exceeded the carrying amount, passing the recoverability test. Here, $300,000 is less than $350,000, so impairment exists.$EXPL$,
  difficulty = 'medium'
WHERE id = 2030;

-- Q2031 [easy] topic: Intangible Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 350-30-35-6, a finite-lived intangible asset is amortized over its contractual term when no renewal option exists. Annual amortization = $600,000 / 15 = $40,000. After 5 years: accumulated amortization = 5 × $40,000 = $200,000. Carrying amount = $600,000 − $200,000 = $400,000.
Wrong (B): $200,000 is the accumulated amortization after 5 years, not the remaining carrying amount.
Wrong (C): $500,000 reflects only 2.5 years of amortization ($100,000), using an incorrect annual amount.
Wrong (D): $300,000 reflects 7.5 years of amortization, which exceeds the 5-year period that has elapsed.$EXPL$,
  difficulty = 'easy'
WHERE id = 2031;

-- Q2035 [hard] topic: Intangible Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$In a business combination, Sinclair Corp. acquires an in-process research and development project valued at $2,000,000 that has not reached technological feasibility. Under ASC 805, how should Sinclair account for this asset?$EXPL$,
  choices = $EXPL$["Expense the $2,000,000 immediately","Record the amount as goodwill","Capitalize and amortize over 10 years","Capitalize as an indefinite-lived intangible until completed or abandoned"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (D): Under ASC 805-20-25-4, in-process research and development (IPR&D) acquired in a business combination is recognized at fair value as an indefinite-lived intangible asset. It remains indefinite-lived until the project is completed (becoming finite-lived and amortized) or abandoned (written off). This treatment differs from the pre-ASC 805 immediate-expensing rule.
Wrong (A): Immediate expensing was required under SFAS 141 (superseded), but ASC 805 requires capitalization of IPR&D acquired in a business combination at fair value.
Wrong (B): IPR&D is a separately identifiable intangible asset and must be recognized apart from goodwill when it meets the contractual-legal or separability criteria.
Wrong (C): A fixed 10-year amortization period is not appropriate because the asset is classified as indefinite-lived until the project outcome is determined.$EXPL$,
  difficulty = 'hard'
WHERE id = 2035;

-- Q2036 [easy] topic: Intangible Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 350-30-35-6, a finite-lived intangible asset is amortized over the shorter of its legal life or estimated useful life. Since the useful life of 8 years is shorter than the remaining legal life of 50 years, the copyright is amortized over 8 years. Annual amortization = $120,000 / 8 = $15,000.
Wrong (A): Using the 50-year legal life would understate annual amortization because the economic benefits are expected to be consumed over only 8 years.
Wrong (C): Averaging the legal and useful life has no basis under ASC 350; the shorter of the two periods is used.
Wrong (D): Copyrights acquired from third parties are finite-lived intangible assets that must be amortized, not treated as indefinite-lived.$EXPL$,
  difficulty = 'easy'
WHERE id = 2036;

-- Q2037 [easy] topic: Intangible Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Richfield Corp. has a reporting unit with a carrying amount of $12,000,000 including goodwill of $3,000,000. The fair value of the reporting unit is $13,500,000. What goodwill impairment loss should be recognized?$EXPL$,
  choices = $EXPL$["$0","$1,500,000","$3,000,000","$500,000"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (A): Under ASC 350-20-35-3C, goodwill is impaired only when the reporting unit's carrying amount exceeds its fair value. Here, fair value ($13,500,000) exceeds carrying amount ($12,000,000), so goodwill is not impaired and no loss is recognized.
Wrong (B): $1,500,000 is the excess of fair value over carrying amount, but this surplus indicates no impairment exists, not a loss amount.
Wrong (C): $3,000,000 equals the total goodwill balance, but writing off all goodwill would be appropriate only if the fair value fell below the carrying amount net of goodwill.
Wrong (D): $500,000 does not correspond to any valid difference in the given data and reflects an arithmetic error.$EXPL$,
  difficulty = 'easy'
WHERE id = 2037;

-- Q2038 [medium] topic: Intangible Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Under ASC 985-20, when is technological feasibility for a software product established?$EXPL$,
  choices = $EXPL$["When all planning, designing, coding, and testing to meet design specifications are complete","When the product concept is evaluated for viability","When a product design document is drafted","When the first unit of the product is sold"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (A): Under ASC 985-20-25-2, technological feasibility is established when all planning, designing, coding, and testing activities necessary to demonstrate that the product can be produced to meet its design specifications are complete. This includes completion of either a detail program design or a working model.
Wrong (B): Evaluating technical and financial viability occurs in the preliminary project stage, well before technological feasibility is established.
Wrong (C): Drafting a product design document is part of the planning phase; feasibility requires completion of all design and testing activities, not merely initiation.
Wrong (D): The first unit sale occurs after general release, which is the point at which capitalization ceases, not the point at which it begins.$EXPL$,
  difficulty = 'medium'
WHERE id = 2038;

-- Q2039 [medium] topic: Intangible Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$A company acquires a broadcast license with a 5-year term in a business combination. The license is expected to be renewed indefinitely at minimal cost. How should the license be accounted for?$EXPL$,
  choices = $EXPL$["Amortize over 5 years","Amortize over 40 years","Classify as indefinite-lived and test for impairment annually","Expense immediately"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 350-30-35-3, an intangible asset with a finite contractual term is classified as indefinite-lived if renewal is expected at minimal cost without material modifications to the existing terms. The license is not amortized but is tested for impairment at least annually.
Wrong (A): Amortizing over 5 years would be appropriate only if the license were not expected to be renewed or if renewal required significant cost or modifications.
Wrong (B): A 40-year amortization period has no basis under ASC 350 and was a maximum under superseded guidance that no longer applies.
Wrong (D): Immediate expensing is not appropriate for an acquired intangible that meets recognition criteria under ASC 805 and has future economic benefits.$EXPL$,
  difficulty = 'medium'
WHERE id = 2039;

-- Q2040 [medium] topic: Intangible Assets
-- Issues: unstructured, no_citation, choice_cuing
UPDATE questions SET
  stem = $EXPL$Fenwick Corp. holds an indefinite-lived trade name with a carrying amount of $500,000. Its fair value has declined to $380,000. What impairment loss should Fenwick recognize?$EXPL$,
  choices = $EXPL$["$0","$120,000","$380,000","$500,000"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 350-30-35-19, indefinite-lived intangible assets other than goodwill are tested for impairment by comparing the carrying amount directly to fair value (a one-step test). Impairment loss = $500,000 − $380,000 = $120,000. No recoverability test using undiscounted cash flows applies to indefinite-lived intangibles.
Wrong (A): $0 would be correct only if fair value equaled or exceeded the carrying amount, which is not the case here.
Wrong (C): $380,000 is the asset's fair value, not the impairment loss. The loss is the difference between carrying amount and fair value.
Wrong (D): $500,000 is the full carrying amount; writing the asset to zero is inappropriate because the trade name still has measurable fair value of $380,000.$EXPL$,
  difficulty = 'medium'
WHERE id = 2040;

-- Q2042 [hard] topic: Intangible Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Rayburn Corp. spent $2,400,000 developing a new pharmaceutical compound: $1,600,000 before FDA approval and $800,000 after FDA approval for production ramp-up and packaging design. Under ASC 730, how much should be expensed as R&D?$EXPL$,
  choices = $EXPL$["$2,400,000","$1,600,000","$800,000","$0"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (A): Under ASC 730-10-25-1, research and development costs are expensed as incurred regardless of whether regulatory approval has been obtained. All $2,400,000 is R&D expense. FDA approval does not serve as a capitalization trigger under U.S. GAAP, unlike technological feasibility for software under ASC 985-20.
Wrong (B): $1,600,000 assumes post-approval costs can be capitalized, but ASC 730 does not recognize FDA approval as a capitalization milestone for pharmaceutical development.
Wrong (C): $800,000 reverses the logic by expensing only post-approval costs while capitalizing pre-approval costs, which contradicts ASC 730.
Wrong (D): $0 implies all costs are capitalizable, but U.S. GAAP requires expensing of all R&D costs as incurred for internally developed pharmaceuticals.$EXPL$,
  difficulty = 'hard'
WHERE id = 2042;

-- Q2043 [medium] topic: Intangible Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Under U.S. GAAP, how should a company account for costs incurred during the various stages of website development?$EXPL$,
  choices = $EXPL$["Expense all website costs as incurred","Capitalize all website costs","Capitalize application development costs; expense planning and operating costs","Expense all costs as R&D under ASC 730"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 350-50-25, website development follows a stage-based model. Planning-stage costs are expensed. Application and infrastructure development costs (coding, graphics, content development) are capitalized. Post-launch operating costs (training, maintenance) are expensed as incurred.
Wrong (A): Expensing all costs ignores ASC 350-50's requirement to capitalize application and infrastructure development stage costs.
Wrong (B): Capitalizing all costs overstates the asset because planning-stage and operating-stage costs do not meet capitalization criteria.
Wrong (D): ASC 730 governs general R&D, not website development. ASC 350-50 provides specific guidance for website costs that overrides the general R&D expensing rule.$EXPL$,
  difficulty = 'medium'
WHERE id = 2043;

-- Q2049 [medium] topic: Leases
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 842-20-25-1, finance lease interest expense is calculated using the effective interest method. Lease liability = $80,000 × 3.3121 = $264,968 (rounded). Year 1 interest = $264,968 × 8% = $21,197 (rounded). The remaining portion of the payment ($80,000 − $21,197 = $58,803) reduces the lease liability.
Wrong (B): $26,497 does not correspond to 8% applied to any valid lease liability balance at the start of Year 1.
Wrong (C): $20,000 appears to use an incorrect round number and does not reflect the effective interest calculation on the actual lease liability.
Wrong (D): $6,400 may result from applying 8% to the annual payment rather than the outstanding lease liability, which is not the correct application of the effective interest method.$EXPL$,
  difficulty = 'medium'
WHERE id = 2049;

-- Q2056 [medium] topic: Leases
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 842-10-25-3, a lessor classifies a lease as direct financing when at least one of the five classification criteria is met, there is no selling profit (fair value equals carrying amount), and the lessor's residual value investment is guaranteed or the unguaranteed residual is not significant. If a selling profit exists, the lease is classified as sales-type instead.
Wrong (A): A lease that meets classification criteria with a selling profit is sales-type, not direct financing. The absence of selling profit is a distinguishing requirement.
Wrong (B): If none of the five criteria are met, the lease is classified as an operating lease, not direct financing.
Wrong (D): A lease term under 12 months qualifies for the short-term lease exemption but does not determine direct financing classification.$EXPL$,
  difficulty = 'medium'
WHERE id = 2056;

-- Q2061 [easy] topic: Leases
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 842-10-25-2, a lessee classifies a lease as a finance lease if any of five criteria are met: (1) ownership transfer, (2) purchase option reasonably certain, (3) lease term is a major part of economic life, (4) PV of payments is substantially all of fair value, or (5) specialized asset. Here, none are met: no transfer, no option, 8/20 years = 40% (not major), 60% PV (not substantially all), and a building is not specialized.
Wrong (A): Finance lease classification requires meeting at least one of the five criteria, and none are satisfied in this scenario.
Wrong (C): Sales-type classification applies to lessor accounting under ASC 842-10-25-3, not lessee classification.
Wrong (D): Direct financing is also a lessor classification category and is not used by lessees under ASC 842.$EXPL$,
  difficulty = 'easy'
WHERE id = 2061;

-- Q2062 [medium] topic: Leases
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 842-30-25-1, at commencement of a sales-type lease the lessor derecognizes the underlying asset, recognizes a net investment in the lease (lease receivable plus unguaranteed residual asset), and records selling profit or loss equal to the difference between fair value and carrying amount of the asset.
Wrong (A): Straight-line revenue recognition is the lessor treatment for operating leases, not sales-type leases, which front-load profit recognition at commencement.
Wrong (B): Depreciation of the leased asset and interest income describes lessor accounting for an operating lease combined with finance lease elements, not a sales-type lease.
Wrong (D): Recording only undiscounted total payments as a receivable would overstate the asset; the net investment is measured at present value, and a selling profit is recognized at commencement.$EXPL$,
  difficulty = 'medium'
WHERE id = 2062;

-- Q2063 [medium] topic: Leases
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 842-20-25-1, the effective interest method allocates each payment between interest expense and principal reduction. Year 1 interest = $400,000 × 7% = $28,000. Principal reduction = $97,560 − $28,000 = $69,560. Ending liability = $400,000 − $69,560 = $330,440.
Wrong (B): $302,440 overstates the principal reduction, possibly by applying an incorrect interest rate or omitting the interest component.
Wrong (C): $400,000 would be the balance only if no payments were made; the first payment of $97,560 reduces the liability after accounting for interest.
Wrong (D): $325,560 incorrectly assumes that none of the payment applies to interest, reducing the liability by the full $97,560 minus a different amount.$EXPL$,
  difficulty = 'medium'
WHERE id = 2063;

-- Q2066 [medium] topic: Leases
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Garrison Inc. is a lessor that enters a 6-year operating lease for a building with annual rent of $120,000. Garrison incurs $18,000 in initial direct costs. Under ASC 842, how should Garrison account for the initial direct costs?$EXPL$,
  choices = $EXPL$["Expense the costs immediately at commencement","Defer and recognize on a straight-line basis over 6 years","Add the costs to the building's carrying amount","Recognize as a reduction of Year 1 lease revenue"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 842-30-25-8, initial direct costs incurred by a lessor in an operating lease are deferred and recognized as expense on the same basis as lease income, which is typically straight-line over the lease term. Annual amortization = $18,000 / 6 = $3,000 per year.
Wrong (A): Immediate expensing was the treatment under the superseded ASC 840 for certain costs, but ASC 842 requires deferral and systematic recognition over the lease term for operating leases.
Wrong (C): Adding costs to the building's carrying amount would commingle lease costs with the depreciable asset, which is not the prescribed treatment under ASC 842.
Wrong (D): Reducing lease revenue in Year 1 would front-load the cost recognition rather than matching it with revenue over the lease term.$EXPL$,
  difficulty = 'medium'
WHERE id = 2066;

-- Q2069 [medium] topic: Leases
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Under ASC 842, how should a lease modification be accounted for when it grants the lessee a right to use an additional asset at a price commensurate with its standalone price?$EXPL$,
  choices = $EXPL$["As a modification to the existing lease","As an impairment of the ROU asset","As a termination and replacement of the original lease","As a separate new lease"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (D): Under ASC 842-10-25-8, a lease modification is treated as a separate new lease when it grants the lessee the right to use an additional asset and the increase in consideration is commensurate with the standalone price (adjusted for contract circumstances). The original lease remains unaffected.
Wrong (A): Modifying the existing lease applies when the modification does not qualify as a separate lease, such as when the price is not commensurate with standalone value.
Wrong (B): A lease modification does not trigger impairment testing of the ROU asset; impairment is assessed separately under ASC 842-20-35.
Wrong (C): Termination and replacement treatment applies to modifications that effectively change the scope of the original lease, not when an additional right of use is granted at fair value.$EXPL$,
  difficulty = 'medium'
WHERE id = 2069;

-- Q2070 [easy] topic: Leases
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 842-20-35-1, a lessee amortizes the ROU asset over the lease term when the lease does not transfer ownership and contains no purchase option. Amortization = $560,000 / 7 years = $80,000 per year. The asset's 10-year useful life would govern only if ownership transferred or a purchase option were reasonably certain to be exercised.
Wrong (A): $56,000 uses the 10-year useful life, which is not appropriate because the lease does not transfer ownership and has no purchase option.
Wrong (C): $93,333 divides by 6 years, which does not correspond to either the lease term or the asset's useful life.
Wrong (D): $70,000 divides by 8 years, which is neither the lease term nor the useful life of the underlying asset.$EXPL$,
  difficulty = 'easy'
WHERE id = 2070;

-- Q2071 [hard] topic: Leases
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 842-20-30-1, the initial lease liability includes the present value of all lease payments plus the present value of any guaranteed residual value. PV of payments = $40,000 × 3.9927 = $159,708. PV of guaranteed residual = $15,000 × 0.6806 = $10,209. Total = $159,708 + $10,209 = $169,917.
Wrong (A): $200,000 is the undiscounted total of five $40,000 payments and ignores the time value of money, which is fundamental to lease liability measurement.
Wrong (B): $170,117 may reflect a calculation using an incorrect PV factor for the guaranteed residual.
Wrong (C): $159,708 includes only the PV of annual payments but omits the PV of the guaranteed residual value, which the lessee is obligated to pay.$EXPL$,
  difficulty = 'hard'
WHERE id = 2071;

-- Q2073 [hard] topic: Leases
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 842-10-30-5, variable lease payments based on an index or rate (such as CPI) are included in the initial lease liability measurement using the index or rate as of the commencement date. The payments are not projected forward using estimates of future index changes. Subsequent changes trigger remeasurement of the liability.
Wrong (A): Excluding index-based payments and expensing as incurred applies to variable payments based on usage or performance, not those tied to an index or rate.
Wrong (B): Variable lease payments are not separated as a financial instrument; they are incorporated into the lease liability measurement.
Wrong (C): Projected future CPI estimates are not used; ASC 842 requires the index at commencement as the measurement basis to avoid speculative forecasting.$EXPL$,
  difficulty = 'hard'
WHERE id = 2073;

-- Q2075 [easy] topic: Leases
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 842-30-25-6, when none of the five classification criteria are met, the lessor classifies the lease as an operating lease. The lessor retains the underlying asset on its balance sheet, continues to depreciate it, and recognizes rental income on a straight-line basis over the lease term.
Wrong (A): Sales-type classification requires meeting at least one of the five criteria and typically involves a selling profit; neither condition is met here.
Wrong (B): Direct financing classification also requires meeting at least one criterion, with no selling profit and a guaranteed residual. These conditions are not present.
Wrong (D): Finance lease and ROU asset are lessee concepts under ASC 842, not lessor classifications. Lessors classify leases as sales-type, direct financing, or operating.$EXPL$,
  difficulty = 'easy'
WHERE id = 2075;

-- Q2076 [hard] topic: Leases
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 842-20-25-1, a finance lease produces two expense components: ROU asset amortization (straight-line) and interest expense (effective interest method). Amortization = $480,000 / 6 = $80,000. Interest = $480,000 × 5% = $24,000. Total Year 1 expense = $104,000. This exceeds the $94,694 cash payment because finance lease expense is front-loaded.
Wrong (A): $94,694 is the cash payment amount, not the total expense. Finance lease expense differs from the cash payment because amortization and interest are recognized separately.
Wrong (C): $80,000 is only the amortization component and omits the interest expense of $24,000.
Wrong (D): $24,000 is only the interest component and omits the ROU asset amortization of $80,000.$EXPL$,
  difficulty = 'hard'
WHERE id = 2076;

-- Q2077 [hard] topic: Leases
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Under ASC 842, how does an original lessee (intermediate lessor) classify a sublease?$EXPL$,
  choices = $EXPL$["By reference to the underlying asset","By defaulting to operating lease classification","By reference to the ROU asset from the head lease","Based solely on the sublease term relative to the remaining head lease term"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 842-10-35-3, when a lessee subleases an asset, the intermediate lessor classifies the sublease with reference to the ROU asset arising from the head lease, not the underlying asset. This is a change from ASC 840, which required reference to the underlying asset. The head lease remains on the intermediate lessor's books.
Wrong (A): Classifying by reference to the underlying asset was the approach under the superseded ASC 840. ASC 842 changed this to reference the ROU asset instead.
Wrong (B): There is no default to operating lease classification; the intermediate lessor must evaluate the sublease against the five classification criteria using the ROU asset as the reference.
Wrong (D): While the sublease term relative to the remaining economic life of the ROU asset is one factor, classification is determined by all five criteria, not solely the term.$EXPL$,
  difficulty = 'hard'
WHERE id = 2077;

-- Q2078 [easy] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 835-30-25-1, bonds issued at 103 are sold at 103% of par value. Total proceeds = $1,000,000 × 1.03 = $1,030,000. The $30,000 premium arises because the stated rate (8%) exceeds the market rate, making the bonds more attractive to investors at par.
Wrong (B): $1,000,000 is the face (par) value, but the bonds were issued at a premium, so proceeds exceed par.
Wrong (C): $1,080,000 incorrectly adds the annual coupon amount ($80,000) to par rather than the premium of $30,000.
Wrong (D): $970,000 represents issuance at 97 (a discount), which contradicts the stated issue price of 103.$EXPL$,
  difficulty = 'easy'
WHERE id = 2078;

-- Q2079 [medium] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 835-30-25-2, the issue price of a bond equals the present value of all future cash flows discounted at the market rate. PV of principal = $500,000 × 0.6806 = $340,300. Annual coupon = $500,000 × 6% = $30,000. PV of coupons = $30,000 × 3.9927 = $119,781. Total = $340,300 + $119,781 = $460,081. The discount arises because the 6% stated rate is below the 8% market rate.
Wrong (A): $500,000 is par value, but the bonds are issued at a discount because the stated rate is below the market rate.
Wrong (C): $480,000 does not correspond to a valid present value calculation using the given factors.
Wrong (D): $340,300 is only the present value of the principal repayment and omits the present value of the semiannual interest payments.$EXPL$,
  difficulty = 'medium'
WHERE id = 2079;

-- Q2080 [easy] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 835-30-35-2, when bonds are issued at a premium, the carrying amount (face value plus unamortized premium) decreases over time as the premium is amortized. At maturity, the entire premium has been amortized and the carrying amount equals the face amount.
Wrong (A): Increasing carrying amount describes bonds issued at a discount, where amortization adds to the carrying amount each period.
Wrong (B): Under the amortized cost model required by ASC 835-30, carrying amount does not fluctuate with market rates; it changes only through systematic premium amortization.
Wrong (C): The carrying amount changes each period as premium is amortized; it remains constant only if no premium or discount exists.$EXPL$,
  difficulty = 'easy'
WHERE id = 2080;

-- Q2082 [easy] topic: Bonds and Debt
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 835-30-35-3, the straight-line method divides the total discount evenly over the bond's life. Annual amortization = $60,000 / 10 years = $6,000. Each period, $6,000 increases the carrying amount and adds to interest expense above the cash coupon. This method is acceptable when it does not produce materially different results from the effective interest method.
Wrong (A): $3,000 incorrectly divides by 20 periods, which would apply only if semiannual amortization were intended but the problem states annual periods.
Wrong (B): $60,000 is the total discount, not the annual amortization. Amortizing the entire discount in one year would grossly overstate interest expense.
Wrong (C): $12,000 divides by 5, which does not match the 10-year bond term stated in the problem.$EXPL$,
  difficulty = 'easy'
WHERE id = 2082;
