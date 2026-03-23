-- FAR cleanup batch 12 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q172 [hard] topic: Equity
-- Issues: no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 845-10-30-1 and related guidance on property dividends, a property dividend is measured at the fair value of the asset on the declaration date. Cascade remeasures the investment from $100,000 to $140,000, recognizing a $40,000 gain in net income. Retained earnings is debited $140,000 for the declared dividend, producing a net $100,000 reduction. The $8,000 post-declaration appreciation is not recognized because the obligation is fixed at declaration-date fair value.
Wrong (A): The distribution-date fair value does not override the declaration-date measurement. ASC 845 locks in the remeasurement at declaration, so the $48,000 total appreciation is not recognized.
Wrong (C): Property dividends do not bypass the income statement. The remeasurement gain from carrying amount to declaration-date fair value is recognized in net income before the dividend is charged to retained earnings.
Wrong (D): The remeasurement gain is reported in net income, not other comprehensive income. OCI treatment would apply to certain investment reclassifications, but not to property dividend remeasurements.$EXPL$,
  difficulty = 'hard'
WHERE id = 172;

-- Q175 [medium] topic: Income Taxes
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 740-10-25-6, an uncertain tax position is recognized only if it is more likely than not (greater than 50% likelihood) to be sustained upon examination by the taxing authority based on its technical merits. This is Step 1 of the two-step recognition and measurement process.
Wrong (B): "Virtually certain" is a much higher threshold than what ASC 740 requires. This overstates the recognition barrier and would prevent recognition of many valid tax positions.
Wrong (C): "Probable" is the threshold used in ASC 450 for loss contingencies, not in ASC 740 for uncertain tax positions. The more-likely-than-not standard is distinct and lower than probable.
Wrong (D): "Reasonably possible" is a lower threshold than more likely than not and is used for disclosure of contingencies under ASC 450, not for recognition of tax benefits under ASC 740.$EXPL$,
  difficulty = 'medium'
WHERE id = 175;

-- Q187 [medium] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 350-20-35-33, goodwill acquired in a business combination is assigned to and tested for impairment at the reporting unit level. A reporting unit is an operating segment or one level below an operating segment (a component). Goodwill is allocated to reporting units that benefit from the synergies of the combination.
Wrong (A): Goodwill is not tested at the individual asset level because it is not separately identifiable — it relates to a group of assets and the synergies of the business as a whole within a reporting unit.
Wrong (B): The subsidiary level is not the specified unit of account. A subsidiary may contain multiple reporting units or be part of a larger reporting unit, so testing at the subsidiary level could either mask or overstate impairment.
Wrong (D): Testing at the consolidated entity level would aggregate reporting units with different economic characteristics, potentially masking impairment in one unit with strong performance in another.$EXPL$,
  difficulty = 'medium'
WHERE id = 187;

-- Q371 [medium] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under IAS 16.31, IFRS permits the revaluation model for property, plant, and equipment, allowing assets to be carried at fair value with changes recognized in other comprehensive income (revaluation surplus). U.S. GAAP (ASC 360) requires the cost model only and does not permit upward revaluation of PP&E.
Wrong (A): LIFO is permitted under U.S. GAAP (ASC 330-10-30) but prohibited under IFRS (IAS 2.25). The question asks what IFRS permits but GAAP does not — LIFO is the reverse situation.
Wrong (C): IFRS (IAS 38.57) capitalizes development costs only when six specific criteria are met, not under all circumstances. This answer misstates the IFRS requirement.
Wrong (D): Both IFRS (IAS 38.48) and U.S. GAAP (ASC 350-20-25-2) prohibit recognition of internally generated goodwill, so this is not a difference between the frameworks.$EXPL$,
  difficulty = 'medium'
WHERE id = 371;

-- Q373 [medium] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 830-10-45-3, foreign currency translation adjustments arising from consolidating a foreign subsidiary whose functional currency is its local currency are reported in other comprehensive income as a cumulative translation adjustment. These adjustments bypass net income and accumulate in AOCI.
Wrong (A): Realized gains on the sale of available-for-sale debt securities are reclassified from AOCI into net income upon sale under ASC 320-10-35-1. They are not reported in OCI at the time of sale.
Wrong (B): Unrealized holding gains on trading securities are recognized directly in net income under ASC 321-10-35-1, not in OCI, because trading securities are held for short-term profit.
Wrong (D): Goodwill impairment losses are recognized in net income under ASC 350-20-35-1, not in OCI. Impairment is a charge against earnings in the period identified.$EXPL$,
  difficulty = 'medium'
WHERE id = 373;

-- Q375 [easy] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under FASB ASC 105-10-05-1, the FASB Accounting Standards Codification is the sole source of authoritative nongovernmental U.S. GAAP. When a nonauthoritative source conflicts with the Codification, the Codification always takes precedence regardless of any other factors.
Wrong (A): Recency does not determine authority. A newer textbook or article cannot override the Codification simply because it was published more recently.
Wrong (C): Conservatism is an accounting concept, not a factor in the GAAP hierarchy. The authoritative source prevails regardless of whether the alternative source is more conservative.
Wrong (D): Entities do not have the option to choose between authoritative and nonauthoritative sources. The Codification is mandatory for GAAP-compliant financial reporting.$EXPL$,
  difficulty = 'easy'
WHERE id = 375;

-- Q376 [hard] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under IAS 1.99, IFRS permits entities to classify expenses by either nature (e.g., depreciation, salaries, raw materials) or function (e.g., cost of sales, administrative expenses). U.S. GAAP, through SEC Regulation S-X and common practice, generally requires classification by function for public companies.
Wrong (A): Neither framework mandates a single-step or multi-step income statement format. Both allow flexibility in format; the distinction lies in expense classification, not statement structure.
Wrong (B): The two frameworks do not require identical expense classifications. IFRS offers a choice between nature and function, while GAAP effectively requires functional classification.
Wrong (C): This reverses the actual requirement. GAAP requires functional classification, and IFRS permits either nature or function — not the other way around.$EXPL$,
  difficulty = 'hard'
WHERE id = 376;

-- Q378 [hard] topic: Financial Statements
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 250-10-45-18, a change in depreciation method is treated as a change in accounting estimate effected by a change in accounting principle. It is accounted for prospectively — applied to the current and future periods only, with no retrospective restatement of prior periods.
Wrong (A): A change in depreciation method is not treated as a pure change in accounting principle requiring retrospective application. ASC 250 specifically classifies it as a change in estimate effected by a change in principle, which is applied prospectively.
Wrong (C): Prior period adjustment with full restatement applies to error corrections under ASC 250-10-45-23, not to changes in depreciation methods. A depreciation method change is not an error.
Wrong (D): Extraordinary item classification was eliminated under ASU 2015-01 (ASC 225-20). Even before elimination, a depreciation method change would not have qualified as extraordinary.$EXPL$,
  difficulty = 'hard'
WHERE id = 378;

-- Q384 [easy] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 606-10-55-36 through 55-40, an entity is a principal if it controls the specified good or service before transfer to the customer. Being primarily responsible for fulfilling the promise is a key indicator of control and principal status, as the entity bears fulfillment risk.
Wrong (B): Earning a flat commission regardless of transaction price is an indicator of agent status, not principal status. Agents typically earn commissions or fees rather than bearing pricing risk.
Wrong (C): Never taking physical possession suggests the entity may lack control over the goods, which is an indicator of agent status. Principals typically obtain control, often evidenced by possession or title.
Wrong (D): Having no pricing discretion is an indicator of agent status under ASC 606-10-55-39. Principals typically have the ability to establish prices for the goods or services.$EXPL$,
  difficulty = 'easy'
WHERE id = 384;

-- Q386 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 606-10-55-65, sales-based and usage-based royalties on licenses of intellectual property are recognized as revenue at the later of (a) the subsequent sale or usage occurring or (b) the performance obligation to which the royalty is allocated being partially or fully satisfied. This royalty exception prevents premature recognition of variable consideration tied to future licensee sales.
Wrong (A): Recognizing revenue when the license is granted ignores the royalty exception. Sales-based royalties are contingent on the licensee's future sales, not on the license transfer itself.
Wrong (B): Contract signing does not trigger revenue recognition for sales-based royalties. Revenue depends on the later of the underlying sale or the satisfaction of the performance obligation.
Wrong (C): Cash receipt is not the recognition trigger. ASC 606 is not a cash-basis framework — revenue is recognized when the underlying sale or usage occurs, regardless of when cash is collected.$EXPL$,
  difficulty = 'medium'
WHERE id = 386;

-- Q387 [hard] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 606-10-25-12 through 25-13, when a contract modification adds distinct goods or services and the price increase reflects standalone selling prices, the modification is treated as a separate contract. If the remaining goods are distinct but the price does not reflect standalone selling prices, the modification is treated as a termination of the existing contract and creation of a new one.
Wrong (A): A cumulative catch-up adjustment applies when the remaining goods or services are not distinct from those already transferred, requiring the modification to be treated as part of the original contract under ASC 606-10-25-13(b).
Wrong (C): Prospective adjustment is not the default treatment for all modifications. The accounting depends on whether remaining goods are distinct and whether pricing is at standalone selling prices.
Wrong (D): Contract modifications under ASC 606 are not changes in accounting estimates under ASC 250. They are addressed by specific modification guidance within the revenue recognition standard.$EXPL$,
  difficulty = 'hard'
WHERE id = 387;

-- Q388 [easy] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 606-10-32-18, an entity need not adjust the transaction price for a significant financing component if the period between transfer of goods or services and customer payment is expected to be one year or less. This practical expedient simplifies accounting for short-term payment arrangements.
Wrong (A): A contract term exceeding five years is not the threshold for this practical expedient. The expedient is based on the period between transfer and payment, not the overall contract duration.
Wrong (C): Related party status does not trigger or affect the financing component practical expedient. The one-year payment timing test applies regardless of whether the customer is a related party.
Wrong (D): The interest rate relative to the prime rate is not a factor in the practical expedient. The expedient is based solely on the timing between transfer and payment being one year or less.$EXPL$,
  difficulty = 'easy'
WHERE id = 388;

-- Q389 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 606-10-55-36, the overarching principle for principal versus agent determination is whether the entity obtains control of the specified good or service before it is transferred to the customer. If the entity controls the good or service, it is a principal and reports revenue gross; if not, it is an agent and reports net.
Wrong (A): Collecting payment from the end customer is not the determining factor. An agent may collect payment on behalf of a principal without obtaining control of the underlying good or service.
Wrong (C): Physical handling of goods is one indicator but not the overarching principle. An entity can be a principal without physically handling goods if it obtains control through other means such as directing the use of the asset.
Wrong (D): Bearing credit risk on the receivable is an indicator considered in the analysis but is not the core principle. Control of the good or service before transfer is the fundamental test under ASC 606.$EXPL$,
  difficulty = 'medium'
WHERE id = 389;

-- Q394 [easy] topic: Inventory
-- Issues: no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Clearwater Retailers experienced a warehouse fire that destroyed its inventory records. The controller estimates ending inventory using the gross profit method with the following data: beginning inventory $280,000, net purchases $1,420,000, net sales $2,100,000, and a historical gross profit percentage of 38%. However, the current gross profit rate is estimated at 43% due to a product mix shift. How does the rate choice affect the inventory estimate and what does this reveal about the method?$EXPL$,
  choices = $EXPL$["Both rates produce identical results because the method self-adjusts for product mix changes","The 38% rate yields $398,000 and the 43% rate yields $397,000, making the rate choice immaterial","The 38% rate yields $398,000 and the 43% rate yields $503,000, revealing the method's sensitivity to the margin assumption","The margin rate is irrelevant because the gross profit method relies solely on cost data"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 270-10-45-5, the gross profit method is permitted for interim inventory estimation but not for annual GAAP reporting. At 38%: COGS = $2,100,000 x 0.62 = $1,302,000; ending inventory = $1,700,000 - $1,302,000 = $398,000. At 43%: COGS = $2,100,000 x 0.57 = $1,197,000; ending inventory = $1,700,000 - $1,197,000 = $503,000. The $105,000 difference (approximately 26%) demonstrates the method's high sensitivity to the margin assumption.
Wrong (A): The gross profit method does not self-adjust for product mix changes. The margin rate is an external input, and changes in product mix directly affect the estimate's reliability.
Wrong (B): The two rates produce materially different results ($398,000 vs. $503,000), not nearly identical amounts. A 5-percentage-point rate change causes a $105,000 swing.
Wrong (D): The margin rate is central to the calculation. The method converts sales to estimated COGS using the gross profit percentage, so the rate directly determines the inventory estimate.$EXPL$,
  difficulty = 'easy'
WHERE id = 394;

-- Q395 [easy] topic: Inventory
-- Issues: no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 330-10-30-13, the retail inventory method estimates ending inventory at cost by applying a cost-to-retail ratio to the ending inventory stated at retail prices. The ratio is calculated as goods available for sale at cost divided by goods available for sale at retail. This method is widely used by retailers with high-volume, low-unit-cost inventory.
Wrong (A): The retail method estimates cost from retail, not the other way around. It converts known retail values to cost using the cost-to-retail percentage, not by marking up cost to retail.
Wrong (C): Barcode scanning is a perpetual inventory tracking technique, not the retail inventory method. The retail method is a cost estimation approach, not a physical tracking system.
Wrong (D): The retail method estimates cost, not net realizable value. While NRV is relevant for lower-of-cost-or-NRV testing, the retail method's purpose is to approximate the cost of ending inventory.$EXPL$,
  difficulty = 'easy'
WHERE id = 395;

-- Q398 [medium] topic: Inventory
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under IRC Section 472, if a taxpayer elects LIFO for federal income tax purposes, it must also use LIFO for financial reporting in its primary financial statements. This LIFO conformity rule is a rare instance where tax law dictates financial reporting methodology.
Wrong (B): A company may not use FIFO for financial reporting while using LIFO for tax purposes. The conformity rule explicitly requires that the same LIFO method be used in the primary financial statements if elected for tax.
Wrong (C): The LIFO conformity rule applies to all entities that elect LIFO for tax purposes, not just publicly traded companies. Private companies are equally bound by the requirement.
Wrong (D): There is no $10 million inventory threshold for the conformity rule. The requirement applies to any entity that elects LIFO for tax regardless of inventory size.$EXPL$,
  difficulty = 'medium'
WHERE id = 398;

-- Q400 [medium] topic: Fixed Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 410-20-25-2, an asset retirement obligation is initially measured at fair value (typically the present value of estimated future cash flows) when a reasonable estimate can be made. An equal amount is capitalized as an increase to the carrying amount of the related long-lived asset. The capitalized cost is depreciated over the asset's useful life, and the liability accretes to its settlement value over time.
Wrong (A): The obligation is measured at fair value (present value), not at the estimated undiscounted cost. Additionally, the cost is capitalized to the asset rather than expensed immediately, as the retirement cost is a component of the asset's cost.
Wrong (C): ASC 410-20-25-4 requires recognition when a reasonable estimate can be made and a legal obligation exists. Deferring recognition until retirement would understate both the asset and the liability during the asset's useful life.
Wrong (D): There is no 10% materiality threshold for ARO recognition. The obligation is recorded whenever a legal obligation exists and a reasonable estimate of fair value can be made.$EXPL$,
  difficulty = 'medium'
WHERE id = 400;

-- Q401 [hard] topic: Fixed Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 835-20-30-2, interest is capitalized on weighted-average accumulated expenditures during the construction period. The specific construction loan rate is applied first: $1,500,000 x 8% = $120,000. The remaining expenditures ($2,000,000 - $1,500,000 = $500,000) are multiplied by the weighted-average general borrowing rate: $500,000 x 6% = $30,000. Total capitalizable interest = $120,000 + $30,000 = $150,000.
Wrong (A): $120,000 reflects only the interest on the specific construction loan and omits the $30,000 of general borrowing interest applicable to the remaining $500,000 of expenditures.
Wrong (C): $160,000 does not correspond to a correct application of either rate to the expenditure amounts. The proper calculation yields $150,000 using the two-tier approach.
Wrong (D): $180,000 would result from applying an incorrect blended rate or misallocating expenditures between the specific and general borrowings.$EXPL$,
  difficulty = 'hard'
WHERE id = 401;

-- Q403 [easy] topic: Fixed Assets
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 845-10-30-1, when a nonmonetary exchange lacks commercial substance and no boot is involved, the acquired asset is recorded at the book value of the asset given up. No gain is recognized because the exchange does not culminate an earnings process — the entity's future cash flows have not changed significantly. Losses, however, are always recognized immediately.
Wrong (A): Recording at fair value of the asset given up applies when the exchange has commercial substance under ASC 845-10-30-1. Without commercial substance and without boot, the book value basis is required.
Wrong (B): Fair value of the asset received is used only when the exchange has commercial substance. In a noncommercial-substance exchange without boot, the book value of the asset surrendered determines the carrying amount.
Wrong (D): Lower-of-cost-or-market is an inventory concept under ASC 330, not the measurement basis for nonmonetary exchanges. The correct basis is the book value of the asset given up.$EXPL$,
  difficulty = 'easy'
WHERE id = 403;

-- Q405 [medium] topic: Fixed Assets
-- Issues: unstructured, choice_cuing
UPDATE questions SET
  stem = $EXPL$Which of the following criteria must be met to classify a long-lived asset as held for sale under ASC 360?$EXPL$,
  choices = $EXPL$["The asset must be fully depreciated before reclassification","Management must commit to a sell plan with sale probable within one year","A binding purchase agreement must be signed with an identified buyer","The asset must first be tested and found to be impaired"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 360-10-45-9, held-for-sale classification requires that management with authority commits to a plan to sell, the asset is available for immediate sale in its present condition, an active program to locate a buyer has been initiated, the sale is probable and expected within one year, and the asset is being actively marketed at a reasonable price.
Wrong (A): Full depreciation is not a prerequisite for held-for-sale classification. An asset with remaining book value can be classified as held for sale if the ASC 360 criteria are met.
Wrong (C): A binding purchase agreement is not required under ASC 360-10-45-9. The standard requires that the sale be probable and that an active buyer-location program be underway, but a signed agreement is not necessary.
Wrong (D): Impairment is not a prerequisite for held-for-sale classification. An asset may be classified as held for sale regardless of whether it is impaired; impairment testing occurs separately after reclassification.$EXPL$,
  difficulty = 'medium'
WHERE id = 405;

-- Q407 [medium] topic: Fixed Assets
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 360-10-35-17, the impairment test for long-lived assets held and used begins with a recoverability test (Step 1): the asset group's carrying amount is compared to the sum of its undiscounted expected future cash flows. If the carrying amount exceeds undiscounted cash flows, the asset is impaired, and Step 2 measures the loss as the excess of carrying amount over fair value.
Wrong (A): Comparing carrying amount to fair value is Step 2, not Step 1. The undiscounted cash flow test must first establish that impairment exists before a fair value measurement is performed.
Wrong (C): An independent appraisal may be used to determine fair value in Step 2, but it is not the first step. The recoverability test using undiscounted cash flows precedes any fair value measurement.
Wrong (D): Writing down to net realizable value is an inventory concept under ASC 330. Long-lived asset impairment under ASC 360 measures the loss as carrying amount minus fair value, not net realizable value.$EXPL$,
  difficulty = 'medium'
WHERE id = 407;

-- Q418 [medium] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 842-10-25-2, one criterion for sales-type lease classification is that the present value of lease payments and any residual value guarantee equals or exceeds substantially all of the fair value of the underlying asset (generally interpreted as 90% or more). The five criteria are: ownership transfer, purchase option reasonably certain to be exercised, major part of economic life, substantially all of fair value, and no alternative use.
Wrong (A): While the present value test is a valid criterion, this choice describes criterion 4, not an "other" criterion beyond ownership transfer and purchase option. The question asks for the criterion involving the lease term and economic life.
Wrong (C): A residual value guarantee alone does not trigger sales-type classification. It is only factored into the present value calculation under criterion 4 and does not independently satisfy any classification test.
Wrong (D): Significant initial direct costs are a cost consideration for the lessor but are not a classification criterion under ASC 842-10-25-2. Classification depends on the transfer-of-control indicators, not cost levels.$EXPL$,
  difficulty = 'medium'
WHERE id = 418;

-- Q420 [medium] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 842-10-25-8, a lease modification is treated as a separate contract when two conditions are met: (1) the modification grants the lessee an additional right-of-use asset not in the original contract, and (2) the additional consideration is commensurate with the standalone price for that right-of-use asset, adjusted for the contract circumstances.
Wrong (A): Remeasurement of the existing lease liability applies when a modification does not qualify as a separate contract — for example, when the consideration is not commensurate with standalone pricing or when the modification changes the scope of an existing right-of-use asset.
Wrong (C): Termination and reorigination is not the treatment for modifications that meet both conditions for separate contract treatment. This approach may apply to certain modifications that do not qualify as separate contracts.
Wrong (D): Impairment of the right-of-use asset is a separate assessment under ASC 360, not a consequence of a lease modification. Modifications affect lease terms and payments, not asset impairment.$EXPL$,
  difficulty = 'medium'
WHERE id = 420;

-- Q421 [hard] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 842-10-35-3, the sublessor (original lessee) classifies a sublease by reference to the right-of-use asset arising from the head lease, not the underlying asset itself. The sublessor is effectively transferring its right-of-use, so classification criteria are applied relative to the ROU asset's remaining value and term.
Wrong (A): The fair value of the underlying asset is used by the head lessor for classification, not by the sublessor. The sublessor's relevant asset is the ROU asset from the head lease, not the physical property.
Wrong (B): The original cost to the head lessor is irrelevant to the sublessor's classification. The sublessor has no ownership interest in the underlying asset and must reference its own ROU asset.
Wrong (D): Total remaining payments on the head lease represent the sublessor's obligation, not the asset being subleased. Classification is based on the ROU asset, and the head lease payments are a separate liability.$EXPL$,
  difficulty = 'hard'
WHERE id = 421;

-- Q422 [hard] topic: Leases
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 842-40-25-4, if the transfer of the asset in a sale-leaseback transaction does not qualify as a sale under ASC 606 (i.e., the buyer-lessor does not obtain control), the transaction is accounted for as a failed sale. The seller-lessee does not derecognize the asset and instead records the proceeds as a financing obligation, continuing to depreciate the asset.
Wrong (B): A sale with gain recognition requires that the transfer qualifies as a sale under ASC 606. Without a qualifying sale, no gain can be recognized and no new lease is established from the seller-lessee's perspective.
Wrong (C): Operating lease treatment without asset recognition applies only when a valid sale has occurred. In a failed sale-leaseback, the asset remains on the seller-lessee's books because control was not transferred.
Wrong (D): Deferred gain amortization was the treatment under the previous standard (ASC 840). Under ASC 842, if the transfer is not a sale, it is a financing arrangement — there is no gain to defer.$EXPL$,
  difficulty = 'hard'
WHERE id = 422;

-- Q432 [easy] topic: Bonds and Debt
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 470-50-40-2, when bonds are extinguished early, the difference between the reacquisition price ($960,000) and the carrying amount ($940,000) is recognized as a loss of $20,000 in net income in the period of extinguishment. The carrying amount reflects the face value net of any unamortized discount.
Wrong (A): Gains and losses on debt extinguishment are reported in net income, not in other comprehensive income. OCI is reserved for items such as unrealized gains on AFS securities and foreign currency translation adjustments.
Wrong (C): A gain or loss must be recognized whenever the reacquisition price differs from the carrying amount. The $20,000 excess payment represents an economic loss that cannot be ignored.
Wrong (D): Extraordinary item classification was eliminated under ASU 2015-01 (ASC 225-20). Even before elimination, the standard no longer required debt extinguishment gains and losses to be classified as extraordinary.$EXPL$,
  difficulty = 'easy'
WHERE id = 432;

-- Q446 [medium] topic: Equity
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 718-10-35-8, for awards with graded vesting and only service conditions, an entity may elect as an accounting policy either the accelerated attribution method (treating each tranche as a separate award) or the straight-line method over the requisite service period for the entire award. This is an accounting policy election that must be applied consistently.
Wrong (A): Straight-line is not the only permitted method. ASC 718 explicitly allows a policy choice between straight-line and accelerated attribution for graded-vesting awards with service-only conditions.
Wrong (B): Accelerated attribution is not the only permitted method. While it front-loads expense recognition, the entity may alternatively elect straight-line recognition if it applies the election consistently.
Wrong (D): The intrinsic value method is not permitted under ASC 718 for share-based payment awards. ASC 718-10-30-2 requires fair-value-based measurement at the grant date for equity-classified awards.$EXPL$,
  difficulty = 'medium'
WHERE id = 446;

-- Q447 [easy] topic: Income Taxes
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 740-10-25-6, the "more likely than not" threshold means a greater than 50% likelihood that the tax position will be sustained upon examination by the taxing authority based on its technical merits. This is the Step 1 recognition threshold in the two-step process for uncertain tax positions.
Wrong (A): A greater than 75% likelihood is a higher threshold than what ASC 740 requires. The standard specifies greater than 50%, which is the more-likely-than-not standard.
Wrong (C): "Virtually certain" is the highest probability threshold and is far above the ASC 740 requirement. This standard is used in certain IFRS contexts but not for U.S. GAAP uncertain tax positions.
Wrong (D): A 25% probability is well below the more-likely-than-not threshold. At only 25% likelihood, the position would fail Step 1 and the tax benefit would not be recognized.$EXPL$,
  difficulty = 'easy'
WHERE id = 447;

-- Q448 [medium] topic: Income Taxes
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 740-10-35-4, deferred tax assets and liabilities are adjusted for the effect of enacted changes in tax rates in the period of enactment. The resulting adjustment is recognized in income from continuing operations, providing immediate transparency about the rate change's effect on future tax consequences.
Wrong (B): Adjustments are made in the period of enactment, not when the new rate takes effect. The enacted rate is the rate expected to apply when temporary differences reverse, so deferred amounts must be updated immediately.
Wrong (C): Waiting until temporary differences reverse would misstate deferred tax balances on the balance sheet. ASC 740 requires current-period adjustment to reflect the enacted rate that will apply upon reversal.
Wrong (D): The effect of a rate change is recognized in income from continuing operations, not in other comprehensive income. OCI recognition applies only to deferred tax effects related to items originally recognized in OCI.$EXPL$,
  difficulty = 'medium'
WHERE id = 448;

-- Q449 [easy] topic: Income Taxes
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 740-10-30-5, a valuation allowance is established to reduce the deferred tax asset to the amount that is more likely than not to be realized. The DTA remains at $500,000 as a gross asset, and a $200,000 valuation allowance (contra-asset) reduces the net DTA to $300,000 on the balance sheet.
Wrong (A): Writing off the entire DTA is inappropriate because $300,000 is expected to be realized. The valuation allowance mechanism preserves the gross DTA while reducing the net amount to the realizable portion.
Wrong (C): Directly reducing the DTA to $300,000 without a valuation allowance violates ASC 740's presentation requirements. The allowance is maintained as a separate contra account so that changes in realizability can be transparently tracked.
Wrong (D): Disclosure alone is insufficient. ASC 740 requires a balance sheet adjustment through the valuation allowance when it is more likely than not that some portion of the DTA will not be realized.$EXPL$,
  difficulty = 'easy'
WHERE id = 449;

-- Q460 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 33, paragraph 13, property taxes are classified as imposed nonexchange revenues. The government imposes the assessment on property owners without providing a direct exchange of equal value. Revenue is recognized in the period for which the taxes are levied, net of estimated uncollectible amounts.
Wrong (A): Derived tax revenues include income taxes and sales taxes, which are derived from underlying exchange transactions (earning income, making purchases). Property taxes are not derived from an exchange.
Wrong (B): Voluntary nonexchange transactions include grants and private donations where the provider voluntarily transfers resources. Property taxes are not voluntary — they are imposed by governmental authority.
Wrong (C): Government-mandated nonexchange transactions involve one level of government requiring another to perform a function, often with accompanying funding. Property taxes are imposed directly on citizens, not mandated between governments.$EXPL$,
  difficulty = 'medium'
WHERE id = 460;

-- Q463 [hard] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under GASB Statement No. 34, paragraphs 23-25, the modified approach for infrastructure assets allows a government to forgo depreciation if it (1) maintains assets at or above a condition level it establishes and discloses, (2) performs condition assessments at least every three years, and (3) expenses maintenance and preservation costs in the period incurred. Additions and improvements are still capitalized.
Wrong (A): Straight-line depreciation is the default method when the modified approach is not elected. The modified approach's key feature is the absence of depreciation, replaced by condition-based reporting.
Wrong (C): Capitalizing all repair and maintenance costs would overstate asset values. Under the modified approach, maintenance and preservation costs are expensed as incurred; only additions and improvements are capitalized.
Wrong (D): Reporting infrastructure assets at fair value each year is not required under any GASB approach. The modified approach requires condition assessments, not fair value remeasurement.$EXPL$,
  difficulty = 'hard'
WHERE id = 463;

-- Q465 [medium] topic: Governmental Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under GASB Statement No. 34, paragraph 38, the government-wide statement of activities presents expenses by function or program (e.g., public safety, education, highways, health and welfare). Program revenues are displayed alongside each function, revealing the net cost of each government service to taxpayers.
Wrong (A): Object classification (salaries, supplies, utilities) is used in detailed budgetary schedules and fund-level reporting, not in the government-wide statement of activities. Functional presentation provides more decision-useful information at the entity-wide level.
Wrong (B): Natural classification without a functional breakdown would not reveal the cost of individual programs. GASB 34 requires functional presentation to enable comparison of program costs and revenues.
Wrong (C): Fund-based presentation (general fund, special revenue, etc.) is used in governmental fund financial statements, not in the government-wide statements. The government-wide statements consolidate all governmental activities regardless of fund structure.$EXPL$,
  difficulty = 'medium'
WHERE id = 465;

-- Q467 [medium] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASU 2018-08 (ASC 958-605-25-5A), a conditional contribution has two characteristics: (1) a barrier — a measurable performance-related or other condition that must be overcome (such as a matching requirement), and (2) a right of return or release from obligation if the barrier is not met. Revenue is not recognized until the condition is substantially met.
Wrong (B): A restriction on how funds are used (e.g., "for scholarships only") is a donor restriction under ASC 958-605, not a condition. Restricted contributions are recognized as revenue when received or pledged, classified as net assets with donor restrictions.
Wrong (C): A donor's expressed preference is even less binding than a restriction. Preferences do not create barriers or rights of return and do not affect revenue recognition timing.
Wrong (D): A reporting requirement is an administrative obligation, not a substantive barrier. The donor retains no right of return simply because a report is not filed, so this does not make the contribution conditional.$EXPL$,
  difficulty = 'medium'
WHERE id = 467;

-- Q472 [hard] topic: Not-for-Profit Accounting
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under UPMIFA and ASC 958-205-45-4, when an endowment is underwater (fair value falls below the original gift amount), the deficiency reduces net assets with donor restrictions. The original gift remains donor-restricted, and the NFP reports the decline within the donor-restricted class rather than reclassifying or writing off the amount.
Wrong (A): There is no requirement to immediately restore the endowment from unrestricted funds. The underwater status is reported within net assets with donor restrictions, and the board may choose to limit spending but is not required to transfer funds.
Wrong (C): The decline in endowment value is not written off as a loss in net income. The deficiency is reported within net assets with donor restrictions because the donor's original restriction remains in effect.
Wrong (D): Reclassifying the entire endowment to net assets without donor restrictions would violate the donor's original restriction. The donor restriction persists regardless of whether the endowment is underwater.$EXPL$,
  difficulty = 'hard'
WHERE id = 472;

-- Q476 [medium] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 810-10-25-38A, the primary beneficiary of a VIE must satisfy two conditions simultaneously: (1) power to direct the activities that most significantly impact the VIE's economic performance, and (2) the obligation to absorb losses or the right to receive benefits that could potentially be significant to the VIE.
Wrong (A): The largest equity investment does not automatically confer primary beneficiary status. A party with minimal equity but contractual control rights could be the primary beneficiary if it meets both the power and economic criteria.
Wrong (B): The longest business relationship is not a factor in the VIE analysis. Primary beneficiary determination focuses on power over significant activities and exposure to economic risks, not the duration of the relationship.
Wrong (C): A contractual right to receive all profits, without the power to direct significant activities, does not satisfy the dual-condition test. Both power and economic exposure must be present simultaneously.$EXPL$,
  difficulty = 'medium'
WHERE id = 476;

-- Q477 [hard] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 805-10-25-10, in a step acquisition, the previously held equity interest is remeasured to its acquisition-date fair value. Any difference between the fair value and the previous carrying amount (equity method basis) is recognized as a gain or loss in net income. Total consideration is then measured as the sum of the fair value of the additional interest plus the remeasured previously held interest.
Wrong (A): Continuing to carry the investment at its equity method basis would understate the acquisition-date consideration. ASC 805 requires remeasurement to fair value to properly measure goodwill or a bargain purchase gain.
Wrong (B): Reclassifying to available-for-sale securities is not appropriate when control is obtained. The investment becomes a consolidated subsidiary, not a financial instrument classified under ASC 320.
Wrong (C): Writing the previously held interest to zero and absorbing the difference into goodwill has no basis in ASC 805. The standard requires fair value remeasurement with gain or loss recognition, not elimination.$EXPL$,
  difficulty = 'hard'
WHERE id = 477;

-- Q478 [hard] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 323-10-35-13, when an equity method investor pays more than its share of the investee's book value, the excess is allocated to identifiable assets based on fair value differences (such as undervalued PP&E or intangibles), with amortization as those assets are consumed. Any remaining excess is treated as equity method goodwill, which is not separately amortized but is evaluated for impairment as part of the overall investment.
Wrong (A): Recording the entire excess as unamortized goodwill ignores identifiable fair value differences that should be separately allocated and systematically amortized as the underlying assets are depreciated or consumed.
Wrong (C): The excess is not expensed immediately as acquisition costs. It represents a basis difference in net assets that is systematically recognized over the useful lives of the identifiable assets to which it is allocated.
Wrong (D): While allocation to identifiable assets is part of the process, the excess is first analyzed for specific asset attributions before any remainder is assigned to goodwill. This choice omits the ongoing amortization of the identifiable portions.$EXPL$,
  difficulty = 'hard'
WHERE id = 478;

-- Q481 [medium] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 805-30-25-2, when the fair value of identifiable net assets exceeds the total consideration paid, a bargain purchase occurs. The acquirer must first reassess whether all acquired assets and assumed liabilities have been properly identified and measured. If the excess persists after reassessment, the acquirer recognizes a gain in net income on the acquisition date.
Wrong (A): Negative goodwill amortization was eliminated under ASC 805. The current standard requires immediate gain recognition after reassessment, not long-term amortization of an excess.
Wrong (C): Proportional reduction of noncurrent asset values was the treatment under the predecessor standard (APB 16). ASC 805 replaced this approach with bargain purchase gain recognition.
Wrong (D): The excess is not credited to additional paid-in capital. It is recognized as a gain in net income because it represents an economic benefit to the acquirer from purchasing net assets below their fair value.$EXPL$,
  difficulty = 'medium'
WHERE id = 481;

-- Q483 [hard] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 810-10-15-14, an entity is not a VIE if its equity investors have sufficient at-risk equity to finance activities without additional subordinated support, possess voting rights proportional to their economic interests, and substantially all activities are conducted on behalf of those equity holders. These characteristics indicate a traditional voting interest entity.
Wrong (B): Subordinated financial support from a related party sponsor is an indicator that the entity may be a VIE under ASC 810-10-15-14(a), because it suggests the equity is insufficient to absorb expected losses without external support.
Wrong (C): At-risk equity that is insufficient to finance the entity's activities without additional support is a defining characteristic of a VIE under ASC 810-10-15-14(a), not evidence that it is not a VIE.
Wrong (D): Designing an entity so that non-equity interests absorb expected losses is a hallmark of a VIE structure under ASC 810-10-15-14(b). This disproportionate risk allocation is exactly what the VIE model is designed to capture.$EXPL$,
  difficulty = 'hard'
WHERE id = 483;

-- Q486 [medium] topic: Consolidations
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 805-30-25-2, when the fair value of identifiable net assets ($10,800,000) exceeds the consideration paid ($10,000,000), and the acquirer has reassessed and confirmed proper identification and measurement of all assets and liabilities, the $800,000 excess is recognized as a bargain purchase gain in net income on the acquisition date.
Wrong (A): Goodwill arises when consideration exceeds the fair value of net assets, not the reverse. Here the net assets exceed consideration by $800,000, producing a bargain purchase, not goodwill.
Wrong (B): Reducing long-lived asset values to eliminate the excess was required under the predecessor standard (APB 16) but is no longer applicable under ASC 805. The current standard requires gain recognition.
Wrong (C): Negative goodwill amortization over a useful life is not permitted under ASC 805. The excess is recognized as an immediate gain in net income after the acquirer's reassessment confirms the measurement.$EXPL$,
  difficulty = 'medium'
WHERE id = 486;

-- Q1099 [easy] topic: Cash and Receivables
-- Issues: no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 305-10-05-1, cash includes amounts on deposit with financial institutions. A bank reconciliation identifies and explains differences between the ending cash balance per the bank statement and the ending cash balance per the company's books, adjusting both to the correct (true) cash balance. Common reconciling items include outstanding checks, deposits in transit, bank charges, and errors.
Wrong (A): Determining interest earned is only one small reconciling item that may arise during the process. The primary purpose is to reconcile the two cash balances, not to calculate interest.
Wrong (C): Verifying that all checks have been cashed is a byproduct of identifying outstanding checks, not the primary purpose of the reconciliation. Many checks may legitimately remain outstanding.
Wrong (D): Calculating total deposits is not the goal. The reconciliation focuses on explaining the difference between two independently maintained records of the same cash balance.$EXPL$,
  difficulty = 'easy'
WHERE id = 1099;

-- Q1102 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 210-10-45-4 and SEC Staff Accounting Bulletin guidance, a legally restricted compensating balance related to a long-term borrowing arrangement is classified as a noncurrent asset. The restriction matches the term of the underlying debt, so the cash is not available for current operations and should not be presented as a current asset.
Wrong (A): Legally restricted cash does not meet the definition of cash and cash equivalents under ASC 230-10-45-4, which requires that amounts be readily available for use. The legal restriction prevents withdrawal during the loan term.
Wrong (B): Classification as a current asset is inappropriate because the restriction extends beyond one year (5-year loan). Current assets are expected to be realized or consumed within the operating cycle or one year.
Wrong (D): A compensating balance is an asset of the depositor, not a reduction of the related liability. The bank holds the funds in the company's account, and the balance represents a restricted asset, not an offset to debt.$EXPL$,
  difficulty = 'medium'
WHERE id = 1102;

-- Q1108 [easy] topic: Employee Benefit Plans
-- Issues: no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Ridgemont Manufacturing sponsors a 401(k) defined contribution plan, while its subsidiary sponsors a defined benefit pension plan. During a year when the stock market declines 20%, the DC plan's employer expense is unchanged while the DB plan records a significant actuarial loss. How does the risk allocation differ between the two plan types?$EXPL$,
  choices = $EXPL$["Both plan types expose the employer to identical investment risk with only presentational differences","The DC plan shifts investment risk to employees while the DB plan retains it with the employer, increasing the underfunded liability","The DC plan creates greater employer risk because matching contributions rise when employees increase deferrals","The DB plan is less risky because the pension trust absorbs all investment losses with no employer impact"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 715-70-25-1, a defined contribution plan limits the employer's obligation to the specified contribution amount. Once the match is deposited, investment risk transfers to the employee. Under ASC 715-30-35-26, a defined benefit plan retains investment risk with the employer — when plan assets decline, the funded status deteriorates because the projected benefit obligation (PBO) is unchanged, and actuarial losses are recognized in OCI.
Wrong (A): The risk allocation differs fundamentally between the two plan types. DC plans cap employer exposure at the contribution amount, while DB plans expose the employer to investment performance, longevity, and interest rate risks.
Wrong (C): Matching contributions in a DC plan are based on salary percentages and employee deferral rates, not market performance. A market decline does not increase the employer's matching obligation.
Wrong (D): Investment losses in a DB plan directly affect the employer's funded status and balance sheet. The pension trust does not shield the employer — asset declines increase the net pension liability reported under ASC 715.$EXPL$,
  difficulty = 'easy'
WHERE id = 1108;

-- Q1111 [medium] topic: Employee Benefit Plans
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 715-30-35-10, prior service cost from a plan amendment is initially recognized in other comprehensive income and then amortized from accumulated OCI into pension expense over the average remaining service period of employees expected to receive benefits under the plan.
Wrong (A): Immediate full recognition in pension expense would overstate current-period costs. ASC 715 requires systematic amortization over the remaining service period to match the cost with the periods benefited by the employees' future service.
Wrong (C): A direct charge to retained earnings bypasses both the income statement and OCI. ASC 715 requires recognition through OCI with subsequent amortization to pension expense, not a direct equity adjustment.
Wrong (D): Deferring recognition until benefits are paid would understate the pension obligation and related expense during the amortization period. The plan amendment creates an immediate obligation that must be recognized.$EXPL$,
  difficulty = 'medium'
WHERE id = 1111;

-- Q1112 [medium] topic: Employee Benefit Plans
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 715-30-20, the projected benefit obligation (PBO) is the only measure that incorporates projected future salary increases when estimating the present value of future pension benefits. The PBO is used for pension expense calculations and balance sheet reporting of the funded status.
Wrong (A): The vested benefit obligation (VBO) includes only benefits that have vested using current salary levels. It does not project future salary increases and represents the minimum obligation if all employees terminated immediately.
Wrong (B): The accumulated benefit obligation (ABO) uses current salary levels to measure the obligation for all years of credited service. It differs from the PBO precisely because it excludes projected salary growth.
Wrong (D): Only the PBO incorporates projected salary increases. The ABO explicitly excludes them, which is the defining distinction between the two measures under ASC 715.$EXPL$,
  difficulty = 'medium'
WHERE id = 1112;

-- Q1115 [hard] topic: Employee Benefit Plans
-- Issues: no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$A company settles its pension obligation by purchasing annuity contracts. The PBO is $4,000,000, plan assets are $3,700,000, and the annuity cost is $3,850,000. What is the settlement result?$EXPL$,
  choices = $EXPL$["A settlement gain of $150,000","A settlement loss of $150,000","A settlement loss of $300,000","No gain or loss on settlement"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (A): Under ASC 715-30-35-80, a pension settlement gain or loss equals the difference between the PBO settled and the cost of settlement. The company eliminates a $4,000,000 obligation for $3,850,000, yielding a $150,000 settlement gain. The plan assets of $3,700,000 determine the additional cash outlay ($150,000) but do not define the settlement gain or loss.
Wrong (B): A $150,000 loss incorrectly confuses the cash shortfall beyond plan assets ($3,850,000 - $3,700,000 = $150,000) with the settlement result. The settlement gain is measured against the PBO, not the plan asset balance.
Wrong (C): A $300,000 loss has no basis in the calculation. Neither the difference between PBO and plan assets ($300,000) nor any other combination produces this result under the settlement accounting framework.
Wrong (D): A gain exists because the settlement cost ($3,850,000) is less than the PBO eliminated ($4,000,000). Whenever the cost of settlement differs from the obligation settled, a gain or loss must be recognized.$EXPL$,
  difficulty = 'hard'
WHERE id = 1115;

-- Q1117 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured, no_citation
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under IRC Section 168 (MACRS), the 5-year recovery class applies a 20% first-year rate, producing $96,000 depreciation on $480,000. Under GAAP straight-line over 8 years (ASC 360-10-35-4), depreciation is $60,000. The $36,000 difference results in lower tax-basis income and a lower carrying value, illustrating how framework choice directly affects reported profitability and asset values.
Wrong (B): This reverses the direction of the difference. MACRS accelerates depreciation in early years, producing higher expense and lower income than GAAP straight-line — not higher income.
Wrong (C): The two frameworks do not produce identical Year 1 expense. MACRS 5-year at 20% yields $96,000, while GAAP 8-year straight-line yields $60,000, a material $36,000 difference.
Wrong (D): Section 179 full expensing is elective and subject to annual limits. The question specifies MACRS at a 20% rate, which is the standard first-year percentage for 5-year property, not full Section 179 expensing.$EXPL$,
  difficulty = 'medium'
WHERE id = 1117;

-- Q1120 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under IRC Section 197, goodwill acquired in a business acquisition is classified as a Section 197 intangible and amortized ratably over 15 years for tax purposes. This contrasts with GAAP treatment under ASC 350-20-35, where goodwill is not amortized but is tested for impairment annually.
Wrong (A): Annual impairment testing without amortization is the GAAP treatment under ASC 350, not the tax-basis treatment. Tax law requires systematic 15-year amortization rather than impairment testing.
Wrong (C): Immediate expensing upon acquisition is not permitted for goodwill under Section 197. The 15-year amortization period is mandatory, and Section 179 expensing does not apply to goodwill.
Wrong (D): A 40-year amortization period was used under the predecessor standard (APB 17) for GAAP purposes and has no application under current tax law. Section 197 specifies 15 years.$EXPL$,
  difficulty = 'medium'
WHERE id = 1120;

-- Q1121 [medium] topic: Special Purpose Frameworks
-- Issues: unstructured, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under AR-C Section 80.21, a compilation report on financial statements prepared using a special purpose framework must identify the applicable SPF (e.g., income tax basis) and reference the note in the financial statements that describes the basis of accounting used. This ensures users understand the statements are not prepared under GAAP.
Wrong (B): A compilation provides no assurance and no opinion. An opinion on GAAP conformity would be issued in an audit engagement under AU-C 700, not in a compilation under AR-C 80.
Wrong (C): A disclaimer stating the statements may be misleading is not required in a standard compilation report. SPF financial statements are a legitimate alternative framework, not inherently misleading.
Wrong (D): A compilation engagement addresses the financial statements, not the tax return. The CPA does not examine or express any conclusion about the underlying tax return in a compilation report.$EXPL$,
  difficulty = 'medium'
WHERE id = 1121;
