-- FAR cleanup batch 20 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q1136 [easy] topic: Contingencies
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 450-20-25-2, a loss contingency is accrued when two conditions are met: (1) it is probable that a liability has been incurred, and (2) the amount of the loss can be reasonably estimated. Both conditions must be satisfied before recognition is appropriate.
Wrong (A): A possible loss requires only disclosure in the notes under ASC 450-20-50-3, not accrual, because the probability threshold has not been met.
Wrong (B): Remote losses generally require neither accrual nor disclosure; materiality of the amount does not override the probability assessment.
Wrong (C): The mere filing of a lawsuit does not establish probability; management must assess the likelihood of an unfavorable outcome independently of the legal action itself.$EXPL$,
  difficulty = 'easy'
WHERE id = 1136;

-- Q1137 [easy] topic: Contingencies
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 450-20-30-1, when the estimated loss falls within a range and no single amount within the range is a better estimate than any other, the minimum amount of the range is accrued. If a specific amount is the best estimate, that amount is accrued instead.
Wrong (B): GAAP does not default to the maximum amount; the conservatism principle does not dictate automatic accrual of the highest estimate when a range exists.
Wrong (C): The standard specifies the minimum of the range, not the midpoint, when no best estimate can be identified within the range.
Wrong (D): ASC 450 requires accrual even when only a range is available, provided both probability and estimability conditions are met.$EXPL$,
  difficulty = 'easy'
WHERE id = 1137;

-- Q1139 [easy] topic: Contingencies
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 855-10-25-1, recognized (Type I) subsequent events provide additional evidence about conditions that existed at the balance sheet date and may require adjustment to the financial statements, including accrual of a loss contingency such as a pending lawsuit settled after year-end.
Wrong (A): ASC 855 explicitly requires entities to evaluate subsequent events through the date the financial statements are issued, making post-balance-sheet evidence part of the assessment.
Wrong (C): Only Type I events (conditions existing at the balance sheet date) require adjustment; Type II events (conditions arising after the balance sheet date) require disclosure only.
Wrong (D): Subsequent events are addressed in the financial statements or notes by the entity, not solely in the auditor''s report.$EXPL$,
  difficulty = 'easy'
WHERE id = 1139;

-- Q1140 [medium] topic: Contingencies
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 450-20-25-2, the noncancelable purchase commitment at above-market prices creates a probable and estimable loss of $75,000 [($80 − $65) × 5,000]. Under ASC 330-10-35-1, inventory carried above net realizable value requires a $51,000 write-down [($95 − $78) × 3,000]. Both represent present economic impairments that cannot be avoided and require current-period recognition.
Wrong (A): Both losses are not merely contingent requiring footnote disclosure; they meet the criteria for accrual because they are probable and reasonably estimable (commitment) or represent a decline below NRV (inventory).
Wrong (C): Noncancelable purchase commitments with other-than-temporary market declines are recognized under ASC 450, not deferred as off-balance-sheet executory contracts.
Wrong (D): Inventory is written down to NRV when carrying value exceeds recoverable amount under ASC 330-10-35-1, regardless of whether it has been sold.$EXPL$,
  difficulty = 'medium'
WHERE id = 1140;

-- Q1151 [easy] topic: Fair Value
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 320-10-35-1, trading securities are measured at fair value at each reporting date, with unrealized holding gains and losses included in earnings (net income) for the period.
Wrong (A): Amortized cost measurement applies to held-to-maturity debt securities under ASC 320-10-35-9, not to trading securities which require fair value measurement.
Wrong (B): Lower of cost or market is an inventory concept under ASC 330, not the measurement basis for trading securities under ASC 320.
Wrong (C): Trading securities require ongoing fair value measurement at each reporting date; holding at original cost without adjustment would fail to reflect current market conditions.$EXPL$,
  difficulty = 'easy'
WHERE id = 1151;

-- Q1152 [easy] topic: Fair Value
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 820-10-35-34, the cost approach reflects the amount that would be required currently to replace the service capacity of an asset (current replacement cost), adjusted for physical deterioration, functional obsolescence, and economic obsolescence.
Wrong (B): The present value of expected future cash flows describes the income approach under ASC 820-10-35-32, which discounts future amounts to a single present value.
Wrong (C): The price received in an orderly transaction between market participants describes the market approach and the general fair value definition under ASC 820-10-35-24, not the cost approach specifically.
Wrong (D): Net book value (historical cost less accumulated depreciation) is a historical cost concept, not the current replacement cost contemplated by the cost approach under ASC 820.$EXPL$,
  difficulty = 'easy'
WHERE id = 1152;

-- Q1281 [medium] topic: Fair Value
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 820-10-15-1A, share-based payment transactions measured under ASC 718 are explicitly excluded from the scope of ASC 820. While ASC 718 uses fair value concepts, it has its own measurement framework for stock compensation.
Wrong (A): Investment property measured at fair value under IAS 40 would reference fair value measurement guidance analogous to ASC 820 within the IFRS framework.
Wrong (C): Financial instruments measured at fair value through earnings fall squarely within ASC 820''s scope for determining fair value.
Wrong (D): Nonfinancial assets acquired in a business combination are measured at fair value under ASC 805, which references ASC 820 for the measurement methodology.$EXPL$,
  difficulty = 'medium'
WHERE id = 1281;

-- Q1879 [easy] topic: Statement of Cash Flows
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 230-10-45-28, the indirect method begins with net income and adjusts for (1) non-cash items such as depreciation and amortization (added back), (2) gains on asset sales (subtracted) and losses (added back), and (3) changes in operating assets and liabilities.
Wrong (A): Depreciation is only one of many required adjustments; the indirect method also requires adjustments for amortization, impairments, gains/losses, and working capital changes.
Wrong (B): Replacing net income with cash receipts minus cash payments describes the direct method under ASC 230-10-45-25, not the indirect method.
Wrong (D): Non-cash charges like depreciation are essential adjustments under the indirect method; ignoring them would fail to reconcile net income to operating cash flow.$EXPL$,
  difficulty = 'easy'
WHERE id = 1879;

-- Q1889 [medium] topic: Statement of Cash Flows
-- Issues: choice_cuing
UPDATE questions SET
  stem = $EXPL$Meridian Corp. reports net income of $180,000. The controller''s indirect method reconciliation includes depreciation of $25,000, amortization of a bond premium of $3,000, and a decrease in inventory of $12,000. Why does the $3,000 bond premium amortization require subtraction from net income while the $25,000 depreciation is added back, given that both are noncash items?$EXPL$,
  choices = $EXPL$["Both items should be added because all noncash items uniformly increase operating cash flow","The bond premium amortization should be reclassified from operating activities to financing activities","Depreciation is added because it reduced income without using cash, while premium amortization is subtracted because it caused income to exceed the actual cash interest paid","Both items should be subtracted because noncash adjustments always reduce operating cash flow"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 230-10-45-28, the indirect method adjusts net income to operating cash flow by reversing noncash distortions. Depreciation ($25,000) reduced net income without a cash outlay, so adding it back corrects the understatement. Bond premium amortization ($3,000) reduced interest expense below the cash coupon payment, causing net income to overstate cash flow by $3,000. Subtracting it corrects for this overstatement. Total operating cash flow = $180,000 + $25,000 − $3,000 + $12,000 = $214,000.
Wrong (A): Noncash items can either overstate or understate cash flow depending on their nature; premium amortization overstates cash flow and must be subtracted.
Wrong (B): Premium amortization is an operating adjustment to reconcile net income, not a reclassification to financing activities under ASC 230.
Wrong (D): The direction of each adjustment depends on whether the noncash item understated or overstated operating cash flow relative to net income.$EXPL$,
  difficulty = 'medium'
WHERE id = 1889;

-- Q1909 [easy] topic: Earnings Per Share
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 260-10-45-22, stock options are dilutive when the average market price exceeds the exercise price (the options are "in the money"). Using the treasury stock method, assumed exercise proceeds ($25 × 100,000 = $2,500,000) repurchase 62,500 shares at $40, producing a net increase of 37,500 shares that dilutes EPS.
Wrong (A): When the exercise price exceeds the average market price, options are "out of the money" and antidilutive because assumed exercise would increase EPS rather than decrease it.
Wrong (B): When the exercise price equals the average market price, no incremental shares result under the treasury stock method, so the options have no dilutive effect.
Wrong (D): The duration options have been outstanding is irrelevant to dilution analysis; the treasury stock method under ASC 260 relies solely on the relationship between exercise price and average market price.$EXPL$,
  difficulty = 'easy'
WHERE id = 1909;

-- Q1912 [hard] topic: Earnings Per Share
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 260-10-45-40, the if-converted method adds back after-tax interest savings on convertible bonds to the numerator and assumed converted shares to the denominator. After-tax interest = $200,000 × 6% × (1 − 0.25) = $9,000. Diluted EPS = ($300,000 + $9,000) / (50,000 + 10,000) = $309,000 / 60,000 = $5.15. Since $5.15 < basic EPS of $6.00, the bonds are dilutive and included.
Wrong (B): $6.00 is the basic EPS ($300,000 / 50,000) before considering the convertible bonds; it ignores the dilutive effect of the potential share conversion.
Wrong (C): $4.85 does not result from any valid application of the if-converted method and likely reflects an arithmetic error in the interest add-back or share adjustment.
Wrong (D): $5.00 incorrectly omits the after-tax interest add-back, dividing unadjusted net income by the diluted share count ($300,000 / 60,000).$EXPL$,
  difficulty = 'hard'
WHERE id = 1912;

-- Q1955 [easy] topic: Revenue Recognition
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 606-10-25-27(c), revenue is recognized over time when the asset created has no alternative use to the entity and the entity has an enforceable right to payment for performance completed to date. Both criteria are met for this specialized equipment contract.
Wrong (A): Cash-basis recognition is not permitted under ASC 606 when the performance obligation criteria for over-time recognition are clearly satisfied.
Wrong (B): Point-in-time recognition at delivery applies when none of the three over-time criteria in ASC 606-10-25-27 are met, which is not the case here given the no-alternative-use and enforceable-right-to-payment conditions.
Wrong (D): Revenue cannot be recognized at contract signing because no performance has yet occurred; ASC 606-10-25-1 requires satisfaction of performance obligations before recognition.$EXPL$,
  difficulty = 'easy'
WHERE id = 1955;

-- Q2022 [hard] topic: Intangible Assets
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 350-20-35-3, goodwill impairment is measured as the excess of a reporting unit''s carrying amount over its fair value, but the impairment loss is capped at the carrying amount of goodwill. The excess is $5,000,000 − $3,500,000 = $1,500,000, but the impairment is limited to goodwill of $1,200,000.
Wrong (A): $1,500,000 represents the total shortfall of fair value below carrying amount, but ASC 350-20-35-3 caps the goodwill impairment at the goodwill balance; the remaining $300,000 would be evaluated under ASC 360 for other long-lived assets.
Wrong (C): $300,000 is the difference between the total excess ($1,500,000) and goodwill ($1,200,000), representing potential impairment of other assets, not the goodwill impairment itself.
Wrong (D): $3,500,000 is the fair value of the reporting unit, not a measure of impairment loss.$EXPL$,
  difficulty = 'hard'
WHERE id = 2022;

-- Q2029 [hard] topic: Intangible Assets
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 805-20-55-6, an assembled workforce does not meet the criteria for separate recognition as an intangible asset in a business combination because it is neither separable nor does it arise from contractual or legal rights. The $150,000 value is therefore subsumed into goodwill.
Wrong (A): Capitalization and annual impairment testing applies to separately recognized indefinite-lived intangible assets under ASC 350-30-35, but assembled workforce fails the recognition criteria of ASC 805-20-25-10.
Wrong (B): Amortization over expected tenure would require separate recognition as a finite-lived intangible, but assembled workforce cannot be sold, transferred, or licensed independently, failing the separability criterion.
Wrong (D): Immediate expensing is not appropriate because the value is captured within goodwill as part of the business combination, not charged to expense.$EXPL$,
  difficulty = 'hard'
WHERE id = 2029;

-- Q2047 [medium] topic: Leases
-- Issues: no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 842-20-30-1, the right-of-use asset initially equals the lease liability plus any prepaid payments or initial direct costs. Since payments are at the beginning of each year (annuity due), the lease liability is $50,000 × 4.4651 = $223,255. With no prepayments, incentives, or initial direct costs, the ROU asset equals the liability at $223,255.
Wrong (A): $223,256 likely reflects a rounding difference; using the precise annuity-due factor of 4.4651, the correct amount is $223,255.
Wrong (B): $250,000 represents one year of total undiscounted payments (5 × $50,000), which ignores the present value discounting required by ASC 842-20-30-1.
Wrong (D): $210,618 would result from using an ordinary annuity factor rather than an annuity-due factor, failing to account for the beginning-of-period payment timing.$EXPL$,
  difficulty = 'medium'
WHERE id = 2047;

-- Q2050 [easy] topic: Leases
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 842-20-30-2, a lessee uses the rate implicit in the lease when readily determinable. When the implicit rate is not readily determinable — which is common because it requires knowledge of the lessor''s residual value estimate — the lessee uses its incremental borrowing rate (IBR), defined as the rate at which it could borrow on a collateralized basis over a similar term.
Wrong (A): The lessee is not required to always use the IBR; ASC 842-20-30-2 establishes a preference for the implicit rate when it can be readily determined.
Wrong (B): The choice of discount rate applies to both operating and finance leases under ASC 842; it is not limited to operating leases only.
Wrong (D): Leases shorter than 12 months may qualify for the short-term lease exemption under ASC 842-20-25-2, which eliminates the need for present value measurement entirely.$EXPL$,
  difficulty = 'easy'
WHERE id = 2050;

-- Q2134 [hard] topic: Equity
-- Issues: choice_cuing
UPDATE questions SET
  stem = $EXPL$Westfield Corp. declares a property dividend, distributing investment securities with a carrying amount of $200,000 and a fair value of $280,000. What is the net effect on retained earnings?$EXPL$,
  choices = $EXPL$["Decrease of $200,000","Decrease of $280,000","Increase of $80,000","No effect on retained earnings"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (A): Under ASC 845-10-30-1, a property dividend is recorded at fair value. The investment is first revalued: Dr Investment $80,000, Cr Gain $80,000 (recognized in net income, flowing to retained earnings). Then the dividend is declared at fair value: Dr Retained Earnings $280,000, Cr Dividends Payable $280,000. The net effect is a $200,000 decrease (−$280,000 + $80,000 gain).
Wrong (B): $280,000 captures only the dividend declaration entry while ignoring the $80,000 gain on revaluation that also flows into retained earnings through net income.
Wrong (C): The $80,000 gain on revaluation does flow to retained earnings, but it is more than offset by the $280,000 dividend charge, resulting in a net decrease rather than an increase.
Wrong (D): Property dividends reduce retained earnings by the fair value of assets distributed, net of any gain on revaluation; they cannot leave retained earnings unaffected.$EXPL$,
  difficulty = 'hard'
WHERE id = 2134;

-- Q2138 [easy] topic: Contingencies
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 450-20-25-2, a loss contingency is accrued when two conditions are both met: the loss is probable (likely to occur) and the amount can be reasonably estimated. Both criteria must be satisfied for recognition as a liability.
Wrong (A): Remote losses require neither accrual nor disclosure under ASC 450-20-50-6, regardless of whether the amount can be estimated.
Wrong (B): Reasonably possible losses require disclosure in the notes under ASC 450-20-50-3, but not accrual, because the probability threshold for recognition has not been met.
Wrong (D): Even if a loss is probable, accrual is not appropriate unless the amount can also be reasonably estimated; without estimability, disclosure is required instead under ASC 450-20-50-1.$EXPL$,
  difficulty = 'easy'
WHERE id = 2138;

-- Q2140 [easy] topic: Contingencies
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 450-20-50-3, when a loss contingency is reasonably possible (more than remote but less than probable), accrual is not required. However, the nature of the contingency and the estimated amount ($300,000) must be disclosed in the notes to inform financial statement users.
Wrong (A): Accrual of $300,000 as a liability is required only when the loss is probable and estimable under ASC 450-20-25-2; reasonably possible losses do not meet the probability threshold for recognition.
Wrong (B): Recording a contingent asset is inappropriate because this situation involves a potential loss, not a potential gain, and gain contingencies follow separate guidance under ASC 450-30.
Wrong (C): Reasonably possible losses require note disclosure under ASC 450-20-50-3; only remote losses may be omitted from disclosure entirely.$EXPL$,
  difficulty = 'easy'
WHERE id = 2140;

-- Q2152 [medium] topic: Contingencies
-- Issues: choice_cuing
UPDATE questions SET
  stem = $EXPL$Redstone Inc. is one of twelve potentially responsible parties at a contaminated Superfund site with total estimated remediation costs of $10,000,000. The EPA allocates Redstone a 15% share, but three PRPs (representing 25% of the allocation) are defunct with no assets. How should Redstone estimate its probable loss for accrual purposes?$EXPL$,
  choices = $EXPL$["Accrue only the 15% allocated share of $1,500,000 based on the EPA allocation","Accrue the 15% base share plus a proportionate share of the defunct PRPs'' orphan allocation, totaling approximately $2,000,000","Accrue the full $10,000,000 under CERCLA joint-and-several liability","Accrue zero because the presence of multiple PRPs makes individual shares too uncertain to estimate"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 410-30-25 and CERCLA, Redstone must consider co-PRP solvency when estimating its probable exposure. The three defunct PRPs'' 25% orphan share ($2,500,000) must be absorbed by the nine solvent parties. Redstone''s proportionate orphan share = $2,500,000 × (15% / 75%) = $500,000. Total accrual = $1,500,000 + $500,000 = $2,000,000.
Wrong (A): Ignoring co-PRP insolvency understates the probable exposure because the orphan shares will be redistributed among solvent parties under joint-and-several liability.
Wrong (C): While CERCLA imposes joint-and-several liability, accruing the full $10,000,000 is not appropriate when Redstone can reasonably estimate its probable share based on allocation percentages and co-PRP solvency analysis under ASC 410-30-25.
Wrong (D): Sufficient information exists for a reasonable estimate, including the EPA allocation, total cost estimate, and identification of insolvent co-PRPs.$EXPL$,
  difficulty = 'medium'
WHERE id = 2152;

-- Q2275 [hard] topic: Not-for-Profit Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 958-605-25-16, contributed services are recognized only if they (a) create or enhance a nonfinancial asset, or (b) require specialized skills, are provided by individuals possessing those skills, and would typically be purchased if not donated. Painting by parent volunteers who are not professional painters does not require specialized skills, and routine maintenance painting by non-specialists is typically not capitalizable.
Wrong (A): The mere existence of a measurable fair value ($22,500) does not satisfy the recognition criteria; the services must also meet the specialized skills or asset enhancement tests.
Wrong (B): While painting enhances the building, the enhancement must be capitalizable to qualify; routine cosmetic maintenance by unskilled volunteers typically does not meet the capitalization threshold under ASC 958-605-25-16(a).
Wrong (D): ASC 958-605-25-16 permits recognition of certain volunteer services when they meet either the specialized skills criterion or the asset enhancement criterion.$EXPL$,
  difficulty = 'hard'
WHERE id = 2275;

-- Q2294 [easy] topic: Not-for-Profit Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 958-210-45-10, although the two-category net asset model replaced the former three categories, NFPs must disclose the amount of board-designated net assets within net assets without donor restrictions. Board designations are internal and reversible but must be disclosed to inform users of management''s intentions.
Wrong (B): The two-category model classifies net assets as with or without donor restrictions; perpetual restrictions are a subset of donor-restricted net assets, not the only required disclosure.
Wrong (C): The legacy three-category model (unrestricted, temporarily restricted, permanently restricted) was replaced by ASU 2016-14; "temporarily restricted" is no longer a recognized classification.
Wrong (D): ASC 958-210 does not require departmental breakdowns of unrestricted net assets; the disclosure focuses on board-designated versus undesignated amounts within net assets without donor restrictions.$EXPL$,
  difficulty = 'easy'
WHERE id = 2294;

-- Q2295 [hard] topic: Not-for-Profit Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 958-605-25-5A, conditional contributions are recognized when barriers are substantially met and the right of return or release is resolved. The matching fund requirement is a barrier that has been met. If the compliance report is a routine administrative requirement rather than a substantive barrier, the grant conditions are substantially met and $2,000,000 is recognized as revenue.
Wrong (A): Simply providing matching funds does not complete the analysis; each stipulation must be evaluated to determine whether it constitutes a barrier under ASC 958-605-25-5A.
Wrong (B): Deferring full recognition to zero because one administrative requirement is outstanding would be inappropriate if that requirement does not constitute a substantive barrier to entitlement.
Wrong (D): $1,500,000 incorrectly nets the matching funds against the grant; the match is the university''s own expenditure, not a reduction of the grant amount.$EXPL$,
  difficulty = 'hard'
WHERE id = 2295;

-- Q2303 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 54, a government has discretion in whether to account for restricted grant revenue in a special revenue fund or the General Fund with appropriate fund balance classification. GASB requires at minimum one governmental fund (the General Fund) but permits flexibility in special revenue fund usage.
Wrong (A): While the General Fund accounts for tax-supported activities, restricted grants may be reported there with restricted fund balance classification rather than being required to be in the General Fund.
Wrong (B): Special revenue funds are appropriate for restricted revenue sources under GASB 54, but their use is not mandatory; the government may choose to use the General Fund with restricted fund balance instead.
Wrong (C): Capital projects funds are used for capital acquisition and construction activities, not for operating grants restricted for public safety programs.$EXPL$,
  difficulty = 'medium'
WHERE id = 2303;

-- Q2335 [easy] topic: Employee Benefit Plans
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 715-30-20, the projected benefit obligation (PBO) includes the effect of assumed future salary increases when measuring the present value of benefits earned to date. The accumulated benefit obligation (ABO) uses current salary levels only. The PBO is generally larger because it incorporates expected salary growth.
Wrong (B): This reverses the definitions; the ABO is the measure based on current salaries, while the PBO projects future salary increases into the calculation.
Wrong (C): Expected and actual returns on plan assets affect net periodic pension cost calculations, not the distinction between PBO and ABO, which relates to salary assumptions.
Wrong (D): PBO and ABO are distinct measures with different computational inputs; ASC 715-30-20 defines them separately with the salary growth assumption as the key differentiator.$EXPL$,
  difficulty = 'easy'
WHERE id = 2335;

-- Q2336 [hard] topic: Employee Benefit Plans
-- Issues: choice_cuing
UPDATE questions SET
  stem = $EXPL$A company settles a portion of its defined benefit pension obligation by purchasing annuity contracts from an insurance company for $3,200,000. The PBO settled is $3,000,000 and the fair value of plan assets allocated to the settlement is $2,800,000. Under ASC 715, what is the settlement gain or loss?$EXPL$,
  choices = $EXPL$["$200,000 settlement loss","No settlement gain or loss","$200,000 settlement gain","$400,000 settlement loss"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (A): Under ASC 715-30-35-80, the settlement gain or loss measures the difference between the PBO eliminated and the cost to settle it. The company pays $3,200,000 to extinguish $3,000,000 of PBO, resulting in a $200,000 settlement loss because the insurer charges a premium above the actuarial obligation.
Wrong (B): A settlement that costs more than the obligation eliminated produces a loss; the $200,000 excess payment to the insurer is not cost-neutral.
Wrong (C): The company paid more than the PBO to settle, not less; a gain would occur only if the settlement cost were below the obligation eliminated.
Wrong (D): $400,000 incorrectly uses the difference between the annuity purchase price ($3,200,000) and plan assets allocated ($2,800,000), which measures the cash outlay beyond plan assets, not the economic settlement gain or loss on the obligation.$EXPL$,
  difficulty = 'hard'
WHERE id = 2336;

-- Q2365 [hard] topic: Special Purpose Frameworks
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under AICPA guidance for special purpose frameworks (AU-C Section 800), practice varies on reporting nondeductible expenses in tax-basis statements. Some preparers show the full $200,000 with disclosure of the nondeductible portion, while others show only the $100,000 deductible amount. Either approach is acceptable with appropriate disclosure and consistent application.
Wrong (A): Showing $200,000 with a note is one acceptable approach but not the only correct method; the guidance permits either presentation.
Wrong (B): Showing only the $100,000 deductible portion is also acceptable but not the only correct method; preparers may alternatively report the full economic amount.
Wrong (C): Disclosure is required regardless of which presentation approach is chosen; reporting $200,000 without any disclosure of the nondeductible portion would be insufficient under tax-basis reporting standards.$EXPL$,
  difficulty = 'hard'
WHERE id = 2365;

-- Q5246 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 96, paragraphs 11-15, the subscription asset includes the initial subscription liability (present value of future payments) plus capitalizable initial implementation stage costs ($25,000). Preliminary evaluation costs ($12,000) must be expensed as incurred, similar to the preliminary project stage under GASB 51.
Wrong (A): Omitting the $25,000 implementation costs understates the subscription asset; GASB 96 requires capitalizable implementation stage costs to be included in the asset measurement.
Wrong (C): Including all $37,000 in project costs incorrectly capitalizes the $12,000 preliminary evaluation costs, which GASB 96 requires to be expensed as incurred.
Wrong (D): Using undiscounted totals violates GASB 96''s requirement to measure the subscription liability at the present value of future payments.$EXPL$,
  difficulty = 'medium'
WHERE id = 5246;

-- Q5247 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 34, paragraph 112, interfund loans are reported as receivables ("due from other funds") in the lending fund and payables ("due to other funds") in the borrowing fund when repayment is expected within a reasonable time. The general fund reports a $750,000 receivable because the loan is temporary with expected repayment within six months.
Wrong (A): An expenditure classification would permanently reduce fund balance, which misrepresents a temporary lending arrangement that will be repaid.
Wrong (B): Transfers represent permanent reallocations of resources with no repayment obligation; this is a loan with expected repayment, requiring receivable/payable treatment.
Wrong (D): Interfund loans are not investments; they are reported as due from/due to other funds under GASB 34.$EXPL$,
  difficulty = 'medium'
WHERE id = 5247;

-- Q5250 [easy] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Concepts Statement No. 4, a deferred outflow of resources is defined as a consumption of net assets by the government that is applicable to a future reporting period. Common examples include deferred amounts on debt refundings and certain pension-related items under GASB 68.
Wrong (A): An obligation due and payable in the current period describes a current liability, not a deferred outflow, which specifically relates to resource consumption recognized in future periods.
Wrong (B): An asset restricted by external parties for capital projects describes a restricted asset or restricted fund balance under GASB 54, not a deferred outflow of resources.
Wrong (D): A reduction in liabilities from current operations describes a component of revenue or gain recognition, not the definition of a deferred outflow of resources.$EXPL$,
  difficulty = 'easy'
WHERE id = 5250;

-- Q5251 [easy] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 54, paragraph 30, a special revenue fund accounts for and reports specific revenue sources that are restricted or committed to expenditure for purposes other than debt service or capital projects. The fund must have a substantial committed or restricted revenue source as its foundation.
Wrong (B): Accounting for financial resources related to capital acquisitions and improvements describes a capital projects fund, not a special revenue fund.
Wrong (C): Resources held in trust for individuals or organizations outside the government describes a fiduciary fund (such as a private-purpose trust fund under GASB 84), not a special revenue fund.
Wrong (D): Revenue designated by the governing body for general operations does not meet the restricted or committed standard required for special revenue funds; general operations belong in the General Fund.$EXPL$,
  difficulty = 'easy'
WHERE id = 5251;

-- Q5253 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 250-10-45-23, prior-period errors require restatement of comparative financial statements. Changes in accounting estimate under ASC 250-10-45-17 are applied prospectively. Misclassifying this omission as an estimate change would leave Year 1 net income overstated by $120,000 in comparative statements because prospective treatment does not correct prior periods.
Wrong (A): Restatement and prospective treatment produce different outcomes in comparative statements; restatement corrects Year 1 while prospective treatment preserves the misstatement.
Wrong (B): While total retained earnings may eventually reach the same place, the timing and presentation in comparative financial statements differ materially, which is relevant to users.
Wrong (D): Estimate changes flow through current and future income, not bypassing retained earnings; they simply are not applied retroactively to prior periods.$EXPL$,
  difficulty = 'medium'
WHERE id = 5253;

-- Q5255 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 89, state and local governments are prohibited from capitalizing interest costs incurred during the construction period of capital assets. The city must expense the $420,000 when incurred. In contrast, ASC 835-20 requires private-sector entities to capitalize qualifying interest during construction as part of the asset''s historical cost.
Wrong (A): GASB 89 prohibits interest capitalization for governmental entities, creating a fundamental difference from the private-sector treatment under ASC 835-20.
Wrong (B): Private-sector entities under ASC 835-20 capitalize construction-period interest rather than expensing it, so the treatment is not identical for both sectors.
Wrong (D): GASB does not defer interest costs as a deferred outflow; interest is expensed in the period incurred under GASB 89.$EXPL$,
  difficulty = 'medium'
WHERE id = 5255;

-- Q5256 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 34, paragraph 112, transfers between governmental activities and business-type activities are displayed separately in each column of the statement of activities. The $500,000 transfer out reduces governmental activities'' change in net position while the transfer in increases business-type activities'' by the same amount, producing zero net effect at the total government level.
Wrong (A): Transfers between different activity types (governmental and business-type) are not eliminated in the government-wide statements; they are displayed as transfers in each column under GASB 34.
Wrong (C): Reclassification as a capital contribution would be appropriate only if the transfer meets specific capital contribution criteria; a subsidy for infrastructure repairs is reported as a transfer.
Wrong (D): The transfer affects both columns; reporting it solely in governmental activities would misstate the business-type activities'' change in net position.$EXPL$,
  difficulty = 'medium'
WHERE id = 5256;

-- Q5259 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 34, the budgetary comparison schedule reports the variance between final budgeted and actual amounts. The revenue variance is $18,750,000 actual minus $18,500,000 budgeted = $250,000 favorable, because actual collections exceeded the estimate.
Wrong (A): $150,000 unfavorable is the expenditure variance ($17,950,000 − $17,800,000), not the revenue variance; the question asks specifically about the revenue line.
Wrong (B): $700,000 represents the difference between budgeted revenues and appropriations ($18,500,000 − $17,800,000), which is the budgetary surplus, not the revenue variance.
Wrong (D): $800,000 represents the difference between actual revenues and actual expenditures ($18,750,000 − $17,950,000), which is the actual surplus, not the budgeted-to-actual revenue variance.$EXPL$,
  difficulty = 'medium'
WHERE id = 5259;

-- Q5262 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 54, fund balance is classified as restricted when constraints are imposed by external parties such as creditors, grantors, or laws. General obligation bond covenants and enabling legislation legally restrict the use of proceeds to library construction, making the $2.8 million restricted fund balance.
Wrong (B): Committed fund balance applies when the governing body imposes constraints by its own formal action (resolution or ordinance), not when constraints originate from external bond covenants or legal requirements.
Wrong (C): Assigned fund balance reflects management''s intent to use resources for a specific purpose without formal governing body action, which is a weaker constraint than the legally binding bond covenants present here.
Wrong (D): Unassigned fund balance is the residual classification for amounts not constrained for any purpose; bond proceeds legally restricted to construction cannot be unassigned.$EXPL$,
  difficulty = 'medium'
WHERE id = 5262;

-- Q5267 [easy] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 33, paragraph 13, fines and penalties are classified as imposed nonexchange revenues. These are assessments by governments on nongovernmental entities — including property taxes, fines, and forfeitures — that are not derived from underlying exchange transactions.
Wrong (A): Derived tax revenues (such as sales and income taxes) result from assessments on exchange transactions; building code fines are imposed directly by the government without an underlying exchange.
Wrong (C): Government-mandated nonexchange transactions involve one level of government providing resources to another with specific requirements, such as federal grants with mandated programs, not fines assessed on private parties.
Wrong (D): Voluntary nonexchange transactions arise from willing agreements between parties (such as donations or voluntary grants), not from compulsory penalties imposed by governmental authority.$EXPL$,
  difficulty = 'easy'
WHERE id = 5267;

-- Q5269 [hard] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB standards, TIF arrangements involving governmental debt and tax-funded repayment use governmental fund types. Bond proceeds and construction spending are reported in a capital projects fund, while incremental property tax revenues pledged for bond repayment are reported in a debt service fund. This dual-fund approach matches the economic substance.
Wrong (A): While the city retains credit risk, TIF activities involve distinct capital and debt service components that are better reported in separate purpose-specific funds rather than commingled in the General Fund.
Wrong (B): Enterprise funds are reserved for activities financed primarily through user charges rather than tax revenues; TIF districts funded by property tax increments do not meet the enterprise fund criteria.
Wrong (D): Private-purpose trust funds under GASB 84 are for trust arrangements benefiting individuals or private organizations; TIF districts serve a public purpose (infrastructure improvement) even though private property owners benefit incidentally.$EXPL$,
  difficulty = 'hard'
WHERE id = 5269;

-- Q5271 [hard] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 34, paragraphs 23-25, the modified approach requires governments to maintain eligible infrastructure at or above an established condition level with assessments at least every three years. When conditions deteriorate and preservation spending is inadequate, the government must evaluate whether it can continue meeting the modified approach requirements or must switch to depreciation-based reporting.
Wrong (A): The 18% failure rate combined with underfunding ($6.8M vs. $9.2M needed) is not simply a temporary variance; it signals a potential inability to meet the modified approach''s condition maintenance requirement.
Wrong (C): GASB 34 does not impose automatic disqualification based on a single year''s spending shortfall; it requires an overall evaluation of whether conditions are being maintained at the established level.
Wrong (D): GASB 34 does not permit splitting the reporting approach for a single infrastructure network; the modified approach applies to the entire eligible asset class or not at all.$EXPL$,
  difficulty = 'hard'
WHERE id = 5271;

-- Q5274 [easy] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 84, paragraph 11, a private-purpose trust fund reports trust arrangements where both the principal and income benefit individuals, private organizations, or other governments. Examples include escheat property and scholarship trusts for private beneficiaries.
Wrong (B): Resources held for employees'' pension benefits are reported in a pension trust fund, which is a separate fiduciary fund type under GASB 84 specifically for employee benefit plan assets.
Wrong (C): Investment pools managed for external participants are reported in an investment trust fund under GASB 84, not a private-purpose trust fund.
Wrong (D): Taxes and fees collected on behalf of another government pending distribution are reported in a custodial fund under GASB 84, which replaced the former agency fund classification.$EXPL$,
  difficulty = 'easy'
WHERE id = 5274;

-- Q5275 [easy] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 54, paragraph 31, committed fund balance represents resources constrained by the government''s highest level of decision-making authority (typically the governing body) through formal action such as a resolution or ordinance. These constraints can only be removed by equivalent formal action.
Wrong (A): Constraints imposed by external creditors or grantors through legal requirements describe restricted fund balance under GASB 54, not committed fund balance.
Wrong (B): Debt service fund balance may be restricted, committed, or assigned depending on the source of the constraint, but debt service is not the defining characteristic of committed classification.
Wrong (C): Management''s expressed intention without formal action describes assigned fund balance under GASB 54, which requires only management''s intent rather than the governing body''s formal action.$EXPL$,
  difficulty = 'easy'
WHERE id = 5275;

-- Q5336 [easy] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 34, interfund advances are reported as receivables ("advance to other funds") in the lending fund and payables ("advance from other funds") in the borrowing fund because repayment is expected. This differs from transfers, which are permanent shifts of resources.
Wrong (A): A transfer out represents a permanent, one-way movement of resources with no repayment obligation; an advance creates a receivable-payable relationship requiring repayment.
Wrong (B): Reporting the advance as an expenditure would permanently reduce fund balance and mischaracterize the temporary nature of the lending arrangement.
Wrong (D): A deferred outflow of resources under GASB Concepts Statement No. 4 relates to consumption of net assets applicable to future periods, not interfund lending arrangements.$EXPL$,
  difficulty = 'easy'
WHERE id = 5336;

-- Q5338 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB 34, paragraph 76, a fund qualifies as major if any element (assets, liabilities, revenues, or expenditures) is at least 10% of the corresponding total for its fund category AND at least 5% of the combined governmental-and-enterprise total. The Parks fund''s $9.2M is 11.5% of governmental assets ($80M), satisfying the 10% test, and 9.2% of combined assets ($100M), satisfying the 5% test.
Wrong (A): The combined total is $100M, and $9.2M is 9.2% of that — exceeding the 5% threshold. The major fund test requires meeting both the category and combined thresholds for any single element.
Wrong (B): There is no automatic major fund threshold of $5,000,000; the test is percentage-based relative to the fund category and combined totals.
Wrong (C): While the General Fund is always reported as major, GASB 34 requires any other fund meeting the quantitative criteria also to be reported as a major fund.$EXPL$,
  difficulty = 'medium'
WHERE id = 5338;

-- Q5339 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB 87, leases are recognized as intangible right-to-use assets and lease liabilities in government-wide statements, with amortization and interest expense reported annually. However, governmental fund statements use the current financial resources measurement focus and modified accrual basis, so only the current-year lease payment ($36,000) is reported as an expenditure.
Wrong (A): Governmental funds do not report the full present value as a capital outlay expenditure; the current financial resources measurement focus recognizes only amounts due and payable in the current period.
Wrong (C): GASB 87 does not require uniform treatment across fund and government-wide statements; the different measurement focuses produce different reporting outcomes by design.
Wrong (D): Governmental fund statements do not report long-term lease payables because long-term liabilities are excluded from the current financial resources measurement focus.$EXPL$,
  difficulty = 'medium'
WHERE id = 5339;

-- Q5341 [easy] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 34, paragraph 8, management''s discussion and analysis is required supplementary information (RSI) that precedes the basic financial statements. MD&A provides an analytical overview of the government''s financial activities in a narrative format.
Wrong (A): Supplementary schedules presented after the notes are other supplementary information, not RSI; MD&A is specifically positioned before the basic financial statements.
Wrong (B): MD&A is classified as RSI, not as a component of the basic financial statements, which include the government-wide statements, fund statements, and notes to the financial statements.
Wrong (C): MD&A is required, not optional; GASB 34 mandates its inclusion as RSI in the comprehensive annual financial report.$EXPL$,
  difficulty = 'easy'
WHERE id = 5341;

-- Q5343 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB 77, paragraphs 5-7, governments must disclose tax abatement agreements in the notes, including the gross dollar amount of taxes abated during the period. The standard focuses on disclosure because the reduced tax amount is typically already reflected in the levy. The revenue reduction is often built into the tax assessment rather than being a separate adjustment.
Wrong (A): While the revenue reduction exists, it may already be reflected in the tax levy rather than requiring a separate adjustment; GASB 77''s primary new requirement is note disclosure of the program and abated amounts.
Wrong (C): Tax abatements are reported as revenue reductions (or are already reflected in reduced levies), not as expenditures, because they represent foregone revenue rather than a payment to the taxpayer.
Wrong (D): A long-term liability for future abated taxes is not recognized under GASB 77; each year''s abatement is addressed through the annual levy and disclosure process.$EXPL$,
  difficulty = 'medium'
WHERE id = 5343;

-- Q5345 [easy] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 33, paragraph 7, the four classes of nonexchange transactions are: (1) derived tax revenues, (2) imposed nonexchange revenues, (3) government-mandated nonexchange transactions, and (4) voluntary nonexchange transactions.
Wrong (A): Exchange-like transactions are discussed in GASB 33 for comparison purposes but are not classified as one of the four nonexchange transaction categories; they are a separate category where values exchanged are not directly equal.
Wrong (B): Capital contribution transactions are not one of the four GASB 33 categories; capital contributions may fall within voluntary nonexchange transactions depending on the circumstances.
Wrong (C): Intergovernmental service transactions involve exchange-like arrangements between governments and are not among the four nonexchange categories defined in GASB 33.$EXPL$,
  difficulty = 'easy'
WHERE id = 5345;

-- Q5346 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under GASB Statement No. 34, paragraph 112, proprietary fund statements of cash flows classify interest payments on debt issued for capital asset acquisition under capital and related financing activities. Since the municipal utility bonds financed capital infrastructure, the $1,500,000 interest payment falls within this category.
Wrong (A): Unlike FASB ASC 230, which classifies interest paid as operating activities, GASB requires interest on capital-related debt to be reported in capital and related financing activities in proprietary fund cash flow statements.
Wrong (B): Noncapital financing activities include interest on debt not directly related to capital asset acquisition, such as short-term operating notes or tax anticipation notes.
Wrong (D): Investing activities include interest received on investments and loans, not interest paid on borrowings for capital purposes.$EXPL$,
  difficulty = 'medium'
WHERE id = 5346;

-- Q5347 [hard] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB 87, both a lease liability and a right-to-use asset of $22,380,000 are recognized at commencement. Adding equal amounts to a ratio below 100% always increases it: the new ratio is ($38M + $22.38M) / ($95M + $22.38M) = $60.38M / $117.38M = 51.4%, compared to the original $38M / $95M = 40.0%.
Wrong (A): While the asset offsets the liability in dollar terms, equal additions to numerator and denominator do not cancel out when the original ratio is below 1:1; the ratio increases because the proportional impact on the smaller numerator is greater.
Wrong (C): The mathematical principle is that adding equal amounts to both sides of a ratio preserves it only when the ratio is exactly 1:1; since 40% is below 100%, the ratio must increase.
Wrong (D): At initial recognition under GASB 87, the lease liability and right-to-use asset are equal; first-year amortization occurs in subsequent periods, not at inception.$EXPL$,
  difficulty = 'hard'
WHERE id = 5347;

-- Q5349 [medium] topic: Governmental Accounting
-- Issues: unstructured
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under GASB Statement No. 34, paragraph 62, internal service fund activities are typically consolidated into governmental activities in the government-wide statements. The $3,600,000 charged to departments is already in governmental activities expenses, but consolidation replaces those charges with the fund''s actual $3,400,000 in costs, eliminating the $200,000 interfund markup and reducing total expenses.
Wrong (B): The $3,600,000 in departmental charges is already included in governmental activities through the departments'' expenditure reporting; adding it again would double-count the costs.
Wrong (C): While the charges are embedded in departmental costs, the consolidation adjustment removes the $200,000 markup that represents the internal service fund''s surplus, reducing total governmental activities expenses.
Wrong (D): The $3,400,000 in actual costs is already reflected through the consolidation process; adding it separately would misstate the elimination entry.$EXPL$,
  difficulty = 'medium'
WHERE id = 5349;
