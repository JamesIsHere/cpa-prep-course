-- Migration: Citation backfill — BAR batch 15 (16 questions)
-- Date: 2026-03-31
-- Purpose: Add standard citations to 16 explanations for BAR section
-- Affected topics: Financial Statement Analysis, Financial Valuation Methods, Intangible Assets Advanced, Prospective Analysis and Forecasting, Risk Management and Economics

BEGIN;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (4 questions)
-- ============================================================

-- ID 14972: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is 30.0%. Per financial analysis standards and ASC 260-10-45, the dividend payout ratio is calculated as dividends paid divided by net income: $180,000 / $600,000 = 30.0%, indicating Hartford distributes 30% of its earnings to shareholders. The complement of this ratio is the retention ratio (70%), which measures earnings reinvested in the business. However, 33.3% is incorrect because it would imply dividing dividends by a different income figure rather than the reported net income of $600,000.$EXPL$
WHERE id = 14972;

-- ID 14973: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that net profit margin measures the percentage of revenue remaining as profit after all expenses. Per ASC 225-10 and standard financial analysis guidance, net profit margin = net income / net sales ($1.8M / $18M = 10%), capturing the impact of COGS, operating expenses, interest, and taxes on profitability. This metric isolates bottom-line efficiency across the entire income statement. Unlike receivables turnover or inventory turnover, which measure asset efficiency rather than profitability, net profit margin focuses on how much of each revenue dollar converts to earnings.$EXPL$
WHERE id = 14973;

-- ID 14974: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the P/E ratio represents how much investors pay per dollar of earnings. Per ASC 260-10-45 and standard financial analysis guidance, the price-to-earnings ratio = market price per share / earnings per share ($72 / $4.50 = 16.0x), reflecting market expectations about a company''s future growth, risk, and earnings quality. A higher P/E suggests investors anticipate stronger future earnings growth. Unlike the price-to-book ratio, which compares market price to book value per share, the P/E ratio specifically relates share price to current earnings capacity.$EXPL$
WHERE id = 14974;

-- ID 14975: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$The correct answer is that operating profit margin measures profitability from core business operations before interest and taxes. Per ASC 220-10-45 and financial analysis guidance, operating profit margin = operating income / net sales ($1.8M / $12M = 15.0%), isolating the efficiency of a company''s primary business activities from financing decisions and tax effects. This metric enables meaningful competitor benchmarking by removing capital structure differences. Unlike net profit margin, which includes interest expense and income taxes, operating profit margin focuses exclusively on revenue minus COGS and operating expenses.$EXPL$
WHERE id = 14975;

-- ============================================================
-- FINANCIAL VALUATION METHODS (3 questions)
-- ============================================================

-- ID 15618: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is Projects A and C, yielding a maximum total NPV of $2.8 million. Per ASC 820-10-35 and capital budgeting theory, under capital rationing the objective is to maximize total NPV within the budget constraint rather than simply ranking by individual NPV. The feasible combination A+C uses the full $10M budget ($6M + $4M) and produces the highest combined NPV ($1.8M + $1.0M = $2.8M). While the profitability index can help rank individual projects, it is incorrect to rely solely on individual NPV rankings, as A+D yields only $2.4M total NPV despite including the highest-NPV single project.$EXPL$
WHERE id = 15618;

-- ID 15619: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is industrial production. Per ASC 820-10-35 fair value measurement guidance and the NBER economic indicator classification framework, coincident indicators move in sync with current GDP and reflect the present state of the economy. Industrial production measures real-time manufacturing and mining output, directly tracking current economic activity. Unlike building permits, which are a leading indicator that signals future construction activity months before it contributes to output, coincident indicators confirm where the economy stands right now rather than predicting future direction.$EXPL$
WHERE id = 15619;

-- ID 15620: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the option allows Oakwood to benefit from favorable exchange rate movements while maintaining protection against adverse ones. Per ASC 815-20-25 and derivatives guidance, a purchased call option provides an asymmetric payoff: if the euro weakens to $1.02, Oakwood lets the option expire and buys at the favorable spot rate (total cost $3,105,000 including premium), whereas the forward contract obligates purchase at $1.08 regardless (total cost $3,240,000). This $135,000 savings illustrates the key advantage of options over forwards. Although forwards require no upfront premium, they eliminate the ability to benefit from favorable currency movements, which can result in a significantly higher total cost when rates move in the hedger''s favor.$EXPL$
WHERE id = 15620;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 14750: Intangible Assets Advanced
UPDATE questions SET
  explanation = $EXPL$The correct answer is $3,333,333 allocated to Unit P. Per ASC 350-20-35-45 through 35-50, when a reporting unit is reorganized, goodwill must first be tested for impairment before reallocation. Unit X''s carrying amount ($20,000,000) exceeds its fair value ($18,000,000) by $2,000,000, requiring a goodwill impairment loss of $2,000,000, reducing goodwill to $5,000,000. The remaining goodwill is then reallocated to new units using relative fair values: Unit P receives $5,000,000 x ($12,000,000 / $18,000,000) = $3,333,333. Unlike an equal split, which would incorrectly allocate $2,500,000 to each unit, ASC 350 requires allocation based on relative fair values of the newly formed reporting units.$EXPL$
WHERE id = 14750;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (4 questions)
-- ============================================================

-- ID 14800: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that alpha must be between 0 and 1 and controls the weight given to the most recent observation. Per AT-C Section 301 and quantitative forecasting methodology, the exponential smoothing formula (New Forecast = alpha x Actual + (1 - alpha) x Previous Forecast) uses alpha as a decay factor that balances responsiveness to recent data against stability from historical patterns. A higher alpha gives more weight to the latest actual value. Unlike using values of 0 to 100, alpha is a fractional weighting parameter, and values at or above 1.0 would eliminate the smoothing effect entirely by placing zero or negative weight on the prior forecast.$EXPL$
WHERE id = 14800;

-- ID 14803: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is approximately 76 days. Per ASC 210-10-45 and working capital management guidance, the operating cycle = days sales in inventory + days sales outstanding. Days in inventory = 365 / 8 = 45.6 days, and days sales outstanding = 365 / 12 = 30.4 days, yielding an operating cycle of 76 days. This measures the average time from purchasing inventory to collecting the resulting receivable. However, simply adding the turnover ratios (8 + 12 = 20) is incorrect because turnover ratios must first be converted to days by dividing 365 by each ratio before summing.$EXPL$
WHERE id = 14803;

-- ID 14807: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that trend analysis examines how a financial variable changes over multiple periods to identify directional patterns. Per AT-C Section 301 and prospective financial analysis guidance, trend analysis evaluates sequential data points to identify upward, downward, or cyclical movements that inform budget projections and strategic planning. It is foundational to time-series forecasting because past directional patterns help predict future performance. Unlike cross-sectional analysis, which examines relationships between two variables at a single point in time, trend analysis requires multiple periods of the same variable to establish a meaningful directional pattern.$EXPL$
WHERE id = 14807;

-- ID 14808: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$The correct answer is that asset turnover measures how efficiently a company uses its assets to generate revenue. Per ASC 205-10 and the DuPont framework (ROE = Profit Margin x Asset Turnover x Equity Multiplier), asset turnover = revenue / average total assets. At 1.4x, Eastlake generates $1.40 in sales for every dollar invested in assets, representing the efficiency component of the three-factor decomposition. Unlike inventory turnover, which measures only how quickly inventory is sold and replaced, asset turnover encompasses all assets and reflects the company''s overall capital deployment efficiency.$EXPL$
WHERE id = 14808;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (4 questions)
-- ============================================================

-- ID 14779: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that Monte Carlo simulation provides a full probability distribution of outcomes, revealing risk information a single-point estimate cannot capture. Per COSO ERM Framework and quantitative risk analysis standards, Monte Carlo simulation randomly samples uncertain inputs across thousands of iterations to generate a distribution of NPV outcomes, including dispersion, skewness, and the probability of loss (35% in this case). While the mean NPV ($2.1M) may match the deterministic estimate, the simulation uniquely reveals a $4.5M standard deviation and significant downside risk. However, it is incorrect to conclude that identical means imply identical information content, as the probability distribution around that mean is precisely what differentiates the two approaches.$EXPL$
WHERE id = 14779;

-- ID 14780: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that TIPS protect against inflation because their principal adjusts semiannually based on changes in the Consumer Price Index (CPI). Per U.S. Treasury regulations and ASC 815-10-15, TIPS carry a fixed coupon rate, but the underlying principal increases with inflation, so the fixed rate applied to the growing principal produces higher dollar coupon payments over time. At maturity, investors receive the greater of the inflation-adjusted principal or original par value. Unlike conventional Treasury bonds, which pay a fixed nominal coupon on an unchanged principal and lose real purchasing power during inflationary periods, TIPS preserve the real value of both principal and income.$EXPL$
WHERE id = 14780;

-- ID 14781: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is to invest in Phase 1, yielding a positive expected NPV of $16.4 million. Per capital budgeting decision tree methodology and ASC 820-10-35 fair value guidance, the expected NPV = (0.60 x $35M) + (0.40 x $1M) - $5M = $21M + $0.4M - $5M = $16.4M. The Phase 2 NPV of $35M is already net of its $20M cost, and the decision tree captures that Phase 2 investment is contingent on Phase 1 success. Unlike a simple NPV analysis that treats all $25M as a certain outflow, the decision tree correctly recognizes that only the $5M Phase 1 cost is committed unconditionally, making the sequential investment structure significantly more valuable.$EXPL$
WHERE id = 14781;

-- ID 14782: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$The correct answer is that the federal funds rate is the overnight rate at which depository institutions lend reserve balances to each other. Per ASC 820-10-55 and Federal Reserve Board Regulation D, the federal funds rate is the uncollateralized overnight rate for interbank lending of reserves held at the Federal Reserve, with the FOMC setting a target range that serves as the benchmark for all short-term interest rates. This rate is the primary tool of monetary policy, influencing borrowing costs throughout the economy. Unlike the prime rate, which is set by individual commercial banks typically at a 3% markup above the federal funds rate, the fed funds rate applies specifically to interbank reserve transactions.$EXPL$
WHERE id = 14782;

COMMIT;
