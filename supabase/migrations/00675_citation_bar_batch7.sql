-- Migration: Citation backfill — BAR batch 7 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Income Taxes Advanced, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 3166: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$Under ASC 810-10-45, unrealized intercompany profit from upstream sales must be eliminated proportionally between the parent and noncontrolling interest (NCI). Dalton''s adjusted income is $500,000 minus the $80,000 unrealized upstream profit ($420,000), so NCI''s 20% share equals $84,000 rather than $100,000. Unlike downstream sales where only the parent bears the elimination, upstream eliminations are shared because the subsidiary originated the profit — allocating the full elimination solely to the parent would incorrectly overstate NCI''s claim on earnings not yet realized from external parties.$EXPL$
WHERE id = 3166;

-- ID 3167: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$Under ASC 810-10-15, an entity is classified as a variable interest entity (VIE) when its equity investment at risk is insufficient to finance its activities without additional subordinated financial support. The $500,000 equity supporting $12 million in assets clearly indicates the entity cannot operate independently without the senior debt facilities. While all three VIE criteria involve economic substance, the equity insufficiency test is the primary indicator — unlike other consolidation models, VIE classification is not determined by the entity''s size, public status, or geographic location.$EXPL$
WHERE id = 3167;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (1 questions)
-- ============================================================

-- ID 3284: Advanced Lease Transactions
UPDATE questions SET
  explanation = $EXPL$Under ASC 842-10-15-37, variable lease payments that depend on sales or usage (such as percentage rent tied to gross sales exceeding a threshold) are excluded from the measurement of the lease liability and right-of-use asset. These payments are recognized as expense in the period the triggering event occurs — here, when monthly sales exceed $100,000. However, variable payments tied to an index or rate (such as CPI-adjusted rent) are included in the initial lease liability measurement, unlike the sales-based contingent rent in this scenario.$EXPL$
WHERE id = 3284;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (1 questions)
-- ============================================================

-- ID 3109: Advanced Revenue and Intangibles
UPDATE questions SET
  explanation = $EXPL$Under ASC 350-30-35-15, indefinite-lived intangible assets such as trademarks with no foreseeable limit on their revenue-generating life are not amortized but must be tested for impairment at least annually. If the carrying amount exceeds fair value, an impairment loss is recognized immediately. Unlike finite-lived intangibles that are amortized over their useful life and tested for impairment only when triggering events occur, indefinite-lived intangibles require the recurring annual impairment assessment regardless of whether indicators of impairment are present.$EXPL$
WHERE id = 3109;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 3194: Derivatives and Hedging
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-20-25, a cash flow hedge is designated to hedge the exposure to variability in expected future cash flows attributable to a particular risk. For variable-rate debt tied to SOFR, the hedging instrument (typically an interest rate swap) converts floating payments to fixed, reducing cash flow uncertainty. Unlike a fair value hedge that protects against changes in the fair value of a recognized asset or liability, a cash flow hedge addresses the variability of future cash flows, with the effective portion of gains and losses recorded in other comprehensive income.$EXPL$
WHERE id = 3194;

-- ID 3196: Derivatives and Hedging
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-30-35-3, the effective portion of a gain or loss on a hedging instrument in a qualifying cash flow hedge is recognized in other comprehensive income (OCI) and accumulated in AOCI. It is reclassified from AOCI into earnings in the same period that the hedged forecasted transaction affects earnings, ensuring proper matching. However, the ineffective portion of the hedge gain or loss is recognized immediately in current earnings rather than being deferred in OCI, unlike the effective portion.$EXPL$
WHERE id = 3196;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (9 questions)
-- ============================================================

-- ID 2964: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under the DuPont framework, ROA decomposes into profit margin multiplied by asset turnover (ASC 280-10 encourages segment reporting that reveals such operating model differences). Hawthorne''s 2% margin times 5.0 turnover and Meridian''s 25% margin times 0.4 turnover both equal 10% ROA, but the decomposition reveals fundamentally different strategies — high-volume retail versus high-margin software. While both achieve identical ROA, an analyst benchmarking Hawthorne against Meridian''s margin would incorrectly flag a problem, because each model''s profitability must be assessed against industry peers using the same competitive strategy.$EXPL$
WHERE id = 2964;

-- ID 2965: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under financial analysis principles consistent with ASC 210-10-45, liquidity ratios are computed from classified balance sheet data. The current ratio is $1,050,000 / $500,000 = 2.10, the quick ratio excludes inventory and prepaids ($550,000 / $500,000 = 1.10), and the cash ratio uses only cash ($200,000 / $500,000 = 0.40). Although all three measure short-term liquidity, the quick ratio is more conservative than the current ratio because it excludes less liquid assets like inventory that may not convert to cash quickly.$EXPL$
WHERE id = 2965;

-- ID 2966: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 250-10-50 and financial analysis guidance, different accounting policy choices (e.g., FIFO vs. LIFO for inventory per ASC 330) can materially distort financial ratios, making cross-company comparisons misleading. A LIFO-based manufacturer reports lower inventory and higher COGS during inflation, deflating turnover denominators compared to a FIFO competitor. While ratios successfully eliminate size differences between companies, they cannot eliminate the distortions created by divergent accounting method selections within the same industry.$EXPL$
WHERE id = 2966;

-- ID 2967: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 230-10-45, the statement of cash flows reveals the quality of reported earnings by comparing operating cash flows to net income. Revenue growing 50% while operating cash flow declines 20% is a significant red flag indicating potential earnings quality issues, such as aggressive revenue recognition or deteriorating working capital. Although rising revenue and net income may appear healthy on the income statement, the widening divergence with operating cash flow suggests the reported earnings are not being converted to cash — unlike a healthy business where these metrics move in the same direction.$EXPL$
WHERE id = 2967;

-- ID 2968: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under financial analysis standards consistent with ASC 840/842 and general financial reporting, the fixed charge coverage ratio expands the denominator beyond just interest expense to include all fixed obligations such as lease payments, preferred dividends, and other required charges. This provides a more comprehensive measure of a company''s ability to meet its total fixed commitments. Unlike the times interest earned ratio, which considers only interest expense in its denominator, the fixed charge coverage ratio captures the full burden of fixed financial obligations that a company must service.$EXPL$
WHERE id = 2968;

-- ID 3417: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 230-10-45, the indirect method computes operating cash flow by adjusting net income for non-cash items and working capital changes. Operating CF = $1,200,000 + $300,000 depreciation - $150,000 AR increase - $200,000 inventory increase - $80,000 AP decrease = $1,070,000. While depreciation is added back because it is a non-cash charge that reduced net income, the increase in accounts receivable is subtracted because it represents revenue recognized but not yet collected — unlike a decrease in receivables, which would indicate cash collection exceeding recognized revenue.$EXPL$
WHERE id = 3417;

-- ID 7950: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under financial planning models, the external financing needed (EFN) formula is EFN = (A/S)(ΔS) − (L/S)(ΔS) − PM × S1 × (1 − d), consistent with pro forma analysis under ASC 275-10 disclosure principles. Here: ($4M/$5M)($1M) − ($1M/$5M)($1M) − 0.08($6M)(0.50) = $800,000 − $200,000 − $240,000 = $360,000. An answer of $600,000 is incorrect because it omits the retained earnings deduction, overstating the external capital requirement by failing to account for internally generated funds.$EXPL$
WHERE id = 7950;

-- ID 7951: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under quantitative forecasting methods applied in financial analysis per ASC 275-10 (risks and uncertainties), the exponential smoothing formula is: New Forecast = α(Actual) + (1 − α)(Previous Forecast). With α = 0.4: 0.4(620) + 0.6(500) = 248 + 300 = 548 units. A result of 572 units is incorrect because it reverses the weights, applying 0.6 to the actual demand and 0.4 to the previous forecast — unlike the correct formulation, where the smoothing constant α weights the most recent actual observation and (1 − α) weights the prior forecast.$EXPL$
WHERE id = 7951;

-- ID 7952: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under financial analysis standards, days payable outstanding (DPO) equals 365 divided by the payables turnover ratio, where turnover uses average accounts payable per ASC 210-10-45 balance sheet classification guidance. Average AP = ($320,000 + $410,000) / 2 = $365,000; turnover = $3,650,000 / $365,000 = 10.0; DPO = 365 / 10 = 36.5 days. Using only the ending balance of $410,000 would incorrectly produce a turnover of 8.9 and DPO of 41.0 days, whereas the average balance provides a more representative measure of the payables position throughout the year.$EXPL$
WHERE id = 7952;

-- ============================================================
-- FINANCIAL VALUATION METHODS (9 questions)
-- ============================================================

-- ID 13226: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35, fair value measurements must reflect market participant assumptions, including control premiums and marketability discounts. Public company multiples reflect minority, marketable value, so arriving at controlling, non-marketable value requires first applying the 30% control premium ($80M × 1.30 = $104M) and then the 20% DLOM ($104M × 0.80 = $83.2M). Applying only the control premium without the DLOM would overstate value by ignoring the illiquidity of a private company, whereas applying only the DLOM would understate value by ignoring the premium a controlling interest commands.$EXPL$
WHERE id = 13226;

-- ID 13227: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under capital budgeting theory consistent with ASC 360-10-35 (long-lived asset evaluation), the internal rate of return (IRR) is the discount rate that makes a project''s net present value exactly zero — equating the present value of future cash inflows with the initial investment. A project is accepted when its IRR exceeds the company''s required rate of return (typically WACC). Unlike the cost of equity, which represents the minimum return required by shareholders, IRR is a project-specific metric that measures the expected percentage return on the capital invested in that particular project.$EXPL$
WHERE id = 13227;

-- ID 13228: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under the Gordon Growth Model (dividend discount model) used in equity valuation consistent with ASC 820 fair value principles, intrinsic value P = D1 / (re − g). D1 = $1.80 × 1.04 = $1.872, and P = $1.872 / (0.10 − 0.04) = $31.20. The model requires the growth rate to be less than the required return. Using the current dividend of $1.80 instead of the next-period dividend of $1.872 would incorrectly yield $30.00, whereas the correct application always uses the expected future dividend D1, not the dividend just paid.$EXPL$
WHERE id = 13228;

-- ID 13229: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under capital budgeting principles consistent with ASC 360-10-35, when NPV and IRR provide conflicting rankings for mutually exclusive projects, NPV is the correct decision criterion because it directly measures the dollar increase in shareholder wealth. Project X''s higher NPV of $2.1 million creates more value than Project Y''s $1.6 million despite Y''s higher IRR of 24%. Although IRR is a useful screening metric, it assumes interim cash flows are reinvested at the IRR itself, which can distort rankings when projects differ in scale or timing — unlike NPV, which uses the more realistic WACC as the reinvestment rate.$EXPL$
WHERE id = 13229;

-- ID 13230: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 fair value measurement guidance and business valuation standards, normalized earnings remove nonrecurring items and adjust owner compensation to market rates before applying a capitalization rate. Remove the $800,000 one-time settlement ($3.2M − $0.8M = $2.4M), then add back the $200,000 excess owner compensation ($2.4M + $0.2M = $2.6M). Subtracting the excess compensation instead of adding it back would incorrectly yield $2.2M, whereas the proper adjustment recognizes that above-market owner pay reduces reported earnings below what a replacement manager would cost.$EXPL$
WHERE id = 13230;

-- ID 13232: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under the Capital Asset Pricing Model (CAPM), consistent with ASC 820-10-55 fair value estimation techniques, cost of equity = risk-free rate + β × market risk premium = 3% + 1.4 × 5.5% = 10.70%. Beta of 1.4 indicates 40% more systematic risk than the market portfolio. An answer of 7.70% is incorrect because it represents only the beta-adjusted risk premium without adding the risk-free rate, whereas CAPM requires the risk-free rate as the baseline return before adding the compensation for systematic risk.$EXPL$
WHERE id = 13232;

-- ID 13233: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 and enterprise value bridge methodology, equity value equals enterprise value minus all non-equity claims plus excess cash: $500M − $120M debt − $30M preferred − $15M minority interest + $25M cash = $360M. Per share: $360M / 20M shares = $18.00. Failing to deduct preferred stock and minority interest would incorrectly inflate the equity value to $22.50 per share, whereas the proper bridge requires removing every claim senior to or separate from common equity before dividing by shares outstanding.$EXPL$
WHERE id = 13233;

-- ID 13235: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under capital budgeting theory consistent with ASC 360-10-35, the simple payback period measures only the time to recover the initial investment and ignores both the time value of money and all cash flows occurring after the payback date. For Ashford''s project, the four-year payback ignores two additional years of $125,000 cash flows that contribute to value creation. Unlike the IRR method, whose primary limitations involve multiple solutions for non-conventional cash flows and reinvestment rate assumptions, payback''s flaw is its complete disregard for the timing and magnitude of post-recovery cash flows.$EXPL$
WHERE id = 13235;

-- ID 13236: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 fair value measurement using market approach multiples, forward P/E multiples apply to projected future earnings rather than trailing results. With depressed trailing EPS of $0.50, trailing P/E yields 20 × $0.50 = $10.00, whereas forward P/E using normalized $2.00 EPS produces a substantially higher valuation even with a compressed multiple (e.g., 15 × $2.00 = $30.00). Although forward multiples may carry a numerically lower ratio than trailing multiples, the dramatically higher normalized earnings base more than compensates when current earnings are distorted by nonrecurring charges.$EXPL$
WHERE id = 13236;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4855: Foreign Currency Transactions
UPDATE questions SET
  explanation = $EXPL$Under ASC 830-10-35, foreign currency transaction gains and losses are recognized in the period in which exchange rates change. At December 31, the receivable was remeasured to CAD 1,000,000 × $0.78 = $780,000. Upon collection on January 15 at $0.76/CAD, the receivable converted to $760,000, producing a $20,000 transaction loss in the second fiscal year. Unlike the $30,000 gain recognized in the first year (from $0.75 to $0.78), the second-year loss reflects the unfavorable rate movement from the year-end remeasurement date to the settlement date.$EXPL$
WHERE id = 4855;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 3320: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 65, paragraphs 5-7, when a government advance refunds debt, the government-wide statements record the new bonds as a long-term liability while the old bonds remain until legally defeased. The difference between the reacquisition price and the net carrying amount of the old debt is recognized as a deferred outflow or deferred inflow of resources and amortized over the shorter of the remaining life of the old or new debt. Unlike governmental fund statements that report proceeds and payments as other financing sources and uses, the government-wide statements reflect the full accrual economic substance of the refunding transaction.$EXPL$
WHERE id = 3320;

-- ID 3321: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraph 80, government-wide statements use full accrual accounting, requiring interest to be accrued as incurred regardless of when payment is due. The $75,000 of accrued interest must be reported as a liability on the government-wide statement of net position. However, under modified accrual in governmental funds, interest on long-term debt is recognized only when legally due and payable — unlike full accrual, this means the accrued but unmatured interest does not appear as a fund liability and must be added during reconciliation.$EXPL$
WHERE id = 3321;

-- ============================================================
-- INCOME TAXES ADVANCED (1 questions)
-- ============================================================

-- ID 4895: Income Taxes Advanced
UPDATE questions SET
  explanation = $EXPL$Under ASC 740-10-25-6, uncertain tax positions follow a two-step process: recognition (Step 1) requires a more-likely-than-not threshold that the position will be sustained upon examination. Since management concludes the $2,000,000 deduction does not meet this threshold, no tax benefit is recognized — the answer is $0. Unlike positions that pass Step 1 and proceed to Step 2 measurement (where the largest amount with greater than 50% likelihood is recognized), a position failing the initial recognition threshold receives no benefit regardless of its potential dollar amount.$EXPL$
WHERE id = 4895;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 4874: Intangible Assets Advanced
UPDATE questions SET
  explanation = $EXPL$Under ASC 350-30-35-16 through 35-18, when an indefinite-lived intangible asset is determined to have a finite useful life due to changed circumstances, the entity must first test the asset for impairment under ASC 350-30-35 and then begin amortizing it over the newly estimated remaining useful life. This change is applied prospectively under ASC 250-10-45. Unlike a change in accounting estimate that requires retroactive restatement, the reclassification from indefinite to finite life affects only current and future periods, with amortization beginning from the date of the reassessment.$EXPL$
WHERE id = 4874;

-- ============================================================
-- INTERFUND TRANSACTIONS (1 questions)
-- ============================================================

-- ID 3335: Interfund Transactions
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraph 112, when a proprietary fund (such as an enterprise fund water utility) provides services to other government funds at its normal billing rate, the transaction is classified as an interfund service provided and used. The enterprise fund recognizes revenue and the general fund records an expenditure, mirroring how external transactions would be recorded. Unlike interfund transfers, which represent one-way resource movements without a reciprocal exchange, interfund services are exchange-like transactions where both parties give and receive approximately equal value.$EXPL$
WHERE id = 3335;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (1 questions)
-- ============================================================

-- ID 3258: Internal-Use Software and Cloud Computing
UPDATE questions SET
  explanation = $EXPL$Under ASC 350-40-35-1, when internal-use software is abandoned or management determines it will no longer be completed or used, any remaining unamortized capitalized costs must be written off immediately as a loss in the period of abandonment. There is no basis for continuing to carry an asset that will provide no future economic benefit. Unlike software that remains in service and is amortized over its estimated useful life, an abandoned project has zero recoverable value, and continued capitalization would overstate the entity''s assets.$EXPL$
WHERE id = 3258;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (2 questions)
-- ============================================================

-- ID 3297: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = $EXPL$Under ASC 715-30-35-24, the corridor for amortizing net actuarial gains and losses is defined as 10% of the greater of the beginning projected benefit obligation (PBO) or the market-related value of plan assets. Only the cumulative unrecognized net gain or loss exceeding this corridor is subject to minimum amortization, spread over the average remaining service period of active employees. Unlike the service cost and interest cost components that are recognized each period, actuarial gains and losses within the corridor are not required to be amortized, providing a buffer against annual volatility.$EXPL$
WHERE id = 3297;

-- ID 3298: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = $EXPL$Under ASC 715-30-35-24, minimum amortization of actuarial losses equals the excess above the corridor divided by the average remaining service period. The corridor is $400,000 (10% of $4,000,000 PBO), and the excess is $500,000 − $400,000 = $100,000. Minimum amortization = $100,000 / 10 years = $10,000. Although the total unrecognized loss is $500,000, only the $100,000 exceeding the corridor threshold triggers amortization — unlike immediate recognition methods, the corridor approach deliberately smooths pension expense by deferring gains and losses within the 10% band.$EXPL$
WHERE id = 3298;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (7 questions)
-- ============================================================

-- ID 12974: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under quantitative forecasting methods used in financial planning per ASC 275-10 (risks and uncertainties), the naïve forecasting method assumes the next period''s value will equal the most recent actual observation, requiring no parameters or model estimation. It serves as a baseline benchmark for evaluating more sophisticated techniques. Unlike exponential smoothing, which applies a weighted average of recent actuals and prior forecasts using a smoothing constant alpha, the naïve method uses only the single most recent data point with an implicit weight of 1.0 on the last observation.$EXPL$
WHERE id = 12974;

-- ID 12975: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under regression analysis principles applied in financial forecasting per ASC 275-10 (estimation uncertainty), a prediction interval for an individual observation is always wider than a confidence interval for the mean response at the same X value and confidence level. The prediction interval incorporates two sources of uncertainty: sampling error in the estimated regression line plus the inherent scatter of individual observations around the mean. Although both intervals share the same confidence level and predictor value, the confidence interval estimates only where the mean response falls, whereas the prediction interval must also account for the additional variability of a single observation.$EXPL$
WHERE id = 12975;

-- ID 12976: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under financial planning and analysis best practices consistent with ASC 275-10 (risks and uncertainties disclosure), reconciling top-down and bottom-up forecasts leverages each method''s strengths — top-down ensures consistency with macroeconomic and industry trends while bottom-up captures granular customer and product knowledge. The $4 million gap between the CFO''s $48M and the divisional $52M exposes assumption differences that neither method alone would reveal. Although top-down approaches provide a useful macro constraint, they may miss local market dynamics that bottom-up methods capture, making reconciliation essential rather than reliance on a single methodology.$EXPL$
WHERE id = 12976;

-- ID 12977: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under the external financing needed (EFN) framework used in financial planning consistent with ASC 275-10, spontaneous liabilities are those that increase automatically with sales volume without deliberate management action. Accounts payable is the classic spontaneous liability because it rises naturally as the company purchases more inventory to support higher sales. Unlike long-term bonds or notes payable to banks, which require deliberate negotiation and financing decisions, accounts payable adjusts organically with the operating cycle and is therefore included in the EFN formula''s spontaneous liability ratio.$EXPL$
WHERE id = 12977;

-- ID 12978: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under statistical analysis principles applied to financial forecasting per ASC 275-10 (estimation uncertainty), correlation does not establish causation — a fundamental principle in regression modeling. The high R² of 0.89 between ice cream sales and electricity costs is driven by a confounding variable (temperature) that independently causes both to rise in warm months. Although the statistical correlation is strong, using a spuriously correlated variable as a predictor produces unreliable forecasts because the relationship has no causal mechanism — unlike a genuine predictor such as temperature, which has a direct causal link to both variables.$EXPL$
WHERE id = 12978;

-- ID 12979: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under economic indicator classification used in financial forecasting per ASC 275-10 (risks and uncertainties), building permits are a leading economic indicator because they signal future construction activity and economic expansion before the broader economy shifts. Leading indicators change direction before the overall economy turns. Unlike the unemployment rate and consumer price index, which are lagging indicators that reflect conditions already past, or real GDP, which is a coincident indicator moving simultaneously with the economy, building permits provide advance warning of directional shifts.$EXPL$
WHERE id = 12979;

-- ID 12980: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under regression analysis principles applied in financial forecasting per ASC 275-10 (estimation uncertainty), adjusted R² penalizes each additional predictor that does not sufficiently improve model fit, making it the appropriate metric for model comparison. Model B (adjusted R² = 0.87) is superior because Model C''s third variable (rainy days) barely increases R² (0.88 to 0.885) while adjusted R² actually falls from 0.87 to 0.86 — a sign of overfitting. Although raw R² always increases when variables are added (even irrelevant ones), the declining adjusted R² in Model C indicates the third predictor contributes more noise than explanatory power.$EXPL$
WHERE id = 12980;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (7 questions)
-- ============================================================

-- ID 12732: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under capital budgeting principles consistent with ASC 360-10-35, NPV equals the sum of discounted future cash flows minus the initial investment. PV = $65,000 × (0.8929 + 0.7972 + 0.7118 + 0.6355) = $65,000 × 3.0374 = $197,431. NPV = $197,431 − $200,000 = ($2,569), closest to ($2,560). The negative NPV indicates the project does not meet the 12% WACC hurdle. Unlike a positive NPV project that creates shareholder value, this project''s returns fall slightly below the cost of capital and should be rejected under strict NPV criteria.$EXPL$
WHERE id = 12732;

-- ID 12733: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under capital budgeting theory consistent with ASC 360-10-35, the simple payback period ignores all cash flows occurring after the payback date. Both projects pass the three-year screen (X at ~2.57 years, Y at 3 years), but the rule completely disregards Project X''s massive $200,000 Year 4 cash flow that makes it far more valuable. Although the payback method provides a useful liquidity screen, it fails as a value-maximization tool because, unlike NPV analysis, it assigns zero weight to any cash flow generated beyond the recovery point regardless of its magnitude.$EXPL$
WHERE id = 12733;

-- ID 12734: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under capital budgeting theory consistent with ASC 360-10-35 (long-lived asset evaluation), the discounted payback period improves on the simple payback by discounting each future cash flow to its present value using the company''s cost of capital before calculating cumulative recovery. This accounts for the time value of money, recognizing that a dollar received in Year 5 is worth less than one received in Year 1. Unlike the simple payback period, which treats all dollars equally regardless of when they are received, the discounted version always produces a longer payback period because the present values of future cash flows are smaller than their nominal amounts.$EXPL$
WHERE id = 12734;

-- ID 12735: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under capital budgeting theory consistent with ASC 360-10 investment evaluation principles, the profitability index (PI = PV of cash flows / investment) ranks projects by value created per dollar invested, maximizing total NPV under capital rationing. PIs here: C = 1.35, A = 1.30, B = 1.25, D = 1.20 — selecting C ($150K) and A ($200K) fits the $500K budget with maximum combined NPV of $112,500. Ranking by total NPV alone would incorrectly select Project B first, whereas the PI approach ensures each constrained dollar is allocated to its highest-value use.$EXPL$
WHERE id = 12735;

-- ID 12736: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under capital budgeting theory consistent with ASC 360-10-35, the multiple-IRR problem arises when a project''s cash flows change sign more than once (negative, positive, negative), creating a non-conventional pattern. By Descartes'' rule of signs, the NPV polynomial can have as many real roots as there are sign changes, producing multiple discount rates that satisfy NPV = 0. Unlike conventional projects with a single sign change that yield one unique IRR, non-conventional cash flow patterns require NPV analysis for reliable decision-making because no single IRR can represent the project''s true return.$EXPL$
WHERE id = 12736;

-- ID 12737: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under the Modigliani-Miller Proposition I with taxes, consistent with ASC 740-10 (income tax effects on firm value), the value of a levered firm equals the unlevered firm value plus the present value of the interest tax shield: V_L = V_U + (T_c × D) = $80M + (0.25 × $30M) = $87.5 million. For permanent debt, the tax shield is capitalized at the full face value of debt times the tax rate. Ignoring the tax shield entirely would incorrectly yield $80M, whereas the M&M framework demonstrates that the tax deductibility of interest payments creates real value by reducing the government''s claim on the firm''s cash flows.$EXPL$
WHERE id = 12737;

-- ID 12738: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under free cash flow analysis consistent with ASC 230-10-45 cash flow classification principles, FCFE = FCFF − Interest(1 − T) + Net borrowing = $2,000,000 − $600,000 + $1,200,000 = $2,600,000. The conversion subtracts after-tax interest paid to debt holders and adds back net new borrowing received from lenders. Unlike FCFF, which represents cash available to all capital providers (debt and equity), FCFE isolates the cash available exclusively to equity holders after servicing debt obligations, making the debt-related adjustments essential to the conversion.$EXPL$
WHERE id = 12738;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 3226: State and Local Government Reporting
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraph 65, capital projects funds account for financial resources restricted, committed, or assigned for the acquisition or construction of major capital facilities (other than those financed by proprietary or trust funds). These governmental funds use the modified accrual basis and the current financial resources measurement focus. Unlike proprietary funds that report the capital assets themselves, capital projects funds track only the financial resources used for construction — the actual capital assets appear on the government-wide statements, not in the fund-level statements.$EXPL$
WHERE id = 3226;

-- ID 3227: State and Local Government Reporting
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraph 66, debt service funds account for the accumulation of resources for, and the payment of, general long-term debt principal and interest. They are governmental funds using the modified accrual basis and current financial resources measurement focus. Unlike general fund expenditures that cover day-to-day operations, debt service fund expenditures are specifically dedicated to satisfying the government''s long-term borrowing obligations, ensuring that resources set aside from dedicated revenue sources (such as property tax levies) are properly tracked and applied to debt repayment.$EXPL$
WHERE id = 3227;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 3135: Stock Compensation and Business Combinations
UPDATE questions SET
  explanation = $EXPL$Under ASC 718-10-30-6, the Black-Scholes option pricing model requires six inputs to measure grant-date fair value: (1) current stock price, (2) exercise price, (3) expected term, (4) risk-free interest rate, (5) expected stock price volatility, and (6) expected dividend yield. The number of shares an employee currently holds is not an input to the model. Unlike the expected term and volatility assumptions that directly affect option value, an employee''s existing shareholdings have no bearing on the pricing model''s computation of per-option fair value at the grant date.$EXPL$
WHERE id = 3135;

COMMIT;
