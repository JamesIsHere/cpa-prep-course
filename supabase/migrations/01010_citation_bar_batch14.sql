-- Migration: Citation backfill — BAR batch 14 (50 questions)
-- Date: 2026-03-31
-- Purpose: Add standard citations to 50 explanations for BAR section
-- Affected topics: Business Combinations, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Prospective Analysis and Forecasting, Risk Management and Economics

BEGIN;

-- ============================================================
-- BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 14417: Business Combinations
UPDATE questions SET
  explanation = $EXPL$Under ASC 805-20-30, goodwill in a business combination equals the sum of consideration transferred plus noncontrolling interest minus fair value of identifiable net assets. Using the fair value method, goodwill is $14,000,000 + $6,200,000 − $16,000,000 = $4,200,000; using the proportionate share method, NCI is 30% × $16,000,000 = $4,800,000, yielding goodwill of $2,800,000. The $1,400,000 difference arises because the proportionate share method excludes the NCI''s share of goodwill, whereas the fair value method includes goodwill attributable to both the parent and the noncontrolling interest.$EXPL$
WHERE id = 14417;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (14 questions)
-- ============================================================

-- ID 14956: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per ASC 220-10-S99, when evaluating operational performance independent of capital structure, return on assets should add back after-tax interest: [net income + interest expense × (1 − tax rate)] / average total assets = [$180,000 + $60,000 × 0.75] / $2,000,000 = $225,000 / $2,000,000 = 11.25%. This adjustment removes the effect of financing decisions so that companies with different capital structures can be compared on operating efficiency alone. Using only net income (9.0%) would incorrectly penalize the company for its debt level, whereas adding back pre-tax interest (12.0%) overstates the adjustment by ignoring the tax shield benefit.$EXPL$
WHERE id = 14956;

-- ID 14957: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per financial analysis standards consistent with ASC 230-10-45, free cash flow equals operating cash flow minus capital expenditures: $750,000 − $300,000 = $450,000. FCF represents cash available for debt repayment, dividends, or reinvestment after maintaining productive capacity. Using net income of $500,000 as the starting point is incorrect because net income includes non-cash items and does not reflect actual cash generation, whereas operating cash flow captures the true cash-generating ability of operations.$EXPL$
WHERE id = 14957;

-- ID 14958: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per ASC 205-10-S99 and SEC guidance on financial statement analysis, after paying $500,000: current assets drop to $700,000 and current liabilities to $400,000, yielding a current ratio of 1.75 versus the original 1.33. This is classic window dressing — a temporary year-end transaction reversed immediately in the next period. Comparing year-end ratios to quarterly averages reveals the distortion. The claim that the net effect is zero ignores that the repayment and reborrowing fall in different reporting periods, whereas when the original ratio exceeds 1.0, equal reductions in both components mathematically increase the ratio.$EXPL$
WHERE id = 14958;

-- ID 14959: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per ASC 260-10-45 and standard financial analysis guidance, return on equity (net income divided by average shareholders'' equity) measures the rate of return earned on owners'' investment. ROE indicates how effectively management uses equity capital to generate profit — here $480,000 / $3,200,000 = 15%. The efficiency of using assets to generate sales is measured by asset turnover, not ROE, whereas the proportion of debt financing is captured by leverage ratios like debt-to-equity, which are distinct metrics from profitability ratios.$EXPL$
WHERE id = 14959;

-- ID 14960: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per financial analysis guidance consistent with ASC 210-10-45, days payable outstanding equals (average accounts payable / total purchases) × 365 = ($300,000 / $2,190,000) × 365 = 50.0 days. DPO measures the average number of days a company takes to pay its suppliers, providing insight into cash management practices and vendor payment cycles. The value 7.3 represents the payables turnover ratio ($2,190,000 / $300,000), which is the reciprocal measure, whereas DPO converts that turnover into days for more intuitive interpretation.$EXPL$
WHERE id = 14960;

-- ID 14961: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per ASC 260-10-45 and the DuPont framework for financial analysis, the sustainable growth rate equals ROE multiplied by the retention ratio (1 minus the dividend payout ratio). This formula estimates the maximum rate a firm can grow using only internally generated funds without changing its capital structure or issuing new equity. Net profit margin and asset turnover are DuPont components that feed into ROE but do not alone determine sustainable growth, whereas the payout ratio is the complement of retention — the formula requires the retention ratio specifically, not the payout ratio.$EXPL$
WHERE id = 14961;

-- ID 14962: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per ASC 310-10-50 and financial analysis guidance, receivables turnover equals net credit sales divided by average accounts receivable. Original turnover: $4,000,000 / $400,000 = 10.0 times. New turnover: $4,800,000 / $800,000 = 6.0 times. Extending credit terms caused receivables to double while sales grew only 20%, significantly reducing collection efficiency. The assumption that the ratio remains unchanged is incorrect because the percentage increases in the numerator and denominator are not proportional — receivables increased 100% whereas sales increased only 20%.$EXPL$
WHERE id = 14962;

-- ID 14963: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per comprehensive financial analysis under ASC 210-10-45 and ASC 470-10, Pacifica''s debt-to-equity of 3.5 (versus industry 1.2) signals excessive leverage. Times interest earned of 1.8 (versus 4.5) means EBIT barely covers interest. A current ratio of 0.85 indicates inability to meet short-term obligations. The 22% ROE is inflated by the equity multiplier effect — high leverage amplifies returns in good times but creates severe downside risk. Superior ROE alone does not indicate outperformance when driven by dangerous leverage levels, unlike genuinely profitable firms where high ROE reflects operating efficiency rather than financial risk.$EXPL$
WHERE id = 14963;

-- ID 14964: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per ASC 505-30-30 on treasury stock transactions, after a $1,000,000 cash buyback: total assets decrease to $4,000,000, equity decreases to $2,000,000, and debt remains $2,000,000. ROE rises from 15% to 22.5% ($450,000 / $2,000,000). EPS increases from $0.90 to $1.35 as fewer shares remain outstanding. Debt-to-equity rises from 0.67 to 1.00 because equity decreased while debt stayed constant. The claim that all ratios move in the opposite direction is incorrect because reducing equity while holding income constant mathematically increases ROE and EPS, whereas debt-to-equity rises rather than falls.$EXPL$
WHERE id = 14964;

-- ID 14965: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per ASC 210-10-S99 and financial analysis standards, the asset turnover ratio (net sales divided by average total assets) measures how efficiently a company deploys its asset base to produce revenue. A ratio of $12M / $4M = 3.0 indicates strong asset utilization. The rate of return on total assets is measured by ROA, which uses net income rather than revenue, whereas inventory turnover specifically measures how quickly inventory is sold and replenished — a narrower efficiency metric distinct from total asset utilization.$EXPL$
WHERE id = 14965;

-- ID 14967: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per ASC 210-10-S99 and financial analysis guidance, ROA equals net income divided by average total assets: $240,000 / [($1,600,000 + $2,000,000) / 2] = $240,000 / $1,800,000 = 13.3%. Using the average of beginning and ending assets provides a more representative denominator that accounts for asset changes throughout the period. The 15.0% figure incorrectly uses only beginning assets ($240,000 / $1,600,000), whereas 12.0% incorrectly uses only ending assets — both approaches fail to capture the true asset base employed during the year.$EXPL$
WHERE id = 14967;

-- ID 14968: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per ASC 210-10-45 and financial analysis principles, paying accounts payable reduces both current assets and current liabilities by $100,000. Working capital remains unchanged at $200,000 ($500,000 − $300,000 equals $600,000 − $400,000). The current ratio increases from 1.50 ($600,000 / $400,000) to 1.67 ($500,000 / $300,000). When the current ratio exceeds 1.0, equal reductions in both components increase the ratio. The claim that the current ratio decreases is incorrect because reducing equal amounts from a ratio above 1.0 mathematically raises the quotient, unlike a ratio below 1.0 where the same transaction would decrease it.$EXPL$
WHERE id = 14968;

-- ID 14970: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per ASC 505-10-S99 and financial analysis guidance, book value per common share equals (total stockholders'' equity minus preferred equity) divided by common shares outstanding: ($4,200,000 − $700,000) / 500,000 = $7.00. Preferred stock must be subtracted at its liquidation value to isolate common shareholders'' residual interest. Using total equity without subtracting preferred stock yields $8.40, which is incorrect because preferred shareholders have a prior claim, whereas the $3.50 figure would require doubling the share count in error.$EXPL$
WHERE id = 14970;

-- ID 14971: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per ASC 210-10-S99 and the DuPont analysis framework, the equity multiplier equals average total assets divided by average shareholders'' equity: $3,000,000 / $750,000 = 4.0. An EM of 4.0 means only 25% of assets are equity-financed (75% debt), compared to 40% equity for the peer with EM of 2.5. Fairmont is significantly more leveraged. The claim that a higher equity multiplier indicates less leverage is incorrect because a larger multiplier means more assets per dollar of equity, whereas a lower multiplier like 2.5 indicates a stronger equity foundation relative to total assets.$EXPL$
WHERE id = 14971;

-- ============================================================
-- FINANCIAL VALUATION METHODS (10 questions)
-- ============================================================

-- ID 15608: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Per ASC 815-20-25 and ASC 830-20-35, the 90-day forward contract hedges only the transaction exposure — the known ¥500M receivable due in 90 days. Translation exposure (converting the subsidiary''s yen financial statements to USD under ASC 830-10-45) and economic exposure (long-term competitive effects of yen depreciation) remain unhedged. Each exposure type requires different strategies. A forward contract is designed specifically for hedging contractual foreign currency amounts, whereas translation and economic exposures require balance sheet hedging or operational restructuring, not short-term forwards.$EXPL$
WHERE id = 15608;

-- ID 15609: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Per ASC 820-10-55 fair value measurement inputs and macroeconomic indicator classification, both the unemployment rate and CPI are lagging indicators. The unemployment rate rises after a recession begins and falls after recovery is underway. CPI reflects price changes resulting from prior economic activity. Lagging indicators confirm trends rather than predict them. Leading indicators such as stock prices, building permits, and consumer confidence change before the economy turns, whereas coincident indicators like real GDP and industrial production move simultaneously with economic activity.$EXPL$
WHERE id = 15609;

-- ID 15610: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Per ASC 820-10-35 and business cycle theory applied in financial valuation, the trough is the lowest point of the business cycle, characterized by minimum output, high unemployment, and low inflation. It marks the transition from contraction to expansion where economic activity has bottomed out. Rising GDP and falling unemployment describe the expansion phase, whereas maximum output and full employment describe the peak — the opposite end of the cycle from the trough.$EXPL$
WHERE id = 15610;

-- ID 15611: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Per ASC 830-20-25 and hedging guidance, natural hedging matches cash inflows (euro revenue) with cash outflows (euro interest and principal payments) in the same currency, reducing net exposure without derivative instruments. It eliminates recurring derivative costs ($2.4M annually) and rollover risk from continuously renewing short-term forwards. The claim that natural hedging eliminates all currency risk is incorrect because timing and amount mismatches between revenue and debt service create residual exposure, whereas the structural matching still provides more cost-effective long-term protection than rolling forward contracts.$EXPL$
WHERE id = 15611;

-- ID 15612: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Per ASC 815-10-15 and ASC 830-20-35, by entering a forward contract Dalton locks in the forward rate of $1.26/£. Regardless of the spot rate at settlement, Dalton receives £2,000,000 × $1.26 = $2,520,000. The forward contract eliminates exchange rate uncertainty on the contractual amount. The $2,440,000 figure uses the actual spot rate ($1.22) and represents the unhedged outcome, whereas $2,560,000 incorrectly applies the original spot rate ($1.28) — forward contracts lock in the forward rate, not the spot rate at inception.$EXPL$
WHERE id = 15612;

-- ID 15613: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Per ASC 820-10-35 and fixed-income analysis standards, modified duration measures the approximate percentage change in a bond''s price for a 1% (100 basis point) change in yield. A bond with modified duration of 5.0 will decline approximately 5% if yields rise by 1%. This metric is essential for managing interest rate risk in bond portfolios. The weighted average time to receive cash flows describes Macaulay duration, not modified duration, whereas time to maturity is a simpler measure that does not account for interim coupon payments or yield sensitivity.$EXPL$
WHERE id = 15613;

-- ID 15614: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Per ASC 715-30-35 and fixed-income immunization theory, portfolio duration equals (0.5 × 4.2) + (0.5 × 9.8) = 7.0 years, matching the 7-year liability horizon. Duration matching provides first-order immunization — price losses from rising rates are approximately offset by higher reinvestment income on coupons. However, perfect immunization also requires matching convexity. The claim that rising rates simply cause bond losses overlooks the reinvestment offset that is the essence of immunization, whereas duration matching provides substantial but not perfect protection since convexity mismatches and non-parallel shifts create residual risk.$EXPL$
WHERE id = 15614;

-- ID 15615: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Per ASC 815-10-15 and derivative instrument guidance, an interest rate cap sets a ceiling on the floating rate. If SOFR rises above the cap strike rate, the cap seller compensates the borrower for the excess interest cost. If rates fall, the borrower benefits from lower payments since the cap does not obligate payment at a minimum rate. This asymmetric payoff matches the CFO''s requirements. An interest rate swap would convert to a fixed rate and eliminate both upside and downside, whereas an interest rate floor protects against falling rates and is typically purchased by lenders rather than borrowers.$EXPL$
WHERE id = 15615;

-- ID 15616: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Per macroeconomic transmission mechanisms relevant to ASC 820-10-35 fair value measurement, a Fed funds rate cut transmits through the economy: short-term lending rates fall, the yield curve shifts down, and the risk-free rate in CAPM declines, reducing WACC. With a lower discount rate, the NPV of capital projects increases, encouraging investment — the intended stimulative effect of expansionary monetary policy. The claim that rate cuts affect only interbank lending is incorrect because the federal funds rate anchors the entire short-term rate structure, whereas the immediate transmission effect is lower nominal rates rather than increased inflation expectations.$EXPL$
WHERE id = 15616;

-- ID 15617: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Per macroeconomic theory applied to ASC 820-10-35 valuation, crowding out occurs through the interest rate channel. Increased government borrowing of $200 billion raises demand for loanable funds, pushing up interest rates. Higher rates increase the cost of capital for private firms, reducing NPV of marginal projects and discouraging private investment. This partially offsets the intended stimulative effect of fiscal policy. The claim that crowding out operates through physical resource competition is secondary to the financial channel, whereas deficit-financed spending does not directly reduce the money supply — that is controlled by the Federal Reserve through monetary policy.$EXPL$
WHERE id = 15617;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 14456: Foreign Currency Transactions
UPDATE questions SET
  explanation = $EXPL$Per ASC 830-10-45, under the current rate method all net assets (LC 80M − LC 50M = LC 30M) are exposed to translation because all assets and liabilities are translated at the current exchange rate. Under the temporal method per ASC 830-10-55, only net monetary items are exposed: monetary assets (LC 50M) minus monetary liabilities (LC 50M) yields a near-zero net monetary position, since nonmonetary items (LC 30M) are translated at historical rates. The exposure shifts from LC 30M net asset exposure to a near-zero net monetary position, whereas the claim that both methods produce identical exposures is incorrect because the temporal method excludes nonmonetary items from current-rate translation.$EXPL$
WHERE id = 14456;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 14360: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Per GASB Statement No. 34, paragraph 77, the reconciliation between fund and government-wide statements must explain differences in measurement focus. The net increase in compensated absences is $1,350,000 − $1,100,000 = $250,000. Governmental funds expensed $420,000 in cash payments, while government-wide statements recognized $670,000 total. The reconciling adjustment subtracts $250,000 (the increase in the long-term liability not recognized in fund expenditures). The increase in a long-term liability reduces the change in net position and must be subtracted, whereas the $420,000 cash payment requires no adjustment since it was recorded identically under both measurement bases.$EXPL$
WHERE id = 14360;

-- ID 14363: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Per GASB Statement No. 34, paragraphs 80-83, bond discount amortization increases interest expense on government-wide statements. The discount represents additional borrowing cost spread over the bond''s life, and each period the amortization is added to the coupon interest payment to determine total economic interest expense. Governmental funds do not amortize the discount — they recorded it as a reduction of other financing sources at issuance under the current financial resources measurement focus. Premium amortization decreases interest expense, whereas discount amortization increases it because the entity received less than face value and must recognize the additional cost over the bond''s term.$EXPL$
WHERE id = 14363;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (11 questions)
-- ============================================================

-- ID 14789: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per statistical forecasting best practices referenced in AT-C Section 301 on prospective financial information, time-series cross-validation preserves temporal order by always training on past data and testing on future data, producing realistic forecast accuracy metrics. With time-ordered quarterly data, random k-fold splits allow future observations into training sets, creating information leakage that inflates performance estimates. A single 70/30 split is sensitive to which observations fall into each set and fails to address temporal ordering if random, whereas standard 5-fold cross-validation randomly shuffles observations across folds, violating the time-series structure.$EXPL$
WHERE id = 14789;

-- ID 14790: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per AT-C Section 301 on prospective financial statements and statistical modeling guidance, stepwise regression iteratively adds the most statistically significant variable (forward step) and then checks whether any previously added variable should be removed (backward step). The process continues until no variable meets the entry or removal criteria, producing a parsimonious model. Variables are not selected based solely on theoretical judgment or entered alphabetically — entry order is determined by which variable contributes the most significant improvement at each step, whereas log transformation is a data preparation technique distinct from variable selection methodology.$EXPL$
WHERE id = 14790;

-- ID 14791: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per cost-volume-profit analysis principles consistent with AT-C Section 301, contribution margin per unit equals selling price minus total variable costs: $85 − $34 = $51. This amount contributes toward covering fixed costs and generating profit with each unit sold. The $65 figure incorrectly subtracts only materials ($20) from the selling price, omitting labor and variable overhead from total variable costs, whereas $34 is the variable cost itself rather than the contribution margin — it represents what is subtracted, not the remainder available for fixed cost coverage.$EXPL$
WHERE id = 14791;

-- ID 14792: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per AT-C Section 301 on prospective financial information and the external financing needs formula, the retained earnings term is PM × S₁ × (1 − d), where d is the payout ratio. Reducing d from 0.50 to 0.25 increases (1 − d) from 0.50 to 0.75, generating 50% more retained earnings. This additional internal funding directly reduces EFN. The payout ratio explicitly appears in the EFN formula through the (1 − d) retention factor, so dividend policy directly affects the financing gap, whereas the claim that cutting payout from 50% to 25% doubles retained earnings is incorrect — retention increases from 50% to 75%, a 50% increase rather than 100%.$EXPL$
WHERE id = 14792;

-- ID 14793: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per AT-C Section 301 and forecasting accuracy measurement standards, Theil''s U statistic equals the model''s RMSE divided by the naive forecast''s RMSE: 4,200 / 6,000 = 0.70. A value below 1.0 means the model outperforms the naive benchmark; above 1.0 means it does worse than simply using last period''s actual as the forecast. Dividing RMSE by the mean describes a coefficient of variation of RMSE, not Theil''s U, whereas the coefficient of determination (R-squared) measures variance explained — an entirely different forecast quality metric.$EXPL$
WHERE id = 14793;

-- ID 14794: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per AT-C Section 301 on prospective financial information and pro forma methodology, depreciation is calculated from the existing depreciable asset base plus planned capital additions, using the company''s depreciation method and useful life estimates. It does not vary proportionally with sales in the short run, making a fixed schedule or asset-based projection more accurate than the percentage-of-sales method. Depreciation is non-cash but must appear on pro forma income statements because it reduces taxable income, whereas the claim that depreciation is unpredictable is incorrect since it follows defined schedules based on known asset values, methods, and useful lives.$EXPL$
WHERE id = 14794;

-- ID 14795: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per regression analysis principles applied under AT-C Section 301, when residual variance increases proportionally with the independent variable X, observations at high X values are noisier and less reliable. Weighting by 1/X downweights these imprecise observations and upweights more precise ones, producing efficient coefficient estimates with corrected standard errors. This weighted least squares approach addresses the heteroscedasticity that made OLS standard errors unreliable. WLS does not transform the model into log-linear form — it minimizes a weighted sum of squared residuals, whereas autocorrelation requires different remedies such as Cochrane-Orcutt or Newey-West corrections.$EXPL$
WHERE id = 14795;

-- ID 14796: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per AT-C Section 301 on prospective financial information, a pro forma balance sheet is a forward-looking projection that estimates future financial position based on management''s assumptions about revenue growth, capital expenditures, financing decisions, and operating performance. It is a planning tool used in strategic decision-making, not a historical report. Recording actual transactions describes the general ledger and historical financial statements, whereas reconciling GAAP and taxable income describes a tax provision — both are backward-looking functions distinct from pro forma financial planning.$EXPL$
WHERE id = 14796;

-- ID 14797: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per behavioral finance research applied to prospective analysis under AT-C Section 301, anchoring bias occurs when forecasters fix on an initial reference point — here Year 1 revenue of $12,000,000 — and adjust insufficiently from it, even when new evidence suggests a larger change. The 5% adjustment is disproportionately close to the anchor despite market research indicating 15-20% growth. Confirmation bias involves selectively seeking supporting evidence rather than insufficient adjustment, whereas availability bias involves overweighting vivid or recent events — the issue here is fixation on the base-year number, not selective recall.$EXPL$
WHERE id = 14797;

-- ID 14798: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per time-series forecasting methodology consistent with AT-C Section 301, a seasonal index of 0.80 means that quarter''s demand is typically 20% below the average quarterly level. An index of 1.00 represents the average; values below 1.00 indicate below-average seasons, and values above 1.00 indicate above-average seasons. An 80% increase would correspond to a seasonal index of 1.80, not 0.80, whereas the seasonal index reflects a recurring characteristic of the data rather than a year-over-year trend measurement.$EXPL$
WHERE id = 14798;

-- ID 14799: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per forecast value added (FVA) analysis principles applied to prospective financial information under AT-C Section 301, each step in the forecasting process should be evaluated for whether it improves or worsens accuracy. Step 4 (executive override) increases MAPE from 10% to 12%, meaning it adds error rather than reducing it. FVA principles require eliminating or revising steps that destroy forecast value. Step 2 (marketing adjustment) reduces MAPE from 11% to 9% and adds significant value, whereas Step 4 causes the largest deterioration (2 percentage points) and should be addressed first.$EXPL$
WHERE id = 14799;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (11 questions)
-- ============================================================

-- ID 14768: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per modern portfolio theory and the CAPM framework referenced in ASC 820-10-55, the Treynor ratio equals (portfolio return minus risk-free rate) divided by beta. Manager A: (12% − 3%) / 1.1 = 8.18. Manager B: (10% − 3%) / 0.7 = 10.0. Manager B earned more excess return per unit of systematic risk, indicating superior risk-adjusted performance. Using total return divided by beta (12% / 1.1 = 10.9) is incorrect because the Treynor ratio requires subtracting the risk-free rate before dividing, whereas using only the excess return without dividing by beta fails to normalize for the level of systematic risk taken.$EXPL$
WHERE id = 14768;

-- ID 14769: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per capital budgeting principles consistent with ASC 360-10-35, the foregone lease income of $150,000 per year is an opportunity cost — by using the warehouse internally, Greystone sacrifices rental income it could otherwise earn. Sound capital budgeting requires including opportunity costs as relevant incremental cash flows because they represent real economic resources given up. The original warehouse purchase price is a sunk cost, but the ongoing ability to earn lease income is a forward-looking opportunity cost, whereas opportunity costs are project-level cash flows and should not be embedded in the discount rate.$EXPL$
WHERE id = 14769;

-- ID 14770: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per ASC 820-10-55 market-based valuation inputs and the quantity theory of money (MV = PQ), with constant velocity the percentage change in M equals the sum of percentage changes in P and Q. Rearranging: %ΔP = %ΔM − %ΔQ = 8% − 2% = 6%. The excess money growth beyond what real output absorbs translates into higher prices. Increasing the money supply raises rather than decreases the price level under this theory, whereas the growth rates are not additive for price changes — the equation implies %P = %M − %Q, not %M + %Q.$EXPL$
WHERE id = 14770;

-- ID 14771: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per ASC 470-10-45 and corporate finance theory on agency costs of debt, asset substitution (risk shifting) occurs when management substitutes a riskier project after bonds have been issued at rates reflecting the original low-risk project. If the gamble succeeds, equity holders capture the upside; if it fails, bondholders bear the downside through higher default risk. This transfers wealth from creditors to shareholders. The underinvestment problem is distinct — it occurs when highly leveraged firms reject positive-NPV projects, whereas the pecking order hypothesis explains financing sequence preferences rather than post-issuance investment behavior.$EXPL$
WHERE id = 14771;

-- ID 14772: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per ASC 830-10-45 and international economics J-curve effect theory applied to trade analysis, a currency depreciation initially worsens the trade balance before improving it. In the short run, import and export volumes remain fixed by existing contracts, but the weaker currency makes imports costlier in domestic terms, widening the deficit. Over 12-18 months, foreign demand for cheaper exports rises and domestic consumers substitute away from expensive imports. One quarter is far too early to judge the policy, whereas the Marshall-Lerner condition explains that trade volumes adjust with a lag due to existing contracts, production lead times, and consumer habits.$EXPL$
WHERE id = 14772;

-- ID 14773: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per ASC 820-10-55 and monetary economics fractional reserve banking theory, the simple deposit multiplier equals 1 divided by the required reserve ratio. With a 10% reserve requirement, the multiplier is 1/0.10 = 10, meaning the banking system can theoretically expand an initial deposit into 10 times that amount through successive rounds of lending and redepositing. The M2/M1 ratio describes the relationship between monetary aggregates but is not the deposit multiplier, whereas the overnight interbank lending rate is the federal funds rate — a price concept distinct from the quantity-based deposit expansion mechanism.$EXPL$
WHERE id = 14773;

-- ID 14774: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per corporate finance trade-off theory and ASC 450-20-25, loss of suppliers, employees, and customers are indirect costs of financial distress — they reduce firm value through operational disruption even before formal bankruptcy. These costs often exceed direct bankruptcy costs in magnitude and offset the tax benefits of debt. Direct costs include legal fees, court costs, and administrative expenses of formal bankruptcy proceedings, whereas agency costs of equity involve shareholder-manager conflicts such as excessive compensation or empire building — distinct from stakeholder flight caused by leverage concerns.$EXPL$
WHERE id = 14774;

-- ID 14775: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per modern portfolio theory and the Capital Asset Pricing Model framework referenced in ASC 820-10-55, the Capital Market Line (CML) represents all optimal portfolios created by combining the risk-free asset with the market portfolio. It plots expected return against total risk (standard deviation), and every point on the CML offers maximum expected return for a given risk level. The Security Market Line (SML) plots expected return against beta (systematic risk only), whereas the Phillips Curve describes the inflation-unemployment trade-off — a macroeconomic concept unrelated to portfolio construction.$EXPL$
WHERE id = 14775;

-- ID 14776: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per ASC 830-20-35 and covered interest rate parity theory, a forward premium means the forward exchange rate exceeds the current spot rate — the foreign currency is more expensive for future delivery than for immediate delivery. This typically occurs when the foreign country has lower interest rates than the domestic country. A forward rate below the spot rate indicates a forward discount rather than a premium, whereas equal spot and forward rates indicate zero premium or discount — not the definition of a forward premium.$EXPL$
WHERE id = 14776;

-- ID 14777: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per ASC 820-10-35 and macroeconomic analysis standards, the widely cited informal definition of a recession is two consecutive quarters of declining real GDP. While the official U.S. determination is made by the NBER using broader indicators, two straight quarters of real GDP contraction is the standard textbook rule of thumb. One quarter of negative growth does not meet the threshold, whereas a 20% market decline from a peak defines a bear market — a stock market term distinct from the macroeconomic concept of recession.$EXPL$
WHERE id = 14777;

-- ID 14778: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per ASC 740-10-25 and Laffer Curve theory in public finance, tax rates of 0% and 100% both produce zero revenue, with a revenue-maximizing rate between. The core empirical disagreement is where the peak lies — on the right (prohibitive) side, rate cuts increase revenue through behavioral responses, while on the left (normal) side, cuts simply reduce revenue. The peak is not fixed at 50% and varies by economy, tax base elasticity, and compliance conditions. The claim that the Laffer Curve is invalid confuses the theoretical framework with the empirical debate about the peak''s location, whereas tax revenue does not always decline proportionally with rate cuts because behavioral responses can partially or fully offset rate reductions.$EXPL$
WHERE id = 14778;

COMMIT;
