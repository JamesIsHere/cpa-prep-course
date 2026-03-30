-- Migration: Citation backfill — BAR batch 9 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Business Combinations, Capital Structure and Valuation, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Income Taxes Advanced, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 3170: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$Under ASC 810-10-40-5, when a parent loses control of a subsidiary through deconsolidation, it must measure any retained interest at fair value, add the proceeds received, and recognize a gain or loss equal to the difference between that total and the carrying amount of the subsidiary''s net assets (including goodwill and noncontrolling interest). This ensures the parent''s financial statements reflect the economic reality of the disposal at current values. However, simply derecognizing the subsidiary at book value without remeasuring retained interests would misstate the gain or loss, because ASC 810 requires fair value measurement at the date control is lost.$EXPL$
WHERE id = 3170;

-- ID 3171: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$Under ASC 810-10-45-1, intercompany balances such as loans between a parent and its consolidated subsidiary must be fully eliminated in the consolidated financial statements because the consolidated entity cannot hold a receivable from or payable to itself. This elimination applies to both the principal balances and any related intercompany interest income and expense. Unlike intercompany transactions with equity-method investees, which are only partially eliminated, transactions with consolidated subsidiaries require complete elimination since 100% of the subsidiary''s accounts are included in the consolidated statements.$EXPL$
WHERE id = 3171;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (1 questions)
-- ============================================================

-- ID 3286: Advanced Lease Transactions
UPDATE questions SET
  explanation = $EXPL$Under ASC 842-40-30-1, when a sale-leaseback transaction includes a sale price that exceeds the asset''s fair value, the excess is not recognized as a gain but instead recorded as a financial liability representing additional financing provided by the buyer-lessor. In this case, the $500,000 excess ($3.5M sale price minus $3.0M fair value) is treated as a loan to be repaid through above-market lease payments. Unlike a sale at fair value where the full gain would be recognized under ASC 842-40-25, the above-market portion is separated because it represents a financing arrangement rather than a true sale component.$EXPL$
WHERE id = 3286;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (1 questions)
-- ============================================================

-- ID 3112: Advanced Revenue and Intangibles
UPDATE questions SET
  explanation = $EXPL$Under ASC 606-10-45-3, a contract asset represents an entity''s right to consideration in exchange for goods or services transferred to the customer, where that right is conditioned on something other than the passage of time (such as completing another performance obligation). Once the condition is satisfied and the right becomes unconditional, the contract asset is reclassified as a receivable per ASC 606-10-45-4. A contract liability, in contrast, arises when a customer pays consideration before the entity transfers goods or services, representing the entity''s obligation to perform.$EXPL$
WHERE id = 3112;

-- ============================================================
-- BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 4838: Business Combinations
UPDATE questions SET
  explanation = $EXPL$Under ASC 805-30-35-1, contingent consideration classified as a liability is remeasured to fair value at each reporting date, with changes recognized in earnings. The $400,000 increase from $1,200,000 to $1,600,000 is recorded as a loss in current-period income because it reflects a fair value change occurring after the measurement period. Unlike measurement period adjustments under ASC 805-10-25-13, which retroactively adjust goodwill for new information about acquisition-date conditions, post-measurement-period fair value changes flow through the income statement rather than adjusting the purchase price allocation.$EXPL$
WHERE id = 4838;

-- ============================================================
-- CAPITAL STRUCTURE AND VALUATION (1 questions)
-- ============================================================

-- ID 5704: Capital Structure and Valuation
UPDATE questions SET
  explanation = $EXPL$Under financial analysis principles consistent with ASC 470-10, the interest coverage ratio (times interest earned) equals EBIT divided by interest expense: $3,600,000 / ($15,000,000 x 8%) = $3,600,000 / $1,200,000 = 3.0x, exactly meeting the lender''s minimum threshold. While technically compliant, the absence of any cushion exposes Ashworth to immediate covenant violation risk if EBIT declines. Choice B is incorrect because it overstates the ratio to 4.5x, likely by using an incorrect interest rate or partial-year interest figure, which would mask the tight coverage position.$EXPL$
WHERE id = 5704;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 3200: Derivatives and Hedging
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-20-25-1, a receive-fixed, pay-floating interest rate swap paired with fixed-rate debt creates a fair value hedge that effectively converts the debt from fixed-rate to floating-rate exposure. The company pays 5% fixed on its bonds and receives fixed on the swap, offsetting those payments, while paying a floating rate on the swap leg. The net result is a floating-rate obligation. Unlike a cash flow hedge under ASC 815-20-25-15, which protects against variability in future cash flows from floating-rate exposure, a fair value hedge addresses changes in the fair value of the fixed-rate instrument.$EXPL$
WHERE id = 3200;

-- ID 3201: Derivatives and Hedging
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-20-25-3, hedge accounting requires formal designation and documentation at inception, an identified hedged risk and hedging instrument, and an expectation that the hedge will be highly effective. The derivative does not need to be exchange-traded to qualify; OTC instruments such as interest rate swaps and forward contracts routinely meet hedge accounting requirements. Unlike the clearing mandate for certain standardized swaps under Dodd-Frank, ASC 815 imposes no exchange-trading requirement, focusing instead on documentation, effectiveness testing, and proper risk identification.$EXPL$
WHERE id = 3201;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (9 questions)
-- ============================================================

-- ID 7966: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under financial analysis standards consistent with ASC 210-10-45, working capital is defined as current assets minus current liabilities, measuring the short-term liquidity cushion available to meet near-term obligations. For Oakridge, working capital equals $820,000 minus $540,000, or $280,000, indicating a positive liquidity buffer. Choice A is incorrect because total assets minus total liabilities calculates net worth or book value under the accounting equation, which is a measure of long-term solvency rather than short-term liquidity.$EXPL$
WHERE id = 7966;

-- ID 7967: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under financial analysis principles consistent with ASC 470-10 and the AICPA framework for capital structure analysis, a debt-to-equity ratio of 1.8 indicates heavy leverage, and a times interest earned ratio of 2.5 provides only modest coverage of interest obligations. Issuing equity reduces leverage and avoids additional interest expense that could push TIE toward dangerous levels. Choice A is incorrect because, although debt financing avoids share dilution, the company''s already elevated leverage and thin interest coverage indicate limited remaining debt capacity, making equity the more prudent financing strategy.$EXPL$
WHERE id = 7967;

-- ID 7968: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under financial analysis standards consistent with ASC 220-10, return on assets equals net income divided by average total assets: $120,000 / $1,000,000 = 12.0%. ROA measures how efficiently a company uses its asset base to generate profit. Choice B (30.0%) is incorrect because it divides net income by average stockholders'' equity ($120,000 / $400,000), which calculates return on equity (ROE) rather than ROA. While both are profitability ratios, ROA uses total assets as the denominator to capture overall asset efficiency.$EXPL$
WHERE id = 7968;

-- ID 7969: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under the AICPA''s economic analysis framework for financial forecasting, leading indicators change direction before the overall economy shifts, providing early warning signals of expansion or contraction. Building permits are classified as a leading indicator by the Conference Board because new construction activity precedes broader economic movement. Choice C (unemployment rate) is incorrect because it is a lagging indicator that typically rises after a recession has already begun and falls only after recovery is well underway, whereas leading indicators anticipate rather than confirm economic turning points.$EXPL$
WHERE id = 7969;

-- ID 7970: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under regression analysis methodology used in managerial accounting and financial forecasting, the predicted value is calculated by substituting the planned activity level into the cost equation: Y = $25,000 + $8.50(6,000) = $25,000 + $51,000 = $76,000. The $25,000 intercept represents fixed overhead per ASC 330-10-30 cost accumulation principles, and $8.50 per hour is the variable rate. Choice A ($51,000) is incorrect because it includes only the variable component ($8.50 x 6,000), omitting the $25,000 fixed overhead that must be included in total estimated costs.$EXPL$
WHERE id = 7970;

-- ID 7972: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under exponential smoothing methodology consistent with ASC 280-10 segment reporting and managerial forecasting techniques, increasing alpha from 0.2 to 0.7 assigns 70% weight to the most recent actual value instead of 20%, as defined by the formula: Forecast = alpha x Actual + (1 - alpha) x Previous Forecast. When demand has shifted permanently upward and forecasts consistently underestimate actuals, a higher alpha enables faster convergence to the new demand level. Choice D is incorrect because, although higher alpha does increase sensitivity to random noise, the primary benefit during a sustained demand shift is eliminating the persistent systematic forecast bias.$EXPL$
WHERE id = 7972;

-- ID 7973: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under prospective analysis techniques consistent with AICPA AT-C Section 301 for financial forecasts and projections, sensitivity analysis measures the impact of changing one input variable at a time on a projected outcome, helping identify which assumptions carry the greatest risk to forecast accuracy. This one-at-a-time approach isolates the effect of each driver. Choice C is incorrect because it describes scenario analysis, which simultaneously changes multiple variables to model different states of the world such as best-case, base-case, and worst-case outcomes, rather than isolating individual assumption impacts.$EXPL$
WHERE id = 7973;

-- ID 7974: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under the percentage-of-sales method for pro forma financial statements, consistent with financial planning frameworks referenced in AICPA guidance, the difference between projected total assets and the sum of projected liabilities plus equity (including retained earnings) represents external financing needed (EFN). This $380,000 gap identifies the additional capital that must be raised through new debt or equity issuance. Choice C is incorrect because the gap is not a forecasting error but rather the intentional output of the model, designed to quantify how much external capital is required to support projected growth.$EXPL$
WHERE id = 7974;

-- ID 7975: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under horizontal analysis methodology consistent with ASC 205-10 and SEC Regulation S-K comparative reporting requirements, percentage change equals (current year minus base year) divided by base year, multiplied by 100: ($920,000 - $800,000) / $800,000 x 100 = 15.0%. The base year (2024) serves as the denominator for computing the rate of change. Choice A (13.0%) is incorrect because it divides the change by the current year amount ($120,000 / $920,000), using the wrong reference point, which understates the actual growth rate.$EXPL$
WHERE id = 7975;

-- ============================================================
-- FINANCIAL VALUATION METHODS (9 questions)
-- ============================================================

-- ID 13247: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35-2 and valuation practice for enterprise value, minority interest (noncontrolling interest) is added to enterprise value because EV represents the total value of the firm to all capital providers. Enterprise value = Market cap + Debt + Minority interest - Cash = $200M + $50M + $10M - $15M = $245M. The consolidated financial statements include 100% of the subsidiary''s operations, so EV must include the minority holders'' claim. Choice B is incorrect because subtracting minority interest would understate enterprise value by excluding a legitimate claim on the consolidated entity''s cash flows.$EXPL$
WHERE id = 13247;

-- ID 13248: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under capital budgeting principles consistent with ASC 360-10-35 for asset investment analysis, the discounted payback period improves on the simple payback by discounting each future cash flow to its present value before determining how long recovery takes, thereby incorporating the time value of money. This addresses the simple payback''s fundamental flaw of treating all cash flows equally regardless of timing. Choice A is incorrect because neither method considers cash flows occurring after the payback point; both share this limitation, unlike NPV or IRR which evaluate the full cash flow stream.$EXPL$
WHERE id = 13248;

-- ID 14243: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under CAPM and the Hamada equation used in valuation consistent with ASC 820 fair value principles, unlevered beta = levered beta / [1 + (1 - T) x D/E]. Substituting: 1.5 / [1 + (0.75 x 0.60)] = 1.5 / 1.45 = 1.03. This removes the financial risk component of beta, isolating business risk only for the unlevered private target. Choice B is incorrect because using the levered beta of 1.5 without adjustment ignores the comparable company''s leverage, which inflates beta beyond the pure business risk that is relevant for the all-equity target.$EXPL$
WHERE id = 14243;

-- ID 14244: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under the dividend growth model adjusted for flotation costs, consistent with ASC 480-10 and corporate finance principles, the cost of newly issued equity = D1 / [P0 x (1 - f)] + g = $3.00 / [$50 x (1 - 0.06)] + 0.04 = $3.00 / $47.00 + 0.04 = 6.38% + 4.0% = 10.38%. Flotation costs reduce net proceeds per share, thereby increasing the required return. Choice A is incorrect because it uses the full $50 stock price without deducting the 6% flotation cost, which understates the true cost of raising new equity capital.$EXPL$
WHERE id = 14244;

-- ID 14245: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under valuation methodology consistent with ASC 820-10-35 fair value measurement, the build-up method sums individual risk components without using beta: risk-free rate + equity risk premium + size premium + company-specific premium = 4.0% + 6.0% + 3.5% + 2.0% = 15.50%. This approach is preferred for private companies where observable beta data is unavailable. Choice A is incorrect because it includes only the risk-free rate and equity risk premium (10.0%), omitting the size and company-specific premiums that are critical for accurately pricing risk in small private companies.$EXPL$
WHERE id = 14245;

-- ID 14247: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under valuation theory consistent with ASC 820-10-35-3, the adjusted present value (APV) method is more appropriate when leverage changes significantly over time because it values the firm in two separate steps: (1) discounting unlevered free cash flows at the unlevered cost of equity, and (2) separately valuing the present value of interest tax shields. This avoids the WACC method''s assumption of a constant capital structure. Choice B is incorrect because APV does not inherently produce a higher valuation than WACC-based DCF; when assumptions are consistent, both methods should yield similar enterprise values.$EXPL$
WHERE id = 14247;

-- ID 14248: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 805-20-25-10 and the multi-period excess earnings method (MPEEM) used in purchase price allocations, contributory asset charges represent the economic returns attributable to other supporting assets (working capital, fixed assets, assembled workforce) that contribute to generating cash flows from the subject intangible. These charges are deducted to isolate the excess earnings attributable solely to the intangible being valued, such as customer relationships. Choice A is incorrect because risk premiums are adjustments to the discount rate applied to projected cash flows, not deductions from the cash flows themselves within the MPEEM framework.$EXPL$
WHERE id = 14248;

-- ID 14249: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 805-20-30-1 and fair value measurement principles, the tax amortization benefit (TAB) increases an intangible''s fair value because a market participant would pay more for a tax-deductible asset. The TAB-adjusted fair value = pre-tax value / (1 - TAB factor) = $10,000,000 / (1 - 0.12) = $10,000,000 / 0.88 = approximately $11,364,000. The TAB factor reflects the present value of tax savings from amortizing the Section 197 intangible over 15 years. Choice B is incorrect because it adds the TAB as a simple percentage markup ($10M x 1.12 = $11.2M), rather than applying the correct gross-up formula.$EXPL$
WHERE id = 14249;

-- ID 14250: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 805-20-30-1 and purchase price allocation consistency checks, the weighted average return on assets (WARA) should approximately equal the acquirer''s WACC when the PPA is internally consistent. When WARA (excluding goodwill) falls below WACC, it indicates that goodwill — as a residual asset carrying the highest risk and required return — fills the gap, which is the expected outcome. Choice A is incorrect because a lower WARA does not mean identified assets are overstated; rather, tangible and intangible assets inherently carry lower risk than the overall enterprise, while goodwill absorbs the remaining risk premium.$EXPL$
WHERE id = 14250;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4858: Foreign Currency Transactions
UPDATE questions SET
  explanation = $EXPL$Under ASC 830-30-40-1, upon the sale or substantially complete liquidation of an investment in a foreign entity, the cumulative translation adjustment (CTA) balance that has accumulated in accumulated other comprehensive income (AOCI) is reclassified into net income as part of the gain or loss on disposal. This release recognizes in earnings the cumulative effect of exchange rate changes that were previously deferred in equity. Unlike ongoing translation adjustments that remain in AOCI under ASC 830-30-45-12 while the investment is held, disposal triggers the one-time reclassification into the income statement.$EXPL$
WHERE id = 4858;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 3324: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraphs 77-79, bond premiums received at issuance are reported as other financing sources in governmental funds alongside the face amount of the bonds. They are not amortized in the fund statements because governmental funds use the current financial resources measurement focus. On the government-wide statements, however, the premium is amortized over the bond term to reduce interest expense under the economic resources measurement focus. The GASB 34 reconciliation adjusts for this difference, whereas failing to amortize the premium on the government-wide statements would overstate interest expense.$EXPL$
WHERE id = 3324;

-- ID 3402: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraphs 77-79, the reconciliation from total governmental fund balances to net position of governmental activities adjusts for differences between the current financial resources and economic resources measurement focuses. Typical adjustments include adding capital assets, subtracting long-term liabilities, and adjusting for pension-related deferred amounts. Enterprise fund net position is not included in this reconciliation because enterprise funds already use the economic resources measurement focus and are reported under business-type activities, unlike governmental funds that require conversion to full accrual.$EXPL$
WHERE id = 3402;

-- ============================================================
-- INCOME TAXES ADVANCED (1 questions)
-- ============================================================

-- ID 4896: Income Taxes Advanced
UPDATE questions SET
  explanation = $EXPL$Under ASC 740-270-30-2, discrete items are recognized entirely in the interim period in which they occur rather than being spread across the year through the estimated annual effective tax rate (AETR). Examples include effects of enacted changes in tax law, resolution of uncertain tax positions under ASC 740-10, and changes in valuation allowances unrelated to current-year ordinary income. Unlike ordinary income and expense items that flow through the AETR to produce a smoothed interim tax provision, discrete items are unusual or infrequent events that distort the annual rate and therefore receive period-specific treatment.$EXPL$
WHERE id = 4896;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 4878: Intangible Assets Advanced
UPDATE questions SET
  explanation = $EXPL$Under ASC 350-30-25-7, a defensive intangible asset acquired in a business combination is separately recognized at fair value and amortized over its useful life, which is the period during which it prevents competitors from gaining access — not the period of the acquirer''s active use. ASC 350-30-35-3 confirms that the useful life may be shorter than the asset''s full legal or economic life. Unlike intangible assets the acquirer actively uses where useful life reflects the period of expected economic benefit, a defensive asset''s life is measured by its competitive shielding function.$EXPL$
WHERE id = 4878;

-- ============================================================
-- INTERFUND TRANSACTIONS (1 questions)
-- ============================================================

-- ID 3339: Interfund Transactions
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraph 58, interfund balances between governmental activities and business-type activities are reported as internal balances on the government-wide statement of net position. These balances are not eliminated because they cross activity-type boundaries — the General Fund represents governmental activities while the Water Enterprise Fund represents business-type activities. Unlike interfund balances within the same activity type, which are eliminated during government-wide consolidation, cross-activity balances are presented as ''internal balances'' to maintain the distinction between the two activity columns.$EXPL$
WHERE id = 3339;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (1 questions)
-- ============================================================

-- ID 3260: Internal-Use Software and Cloud Computing
UPDATE questions SET
  explanation = $EXPL$Under ASU 2018-15 (codified in ASC 350-40-35-8A), amortization of capitalized implementation costs for a hosting arrangement classified as a service contract is presented in the same income statement line item as the ongoing hosting fees, typically SG&A or cost of services. This ensures consistent expense classification for all costs related to the hosting arrangement. Unlike capitalized costs for internal-use software under ASC 350-40-35 that are amortized as depreciation or amortization expense, hosting arrangement implementation costs follow the service contract''s expense classification.$EXPL$
WHERE id = 3260;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (1 questions)
-- ============================================================

-- ID 3302: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = $EXPL$Under ASC 715-60-20, the expected postretirement benefit obligation (EPBO) represents the total expected cost of all postretirement benefits for an employee over their full retirement period. The accumulated postretirement benefit obligation (APBO) is the portion of the EPBO attributed to service rendered to date, calculated by prorating the EPBO based on service to date versus total expected service to the full eligibility date. At the full eligibility date, the APBO equals the EPBO. Unlike the EPBO, which reflects the total lifetime obligation regardless of service rendered, the APBO grows incrementally with each year of employee service.$EXPL$
WHERE id = 3302;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (7 questions)
-- ============================================================

-- ID 12988: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under AICPA AT-C Section 301 for prospective financial information, the jury of executive opinion is a qualitative forecasting method that combines the subjective judgment of senior managers from different functional areas to produce a consensus forecast. It is particularly useful when no historical data exists, such as for new product launches. Choice A (exponential smoothing) is incorrect because it is a quantitative time-series method requiring historical observations and a smoothing constant, whereas the jury of executive opinion relies on managerial expertise rather than statistical data.$EXPL$
WHERE id = 12988;

-- ID 12990: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under AICPA AT-C Section 301 for prospective financial information, the forecast horizon refers to the length of the future time period covered by the forecast — for example, one quarter, one year, or five years. Longer horizons generally involve greater uncertainty and require broader assumptions about future economic and operating conditions. Choice A is incorrect because the number of independent variables describes model complexity (as in multiple regression), not the time frame of the forecast, which is the defining characteristic of the forecast horizon.$EXPL$
WHERE id = 12990;

-- ID 12991: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under statistical validation principles applied in financial forecasting per AICPA AT-C Section 301, training and testing a regression model on the same dataset inflates apparent accuracy because the model can fit noise specific to that sample — a condition known as overfitting. A holdout (out-of-sample) test reserves a portion of data not used in estimation to evaluate predictive power on unseen observations, providing a more reliable measure of forecast accuracy. Choice B is incorrect because 60 observations generally exceeds minimum sample requirements for regression; the chief risk officer''s concern is the lack of out-of-sample validation, not insufficient data.$EXPL$
WHERE id = 12991;

-- ID 12993: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under regression diagnostics applied in financial forecasting consistent with AICPA AT-C Section 301, the F-test evaluates whether the model as a whole explains significantly more variance than an intercept-only model. A p-value of 0.12 exceeds the conventional 0.05 significance threshold, meaning the null hypothesis that all coefficients are zero cannot be rejected. Despite R-squared of 0.78, the model lacks statistical significance, likely due to small sample size or multicollinearity. Choice B is incorrect because R-squared alone does not determine statistical significance; the F-test p-value must fall below the chosen significance level to confirm model reliability.$EXPL$
WHERE id = 12993;

-- ID 12994: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under the percentage-of-sales method for pro forma analysis consistent with AICPA AT-C Section 301 prospective financial guidance, fixed assets at 50% of sales would project $14 million in fixed assets for $28 million in revenue. However, at 85% capacity utilization, the plant has approximately 15% spare capacity that can absorb additional volume before requiring expansion. Fixed assets increase in lumpy increments rather than proportionally, so the standard method overstates required capital expenditure. Choice A is incorrect because projecting $14 million ignores the existing spare capacity that can support growth without proportional new investment.$EXPL$
WHERE id = 12994;

-- ID 12995: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under econometric principles applied to macroeconomic forecasting consistent with AICPA guidance on prospective financial analysis, simultaneity occurs when dependent and independent variables are jointly determined — income affects spending, and spending affects income through the GDP identity. This mutual causation violates OLS''s assumption that regressors are uncorrelated with the error term, producing biased and inconsistent estimates. Two-stage least squares (2SLS) addresses this by using instrumental variables to isolate exogenous variation. Choice B is incorrect because R-squared magnitude has no bearing on simultaneity bias, which stems from the structural feedback relationship between equations.$EXPL$
WHERE id = 12995;

-- ID 12997: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under linear trend extrapolation methodology used in financial forecasting consistent with AICPA AT-C Section 301, the data shows a constant annual increase of $400,000 ($2.0M to $2.4M to $2.8M to $3.2M). Extending this linear pattern yields $3.2M + $0.4M = $3.6 million for Year 5. Choice C ($3.84M) is incorrect because it applies a 20% compound growth rate to Year 4''s revenue, confusing percentage growth with the observed constant-dollar linear increase pattern that characterizes trend extrapolation.$EXPL$
WHERE id = 12997;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (7 questions)
-- ============================================================

-- ID 12747: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 fair value measurement and corporate finance principles, WACC must use market value weights because they reflect the current economic cost of capital. Total market value = $38M debt + $120M equity = $158M, yielding debt weight of 24.1% and equity weight of 75.9%. Market values capture current investor expectations and opportunity costs. Choice A is incorrect because book value weights do not reflect current market conditions and systematically underweight equity when stock prices exceed book value, producing a WACC that overstates the proportion of lower-cost debt financing.$EXPL$
WHERE id = 12747;

-- ID 12748: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under macroeconomic analysis frameworks consistent with FASB ASC 280-10 and AICPA financial planning guidance, the expansion phase of the business cycle is characterized by rising GDP, increasing employment, growing consumer spending, and generally rising price levels as the economy moves upward from trough toward peak. This represents the most favorable phase for corporate earnings growth and investment activity. Choice B is incorrect because falling GDP and rising unemployment describe a contraction or recession, which is the opposite phase of the business cycle where economic output declines rather than expands.$EXPL$
WHERE id = 12748;

-- ID 12749: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under relative valuation methodology consistent with ASC 820-10-35 fair value measurement, Target Co.''s P/E ratio equals $54 / $4.50 = 12x, which is below the peer average of 15x. The implied value using the peer multiple is 15x x $4.50 = $67.50, exceeding the current price of $54, suggesting the stock is undervalued on a relative basis. Choice A is incorrect because Target''s P/E of 12x is materially below the 15x peer average, indicating the market prices the stock at a discount to comparable companies rather than at a premium.$EXPL$
WHERE id = 12749;

-- ID 12750: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under the Gordon Growth Model for terminal value calculation, consistent with DCF valuation principles under ASC 820-10-35, TV = FCF x (1 + g) / (WACC - g). The original denominator was 9% - 3% = 6%; increasing the growth rate to 4% changes the denominator to 9% - 4% = 5%. The ratio of old to new denominator is 6%/5% = 1.20, so terminal value increases approximately 20% to roughly $600 million. Choice A is incorrect because it understates the sensitivity; even a 1% change in the terminal growth rate has an outsized approximately 20% impact due to the narrow spread between WACC and growth rate.$EXPL$
WHERE id = 12750;

-- ID 12751: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under CAPM and portfolio theory consistent with ASC 820-10-35 fair value measurement, the current portfolio''s expected return = 3% + 1.4 x 7% = 12.8%. To achieve the target of 8.5% by blending with Treasury bills at 3%: 8.5% = w x 12.8% + (1 - w) x 3%, solving yields w = 5.5% / 9.8% = 56.1%. Approximately 56% should be allocated to the risky portfolio and 44% to T-bills. Choice A (75% allocation) is incorrect because it produces an expected return of 0.75 x 12.8% + 0.25 x 3% = 10.35%, which overshoots the 8.5% target by nearly 2 percentage points.$EXPL$
WHERE id = 12751;

-- ID 12752: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-10-15 and risk management principles, natural hedging aligns the currency of expenses with the currency of revenues through operational decisions, reducing net foreign currency exposure without using derivative instruments. By increasing euro-denominated expenses to roughly match euro revenues, Redwood reduces the amount of net euros requiring conversion, mitigating transaction risk operationally. Choice A (forward contracts) is incorrect because forward contracts are derivative financial instruments under ASC 815, whereas natural hedging achieves currency matching through business operations such as shifting procurement to suppliers in the revenue currency.$EXPL$
WHERE id = 12752;

-- ID 12753: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under macroeconomic principles consistent with ASC 820-10-35 fair value measurement and fixed-income valuation, contractionary monetary policy raises interest rates, which causes bond prices to fall because bond prices move inversely with interest rates per fundamental fixed-income valuation. Higher rates also reduce inflation by cooling demand and strengthen the currency by attracting foreign capital. The claim that bond prices increase is directly contradicted by the inverse rate-price relationship. Choice A is incorrect because reduced inflation is a consistent and expected outcome of contractionary policy, whereas rising bond prices would contradict the fundamental mechanism through which tighter monetary policy operates.$EXPL$
WHERE id = 12753;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (1 questions)
-- ============================================================

-- ID 3232: State and Local Government Reporting
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 54, paragraph 30, special revenue funds account for and report the proceeds of specific revenue sources that are restricted or committed to expenditure for specified purposes other than debt service or capital projects. A dedicated hotel occupancy tax restricted by state law to tourism promotion meets this definition precisely. Unlike the general fund, which accounts for all resources not required to be reported in another fund, special revenue funds are established when legally restricted or committed revenue sources exist that warrant separate tracking and accountability.$EXPL$
WHERE id = 3232;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 3145: Stock Compensation and Business Combinations
UPDATE questions SET
  explanation = $EXPL$Under ASC 805-20-25-10, intangible assets acquired in a business combination that are identifiable — meaning they arise from contractual or legal rights, or are separable — must be recognized separately from goodwill at fair value. A five-year noncompete agreement is a contract-based intangible asset with a finite useful life equal to the agreement''s term. It is amortized over the noncompete period per ASC 350-30-35-3. Unlike goodwill, which has an indefinite life and is tested for impairment rather than amortized, the noncompete agreement''s finite contractual term dictates a systematic amortization pattern.$EXPL$
WHERE id = 3145;

COMMIT;
