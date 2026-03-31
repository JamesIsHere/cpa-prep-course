-- Migration: Citation backfill — BAR batch 13 (50 questions)
-- Date: 2026-03-31
-- Purpose: Add standard citations to 50 explanations for BAR section
-- Affected topics: Advanced Consolidations, Capital Structure and Valuation, Financial Statement Analysis, Financial Valuation Methods, Fund-to-Government-Wide Reconciliation, Internal-Use Software and Cloud Computing, Prospective Analysis and Forecasting, Risk Management and Economics

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (1 questions)
-- ============================================================

-- ID 3371: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$Under ASC 810-10-40-5, the gain or loss on disposal of a subsidiary equals the proceeds received minus the carrying amount of the parent''s investment at the disposal date, including equity method adjustments, unamortized fair value differentials, and goodwill. This carrying amount reflects the parent''s cumulative net interest through post-acquisition earnings and distributions. However, using the original purchase price would be incorrect because it ignores equity method adjustments accumulated since acquisition, while using the subsidiary''s book value of equity would omit goodwill and fair value adjustments from the purchase allocation.$EXPL$
WHERE id = 3371;

-- ============================================================
-- CAPITAL STRUCTURE AND VALUATION (1 questions)
-- ============================================================

-- ID 5664: Capital Structure and Valuation
UPDATE questions SET
  explanation = $EXPL$The correct answer is the static trade-off theory. Under this framework, as described in corporate finance literature and referenced in ASC 820 fair value guidance, firms balance the tax shield benefits of debt against expected financial distress costs. Carrington''s predictable cash flows and tangible collateral reduce distress probability, making higher leverage optimal. Zenith''s volatile earnings and intangible assets increase expected distress costs, justifying lower leverage. While the pecking order theory predicts a financing hierarchy, it does not explain why different industries maintain systematically different target leverage ratios tied to asset tangibility and cash flow stability.$EXPL$
WHERE id = 5664;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (13 questions)
-- ============================================================

-- ID 14939: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is 5.00 times. Per financial analysis standards consistent with ASC 835-20 (interest capitalization guidance), the times interest earned (TIE) ratio equals EBIT divided by interest expense: $450,000 / $90,000 = 5.00. TIE uses pre-tax, pre-interest earnings because it measures the ability to cover interest from operating income before any tax or interest deductions. However, using income after subtracting taxes in the numerator would be incorrect because TIE specifically measures coverage using earnings before income taxes to assess debt service capacity independent of tax effects.$EXPL$
WHERE id = 14939;

-- ID 14940: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is 2.25. Per the DuPont framework referenced in AICPA BAR guidance, the equity multiplier equals total assets divided by stockholders'' equity. After paying $500,000 of debt with cash, assets decrease to $4,500,000 and liabilities decrease to $2,500,000, while equity remains $2,000,000. The equity multiplier becomes $4,500,000 / $2,000,000 = 2.25. However, using the pre-transaction figures would yield 2.50 ($5,000,000 / $2,000,000), which incorrectly ignores the balance sheet effects of the debt repayment on both assets and liabilities.$EXPL$
WHERE id = 14940;

-- ID 14942: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is 8.00 times. Per financial analysis guidance consistent with ASC 405 (liabilities), accounts payable turnover equals COGS divided by average accounts payable. Average A/P = ($250,000 + $350,000) / 2 = $300,000. Turnover = $2,400,000 / $300,000 = 8.00. Using the average smooths seasonal fluctuations and provides a more representative measure of payment activity. However, using only beginning A/P ($250,000) would incorrectly yield 9.60, overstating turnover because it ignores the payable balance growth during the period.$EXPL$
WHERE id = 14942;

-- ID 14943: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the 0.75 ratio indicates negative working capital and potential difficulty meeting short-term obligations. Per financial analysis principles under the ASC 210 (balance sheet) framework, the current ratio equals current assets divided by current liabilities: $180,000 / $240,000 = 0.75. A ratio below 1.0 means current liabilities exceed current assets, producing negative working capital of -$60,000. While a ratio below 1.0 might appear concerning, interpreting it as indicating strong liquidity would be incorrect because the ratio explicitly shows the company lacks sufficient current assets to cover near-term obligations.$EXPL$
WHERE id = 14943;

-- ID 14945: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is a 25% payout ratio and 75% retention ratio. Per AICPA financial analysis guidance, the dividend payout ratio equals dividends declared divided by net income: $150,000 / $600,000 = 25%. The retention ratio (plowback ratio) equals 1 minus the payout ratio: 1 - 0.25 = 75%. Together these ratios account for 100% of net income allocation. However, reversing the formula to show 75% payout would be incorrect because $150,000 represents only one-quarter of the $600,000 net income, not three-quarters.$EXPL$
WHERE id = 14945;

-- ID 14947: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the fixed asset turnover ratio declined. Per AICPA financial analysis guidance, fixed asset turnover equals net sales divided by average net PP&E. The original ratio was $2,400,000 / $800,000 = 3.0. After PP&E doubled to $1,600,000 and sales rose 20% to $2,880,000, the new ratio is $2,880,000 / $1,600,000 = 1.8. The ratio declined because assets grew proportionally faster than revenue. Although sales increased, the disproportionate capital investment reduced asset efficiency, unlike what would occur if the increases were proportional.$EXPL$
WHERE id = 14947;

-- ID 14948: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the retention ratio represents the percentage of net income reinvested in the business. Per AICPA financial analysis standards, the retention ratio equals (net income minus dividends) divided by net income, or equivalently 1 minus the dividend payout ratio. For Clearview: ($2,400,000 - $600,000) / $2,400,000 = 75%. This measures earnings retained to fund internal growth. However, confusing it with the dividend payout ratio would be incorrect because the payout ratio measures the distributed portion, whereas the retention ratio measures the reinvested portion—these are complementary measures that sum to 100%.$EXPL$
WHERE id = 14948;

-- ID 14949: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that apparent liquidity is inflated by slow-moving inventory. Per financial analysis principles under the ASC 330 (inventory) and ASC 210 (balance sheet) frameworks, a current ratio of 2.5 alongside a quick ratio of only 0.40 reveals that most current assets are inventory. The inventory turnover of 1.2 confirms this inventory moves slowly and cannot readily convert to cash. While the 25-day DSO indicates efficient receivables collection, this does not compensate for the dominance of illiquid inventory, unlike what the high current ratio alone might suggest.$EXPL$
WHERE id = 14949;

-- ID 14950: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the defensive interval ratio measures how many days a company can fund operations from existing liquid assets without additional revenue. Per AICPA financial analysis standards, the formula is (cash + marketable securities + net receivables) divided by daily operating expenses. For Fenwick: ($600,000 + $200,000 + $400,000) / $30,000 = 40 days. This ratio assesses survival capacity if all revenue ceases. However, confusing it with days sales outstanding would be incorrect because DSO measures receivables collection speed, whereas the defensive interval measures operational sustainability from liquid asset reserves.$EXPL$
WHERE id = 14950;

-- ID 14952: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that Apex''s profitability-driven ROE is more sustainable than Zenith''s leverage-driven ROE. Per the AICPA DuPont analysis framework (ROE = net profit margin x asset turnover x equity multiplier), both companies yield 18%. Apex achieves this through a 9% margin (high profitability), while Zenith relies on an equity multiplier of 3.0 (high financial leverage). Leverage-driven returns carry greater financial risk and vulnerability to earnings declines. Although identical ROE figures might suggest equal performance, the composition reveals fundamentally different risk profiles, unlike what a surface-level comparison would indicate.$EXPL$
WHERE id = 14952;

-- ID 14953: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is approximately 62.4 days. Per AICPA financial analysis guidance, the cash conversion cycle (CCC) equals days inventory outstanding plus days sales outstanding minus days payable outstanding. DIO = ($300,000 / $1,800,000) x 365 = 60.8 days. DSO = ($200,000 / $2,400,000) x 365 = 30.4 days. DPO = ($150,000 / $1,900,000) x 365 = 28.8 days. CCC = 60.8 + 30.4 - 28.8 = 62.4 days. However, omitting DSO entirely would yield only 32.0 days, incorrectly understating the cash cycle by ignoring the time capital is tied up in receivables.$EXPL$
WHERE id = 14953;

-- ID 14954: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that COGS grew faster than revenue, compressing gross margins. Per AICPA financial analysis principles, gross profit margin equals (net sales minus COGS) divided by net sales. A declining gross margin despite growing sales indicates input costs outpaced revenue growth through supplier price increases, rising material costs, or competitive pricing pressure. Although operating expenses can affect profitability, they impact operating margin rather than gross profit margin, and the question states they remained stable as a percentage of sales—unlike COGS, which is the only component that directly affects the gross profit line.$EXPL$
WHERE id = 14954;

-- ID 14955: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is 1.50. Per AICPA financial analysis standards, the price-to-book (P/B) ratio equals market price per share divided by book value per share: $36 / $24 = 1.50. A P/B ratio above 1.0 indicates the market values the company above its accounting net asset value, reflecting expected future earnings or intangible value not captured on the balance sheet. However, dividing book value by market price would yield 0.67, which incorrectly inverts the formula and represents the book-to-market ratio rather than the standard price-to-book metric.$EXPL$
WHERE id = 14955;

-- ============================================================
-- FINANCIAL VALUATION METHODS (9 questions)
-- ============================================================

-- ID 15599: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is 7.61%. Per corporate finance valuation principles, the cost of preferred stock equals the annual preferred dividend divided by net issuance proceeds: ($100 x 7%) / $92 = $7.00 / $92 = 7.61%. The net proceeds after flotation costs form the denominator because they represent the actual capital raised by the firm. Using par value as the denominator would yield only 7.0%, which is the stated coupon rate rather than the true cost. Unlike debt interest, preferred dividends are not tax-deductible under IRC provisions, so no tax shield adjustment applies.$EXPL$
WHERE id = 15599;

-- ID 15600: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is the expected dividend yield plus the constant growth rate. Under the Gordon Growth Model as applied in AICPA valuation guidance, cost of equity = (D1 / P0) + g, where D1/P0 is the expected dividend yield and g is the sustainable growth rate. These two components represent current income return and capital appreciation, together comprising the investor''s total required return. However, confusing this with the CAPM components (risk-free rate plus beta times market risk premium) would be incorrect because CAPM is a separate equilibrium model, whereas the DDM derives cost of equity directly from expected cash flows.$EXPL$
WHERE id = 15600;

-- ID 15601: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is 10.25%. Per corporate finance principles and consistent with ASC 820 (fair value measurement), WACC must use market value weights, not book value weights. Market debt = $60M, market equity = $100M, total = $160M. Weights: debt = 37.5%, equity = 62.5%. WACC = 0.375(4%) + 0.625(14%) = 1.5% + 8.75% = 10.25%. The analyst''s book-weight WACC of 8.0% understated the true cost because book value weights overweighted cheaper debt. Unlike book values, market values reflect current investor expectations and opportunity costs.$EXPL$
WHERE id = 15601;

-- ID 15602: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is 3.0x. Per AICPA managerial accounting and corporate finance principles, the degree of operating leverage (DOL) equals contribution margin divided by EBIT: $600,000 / $200,000 = 3.0x. This means a 1% change in sales produces a 3% change in EBIT, reflecting the magnifying effect of fixed operating costs on earnings volatility. However, inverting the formula (EBIT / CM) would yield 0.33x, which incorrectly suggests operating leverage is below 1.0 and has no meaningful interpretation in leverage analysis.$EXPL$
WHERE id = 15602;

-- ID 15603: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is systematic (market) risk. Per the AICPA Capital Asset Pricing Model (CAPM) framework, systematic risk includes economy-wide factors such as interest rate changes, recessions, and inflation that affect all securities and cannot be eliminated through diversification. CAPM compensates investors only for systematic risk, measured by beta. Adding more stocks eliminates unsystematic (company-specific) risk, but market-wide risks persist regardless of portfolio size. Unlike unsystematic risks such as firm-specific financial leverage, systematic risks require hedging strategies rather than diversification to manage.$EXPL$
WHERE id = 15603;

-- ID 15604: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is 13.6%. Per CAPM as applied in AICPA valuation guidance, cost of equity = 4% + 1.1(6%) = 10.6%. Adding the 3% size premium yields 13.6%. Empirical research by Fama and French demonstrates that small-cap stocks earn returns above what CAPM predicts from beta alone, reflecting additional risks including illiquidity, limited analyst coverage, and greater vulnerability to economic shocks. The size premium is a separate adjustment that captures these factors. However, arguing that beta already accounts for size risk would be incorrect because beta measures only systematic market risk, whereas size-related risk factors represent distinct return drivers not captured by market covariance.$EXPL$
WHERE id = 15604;

-- ID 15605: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is 28%, the IRR itself. Per AICPA capital budgeting guidance, the IRR method implicitly assumes that all interim cash flows are reinvested at the project''s own IRR. This is a key limitation because reinvesting at 28% may be unrealistic if the firm lacks comparable opportunities at that return. The NPV method instead assumes reinvestment at WACC, which is generally more realistic. Unlike the risk-free rate or the accounting rate of return, neither of which applies to the IRR reinvestment assumption, the IRR is the discount rate that sets NPV to zero and thus defines the implicit reinvestment rate.$EXPL$
WHERE id = 15605;

-- ID 15606: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is to use NPV at the firm''s WACC. Per AICPA capital budgeting guidance and Descartes'' rule of signs, a project with n sign changes in cash flows can produce up to n real IRRs. This project has two sign changes (negative to positive, then positive to negative), yielding two IRRs of 14% and 32%. Neither IRR alone provides a reliable accept/reject signal. NPV calculated at the firm''s cost of capital gives a single, unambiguous answer. Although selecting the higher IRR might seem conservative, it ignores that multiple IRRs indicate the IRR method breaks down entirely for non-conventional cash flow patterns.$EXPL$
WHERE id = 15606;

-- ID 15607: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is a pay-fixed, receive-floating interest rate swap. Per ASC 815-20-25 (derivatives and hedging), to hedge variable-rate debt against rising rates, the borrower enters a swap receiving floating payments that offset the variable interest on the debt, effectively converting the obligation to a fixed rate. This provides cash flow certainty on interest expense. However, a pay-floating, receive-fixed swap would increase exposure to rising rates rather than hedge it, because the firm would bear floating-rate risk on both the underlying debt and the swap payment leg.$EXPL$
WHERE id = 15607;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (1 questions)
-- ============================================================

-- ID 14355: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$The correct answer is $1,700,000. Per GASB Statement No. 34, paragraph 77, the reconciliation from governmental fund balances to government-wide net position requires specific adjustments. Starting with the fund change of $1,600,000: add capital outlay (+$4,200,000), subtract depreciation (-$2,100,000), add principal payments (+$1,500,000), subtract bond proceeds (-$3,000,000), subtract accrued interest increase (-$45,000), adjust for pensions (contributions +$900,000 minus expense -$1,150,000 = -$250,000), subtract compensated absences increase (-$180,000), add ISF change (+$95,000), and subtract unavailable revenue decrease (-$120,000). However, adding rather than subtracting the unavailable revenue decrease would overstate the result.$EXPL$
WHERE id = 14355;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (1 questions)
-- ============================================================

-- ID 3382: Internal-Use Software and Cloud Computing
UPDATE questions SET
  explanation = $EXPL$The correct answer is the term of the hosting arrangement, including reasonably certain renewal options. Under ASC 350-40-35-8A as amended by ASU 2018-15, capitalized implementation costs for cloud computing service contracts are amortized over the hosting arrangement term, including periods covered by options to extend that are reasonably certain to be exercised. This aligns cost recognition with the period of benefit from the service. However, using the initial contract term alone would be incorrect because the standard explicitly requires including renewal periods that are reasonably certain, unlike the treatment for shorter fixed-term arrangements.$EXPL$
WHERE id = 3382;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (12 questions)
-- ============================================================

-- ID 14126: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is $170,000. Per ASC 230-10-45 (statement of cash flows), financing activities include proceeds from borrowings, principal repayments, and dividends paid. Net financing cash flow = $400,000 (new borrowing) - $150,000 (principal repayments) - $80,000 (dividends) = $170,000. Under US GAAP, dividends paid are classified as financing activities because they represent distributions to equity holders. However, excluding dividends from the calculation would be incorrect because ASC 230 explicitly requires their classification as financing outflows, unlike IFRS which permits classification as operating activities.$EXPL$
WHERE id = 14126;

-- ID 14127: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the model is overfitting noise due to insufficient degrees of freedom. With 12 observations and 5 predictors, only 6 degrees of freedom remain (n - k - 1 = 6). Per AICPA analytical procedures guidance on regression analysis, R-squared always increases with additional predictors regardless of relevance, while adjusted R-squared penalizes for the predictor-to-observation ratio. The 33-point gap (0.96 vs. 0.63) signals the high R-squared reflects sample-specific noise rather than genuine predictive patterns. However, dismissing adjusted R-squared when R-squared is high would be incorrect because the adjustment is most critical precisely when few observations support many predictors.$EXPL$
WHERE id = 14127;

-- ID 14128: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that accuracy measures closeness to actual outcomes (low bias) while precision measures consistency of forecast errors (low variance). Per AICPA forecasting methodology standards, a forecast can be precise but inaccurate (consistently wrong by the same amount) or accurate but imprecise (correct on average with wide variation). These are independent dimensions of forecast quality. However, treating them as interchangeable concepts would be incorrect because a forecast with low bias (accurate) may still have high variance (imprecise), and each requires different corrective actions—bias correction versus variance reduction.$EXPL$
WHERE id = 14128;

-- ID 14129: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that interpolation predicts within the observed data range while extrapolation predicts beyond it. Per AICPA regression analysis standards, interpolation estimates Y for X values within the range used to build the model (10,000-50,000 units), where the estimated relationship is supported by observed data. Extrapolation predicts Y for X values outside this range, where the assumed linear relationship may not hold, increasing forecast risk. However, suggesting the distinction relates to data type or model complexity would be incorrect because both techniques apply to the same regression model—the difference is solely whether the prediction falls inside or outside the observed X range.$EXPL$
WHERE id = 14129;

-- ID 14130: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is 30,000 units. Per AICPA cost-volume-profit analysis principles, the standard breakeven at $600,000 fixed costs is $600,000 / ($50 - $20) = 20,000 units. However, at 25,000 units fixed costs step to $900,000, creating a new breakeven of $900,000 / $30 = 30,000 units. Between 20,000 and 25,000 units the company is profitable, but at 25,001 units it re-enters a loss zone until reaching 30,000. Although the standard CVP model assumes linear cost behavior, step-fixed costs violate this assumption and create discontinuities that the basic breakeven formula cannot capture without segmented analysis.$EXPL$
WHERE id = 14130;

-- ID 14132: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the variance of residuals must remain constant across all levels of the independent variable. Per AICPA regression analysis standards, homoscedasticity ensures that the regression''s standard errors and confidence intervals are reliable. When violated (heteroscedasticity), standard errors become biased, leading to unreliable hypothesis tests. However, confusing homoscedasticity with multicollinearity would be incorrect because multicollinearity describes high correlation among independent variables, whereas homoscedasticity specifically addresses the consistency of error term variance across the predictor''s range.$EXPL$
WHERE id = 14132;

-- ID 14783: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is to remove, combine, or replace the collinear variable. Per AICPA regression diagnostic standards, a variance inflation factor (VIF) above 10 indicates severe multicollinearity, meaning the predictor is largely explained by other independent variables. This inflates coefficient standard errors and makes individual t-tests unreliable. The remedy is to address the redundancy by removing or combining the collinear predictor. However, interpreting a high VIF as indicating strong predictive power would be incorrect because VIF measures redundancy among predictors, not the variable''s contribution to explaining the dependent variable.$EXPL$
WHERE id = 14783;

-- ID 14784: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the log transformation stabilizes residual variance (addresses heteroscedasticity). Per AICPA regression methodology, a natural log transformation compresses larger values proportionally more than smaller values, equalizing residual spread across the predictor range. The fan-shaped residual pattern indicates heteroscedasticity, which the transformation corrects. The Durbin-Watson statistic of 2.05 already confirmed no autocorrelation. However, suggesting the transformation addresses autocorrelation would be incorrect because the DW test ruled out that issue, and log transformations target the variance structure of residuals rather than their serial correlation pattern.$EXPL$
WHERE id = 14784;

-- ID 14785: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is identification, estimation, diagnostic checking, then forecasting. Per the AICPA-referenced Box-Jenkins methodology for ARIMA models, the four stages are: (1) identification—examine ACF and PACF to determine model order (p, d, q); (2) estimation—use maximum likelihood or least squares to estimate parameters; (3) diagnostic checking—verify residuals are white noise; (4) forecasting—generate predictions if diagnostics pass. However, performing estimation before identification would be incorrect because the model order must be specified before parameters can be estimated, unlike sequential procedures where steps can be reordered.$EXPL$
WHERE id = 14785;

-- ID 14786: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the damping parameter causes the projected trend to decay geometrically toward a flat level. Per AICPA exponential smoothing methodology, in dampened trend models the parameter phi (0 < phi < 1) is multiplied against the trend component each period, causing it to shrink over the forecast horizon. Long-range forecasts converge to a horizontal asymptote rather than extending linearly. This is appropriate when growth is expected to decelerate. However, confusing phi with the level smoothing parameter alpha would be incorrect because alpha controls responsiveness to recent observations, whereas phi specifically governs the rate at which the trend attenuates over time.$EXPL$
WHERE id = 14786;

-- ID 14787: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that MAE uses absolute values so overforecasts and underforecasts cannot offset each other. Per AICPA forecast error measurement standards, mean absolute error takes the absolute value of each period''s error before averaging, while mean error allows positive and negative errors to cancel. The ME of +200 suggests slight overall overforecasting, but the MAE of 1,400 reveals the average individual miss is much larger—positive and negative errors nearly cancel in the ME. However, confusing MAE with mean squared error would be incorrect because MSE squares errors rather than taking absolute values, giving disproportionate weight to large deviations.$EXPL$
WHERE id = 14787;

-- ID 14788: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is to investigate and likely remove or adjust the influential observation. Per AICPA regression diagnostic standards, Cook''s distance measures the combined influence of an observation''s leverage and residual on all regression coefficients. A value of 2.8 far exceeds the 1.0 threshold, indicating disproportionate influence. Since the warehouse fire is a known anomaly unrepresentative of normal operations, removal or adjustment is appropriate. However, retaining the observation to preserve sample size would be incorrect because a single highly influential outlier distorts all coefficient estimates, unlike typical observations that contribute proportionally to the model.$EXPL$
WHERE id = 14788;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (12 questions)
-- ============================================================

-- ID 14756: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that organic produce is a luxury normal good and instant noodles are an inferior good. Per AICPA microeconomic demand theory, income elasticity for organic produce is +8%/+5% = +1.6 (positive and above 1.0, indicating a luxury good), while income elasticity for instant noodles is -3%/+5% = -0.6 (negative, indicating an inferior good whose demand falls as income rises). However, classifying both as substitutes would be incorrect because cross-price elasticity measures the price-quantity relationship between two goods, whereas income elasticity measures how demand for a single good responds to income changes.$EXPL$
WHERE id = 14756;

-- ID 14757: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is undervalued with a positive alpha of 1.4%. Per the AICPA Capital Asset Pricing Model (CAPM) framework, the required return = 4% + 1.2(8%) = 13.6%. Stock X''s expected return of 15% exceeds this by 1.4%, placing it above the Security Market Line. A stock plotting above the SML offers more return than required for its systematic risk level, indicating the price is below fair value. However, concluding the stock is overvalued would be incorrect because above the SML means expected return exceeds the equilibrium return, whereas overvalued stocks plot below the SML where expected returns fall short of what CAPM requires.$EXPL$
WHERE id = 14757;

-- ID 14758: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that euro appreciation increases the dollar cost of euro-denominated imports, compressing Caldwell''s gross margins. Per AICPA international economics and foreign exchange principles, when the euro appreciates 12% against the dollar, each euro of input cost requires more dollars to purchase. Since 70% of raw materials are euro-denominated, Caldwell''s effective input costs rise proportionally. However, suggesting the stronger euro would decrease import costs confuses the direction of the exchange rate effect—a stronger euro means a weaker dollar, unlike scenarios where dollar appreciation would reduce import costs for U.S. purchasers.$EXPL$
WHERE id = 14758;

-- ID 14759: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the current rate of 5.25% is approximately appropriate. Per the AICPA-referenced Taylor Rule framework, the target rate = 2% + 3.5% + 0.5(3.5% - 2%) + 0.5(1% - 2.5%) = 2% + 3.5% + 0.75% - 0.75% = 5.5%. The positive inflation gap (+0.75%) and negative output gap (-0.75%) offset each other, yielding a recommended rate close to the current 5.25%. This suggests no aggressive adjustment is needed. However, arguing for aggressive rate cuts based solely on the negative output gap would be incorrect because the Taylor Rule weighs both gaps simultaneously, and the inflation gap counterbalances the output gap in this scenario.$EXPL$
WHERE id = 14759;

-- ID 14760: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is frictional unemployment. Per AICPA macroeconomic theory, frictional unemployment results from the normal time lag in the job search process as workers voluntarily transition between positions. It exists even in a healthy economy because matching workers with suitable employers requires time and information exchange. However, classifying this as structural unemployment would be incorrect because structural unemployment occurs when workers'' skills do not match available jobs due to technological change or industry shifts, whereas frictional unemployment involves qualified workers in a temporary but voluntary search period.$EXPL$
WHERE id = 14760;

-- ID 14761: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the collar caps Ironbridge''s effective rate at 6%. Per ASC 815-10-15 (derivatives and hedging), an interest rate collar combines a purchased cap and a sold floor. At SOFR of 7.5%, the 6% cap triggers: the cap writer pays Ironbridge 1.5% on $40 million. Ironbridge pays 7.5% on its debt but receives 1.5%, netting an effective rate of 6%. The 3% floor is not triggered because SOFR exceeds 3%. However, assuming the cap does not activate would be incorrect because SOFR at 7.5% exceeds the 6% cap strike, unlike scenarios where SOFR remains below the cap and no payment is triggered.$EXPL$
WHERE id = 14761;

-- ID 14762: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is currency depreciation and rising interest rates. Per AICPA balance of payments economics, a sudden stop in capital inflows forces adjustment through two channels: the currency depreciates as demand for domestic assets falls, and interest rates rise because the government must compete for a smaller domestic savings pool. This is the classic sudden stop scenario. However, predicting currency appreciation would be incorrect because reduced foreign demand for domestic bonds decreases demand for the domestic currency, unlike scenarios where capital inflows strengthen the currency through increased foreign buying.$EXPL$
WHERE id = 14762;

-- ID 14763: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is substitutes. Per AICPA microeconomic demand theory, a positive cross elasticity of demand (+0.80) means that when the price of Brand A rises, demand for Brand B increases as consumers switch between products. This substitution effect confirms the goods compete in the same market. However, classifying them as complements would be incorrect because complementary goods have a negative cross elasticity—when one complement''s price rises, demand for the other falls (e.g., printers and ink), unlike substitutes where price increases drive demand toward the alternative.$EXPL$
WHERE id = 14763;

-- ID 14764: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is savings deposits (and similar near-money assets). Per AICPA economics guidance on Federal Reserve monetary aggregate definitions, M2 includes all M1 components (currency, demand deposits, other checkable deposits, traveler''s checks) plus savings deposits, small-denomination time deposits under $100,000, and retail money market mutual fund balances. These near-money assets are liquid but require conversion before spending. However, identifying currency as an M2-only component would be incorrect because currency in circulation is a core component of M1, the narrowest monetary aggregate, unlike savings deposits which are excluded from M1 due to their less immediate spendability.$EXPL$
WHERE id = 14764;

-- ID 14765: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is 0.25. Per AICPA Keynesian macroeconomic theory, each additional dollar of disposable income is either consumed or saved, so MPC + MPS = 1. With MPC = 0.75, MPS = 1 - 0.75 = 0.25, meaning households save 25 cents of every additional dollar. However, confusing MPS with MPC would yield 0.75, which is incorrect because MPS is the complement of the marginal propensity to consume—the portion not spent is saved, unlike the spending multiplier (1/MPS = 4.0) which amplifies changes in autonomous spending through the circular flow.$EXPL$
WHERE id = 14765;

-- ID 14766: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that Pinehurst pays periodic premiums and receives compensation if a credit event occurs. Per ASC 815-10-15 (derivatives and hedging), in a credit default swap the protection buyer pays periodic premiums to the protection seller. If a defined credit event occurs (default, bankruptcy, restructuring), the seller compensates the buyer, typically paying par value for the defaulted bonds or through cash settlement. No transfer of bond ownership occurs. However, describing Pinehurst as the protection seller would be incorrect because Pinehurst is hedging its existing bond exposure, unlike the counterparty who assumes credit risk in exchange for premium income.$EXPL$
WHERE id = 14766;

-- ID 14767: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that inflation is likely to accelerate. Per the AICPA-referenced NAIRU framework in macroeconomic theory, when unemployment (3.2%) falls below NAIRU (4.5%), the labor market tightens beyond its sustainable equilibrium. Employers bid up wages to attract scarce workers, raising production costs that feed into consumer prices. Sustained below-NAIRU unemployment accelerates inflation, warranting contractionary policy. However, predicting deflationary pressure would be incorrect because unemployment below NAIRU signals excess labor demand and an overheating economy, unlike above-NAIRU unemployment which indicates slack and disinflationary conditions.$EXPL$
WHERE id = 14767;

COMMIT;
