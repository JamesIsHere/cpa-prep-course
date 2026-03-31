-- Migration: Citation backfill — BAR batch 11 (50 questions)
-- Date: 2026-03-31
-- Purpose: Add standard citations to 50 explanations for BAR section
-- Affected topics: Advanced Consolidations, Financial Statement Analysis, Financial Valuation Methods, Fund-to-Government-Wide Reconciliation, Internal-Use Software and Cloud Computing, Prospective Analysis and Forecasting, Risk Management and Economics

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (1 questions)
-- ============================================================

-- ID 3176: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$Under ASC 810-10-45, intercompany balances must be eliminated in consolidation because they do not represent transactions with external parties. Eliminating the $750,000 receivable and payable reduces consolidated total assets to $24.25 million and total liabilities to $14.25 million, lowering the debt-to-assets ratio from 60.0% to 58.8%. However, failing to eliminate would overstate both assets and liabilities, artificially inflating leverage ratios and distorting receivable turnover metrics that rely on accurate external-party balances.$EXPL$
WHERE id = 3176;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (13 questions)
-- ============================================================

-- ID 2964: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under the DuPont framework described in financial analysis literature and consistent with ASC 280-10 segment reporting principles, ROA decomposes into profit margin multiplied by asset turnover. Hawthorne''s 2% margin times 5.0 turnover and Meridian''s 25% margin times 0.4 turnover both equal 10% ROA, revealing fundamentally different competitive strategies — high-volume retail versus high-margin software. While identical ROA might suggest similar performance, the DuPont decomposition shows the companies achieve the same return through entirely different operating models, making aggregate ROA alone misleading for comparison.$EXPL$
WHERE id = 2964;

-- ID 14854: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 505-10-S99 and SEC reporting guidance, book value per common share equals total stockholders'' equity minus preferred stock divided by common shares outstanding: ($3,200,000 − $400,000) / 200,000 = $14.00. Preferred equity must be subtracted because preferred shareholders have a prior claim on net assets. However, using total equity without subtracting preferred stock ($3,200,000 / 200,000 = $16.00) would overstate the residual value available to common shareholders.$EXPL$
WHERE id = 14854;

-- ID 14855: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 230-10-45 and solvency analysis principles, operating cash flow to total debt equals OCF divided by total debt. Total debt = $800,000 + $2,400,000 = $3,200,000, yielding a ratio of $1,200,000 / $3,200,000 = 0.375, which falls below the 0.50 industry median. This indicates the company generates less operating cash flow relative to its total obligations than peers. Unlike dividing OCF by current liabilities only ($1,200,000 / $800,000 = 1.50), which ignores long-term debt, the total debt ratio captures the full obligation burden relevant to solvency.$EXPL$
WHERE id = 14855;

-- ID 14856: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under statistical regression principles applied in financial analysis per ASC 270-10 and quantitative methods guidance, adjusted R² penalizes for additional variables that do not meaningfully improve explanatory power. Model C''s adjusted R² of 0.86 is the highest, indicating it best balances fit and parsimony. While Model B''s raw R² rose to 0.89, its adjusted R² fell to 0.83, revealing that its extra variables add noise rather than signal — making raw R² alone an unreliable criterion for model selection.$EXPL$
WHERE id = 14856;

-- ID 14858: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under the advanced DuPont decomposition framework consistent with ASC 280-10 profitability analysis, RNOA equals NOPAT divided by net operating assets: $720,000 / $3,600,000 = 20%. Decomposed further, NOPAT margin is 6% ($720,000 / $12,000,000) and operating asset turnover is 3.33 ($12,000,000 / $3,600,000). The high turnover rather than the modest margin drives the strong RNOA. However, confusing NOPAT margin with RNOA by dividing NOPAT by revenue alone would misidentify the 6% margin as the overall return on operating assets.$EXPL$
WHERE id = 14858;

-- ID 14859: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under financial analysis principles consistent with ASC 820-10-35 fair value measurement concepts, earnings yield equals the inverse of the P/E ratio. Langford''s earnings yield is 1/40 = 2.5%, while Drayton''s is 1/10 = 10%. Langford''s 2.5% yield falls below the 5% risk-free rate, meaning investors accept a low current return because they expect significant future earnings growth to justify the premium. Whereas a high earnings yield like Drayton''s 10% suggests the market assigns lower growth expectations or perceives higher risk, not overvaluation.$EXPL$
WHERE id = 14859;

-- ID 14860: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 310-10-35 receivables analysis and credit risk assessment principles, the receivables-to-sales ratio reveals collection trends. Year 1: $400,000 / $4,000,000 = 10.0%; Year 2: $520,000 / $4,400,000 = 11.8%; Year 3: $690,000 / $4,600,000 = 15.0%. The rising ratio means receivables are growing faster than revenue, indicating loosened credit terms or slower collections and increasing credit risk. Although revenue grew each year, the disproportionate receivable growth signals deteriorating collection quality rather than healthy sales expansion.$EXPL$
WHERE id = 14860;

-- ID 14861: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 805-20-S99 and valuation principles used in mergers and acquisitions, enterprise value represents the total cost to acquire a company. It equals market capitalization ($400M) plus total debt ($120M) minus cash ($30M) = $490M, providing a capital-structure-neutral measure. Unlike market capitalization alone, which captures only the equity portion and ignores debt obligations the acquirer must assume, enterprise value reflects the full economic claim on the business.$EXPL$
WHERE id = 14861;

-- ID 14862: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under the five-component DuPont decomposition consistent with ASC 740-10-10 tax analysis principles, the tax burden ratio equals net income divided by pre-tax income: $675,000 / $900,000 = 0.75. This means 75% of pre-tax income survives taxation, implying a 25% effective tax rate. However, the effective tax rate of 0.25 ($225,000 / $900,000) is the complement of the tax burden ratio and should not be confused with it — the tax burden ratio measures retention, not the tax rate itself.$EXPL$
WHERE id = 14862;

-- ID 14863: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 330-10-35 inventory measurement guidance and standard ratio analysis, inventory turnover equals COGS divided by average inventory. Average inventory = ($350,000 + $450,000) / 2 = $400,000, yielding turnover of $2,800,000 / $400,000 = 7.0 times per year. Unlike using ending inventory alone ($2,800,000 / $450,000 ≈ 6.2), which ignores beginning-period levels, the average smooths seasonal or timing fluctuations for a more accurate measure of how efficiently inventory is converted to sales.$EXPL$
WHERE id = 14863;

-- ID 14864: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under financial analysis principles consistent with ASC 820-10-35 fair value concepts, Tobin''s Q equals (market capitalization + total debt − cash) / replacement cost of assets = ($180M + $60M − $20M) / $250M = 0.88. A Q below 1.0 means the market values the firm below asset replacement cost, suggesting new capital investment may not create value. While a Q above 1.0 would signal the market rewards the firm''s asset deployment, 0.88 indicates the opposite — expansion at replacement cost would likely destroy shareholder value.$EXPL$
WHERE id = 14864;

-- ID 14865: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 and market-based valuation principles, the price-to-sales (P/S) ratio equals market capitalization divided by total revenue, measuring how much investors pay per dollar of revenue. For CloudSync, P/S = $320M / $40M = 8.0x. This metric is particularly useful for unprofitable companies where earnings-based multiples cannot be applied. Unlike the price-to-earnings ratio, which requires positive net income, P/S provides a valuation benchmark based on top-line revenue regardless of current profitability.$EXPL$
WHERE id = 14865;

-- ID 14866: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 470-10-50 debt disclosure requirements and solvency analysis principles, the total debt ratio equals total liabilities divided by total assets, capturing all obligations including current liabilities. The long-term debt ratio equals long-term debt divided by total assets, excluding current liabilities to focus on permanent capital structure. While both measure leverage, the distinction matters because high current liabilities may inflate the total debt ratio without reflecting long-term structural leverage that defines the company''s capital position.$EXPL$
WHERE id = 14866;

-- ============================================================
-- FINANCIAL VALUATION METHODS (10 questions)
-- ============================================================

-- ID 14263: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 fair value measurement and business valuation standards, a key person discount reduces enterprise value to reflect the risk of earnings deterioration if a critical individual departs. When 60% of revenue depends on one person''s non-transferable relationships, the probability-weighted impact of departure materially reduces value to a buyer. Unlike the discount for lack of marketability, which addresses the inability to sell shares quickly on a public exchange, the key person discount specifically quantifies dependence risk tied to an individual.$EXPL$
WHERE id = 14263;

-- ID 14264: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 and business valuation standards, the cost approach (also called the asset-based approach) values a business by adjusting all assets and liabilities to fair value and computing net asset value. It reflects the replacement or reproduction cost of the company''s asset base and is most appropriate for asset-intensive businesses, holding companies, or entities with minimal cash flow. Unlike the income approach, which capitalizes expected future earnings or discounts projected cash flows, the cost approach focuses on the current value of tangible and intangible assets in place.$EXPL$
WHERE id = 14264;

-- ID 14268: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-10-35 derivative valuation and the Black-Scholes option pricing model, option value increases with volatility, measured by the Greek letter vega. Higher volatility increases the probability that the stock price will exceed the exercise price at expiration, benefiting the warrant holder. While higher volatility increases risk for stockholders who bear both upside and downside, warrant holders benefit because their downside is capped at the premium paid whereas their upside is theoretically unlimited.$EXPL$
WHERE id = 14268;

-- ID 14272: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 fair value measurement and CAPM valuation methodology, the historical equity risk premium approach measures average excess returns of equities over risk-free rates using long-term data. Its primary limitation is the assumption of stationarity — that past premiums predict future premiums — which structural changes in markets, regulation, and investor behavior may invalidate. Unlike the implied approach, which derives the ERP from current market prices and expected dividends, the historical method cannot incorporate forward-looking market conditions.$EXPL$
WHERE id = 14272;

-- ID 14813: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 470-10-05 and capital structure theory, the pecking order theory states firms prefer internal funds first, then debt, then equity as a last resort due to information asymmetry costs. Profitable companies generate sufficient retained earnings to fund investments internally, avoiding flotation costs and adverse selection problems of external financing. While Modigliani-Miller irrelevance suggests capital structure does not matter in perfect markets, the pecking order theory addresses real-world imperfections that make internal funding systematically preferred.$EXPL$
WHERE id = 14813;

-- ID 14814: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-55 fair value measurement and fixed-income valuation principles, duration measures the approximate percentage change in a bond''s price for a 1% change in interest rates. It represents the weighted average time to receive all cash flows and serves as the primary measure of interest rate sensitivity. Unlike time to maturity, which is a single input reflecting only when principal is returned, duration captures the timing of all coupon and principal cash flows to quantify overall price risk.$EXPL$
WHERE id = 14814;

-- ID 14819: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-20-25 hedge accounting and derivative instrument guidance, a pay-fixed, receive-floating interest rate swap effectively converts variable-rate debt into fixed-rate debt. The floating receipts from the swap offset the variable interest payments on the loan, leaving only the fixed payment obligation. Unlike an interest rate cap, which merely limits the maximum rate while allowing the borrower to pay variable rates below the cap, a swap provides complete conversion to a predictable fixed cost.$EXPL$
WHERE id = 14819;

-- ID 14821: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 830-10-45 foreign currency translation and ASC 830-20-35 transaction measurement, the equipment sale creates transaction exposure because it involves a contractual commitment denominated in a foreign currency (JPY 500 million receivable). The subsidiary''s financial statement conversion represents translation exposure under ASC 830-10, which arises when converting foreign currency statements for consolidation. Unlike economic exposure, which reflects long-term competitive effects of exchange rate changes, transaction exposure relates to specific existing contractual obligations.$EXPL$
WHERE id = 14821;

-- ID 14822: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 fair value measurement and fixed-income valuation principles, the approximate price change equals negative modified duration multiplied by the yield change: −6.2 × 0.75% = −4.65%. Modified duration provides a linear estimate of the percentage price decline for a given rate increase. Although convexity adjustments can refine this estimate for larger yield changes, the linear duration approximation correctly captures the inverse relationship — bond prices decrease when interest rates rise, unlike equities where the relationship is less direct.$EXPL$
WHERE id = 14822;

-- ID 14824: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under macroeconomic analysis principles applied in business valuation per ASC 820-10-35, a trough is the lowest point of the business cycle, characterized by minimum economic output, high unemployment, and low inflation. It marks the transition from contraction to expansion as economic activity begins to recover. Unlike a contraction, which features falling GDP and rising unemployment but has not yet reached the minimum output level, a trough represents the inflection point where the economy bottoms out before recovery begins.$EXPL$
WHERE id = 14824;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 1190: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 33 and GASB Statement No. 34, property tax revenue recognition differs between fund and government-wide statements due to different measurement focuses. On fund statements using modified accrual, the $450,000 collectible within 90 days exceeds the 60-day availability period and is reported as a deferred inflow. On government-wide statements using full accrual, revenue is recognized at levy when the enforceable legal claim arises. While the fund-level availability criterion prevents recognition beyond 60 days, the government-wide economic resources focus recognizes the full amount as revenue.$EXPL$
WHERE id = 1190;

-- ID 1191: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, the different measurement focuses produce different treatment for debt payments. On fund statements using the current financial resources focus, both the $2,000,000 principal and $600,000 interest consume current resources and are reported as expenditures. On government-wide statements using the economic resources focus, principal reduces the bonds payable liability rather than creating expense, while interest remains an expense. Although interest treatment is consistent across both levels, the principal payment is the primary reconciling item because it represents a liability reduction, not a resource consumption.$EXPL$
WHERE id = 1191;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (1 questions)
-- ============================================================

-- ID 3262: Internal-Use Software and Cloud Computing
UPDATE questions SET
  explanation = $EXPL$Under ASC 350-40-15 as amended by ASU 2018-15, a cloud computing arrangement contains a software license if two conditions are met: (1) the customer has the contractual right to take possession without significant penalty, and (2) it is feasible for the customer to run the software independently. Danforth''s take-possession clause satisfies the first condition, and technical capability satisfies the second. Unlike arrangements where the software runs solely on the vendor''s servers with no take-possession right, Danforth''s contract meets both criteria and should be accounted for as a license rather than a service.$EXPL$
WHERE id = 3262;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (11 questions)
-- ============================================================

-- ID 2970: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under CVP analysis principles consistent with ASC 420-10 cost structure analysis, before automation the contribution margin is $20/unit ($50 − $30) with breakeven at 20,000 units ($400,000 / $20). After automation, the contribution margin rises to $32/unit ($50 − $18) but breakeven increases to 37,500 units ($1,200,000 / $32). The higher fixed cost proportion increases the degree of operating leverage, amplifying both upside profit potential and downside risk. However, claiming automation lowers the breakeven point is incorrect because the tripled fixed costs outweigh the higher per-unit contribution margin.$EXPL$
WHERE id = 2970;

-- ID 2972: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under CVP sensitivity analysis principles consistent with ASC 280-10 operating segment analysis, Thornfield''s operating income declines only 7.5% ($75,000) from a 10% variable cost increase because variable costs are a small portion of its cost structure ($5 of $25 per unit). Birchwood''s operating income declines 41.5% ($270,000) because variable costs dominate its structure ($18 of $25). While high fixed costs magnify the impact of volume changes, it is high variable costs that magnify the impact of input cost shocks — making Birchwood far more sensitive to raw material price increases.$EXPL$
WHERE id = 2972;

-- ID 2978: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under CVP analysis principles consistent with ASC 280-10 segment profitability measurement, the margin of safety measures the cushion between current sales and the breakeven point: ($2,000,000 − $1,600,000) / $2,000,000 = 20%. This means sales can decline by $400,000 (20%) before the company begins incurring losses, indicating the company''s buffer against downturns. Unlike profit margin, which measures the ratio of profit to revenue, the margin of safety specifically quantifies how far sales can fall before reaching the zero-profit breakeven threshold.$EXPL$
WHERE id = 2978;

-- ID 2997: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under CVP analysis principles consistent with ASC 280-10 multi-product profitability analysis, the weighted-average contribution margin shifts from $30 (0.60 × $40 + 0.40 × $15) to $25 (0.40 × $40 + 0.60 × $15). Breakeven rises from 20,000 units ($600,000 / $30) to 24,000 units ($600,000 / $25). If the company continues selling 20,000 units, it falls $100,000 short of breakeven despite no volume decline. While total units remain unchanged, the shift toward the lower-margin product reduces the weighted-average contribution per unit, directly increasing the breakeven threshold.$EXPL$
WHERE id = 2997;

-- ID 14105: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under quantitative analysis principles applied in financial forecasting per ASC 820-10-35, multicollinearity occurs when independent variables are highly correlated with each other (r > 0.90). It inflates standard errors of individual regression coefficients, causing t-statistics to appear insignificant even while the overall model F-test is significant and R² is high. However, concluding the model is valid solely because R² is high and coefficients appear significant ignores that multicollinearity biases the standard errors, making individual coefficient reliability uncertain without examining variance inflation factors.$EXPL$
WHERE id = 14105;

-- ID 14106: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under ASC 275-10-50 risk and uncertainty disclosure principles and forecasting methodology, the tracking signal equals cumulative forecast error divided by mean absolute deviation: 2,400 / 600 = 4.0. A tracking signal consistently above ±3 to ±4 indicates systematic bias rather than random error. The positive value means forecasts are consistently underpredicting actual demand, requiring upward correction. Unlike MAD, which measures the magnitude of absolute deviations, the tracking signal specifically detects directional bias by examining whether cumulative errors persistently trend in one direction.$EXPL$
WHERE id = 14106;

-- ID 14107: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under financial growth analysis principles consistent with ASC 235-10 financial statement disclosure, the internal growth rate (IGR) = ROA × b / (1 − ROA × b) = 0.12 × 0.70 / (1 − 0.084) = 0.084 / 0.916 = 9.17%, approximately 9.2%. The IGR represents the maximum asset growth achievable without any external financing, relying solely on retained earnings. While simply multiplying ROA by the retention ratio yields 8.4%, this omits the denominator adjustment that accounts for the compounding effect of retained earnings growing the asset base.$EXPL$
WHERE id = 14107;

-- ID 14108: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under ASC 275-10-50 risk and uncertainty measurement principles, MAPE equals the average of absolute percentage errors: (1/n) × Σ|Actual − Forecast| / |Actual| × 100. It expresses forecast accuracy as a percentage of actual values, making it scale-independent and comparable across different products or time periods. Model X''s 8.5% MAPE outperforms Model Y''s 14.2%. Unlike cumulative error divided by periods (mean error), which can net to zero from offsetting positive and negative errors, MAPE uses absolute values to capture total deviation regardless of direction.$EXPL$
WHERE id = 14108;

-- ID 14109: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under risk analysis principles consistent with ASC 820-10-35 fair value uncertainty measurement, the coefficient of variation (CV) equals standard deviation divided by the mean. Project A: $125,000 / $500,000 = 0.25. Project B: $360,000 / $1,200,000 = 0.30. A higher CV indicates greater relative risk per unit of expected return, making Project B riskier on a risk-adjusted basis. Unlike using absolute standard deviation, which would misleadingly suggest Project B is riskier simply because it is larger, the CV normalizes for scale to enable fair comparison.$EXPL$
WHERE id = 14109;

-- ID 14110: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under ASC 275-10-50 uncertainty disclosure and regression diagnostics principles, a fan-shaped residual pattern indicates heteroscedasticity — non-constant variance of residuals that violates a key OLS assumption. While heteroscedasticity does not bias coefficient estimates themselves, it biases the standard errors, making t-statistics unreliable and confidence intervals incorrectly sized. Although R² of 0.87 and significant coefficients appear to validate the model, heteroscedasticity means the reported significance levels cannot be trusted — predictions at high shipping volumes will have wider true error bands than the model reports.$EXPL$
WHERE id = 14110;

-- ID 14111: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under ASC 275-10-50 estimation uncertainty principles and time-series methodology, Holt-Winters triple exponential smoothing extends Holt''s double exponential smoothing by adding a third smoothing equation for seasonal indices. This allows the model to capture level (alpha), trend (beta), and seasonal components (gamma) simultaneously using three smoothing parameters. Unlike regression models that use independent variables, Holt-Winters remains an exponential smoothing method that weights recent observations more heavily, making it particularly suited for data exhibiting both upward trends and recurring seasonal patterns.$EXPL$
WHERE id = 14111;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (12 questions)
-- ============================================================

-- ID 3418: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under interest rate parity theory as applied in ASC 815-10-15 derivative and hedging analysis, the forward exchange rate premium or discount between two currencies equals the interest rate differential. With U.S. rates at 5% and U.K. rates at 3%, the dollar trades at approximately a 2% forward discount against the pound, preventing risk-free arbitrage between the two markets. Unlike purchasing power parity, which links exchange rates to inflation differentials, interest rate parity specifically connects forward exchange rates to nominal interest rate differences.$EXPL$
WHERE id = 3418;

-- ID 14047: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 825-10-50 financial instrument disclosure and Federal Reserve monetary policy definitions, M1 is the narrowest measure of money supply and includes the most liquid forms of money — physical currency in circulation, demand deposits (checking accounts), and other checkable deposits such as NOW accounts. These instruments are immediately available for transactions without conversion. Unlike M2, which adds savings deposits, money market funds, and small time deposits to M1, the M1 measure captures only funds that can be spent directly without delay or penalty.$EXPL$
WHERE id = 14047;

-- ID 14048: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-10-15 derivative instrument guidance and counterparty risk analysis, interest rate swaps are OTC derivatives that lack clearinghouse guarantees. When a swap has positive mark-to-market value to one party, that party bears credit exposure to the counterparty. With $800,000 in positive value and the bank downgraded to near-junk status, Belmont faces the risk that the bank cannot make net settlement payments. Unlike systematic market risk, which affects all participants broadly, counterparty credit risk is specific to the individual institution''s ability to perform on its contractual obligations.$EXPL$
WHERE id = 14048;

-- ID 14049: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under capital budgeting principles consistent with ASC 820-10-35 fair value and present value methodology, the traditional IRR assumes intermediate cash flows are reinvested at the IRR itself (28%), which overstates returns when IRR significantly exceeds the firm''s actual reinvestment rate. MIRR corrects this by compounding interim cash flows at WACC (10%) and discounting costs at the financing rate, producing a more realistic 16.5%. While both metrics exceed the WACC hurdle rate, MIRR''s advantage is the realistic reinvestment assumption rather than a guaranteed conservative bias.$EXPL$
WHERE id = 14049;

-- ID 14051: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 280-10-50 segment reporting and Keynesian macroeconomic theory, the government spending multiplier equals 1/(1 − MPC). With MPC = 0.80, the multiplier is 1/0.20 = 5.0, so $100 billion in government spending produces $500 billion in total GDP increase through successive rounds of consumption spending. The second advisor''s claim is correct because each dollar spent becomes income that is partially re-spent. However, claiming a dollar-for-dollar effect ignores the multiplier entirely and misunderstands how aggregate demand propagates through the economy.$EXPL$
WHERE id = 14051;

-- ID 14052: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 825-10-50 financial instrument risk disclosure and Federal Reserve monetary policy, lowering the reserve requirement from 10% to 8% on $50 million in deposits reduces required reserves from $5 million to $4 million, freeing $1 million for additional lending. This expands the money supply through the fractional reserve banking system. However, raising the reserve requirement would have the opposite effect — reducing lending capacity — so the direction of the change is critical to understanding the monetary policy impact on credit availability.$EXPL$
WHERE id = 14052;

-- ID 14053: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 280-10-50 economic environment analysis and macroeconomic policy principles, a negative supply shock creates a policy dilemma because it pushes prices up and output down simultaneously (stagflation). Expansionary monetary policy would boost aggregate demand, helping restore output and employment, but would add further inflationary pressure on already rising prices. Unlike demand-driven recessions where inflation and output move in the same direction — allowing policy to address both simultaneously — supply shocks force policymakers to choose which problem to prioritize, creating an inherent trade-off.$EXPL$
WHERE id = 14053;

-- ID 14054: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 fair value measurement and economic value analysis, EVA = NOPAT − (Invested Capital × WACC) = $12M − ($80M × 10%) = $12M − $8M = $4 million. A positive EVA means the company earns more than its cost of capital, creating shareholder value. Unlike NOPAT alone, which ignores the opportunity cost of invested capital, EVA deducts a capital charge to measure whether returns exceed what investors could earn elsewhere at equivalent risk, capturing true economic profit.$EXPL$
WHERE id = 14054;

-- ID 14055: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under capital budgeting risk analysis principles consistent with ASC 820-10-35 fair value uncertainty assessment, sensitivity analysis varies one input at a time to identify which assumptions most affect the investment decision. Sales volume causes the largest NPV swing ($1.2M to −$300K, a $1.5M change) and is the only variable that flips the decision from accept to reject. While the discount rate increase causes an $800K swing and raw material costs a $500K swing, neither reverses the accept decision, making sales volume the critical risk factor requiring closest monitoring.$EXPL$
WHERE id = 14055;

-- ID 14056: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under capital budgeting principles consistent with ASC 360-10-35 long-lived asset evaluation, the equivalent annual annuity (EAA) method converts each project''s NPV into an annualized value over its life, enabling fair comparison when mutually exclusive projects have unequal lives. Machine A''s 3-year NPV of $18,000 may yield a higher EAA than Machine B''s 5-year NPV of $25,000 once annualized. While comparing NPVs directly accounts for time value of money, it fails to account for the difference in replacement timing when projects will be repeated at the end of their useful lives.$EXPL$
WHERE id = 14056;

-- ID 14057: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-10-15 derivative instrument guidance, a put option gives the holder the right, not the obligation, to sell at the strike price. Since the spot rate ($1.30/GBP) exceeds the strike ($1.25/GBP), selling at spot yields more per pound. The treasurer lets the option expire worthless and converts at $1.30, receiving $650,000 instead of $625,000. Although the $15,000 premium ($0.03 × 500,000) is a sunk cost, exercising the put at $1.25 would be irrational because it would mean accepting $25,000 less than the prevailing market rate.$EXPL$
WHERE id = 14057;

-- ID 14058: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 420-10-25 cost structure analysis and CVP principles, breakeven equals fixed costs divided by contribution margin per unit. Original: $200,000 / ($25 − $15) = 20,000 units. After the price cut: $200,000 / ($22 − $15) = 28,571 units. Reducing price from $25 to $22 shrinks the contribution margin from $10 to $7 per unit, requiring more units to cover the same fixed costs. While fixed costs remain unchanged, the lower contribution margin per unit directly increases the breakeven point — the opposite of what would happen if variable costs were reduced instead.$EXPL$
WHERE id = 14058;

COMMIT;
