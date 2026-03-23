-- FAR cleanup batch 6 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q1918 [medium] topic: Earnings Per Share
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 260-10-45-16, diluted EPS is computed using the treasury stock method for stock options. Proceeds = 20,000 × $30 = $600,000. Shares repurchased at market = $600,000 / $40 = 15,000. Incremental dilutive shares = 20,000 − 15,000 = 5,000. Diluted EPS = $500,000 / (100,000 + 5,000) = $4.76.
Wrong (B): $5.00 is basic EPS ($500,000 / 100,000) and ignores the dilutive effect of the stock options entirely.
Wrong (C): $4.55 incorrectly adds all 20,000 option shares to the denominator without applying the treasury stock method buyback offset.
Wrong (D): $4.35 overstates the incremental share count, likely by failing to calculate the repurchase correctly under the treasury stock method.$19$,
  difficulty = 'medium'
WHERE id = 1918;

-- Q1919 [medium] topic: Earnings Per Share
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 260-10-55-12, stock splits are applied retroactively to all periods presented. The 3-for-1 split adjusts the 60,000 shares to 180,000 for the full year. The July 1 issuance of 15,000 shares is time-weighted: 15,000 × 6/12 = 7,500. Total weighted-average shares = 180,000 + 7,500 = 187,500.
Wrong (A): 180,000 accounts for the stock split but omits the July 1 issuance entirely.
Wrong (B): 172,500 likely time-weights the split incorrectly; stock splits are retroactive and not time-weighted.
Wrong (C): 195,000 adds the full 15,000 shares without time-weighting the mid-year issuance.$19$,
  difficulty = 'medium'
WHERE id = 1919;

-- Q1922 [medium] topic: Earnings Per Share
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 260-10-45-40, a potentially dilutive security is included in diluted EPS only if its per-share effect is less than basic EPS. The per-share effect of the convertible preferred = $30,000 / 6,000 = $5.00, which is below basic EPS of $6.00. Because conversion would reduce EPS, the preferred stock is dilutive and must be included.
Wrong (B): Convertible preferred stock is not always antidilutive; dilutiveness depends on comparing the per-share effect to basic EPS.
Wrong (C): The timing of issuance does not determine whether a convertible security is dilutive; the per-share impact test governs inclusion.
Wrong (D): The $4.00 threshold is fabricated; the correct comparison is the per-share effect ($5.00) against basic EPS ($6.00).$19$,
  difficulty = 'medium'
WHERE id = 1922;

-- Q1924 [easy] topic: Revenue Recognition
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$Under ASC 606, how is a performance obligation defined?$19$,
  choices = $19$["A promise to transfer any item listed in the contract","A promise to transfer only tangible goods to the customer","A promise to transfer a distinct good or service, or a similar series","A promise to transfer the entire contract bundle as a single unit"]$19$::jsonb,
  explanation = $19$Correct (C): Under ASC 606-10-25-14, a performance obligation is a promise to transfer a distinct good or service—or a series of distinct goods or services that are substantially the same and share the same pattern of transfer—to the customer. Distinctness, not mere contractual listing, determines the unit of account.
Wrong (A): Not every item in a contract is a separate performance obligation; only promises to transfer distinct goods or services qualify.
Wrong (B): Performance obligations include both goods and services, not just tangible goods.
Wrong (D): The entire bundle is treated as a single obligation only when the goods or services are not distinct from each other.$19$,
  difficulty = 'easy'
WHERE id = 1924;

-- Q1928 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 606-10-55-17, the cost-to-cost input method measures progress as costs incurred divided by total estimated costs. Percentage complete = $600,000 / $1,500,000 = 40%. Revenue recognized = 40% × $2,000,000 = $800,000. This method is appropriate when costs incurred correlate with the entity''s progress toward satisfying the obligation.
Wrong (A): $600,000 equals costs incurred, not revenue; revenue is based on the percentage of completion applied to the contract price.
Wrong (B): $1,200,000 (60%) reverses the completion fraction, applying the remaining percentage instead of the completed percentage.
Wrong (C): $2,000,000 would recognize the full contract price, which is only appropriate when the obligation is fully satisfied.$19$,
  difficulty = 'medium'
WHERE id = 1928;

-- Q1931 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 606-10-32-8, the most likely amount method estimates variable consideration by selecting the single most likely outcome. This is appropriate when only two possible outcomes exist (e.g., a performance bonus is either earned or not). The binary nature makes the most likely outcome a better predictor than a probability-weighted calculation.
Wrong (A): The expected value method computes a probability-weighted sum and is better suited when there is a broad range of possible outcomes, not just two.
Wrong (B): The adjusted market assessment approach estimates standalone selling prices, not variable consideration amounts.
Wrong (C): The residual approach under ASC 606-10-32-34 is used to estimate standalone selling prices when they are highly variable, not to estimate variable consideration.$19$,
  difficulty = 'medium'
WHERE id = 1931;

-- Q1932 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 606-10-32-29, the transaction price is allocated to each performance obligation based on relative standalone selling prices. Total standalone selling prices = $95,000 + $10,000 = $105,000. Equipment allocation = ($95,000 / $105,000) × $100,000 = $90,476. The service-type warranty is a separate performance obligation recognized over the 2-year warranty period.
Wrong (A): $100,000 ignores the warranty as a separate performance obligation and allocates the entire price to equipment.
Wrong (B): $95,000 uses the standalone selling price of equipment directly rather than applying the relative allocation method to the total transaction price.
Wrong (D): $85,000 does not correspond to any valid allocation method under ASC 606.$19$,
  difficulty = 'medium'
WHERE id = 1932;

-- Q1936 [easy] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 606-10-25-27, when an entity satisfies a performance obligation over time with equal monthly benefit, revenue is recognized ratably. Monthly revenue = $1,200 / 12 = $100. From October 1 through December 31 = 3 months, so $100 × 3 = $300 is recognized. The remaining $900 is reported as a contract liability (deferred revenue).
Wrong (A): $1,200 would recognize the entire annual amount at inception, ignoring that the obligation is satisfied over time.
Wrong (B): $400 incorrectly calculates 4 months of revenue instead of the 3 months actually elapsed.
Wrong (C): $900 represents the unearned portion (contract liability), not the revenue recognized for the period.$19$,
  difficulty = 'easy'
WHERE id = 1936;

-- Q1937 [easy] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 606-10-55-36 through 55-40, an entity acting as an agent does not control the good or service before transfer to the customer and therefore recognizes revenue at the net amount—the fee or commission earned. Only a principal, who controls the good or service before transfer, recognizes revenue at the gross amount.
Wrong (A): Gross revenue recognition is reserved for principals who control the goods or services; agents report only their fee.
Wrong (B): The standalone selling price is used for allocation purposes, not to determine whether revenue is gross or net.
Wrong (C): Deducting estimated returns from gross revenue is a separate concept from the principal-versus-agent determination.$19$,
  difficulty = 'easy'
WHERE id = 1937;

-- Q1942 [hard] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 606-10-45-3, a contract asset exists when the entity''s recognized revenue exceeds amounts billed. Total estimated costs = $900,000 + $1,500,000 = $2,400,000. Percent complete = $900,000 / $2,400,000 = 37.5%. Revenue to date = 37.5% × $3,000,000 = $1,125,000. Contract asset = $1,125,000 − $1,000,000 billings = $125,000.
Wrong (B): A contract liability arises when billings exceed recognized revenue; here revenue ($1,125,000) exceeds billings ($1,000,000), creating an asset, not a liability.
Wrong (C): $1,000,000 equals the billings amount and does not reflect the net position between revenue recognized and billings.
Wrong (D): $100,000 does not result from any valid calculation of the contract asset or liability under the cost-to-cost method.$19$,
  difficulty = 'hard'
WHERE id = 1942;

-- Q1943 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$Under ASC 606, how should an entity account for incremental costs of obtaining a contract, such as sales commissions?$19$,
  choices = $19$["Expense them immediately regardless of recoverability","Capitalize and amortize them if the period exceeds one year","Include them in the contract transaction price","Net them against recognized revenue as a contra amount"]$19$::jsonb,
  explanation = $19$Correct (B): Under ASC 340-40-25-1, incremental costs of obtaining a contract are capitalized as an asset if the entity expects to recover them. They are amortized on a systematic basis consistent with the pattern of transfer. ASC 340-40-25-4 provides a practical expedient to expense these costs when the amortization period is one year or less.
Wrong (A): Immediate expensing is only permitted under the practical expedient when the amortization period is one year or less, not in all cases.
Wrong (C): Contract acquisition costs are not added to the transaction price; they are accounted for separately from the revenue allocated to performance obligations.
Wrong (D): These costs are not netted against revenue; they are recognized as a separate asset and amortized as an expense.$19$,
  difficulty = 'medium'
WHERE id = 1943;

-- Q1945 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 606-10-32-15, a significant financing component exists when the timing of payments provides the customer or the entity with a significant benefit of financing the transfer of goods or services. The entity adjusts the transaction price for the time value of money. ASC 606-10-32-18 provides a practical expedient to ignore the financing component when the transfer-to-payment period is one year or less.
Wrong (B): A 30-day payment term is typically too short to create a significant financing component; this falls within normal trade credit terms.
Wrong (C): Volume discounts are a form of variable consideration, not a financing component.
Wrong (D): Advance payments made for reasons other than financing (such as customer convenience or protection from breach) do not indicate a significant financing component.$19$,
  difficulty = 'medium'
WHERE id = 1945;

-- Q1946 [hard] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 606-10-32-16, when a significant financing component exists, the transaction price is adjusted using the entity''s incremental borrowing rate. Present value = $200,000 / (1.06)³ = $200,000 / 1.191016 = $167,924. The $32,076 difference is recognized as interest income over the 3-year payment period.
Wrong (A): $200,000 is the nominal payment amount; it does not reflect the time value of money adjustment required when a significant financing component exists.
Wrong (B): $176,000 appears to use a simple interest deduction rather than proper present value discounting.
Wrong (C): $188,000 may result from discounting for only one year or using an incorrect rate; the full 3-year compound discount must be applied.$19$,
  difficulty = 'hard'
WHERE id = 1946;

-- Q1947 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 606-10-55-54, a right-to-use license (functional intellectual property) provides the customer with a right to use the entity''s IP as it exists at the point the license is granted. Revenue is recognized at the point in time when control of the license transfers to the customer.
Wrong (A): Over-time recognition applies to right-to-access licenses (symbolic IP), where the entity''s ongoing activities significantly affect the IP, not to functional IP licenses.
Wrong (C): Revenue recognition occurs when control transfers, not necessarily when the customer first uses the software; control transfer and first use are distinct events.
Wrong (D): Contract signing does not satisfy the performance obligation; the entity must transfer control of the license to trigger revenue recognition.$19$,
  difficulty = 'medium'
WHERE id = 1947;

-- Q1948 [easy] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 606-10-55-58, a license that provides access to the entity''s IP throughout the license period is a right-to-access license (symbolic IP). The entity''s ongoing activities—such as continuously updating the music library—significantly affect the utility of the IP. Revenue is recognized over time under ASC 606-10-25-27.
Wrong (A): A right-to-use license applies to functional IP (e.g., standalone software), where the customer benefits from the IP as it exists at the grant date, not from ongoing updates.
Wrong (B): A streaming subscription is a licensing arrangement for IP access, not a financing arrangement between the parties.
Wrong (C): Granting access to a constantly updated library is a license arrangement, not an outright sale of intellectual property.$19$,
  difficulty = 'easy'
WHERE id = 1948;

-- Q1951 [hard] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 606-10-55-42, customer loyalty points that provide a material right are treated as a separate performance obligation. The transaction price is allocated using relative standalone selling prices per ASC 606-10-32-29. Goods = ($500 / $540) × $500 = $462.96. Points = ($40 / $540) × $500 = $37.04. Revenue for the points is deferred until redeemed or expired.
Wrong (A): $500.00 allocates the entire transaction price to the goods and ignores the material right created by the loyalty points.
Wrong (C): $480.00 does not correspond to a valid relative standalone selling price allocation.
Wrong (D): $450.00 overstates the amount allocated to points and does not result from the correct proportional calculation.$19$,
  difficulty = 'hard'
WHERE id = 1951;

-- Q1952 [easy] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 606-10-45-2, when consideration received exceeds revenue recognized, the excess is reported as a contract liability. Revenue of $35,000 is recognized for obligations satisfied. The $15,000 excess billing ($50,000 − $35,000) is a contract liability representing the entity''s obligation to transfer additional goods or services.
Wrong (A): Recognizing $50,000 would overstate revenue because only $35,000 of performance obligations have been satisfied.
Wrong (B): Reporting the entire $50,000 as deferred revenue ignores the $35,000 already earned through performance.
Wrong (C): The $15,000 is a contract liability, not an accounts receivable; the customer has already been billed and owes the $50,000, but the entity has an obligation to perform.$19$,
  difficulty = 'easy'
WHERE id = 1952;

-- Q1953 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 606-10-32-29, the transaction price is allocated based on relative standalone selling prices. Total standalone prices = $8,000 + $2,000 = $10,000. Product allocation = ($8,000 / $10,000) × $9,000 = $7,200. Installation allocation = ($2,000 / $10,000) × $9,000 = $1,800. Revenue of $7,200 is recognized when the product is delivered.
Wrong (A): $9,000 treats the bundle as a single performance obligation, ignoring that the installation is a distinct service requiring separate allocation.
Wrong (B): $8,000 uses the standalone selling price directly instead of applying the proportional allocation to the discounted bundle price.
Wrong (D): $7,000 does not result from the relative standalone selling price allocation method.$19$,
  difficulty = 'medium'
WHERE id = 1953;

-- Q1954 [medium] topic: Revenue Recognition
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$Under ASC 606, when are costs to fulfill a contract that fall outside the scope of other standards capitalized as an asset?$19$,
  choices = $19$["When the total costs exceed a materiality threshold","When they relate directly to a contract, enhance resources, and are recoverable","When they are incurred before the contract is signed","When they relate to general and administrative activities"]$19$::jsonb,
  explanation = $19$Correct (B): Under ASC 340-40-25-5, costs to fulfill a contract are capitalized when they meet three criteria: (1) they relate directly to an existing or specifically anticipated contract, (2) they generate or enhance resources that will be used to satisfy performance obligations, and (3) they are expected to be recovered. All three conditions must be met for capitalization.
Wrong (A): There is no materiality dollar threshold for capitalizing fulfillment costs; the three-criteria test governs, not a fixed amount.
Wrong (C): Costs incurred before contract inception are typically pre-contract costs and do not meet the criterion of relating directly to an existing contract.
Wrong (D): General and administrative costs are always expensed as incurred under ASC 340-40-25-8 because they do not relate directly to a specific contract.$19$,
  difficulty = 'medium'
WHERE id = 1954;

-- Q1956 [easy] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 606-10-25-27, when a performance obligation is satisfied over time with a consistent pattern of transfer, revenue is recognized ratably. Monthly revenue = $60,000 / 24 months = $2,500. Six months elapsed (July through December) = $2,500 × 6 = $15,000 revenue recognized. Contract liability = $60,000 − $15,000 = $45,000 unearned.
Wrong (B): $30,000 revenue and $30,000 liability would reflect 12 months of service, but only 6 months have elapsed since the July 1 start date.
Wrong (C): Recognizing the full $60,000 at inception would violate the over-time recognition requirement for this ratable service contract.
Wrong (D): Reporting $0 revenue and $60,000 liability ignores the 6 months of service already provided by December 31.$19$,
  difficulty = 'easy'
WHERE id = 1956;

-- Q1957 [hard] topic: Revenue Recognition
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 606-10-55-17, the cost-to-cost method uses cumulative costs to measure progress. Cumulative revenue at 75% complete = 75% × $1,000,000 = $750,000. Revenue in Year 2 = cumulative revenue to date ($750,000) minus cumulative revenue recognized through Year 1 ($400,000) = $350,000. This cumulative catch-up approach per ASC 606-10-25-37 ensures total recognized revenue tracks the percentage of completion.
Wrong (B): $750,000 is the cumulative revenue to date, not the Year 2 increment; prior-period recognition must be subtracted.
Wrong (C): $300,000 does not correspond to any valid calculation under the cumulative catch-up method.
Wrong (D): $250,000 may result from incorrectly subtracting costs incurred instead of prior revenue recognized.$19$,
  difficulty = 'hard'
WHERE id = 1957;

-- Q1958 [easy] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 330-10-30-9 and the FIFO cost flow assumption, the earliest purchased units are assigned to cost of goods sold first. COGS = (100 × $10) + (20 × $12) = $1,000 + $240 = $1,240. The first 100 units at $10 are consumed, then 20 of the 150 units at $12.
Wrong (A): $1,200 would result from costing all 120 units at $10, ignoring that only 100 units were available at that price.
Wrong (B): $1,340 does not correspond to any valid FIFO layer calculation.
Wrong (C): $1,440 represents a LIFO result (120 × $12), not FIFO, because LIFO assigns the most recent costs first.$19$,
  difficulty = 'easy'
WHERE id = 1958;

-- Q1959 [easy] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 330-10-30-9 and the LIFO cost flow assumption, the most recently purchased units are assigned to cost of goods sold first. All 120 units sold come from the most recent layer of 150 units at $12. COGS = 120 × $12 = $1,440. Ending inventory = (100 × $10) + (30 × $12) = $1,360.
Wrong (A): $1,240 is the FIFO result, which assigns the oldest costs first rather than the newest.
Wrong (B): $1,200 incorrectly costs all 120 units at $10, using the oldest layer for all units.
Wrong (C): $1,380 does not correspond to a valid LIFO layer calculation from the given purchase data.$19$,
  difficulty = 'easy'
WHERE id = 1959;

-- Q1960 [easy] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 330-10-30-9 and the weighted-average periodic method, a single average cost per unit is computed. Total cost = (200 × $8) + (300 × $10) = $1,600 + $3,000 = $4,600. Total units = 500. Weighted-average cost = $4,600 / 500 = $9.20. This unit cost is applied to both COGS and ending inventory.
Wrong (A): $9.00 is a simple average of $8 and $10 but does not weight by the number of units purchased at each price.
Wrong (B): $10.00 uses only the most recent purchase price, which is the LIFO approach rather than weighted average.
Wrong (C): $8.80 does not result from a correct weighted-average calculation of the given data.$19$,
  difficulty = 'easy'
WHERE id = 1960;

-- Q1962 [easy] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 330-10-35-1B, inventory is measured at the lower of cost or net realizable value (LCNRV). Since NRV of $42,000 is below cost of $50,000, inventory is written down to $42,000. The $8,000 write-down is recognized as a loss in the current period.
Wrong (A): Carrying inventory at cost of $50,000 violates LCNRV because the net realizable value is lower.
Wrong (B): $8,000 is the amount of the write-down loss, not the carrying value of the inventory.
Wrong (C): $46,000 is not supported by any LCNRV calculation; inventory is carried at the lower of cost ($50,000) or NRV ($42,000).$19$,
  difficulty = 'easy'
WHERE id = 1962;

-- Q1963 [easy] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 330-10-30-1, in a periodic inventory system, cost of goods sold is determined as beginning inventory plus net purchases minus ending inventory. This formula derives COGS from the goods available for sale less the inventory remaining, which is determined by a physical count at period end.
Wrong (B): Sales revenue minus gross profit yields COGS as a mathematical identity, but this is an income statement derivation, not the periodic inventory formula.
Wrong (C): Purchases minus ending inventory omits beginning inventory, understating goods available for sale.
Wrong (D): Beginning inventory plus ending inventory minus purchases inverts the formula and produces a meaningless result.$19$,
  difficulty = 'easy'
WHERE id = 1963;

-- Q1964 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 330-10-30-9, perpetual LIFO assigns the most recent cost available at the time of each individual sale, while periodic LIFO assigns costs based on the most recent purchases for the entire period at year end. Because the layers available differ at each sale date versus year end, the two systems can produce different COGS and ending inventory figures.
Wrong (A): Under LIFO, timing does affect cost assignment because perpetual costing uses layers available at the sale date, which differ from year-end layers.
Wrong (C): Perpetual and periodic LIFO do not always produce the same COGS; they converge only when no purchases occur between sales.
Wrong (D): There is no requirement to adjust perpetual LIFO to match periodic LIFO; they are recognized as distinct acceptable methods.$19$,
  difficulty = 'medium'
WHERE id = 1964;

-- Q1965 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 330-10-30-9 and the FIFO cost flow assumption, the oldest costs are always assigned to COGS regardless of whether cost assignment occurs at each sale (perpetual) or at period end (periodic). Because the sequence of cost layers is identical in both systems, FIFO produces the same COGS and ending inventory under perpetual and periodic methods in all price environments.
Wrong (B): FIFO results are identical under both systems regardless of price trends, not only when prices are rising.
Wrong (C): Falling prices do not create a difference between perpetual and periodic FIFO; the oldest-first cost flow is the same either way.
Wrong (D): FIFO always produces identical results under both systems, making "never" incorrect.$19$,
  difficulty = 'medium'
WHERE id = 1965;

-- Q1966 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 330-10-S99-4 (SEC Staff Accounting Bulletin Topic 11-F), companies using LIFO must disclose the LIFO reserve, defined as FIFO inventory minus LIFO inventory. FIFO inventory = LIFO inventory + LIFO reserve = $200,000 + $45,000 = $245,000.
Wrong (A): $200,000 is the LIFO inventory value; FIFO inventory is higher by the amount of the LIFO reserve.
Wrong (B): $155,000 subtracts the LIFO reserve instead of adding it, reversing the relationship between FIFO and LIFO values.
Wrong (D): $225,000 does not result from the correct LIFO reserve formula.$19$,
  difficulty = 'medium'
WHERE id = 1966;

-- Q1967 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 330-10-S99-4, the change in the LIFO reserve equals the difference between LIFO COGS and FIFO COGS. The LIFO reserve increased from $30,000 to $38,000, a change of $8,000. Because rising prices cause LIFO to assign higher recent costs to COGS, LIFO COGS exceeds FIFO COGS by $8,000.
Wrong (B): $38,000 is the ending LIFO reserve balance, not the period change that measures the COGS difference.
Wrong (C): $30,000 is the beginning LIFO reserve balance, not the incremental difference for the current year.
Wrong (D): $68,000 adds the beginning and ending reserves, which has no analytical meaning in the LIFO reserve framework.$19$,
  difficulty = 'medium'
WHERE id = 1967;

-- Q1968 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 330-10-30-18, the gross profit method estimates inventory by applying a historical gross profit rate. Estimated COGS = $350,000 × (1 − 40%) = $210,000. Goods available for sale = $60,000 + $240,000 = $300,000. Estimated ending inventory = $300,000 − $210,000 = $90,000.
Wrong (B): $120,000 may result from misapplying the gross profit rate to purchases alone rather than deriving COGS from net sales.
Wrong (C): $150,000 could arise from applying the 40% gross profit rate to goods available for sale instead of computing COGS from sales.
Wrong (D): $60,000 equals beginning inventory and does not reflect any estimation calculation.$19$,
  difficulty = 'medium'
WHERE id = 1968;

-- Q1969 [easy] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 330-10-30-18, the gross profit method provides an estimate of inventory and is most commonly used for interim financial reporting when a physical count is impractical and for estimating inventory losses from casualties such as fire, flood, or theft. It provides a reasonable approximation without requiring a physical count.
Wrong (A): Annual financial statements under U.S. GAAP require more precise methods such as FIFO, LIFO, or weighted average with a physical count or perpetual records.
Wrong (B): Auditors may use the gross profit method as a reasonableness test, but it is not the primary method for auditing ending inventory balances.
Wrong (C): Federal income tax filings require actual inventory methods and records, not gross profit estimates.$19$,
  difficulty = 'easy'
WHERE id = 1969;

-- Q1970 [hard] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 330-10-30-21, the retail inventory method converts ending inventory at retail to cost using a cost-to-retail ratio. Average cost ratio = ($40,000 + $160,000) / ($60,000 + $240,000) = $200,000 / $300,000 = 66.67%. Ending inventory at retail = $300,000 − $220,000 = $80,000. Ending inventory at cost = $80,000 × 66.67% = $53,333.
Wrong (B): $80,000 is the ending inventory at retail prices before applying the cost-to-retail conversion ratio.
Wrong (C): $60,000 equals beginning inventory at retail, not the estimated ending inventory at cost.
Wrong (D): $48,000 does not result from the correct cost-to-retail ratio applied to ending inventory at retail.$19$,
  difficulty = 'hard'
WHERE id = 1970;

-- Q1972 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 330-10-35-17, when a noncancelable purchase commitment exists and the contracted price exceeds the current market price, the entity must recognize a loss in the current period. Loss = 5,000 × ($20 − $15) = $25,000. The commitment and the loss must also be disclosed in the notes to the financial statements.
Wrong (A): Ignoring the decline would violate the loss recognition requirement for purchase commitments when market value falls below the committed price.
Wrong (B): A noncancelable commitment cannot simply be cancelled; the entity is contractually bound and must recognize the economic loss.
Wrong (C): The inventory has not been received yet, so it cannot be recorded; the appropriate treatment is to recognize a loss and disclose the commitment.$19$,
  difficulty = 'medium'
WHERE id = 1972;

-- Q1973 [hard] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 330-10-30-13, dollar-value LIFO measures inventory changes in terms of total dollar value rather than individual units. The base-year cost increment = $110,000 − $100,000 = $10,000. This new layer is restated to current-year dollars: $10,000 × 1.08 = $10,800. Dollar-value LIFO ending inventory = base layer ($100,000) + new layer ($10,800) = $110,800.
Wrong (A): $110,000 is the base-year cost of ending inventory and does not reflect the current-year price index adjustment applied to the new LIFO layer.
Wrong (C): $108,000 may result from applying the index to the base layer instead of only the incremental layer.
Wrong (D): $118,800 appears to apply the price index to the entire ending inventory, which would overstate the LIFO value by indexing the base layer.$19$,
  difficulty = 'hard'
WHERE id = 1973;

-- Q1976 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 330-10-50-2, a LIFO liquidation occurs when quantities sold exceed quantities purchased during the period, causing older, lower-cost LIFO layers to be matched against current-period revenues. This dip into old layers artificially inflates gross profit and net income because historical costs are much lower than current replacement costs.
Wrong (A): LIFO adoption refers to a company''s initial election to use the LIFO method, not the erosion of existing LIFO layers.
Wrong (B): A LIFO reserve adjustment reflects the cumulative difference between FIFO and LIFO inventory values, not the liquidation of old cost layers.
Wrong (D): LIFO conformity is the IRS requirement that a company using LIFO for tax must also use it for financial reporting; it is unrelated to layer liquidation.$19$,
  difficulty = 'medium'
WHERE id = 1976;

-- Q1977 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 330-10-30-1, inventoriable costs include all costs of purchase and conversion needed to bring inventory to its present location and condition. Freight-in (inbound transportation) is a direct cost of acquiring inventory. It is added to the cost of purchased goods as part of the landed cost.
Wrong (B): Storage costs for finished goods awaiting sale are period costs expensed as incurred because the goods have already reached their sellable condition.
Wrong (C): Abnormal spoilage represents inefficiency and is expensed as incurred under ASC 330-10-30-8, unlike normal spoilage which is inventoriable.
Wrong (D): Selling and distribution costs are period expenses that occur after production is complete and are not capitalized to inventory.$19$,
  difficulty = 'medium'
WHERE id = 1977;

-- Q1978 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 330-10-35-1B, non-LIFO inventory is measured at the lower of cost or net realizable value. NRV = estimated selling price ($110,000) minus costs to complete and sell ($18,000) = $92,000. Since NRV ($92,000) is below cost ($100,000), inventory is written down to $92,000. Replacement cost is not used under the simplified LCNRV framework for non-LIFO inventory.
Wrong (A): $85,000 is the replacement cost, which is not used in the LCNRV comparison for non-LIFO inventory under the ASU 2015-11 simplification.
Wrong (B): $100,000 (cost) exceeds NRV ($92,000), so carrying at cost would violate the LCNRV requirement.
Wrong (D): $110,000 is the estimated selling price before deducting completion and disposal costs; NRV must net those costs.$19$,
  difficulty = 'medium'
WHERE id = 1978;

-- Q1979 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (B): Under ASC 330-10-35-1B, once inventory is written down under the LCNRV rule, the reduced amount establishes a new cost basis. U.S. GAAP prohibits subsequent reversal of inventory write-downs. Even if NRV later recovers, the lower carrying amount is permanent.
Wrong (A): Reversing the write-down by $10,000 is prohibited under U.S. GAAP; only IFRS (IAS 2.33) permits reversal of inventory write-downs up to original cost.
Wrong (C): This answer describes the IFRS treatment, which allows reversals up to original cost; U.S. GAAP does not permit any reversal.
Wrong (D): No OCI treatment exists for inventory write-down recoveries; inventory adjustments flow through the income statement, and reversals are simply not permitted under U.S. GAAP.$19$,
  difficulty = 'medium'
WHERE id = 1979;

-- Q1980 [hard] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 330-10-30-21, the conventional retail method (lower of average cost or market) excludes net markdowns from the denominator of the cost-to-retail ratio but includes them when computing ending inventory at retail. By excluding markdowns from the ratio, the resulting percentage is lower, which approximates the lower of cost or market valuation. Net markups are included in the ratio calculation.
Wrong (B): Including markdowns in both the numerator and denominator produces the average cost retail method, not the conventional (lower of cost or market) method.
Wrong (C): Markdowns are not entirely excluded from the retail method; they reduce ending inventory at retail but are excluded only from the cost-to-retail ratio calculation.
Wrong (D): Markdowns affect retail amounts, not cost amounts; freight-in is a cost-side addition and markdowns have no cost-side equivalent.$19$,
  difficulty = 'hard'
WHERE id = 1980;

-- Q1981 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 330-10-30-9 and the FIFO assumption, ending inventory consists of the most recently purchased units. Ending inventory = (200 × $15) + (100 × $13) = $3,000 + $1,300 = $4,300. The 200 most recent units at $15 are included first, then 100 of the 400 units at $13 fill the remaining 100 units.
Wrong (A): $3,900 may result from using incorrect layer quantities or prices in the FIFO ending inventory calculation.
Wrong (B): $4,500 would require 300 units at $15, but only 200 units were purchased at that price.
Wrong (C): $3,000 accounts for only the 200 units at $15 and omits the additional 100 units needed to reach 300 total.$19$,
  difficulty = 'medium'
WHERE id = 1981;

-- Q1982 [easy] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 330-10-30-1 and FOB shipping point terms, title and risk of loss transfer to the buyer when the goods are delivered to the carrier at the shipping point. The buyer includes these goods in its ending inventory even though they have not physically arrived, because ownership transferred at shipment.
Wrong (B): Under FOB shipping point, the seller''s responsibility ends at the shipping point; the goods are no longer the seller''s inventory once shipped.
Wrong (C): Goods in transit are always included in one party''s inventory; under FOB shipping point, they belong to the buyer from the moment of shipment.
Wrong (D): Title cannot be split between parties; FOB terms assign ownership entirely to the buyer or seller based on the designated transfer point.$19$,
  difficulty = 'easy'
WHERE id = 1982;

-- Q1983 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 330-10-30-1, consigned goods remain the inventory of the consignor until sold by the consignee to a third party. Title does not transfer when goods are placed at the consignee''s location. The consignor reports the $30,000 as inventory on its balance sheet until an actual sale occurs.
Wrong (A): The consignee does not own the goods and therefore does not include them in its inventory; the consignee holds them as a bailee.
Wrong (B): Delivering goods on consignment is not a sale; revenue is recognized only when the consignee sells the goods to a third-party customer.
Wrong (D): Because no sale has occurred, there is no receivable to record; the goods remain as inventory of the consignor.$19$,
  difficulty = 'medium'
WHERE id = 1983;

-- Q1984 [medium] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 330-10-30-1, inventoriable (product) costs for a manufacturer include raw materials, direct labor, and manufacturing overhead. Total = $80,000 + $60,000 + $40,000 = $180,000. These costs are capitalized to inventory and expensed as COGS when the goods are sold.
Wrong (B): $210,000 incorrectly includes selling expenses ($30,000), which are period costs expensed as incurred, not product costs.
Wrong (C): $140,000 omits manufacturing overhead, which is a required component of inventoriable cost for manufactured goods.
Wrong (D): $200,000 does not correspond to any valid combination of the given cost categories.$19$,
  difficulty = 'medium'
WHERE id = 1984;

-- Q1985 [hard] topic: Inventory
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (D): Under ASC 330-10-30-21, purchase returns at retail reduce the retail value of goods available for sale because returned goods are removed from the pool of goods available. Both the cost and retail amounts of purchase returns are subtracted from goods available for sale in the retail method calculation.
Wrong (A): Freight-in is a cost-only addition and has no retail component; it does not reduce the retail value of goods available.
Wrong (B): Employee discounts are a reduction of sales, not a reduction of the retail value of goods available for sale; they are treated similarly to sales in the retail method.
Wrong (C): Net markups increase the retail value of goods available for sale; they are additions, not reductions.$19$,
  difficulty = 'hard'
WHERE id = 1985;

-- Q1989 [easy] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 360-10-35-4, straight-line depreciation allocates the depreciable base evenly over the useful life. Annual depreciation = (Cost − Salvage) / Useful life = ($200,000 − $20,000) / 5 = $36,000 per year. This method produces equal periodic charges over the asset''s service life.
Wrong (B): $40,000 divides the full cost by 5 years without deducting salvage value, overstating annual depreciation.
Wrong (C): $44,000 does not result from the correct straight-line formula using the given cost, salvage, and useful life.
Wrong (D): $32,000 may result from an arithmetic error or incorrect salvage value assumption.$19$,
  difficulty = 'easy'
WHERE id = 1989;

-- Q1990 [medium] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 360-10-35-4, the double-declining-balance (DDB) method applies twice the straight-line rate to the declining book value. DDB rate = (1/4) × 2 = 50%. Year 1: $100,000 × 50% = $50,000 depreciation, leaving book value of $50,000. Year 2: $50,000 × 50% = $25,000. Under DDB, salvage value is not deducted from the base, but the asset is not depreciated below salvage.
Wrong (B): $12,500 may result from applying a single-declining rate (25%) to the Year 2 book value instead of the double rate.
Wrong (C): $22,500 does not correspond to any valid DDB calculation step with the given data.
Wrong (D): $50,000 is the Year 1 depreciation, not Year 2; the declining book value produces lower depreciation in subsequent years.$19$,
  difficulty = 'medium'
WHERE id = 1990;

-- Q1991 [easy] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (A): Under ASC 360-10-35-4, the sum-of-the-years''-digits (SYD) method is an accelerated depreciation method. SYD = 5 + 4 + 3 + 2 + 1 = 15. Year 1 fraction = 5/15 = 1/3. Depreciation = ($90,000 − $0) × 5/15 = $30,000. The fraction decreases each year, producing front-loaded depreciation.
Wrong (B): $18,000 applies the Year 5 fraction (1/15 × $90,000 = $6,000... no). Actually $18,000 = $90,000 × 3/15, which is the Year 3 fraction, not Year 1.
Wrong (C): $36,000 does not correspond to any valid SYD fraction applied to a $90,000 depreciable base with a 5-year life.
Wrong (D): $27,000 would equal $90,000 × 4.5/15, which is not a valid SYD fraction for any year.$19$,
  difficulty = 'easy'
WHERE id = 1991;

-- Q1993 [medium] topic: Fixed Assets
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $19$Correct (C): Under ASC 360-10-35-47, when a significant component of a long-lived asset is replaced, the old component''s remaining book value ($40,000) is derecognized and written off as a loss on disposal. The new replacement component ($250,000) is capitalized and depreciated over its own estimated useful life.
Wrong (A): Expensing the full $250,000 as a repair is incorrect because a roof replacement extends the asset''s useful life or improves capacity, meeting the capitalization criteria.
Wrong (B): Capitalizing the new roof while continuing to depreciate the old roof would double-count the component, overstating the asset balance.
Wrong (D): Only the incremental cost of $210,000 ignores that the old roof''s book value must be removed; the full $250,000 is capitalized and the $40,000 old value is written off.$19$,
  difficulty = 'medium'
WHERE id = 1993;

-- Q1994 [medium] topic: Fixed Assets
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $19$Equipment has a carrying amount of $500,000. Estimated undiscounted future cash flows are $480,000 and fair value is $420,000. Under ASC 360, what impairment loss, if any, should be recognized?$19$,
  choices = $19$["No impairment loss because fair value exceeds half of carrying amount","An impairment loss of $20,000 based on the cash flow shortfall","An impairment loss of $80,000 based on the fair value deficiency","An impairment loss of $60,000 based on the average of both measures"]$19$::jsonb,
  explanation = $19$Correct (C): Under ASC 360-10-35-17, long-lived asset impairment uses a two-step process. Step 1 (recoverability test): compare carrying amount ($500,000) to undiscounted future cash flows ($480,000). Because $480,000 < $500,000, the asset fails the test. Step 2 (measurement): the impairment loss equals carrying amount minus fair value = $500,000 − $420,000 = $80,000.
Wrong (A): The asset fails the recoverability test because undiscounted cash flows ($480,000) are below the carrying amount ($500,000), so impairment must be recognized.
Wrong (B): The $20,000 difference between carrying amount and undiscounted cash flows is the recoverability test shortfall, not the impairment loss; the loss is measured using fair value.
Wrong (D): Averaging measures is not prescribed by ASC 360; the impairment loss is strictly carrying amount minus fair value.$19$,
  difficulty = 'medium'
WHERE id = 1994;
