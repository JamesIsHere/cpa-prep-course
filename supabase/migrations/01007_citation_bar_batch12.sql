-- Migration: Citation backfill — BAR batch 12 (50 questions)
-- Date: 2026-03-31
-- Purpose: Add standard citations to 50 explanations for BAR section
-- Affected topics: Advanced Consolidations, Financial Statement Analysis, Financial Valuation Methods, Fund-to-Government-Wide Reconciliation, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (1 questions)
-- ============================================================

-- ID 3177: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$The correct answer is to credit the investment account and debit the subsidiary''s equity accounts, as required by ASC 810-10-45 on consolidation procedures. When a parent owns 100% and the equity-method investment equals the subsidiary''s stockholders'' equity, the elimination entry removes reciprocal balances so the consolidated balance sheet reflects only the subsidiary''s individual assets and liabilities. Unlike debiting the investment account, which would increase rather than eliminate it, the credit removes the parent''s investment while the offsetting debits eliminate the subsidiary''s equity.$EXPL$
WHERE id = 3177;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (13 questions)
-- ============================================================

-- ID 14919: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is 2.00:1, consistent with the debt-to-equity ratio defined under general financial analysis principles referenced in ASC 820 and the AICPA''s analytical procedures guidance. After issuing $200,000 in bonds, total liabilities rise to $800,000 while equity remains $400,000, producing a ratio of $800,000 / $400,000 = 2.00. However, using the pre-issuance liabilities of $600,000 would incorrectly yield 1.50:1, which fails to reflect the impact of the new debt on the capital structure.$EXPL$
WHERE id = 14919;

-- ID 14920: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is asset turnover, identified through DuPont analysis as outlined in financial analysis frameworks consistent with ASC 280-10 segment reporting and performance evaluation. DuPont ROE = 15% margin x 0.80 turnover x 2.00 multiplier = 24%, below the 30% industry average. Achieving 30% ROE with the existing margin and multiplier would require turnover of 1.00, whereas Sterling''s 0.80 turnover indicates underutilized assets, making it the binding constraint on ROE performance.$EXPL$
WHERE id = 14920;

-- ID 14925: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the debt-to-equity ratio measures the proportion of financing from debt versus equity, a key leverage metric consistent with analytical procedures in AU-C 520 and financial statement analysis under the AICPA framework. It indicates financial leverage and long-term solvency risk by comparing total liabilities to total stockholders'' equity. Unlike the current ratio or quick ratio, which measure short-term liquidity, the debt-to-equity ratio assesses the capital structure and the company''s reliance on creditor versus owner financing.$EXPL$
WHERE id = 14925;

-- ID 14926: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is the times interest earned (TIE) ratio, also called the interest coverage ratio, calculated as EBIT divided by interest expense per standard financial analysis guidance consistent with ASC 470-10 on debt obligations. TIE measures how many times operating earnings can cover interest payments, directly assessing debt service capacity. Unlike the current ratio, which measures short-term liquidity rather than interest-paying ability, TIE specifically evaluates whether operating income is sufficient to meet fixed interest obligations.$EXPL$
WHERE id = 14926;

-- ID 14927: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is 18.0%, calculated as net income divided by average stockholders'' equity per standard profitability analysis consistent with ASC 260-10 earnings metrics. Average equity = ($900,000 + $1,100,000) / 2 = $1,000,000, so ROE = $180,000 / $1,000,000 = 18.0%. Using beginning equity alone would incorrectly yield 20.0%, whereas proper ROE calculation requires averaging beginning and ending equity to reflect the capital base throughout the period.$EXPL$
WHERE id = 14927;

-- ID 14929: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is 2.00 times, calculated as net sales divided by average total assets per efficiency analysis guidance consistent with ASC 360-10 asset utilization metrics. Average total assets = ($1,500,000 + $2,100,000) / 2 = $1,800,000, so turnover = $3,600,000 / $1,800,000 = 2.00. Using ending total assets alone would incorrectly produce 1.71 times, whereas the proper calculation requires averaging beginning and ending assets to reflect the resource base available throughout the period.$EXPL$
WHERE id = 14929;

-- ID 14931: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that increasing leverage will amplify ROE because ROA exceeds the borrowing cost, consistent with DuPont analysis principles and the financial leverage effect described in capital structure theory under ASC 470. When ROA of 8% exceeds the 5% interest rate, the positive spread means each additional dollar of debt generates excess returns that accrue to equity holders through the equity multiplier effect. However, the claim that higher leverage inherently destroys value is incorrect because positive leverage increases ROE when the return on assets exceeds the after-tax cost of debt.$EXPL$
WHERE id = 14931;

-- ID 14933: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is 3.00 times, calculated as net sales divided by average net fixed assets per asset efficiency analysis consistent with ASC 360-10-35 property, plant, and equipment guidance. Average net PP&E = ($1,200,000 + $1,800,000) / 2 = $1,500,000, so turnover = $4,500,000 / $1,500,000 = 3.00. Using beginning PP&E alone would incorrectly yield 3.75, whereas fixed asset turnover requires average net fixed assets to properly reflect the productive capacity over the full reporting period.$EXPL$
WHERE id = 14933;

-- ID 14934: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is the cash ratio, which divides cash and cash equivalents by current liabilities, providing the most conservative liquidity measure per ASC 210-10-45 balance sheet classification guidance. The cash ratio includes only the most liquid assets, making it the most stringent test of a company''s ability to meet short-term obligations. Unlike the quick ratio, which still includes accounts receivable that may not convert to cash immediately, the cash ratio relies solely on assets that are already in cash form.$EXPL$
WHERE id = 14934;

-- ID 14935: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is 11.2%, calculated as net income divided by net sales per profitability analysis consistent with ASC 220-10 on income statement presentation. Net income = $5,000,000 - $4,000,000 - $200,000 - $240,000 = $560,000, so net profit margin = $560,000 / $5,000,000 = 11.2%. However, 20.0% represents the operating margin before interest and taxes, which incorrectly excludes financing costs and tax expense that reduce the earnings available to shareholders.$EXPL$
WHERE id = 14935;

-- ID 14936: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that both companies have identical leverage-based risk profiles, as demonstrated through DuPont analysis consistent with ASC 280-10 performance measurement principles. Company A: equity multiplier = 18% / (6% x 1.5) = 2.0. Company B: equity multiplier = 18% / (9% x 1.0) = 2.0. Both have the same financial leverage of 2.0, meaning their capital structures carry equal risk. While Company B has lower asset turnover and higher margins, this reflects different operating strategies rather than higher financial risk, unlike what the equity multiplier difference would suggest.$EXPL$
WHERE id = 14936;

-- ID 14937: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the sustainable growth rate will fall well below the 18% target, per the sustainable growth model consistent with financial planning analysis under ASC 505-10 equity principles. Sustainable growth = ROE x retention ratio. At 50% payout, retention drops to 50%, yielding 20% x 50% = 10%, far below the 18% target. Unlike the P/E ratio, which depends on market price and does not automatically change with dividend policy, the sustainable growth rate is directly reduced because higher dividends decrease the retained earnings available for reinvestment.$EXPL$
WHERE id = 14937;

-- ID 14938: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that book value per share represents total stockholders'' equity divided by common shares outstanding, as defined under ASC 505-10-S99 equity disclosure requirements. It measures the net asset value attributable to each share based on the balance sheet. Unlike earnings per share, which allocates net income to each share as a profitability measure under ASC 260-10, book value per share reflects the accounting-based equity position and is commonly compared to market price to assess potential under- or overvaluation.$EXPL$
WHERE id = 14938;

-- ============================================================
-- FINANCIAL VALUATION METHODS (10 questions)
-- ============================================================

-- ID 14826: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is leading indicators, as classified under macroeconomic analysis frameworks referenced in AICPA business environment guidance and ASC 820 fair value measurement context. Stock market returns and building permits change before the overall economy shifts direction because markets are forward-looking and permits reflect future construction activity. Unlike lagging indicators such as the unemployment rate and CPI, which change after the economy has already turned, leading indicators provide advance signals of economic inflection points.$EXPL$
WHERE id = 14826;

-- ID 14827: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is that natural hedging involves structuring operations so revenues and expenses occur in the same currency, reducing net exposure without derivatives, consistent with risk management principles in ASC 815-20-25 and ASC 830-20 on foreign currency transactions. By earning euros and incurring euro-denominated expenses, Oceanic offsets currency risk operationally. Unlike forward contracts, which are financial hedging instruments under ASC 815, natural hedging avoids derivative instruments entirely and manages exposure through the alignment of cash flows within the same currency.$EXPL$
WHERE id = 14827;

-- ID 14829: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the unemployment rate is a lagging indicator, as classified in macroeconomic analysis frameworks used in business valuation under ASC 820 and AICPA analytical guidance. The unemployment rate rises after a recession begins and falls only after recovery is well underway because employers delay hiring until demand has clearly recovered. Unlike leading indicators such as stock prices and building permits that change before the economy turns, the unemployment rate reacts to economic conditions rather than predicting them.$EXPL$
WHERE id = 14829;

-- ID 15592: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is that firm value depends solely on the present value of operating cash flows, as stated in Modigliani-Miller Proposition I without taxes, a foundational capital structure theorem consistent with the theoretical framework underlying ASC 820 fair value concepts. In a frictionless, tax-free market, how the firm divides its cash flows between debt and equity holders does not change the total value of the firm. Unlike the argument that leverage increases value, M&M I without taxes explicitly demonstrates capital structure irrelevance when markets are perfect.$EXPL$
WHERE id = 15592;

-- ID 15593: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is that firm value increases to $87.5 million, with financial distress costs being the primary real-world constraint, per Modigliani-Miller Proposition I with taxes as applied in capital structure analysis under ASC 470-10. V_levered = $80M + (0.25 x $30M) = $87.5M. The $7.5M perpetual tax shield increases value, but in practice, rising bankruptcy risk and distress costs offset the tax benefit at high leverage. Unlike the claim that equity costs rising offsets the benefit, M&M II confirms total firm value still increases by the full tax shield amount.$EXPL$
WHERE id = 15593;

-- ID 15594: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is to use retained earnings first, then debt, per pecking order theory as applied in capital structure decisions consistent with ASC 470-10 debt classification and ASC 505-10 equity issuance guidance. Langford should deploy its $9M in retained earnings and borrow the remaining $6M from its credit facility. Unlike issuing equity first, which pecking order theory ranks last due to adverse selection costs and the signal that management may believe shares are overvalued, internal financing avoids both issuance costs and information asymmetry problems.$EXPL$
WHERE id = 15594;

-- ID 15595: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the optimal capital structure occurs where the marginal tax shield equals the marginal distress cost, per trade-off theory consistent with capital structure analysis under ASC 470-10 and the framework underlying FASB''s debt classification standards. At this point, WACC is minimized and firm value is maximized. Unlike the suggestion that the cost of equity equals the cost of debt at the optimum, equity always commands a risk premium over debt due to its residual claim, so the two costs never equalize in practice.$EXPL$
WHERE id = 15595;

-- ID 15596: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is that WACC declines despite rising equity costs, per Modigliani-Miller Proposition II with taxes as applied in capital structure analysis under ASC 470-10 and consistent with FASB''s debt-equity framework. The cost of equity rises with leverage (re = r0 + (r0 - rd)(1-T)(D/E)), but the blended WACC still falls because after-tax debt is significantly cheaper than equity. Unlike the analyst''s flawed reasoning that higher equity costs must increase WACC, the tax shield on interest ensures the weighted average decreases as cheaper debt replaces expensive equity in the capital mix.$EXPL$
WHERE id = 15596;

-- ID 15597: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is that DFL increases from 1.33x to 2.0x, amplifying EPS volatility, per the degree of financial leverage formula consistent with capital structure risk analysis under ASC 470-10 debt guidance. DFL = EBIT / (EBIT - Interest): current = $400K / $300K = 1.33x; proposed = $400K / $200K = 2.0x. At DFL of 2.0x, a 10% EBIT decline produces a 20% EPS decline. Unlike the claim that DFL decreases with more debt, higher fixed interest obligations always increase financial leverage and the magnification of earnings swings passed through to shareholders.$EXPL$
WHERE id = 15597;

-- ID 15598: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is that DTL increases from 4.44x to 5.56x due to higher operating leverage, per combined leverage analysis consistent with ASC 420-10 cost structure guidance and capital risk frameworks. Current: DOL = $800K/$300K = 2.67, DFL = 1.67, DTL = 4.44. Proposed: DOL = $1M/$300K = 3.33, DFL = 1.67, DTL = 5.56. The automation shifts variable costs to fixed costs, raising DOL and therefore DTL. Unlike the claim that lower variable costs reduce total leverage, the higher contribution margin with unchanged EBIT means operating leverage increases, amplifying total risk to shareholders.$EXPL$
WHERE id = 15598;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 3406: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the premium is recorded as an other financing source and not subsequently amortized in governmental funds, per GASB Statement No. 34 paragraphs 80-85 on fund financial statement presentation. Under modified accrual accounting, the full coupon payment is recorded as an expenditure each period, with no amortization adjustment. Unlike the government-wide statements where GASB 34 requires full accrual treatment and the premium is amortized to reduce interest expense over the bond''s life, fund-level reporting does not recognize this adjustment, creating a reconciling difference.$EXPL$
WHERE id = 3406;

-- ID 14348: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the reconciliation removes the $3,750,000 fund expenditure and recognizes a $330,000 gain on early extinguishment, per GASB Statement No. 34 paragraphs 80-85 on activity statement reconciliation. The carrying amount equals $4,000,000 face plus $80,000 unamortized premium = $4,080,000, and the gain is $4,080,000 - $3,750,000 = $330,000. Unlike ignoring the unamortized premium, which would understate the carrying amount and compute only a $250,000 gain, the full accrual adjustment must include the premium to properly reconcile fund-level expenditures to government-wide expenses.$EXPL$
WHERE id = 14348;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (11 questions)
-- ============================================================

-- ID 14112: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that a multiplicative decomposition model is appropriate when seasonal fluctuations grow proportionally with the data level, consistent with forecasting guidance in the AICPA''s business analysis framework and ASC 275-10 on uncertainty estimation. The widening dollar gap between summer and winter sales confirms that seasonal amplitude scales with revenue growth. Unlike an additive model, which assumes constant absolute seasonal deviations regardless of the data level, a multiplicative model applies seasonal factors as ratios, correctly capturing the proportional relationship observed.$EXPL$
WHERE id = 14112;

-- ID 14113: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the social media variable (X2) is not statistically significant and should be considered for removal, per regression significance testing principles consistent with AICPA analytical procedures guidance in AU-C 520. With a p-value of 0.38 (well above 0.05), X2''s coefficient is not significantly different from zero and adds no meaningful predictive power. Unlike X1 with p < 0.001 indicating strong statistical significance, X2 fails to demonstrate a reliable relationship with the dependent variable, and retaining it reduces model parsimony without improving explanatory power.$EXPL$
WHERE id = 14113;

-- ID 14115: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that a structural break has invalidated the historical model parameters, consistent with forecasting reliability analysis under AICPA analytical guidance and ASC 275-10 disclosure of risks and uncertainties. The acquisition fundamentally changed the sales-GDP relationship by doubling market share, altering both the slope and intercept of the regression. Unlike relying on a high historical R-squared to justify continued use, a strong past fit does not guarantee future predictive power when the underlying data-generating process has undergone a regime change requiring re-estimation.$EXPL$
WHERE id = 14115;

-- ID 14116: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that notes payable are non-spontaneous liabilities excluded from the spontaneous liabilities ratio in the external financing needed (EFN) formula, per financial planning and analysis guidance consistent with ASC 470-10 debt classification. Notes payable require deliberate negotiation with lenders and do not automatically increase as sales grow. Unlike accounts payable, which arise spontaneously from purchasing activity and naturally scale with revenue, notes payable represent discretionary financing decisions that must be planned separately in the EFN calculation.$EXPL$
WHERE id = 14116;

-- ID 14117: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the U-shaped residual pattern reveals a violation of the linearity assumption, indicating model misspecification, per regression diagnostic principles consistent with AICPA analytical procedures in AU-C 520 and quantitative forecasting standards. The curvilinear pattern means the true relationship is nonlinear and the model systematically mispredicates at certain ranges. Although passing the Durbin-Watson test confirms no autocorrelation, this only validates one OLS assumption, whereas the residual pattern independently demonstrates that a quadratic term or transformation is needed.$EXPL$
WHERE id = 14117;

-- ID 14118: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that a simple moving average systematically lags behind an upward trend, producing persistent under-forecasts, per time-series forecasting principles consistent with AICPA prospective financial information guidance (AT-C 305). By assigning equal weight to all N periods, a simple moving average incorporates older, lower values that pull the forecast below the actual trend line. Unlike exponential smoothing or weighted moving averages, which assign greater weight to recent observations and respond more quickly to trends, a simple moving average treats all periods identically and cannot adapt to directional movement.$EXPL$
WHERE id = 14118;

-- ID 14121: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the large divergence between RMSE and MAD indicates outlier forecast errors in the distribution, per forecast accuracy measurement principles consistent with AICPA prospective analysis guidance (AT-C 305). RMSE squares each error before averaging and taking the square root, giving disproportionate weight to large deviations. When RMSE substantially exceeds MAD (900 vs. 500), it signals that a few very large errors are being amplified. Unlike MAD, which treats all absolute errors equally and is more robust to outliers, RMSE penalizes large deviations quadratically.$EXPL$
WHERE id = 14121;

-- ID 14122: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the first period''s actual demand value or an average of early observations is typically used as the initial forecast, per exponential smoothing initialization principles consistent with AICPA prospective financial information guidance (AT-C 305). This seed value starts the recursive calculation and diminishes in influence as more periods are processed. Unlike the smoothing constant alpha, which is a weighting parameter that determines responsiveness to recent data rather than an initial forecast value, the initialization provides the baseline from which all subsequent forecasts are computed.$EXPL$
WHERE id = 14122;

-- ID 14123: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is to increase net profit margin from 4% to 5% while holding turnover and leverage constant, per DuPont analysis consistent with financial planning under ASC 280-10 performance measurement. Target: 25% = margin x 2.0 x 2.5, requiring margin = 25% / 5.0 = 5%. This achieves the ROE target without adding leverage. Unlike doubling the equity multiplier, which would directly violate the CFO''s constraint against adding leverage, increasing margin by one percentage point achieves the target through operational improvement alone.$EXPL$
WHERE id = 14123;

-- ID 14124: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the Delphi method uses anonymous, iterative rounds to build expert consensus while minimizing bias, per qualitative forecasting guidance consistent with AICPA prospective financial information standards (AT-C 305). Experts submit forecasts independently, receive anonymized summaries after each round, and revise estimates over multiple iterations. Unlike a simple jury of executive opinion where groupthink and seniority dominance can skew results, the Delphi method''s anonymity and structured feedback process preserves independent judgment while converging toward a more reliable consensus.$EXPL$
WHERE id = 14124;

-- ID 14125: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the lagged variable captures a genuine delayed economic effect, creating a forward-looking model, per time-series regression principles consistent with AICPA analytical procedures in AU-C 520. Consumer confidence measured in one quarter may not influence purchases until the following quarter, reflecting the time consumers take to act on sentiment. Unlike the concurrent variable with its weak t-statistic of 1.1, the lagged variable''s t-statistic of 4.2 demonstrates strong predictive power because the predictor value is known before the forecast period begins.$EXPL$
WHERE id = 14125;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (12 questions)
-- ============================================================

-- ID 14059: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the Keynesian liquidity trap analysis is valid because monetary policy loses effectiveness at the zero lower bound, consistent with macroeconomic theory as applied in business risk analysis under the AICPA''s economic analysis framework. When rates approach zero, additional monetary expansion cannot lower rates further, and economic agents hoard liquidity rather than lend or invest. Unlike the claim that further bond purchases will stimulate lending, the traditional rate-cutting transmission mechanism breaks down in a liquidity trap, making fiscal stimulus the more effective demand-management tool.$EXPL$
WHERE id = 14059;

-- ID 14061: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that country (political) risk is a form of systematic risk within the affected nation, per risk classification frameworks consistent with ASC 820-10-35 fair value risk assessment and the AICPA''s enterprise risk management guidance. Expropriation, regulatory changes, and political instability affect all investments operating in that country and cannot be diversified away domestically. Unlike unsystematic (firm-specific) risk that can be eliminated through portfolio diversification within a country, political risk is pervasive across all domestic investments and can only be mitigated through international diversification.$EXPL$
WHERE id = 14061;

-- ID 14062: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is 7.29%, calculated as the annual preferred dividend divided by the net issuance price, per cost of capital principles consistent with ASC 480-10 on distinguishing liabilities from equity and preferred stock classification. Cost of preferred = $7.00 / $96.00 = 7.29%. Flotation costs reduce net proceeds below par, increasing the effective cost above the stated dividend rate. Unlike using the par value as the denominator, which would incorrectly yield 7.00% and ignore the economic impact of flotation costs, the net issuance price reflects the actual capital received by the firm.$EXPL$
WHERE id = 14062;

-- ID 14063: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that price elasticity of demand measures the percentage change in quantity demanded divided by the percentage change in price, per microeconomic analysis principles applied in business risk assessment under the AICPA''s analytical framework. It captures consumer sensitivity to price changes, with elastic demand (greater than 1) meaning quantity changes more than proportionally. Unlike supply-side cost-volume relationships, which address production costs relative to output, demand elasticity specifically measures the buyer''s responsiveness to price changes and its impact on revenue.$EXPL$
WHERE id = 14063;

-- ID 14064: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the mark-to-market adjustment reduces the margin account by $1,500, bringing it to exactly the maintenance margin level with no margin call triggered, per futures settlement principles consistent with ASC 815-10-35 derivative measurement guidance. The loss = ($78.00 - $76.50) x 1,000 = $1,500, reducing the margin from $6,000 to $4,500. Unlike forward contracts that settle only at maturity, futures contracts are marked to market daily through the margin account, and a margin call is triggered only when the balance falls below the maintenance margin, not when it equals it.$EXPL$
WHERE id = 14064;

-- ID 14065: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that a beta of 0.60 indicates the stock moves approximately 60% as much as the market, per the Capital Asset Pricing Model consistent with systematic risk measurement under ASC 820-10-55 fair value risk inputs. CAPM expected return = 4% + 0.60 x 6% = 7.6%, reflecting lower systematic risk than the market portfolio. Unlike a beta of 2.0, which would indicate twice the market''s volatility, a beta below 1.0 characterizes a defensive stock that is less sensitive to market-wide movements and carries lower systematic risk.$EXPL$
WHERE id = 14065;

-- ID 14066: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that scenario analysis changes multiple assumptions simultaneously to model internally consistent narratives, per risk assessment principles consistent with ASC 820-10-55 fair value estimation techniques and the AICPA''s prospective analysis guidance. Best, base, and worst cases reflect coherent economic conditions where related variables move together. Unlike sensitivity analysis, which varies one input at a time while holding all others constant to identify the single most impactful variable, scenario analysis captures the combined effect of correlated assumptions and the realistic co-movement of economic factors.$EXPL$
WHERE id = 14066;

-- ID 14067: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is real options analysis, which recognizes that managerial flexibility to expand, delay, or abandon projects has quantifiable economic value, per capital budgeting theory consistent with ASC 820-10-35 fair value measurement and ASC 360-10-35 impairment assessment frameworks. The options to expand on success or abandon on failure can make a negative-NPV project value-creating when flexibility is properly valued. Unlike traditional NPV, which treats projects as now-or-never commitments with fixed cash flows, real options analysis incorporates the strategic value of management''s ability to adapt decisions as new information emerges.$EXPL$
WHERE id = 14067;

-- ID 14068: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that all three actions are unambiguously contractionary and shift aggregate demand leftward, per monetary policy transmission analysis consistent with macroeconomic risk assessment under the AICPA''s business environment framework. Raising the policy rate increases borrowing costs, higher reserve requirements lock up bank funds, and bond sales drain reserves from the banking system. Although higher rates may attract foreign capital and strengthen the currency, the analyst''s reasoning is flawed because currency appreciation actually hurts exports and reduces demand further, rather than stimulating aggregate demand as claimed.$EXPL$
WHERE id = 14068;

-- ID 14753: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is Sharpe ratios of 0.50 and 0.53 respectively, calculated per the risk-adjusted performance framework consistent with ASC 820-10-55 fair value risk analysis and modern portfolio theory. Waverly: (14% - 3%) / 22% = 0.50. Competing fund: (11% - 3%) / 15% = 0.53. Despite Waverly''s higher raw return, the competing fund earned more excess return per unit of total risk. Unlike dividing by variance, which would produce dimensionally incorrect inflated values, the Sharpe ratio uses standard deviation as the denominator to properly measure risk-adjusted performance.$EXPL$
WHERE id = 14753;

-- ID 14754: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that Country B has a comparative advantage in steel based on lower opportunity cost, per Ricardian trade theory as applied in international economics and business risk analysis under the AICPA framework. Country A''s opportunity cost of 1 steel = 2 textiles; Country B''s = 1.33 textiles. Country B sacrifices fewer textiles per unit of steel, giving it comparative advantage in steel despite lacking absolute advantage. Unlike the trade minister''s claim that absolute advantage in both goods precludes mutual benefit, comparative advantage theory proves that trade benefits both countries when each specializes in its lower-opportunity-cost good.$EXPL$
WHERE id = 14754;

-- ID 14755: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that real GDP adjusts for price-level changes by using constant base-year prices, per macroeconomic measurement principles applied in economic analysis under the AICPA''s business environment framework and ASC 820-10 fair value concepts. Real GDP isolates changes in the quantity of output from inflation effects, while nominal GDP reflects both quantity and price changes. Unlike nominal GDP, which overstates economic growth when inflation is positive because it uses current-year prices, real GDP provides an accurate measure of actual production growth across time periods by removing the inflationary distortion.$EXPL$
WHERE id = 14755;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (1 questions)
-- ============================================================

-- ID 3380: State and Local Government Reporting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that tax anticipation notes are reported as fund liabilities in governmental funds because they mature within the current fiscal period, per GASB Statement No. 34 paragraph 80 and GASB Interpretation No. 1 on short-term debt classification. These notes meet the current financial resources measurement focus since they will be repaid from imminent tax collections. Unlike long-term bonds that are excluded from fund-level liabilities and reported only in government-wide statements, tax anticipation notes maturing within the current period are recognized as current obligations on the governmental fund balance sheet.$EXPL$
WHERE id = 3380;

COMMIT;
