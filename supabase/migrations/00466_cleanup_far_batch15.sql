-- FAR cleanup batch 15 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q2179 [easy] topic: Income Taxes
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 740-10-25-2, deferred tax assets and liabilities are measured using the enacted tax rate expected to apply in the period(s) when the temporary difference is expected to reverse. If rates are scheduled to change in future years, the rate for the specific reversal year is used.
Wrong (A): Using the rate in effect when the difference originated ignores future enacted rate changes, which ASC 740 explicitly requires entities to incorporate.
Wrong (B): A statutory rate with no adjustment is incorrect because ASC 740 requires adjustments when future enacted rates differ from the current rate.
Wrong (C): Averaging current and future rates is not permitted; the measurement uses the single enacted rate applicable to the reversal period.$$,
  difficulty = 'easy'
WHERE id = 2179;

-- Q2183 [easy] topic: Income Taxes
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 740 as amended by ASU 2015-17, all deferred tax assets and liabilities are classified as noncurrent. DTAs and DTLs from the same tax-paying jurisdiction are offset and presented as a single net amount. The net DTA is $150,000 − $90,000 = $60,000 noncurrent.
Wrong (A): Reporting the DTA and DTL separately is incorrect because ASC 740-10-45-6 requires netting of DTAs and DTLs within the same jurisdiction.
Wrong (B): A net DTL of $60,000 reverses the calculation; the DTA exceeds the DTL, producing a net DTA, not a net DTL.
Wrong (C): Classifying the DTA as current and the DTL as noncurrent reflects the pre-ASU 2015-17 approach, which has been superseded. All deferred taxes are now noncurrent.$$,
  difficulty = 'easy'
WHERE id = 2183;

-- Q2190 [easy] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): ASC 805-20-30-1 requires the acquirer to measure identifiable assets acquired and liabilities assumed at their acquisition-date fair values. This establishes the new cost basis in a business combination.
Wrong (A): Historical cost reflects the acquiree''s prior transactions, not the fair value exchanged in the business combination.
Wrong (B): Book value as reported by the acquiree may differ significantly from fair value due to depreciation, amortization, and unrecognized items.
Wrong (D): The lower of cost or fair value is a conservatism concept not applicable to acquisition-date measurement under ASC 805.$$,
  difficulty = 'easy'
WHERE id = 2190;

-- Q2192 [medium] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 805-30-25-2, when the fair value of identifiable net assets ($3,500,000) exceeds consideration transferred ($3,000,000), a bargain purchase exists. After reassessing all assets and liabilities, the $500,000 excess is recognized immediately as a gain in earnings.
Wrong (A): Goodwill arises only when consideration exceeds net asset fair value, which is the opposite of this scenario.
Wrong (C): Reducing noncurrent asset values was permitted under older pooling-of-interests methods but is not allowed under the acquisition method in ASC 805.
Wrong (D): Recording a deferred credit for negative goodwill was the approach under legacy standards; ASC 805 requires immediate gain recognition.$$,
  difficulty = 'medium'
WHERE id = 2192;

-- Q2193 [easy] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): ASC 805-10-25-15 limits the measurement period to one year from the acquisition date. During this period, the acquirer may adjust provisional amounts as new information is obtained about facts and circumstances that existed at the acquisition date.
Wrong (A): Six months is too short; ASC 805 explicitly provides up to one year for the measurement period.
Wrong (B): Two years exceeds the maximum allowed measurement period under ASC 805.
Wrong (C): The measurement period is measured from the acquisition date, not the fiscal year-end, and extends up to 12 months regardless of where the acquisition falls in the fiscal year.$$,
  difficulty = 'easy'
WHERE id = 2193;

-- Q2205 [medium] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 805-10-25-23, acquisition-related costs such as finder''s fees, advisory fees, legal fees, and due diligence costs are expensed as incurred. These are not part of the consideration transferred.
Wrong (A): Costs of registering and issuing equity securities reduce additional paid-in capital under ASC 340-10, not expensed through earnings.
Wrong (B): Restructuring costs expected after the acquisition are recognized as post-combination expenses in the periods incurred, not as acquisition-date costs.
Wrong (C): Costs of issuing debt securities are accounted for under ASC 470 as a discount or deferred charge and amortized over the debt term.$$,
  difficulty = 'medium'
WHERE id = 2205;

-- Q2206 [easy] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 805-20-25-10, identifiable intangible assets meeting the contractual-legal criterion or separability criterion must be recognized separately from goodwill at fair value, even if the acquiree had not previously recognized them. A customer list meets the separability criterion and is recorded at its $200,000 fair value.
Wrong (A): Not recognizing the customer list ignores ASC 805''s requirement to identify and measure all intangible assets that meet recognition criteria, regardless of book value.
Wrong (C): Including the amount in goodwill is incorrect because customer lists are separable intangible assets that must be recognized apart from goodwill.
Wrong (D): Recording at $1 as a nominal amount has no basis under ASC 805; fair value measurement is required.$$,
  difficulty = 'easy'
WHERE id = 2206;

-- Q2210 [easy] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 350-20-35-1, goodwill is not amortized but is tested for impairment at least annually, or more frequently if indicators of impairment exist. This is the default GAAP treatment for public entities.
Wrong (A): A fixed 10-year amortization is an elective alternative available only to private companies under ASU 2014-02, not the default treatment.
Wrong (B): Amortizing over useful life applies to finite-lived intangible assets under ASC 350-30, not to goodwill for public entities.
Wrong (D): Writing off goodwill immediately against retained earnings is not permitted; goodwill remains on the balance sheet until impaired.$$,
  difficulty = 'easy'
WHERE id = 2210;

-- Q2214 [hard] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): ASC 805-20-25-19 requires the acquirer to recognize contingent liabilities assumed in a business combination at their acquisition-date fair value if the fair value can be determined during the measurement period. This is a lower recognition threshold than the ASC 450 probable-and-estimable criteria.
Wrong (A): Ignoring the liability until resolution is incorrect because ASC 805 requires recognition at fair value at the acquisition date regardless of ultimate outcome.
Wrong (B): Applying ASC 450''s probable and estimable criteria is incorrect in a business combination context; ASC 805 uses a fair value threshold instead.
Wrong (D): Requiring virtual certainty is an even higher threshold than ASC 450 and has no basis in ASC 805''s acquisition accounting requirements.$$,
  difficulty = 'hard'
WHERE id = 2214;

-- Q2215 [medium] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 805-30-30-1, total consideration = $3,000,000 cash + $400,000 contingent consideration fair value = $3,400,000. Goodwill = $3,400,000 − $2,800,000 = $600,000. Contingent consideration is measured at acquisition-date fair value and included in consideration transferred.
Wrong (A): $200,000 incorrectly excludes the contingent consideration from the calculation ($3,000,000 − $2,800,000).
Wrong (C): $1,000,000 does not correspond to any valid calculation of goodwill under these facts.
Wrong (D): $400,000 equals the contingent consideration alone and does not reflect the correct goodwill computation.$$,
  difficulty = 'medium'
WHERE id = 2215;

-- Q2216 [hard] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 805-10-25-10, when control is achieved in stages (a step acquisition), the acquirer remeasures its previously held equity interest at acquisition-date fair value and recognizes any resulting gain or loss in earnings. This ensures the entire subsidiary is reflected at fair value.
Wrong (A): Continuing to carry the 30% at equity method book value ignores the step-acquisition remeasurement requirement in ASC 805.
Wrong (B): Combining historical costs does not reflect fair value and contradicts the acquisition method''s measurement principles.
Wrong (C): Writing off the investment and starting fresh has no basis in GAAP; the previously held interest is remeasured, not eliminated.$$,
  difficulty = 'hard'
WHERE id = 2216;

-- Q2218 [medium] topic: Consolidations
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 810-10-45-1, consolidated total assets are typically less than the simple sum of parent and subsidiary assets because intercompany balances (receivables, payables, investments) are eliminated. Unrealized intercompany profits in inventory or fixed assets also reduce consolidated amounts.
Wrong (A): Simply adding parent and subsidiary total assets ignores required intercompany eliminations under ASC 810.
Wrong (B): While consolidated assets do exceed the parent''s standalone assets, the increase is not exactly equal to the subsidiary''s total assets due to eliminations and fair value adjustments.
Wrong (D): Reporting only the parent''s total assets would ignore the subsidiary entirely, defeating the purpose of consolidation.$$,
  difficulty = 'medium'
WHERE id = 2218;

-- Q2223 [medium] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): ASC 820-10-35-10 requires nonfinancial assets to be measured based on their highest and best use from the perspective of market participants. Highest and best use considers what is physically possible, legally permissible, and financially feasible.
Wrong (A): The asset''s current use by the reporting entity is not the measurement basis; ASC 820 focuses on market participant perspectives, not entity-specific use.
Wrong (B): Historical cost adjusted for depreciation reflects carrying value, not fair value as defined by ASC 820.
Wrong (C): Taking the lower of current use or highest and best use applies a conservatism concept not found in the fair value framework.$$,
  difficulty = 'medium'
WHERE id = 2223;

-- Q2226 [medium] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): ASC 820-10-35-36B explicitly prohibits blockage factors (discounts for large position sizes) for Level 1 measurements. The fair value is the quoted price per unit multiplied by the quantity held: 100,000 × $50 = $5,000,000.
Wrong (B): A 10% blockage discount is prohibited because ASC 820 does not permit adjustments to quoted prices in active markets for identical instruments.
Wrong (C): A 5% blockage discount is equally impermissible; any blockage factor violates ASC 820-10-35-36B.
Wrong (D): Determining what a willing buyer would pay for the entire block introduces a block-level valuation that contradicts the per-unit measurement required for Level 1 inputs.$$,
  difficulty = 'medium'
WHERE id = 2226;

-- Q2227 [easy] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): ASC 820-10-35-24 identifies three valuation approaches: the market approach (using prices from market transactions for comparable assets), the income approach (converting future cash flows to present value), and the cost approach (current replacement cost). The residual approach is not a recognized valuation approach under ASC 820.
Wrong (A): The market approach is one of the three recognized valuation approaches under ASC 820.
Wrong (B): The income approach is one of the three recognized valuation approaches under ASC 820.
Wrong (C): The cost approach is one of the three recognized valuation approaches under ASC 820.$$,
  difficulty = 'easy'
WHERE id = 2227;

-- Q2228 [medium] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): ASC 820-10-35-24B does not prescribe a hierarchy among valuation approaches. The entity should use the approach (or combination) that is most representative of fair value in the circumstances, considering the availability and quality of inputs.
Wrong (A): Averaging the three values is not required or permitted; professional judgment determines which technique best represents fair value.
Wrong (B): The market approach is not always the most reliable; its appropriateness depends on the availability of comparable market data for the specific asset.
Wrong (D): Selecting the lowest value applies a conservatism principle that has no basis in the ASC 820 fair value framework.$$,
  difficulty = 'medium'
WHERE id = 2228;

-- Q2229 [medium] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 820-10-50-1, recurring fair value measurements are those required in the balance sheet at the end of each reporting period. Available-for-sale debt securities are measured at fair value every reporting period, making them recurring.
Wrong (A): Goodwill impairment testing is a nonrecurring measurement because it occurs only when triggering events indicate possible impairment, not at every reporting date.
Wrong (B): Long-lived asset write-downs to fair value are nonrecurring because they occur only upon specific impairment-triggering events under ASC 360.
Wrong (D): Assets acquired in a business combination are measured at acquisition-date fair value only once, making this a nonrecurring measurement.$$,
  difficulty = 'medium'
WHERE id = 2229;

-- Q2232 [hard] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): ASC 820-10-50-2 requires entities with Level 3 recurring measurements to provide a rollforward (reconciliation of beginning and ending balances) showing purchases, sales, issuances, settlements, total gains/losses, and transfers. This additional disclosure requirement exists because Level 3 inputs are unobservable and demand greater transparency.
Wrong (A): The valuation technique used must be disclosed for all levels of the fair value hierarchy, not exclusively for Level 3.
Wrong (B): Classification within the hierarchy is a required disclosure for all fair value measurements, regardless of level.
Wrong (C): The fair value amount at the reporting date is disclosed for all levels, not uniquely for Level 3.$$,
  difficulty = 'hard'
WHERE id = 2232;

-- Q2234 [easy] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 820-10-35-24C, the cost approach reflects the current replacement cost — the amount that would currently be required to replace the service capacity of an asset, adjusted for physical, functional, and economic obsolescence.
Wrong (A): Historical acquisition cost less accumulated depreciation reflects carrying value on the books, not current replacement cost as defined by ASC 820.
Wrong (B): Liquidation value represents a forced-sale price, which differs from the orderly transaction assumed in the cost approach.
Wrong (C): Net realizable value is selling price less completion and disposal costs, a concept from inventory accounting (ASC 330), not the cost approach to fair value.$$,
  difficulty = 'easy'
WHERE id = 2234;

-- Q2235 [medium] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): ASC 820-10-50-2 requires disclosure of transfers between levels of the fair value hierarchy, including the reasons for the transfer and the amounts involved. Transfers between Level 2 and Level 3 are particularly significant because they indicate a change in the observability of inputs.
Wrong (A): Claiming no disclosure is needed is incorrect; ASC 820 explicitly mandates disclosure of all inter-level transfers.
Wrong (B): Disclosing only the reason without the amounts is insufficient; both elements are required.
Wrong (C): Disclosing only the amounts without the reason is also insufficient; the standard requires both to provide adequate transparency.$$,
  difficulty = 'medium'
WHERE id = 2235;

-- Q2238 [medium] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 820-10-35-10, nonfinancial assets are measured at fair value based on the highest and best use from the perspective of market participants. If the highest and best use is as a retail center, that value must be used even though Summit currently uses the building as a warehouse.
Wrong (A): Reflecting warehouse use is incorrect because fair value is based on market participant perspectives, not the entity''s current use.
Wrong (B): Averaging warehouse and retail values has no basis in ASC 820; the standard requires the highest and best use value.
Wrong (C): Selecting the lower value applies a conservatism concept that is not part of the fair value measurement framework.$$,
  difficulty = 'medium'
WHERE id = 2238;

-- Q2239 [medium] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 825-10-25, when the fair value option is elected, subsequent changes in fair value are recognized in net income. The $20,000 decrease ($500,000 − $480,000) is reported as a fair value loss in earnings. The fair value option, once elected, is irrevocable for that instrument.
Wrong (A): Impairment loss treatment applies under the CECL or held-to-maturity frameworks, not when the fair value option is elected.
Wrong (B): Unrealized gains and losses go to OCI for available-for-sale debt securities under ASC 320, but the fair value option under ASC 825 requires recognition in net income instead.
Wrong (D): Deferring recognition until settlement contradicts the fair value option, which requires mark-to-market each reporting period.$$,
  difficulty = 'medium'
WHERE id = 2239;

-- Q2241 [hard] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 820-10-35-5, if the exchange is the principal market (greatest volume and activity), the fair value is the quoted price in that market ($120,000) even if a more advantageous price exists elsewhere. The principal market is determined objectively based on volume and activity.
Wrong (B): $125,000 reflects the most advantageous price, but ASC 820 requires use of the principal market price when a principal market exists, even if another market offers a higher price.
Wrong (C): Averaging both prices has no basis in the fair value hierarchy; only one market''s price is used.
Wrong (D): The entity does not choose which market is principal; it is determined objectively by volume and level of activity under ASC 820-10-35-5.$$,
  difficulty = 'hard'
WHERE id = 2241;

-- Q2242 [hard] topic: Fair Value
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 820-10-35-9B, transaction costs are not a characteristic of the asset or liability and are therefore excluded from fair value measurement. However, ASC 820-10-35-9A specifies that transaction costs are considered when determining which market is the most advantageous (maximizing the net amount received or minimizing the net amount paid).
Wrong (A): Including transaction costs in all fair value measurements is incorrect; ASC 820 explicitly excludes them from the measurement itself.
Wrong (C): Adding to assets and subtracting for liabilities confuses transaction costs with transport costs; transaction costs are excluded from measurement entirely.
Wrong (D): Transaction costs are not always ignored — they play a role in identifying the most advantageous market, even though they are excluded from the fair value measurement.$$,
  difficulty = 'hard'
WHERE id = 2242;

-- Q2243 [medium] topic: Fair Value
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): ASC 820-10-35-37 states that the level within the fair value hierarchy is determined by the lowest-level input that is significant to the entire measurement. For example, if a measurement uses both Level 2 and Level 3 inputs and the Level 3 input is significant, the entire measurement is classified as Level 3.
Wrong (A): Using the highest-level input would overstate the reliability of the measurement by ignoring less observable inputs that significantly affect the result.
Wrong (B): Averaging the levels of inputs has no basis in ASC 820; classification is based on the lowest significant input.
Wrong (D): Frequency of use is not a criterion; significance to the overall measurement determines the hierarchy classification.$$,
  difficulty = 'medium'
WHERE id = 2243;

-- Q2251 [easy] topic: Cash and Receivables
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 860-10-40-5, factoring without recourse transfers the credit risk to the factor. Since the seller has no continuing involvement or obligation if customers fail to pay, the transaction meets the criteria for a sale and the receivables are derecognized.
Wrong (B): A secured borrowing occurs when the transferor retains significant risks (such as recourse obligations), which is not the case in without-recourse factoring.
Wrong (C): An assignment involves pledging receivables as collateral while retaining ownership; factoring without recourse fully transfers ownership and risk.
Wrong (D): A pledge of receivables encumbers the assets but does not transfer them; without-recourse factoring removes the receivables from the balance sheet entirely.$$,
  difficulty = 'easy'
WHERE id = 2251;

-- Q2253 [easy] topic: Cash and Receivables
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 860-30, pledging receivables as collateral does not constitute a transfer of ownership or control. The receivables remain on the borrower''s balance sheet, and the loan proceeds are recorded as a liability. Disclosure of the pledge is required in the notes.
Wrong (A): Removing receivables from the borrower''s balance sheet requires a transfer of control, not merely a pledge of collateral.
Wrong (C): The lender does not gain ownership of the receivables; it holds a security interest, so the receivables are not transferred to the lender''s balance sheet.
Wrong (D): Reducing receivables to net realizable value is an impairment concept unrelated to pledging collateral.$$,
  difficulty = 'easy'
WHERE id = 2253;

-- Q2255 [easy] topic: Cash and Receivables
-- Issues: no_citation, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 835-30-15, interest = Principal × Rate × Time = $100,000 × 8% × 6/12 = $4,000. The 6-month note runs from July 1 to December 31, so the full 6 months of interest has been earned by year-end.
Wrong (A): $8,000 incorrectly applies the full annual rate ($100,000 × 8%) without prorating for the 6-month term of the note.
Wrong (B): $2,000 would result from using only a 3-month period or halving the correct calculation, neither of which matches the 6-month term.
Wrong (D): $100,000 is the principal amount of the note, not the interest receivable.$$,
  difficulty = 'easy'
WHERE id = 2255;

-- Q2266 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): ASC 326-20-30-7 requires consideration of all three factors: historical experience (past events), current conditions, and reasonable and supportable forecasts of future economic conditions. For periods beyond which reasonable forecasts can be made, the entity reverts to historical loss rates.
Wrong (A): Considering only past events and current conditions omits the forward-looking forecast component that is central to the CECL model.
Wrong (B): Relying solely on forecasts ignores historical loss experience and current conditions, which provide essential baseline data.
Wrong (D): The CECL model requires estimating expected losses over the life of the asset, not just losses that have been specifically identified — that was the incurred-loss model under legacy ASC 450-20.$$,
  difficulty = 'medium'
WHERE id = 2266;

-- Q2270 [easy] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 958-205-05-6, contributions where the donor stipulates that the principal be maintained in perpetuity are classified as net assets with donor restrictions. The two-category model (with and without donor restrictions) applies, and perpetual restrictions fall within the "with donor restrictions" category.
Wrong (A): Net assets without donor restrictions is incorrect because the donor imposed a perpetual restriction on the principal.
Wrong (C): Revenue without donor restrictions mischaracterizes the contribution; the perpetual restriction on principal requires classification as with donor restrictions.
Wrong (D): Deferred revenue applies to exchange transactions where performance obligations are unmet, not to donor-restricted contributions under ASC 958.$$,
  difficulty = 'easy'
WHERE id = 2270;

-- Q2272 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 958-605-25-5A, conditional promises to give are not recognized as revenue until the conditions (barriers) are substantially met. This pledge includes a barrier (raising matching funds) and a right of return. Since only $300,000 of $1,000,000 has been raised, the condition is not substantially met and the promise is disclosed in the notes only.
Wrong (A): Recognizing $1,000,000 immediately is incorrect because the condition has not been substantially met; the pledge remains conditional.
Wrong (B): Recognizing $300,000 based on partial progress is incorrect because conditional promises are binary — they are either recognized in full when conditions are substantially met or not at all.
Wrong (D): Deferred revenue treatment applies to exchange transactions, not conditional contributions under ASC 958.$$,
  difficulty = 'medium'
WHERE id = 2272;

-- Q2273 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 958-605-30-3, unconditional promises to give expected to be collected in future periods are measured at the present value of estimated future cash flows using an appropriate discount rate. The discount amortization is recognized as contribution revenue in subsequent periods.
Wrong (A): Recording at $750,000 with no discount ignores the time value of money required by ASC 958 for multi-year pledges.
Wrong (B): Recognizing only the first year''s payment of $250,000 understates the pledge; the full present value of all expected payments is recognized at inception.
Wrong (C): Deducting an allowance for uncollectible pledges is a separate step from discounting; the initial measurement uses present value, and a separate allowance may also apply.$$,
  difficulty = 'medium'
WHERE id = 2273;

-- Q2274 [easy] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 958-605-25-2, contributed services are recognized only if they (a) create or enhance a nonfinancial asset, or (b) require specialized skills, are provided by individuals possessing those skills, and would typically need to be purchased if not donated. Legal services are specialized and meet these criteria.
Wrong (A): Claiming contributed services are never recognized is incorrect; ASC 958-605-25-2 provides specific criteria under which they are recognized.
Wrong (B): A written acknowledgment from the donor is not a recognition criterion under ASC 958; the nature of the services determines recognition.
Wrong (C): There is no $10,000 minimum threshold for recognizing contributed services; recognition depends on the specialized skill and enhancement criteria.$$,
  difficulty = 'easy'
WHERE id = 2274;

-- Q2276 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASU 2020-07 and ASC 958-605-30, contributed nonfinancial assets are measured at fair value at the date of receipt using ASC 820 principles (exit price in the principal market). The NFP''s independently determined fair value of $800,000 is the appropriate amount, not the donor''s estimate.
Wrong (B): Using the donor''s $2,000,000 estimate is incorrect because fair value is determined by the reporting entity using ASC 820 exit price principles, not donor assertions.
Wrong (C): Averaging both estimates has no basis in GAAP; the NFP''s fair value measurement governs.
Wrong (D): In-kind gifts of supplies are recognized as contributions when they meet the definition of an asset and have measurable fair value.$$,
  difficulty = 'medium'
WHERE id = 2276;

-- Q2279 [hard] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under UPMIFA (adopted by most states) and ASC 958-205-45-1, a not-for-profit may appropriate for expenditure an amount it considers prudent from the total endowment value. The 4% spending rate applied to the total endowment ($5,000,000 + $1,200,000 = $6,200,000) yields $248,000.
Wrong (A): $200,000 incorrectly applies the spending rate to the original corpus only, ignoring accumulated investment returns that UPMIFA permits spending.
Wrong (B): Claiming endowment principal cannot be spent contradicts UPMIFA, which allows prudent spending of both corpus and appreciation.
Wrong (C): Spending all $1,200,000 in accumulated returns would likely exceed a prudent appropriation and ignores the board''s adopted 4% spending policy.$$,
  difficulty = 'hard'
WHERE id = 2279;

-- Q2281 [hard] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 958-30-25-5, when a not-for-profit is the remainder beneficiary of a charitable remainder trust, it recognizes a receivable and contribution revenue equal to the present value of its expected future benefit ($2,600,000). The revenue is classified as with donor restrictions because the benefit is not available until the trust terminates.
Wrong (A): Waiting until the trust terminates ignores the recognition principle that unconditional rights to future benefits are recorded at present value upon establishment.
Wrong (B): Recognizing $4,000,000 overstates the NFP''s interest; the NFP is entitled only to the remainder, not the full trust corpus.
Wrong (C): Deferred revenue treatment applies to exchange transactions, not to split-interest agreements under ASC 958-30.$$,
  difficulty = 'hard'
WHERE id = 2281;

-- Q2283 [easy] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASC 958-205-45-1, the statement of activities must report the change in net assets for the period, showing changes in net assets with donor restrictions, without donor restrictions, and total net assets. It must also report revenues, expenses, gains, losses, and reclassifications between categories.
Wrong (B): Expenses by both natural and functional classification may be presented on a separate statement (the statement of functional expenses) rather than on the face of the statement of activities.
Wrong (C): The statement of activities is required for all NFPs, not only those with donor-restricted net assets.
Wrong (D): NFPs are not required to follow the multi-step income statement format used by for-profit entities; presentation flexibility exists under ASC 958.$$,
  difficulty = 'easy'
WHERE id = 2283;

-- Q2287 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 958-360-25, NFPs may choose not to capitalize collections if items are held for public exhibition, education, or research; are protected and preserved; and proceeds from any sales are used to acquire other collection items. If this policy is elected, the NFP must disclose a description of the collection and its stewardship.
Wrong (A): Capitalizing at $12,000,000 regardless of policy is incorrect; ASC 958-360 permits an election not to capitalize qualifying collections.
Wrong (B): Recognizing revenue without recording an asset is inconsistent; if the collection is not capitalized, no revenue is recognized for it either.
Wrong (C): Not capitalizing collections is explicitly permitted under ASC 958-360 when the qualifying conditions are met.$$,
  difficulty = 'medium'
WHERE id = 2287;

-- Q2288 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under ASU 2014-09 (ASC 606) as applied to NFP healthcare entities in ASC 954-605, net patient service revenue equals gross patient service revenue less contractual adjustments: $350,000 − $95,000 = $255,000. Bad debt expense is classified as an operating expense, not a deduction from revenue.
Wrong (B): $350,000 is the gross amount before contractual adjustments and does not reflect net patient service revenue.
Wrong (C): $235,000 incorrectly deducts both contractual adjustments and bad debt from gross revenue; bad debt is reported as a separate operating expense.
Wrong (D): $330,000 deducts only the bad debt ($350,000 − $20,000) while ignoring contractual adjustments.$$,
  difficulty = 'medium'
WHERE id = 2288;

-- Q2291 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 958-605-25-5A, from the grantor''s perspective, a conditional grant is not recognized as expense until the recipient substantially meets the conditions (barriers). As the recipient meets conditions progressively, the grantor recognizes expense accordingly.
Wrong (A): Recognizing the full $150,000 immediately ignores the conditions that must be substantially met before expense recognition.
Wrong (B): Deferring expense until full project completion is overly restrictive; expense is recognized as conditions are progressively met, not only at final completion.
Wrong (C): Recognizing $37,500 per quarter assumes time-based recognition, but ASC 958-605 ties recognition to the satisfaction of barriers, not to a fixed schedule.$$,
  difficulty = 'medium'
WHERE id = 2291;

-- Q2292 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (C): Under ASC 958-230-45-3, donor-restricted contributions and investment income restricted for long-term purposes (such as acquiring long-lived assets or endowment) are classified as financing activities on the NFP''s statement of cash flows.
Wrong (A): Operating activities include unrestricted contributions and revenues from the NFP''s primary mission, not long-term restricted contributions.
Wrong (B): Investing activities include purchases and sales of investments and property, not the receipt of donor-restricted contributions.
Wrong (D): Supplemental disclosures are for noncash transactions; cash receipts of restricted contributions must be classified within the cash flow statement itself.$$,
  difficulty = 'medium'
WHERE id = 2292;

-- Q2293 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (B): Under ASC 958-605-25-36, special events with both exchange and contribution elements require bifurcation. Exchange revenue = 200 × $120 = $24,000 (fair value of benefits). Contribution revenue = (200 × $500) − $24,000 = $76,000 (amount exceeding fair value of benefits).
Wrong (A): $100,000 as contribution revenue with $0 exchange revenue ignores the exchange component — attendees received meals and entertainment worth $120 each.
Wrong (C): $100,000 as exchange revenue with $0 contribution revenue ignores the contribution element; the payment exceeds the fair value of benefits received.
Wrong (D): A 50/50 split has no basis in ASC 958; bifurcation is based on the fair value of benefits provided, not an arbitrary allocation.$$,
  difficulty = 'medium'
WHERE id = 2293;

-- Q2296 [easy] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 958-605-30-2, contributions of assets other than cash are recognized at fair value on the date of receipt. The donor''s cost basis ($90,000) is irrelevant to the NFP. The NFP records the investment at $180,000 fair value and recognizes contribution revenue of $180,000 without donor restrictions.
Wrong (A): Using the donor''s cost basis of $90,000 is incorrect; the NFP measures contributions at fair value, not the donor''s historical cost.
Wrong (B): Not recognizing stock contributions until sold contradicts ASC 958, which requires recognition at the date of receipt.
Wrong (C): Averaging cost and fair value has no basis in GAAP; fair value at the date of receipt is the sole measurement attribute.$$,
  difficulty = 'easy'
WHERE id = 2296;

-- Q2297 [hard] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under ASC 958-30-25-2, a charitable lead trust where the NFP is the lead (income) beneficiary is a split-interest agreement. At inception, the NFP recognizes a receivable and contribution revenue equal to the present value of its expected future cash flows ($386,000). Discount amortization is recognized as contribution revenue over the 10-year term.
Wrong (A): Recognizing $50,000 annually on a cash basis ignores the present value measurement required by ASC 958-30 at inception.
Wrong (B): Waiting until all payments are received contradicts the requirement to recognize the receivable and revenue at the inception of the agreement.
Wrong (C): $500,000 represents total undiscounted payments and ignores the time value of money required by ASC 958-30.$$,
  difficulty = 'hard'
WHERE id = 2297;

-- Q2298 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (D): Under GASB Statement No. 33 and the modified accrual basis, revenue is recognized when measurable and available. Available means collectible within the current period or soon enough thereafter to pay current-period liabilities (typically 60 days). Although the net levy is $9,700,000 ($10,000,000 less 3% uncollectible), only $9,200,000 is expected within 60 days. The remaining $500,000 is reported as a deferred inflow of resources.
Wrong (A): $9,700,000 represents the net collectible levy but ignores the availability criterion; only amounts expected within 60 days qualify as revenue.
Wrong (B): $9,409,000 does not correspond to a valid calculation under modified accrual accounting.
Wrong (C): $10,000,000 includes both the uncollectible portion and amounts not available within 60 days.$$,
  difficulty = 'medium'
WHERE id = 2298;

-- Q2299 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $$Correct (D): Under GASB Statement No. 34, paragraph 16, governmental funds use the current financial resources measurement focus. This means they measure and report only current financial assets and liabilities expected to be received or paid in the near term. Long-term assets and liabilities are excluded from governmental fund balance sheets.
Wrong (A): Cash basis measurement focus is used by some very small governments but is not the prescribed basis for governmental fund reporting under GASB standards.
Wrong (B): Full accrual measurement focus is used in government-wide financial statements and proprietary funds, not in governmental funds.
Wrong (C): Economic resources measurement focus is used for government-wide statements and proprietary funds under GASB 34, not for governmental fund-level reporting.$$,
  difficulty = 'easy'
WHERE id = 2299;

-- Q2309 [easy] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under GASB Statement No. 34, paragraph 69, fiduciary funds account for resources held in trust or as agent for parties outside the government. A pension trust fund for employee pension benefits is a fiduciary fund because the government holds and administers these resources for plan participants.
Wrong (B): A fund for constructing a new school is a capital projects fund, which is a governmental fund type, not fiduciary.
Wrong (C): A fund for paying bond principal and interest is a debt service fund, which is a governmental fund type.
Wrong (D): A motor pool fleet fund is an internal service fund, which is a proprietary fund type used for services provided to other government departments.$$,
  difficulty = 'easy'
WHERE id = 2309;

-- Q2310 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $$Correct (A): Under GASB 84, paragraph 5, custodial funds (which replaced agency funds) are used when a government holds assets for other organizations or individuals and the activity does not meet the criteria for other fiduciary fund types. Special assessments collected on behalf of another government entity are custodial in nature.
Wrong (B): Payroll tax withholdings remitted within the same period are typically processed through the General Fund and do not warrant a separate custodial fund.
Wrong (C): Property taxes levied for the county''s own operations are reported in governmental funds (usually the General Fund), not in custodial funds.
Wrong (D): Bond proceeds restricted for capital construction are reported in a capital projects fund, which is a governmental fund type.$$,
  difficulty = 'medium'
WHERE id = 2310;

-- Q2311 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $$Correct (A): Under GASB Statement No. 34, paragraph 65, a permanent fund accounts for resources that are legally restricted so that only earnings, not principal, may be used to support government programs. Since the earnings benefit the government''s own citizens (park maintenance), this is a permanent fund.
Wrong (B): A special revenue fund accounts for revenues restricted or committed for specific purposes other than capital projects or debt service, but it does not have the perpetual principal restriction characteristic.
Wrong (C): Restricted fund balance in the General Fund is not appropriate when the resource has a perpetual principal restriction requiring a separate fund.
Wrong (D): A private-purpose trust fund is used when earnings benefit individuals, private organizations, or other governments rather than the reporting government''s own programs.$$,
  difficulty = 'medium'
WHERE id = 2311;

-- Q2314 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $$Correct (D): Under GASB Statement No. 34, paragraph 80, in the government-wide statements (accrual basis), principal payments on long-term debt reduce the outstanding bond liability and are not reported as expenses. Only interest accrued is an expense. This is a key reconciling item between fund-level and government-wide statements.
Wrong (A): A deferred outflow of resources has a specific definition under GASB Concepts Statement 4 and does not apply to routine debt principal payments.
Wrong (B): Disclosing the payment as a financing activity only in the notes is insufficient; the transaction must be reflected as a reduction of long-term liabilities in the government-wide statements.
Wrong (C): Recording $2,000,000 as an expense applies to the fund-level statements under modified accrual, where it is an expenditure, but not to the government-wide accrual-basis statements.$$,
  difficulty = 'medium'
WHERE id = 2314;
