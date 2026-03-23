-- FAR cleanup batch 9 (50 questions)
-- Fixes: explanation format, citations, contrast, cognitive_level, choice cuing

-- Q2162 [medium] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 740-10-25-20, permanent differences affect current tax expense but do not create deferred taxes. Taxable income = $800,000 − $50,000 (municipal bond interest, permanently excluded per IRC §103) + $30,000 (nondeductible fines) = $780,000. Current income tax expense = $780,000 × 21% = $163,800.
Wrong (B): $168,000 results from applying 21% to the unadjusted $800,000 pretax income, ignoring both the municipal bond exclusion and the nondeductible fines.
Wrong (C): $151,200 incorrectly subtracts both the municipal bond interest and fines from pretax income, treating fines as deductible when they are not.
Wrong (D): $173,460 incorrectly adds both the municipal bond interest and fines to pretax income before applying the tax rate.$EXPL$,
  difficulty = 'medium'
WHERE id = 2162;

-- Q2163 [medium] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 740-10-25-1, temporary differences between book and tax bases of assets create deferred tax liabilities. The Year 1 temporary difference is $100,000 (MACRS) − $50,000 (straight-line) = $50,000. The deferred tax liability = $50,000 × 21% = $10,500, reflecting future taxable amounts when the excess depreciation reverses.
Wrong (B): $21,000 incorrectly applies the 21% rate to the full $100,000 tax depreciation rather than the $50,000 temporary difference.
Wrong (C): $50,000 is the temporary difference itself, not the deferred tax liability amount.
Wrong (D): $100,000 is the total MACRS depreciation, not the deferred tax effect.$EXPL$,
  difficulty = 'medium'
WHERE id = 2163;

-- Q2165 [medium] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 740-10-30-5, a valuation allowance reduces the DTA to the amount more likely than not to be realized. Net DTA = $210,000 gross DTA − $80,000 valuation allowance = $130,000. The valuation allowance is a contra asset reflecting the portion management does not expect to realize.
Wrong (A): $80,000 is the valuation allowance amount, not the net DTA reported on the balance sheet.
Wrong (C): $210,000 is the gross DTA before the valuation allowance reduction, overstating the expected realizable amount.
Wrong (D): $290,000 incorrectly adds the valuation allowance to the gross DTA rather than subtracting it.$EXPL$,
  difficulty = 'medium'
WHERE id = 2165;

-- Q2167 [easy] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): ASU 2015-17 (codified in ASC 740-10-45-4) simplified balance sheet presentation by requiring all deferred tax assets and liabilities to be classified as noncurrent. The prior requirement to separate current and noncurrent components was eliminated.
Wrong (A): Classifying all deferred taxes as current was never required under U.S. GAAP and contradicts the ASU 2015-17 noncurrent-only requirement.
Wrong (B): Separating current from noncurrent portions was the pre-ASU 2015-17 approach, which has been superseded.
Wrong (C): Classifying based on the related asset or liability was the old method under pre-ASU 2015-17 guidance, no longer applicable.$EXPL$,
  difficulty = 'easy'
WHERE id = 2167;

-- Q2168 [medium] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 740-10-25-20, the $300,000 litigation accrual creates a deductible temporary difference because the expense is recognized for book purposes in Year 1 but deducted for tax in Year 3. This results in a deferred tax asset of $300,000 × 21% = $63,000, representing the future tax benefit when the deduction is taken.
Wrong (A): A deferred tax liability would arise from a taxable temporary difference where the tax basis exceeds the book basis, which is the opposite of this situation.
Wrong (C): Ignoring the deferred tax effect would misstate the relationship between book and taxable income and violate the asset-and-liability approach of ASC 740.
Wrong (D): $300,000 is the pre-tax accrual amount, not the tax-effected deferred tax asset.$EXPL$,
  difficulty = 'medium'
WHERE id = 2168;

-- Q2169 [hard] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 740-10-25-1, total income tax expense includes both current and deferred components. Current tax = $900,000 × 21% = $189,000. The $40,000 depreciation temporary difference creates deferred tax expense of $40,000 × 21% = $8,400. Total = $189,000 + $8,400 = $197,400. The $60,000 municipal bond interest is a permanent difference with no deferred tax effect per ASC 740-10-25-30.
Wrong (A): $189,000 represents only the current tax expense and ignores the $8,400 deferred tax expense from the depreciation timing difference.
Wrong (B): $180,600 incorrectly reduces taxable income by the entire $100,000 difference rather than recognizing the $60,000 permanent and $40,000 temporary components separately.
Wrong (C): $210,000 applies the tax rate to the full $1,000,000 pretax book income without adjusting for either permanent or temporary differences.$EXPL$,
  difficulty = 'hard'
WHERE id = 2169;

-- Q2171 [medium] topic: Income Taxes
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Under ASC 740, intraperiod tax allocation requires income tax expense to be allocated among which components?$EXPL$,
  choices = $EXPL$["Continuing operations only","Continuing operations, discontinued operations, OCI, and equity adjustments","Continuing operations and discontinued operations only","Each individual line item on the income statement"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (B): ASC 740-20-45-2 requires intraperiod tax allocation across continuing operations, discontinued operations, other comprehensive income, and items charged or credited directly to equity (including prior period adjustments). Each component reflects its own tax effect to give users meaningful after-tax information.
Wrong (A): Limiting allocation to continuing operations only would fail to show the tax impact on other income statement and equity components, violating the matching principle of intraperiod allocation.
Wrong (C): Omitting OCI and equity items would understate the scope of intraperiod allocation, which extends beyond the income statement.
Wrong (D): Allocation is not applied to each individual income statement line item but rather to the major components specified in the standard.$EXPL$,
  difficulty = 'medium'
WHERE id = 2171;

-- Q2172 [medium] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 740-20-45-2, intraperiod tax allocation taxes each component on its own pre-tax amount. Continuing operations tax expense = $500,000 × 21% = $105,000. The discontinued operations loss generates a separate tax benefit of $200,000 × 21% = $42,000. Each component carries its own tax effect independently.
Wrong (A): $63,000 is the net tax on total income ($300,000 × 21%), which would improperly combine the components rather than allocating tax to each separately.
Wrong (C): $42,000 is the tax benefit attributable to the discontinued operations loss, not the expense allocated to continuing operations.
Wrong (D): $150,000 does not correspond to any correct computation under the 21% tax rate applied to either component.$EXPL$,
  difficulty = 'medium'
WHERE id = 2172;

-- Q2174 [hard] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 740-10-30-7, uncertain tax positions are measured using a two-step process. Step 1: The position meets the more-likely-than-not threshold (60% > 50%). Step 2: The benefit is the largest amount with greater than 50% cumulative likelihood of realization. At $400,000, cumulative probability is 55%, exceeding 50%. At $500,000, it is only 40%, which fails the threshold.
Wrong (A): $500,000 has only a 40% cumulative probability of being sustained, which does not exceed the 50% cumulative threshold required under ASC 740-10-30-7.
Wrong (B): $200,000 uses the highest-confidence amount rather than the largest amount exceeding the 50% cumulative probability threshold.
Wrong (C): $300,000 has a 70% cumulative probability but is not the largest amount exceeding 50%—$400,000 also exceeds that threshold at 55%.$EXPL$,
  difficulty = 'hard'
WHERE id = 2174;

-- Q2175 [medium] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 740-10-25-20, the allowance method bad debt accrual creates a deductible temporary difference because book expense is recognized before the tax deduction (actual write-offs). Taxable income currently exceeds book income, and the future deduction will reduce taxable income, creating a DTA.
Wrong (A): Accelerated tax depreciation creates a taxable temporary difference (DTL) because the tax deduction exceeds book expense currently, resulting in higher future taxable income.
Wrong (B): Recognizing rent revenue for tax when received while deferring for book creates a taxable temporary difference (DTL), not a DTA.
Wrong (D): Installment method gain deferral for tax creates a taxable temporary difference (DTL) because book income exceeds taxable income currently, with future taxable amounts on collection.$EXPL$,
  difficulty = 'medium'
WHERE id = 2175;

-- Q2176 [hard] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 740-10-30-5, the DTA for an NOL carryforward is measured at the full NOL amount times the enacted rate: $2,000,000 × 21% = $420,000. The 80% annual utilization limitation (IRC §172(a)) affects only the timing of realization, not the total benefit. Since management expects full realization, no valuation allowance is needed per ASC 740-10-30-18.
Wrong (A): $336,000 incorrectly applies the 80% limitation to the DTA calculation ($2,000,000 × 80% × 21%), confusing a per-year utilization cap with the total realizable benefit.
Wrong (C): $168,000 double-applies both the 80% limitation and an erroneous further reduction, significantly understating the DTA.
Wrong (D): $400,000 does not correspond to any correct application of the 21% enacted rate to the NOL carryforward.$EXPL$,
  difficulty = 'hard'
WHERE id = 2176;

-- Q2177 [medium] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 740-10-30-21, brief carryforward periods are negative evidence because they limit the time available to generate sufficient taxable income to realize the DTA. Shorter windows increase the risk that the DTA will expire unused.
Wrong (A): Existing contracts generating future taxable income are positive evidence because they provide a reliable source of future income to realize the DTA.
Wrong (B): A strong history of operating profitability is positive evidence demonstrating the entity's ability to generate taxable income.
Wrong (D): Appreciated asset values exceeding tax basis are positive evidence because the unrealized gains could be realized through asset sales to generate taxable income.$EXPL$,
  difficulty = 'medium'
WHERE id = 2177;

-- Q2178 [medium] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 740-10-25-20, only the $80,000 excess tax depreciation is a temporary difference because it will reverse in future periods. The nondeductible meals expense (50% of $50,000 = $25,000) and the $30,000 municipal bond interest are permanent differences per ASC 740-10-25-30 that never reverse and do not create deferred taxes.
Wrong (A): $160,000 incorrectly treats all three items as temporary differences, summing amounts that include two permanent differences.
Wrong (C): $55,000 appears to combine portions of the permanent differences with the temporary difference, mixing categories inappropriately.
Wrong (D): $110,000 incorrectly includes the $30,000 municipal bond interest as a temporary difference alongside the depreciation.$EXPL$,
  difficulty = 'medium'
WHERE id = 2178;

-- Q2180 [medium] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 740-10-25-47, deferred taxes are measured using the enacted rate expected to apply when the temporary differences reverse. Since the differences reverse when the 28% rate is in effect, the DTL = $600,000 × 28% = $168,000. The adjustment from the old rate is recognized as tax expense in the enactment period per ASC 740-10-35-4.
Wrong (A): $126,000 uses the current 21% rate ($600,000 × 21%), ignoring the enacted rate change applicable to the reversal period.
Wrong (C): $147,000 appears to blend the old and new rates, which is not permitted under ASC 740—the enacted future rate must be used.
Wrong (D): $600,000 is the gross temporary difference, not the tax-effected deferred tax liability.$EXPL$,
  difficulty = 'medium'
WHERE id = 2180;

-- Q2181 [medium] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 740-10-50-12, permanent differences cause the effective rate to differ from the statutory rate. Nondeductible expenses (fines, penalties) increase the effective rate above 21% because they are recognized as book expenses but never reduce taxable income, resulting in higher taxes relative to book income.
Wrong (A): Municipal bond interest would decrease the effective rate below 21% because it is included in book income but excluded from taxable income.
Wrong (B): R&D tax credits directly reduce the tax liability and would lower the effective rate below the statutory rate.
Wrong (C): Excess tax depreciation is a temporary difference that affects the timing of tax payments but does not create a permanent difference between the effective and statutory rates.$EXPL$,
  difficulty = 'medium'
WHERE id = 2181;

-- Q2182 [hard] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 740-10-25-1, total income tax expense reflects both permanent and temporary differences. Taxable income = $1,200,000 + $40,000 (nondeductible premiums, permanent difference) − $100,000 (excess tax depreciation, temporary) = $1,140,000. Current tax = $1,140,000 × 21% = $239,400. Deferred tax expense = $100,000 × 21% = $21,000. Total = $260,400. Alternatively: ($1,200,000 + $40,000) × 21% = $260,400.
Wrong (A): $252,000 applies 21% to the unadjusted $1,200,000, ignoring the permanent difference from nondeductible premiums.
Wrong (B): $243,600 appears to net the permanent and temporary differences incorrectly before applying the tax rate.
Wrong (C): $222,600 incorrectly deducts both the nondeductible premiums and excess depreciation from pretax income.$EXPL$,
  difficulty = 'hard'
WHERE id = 2182;

-- Q2184 [hard] topic: Income Taxes
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Yates Corp. acquired an asset in a nontaxable business combination. The fair value assigned is $900,000 and the tax basis is $600,000. The tax rate is 21%. What is the appropriate deferred tax treatment for this $300,000 difference under ASC 740?$EXPL$,
  choices = $EXPL$["Record a deferred tax liability of $63,000","Apply the initial recognition exception and record no deferred tax","Record a deferred tax liability with an offsetting goodwill adjustment","Record a deferred tax asset of $63,000"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (A): Under ASC 740-10-25-20, the initial recognition exception does not apply to differences arising in a business combination. The $300,000 difference ($900,000 fair value − $600,000 tax basis) creates a DTL of $300,000 × 21% = $63,000, which is recognized at the acquisition date and affects goodwill measurement per ASC 805-740-25-3.
Wrong (B): The initial recognition exception explicitly excludes business combinations from its scope, so it cannot be applied to this acquisition-date difference.
Wrong (C): While the DTL does affect the goodwill calculation, it is not recorded as a direct offset to goodwill—it is a separate liability that adjusts the net assets acquired.
Wrong (D): A DTA would arise from a deductible temporary difference where the tax basis exceeds fair value, which is the opposite of this scenario.$EXPL$,
  difficulty = 'hard'
WHERE id = 2184;

-- Q2185 [easy] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 740-10-25-30, municipal bond interest is a permanent difference—it is included in book income but permanently excluded from taxable income under IRC §103. Permanent differences never reverse and do not create deferred taxes.
Wrong (A): Unrealized gains on AFS debt securities reported in OCI create a temporary difference because they will reverse when the securities are sold or mature.
Wrong (B): Goodwill amortized for tax but not for book creates a temporary difference as the book and tax bases diverge over time.
Wrong (D): Revenue recognized at a point in time for book but on installment for tax creates a temporary difference that reverses as cash is collected.$EXPL$,
  difficulty = 'easy'
WHERE id = 2185;

-- Q2186 [medium] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 740-10-25-20, the $180,000 advance creates a deductible temporary difference because it is taxed in Year 1 but not recognized as book revenue until Year 2. The DTA = $180,000 × 21% = $37,800, representing prepaid taxes on income not yet earned for book purposes. The DTA reverses in Year 2 when book revenue is recognized.
Wrong (B): A DTL would arise if book income exceeded taxable income, which is the opposite here—taxable income exceeds book income in Year 1.
Wrong (C): Ignoring the deferred tax effect would misstate the balance sheet by failing to recognize the future tax benefit from the book-tax timing difference.
Wrong (D): $180,000 is the gross temporary difference, not the tax-effected DTA.$EXPL$,
  difficulty = 'medium'
WHERE id = 2186;

-- Q2188 [easy] topic: Income Taxes
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): ASC 740-10-50-12 requires public entities to disclose a reconciliation of the statutory federal income tax rate to the effective tax rate (rate reconciliation), or alternatively a reconciliation of expected tax expense to actual tax expense. This explains why the effective rate differs from the 21% statutory rate.
Wrong (B): A reconciliation of GAAP income to taxable income is not a required disclosure under ASC 740; companies rarely disclose taxable income publicly.
Wrong (C): A cash balance reconciliation is a treasury function, not a tax disclosure required by ASC 740.
Wrong (D): A book-to-tax depreciation reconciliation is not a standalone disclosure requirement, though depreciation differences may appear as line items in the rate reconciliation.$EXPL$,
  difficulty = 'easy'
WHERE id = 2188;

-- Q2195 [hard] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under the proportionate share method permitted by ASC 805-20-30-1 for NCI measurement, NCI is valued at its proportionate share of the acquiree's net assets: 20% × $5,000,000 = $1,000,000. Goodwill = Consideration paid − Parent's share of net assets = $4,800,000 − (80% × $5,000,000) = $800,000. This method recognizes only the parent's goodwill.
Wrong (B): $1,000,000 is the NCI's share of net assets, not goodwill. Confusing NCI measurement with goodwill overstates goodwill significantly.
Wrong (C): $200,000 does not result from any correct application of the proportionate share method to the given facts.
Wrong (D): $600,000 may result from subtracting the NCI value from total consideration, which is not the correct goodwill formula.$EXPL$,
  difficulty = 'hard'
WHERE id = 2195;

-- Q2196 [easy] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 810-10-45-1, all intercompany transactions must be eliminated in consolidation. Management fees between parent and subsidiary represent revenue to one entity and expense to the other within the consolidated group, requiring elimination to avoid double-counting.
Wrong (A): Dividends to minority (noncontrolling) shareholders are transactions with parties outside the consolidated entity and are not eliminated.
Wrong (B): Interest on bonds payable to unrelated third parties is an external transaction that is not eliminated in consolidation.
Wrong (D): A subsidiary's purchase from an unrelated supplier is an external transaction and does not require elimination.$EXPL$,
  difficulty = 'easy'
WHERE id = 2196;

-- Q2197 [medium] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 810-10-45-1, intercompany profit on inventory remaining within the consolidated group must be eliminated. Total intercompany profit = $400,000 − $280,000 = $120,000. Unrealized portion (25% still in ending inventory) = 25% × $120,000 = $30,000. The 75% sold to outside parties is realized and requires no elimination.
Wrong (B): $70,000 does not correspond to any correct allocation of the intercompany profit based on the given percentages.
Wrong (C): $100,000 incorrectly applies the 25% unsold rate to the selling price rather than to the profit margin.
Wrong (D): $120,000 is the total intercompany profit, not just the unrealized portion remaining in ending inventory.$EXPL$,
  difficulty = 'medium'
WHERE id = 2197;

-- Q2198 [medium] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 810-10-45-1, in a downstream sale the parent is the seller and earns the intercompany profit. The entire unrealized profit is eliminated against the parent's share of consolidated income. The NCI is unaffected because the subsidiary did not originate the profit.
Wrong (A): Eliminating against NCI only would be incorrect because the parent, not the subsidiary, generated the intercompany profit in a downstream sale.
Wrong (B): Eliminating against retained earnings of the subsidiary is incorrect because the subsidiary was the buyer, not the seller, in a downstream transaction.
Wrong (C): Proportional allocation between parent and NCI applies to upstream sales (subsidiary sells to parent), not downstream sales.$EXPL$,
  difficulty = 'medium'
WHERE id = 2198;

-- Q2199 [medium] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 810-10-45-1, in an upstream sale the subsidiary is the seller. Since both the controlling and noncontrolling interests share in the subsidiary's income, the unrealized profit elimination is allocated proportionally: 80% to the controlling interest and 20% to the NCI, reflecting their respective ownership stakes.
Wrong (A): Allocating 100% to the parent would be correct for a downstream sale, not an upstream sale where the subsidiary originated the profit.
Wrong (B): Allocating 100% to the NCI has no basis under consolidation guidance—the NCI bears only its proportionate share of the subsidiary's income adjustments.
Wrong (D): Eliminating entirely to consolidated retained earnings ignores the required allocation between controlling and noncontrolling interests.$EXPL$,
  difficulty = 'medium'
WHERE id = 2199;

-- Q2200 [easy] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 810-10-45-1, intercompany receivables and payables must be eliminated because the consolidated entity cannot owe money to itself. The entry debits Note Payable and credits Note Receivable for $500,000, removing both balances from the consolidated balance sheet.
Wrong (A): Debiting Note Payable and crediting Cash would incorrectly record a payment rather than an elimination of intercompany balances.
Wrong (B): No entry is incorrect—intercompany balances do not cancel automatically and require an explicit elimination entry in the consolidation workpaper.
Wrong (C): Debiting Note Receivable and crediting Note Payable reverses the correct entry, which would increase rather than eliminate the intercompany balances.$EXPL$,
  difficulty = 'easy'
WHERE id = 2200;

-- Q2201 [easy] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 323-10-35-4 (equity method), Horizon recognizes its share of the investee's net income: 40% × $800,000 = $320,000. Dividends received ($200,000 × 40% = $80,000) reduce the investment account balance but are not recognized as income. The equity method records income based on earnings, not cash distributions.
Wrong (A): $80,000 is Horizon's share of dividends received, which reduces the investment balance but is not income under the equity method.
Wrong (B): $240,000 appears to net the income share against dividends, which is not how equity method income is reported.
Wrong (D): $400,000 does not correspond to any correct percentage applied to Vertex's net income or dividends.$EXPL$,
  difficulty = 'easy'
WHERE id = 2201;

-- Q2202 [medium] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 810-10-45-1, the parent's Investment in Subsidiary account and the subsidiary's stockholders' equity represent the same underlying net assets. Both must be eliminated in the consolidation workpaper to prevent double-counting. The elimination entry debits the subsidiary's equity accounts, credits the investment account, and records any goodwill or NCI.
Wrong (A): The subsidiary is not legally dissolved upon acquisition—it continues as a separate legal entity while being consolidated for reporting purposes.
Wrong (B): While the investment account does reflect the subsidiary's equity, saying it "replaces" equity oversimplifies the elimination process and mischaracterizes the purpose.
Wrong (D): The subsidiary's equity retains its value after acquisition; it is eliminated only on the consolidation workpaper to avoid double-counting, not because it has no value.$EXPL$,
  difficulty = 'medium'
WHERE id = 2202;

-- Q2203 [medium] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 810-10-45-19, NCI's share of the subsidiary's net income is reported as a separate line item on the consolidated income statement. NCI owns 30% of Small Corp., so NCI income = 30% × $600,000 = $180,000. Dividends declared reduce the NCI's balance sheet equity, not income.
Wrong (A): $30,000 applies the NCI percentage to dividends ($100,000 × 30%), confusing dividend distributions with income allocation.
Wrong (B): $150,000 appears to net dividends from income before applying the NCI percentage, which is not the correct approach.
Wrong (D): $420,000 is the parent's 70% share of income, not the NCI's share.$EXPL$,
  difficulty = 'medium'
WHERE id = 2203;

-- Q2204 [hard] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 810-10-45-1, the $150,000 intercompany gain ($450,000 − $300,000) must be eliminated. The subsidiary depreciates based on the $450,000 transfer price, but consolidated depreciation should reflect the original $300,000 cost. Excess annual depreciation = $150,000 ÷ 5 years = $30,000, which is reversed to effectively realize the gain over the asset's remaining life.
Wrong (B): Eliminating the $150,000 gain only, without adjusting depreciation, would overstate consolidated depreciation expense by $30,000 per year.
Wrong (C): Eliminating $450,000 of equipment would remove the entire asset rather than restoring it to its original $300,000 cost basis.
Wrong (D): Reducing equipment by $300,000 would understate the asset, which should remain at its original $300,000 cost basis from the consolidated perspective.$EXPL$,
  difficulty = 'hard'
WHERE id = 2204;

-- Q2207 [hard] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 810-10-45-1, total intercompany profit = $1,200,000 × 30% = $360,000. Unrealized portion (still in ending inventory) = $300,000 × 30% = $90,000. Since this is an upstream sale (subsidiary sold to parent), the elimination is allocated based on ownership per ASC 810-10-45-19: 60% to the controlling interest ($54,000) and 40% to the NCI ($36,000).
Wrong (B): $360,000 is the total intercompany profit, not the unrealized portion. Only inventory remaining in the consolidated group requires elimination.
Wrong (C): Allocating $90,000 entirely to the parent would be correct for a downstream sale, but this is an upstream sale requiring proportional allocation.
Wrong (D): $360,000 allocated 100% to the parent both overstates the unrealized amount and misapplies the upstream sale allocation rules.$EXPL$,
  difficulty = 'hard'
WHERE id = 2207;

-- Q2208 [medium] topic: Consolidations
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Which of the following best describes the primary criterion for determining whether an entity must consolidate a variable interest entity (VIE)?$EXPL$,
  choices = $EXPL$["The entity owns more than 50% of the VIE's voting stock","The entity holds a majority of seats on the VIE's board of directors","The entity provides more than half of the VIE's total financing","The entity is the primary beneficiary with power to direct significant activities"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (D): Under ASC 810-10-25-38, consolidation of a VIE is required by the entity identified as the primary beneficiary. The primary beneficiary must have both (1) the power to direct the VIE's most significant activities and (2) the obligation to absorb losses or the right to receive benefits that could be significant. Voting interest alone does not determine VIE consolidation.
Wrong (A): Owning more than 50% of voting stock is the criterion for consolidation under the voting interest model, not the VIE model.
Wrong (B): Board majority may indicate control in a voting interest entity but is not the primary criterion under VIE guidance.
Wrong (C): Providing financing creates a variable interest but does not by itself make an entity the primary beneficiary without the power-to-direct criterion.$EXPL$,
  difficulty = 'medium'
WHERE id = 2208;

-- Q2209 [medium] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 805-10-25-6, only the acquiree's revenues and expenses from the acquisition date forward are included in consolidated income. From June 1 through December 31 = 7 months. Sub's consolidated revenue = $3,600,000 × 7/12 = $2,100,000. Pre-acquisition results belong to the prior owners and are not consolidated.
Wrong (A): $3,600,000 includes the full year's revenue, but only post-acquisition results (7 months) may be consolidated.
Wrong (C): $1,800,000 represents 6 months (half year), but the acquisition was June 1, leaving 7 months in the consolidation period.
Wrong (D): $1,500,000 represents 5 months, understating the post-acquisition period.$EXPL$,
  difficulty = 'medium'
WHERE id = 2209;

-- Q2212 [medium] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 323-10-35-4 (equity method), the investment balance is adjusted for the parent's share of income and dividends. Beginning balance $3,200,000 + share of income (80% × $500,000 = $400,000) − share of dividends (80% × $120,000 = $96,000) = $3,504,000.
Wrong (B): $3,600,000 adds the parent's share of income but fails to subtract the parent's share of dividends received.
Wrong (C): $3,304,000 appears to apply incorrect percentages or to double-count the dividend reduction.
Wrong (D): $3,080,000 subtracts the full $120,000 dividends rather than the parent's 80% share and may also misstate the income adjustment.$EXPL$,
  difficulty = 'medium'
WHERE id = 2212;

-- Q2213 [easy] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 810-10-45-1, dividends paid by the parent to its own external shareholders are transactions with parties outside the consolidated group and are not eliminated. Only intercompany transactions within the consolidated entity require elimination.
Wrong (A): Intercompany sales and cost of goods sold between parent and subsidiary must be eliminated because they inflate consolidated revenue and expenses.
Wrong (B): Intercompany dividends from subsidiary to parent must be eliminated because they represent internal transfers within the consolidated group.
Wrong (D): Intercompany interest revenue and interest expense must be eliminated to avoid double-counting income and expense on intragroup lending.$EXPL$,
  difficulty = 'easy'
WHERE id = 2213;

-- Q2217 [easy] topic: Consolidations
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 323-10-15-6, the equity method is appropriate when an investor has significant influence, typically presumed at 20%–50% ownership. A 35% interest with significant influence clearly qualifies for equity method accounting.
Wrong (A): A 15% interest without significant influence falls below the presumption threshold and would typically use fair value or the measurement alternative under ASC 321.
Wrong (B): A 100% interest requires consolidation under ASC 810, not the equity method—the equity method applies to investments below the consolidation threshold.
Wrong (D): A 5% interest with no board representation lacks significant influence and would be accounted for at fair value or under the measurement alternative.$EXPL$,
  difficulty = 'easy'
WHERE id = 2217;

-- Q2220 [easy] topic: Fair Value
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 820-10-35-40, Level 1 inputs are quoted prices in active markets for identical assets or liabilities. Publicly traded equity securities on the NYSE have readily available quoted prices that qualify as Level 1, the most reliable measurement input. No adjustments are permitted to Level 1 prices.
Wrong (B): Level 2 inputs apply to similar (not identical) assets, or identical assets in inactive markets, and allow adjustments—none of which apply to actively traded NYSE securities.
Wrong (C): Level 3 inputs are unobservable and used only when Level 1 and Level 2 inputs are unavailable, which is not the case for NYSE-listed securities.
Wrong (D): Trading volume does not determine the level classification—an active market with quoted prices for identical assets is always Level 1 regardless of volume.$EXPL$,
  difficulty = 'easy'
WHERE id = 2220;

-- Q2221 [medium] topic: Fair Value
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 820-10-35-47, Level 2 inputs are observable inputs other than quoted prices for identical assets in active markets. An interest rate swap valued using the LIBOR/SOFR yield curve uses observable market interest rates as inputs, placing it squarely in Level 2.
Wrong (A): A quoted stock price on the NYSE is a Level 1 input—a quoted price in an active market for an identical asset.
Wrong (B): A model with no observable market data relies entirely on unobservable inputs, making it Level 3.
Wrong (C): A DCF model using management's proprietary assumptions employs unobservable inputs, classifying it as Level 3.$EXPL$,
  difficulty = 'medium'
WHERE id = 2221;

-- Q2224 [medium] topic: Fair Value
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 820-10-35-47, using quoted prices for similar (not identical) assets with adjustments for observable differences such as credit quality and maturity constitutes a Level 2 measurement using the market approach. The market approach uses prices from transactions involving comparable assets per ASC 820-10-35-35.
Wrong (A): Level 1 requires quoted prices for identical assets with no adjustments. Adjusting for credit quality and maturity disqualifies this from Level 1.
Wrong (B): This is a valid fair value technique specifically contemplated by ASC 820 for Level 2 measurements.
Wrong (C): Level 3 applies when significant unobservable inputs are used. Here, the adjustments are based on observable market differences.$EXPL$,
  difficulty = 'medium'
WHERE id = 2224;

-- Q2225 [easy] topic: Fair Value
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 820-10-35-52, Level 3 measurements typically use the income approach (discounted cash flow) with significant unobservable inputs such as entity-specific projections, growth rates, and discount rates developed from internal data. These inputs are not corroborated by observable market data.
Wrong (A): Quoted market prices for identical assets are Level 1 inputs—the most observable and reliable tier of the hierarchy.
Wrong (B): Matrix pricing based on benchmark yields uses observable market data and is typically a Level 2 technique.
Wrong (D): Comparable transaction multiples derived from observable market transactions are generally classified as Level 2 inputs.$EXPL$,
  difficulty = 'easy'
WHERE id = 2225;

-- Q2230 [medium] topic: Fair Value
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 820-10-35-5, the principal market is the market with the greatest volume and level of activity for the asset or liability. If a principal market exists, the fair value measurement uses the price in that market even if a more advantageous price exists elsewhere. Only in the absence of a principal market does the entity use the most advantageous market.
Wrong (A): The market where the entity usually sells is not necessarily the principal market—activity volume and level determine the designation.
Wrong (B): Geographic proximity does not define the principal market under ASC 820; the standard focuses on volume and activity.
Wrong (C): Maximizing the amount received describes the most advantageous market, which is used only when no principal market can be identified.$EXPL$,
  difficulty = 'medium'
WHERE id = 2230;

-- Q2231 [hard] topic: Fair Value
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Lyric Corp. holds a liability that has no active market for transfers. The identical liability is traded as an asset by other parties at a quoted price of $950,000. Under ASC 820, how should Lyric measure the fair value of this liability?$EXPL$,
  choices = $EXPL$["Use a Level 3 valuation technique with entity-specific inputs","Use the present value of contractual cash flows as fair value","Measure at $950,000 based on the quoted asset price","Apply the cost approach using original issuance proceeds"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 820-10-35-16B, when a quoted price for transferring an identical liability is not available but the identical item is held as an asset by another party, the entity uses the quoted price of that asset from the holder's perspective. The liability fair value is $950,000 assuming no adjustments for asset-specific features are necessary.
Wrong (A): Level 3 techniques with unobservable inputs are used only when no observable inputs (including corresponding asset prices) are available, which is not the case here.
Wrong (B): Present value of cash flows may be appropriate when no market prices exist, but here a quoted price for the identical item as an asset provides a more reliable Level 1 or Level 2 input.
Wrong (D): The cost approach using original issuance proceeds does not reflect current fair value and is not a prescribed technique when a quoted asset price is available.$EXPL$,
  difficulty = 'hard'
WHERE id = 2231;

-- Q2233 [medium] topic: Fair Value
-- Issues: unstructured, no_citation, choice_cuing
UPDATE questions SET
  stem = $EXPL$Ridge Corp. values a patent using a discounted cash flow model. The discount rate of 12% is derived from market data, but the projected cash flows of $500,000 per year are based entirely on management's estimates. Under ASC 820, how is the overall measurement classified?$EXPL$,
  choices = $EXPL$["Level 1 because a valuation model was used","Level 2 because the discount rate is observable","Level 3 because significant unobservable inputs drive the measurement","A blend of Level 2 and Level 3 reported separately"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 820-10-35-52A, the overall classification is determined by the lowest level input that is significant to the entire measurement. Although the discount rate is observable (Level 2), the projected cash flows are unobservable (Level 3) and are significant to the valuation. Therefore, the entire measurement is classified as Level 3.
Wrong (A): Level 1 requires quoted prices for identical assets in active markets, not model-based valuations.
Wrong (B): While the discount rate is a Level 2 input, the overall classification is driven by the lowest significant input level, which is Level 3 due to the management-estimated cash flows.
Wrong (D): ASC 820 does not permit splitting a single measurement into separate levels—the entire measurement is classified at the lowest significant input level.$EXPL$,
  difficulty = 'medium'
WHERE id = 2233;

-- Q2236 [hard] topic: Fair Value
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASC 820-10-35-16C, when no quoted price exists for transferring the identical or similar liability and the item is not held as an asset, the entity measures fair value using a valuation technique from the perspective of a market participant who holds the obligation. The income approach (discounted future cash flows) is commonly used, reflecting the price a counterparty would demand to assume the liability.
Wrong (B): ASC 820 permits fair value measurement of liabilities even without an active market—the absence of a quoted price does not preclude measurement.
Wrong (C): Historical issuance price may not reflect current fair value, which must incorporate current market conditions and expectations.
Wrong (D): Par value is a nominal amount that does not reflect the economic fair value of the obligation under current market conditions.$EXPL$,
  difficulty = 'hard'
WHERE id = 2236;

-- Q2237 [easy] topic: Fair Value
-- Issues: unstructured, no_contrast, choice_cuing
UPDATE questions SET
  stem = $EXPL$Under ASC 820, what characterizes an orderly transaction for fair value measurement purposes?$EXPL$,
  choices = $EXPL$["It must be completed within a single business day","It involves a seller acting under financial distress","It allows adequate market exposure prior to the measurement date","It requires prior approval from a regulatory authority"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 820-10-35-3, an orderly transaction assumes the asset or liability has been exposed to the market for a period prior to the measurement date sufficient for normal marketing activities. It is not a forced liquidation or distress sale, ensuring fair value reflects normal market conditions.
Wrong (A): There is no single-business-day requirement—orderly transactions specifically allow adequate time for market exposure, which may span multiple days or weeks.
Wrong (B): A transaction involving a financially distressed seller is explicitly excluded from the definition of an orderly transaction under ASC 820.
Wrong (D): Regulatory approval is not a defining characteristic of an orderly transaction under the fair value framework.$EXPL$,
  difficulty = 'easy'
WHERE id = 2237;

-- Q2240 [easy] topic: Fair Value
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 820-10-35-47, Level 2 inputs include quoted prices for similar (not identical) assets or liabilities in active markets, quoted prices for identical assets in inactive markets, and other observable inputs such as interest rates and yield curves. Level 1 inputs cannot be adjusted per ASC 820-10-35-44.
Wrong (A): Level 1 inputs are quoted prices for identical assets in active markets and cannot be adjusted for differences—any adjustment disqualifies a measurement from Level 1.
Wrong (C): Level 3 inputs are the least reliable in the hierarchy, used only when Levels 1 and 2 are unavailable. They are not preferred.
Wrong (D): The hierarchy ranks inputs from most reliable (Level 1) to least reliable (Level 3), not the reverse.$EXPL$,
  difficulty = 'easy'
WHERE id = 2240;

-- Q2244 [easy] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under general bank reconciliation principles per ASC 305-10-05, the adjusted bank balance = bank statement balance − outstanding checks + deposits in transit = $85,000 − $12,000 + $8,000 = $81,000. Outstanding checks reduce the bank balance because they have been issued but not cleared. Deposits in transit increase it because they have been sent but not yet recorded by the bank.
Wrong (B): $85,000 is the unadjusted bank statement balance before accounting for outstanding checks and deposits in transit.
Wrong (C): $93,000 adds both the outstanding checks and deposits in transit, when outstanding checks should be subtracted.
Wrong (D): $73,000 subtracts both items from the bank balance, when deposits in transit should be added.$EXPL$,
  difficulty = 'easy'
WHERE id = 2244;

-- Q2245 [easy] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (B): NSF checks and bank service fees are items that appear on the bank statement but have not yet been recorded in the company's books. Under standard bank reconciliation procedures per ASC 305-10-05, these items require adjustments to the book (company) balance and corresponding journal entries to reduce cash by $525 ($500 NSF + $25 fee).
Wrong (A): These items have already been processed by the bank—they do not require adjustment to the bank balance but rather to the company's records.
Wrong (C): These are not timing differences that will self-correct; they require the company to record journal entries to update its cash balance.
Wrong (D): While the NSF check does create a receivable from the customer, the bank service fee is an expense, and both items must first be recognized as adjustments to the book cash balance.$EXPL$,
  difficulty = 'easy'
WHERE id = 2245;

-- Q2246 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under bank reconciliation procedures per ASC 305-10-05, only items not yet in the company's books adjust the book balance. Adjusted book balance = $42,000 + $5,000 (note collected by bank, including $200 interest) − $150 (service charge) − $800 (NSF check) = $46,050. Outstanding checks and deposits in transit adjust the bank balance, not the book balance.
Wrong (B): $43,850 may result from omitting the note collection or misapplying the interest component.
Wrong (C): $42,000 is the unadjusted book balance before recording the bank-reported items.
Wrong (D): $45,250 likely omits the NSF check deduction or miscomputes the note collection amount.$EXPL$,
  difficulty = 'medium'
WHERE id = 2246;

-- Q2248 [medium] topic: Cash and Receivables
-- Issues: unstructured, no_citation, no_contrast
UPDATE questions SET
  explanation = $EXPL$Correct (D): Under ASC 326-20-30-1 (CECL model), on the date a financial asset measured at amortized cost is first recognized, the entity must immediately record an allowance for expected credit losses. This forward-looking, day-one recognition requirement replaced the prior incurred-loss model, ensuring losses are recognized earlier.
Wrong (A): Waiting until payment is past due describes the old incurred-loss model, which CECL specifically replaced with a forward-looking approach.
Wrong (B): Requiring a trigger event before recording an allowance also describes the superseded incurred-loss framework, not the CECL model.
Wrong (C): Recording the receivable net of expected losses conflates the gross receivable presentation with the allowance—CECL requires a separate allowance account, not a net presentation on initial recognition.$EXPL$,
  difficulty = 'medium'
WHERE id = 2248;
