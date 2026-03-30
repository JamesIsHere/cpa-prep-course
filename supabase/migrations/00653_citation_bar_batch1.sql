-- Migration: Citation backfill — BAR batch 1 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Business Combinations, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 691: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 810-10-45-18, 100% of unrealized intercompany profit from downstream sales must be eliminated in consolidation, regardless of the parent''s ownership percentage. The full elimination is charged to the parent because the parent initiated the sale, and consolidated statements must present the economic entity as if the intercompany transaction never occurred. However, unlike upstream sales where the elimination is allocated between the parent and noncontrolling interest under ASC 810-10-45-19, downstream eliminations do not affect the noncontrolling interest because NCI did not participate in earning the intercompany profit. (A) is incorrect because the elimination applies to unsold inventory containing unrealized profit, not only to fully resold goods. (B) is incorrect because proportionate elimination applies to upstream transactions, not downstream ones.$EXPL$
WHERE id = 691;

-- ID 692: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under ASC 810-10-45-18, unrealized intercompany profit on unsold inventory must be fully eliminated regardless of ownership percentage. The unrealized profit is $15,000 (25% of $60,000 markup, where $60,000 = $220,000 − $160,000). Because this is a downstream sale, ASC 810-10-45-19 requires the full elimination to be attributed to the parent''s share — noncontrolling interest is unaffected since NCI did not earn any of the intercompany profit. At both 80% and 100% ownership, the same $15,000 is removed from ending inventory and cost of goods sold. (A) is incorrect because partial elimination is never permitted under consolidation guidance — the full unrealized profit must always be eliminated. (D) is incorrect because it misstates both the profit calculation and the underlying principle.$EXPL$
WHERE id = 692;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (1 questions)
-- ============================================================

-- ID 1081: Advanced Lease Transactions
UPDATE questions SET
  explanation = $EXPL$Correct: Under ASC 842-10-25-15, when a lease modification decreases the scope of a lease, the lessee reduces the right-of-use asset and lease liability proportionally. The proportional decrease in the ROU asset is $300,000 ($900,000 × 1/3), and the proportional decrease in the lease liability is $310,000 ($930,000 × 1/3). The difference of $10,000 is recognized as a gain because the liability decreased more than the asset. This gain-or-loss treatment ensures that partial terminations are accounted for consistently with the initial measurement framework, whereas a modification that does not decrease scope would instead result in a remeasurement adjustment to the ROU asset without recognizing a gain or loss.$EXPL$
WHERE id = 1081;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (1 questions)
-- ============================================================

-- ID 667: Advanced Revenue and Intangibles
UPDATE questions SET
  explanation = $EXPL$Correct: Under ASC 606-10-32-11, the constraint on variable consideration requires that variable amounts be included in the transaction price only to the extent it is probable that a significant reversal of cumulative revenue recognized will not occur when the uncertainty is resolved. This constraint prevents premature revenue recognition on contingent amounts such as performance bonuses or royalties. The entity must assess both the likelihood and magnitude of a potential reversal, whereas without the constraint, companies could aggressively recognize uncertain amounts and later reverse them, distorting period-over-period comparisons.$EXPL$
WHERE id = 667;

-- ============================================================
-- BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 4829: Business Combinations
UPDATE questions SET
  explanation = $EXPL$Correct: Under ASC 805-20-30-1, goodwill in a business combination is measured as the excess of the aggregate of consideration transferred plus the fair value of noncontrolling interest over the net identifiable assets acquired. Using the full goodwill method: Goodwill = ($12,000,000 + $3,000,000) − $13,000,000 = $2,000,000. This approach attributes goodwill to both the parent and the noncontrolling interest, reflecting the total goodwill of the acquired entity. In contrast, the partial goodwill method under IFRS 3 would measure NCI at its proportionate share of net assets rather than fair value, resulting in lower recognized goodwill.$EXPL$
WHERE id = 4829;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 711: Derivatives and Hedging
UPDATE questions SET
  explanation = $EXPL$Correct: Under ASC 815-30-35-3, the effective portion of a cash flow hedge is recorded in other comprehensive income (OCI), while the ineffective portion — the amount by which the derivative''s gain or loss exceeds the change in expected cash flows of the hedged item — must be recognized in current earnings immediately. This treatment ensures that only the risk-offsetting component receives deferred recognition in OCI, whereas any speculative gain or loss from hedge ineffectiveness flows through the income statement. Unlike a fair value hedge under ASC 815-25, where both the hedging instrument and hedged item are marked to earnings, the cash flow hedge model splits effective and ineffective portions between OCI and earnings.$EXPL$
WHERE id = 711;

-- ID 712: Derivatives and Hedging
UPDATE questions SET
  explanation = $EXPL$Correct: Under ASC 815-15-25-1, an embedded derivative must be bifurcated from its host contract when three conditions are met: (1) the economic characteristics of the embedded derivative are not clearly and closely related to the host contract, (2) the hybrid instrument is not remeasured at fair value through earnings with changes recognized currently, and (3) a separate instrument with the same terms as the embedded feature would meet the definition of a derivative. All three criteria must be satisfied for bifurcation to be required, whereas if any one condition is not met — such as the hybrid being measured at fair value through earnings — bifurcation is unnecessary because the derivative''s fair value changes are already captured.$EXPL$
WHERE id = 712;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (8 questions)
-- ============================================================

-- ID 601: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under the liquidity analysis framework consistent with ASC 210-10-45, the divergence between the current ratio and quick ratio isolates inventory''s impact on liquidity. Ridgemont''s current ratio of 2.8 implies $1,400,000 in current assets, but its quick ratio of 0.9 implies only $450,000 in quick assets, meaning $950,000 (68%) is inventory — a significant liquidity risk if inventory cannot be converted rapidly. Cascade''s narrow gap (2.1 vs. 1.9) indicates minimal inventory reliance typical of a service firm. This demonstrates that a single ratio can mislead; the relationship between ratios reveals the quality of liquidity. (A) is incorrect because a high current ratio inflated by illiquid inventory does not indicate strong liquidity. (D) is incorrect because Cascade''s lower current ratio actually reflects healthier liquidity composition.$EXPL$
WHERE id = 601;

-- ID 602: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Correct (A): The DuPont analysis decomposes return on equity into three components per ASC 235-10-S99 presentation guidance: net profit margin (net income ÷ revenue), asset turnover (revenue ÷ total assets), and equity multiplier (total assets ÷ shareholders'' equity). Multiplying these three ratios yields ROE, allowing analysts to isolate whether profitability, efficiency, or leverage drives returns. (B) is incorrect because gross profit margin, debt-to-equity, and current ratio are not DuPont components. (C) is incorrect because operating margin and interest coverage measure profitability and solvency rather than the DuPont decomposition.$EXPL$
WHERE id = 602;

-- ID 603: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Correct (B): Days sales in inventory (DSI) measures the average number of days a company takes to convert inventory into sales, calculated as (average inventory ÷ cost of goods sold) × 365 per ASC 330-10 inventory guidance. For Oakmont, DSI = ($200,000 ÷ $1,200,000) × 365 ≈ 61 days. A lower DSI indicates faster inventory turnover, which is generally favorable for cash flow management. (A) is incorrect because DSI measures turnover speed, not obsolescence rates. (C) is incorrect because the cash conversion cycle, not DSI alone, incorporates receivables collection. (D) is incorrect because an inventory-to-assets ratio is a balance sheet proportion, not a time-based turnover metric.$EXPL$
WHERE id = 603;

-- ID 604: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Correct: In a common-size (vertical analysis) income statement under ASC 220-10-S99 presentation requirements, each line item is expressed as a percentage of revenue (net sales), establishing revenue as the 100% base. This enables comparison across companies of different sizes and identification of margin trends over time. For example, COGS of $600,000 on revenue of $1,000,000 appears as 60%. On a common-size balance sheet, the base is total assets rather than revenue. (B) is incorrect because net income is the bottom line, not the denominator. (D) is incorrect because gross profit is an intermediate subtotal, not the base for vertical analysis.$EXPL$
WHERE id = 604;

-- ID 605: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Correct: Under the DuPont decomposition consistent with ASC 280-10 segment reporting and financial analysis, ROE = net profit margin × asset turnover × equity multiplier = ($80,000 ÷ $1,000,000) × ($1,000,000 ÷ $800,000) × ($800,000 ÷ $400,000) = 8% × 1.25 × 2.0 = 20%. The equity multiplier of 2.0 means the company holds $2 in assets for every $1 of equity, indicating that financial leverage is the primary amplifier of returns. While the 8% net margin and 1.25 asset turnover are moderate, the 2× leverage doubles the return to equity holders, although higher leverage also increases financial risk, unlike a company achieving 20% ROE through superior margins.$EXPL$
WHERE id = 605;

-- ID 606: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Correct: The operating cycle, analyzed under ASC 210-10-45-3 current asset classification guidance, is calculated as days sales in inventory (DSI) plus days sales outstanding (DSO), measuring the total time from purchasing inventory to collecting cash from the resulting sale. The cash conversion cycle further subtracts days payable outstanding (DPO) to measure the net financing period. A shorter operating cycle generally indicates more efficient asset management, whereas a longer cycle may signal inventory or collection inefficiencies that tie up cash and increase working capital requirements.$EXPL$
WHERE id = 606;

-- ID 607: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Correct: Asset turnover (revenue ÷ total assets), a key efficiency metric under ASC 360-10 property and asset reporting, measures how efficiently a company generates revenue per dollar of assets. Company A''s turnover of 2.5 suggests a high-volume, low-asset business model typical of retailers, while Company B''s 0.8 indicates an asset-heavy model typical of utilities. The ratio reflects operating model differences rather than profitability, leverage, or liquidity, which are captured by separate metrics. Comparing asset turnover without industry context can be misleading, whereas within the same industry it provides a meaningful efficiency benchmark.$EXPL$
WHERE id = 607;

-- ID 608: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Correct: The times interest earned (TIE) ratio under ASC 470-10 debt reporting guidance is calculated as EBIT ÷ interest expense = $500,000 ÷ $200,000 = 2.5 for Evergreen Manufacturing. This means operating earnings can cover interest obligations 2.5 times, providing a moderate cushion for creditors — lenders typically prefer TIE ratios above 3.0. (A) is incorrect because TIE is not a percentage-of-revenue calculation. (C) is incorrect because TIE is an income-based coverage ratio, not a cash reserve or liquidity measure. (D) is incorrect because TIE uses EBIT, not net income, as the numerator — using net income would understate coverage since interest is already deducted from net income.$EXPL$
WHERE id = 608;

-- ============================================================
-- FINANCIAL VALUATION METHODS (9 questions)
-- ============================================================

-- ID 640: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under the FCFF valuation framework consistent with ASC 820 fair value measurement principles, FCFF equals operating cash flow minus capital expenditures. Increasing capex from $8M to $12M reduces FCFF from $12M to $8M (a 33% decline), directly lowering enterprise value in a DCF model. Capital-intensive companies trade at lower EV/EBITDA multiples because EBITDA does not capture capex — two companies with identical EBITDA but different capex requirements generate different free cash flows. An asset-light company converting 80% of EBITDA to free cash flow is worth more per dollar of EBITDA than one converting 40%. (B) is incorrect because capex is a direct deduction in the FCFF formula. (C) is incorrect because capital-intensive firms generally trade at lower, not higher, multiples.$EXPL$
WHERE id = 640;

-- ID 641: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Correct (B): Under the Gordon Growth Model consistent with ASC 820-10-35 fair value measurement, V = D1 ÷ (k − g). At g = 7% and k = 12%, the denominator is 5%, implying D1 = $2.00. At g = 8%, the denominator becomes 4%, and V rises to approximately $50 — a 25% increase from a 1-percentage-point change in growth. The key insight is the hyperbolic sensitivity: as g approaches k, the denominator approaches zero and value approaches infinity, making the model unreliable when g is close to k. (A) is incorrect because the relationship is hyperbolic, not linear. (C) is incorrect because the growth rate and discount rate are separate, independent inputs.$EXPL$
WHERE id = 641;

-- ID 642: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Correct (C): Enterprise value (EV), as defined in valuation practice consistent with ASC 820 fair value measurement, represents the total value of a firm to both equity and debt holders. EV is calculated as market capitalization plus total debt plus minority interest plus preferred equity minus cash and cash equivalents. For Palisade: EV = $600M + $200M − $50M = $750M. EV is used in multiples such as EV/EBITDA because it reflects the cost to acquire the entire business regardless of capital structure. (A) is incorrect because that describes the dividend discount model for equity value only. (B) is incorrect because that describes book value of equity, which differs from enterprise value.$EXPL$
WHERE id = 642;

-- ID 643: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Correct (B): EV/EBITDA is the preferred multiple for comparing companies with different capital structures and tax situations because it neutralizes both financing and tax distortions. Per valuation practice consistent with ASC 820, enterprise value captures total firm value regardless of financing mix, and EBITDA measures operating performance before interest, taxes, depreciation, and amortization. Ironclad''s 70% debt financing creates substantial interest expense that depresses net income, making its P/E appear artificially high, while Freeport''s tax credits inflate net income, making its P/E appear artificially low. (A) is incorrect because P/E''s sensitivity to financing and tax differences makes it less comparable. (D) is incorrect because identical net income does not mean equal operating profitability when leverage and tax rates differ.$EXPL$
WHERE id = 643;

-- ID 644: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Correct: In a discounted cash flow (DCF) model, terminal value typically represents 60–80% of total enterprise value, as recognized in valuation practice under ASC 820 fair value measurement. This heavy reliance makes the terminal growth rate and discount rate assumptions critically important to the overall valuation. Because small changes in these inputs compound significantly over the infinite horizon, analysts typically perform sensitivity analysis on terminal value assumptions and cross-check using exit multiple approaches. The high proportion of value attributable to terminal value is inherent to the DCF methodology, whereas a comparable company analysis avoids this concentration by using current market multiples directly.$EXPL$
WHERE id = 644;

-- ID 645: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Correct: EV/EBITDA is the most appropriate multiple for comparing companies with different capital structures because, consistent with valuation principles under ASC 820, enterprise value includes both debt and equity in the numerator while EBITDA measures operating performance before interest, taxes, depreciation, and amortization in the denominator. This makes the multiple independent of financing decisions. In contrast, P/E, EPS, and price-to-book are equity-level metrics that are directly affected by leverage differences between companies, whereas EV/EBITDA provides a capital-structure-neutral comparison that isolates operating performance.$EXPL$
WHERE id = 645;

-- ID 646: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Correct: The Gordon Growth Model (P₀ = D₁ ÷ (r − g)), applied in equity valuation under ASC 820-10-55 fair value techniques, requires that the growth rate (g) be less than the required rate of return (r). If g ≥ r, the denominator becomes zero or negative, making the model mathematically undefined. For mature companies, the growth rate should approximate long-term GDP growth to maintain model validity. This constraint reflects the economic reality that no company can sustain growth exceeding its cost of equity indefinitely, whereas a multi-stage DDM can accommodate higher near-term growth before transitioning to a sustainable terminal rate.$EXPL$
WHERE id = 646;

-- ID 647: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Correct: Free cash flow to equity (FCFE) differs from FCFF under the ASC 820-10-35 fair value framework in that FCFE adjusts for debt-related cash flows: FCFE = FCFF − interest expense × (1 − tax rate) + net borrowing. This isolates cash available exclusively to equity holders after servicing debt obligations. FCFE is discounted at the cost of equity to derive equity value directly, whereas FCFF is discounted at WACC to derive enterprise value. Using WACC to discount FCFE would double-count the cost of debt, unlike the FCFF approach which correctly captures all capital providers.$EXPL$
WHERE id = 647;

-- ID 648: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Correct: When a DCF model discounts FCFF at WACC to produce enterprise value, the analyst must convert to equity value by subtracting net debt per the enterprise-to-equity bridge consistent with ASC 820 fair value measurement. The formula is: Equity value = Enterprise value − total debt − preferred stock − minority interest + cash and equivalents. Dividing by diluted shares outstanding yields per-share intrinsic value. This bridge step is necessary because FCFF was discounted at WACC, which reflects the cost of all capital providers, whereas equity holders receive value only after debt and other senior claims are satisfied.$EXPL$
WHERE id = 648;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4846: Foreign Currency Transactions
UPDATE questions SET
  explanation = $EXPL$Correct: Under ASC 830-20-35-1, foreign currency transactions must be remeasured at the spot rate on the balance sheet date, with resulting gains or losses recognized in current earnings. The initial recording was €500,000 × $1.10 = $550,000. At the balance sheet date, €500,000 × $1.12 = $560,000, increasing the payable by $10,000 and creating a transaction loss because more dollars will be needed to settle the obligation. The settlement at $1.08 would produce a separate gain in the next period, whereas the balance sheet date remeasurement must be recognized in the current period regardless of the ultimate settlement rate.$EXPL$
WHERE id = 4846;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 1187: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Correct: Under GASB Statement No. 34, paragraph 77, a reconciliation between governmental fund financial statements and government-wide financial statements is required because the two use fundamentally different measurement bases. Governmental funds use the current financial resources measurement focus and modified accrual basis, recognizing revenues when measurable and available, while government-wide statements use the economic resources measurement focus and full accrual basis, recognizing revenues when earned. This difference creates systematic reporting gaps for long-term assets, long-term liabilities, and accrual-based revenues that must be bridged through reconciliation, whereas fund statements alone would not capture the full economic position of the government.$EXPL$
WHERE id = 1187;

-- ID 1188: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Correct: Under GASB Statement No. 34, paragraph 78, when converting from the change in fund balances to the change in net position, capital outlay expenditures must be added back because they are treated as expenditures in governmental funds (reducing fund balance) but are capitalized as long-term assets in government-wide statements (increasing capital assets without reducing net position). This reconciling adjustment reflects the difference between the current financial resources measurement focus, which treats capital spending as a use of resources, and the economic resources measurement focus, which recognizes the acquired asset''s future benefit. Unlike debt service principal payments — which also require a reconciling adjustment — capital outlay increases net position rather than reducing long-term liabilities.$EXPL$
WHERE id = 1188;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 4866: Intangible Assets Advanced
UPDATE questions SET
  explanation = $EXPL$Correct: Under the simplified one-step goodwill impairment test per ASC 350-20-35-3C (as amended by ASU 2017-04), an impairment loss equals the amount by which the reporting unit''s carrying amount exceeds its fair value, limited to the total goodwill allocated to that unit. For Fletcher: carrying amount $25M − fair value $21M = $4M excess, but the impairment is capped at the $4M since goodwill is $8M (and $4M < $8M). The former Step 2, which required calculating the implied fair value of goodwill, was eliminated by ASU 2017-04 to reduce cost and complexity, whereas under the prior two-step approach, the impairment amount could differ from the simple carrying-minus-fair-value calculation.$EXPL$
WHERE id = 4866;

-- ============================================================
-- INTERFUND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 1196: Interfund Transactions
UPDATE questions SET
  explanation = $EXPL$Correct: Under GASB Statement No. 34, paragraph 112, interfund activities are classified as either reciprocal (exchange-like) or nonreciprocal. Interfund loans are reciprocal because both funds exchange value — one fund provides cash and receives a receivable, while the other receives cash and incurs a payable, mirroring an arm''s-length transaction. Transfers and reimbursements are nonreciprocal activities because they represent one-directional resource flows without an equivalent exchange, whereas interfund services provided and used (such as the fleet maintenance billing) are also reciprocal because they approximate external exchange transactions.$EXPL$
WHERE id = 1196;

-- ID 1198: Interfund Transactions
UPDATE questions SET
  explanation = $EXPL$Correct: Under GASB Statement No. 34, paragraph 112, interfund services provided and used are treated as reciprocal interfund activities and recorded as revenues in the providing fund and expenditures or expenses in the receiving fund, just as if the transaction were with an external party. The General Fund records a $60,000 maintenance expenditure and an interfund payable to the Internal Service Fund. This treatment preserves the cost allocation function of internal service funds, whereas interfund transfers — which are nonreciprocal — are reported separately as other financing sources and uses rather than as revenues and expenditures.$EXPL$
WHERE id = 1198;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (1 questions)
-- ============================================================

-- ID 1074: Internal-Use Software and Cloud Computing
UPDATE questions SET
  explanation = $EXPL$Correct: Under ASC 350-40-25-9, data conversion costs incurred during the application development stage that are necessary for the new system to access and use legacy data are capitalizable as part of the internal-use software asset. This includes costs to develop or obtain software that allows conversion of old data to the new system''s format. Capitalization is appropriate because these costs are directly attributable to placing the software in service. However, routine data conversion costs incurred during the post-implementation stage are expensed as incurred, whereas preliminary-stage costs such as conceptual formulation and vendor evaluation are also expensed rather than capitalized.$EXPL$
WHERE id = 1074;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (2 questions)
-- ============================================================

-- ID 1087: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = $EXPL$Correct (A): Under ASU 2017-07 (codified in ASC 715-30-35-4A), only the service cost component of net periodic pension cost is reported within operating income on the income statement. All other components — interest cost, expected return on plan assets, amortization of prior service cost, and amortization of net actuarial gains and losses — must be reported below the operating income subtotal. This presentation improves the comparability of operating income across companies with different pension plan structures. (B) is incorrect because interest cost is explicitly excluded from operating income under ASU 2017-07. (D) is incorrect because only service cost, not all components, appears in operating income.$EXPL$
WHERE id = 1087;

-- ID 1090: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = $EXPL$Correct: Under ASC 715-30-35-7, the fair value of plan assets at the end of the period is calculated as: beginning fair value + actual return on plan assets + employer contributions − benefits paid to participants. For Calloway: $2,400,000 + $180,000 + $300,000 − $200,000 = $2,680,000. Plan assets increase through investment returns and employer contributions and decrease as benefits are distributed. For calculating net periodic pension cost on the income statement, the expected return (not the actual return) is used per ASC 715-30-35-9, whereas the difference between actual and expected return is deferred through other comprehensive income as an actuarial gain or loss.$EXPL$
WHERE id = 1090;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (7 questions)
-- ============================================================

-- ID 617: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Correct (A): Exponential smoothing, applied under AT Section 301 prospective financial statement guidance, calculates the new forecast as F(t+1) = α × Actual + (1 − α) × Forecast. Model A: 0.3 × $240,000 + 0.7 × $200,000 = $212,000. Model B: 0.7 × $240,000 + 0.3 × $200,000 = $228,000. A higher alpha weights recent actuals more heavily, producing a forecast closer to the latest observation — beneficial when demand patterns are genuinely shifting but harmful when recent data contains random noise. (C) is incorrect because it reverses the alpha-weight relationship. (D) is incorrect because both models always blend the prior forecast with the actual observation.$EXPL$
WHERE id = 617;

-- ID 618: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Correct (B): The percentage-of-sales method, consistent with AT Section 301 prospective financial information guidance, projects future balance sheet and income statement items by assuming they maintain a stable historical relationship with sales revenue. Items like accounts receivable, inventory, and COGS are forecast as a fixed percentage of projected sales, while long-term debt and equity are excluded as they do not vary proportionally. (A) is incorrect because the method forecasts financial statements, not product pricing decisions. (C) is incorrect because it describes revenue segmentation rather than financial forecasting. (D) is incorrect because it describes probability analysis, not the percentage-of-sales approach.$EXPL$
WHERE id = 618;

-- ID 619: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 270-10 interim reporting and cost estimation principles, R-squared of 0.88 indicates that 88% of variation in production costs is explained by machine hours within the observed range of 2,000–8,000 hours. However, R-squared is an in-sample statistic. At 15,000 hours — nearly double the maximum observed — the cost structure may change nonlinearly due to overtime premiums, equipment wear, or bottleneck effects. The model predicts $160,000 ($40,000 + $8 × 15,000), but this assumes linearity holds far outside the relevant range. (A) is incorrect because R-squared is not a forward-looking accuracy guarantee. (B) is incorrect because extrapolation degrades, not improves, reliability.$EXPL$
WHERE id = 619;

-- ID 620: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Correct: R-squared (the coefficient of determination), a key metric in regression analysis under ASC 820-10-55-5 valuation technique guidance, measures the proportion of variation in the dependent variable explained by the independent variable(s). An R-squared of 0.75 means 75% of the variation in Meridian''s quarterly sales is explained by advertising expenditure, while 25% is attributable to other factors. (A) is incorrect because R-squared is not a probability of prediction accuracy. (C) is incorrect because it confuses R-squared with the correlation coefficient r, which would be the square root of R-squared. (D) is incorrect because R-squared is not a confidence level.$EXPL$
WHERE id = 620;

-- ID 621: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Correct: Under AT Section 301 prospective financial statement standards, sensitivity analysis isolates the impact of a single variable by changing one input at a time while holding all other assumptions constant — for example, varying only the sales growth rate to observe its effect on projected net income. Scenario analysis, by contrast, changes multiple variables simultaneously to model different plausible states (optimistic, base, pessimistic). Sensitivity analysis identifies which individual assumptions have the greatest impact, whereas scenario analysis tests the combined effect of correlated changes. (A) is incorrect because it describes scenario analysis, not sensitivity analysis. (C) is incorrect because sensitivity analysis produces multiple estimates, one per variable tested.$EXPL$
WHERE id = 621;

-- ID 623: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Correct: A 3-month simple moving average, a quantitative technique referenced in AT Section 301 prospective financial analysis, uses the three most recent months of actual data with equal weight (1/3) each. For an April forecast, this means averaging actual demand from January, February, and March. (B) is incorrect because April''s actual data is unknown at forecast time and cannot be included. (C) is incorrect because the model uses actual historical data, not prior forecasts. (D) is incorrect because December through February would produce a March forecast, whereas the April forecast requires January through March data.$EXPL$
WHERE id = 623;

-- ID 624: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Correct: Under AT Section 301 prospective financial analysis guidance, increasing the smoothing constant (alpha) from 0.2 to 0.8 in exponential smoothing gives substantially more weight to the most recent actual observation and less to the prior forecast, making the forecast more responsive to recent changes. A higher alpha is appropriate when the underlying data exhibits genuine trend shifts, whereas a lower alpha provides greater smoothing of random fluctuations. However, the increased responsiveness comes at the cost of higher forecast volatility — the model will chase noise rather than filtering it out, unlike a lower alpha that sacrifices speed for stability.$EXPL$
WHERE id = 624;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (7 questions)
-- ============================================================

-- ID 652: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Correct: Building permits are classified as a leading economic indicator per the Conference Board''s ASC 280-10 segment and economic reporting framework because construction activity reflects future investment and employment decisions. Leading indicators change direction before the overall economy, providing early signals of turning points. The unemployment rate and average duration of unemployment are lagging indicators that change after the economy has already shifted, whereas the CPI is also a lagging indicator reflecting past price pressures rather than future conditions.$EXPL$
WHERE id = 652;

-- ID 653: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Correct (C): Under ASC 360-10-35 asset valuation and capital budgeting principles, NPV is the more reliable criterion for mutually exclusive projects because it directly measures the dollar increase in shareholder wealth. Alpha creates $450,000 in value versus Beta''s $320,000 — choosing Alpha adds $130,000 more to firm value. The NPV-IRR conflict arises because IRR implicitly assumes reinvestment at the project''s own rate, while NPV assumes reinvestment at WACC — the more realistic assumption. Additionally, IRR ignores investment scale: earning 25% on $1M generates less absolute value than 18% on $2M. (A) is incorrect because the higher percentage return does not compensate for smaller absolute value creation. (B) is incorrect because NPV-IRR conflicts are common with different project scales.$EXPL$
WHERE id = 653;

-- ID 654: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Correct: Modified duration, applied under ASC 820-10-55 fair value measurement techniques for debt securities, measures the approximate percentage change in bond price for a 1% change in yield. The calculation is: price change ≈ −modified duration × change in yield = −6.0 × (−0.75%) = +4.5%. Bond prices move inversely to interest rates, so a 0.75% rate decrease causes an approximate 4.5% price increase. Duration provides only a linear approximation, and convexity adjustments are needed for large rate changes because the price-yield relationship is curvilinear, whereas duration alone would understate the actual price increase from falling rates.$EXPL$
WHERE id = 654;

-- ID 655: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Correct: Under ASC 360-10-35 asset valuation principles, NPV should always be preferred over IRR for ranking mutually exclusive projects because NPV directly measures the actual dollar value added to the firm. IRR can give misleading rankings due to its implicit reinvestment rate assumption — IRR assumes intermediate cash flows are reinvested at the project''s own IRR, while NPV uses the more realistic WACC. When projects differ in scale or timing, IRR may favor a smaller project with a higher percentage return that creates less total value, whereas NPV correctly identifies the project that maximizes shareholder wealth regardless of structural differences.$EXPL$
WHERE id = 655;

-- ID 656: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Correct (B): The Capital Asset Pricing Model (CAPM), relevant to ASC 820-10-55 fair value discount rate estimation, explains why diversification reduces total risk only to a floor. Total portfolio risk comprises unsystematic risk (company-specific) and systematic risk (market-wide). As stocks are added, unsystematic events increasingly offset each other — largely achieved with 25–30 stocks — leaving only systematic risk (the ~16% floor), reflecting macroeconomic forces affecting all stocks simultaneously. Since any investor can eliminate unsystematic risk through diversification, the market compensates only for systematic risk (beta). (A) is incorrect because even cross-industry diversification cannot eliminate systematic risk. (C) is incorrect because the floor represents real economic risk, not measurement error.$EXPL$
WHERE id = 656;

-- ID 657: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Correct (C): The profitability index (PI), applied under ASC 360-10-35 asset valuation and capital budgeting, is calculated as the present value of future cash flows divided by the initial investment. A PI greater than 1.0 indicates the project creates value — each dollar invested generates more than a dollar in present value. PI is especially useful for ranking projects under capital rationing because it measures value created per dollar invested. (A) is incorrect because that describes the payback period, which measures time to recover investment. (B) is incorrect because that describes net cash flow, not the profitability index. (D) is incorrect because PI is calculated from present values, not derived from IRR.$EXPL$
WHERE id = 657;

-- ID 658: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Correct: During an economic contraction, consistent with macroeconomic analysis under ASC 820-10-35 fair value and market condition assessments, the most likely conditions include rising unemployment, decreasing consumer and business spending, and potentially declining prices. The NBER officially determines recessions based on the depth, diffusion, and duration of economic decline across multiple indicators — not solely two consecutive quarters of negative GDP. This contrasts with the expansion phase where GDP grows and unemployment falls, whereas a contraction reflects the opposite cyclical dynamic with broad-based deterioration.$EXPL$
WHERE id = 658;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 726: State and Local Government Reporting
UPDATE questions SET
  explanation = $EXPL$Correct: Under GASB Statement No. 34, enterprise funds are classified as proprietary funds that account for business-type activities such as water utilities, airports, and parking operations. Proprietary funds use full accrual accounting and the economic resources measurement focus, similar to commercial enterprises — recognizing revenues when earned and expenses when incurred regardless of when cash changes hands. Unlike governmental funds that use modified accrual and the current financial resources measurement focus, proprietary funds report operating statements and balance sheets that closely resemble private-sector financial statements, whereas fiduciary funds account for resources held in trust and are excluded from government-wide statements entirely.$EXPL$
WHERE id = 726;

-- ID 731: State and Local Government Reporting
UPDATE questions SET
  explanation = $EXPL$Correct: Under GASB Statement No. 34, paragraph 77, the reconciliation from the governmental fund balance sheet to the government-wide statement of net position converts from the modified accrual basis to the full accrual basis. Key adjustments include adding capital assets (which are not reported in fund statements), removing long-term liabilities (which are excluded from fund balance sheets), and adjusting revenue and expense timing differences. Unlike fund statements that focus on current financial resources and short-term obligations, the government-wide statements require recognition of all economic resources — including infrastructure assets, bonds payable, and pension liabilities — whereas fund balance sheets capture only current assets and current liabilities.$EXPL$
WHERE id = 731;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 678: Stock Compensation and Business Combinations
UPDATE questions SET
  explanation = $EXPL$Correct: Under ASC 718-20-35-7, when stock options expire unexercised, the APIC — stock options balance accumulated during the vesting period is reclassified to general APIC (or APIC — expired stock options). Critically, no reversal of previously recognized compensation expense occurs because the employees rendered the required service during the vesting period and the compensation cost was earned regardless of whether the options were ultimately exercised. The expense recognized over the four-year vesting period ($160,000) remains in the financial statements, whereas the equity classification simply shifts within APIC rather than being reversed through the income statement.$EXPL$
WHERE id = 678;

COMMIT;
