-- Migration: Citation backfill — BAR batch 2 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Business Combinations, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Income Taxes Advanced, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 694: Advanced Consolidations
UPDATE questions SET
  explanation = 'Under ASC 805-10-25-10, when an acquirer obtains control in a step acquisition, the previously held equity interest must be remeasured to acquisition-date fair value, with any resulting gain or loss recognized in earnings. This ensures the entire business combination is measured at fair value on the date control is achieved, providing a consistent measurement basis. Unlike a proportional carryover approach, which would blend historical cost with acquisition-date fair value, ASC 805 requires full fair value remeasurement to reflect the economic substance of gaining control.'
WHERE id = 694;

-- ID 695: Advanced Consolidations
UPDATE questions SET
  explanation = 'Under ASC 810-10-45, intercompany transactions must be fully eliminated in consolidation regardless of transfer direction. In both downstream (parent-to-subsidiary) and upstream (subsidiary-to-parent) sales, the $150,000 unrealized gain is eliminated and the $30,000 annual excess depreciation ($150,000 / 5 years) is reversed. The critical distinction is NCI allocation: in a downstream sale, the parent originated the gain so the full elimination reduces the parent''s share, whereas in an upstream sale per ASC 810-10-45-18, the NCI absorbs its proportionate share (20% of the $150,000 elimination and each $30,000 depreciation adjustment).'
WHERE id = 695;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (1 questions)
-- ============================================================

-- ID 1085: Advanced Lease Transactions
UPDATE questions SET
  explanation = 'Under ASC 842-10-35-1, a lessee must reassess the lease term when a significant event or change in circumstances makes it reasonably certain that a renewal option will be exercised. The lessee remeasures the lease liability using the revised remaining term (4 + 3 = 7 years) at a revised discount rate and adjusts the right-of-use asset accordingly. Unlike a lease modification under ASC 842-10-25-8, which requires agreement between parties, a reassessment is triggered unilaterally by changed circumstances and uses the discount rate at the reassessment date rather than the original rate.'
WHERE id = 1085;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (1 questions)
-- ============================================================

-- ID 671: Advanced Revenue and Intangibles
UPDATE questions SET
  explanation = 'Under ASC 360-10-35-17, the recoverability test (Step 1) compares the asset''s carrying amount to the sum of undiscounted expected future cash flows from the asset''s use and eventual disposition. If undiscounted cash flows exceed the carrying amount, no impairment exists. However, if the asset fails this test, the impairment loss under Step 2 is measured as the excess of carrying amount over fair value, which typically uses discounted cash flows or market data rather than undiscounted amounts.'
WHERE id = 671;

-- ============================================================
-- BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 4830: Business Combinations
UPDATE questions SET
  explanation = 'Under ASC 805-10-25-14, the measurement period allows the acquirer to adjust provisional amounts recognized at the acquisition date as new information is obtained about facts and circumstances that existed at that date. This period cannot exceed one year from the acquisition date. Adjustments made during the measurement period are recorded as if the accounting had been completed on the acquisition date, whereas adjustments after the measurement period are recognized as current-period revisions rather than retrospective corrections.'
WHERE id = 4830;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 713: Derivatives and Hedging
UPDATE questions SET
  explanation = 'Under ASC 815-10-15-22, the normal purchases and normal sales (NPNS) scope exception permits entities to exclude contracts for physical delivery of nonfinancial assets used in normal business operations from derivative accounting. Bridgeport''s forward contract qualifies because it involves physical delivery of copper for regular production use. Unlike net-settled derivative contracts that must be marked to market through earnings under ASC 815, NPNS-eligible contracts are accounted for as executory contracts with recognition at delivery.'
WHERE id = 713;

-- ID 717: Derivatives and Hedging
UPDATE questions SET
  explanation = 'Under ASC 815-10-15-83, an interest rate swap is a derivative contract in which two parties exchange interest payment obligations based on a notional principal amount. Only the net difference between the fixed and floating interest payments is exchanged periodically — no principal changes hands. The notional amount serves solely as the calculation base for determining payment amounts. Unlike a loan agreement where principal is borrowed and repaid, a swap involves no transfer of the notional amount between counterparties.'
WHERE id = 717;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (8 questions)
-- ============================================================

-- ID 609: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Under ASC 220-10 and the AICPA''s financial analysis framework, return on assets (ROA) measures operating profitability relative to the total asset base regardless of how those assets are financed. ROA neutralizes leverage differences because it evaluates returns on total assets rather than equity, making it ideal for cross-company comparisons. While ROE is distorted by differing debt levels because higher leverage amplifies equity returns, ROA provides a leverage-neutral comparison of how efficiently each company uses its total asset base to generate earnings.'
WHERE id = 609;

-- ID 610: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Per AICPA financial statement analysis guidance, horizontal analysis (trend analysis) involves comparing financial data across multiple periods to identify trends by calculating dollar and percentage changes for each line item. For example, revenue growing from $2 million to $2.4 million represents a $400,000 increase (20% growth). This technique reveals trends, turning points, and growth trajectories over time. Unlike vertical (common-size) analysis under ASC 235, which expresses each line item as a percentage of a base figure within a single period, horizontal analysis focuses on period-to-period changes in absolute and relative terms.'
WHERE id = 610;

-- ID 611: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Per AICPA ratio analysis principles, accounts receivable turnover equals net credit sales divided by average accounts receivable. A decline from 12x to 8x means days sales outstanding (DSO) increased from approximately 30 days (365/12) to approximately 46 days (365/8), indicating the company is collecting receivables more slowly. This deterioration suggests weakening credit quality or collection effectiveness. Although stable sales might suggest healthy operations, the declining turnover ratio reveals that receivables are growing relative to sales, unlike a scenario where turnover improves signaling faster collections and stronger liquidity.'
WHERE id = 611;

-- ID 612: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Per AICPA financial analysis guidance, the cash ratio — defined as cash and cash equivalents (per ASC 305-10) divided by current liabilities — is the most conservative liquidity measure. It restricts the numerator to only the most liquid assets, providing the strictest test of a company''s ability to meet short-term obligations immediately. Unlike the current ratio, which includes all current assets such as receivables and inventory that may not be readily convertible to cash, the cash ratio excludes assets that carry collection or liquidation risk.'
WHERE id = 612;

-- ID 613: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Per AICPA leverage analysis and ASC 470 (debt classification), the debt-to-equity ratio equals total liabilities divided by total stockholders'' equity: $6,000,000 / $2,000,000 = 3.0. This indicates Halcyon has $3 of debt financing for every $1 of equity, signifying high financial leverage and significant reliance on creditor financing. A ratio of 3.0 increases financial risk because fixed interest obligations consume a larger share of operating income. Unlike the equity multiplier (assets/equity), which measures total asset leverage, the debt-to-equity ratio directly compares creditor claims to owner claims.'
WHERE id = 613;

-- ID 614: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Per AICPA common-size income statement analysis and ASC 220-10 (income statement presentation), the difference between gross profit margin and operating profit margin represents operating expenses (SG&A) as a percentage of revenue: 40% - 15% = 25%. Gross profit margin captures revenue after deducting cost of goods sold, while operating profit margin further deducts SG&A expenses. The 25% gap quantifies how much revenue is consumed by selling, general, and administrative activities. Unlike net profit margin, which also deducts interest and taxes, the operating margin isolates the impact of core operating expenses on profitability.'
WHERE id = 614;

-- ID 615: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Per AICPA liquidity ratio analysis, the current ratio includes all current assets (cash, receivables, and inventory per ASC 210-10) while the quick ratio excludes inventory. When the current ratio declines but the quick ratio remains stable, the divergence indicates that inventory levels are decreasing. Declining inventory reduces total current assets without affecting quick assets (cash plus receivables), causing only the current ratio to fall. Unlike a scenario where receivables decline — which would reduce both ratios simultaneously — an inventory decrease uniquely affects the current ratio while leaving the quick ratio unchanged.'
WHERE id = 615;

-- ID 2927: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Per AICPA ratio analysis methodology and ASC 310-10 (receivables), accounts receivable turnover equals net credit sales divided by average accounts receivable: $3,600,000 / $400,000 = 9.0 times per year. This measures how efficiently a company collects its receivables, with the average collection period being 365 / 9.0 = approximately 40.6 days. A higher turnover indicates faster collection and more efficient credit management. Unlike calculations using ending AR balances instead of the average, which would distort the ratio, the correct formula requires the mean of beginning and ending balances to smooth seasonal fluctuations.'
WHERE id = 2927;

-- ============================================================
-- FINANCIAL VALUATION METHODS (8 questions)
-- ============================================================

-- ID 649: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Per AICPA valuation standards and ASC 820-10 (fair value measurement), the exit multiple method estimates terminal value by applying a market-derived trading multiple (such as EV/EBITDA) to the projected terminal year financial metric. This market approach anchors the terminal value to observable pricing from comparable companies. Unlike the Gordon Growth perpetuity model, which derives terminal value from an assumed perpetual growth rate applied to free cash flow, the exit multiple method relies on relative valuation benchmarks and is preferred when reliable peer-group trading data is available.'
WHERE id = 649;

-- ID 650: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Per AICPA valuation guidance and ASC 820-10 (fair value hierarchy), revenue-based multiples such as price-to-sales or EV/Revenue are most appropriate for unprofitable, early-stage companies that lack positive earnings or dividends. QuantumLeap''s $8 million in revenue provides a meaningful valuation basis even without profitability. Unlike price-to-earnings (P/E) ratios or dividend discount models, which require positive earnings or dividend payments to produce meaningful values, revenue multiples can be applied to any company generating top-line revenue, making them the standard approach for pre-profit technology companies.'
WHERE id = 650;

-- ID 651: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Per AICPA valuation standards, the two-stage dividend discount model is designed for companies transitioning from above-normal growth to a stable long-term rate, matching Meridian''s profile of 22% growth during the patent period followed by 4% terminal growth. The first stage explicitly models the high-growth period while the second stage applies the Gordon Growth formula for the stable phase. Unlike the constant-growth (Gordon) model, which assumes a single perpetual growth rate and would undervalue the high-growth phase, the two-stage model captures the distinct economic phases of the company''s lifecycle.'
WHERE id = 651;

-- ID 3033: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Per AICPA valuation methodology and ASC 820-10 (income approach to fair value), the Gordon Growth Model calculates enterprise value as the next period''s free cash flow divided by the spread between WACC and the perpetual growth rate: EV = FCFF1 / (WACC - g) = $5,000,000 / (0.10 - 0.03) = $71,428,571. This single-stage DCF model assumes constant growth in perpetuity and requires the growth rate to be less than WACC. Unlike a multi-stage DCF model that projects discrete cash flows before applying a terminal value, the Gordon Growth Model compresses all future value into a single perpetuity calculation.'
WHERE id = 3033;

-- ID 3035: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Per AICPA relative valuation analysis and ASC 820-10 (market approach to fair value), the price-to-earnings (P/E) ratio reflects how much investors are willing to pay per dollar of current earnings. A P/E of 18x versus an industry average of 12x indicates the market expects higher future earnings growth, justifying a premium multiple. Investors pay more per dollar of current earnings because they anticipate faster earnings growth. While overvaluation is one possible explanation, higher growth expectations are the primary driver of P/E premiums within an industry, unlike a lower P/E which would suggest below-average growth prospects.'
WHERE id = 3035;

-- ID 3036: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Per AICPA valuation methodology, free cash flow to equity (FCFE) differs from free cash flow to the firm (FCFF) because FCFE deducts after-tax interest expense and net debt repayments from FCFF: FCFE = FCFF - Interest(1-T) + Net borrowing. FCFE represents cash available exclusively to equity holders after satisfying all debt obligations under ASC 470 (debt). Unlike FCFF, which measures cash flow available to all capital providers (both debt and equity), FCFE isolates the residual cash flow that can be distributed to shareholders or reinvested.'
WHERE id = 3036;

-- ID 3037: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Per AICPA valuation standards and ASC 820-10 (fair value measurement), the EV/EBITDA multiple is applied to EBITDA to derive enterprise value: $10,000,000 x 8 = $80,000,000. Equity value is then calculated by subtracting net debt: $80,000,000 - $20,000,000 = $60,000,000. Enterprise value represents the total value of the firm to all capital providers, while equity value isolates the residual claim belonging to shareholders. Unlike applying the multiple directly to arrive at equity value, the correct approach requires the intermediate step of subtracting net debt from enterprise value.'
WHERE id = 3037;

-- ID 3038: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Per AICPA valuation guidance and ASC 820-10 (income approach), terminal value in a DCF model typically represents 50-80% or more of total enterprise value, reflecting the reality that the explicit forecast period (usually 5-10 years) captures only a fraction of the company''s total value-generating potential. For mature companies like consumer products firms with long useful lives, the proportion skewed toward terminal value is especially pronounced. Unlike the discrete forecast period which models year-by-year cash flows, the terminal value captures all value generated beyond the projection horizon, making growth rate and discount rate assumptions critical.'
WHERE id = 3038;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4847: Foreign Currency Transactions
UPDATE questions SET
  explanation = 'Under ASC 830-10-45-3, when a foreign subsidiary''s functional currency differs from the parent''s reporting currency, the current rate method is used for translation. Assets and liabilities are translated at the current (balance sheet date) exchange rate, equity accounts at historical rates, and income statement items at the weighted-average rate for the period. The resulting translation adjustment is reported in other comprehensive income (OCI) under ASC 830-10-45-12. Unlike the temporal (remeasurement) method used when the functional currency is the reporting currency, the current rate method does not produce transaction gains or losses in earnings.'
WHERE id = 4847;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 1193: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = 'Under GASB Statement No. 34, paragraph 62, internal service funds predominantly serve governmental activities and are therefore included with governmental activities on the government-wide statements. The fund''s net position of $850,000 is added in the balance sheet reconciliation, and its change in net position of $120,000 is added in the activities statement reconciliation. Unlike enterprise funds, which are reported as business-type activities, internal service funds are allocated to governmental activities because their primary customers are governmental departments.'
WHERE id = 1193;

-- ID 1195: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = 'Under GASB Statement No. 34, paragraphs 77-80, governmental funds use the current financial resources measurement focus and modified accrual basis, which does not recognize capital assets or depreciation. Since capital assets are excluded from fund financial statements, the $1,400,000 in depreciation appears only on the government-wide statements under the economic resources measurement focus. This creates a reconciling item between fund-level and government-wide reporting. Unlike proprietary funds, which already recognize capital assets and depreciation under full accrual, governmental funds require this adjustment during reconciliation.'
WHERE id = 1195;

-- ============================================================
-- INCOME TAXES ADVANCED (1 questions)
-- ============================================================

-- ID 4889: Income Taxes Advanced
UPDATE questions SET
  explanation = 'Under ASC 740-20-45-2, intraperiod tax allocation requires the total income tax expense or benefit for a period to be allocated among continuing operations, discontinued operations, other comprehensive income, and items charged or credited directly to stockholders'' equity. This ensures each component of comprehensive income reflects its own tax effect. Sycamore must allocate the tax benefit from the $500,000 operating loss, the tax on the $120,000 OCI gain, and the tax on the $60,000 prior-period adjustment separately, rather than aggregating the entire tax effect in a single line item as would occur without intraperiod allocation.'
WHERE id = 4889;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 4867: Intangible Assets Advanced
UPDATE questions SET
  explanation = 'Under ASC 350-30-35-6, finite-lived intangible assets acquired in a business combination must be amortized over their estimated useful life. Customer relationships are typically classified as finite-lived because the economic benefit diminishes over time. Annual amortization equals $3,000,000 / 10 years = $300,000 using the straight-line method. Unlike goodwill, which is an indefinite-lived intangible tested for impairment annually under ASC 350-20 rather than amortized, customer relationships have determinable useful lives and are systematically amortized.'
WHERE id = 4867;

-- ============================================================
-- INTERFUND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 1200: Interfund Transactions
UPDATE questions SET
  explanation = 'Under GASB Statement No. 33, paragraph 18, property taxes are classified as imposed nonexchange revenues — assessments levied by a government on nongovernmental entities with no underlying exchange transaction. Under the modified accrual basis per GASB 33, the portion not expected to be collected within the 60-day availability period after year-end is reported as a deferred inflow of resources. Unlike derived tax revenues such as sales taxes, which arise from underlying exchange transactions between third parties, imposed nonexchange revenues originate solely from the government''s authority to levy assessments.'
WHERE id = 1200;

-- ID 1201: Interfund Transactions
UPDATE questions SET
  explanation = 'Under GASB Statement No. 33, paragraph 14, sales taxes are classified as derived tax revenues because the government derives its revenue from underlying exchange transactions between buyers and sellers. The tax is imposed on the exchange activity (retail sales) of other parties. Recognition occurs when the underlying exchange transaction takes place, provided the resources are available. Unlike imposed nonexchange revenues such as property taxes, which have no underlying exchange transaction, derived tax revenues depend on and arise from voluntary transactions between third parties.'
WHERE id = 1201;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (1 questions)
-- ============================================================

-- ID 3248: Internal-Use Software and Cloud Computing
UPDATE questions SET
  explanation = 'Under ASC 350-40-25-2, costs incurred during the application development stage of an internal-use software project are capitalized, including external direct costs of materials and services, payroll costs for employees directly devoted to the project, and interest costs incurred during development. These costs are capitalized because they directly contribute to creating the asset''s future economic benefit. Unlike preliminary project stage costs (conceptual formulation, vendor evaluation) and post-implementation costs (training, maintenance), which are expensed as incurred under ASC 350-40-25-1, application development stage costs meet the capitalization criteria.'
WHERE id = 3248;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (2 questions)
-- ============================================================

-- ID 1091: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = 'Under ASC 715-30-35-22, the difference between the actual return on plan assets ($3.2 million) and the expected return ($2.8 million) is a $400,000 asset-related actuarial gain recognized in other comprehensive income (OCI). This gain accumulates in accumulated other comprehensive income (AOCI) and is subject to amortization into net periodic pension cost via the corridor approach. Unlike immediate recognition in earnings, ASC 715 defers these actuarial gains and losses in OCI to smooth the volatility of pension cost, amortizing only amounts exceeding the corridor threshold.'
WHERE id = 1091;

-- ID 1092: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = 'Under ASC 715-30-35-24, the corridor for amortization of cumulative unrecognized actuarial gains and losses equals 10% of the greater of the beginning projected benefit obligation (PBO) or the beginning fair value of plan assets. Net gains or losses accumulated in AOCI that exceed this corridor are subject to minimum amortization over the average remaining service period of active employees. Unlike immediate full recognition, the corridor approach permits a band of unrecognized gains and losses, with only the excess above 10% of the larger benchmark triggering required amortization.'
WHERE id = 1092;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (7 questions)
-- ============================================================

-- ID 625: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Per AT-C Section 305 (SSAE standards on prospective financial information), a seasonal index of 1.15 means the quarter''s demand is typically 15% above the average quarterly level. The seasonally adjusted Q4 forecast equals the average quarterly sales multiplied by the seasonal index: $840,000 x 1.15 = $966,000. To deseasonalize actual Q4 data, divide by 1.15. Unlike a year-over-year growth rate, which compares the same quarter across years, a seasonal index measures a quarter''s deviation from the overall quarterly average.'
WHERE id = 625;

-- ID 626: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Per AT-C Section 305.02 (SSAE standards), a financial forecast presents expected results based on the responsible party''s best-estimate assumptions about conditions it expects to exist and the course of action it expects to take. A financial projection, by contrast, presents results based on one or more hypothetical (what-if) assumptions that may or may not occur. The distinction lies in the nature of the assumptions — expected versus hypothetical — rather than the level of detail or the time horizon covered.'
WHERE id = 626;

-- ID 627: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Per AICPA analytical procedures guidance (AU-C Section 520), the standard error of the estimate (SEE) measures the average distance of observed data points from the regression line, indicating the typical magnitude of prediction errors in the same units as the dependent variable. A smaller SEE means observations cluster more tightly around the fitted line, producing more precise predictions. Unlike R-squared, which measures the proportion of variation explained by the model (a relative measure), the SEE provides an absolute measure of prediction accuracy in the original measurement units.'
WHERE id = 627;

-- ID 2970: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Per AICPA cost-volume-profit (CVP) analysis and COSO risk assessment principles, before automation the contribution margin is $20/unit ($50 - $30) with breakeven at 20,000 units ($400,000 / $20). After automation, the contribution margin rises to $32/unit ($50 - $18) but breakeven increases to 37,500 units ($1,200,000 / $32) because fixed costs tripled. The degree of operating leverage (DOL = Contribution Margin / Operating Income) increases with the higher fixed cost proportion, meaning percentage changes in sales volume produce amplified percentage changes in operating income. Unlike a low-leverage structure where profits grow slowly but losses are contained, high operating leverage creates both greater upside potential and greater downside risk.'
WHERE id = 2970;

-- ID 2971: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Per AICPA managerial accounting and CVP analysis methodology, the revenue required to achieve a target pre-tax profit equals (Fixed Costs + Target Profit) / Contribution Margin Ratio: ($200,000 + $100,000) / 0.40 = $750,000. The 40% contribution margin ratio means each revenue dollar contributes $0.40 toward covering fixed costs and generating profit. After fixed costs are covered, each additional dollar still contributes $0.40 to profit. Unlike breakeven analysis, which only solves for fixed cost recovery (requiring $500,000 in this case), target profit analysis adds the desired profit to the numerator to determine the total revenue needed.'
WHERE id = 2971;

-- ID 2972: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Per AICPA CVP sensitivity analysis and COSO risk assessment, Thornfield''s operating income declines 7.5% ($75,000) from a 10% variable cost increase because variable costs are small relative to total costs ($5 of $25 cost structure). Birchwood''s operating income declines 41.5% ($270,000) because variable costs dominate its cost structure ($18 of $25). The analytical insight is that operating leverage is asymmetric: high fixed-cost companies like Thornfield are more sensitive to volume changes, whereas high variable-cost companies like Birchwood are more sensitive to input cost shocks. Unlike the assumption that high leverage always means more risk, the source of the shock determines which cost structure is more vulnerable.'
WHERE id = 2972;

-- ID 2973: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Per COSO ERM framework and AICPA quantitative risk analysis methodology, Monte Carlo simulation simultaneously varies multiple input variables according to their probability distributions across thousands of iterations, producing a full distribution of possible outcomes with associated probabilities. This provides a comprehensive risk profile showing the range and likelihood of results. Unlike sensitivity analysis, which typically varies one input at a time while holding others constant (one-at-a-time analysis), Monte Carlo captures the interaction effects and correlations among multiple uncertain variables simultaneously.'
WHERE id = 2973;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (7 questions)
-- ============================================================

-- ID 659: Risk Management and Economics
UPDATE questions SET
  explanation = 'Under ASC 815-20-25, a pay-fixed, receive-floating interest rate swap effectively converts variable-rate debt into a fixed-rate obligation, hedging against the cash flow variability caused by rising interest rates. Pacific Warehousing pays a fixed 5.2% to the swap counterparty and receives SOFR, which offsets its variable-rate loan payments. If rates rise, higher floating receipts from the swap offset higher debt payments. Unlike leaving the variable-rate exposure unhedged, where the company benefits from declining rates, the swap locks in a fixed cost and eliminates both upside and downside rate exposure.'
WHERE id = 659;

-- ID 660: Risk Management and Economics
UPDATE questions SET
  explanation = 'Under ASC 815-10-15 (derivative instruments), the forward contract locked in the exchange at $1.08/€, producing $2,160,000 (€2M x $1.08). At the spot rate of $1.05/€, unhedged proceeds would have been $2,100,000 (€2M x $1.05). The forward contract produced a $60,000 gain versus the unhedged alternative. This illustrates the fundamental purpose of currency forwards: eliminating exchange rate uncertainty by fixing the conversion rate. Unlike an option, which would allow the company to benefit from favorable rate movements while limiting downside, the forward obligates both parties regardless of where the spot rate settles.'
WHERE id = 660;

-- ID 3071: Risk Management and Economics
UPDATE questions SET
  explanation = 'Per financial risk management frameworks (COSO ERM and Basel standards), interest rate risk is the risk that changes in market interest rates will adversely affect the value of fixed-income securities, increase the cost of variable-rate borrowings, or alter refinancing costs of maturing obligations. Rising rates reduce the market value of existing fixed-rate bonds and increase interest expense on floating-rate debt. Unlike credit risk (the risk of counterparty default) or currency risk (the risk of exchange rate fluctuations), interest rate risk specifically addresses the impact of rate movements on an entity''s financial position and cash flows.'
WHERE id = 3071;

-- ID 3072: Risk Management and Economics
UPDATE questions SET
  explanation = 'Per financial risk management principles, variable-rate debt resets interest payments based on prevailing market rates, directly exposing the borrower to interest rate risk. With $50 million in SOFR-linked term loans, a significant rate increase would substantially raise Brookfield''s interest expense, reducing both cash flow and profitability. This exposure can be hedged using interest rate swaps (converting to fixed) or caps (capping maximum rate) under ASC 815. Unlike fixed-rate debt, which provides payment certainty regardless of market rate movements, variable-rate debt transfers interest rate risk entirely to the borrower.'
WHERE id = 3072;

-- ID 3073: Risk Management and Economics
UPDATE questions SET
  explanation = 'Per AICPA economic analysis guidance and COSO ERM risk identification, consumer confidence is a leading indicator that typically declines before the economy officially enters recession, as consumers anticipate deteriorating conditions and curtail spending. This forward-looking behavior makes consumer confidence valuable for predicting economic turning points. Unlike GDP, which is a coincident indicator that moves with the current economic cycle, and tax revenue, which is a lagging indicator reflecting past activity, leading indicators like consumer confidence provide advance warning of directional economic shifts.'
WHERE id = 3073;

-- ID 3074: Risk Management and Economics
UPDATE questions SET
  explanation = 'Per AICPA economic analysis and COSO ERM market risk assessment, an inverted yield curve — where short-term rates exceed long-term rates — historically signals market expectations of future economic weakness and potential recession. Investors accept lower long-term yields because they anticipate the central bank will cut rates to combat economic slowdown, making current long-term rates relatively attractive. Inverted yield curves have preceded most U.S. recessions. Unlike a normal (upward-sloping) yield curve, which reflects expectations of continued growth and compensates for the term premium of longer maturities, an inverted curve suggests the market is pricing in contractionary monetary policy.'
WHERE id = 3074;

-- ID 3075: Risk Management and Economics
UPDATE questions SET
  explanation = 'Per derivative hedging analysis under ASC 815, futures and options present fundamentally different risk-return profiles. The futures contract locks in $80/barrel regardless of market price, costing $4,000,000 total — an $8/barrel overpayment ($400,000) when spot falls to $72. The call options expire worthless at the $72 spot price, so Redstone buys at spot for $3,600,000 plus the $150,000 premium, totaling $3,750,000 — saving $250,000 versus futures. Unlike futures, which provide symmetric price certainty eliminating both upside and downside, options provide asymmetric protection: they cap the maximum purchase price while preserving the ability to benefit from favorable price declines, at the cost of the premium paid.'
WHERE id = 3075;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 733: State and Local Government Reporting
UPDATE questions SET
  explanation = 'Under GASB Statement No. 34 and the modified accrual basis of accounting, debt service principal payments in governmental funds are recognized as expenditures when the payment becomes legally due, not when the liability was originally incurred. This reflects the current financial resources measurement focus, which tracks only resources available to meet near-term obligations. The actual reduction of the long-term liability appears only on the government-wide statements under full accrual accounting. Unlike full accrual, where the liability reduction and interest expense are recognized as incurred, modified accrual records the outflow as an expenditure at the payment date.'
WHERE id = 733;

-- ID 734: State and Local Government Reporting
UPDATE questions SET
  explanation = 'Under GASB Statement No. 34, paragraph 23, the modified approach is an alternative to depreciation for eligible infrastructure assets. A government electing this approach must manage the assets using an asset management system that includes an up-to-date inventory, perform condition assessments at least every three years, and demonstrate that the assets are being maintained at or above an established condition level. If these requirements are met, preservation costs are expensed rather than capitalized. Unlike the standard depreciation approach, which systematically allocates cost over useful life regardless of maintenance, the modified approach recognizes that properly maintained infrastructure may not decline in value.'
WHERE id = 734;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 679: Stock Compensation and Business Combinations
UPDATE questions SET
  explanation = 'Under ASC 718-10-25-2, restricted stock represents actual shares of company stock granted to the employee, subject to forfeiture if vesting conditions (typically service or performance conditions) are not met. The fair value equals the grant-date market price because no exercise price is required — the employee receives the full value of the shares upon vesting. Unlike stock options, which give the holder the right to purchase shares at a predetermined exercise price and derive value only from appreciation above that price, restricted stock conveys immediate ownership interest with full share value at vesting.'
WHERE id = 679;

COMMIT;
