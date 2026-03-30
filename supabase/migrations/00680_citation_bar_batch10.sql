-- Migration: Citation backfill — BAR batch 10 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for BAR section
-- Affected topics: Advanced Consolidations, Advanced Revenue and Intangibles, Capital Structure and Valuation, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Income Taxes Advanced, Intangible Assets Advanced, Interfund Transactions, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 3172: Advanced Consolidations
UPDATE questions SET
  explanation = 'Under ASC 810-10-45-23, changes in a parent''s ownership interest in a subsidiary that do not result in loss of control are accounted for as equity transactions. No gain or loss is recognized in earnings because the parent retains its controlling financial interest throughout the transaction. While a disposition that results in loss of control would require deconsolidation and gain/loss recognition under ASC 810-10-40, partial ownership changes within a controlled subsidiary are treated as capital transactions with the difference recorded in additional paid-in capital.'
WHERE id = 3172;

-- ID 3174: Advanced Consolidations
UPDATE questions SET
  explanation = 'Under ASC 810-10-10-1, consolidated financial statements present the financial position of a parent and its subsidiaries as a single economic entity, requiring elimination of all intercompany transactions including management fees. The management fee revenue recognized by the parent and corresponding expense at the subsidiary cancel because they are internal transfers with no economic substance to the consolidated group. Although intercompany service arrangements may be valid for legal or tax purposes, unlike third-party transactions they must be fully eliminated in consolidation to avoid double-counting revenues and expenses.'
WHERE id = 3174;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (1 questions)
-- ============================================================

-- ID 3113: Advanced Revenue and Intangibles
UPDATE questions SET
  explanation = 'Under ASC 606-10-32-11, the variable consideration constraint requires that an entity include variable consideration in the transaction price only to the extent it is probable that a significant reversal of cumulative revenue recognized will not occur when the uncertainty is resolved. This prevents premature revenue recognition from optimistic estimates of bonuses, penalties, or incentives that may never materialize. While simply excluding all variable consideration would be overly conservative and inconsistent with ASC 606''s principle of recognizing revenue that reflects expected consideration, the constraint ensures estimates are supported by sufficient evidence before inclusion.'
WHERE id = 3113;

-- ============================================================
-- CAPITAL STRUCTURE AND VALUATION (1 questions)
-- ============================================================

-- ID 5705: Capital Structure and Valuation
UPDATE questions SET
  explanation = 'Under ASC 505-30-25 (treasury stock transactions) and the Modigliani-Miller dividend irrelevance proposition, in a frictionless environment without taxes, both a special dividend and a share repurchase deliver identical per-share value of $40. With the $5.00 dividend, shareholders hold stock worth $35 plus $5 cash; with the buyback at $40, 250,000 shares are retired leaving 1,750,000 shares each worth $40 ($70,000,000 / 1,750,000). Although a repurchase mechanically increases EPS from fewer outstanding shares, this does not create additional value because total firm equity decreases by the same $10,000,000 of cash distributed under either method.'
WHERE id = 5705;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 3202: Derivatives and Hedging
UPDATE questions SET
  explanation = 'Under ASC 815-35-35-1, a net investment hedge protects against foreign currency exposure arising from an investment in a foreign operation, with the effective portion of gains and losses reported in the cumulative translation adjustment (CTA) within other comprehensive income. This treatment matches the CTA recognition used for translating the foreign subsidiary''s net assets under ASC 830. Unlike a cash flow hedge where effective gains and losses are reclassified from OCI to earnings when the hedged transaction affects income, net investment hedge amounts remain in CTA until the investment is sold or substantially liquidated.'
WHERE id = 3202;

-- ID 3203: Derivatives and Hedging
UPDATE questions SET
  explanation = 'Under ASC 815-10-15-83, the notional amount of a derivative is a reference quantity (such as a number of units, shares, or dollars) used to calculate periodic settlement payments, not an amount that is exchanged between parties. For an interest rate swap, payments equal the notional multiplied by the rate differential between fixed and variable rates. However, the notional amount does not represent the fair value of the derivative or the amount at risk, unlike the actual cash flows which are typically a small fraction of the notional principal.'
WHERE id = 3203;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (8 questions)
-- ============================================================

-- ID 7976: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Under ASC 275-10-50 (risks and uncertainties disclosure) and the percentage-of-sales forecasting method, balance sheet items that vary proportionally with sales maintain a constant ratio to revenue. The inventory-to-sales ratio is $600,000 / $4,000,000 = 15%, yielding a projected inventory of 15% x $5,000,000 = $750,000. While an incorrect approach would apply a 15% growth rate to the current inventory balance ($600,000 x 1.15 = $690,000), this confuses the inventory-to-sales ratio with a percentage increase and ignores the proportional relationship that drives the projection.'
WHERE id = 7976;

-- ID 7978: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Under ASC 820-10-35-24A (fair value measurement inputs) and regression analysis principles, adding independent variables to a model always increases or maintains R-squared, even when the new variables have no genuine predictive power. Adjusted R-squared penalizes the inclusion of unhelpful variables by accounting for degrees of freedom, making it the appropriate metric for comparing models with different numbers of predictors. Although Model B''s raw R-squared of 0.84 exceeds Model A''s 0.82, this difference may vanish or reverse once the penalty for three additional variables is applied through the adjusted measure.'
WHERE id = 7978;

-- ID 7979: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Per ASC 820-10-35-54B (valuation technique assessment), the standard error of the estimate measures the average distance between observed values and the regression line, indicating prediction reliability. Model A''s standard error of $12,000 means predictions cluster tightly around actual values, whereas Model B''s $35,000 standard error produces prediction intervals nearly three times as wide. Although Model B has a marginally higher R-squared (0.91 vs. 0.90), this one-percentage-point advantage does not offset substantially wider prediction intervals that reduce the practical usefulness of point estimates.'
WHERE id = 7979;

-- ID 14849: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Per ASC 230-10-45 (statement of cash flows), the operating cash flow ratio equals operating cash flow divided by current liabilities: $540,000 / $450,000 = 1.20. A ratio above 1.0 indicates the company generates sufficient cash from operations to cover its short-term obligations without relying on external financing or asset liquidation. However, reversing the formula by dividing current liabilities by operating cash flow ($450,000 / $540,000 = 0.83) produces an incorrect and misleading result that understates the company''s actual cash-generating capacity.'
WHERE id = 14849;

-- ID 14850: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Per ASC 210-10-45 (balance sheet classification), working capital turnover equals revenue divided by net working capital, assessing operational efficiency. Net working capital = $1,800,000 - $600,000 = $1,200,000, yielding turnover of $6,000,000 / $1,200,000 = 5.0. Since the prior year ratio was 4.0, the company generates more revenue per dollar of working capital, indicating improved efficiency. While dividing by current assets alone ($6,000,000 / $1,800,000 = 3.33) would produce a different metric, working capital turnover specifically uses net working capital to capture the net investment in short-term operations.'
WHERE id = 14850;

-- ID 14851: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Under ASC 220-10-45 (comprehensive income presentation) and the 5-step DuPont decomposition, the interest burden ratio equals pre-tax income (EBT) divided by EBIT, measuring how much operating income survives debt service. EBT = $800,000 - $200,000 = $600,000, yielding an interest burden of $600,000 / $800,000 = 0.75, meaning 75% of operating income remains after interest charges. Although computing interest expense as a percentage of EBIT ($200,000 / $800,000 = 0.25) measures the interest consumption rate, this is not the DuPont interest burden ratio, which focuses on the proportion of income retained rather than consumed.'
WHERE id = 14851;

-- ID 14852: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Under ASC 470-10-50 (debt disclosure) and financial leverage analysis, leverage creates shareholder value when return on assets exceeds the after-tax cost of debt, producing a positive spread that magnifies returns to equity holders. Here, ROA of 12% exceeds the 5% after-tax borrowing cost, generating a 7% spread that the 1.5 debt-to-equity ratio amplifies to push ROE well above ROA. While a high debt-to-equity ratio alone might suggest excessive leverage risk, the absolute level of the D/E ratio does not determine value creation — rather, the critical factor is whether the spread between ROA and the cost of debt is positive.'
WHERE id = 14852;

-- ID 14853: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Per ASC 360-10-50 (property and long-lived asset disclosure), the capital intensity ratio equals average total assets divided by revenue: $4,500,000 / $9,000,000 = 0.50, meaning the company requires $0.50 in assets to generate each dollar of revenue. This ratio is the mathematical inverse of the asset turnover ratio (revenue / assets = 2.00). However, confusing the two by computing revenue divided by assets yields the asset turnover ratio rather than capital intensity, producing a fundamentally different interpretation of the company''s asset utilization.'
WHERE id = 14853;

-- ============================================================
-- FINANCIAL VALUATION METHODS (8 questions)
-- ============================================================

-- ID 14252: Financial Valuation Methods
UPDATE questions SET
  explanation = 'The probability-weighted expected return method (PWERM), recognized as a business valuation technique under ASC 820 fair value measurement, explicitly models multiple discrete future scenarios such as IPO, acquisition, and liquidation, determines the payoff to each equity class under each scenario based on the liquidation waterfall, and weights results by estimated probabilities. This approach captures the option-like payoff features of preferred stock with liquidation preferences and participation rights. Unlike the Gordon Growth Model, which assumes a single expected outcome with constant growth, PWERM''s strength lies in modeling multiple distinct scenarios with different payoff structures.'
WHERE id = 14252;

-- ID 14254: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Under ASC 820-10-35-16 (fair value income approach) and the residual income valuation model, residual income equals net income minus the equity charge (cost of equity multiplied by book value of equity): $5,200,000 - (0.11 x $40,000,000) = $5,200,000 - $4,400,000 = $800,000. Positive residual income indicates the company earns returns above its cost of equity, creating economic value beyond what shareholders require as minimum compensation for their invested capital. While simply using net income alone would overstate economic profit, the residual income model correctly deducts the opportunity cost of equity capital to reveal true value creation.'
WHERE id = 14254;

-- ID 14255: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Under the cost approach to fair value measurement consistent with ASC 820-10-35-14C, fair value equals replacement cost new minus all forms of depreciation and obsolescence: $2,000,000 - $400,000 (physical) - $200,000 (functional) - $300,000 (economic) = $1,100,000. All three categories must be deducted to reflect the asset''s current condition and market environment. Although omitting economic obsolescence would yield $1,400,000, this incorrectly ignores the permanent demand decline that reduces the asset''s value below its physically and functionally adjusted replacement cost.'
WHERE id = 14255;

-- ID 14256: Financial Valuation Methods
UPDATE questions SET
  explanation = 'The greenfield method, an income approach technique used in purchase price allocations under ASC 805, models a hypothetical startup scenario where the entity owns only the subject intangible asset (such as an FCC broadcasting license) and must invest in all other assets to generate cash flows. This isolates the intangible''s value by projecting the ramp-up period and deducting contributory asset charges for all supporting assets. Unlike the relief-from-royalty method which uses comparable royalty rates to value intangibles, the greenfield method builds value from the ground up around a single foundational asset.'
WHERE id = 14256;

-- ID 14257: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Under ASC 820-10-35-2 (fair value as market-based measurement), a price-to-book (P/B) ratio above 1.0 indicates the market values the company above its accounting book value, typically because investors expect the firm to earn returns exceeding its cost of equity. This premium reflects intangible value, growth prospects, or competitive advantages not captured on the balance sheet at historical cost. While one might assume a P/B above 1.0 signals overvaluation, most profitable companies legitimately trade above book value because their economic value creation exceeds what historical cost accounting records.'
WHERE id = 14257;

-- ID 14258: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Under ASC 820-10-35-36B (fair value measurement adjustments), the discount for lack of control (DLOC) is derived as DLOC = 1 - [1 / (1 + control premium)] = 1 - [1 / 1.35] = 1 - 0.7407 = 25.93%. The mathematical relationship between premiums and discounts is not symmetric — a 35% premium applied upward from a minority base does not equate to a 35% discount applied downward from a controlling base. Although applying 35% directly as the discount might seem intuitive, this incorrectly assumes symmetry and overstates the adjustment needed to convert from controlling to minority value.'
WHERE id = 14258;

-- ID 14259: Financial Valuation Methods
UPDATE questions SET
  explanation = 'The backsolve method, used for IRC Section 409A common stock valuations and consistent with ASC 820 fair value principles, uses a recent arm''s-length preferred stock transaction to infer total equity value, then allocates that value among equity classes (preferred, common, options) using an option pricing model or breakpoint analysis. This properly accounts for different economic rights including liquidation preferences and participation features. Unlike simply applying a flat discount from the preferred price to common, the backsolve method performs a comprehensive equity allocation that reflects each class''s unique payoff structure.'
WHERE id = 14259;

-- ID 14260: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Per ASC 505-10-50 (equity disclosure) and the Gordon Growth Model, the sustainable growth rate (SGR) equals ROE multiplied by the retention ratio: 15% x (1 - 0.40) = 15% x 0.60 = 9.0%. This represents the maximum rate at which the company can grow earnings through internal reinvestment without issuing new equity or changing its capital structure. However, incorrectly using the payout ratio instead of the retention ratio (15% x 0.40 = 6.0%) reverses the formula components, understating sustainable growth by confusing the portion distributed with the portion retained.'
WHERE id = 14260;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4859: Foreign Currency Transactions
UPDATE questions SET
  explanation = 'Under ASC 830-10-45-17 (the current rate method), all assets and liabilities are translated at the current exchange rate as of the balance sheet date, while equity accounts such as common stock and additional paid-in capital are translated at historical rates in effect when the equity transactions originally occurred. Retained earnings is a composite amount built up from translated income statement items over time. Although translating all balance sheet items at the current rate might seem simpler, equity accounts retain historical rates because they represent capital transactions completed at specific past exchange rates.'
WHERE id = 4859;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 3403: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = 'Under GASB Statement No. 34, paragraph 80, governmental funds use the current financial resources measurement focus and modified accrual basis, so capital asset purchases are reported as expenditures that consume current financial resources. The $3,000,000 for emergency vehicles flows through the General Fund as an expenditure in the period of acquisition. However, on the government-wide statements which use the economic resources focus and full accrual basis, the same amount is capitalized as an asset and depreciated over its useful life rather than being expensed immediately.'
WHERE id = 3403;

-- ID 3404: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = 'Under GASB Statement No. 34, the reconciliation between governmental fund statements and government-wide statements adjusts for differences in measurement focus. The governmental fund records the $800,000 pension contribution as an expenditure, while the government-wide statements recognize only $600,000 of pension expense under full accrual accounting per GASB Statement No. 68. The $200,000 excess contribution must be subtracted in reconciliation because the fund overstated the expense relative to accrual-based pension cost, whereas the excess creates a deferred outflow (prepaid pension asset) on the government-wide statements.'
WHERE id = 3404;

-- ============================================================
-- INCOME TAXES ADVANCED (1 questions)
-- ============================================================

-- ID 4899: Income Taxes Advanced
UPDATE questions SET
  explanation = 'Under IRC Section 172(a) as amended by the Tax Cuts and Jobs Act, net operating loss carryforwards arising in tax years after December 31, 2017 are limited to 80% of taxable income in any given year but may be carried forward indefinitely. This 80% limitation ensures the government collects some tax revenue even when a taxpayer has accumulated losses. Unlike the pre-TCJA rules which permitted two-year carrybacks and twenty-year carryforward periods, the current framework eliminates carrybacks for most taxpayers while removing the expiration date on unused NOLs.'
WHERE id = 4899;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 4879: Intangible Assets Advanced
UPDATE questions SET
  explanation = 'Under ASC 350-20-35-3, goodwill impairment exists only when a reporting unit''s carrying amount exceeds its fair value. Since Lumen Corp.''s reporting unit has a fair value of $7,500,000 that exceeds its carrying amount of $7,000,000, there is no impairment and no write-down is required. The $500,000 cushion provides a margin of safety against future declines. Although the reporting unit contains $2,000,000 of goodwill, this amount is irrelevant to the impairment test when fair value exceeds total carrying amount, unlike a scenario where carrying value exceeds fair value and the impairment charge would be limited to the goodwill balance.'
WHERE id = 4879;

-- ============================================================
-- INTERFUND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 3340: Interfund Transactions
UPDATE questions SET
  explanation = 'Under GASB Statement No. 34, paragraph 112, an interfund reimbursement restores costs that were initially charged to the wrong fund by having the correct fund repay the fund that bore the expenditure. The Special Revenue Fund reimburses the General Fund for the supply overpayment, reducing the General Fund''s expenditures while recording the cost in the Special Revenue Fund where it properly belongs. Unlike interfund transfers which represent permanent resource reallocations between funds, reimbursements are corrections that ensure expenditures are reported in the fund that received the benefit.'
WHERE id = 3340;

-- ID 3341: Interfund Transactions
UPDATE questions SET
  explanation = 'Under GASB Statement No. 34, paragraph 61, internal service fund charges that exceed actual cost create internal profits that must be eliminated on the government-wide financial statements. The 10% markup above cost inflates both the using departments'' expenses and the internal service fund''s revenues, neither of which represents an arm''s-length external transaction. Although the overcharges are appropriate for fund-level accounting to maintain the internal service fund''s self-sufficiency, unlike external transactions these internal markups must be eliminated on government-wide statements to present the government''s actual cost of operations.'
WHERE id = 3341;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (2 questions)
-- ============================================================

-- ID 3303: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = 'Under ASC 715-30-35-79, a pension settlement occurs when an employer irrevocably transfers the obligation for pension benefits to a third party, such as purchasing group annuity contracts from an insurer, or makes lump-sum cash payments to participants that eliminate the obligation. A settlement triggers immediate recognition of a proportionate share of previously unrecognized actuarial gains and losses from accumulated other comprehensive income into earnings. While plan amendments that change future benefits constitute curtailments rather than settlements, the key distinction is that a settlement irrevocably eliminates the obligation for benefits already earned.'
WHERE id = 3303;

-- ID 3304: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = 'Under ASC 715-30-35-22, actuarial gains and losses arise from two sources: experience adjustments (differences between actual experience and actuarial assumptions such as mortality, turnover, and salary increases) and changes in actuarial assumptions themselves (such as modifying the discount rate). Lower-than-expected employee turnover increases the projected benefit obligation because more employees are expected to remain and collect benefits. These actuarial losses are initially recorded in other comprehensive income rather than immediately in earnings, whereas plan amendments that change benefit formulas are accounted for separately as prior service costs.'
WHERE id = 3304;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (7 questions)
-- ============================================================

-- ID 12998: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Under AT-C Section 305 (prospective financial information standards), judgmental adjustments to statistical forecasts are appropriate when known structural changes — such as a competitor closing 15 stores — materially affect demand in ways historical data cannot capture. However, such adjustments introduce the risk of cognitive bias, particularly optimism bias, because the estimates rely on subjective judgment harder to validate than model-generated figures. While prohibiting all manual adjustments would be overly restrictive, unlike purely statistical outputs these adjustments require documented rationale and magnitude for transparency and future review.'
WHERE id = 12998;

-- ID 12999: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Under the indirect method of projecting cash flow from operations, consistent with ASC 230-10-45-28, the calculation starts with net income and adjusts for non-cash items and working capital changes: $450,000 + $120,000 (depreciation add-back) - $80,000 (accounts receivable increase) + $30,000 (accounts payable increase) = $520,000. Depreciation is added back because it reduced net income without consuming cash, while the AR increase is subtracted because growing receivables consume cash. Although using net income alone ($450,000) might seem simpler, this ignores the non-cash depreciation charge and working capital movements that distinguish accrual income from cash generation.'
WHERE id = 12999;

-- ID 13000: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Per AT-C Section 305.17 (prospective financial statements), extrapolation occurs when a model is used to predict values outside the range of data used to build it. Predicting costs at 35,000 units when the model was built on 5,000-20,000 units is extrapolation, carrying increased risk because the linear relationship may not hold at extreme volumes. While interpolation — predicting within the observed data range — generally produces more reliable estimates, extrapolation relies on the unverified assumption that relationships established within the training range continue to hold beyond it.'
WHERE id = 13000;

-- ID 13001: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Per AT-C Section 305 (prospective financial information) and the external financing needed (EFN) formula, the (A/S)(delta-S) term drives projected asset requirements. Evergreen''s capital intensity ratio of 0.80 means each additional dollar of sales requires $0.80 of assets, versus $0.40 for Falcon Transport, so Evergreen needs twice the asset investment for the same sales growth. With identical profit margins and payout ratios, retained earnings are equal, making the higher asset requirement the sole driver of greater external financing. Although one might assume identical growth plans yield equal EFN, the capital intensity ratio directly determines how much of that growth must be externally funded.'
WHERE id = 13001;

-- ID 13002: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Per AT-C Section 305.18 (prospective financial analysis evaluation), RMSE squares each error before averaging, which disproportionately weights large deviations compared to MAD which uses absolute values. Model Y''s large gap between MAD (3,400) and RMSE (5,800) indicates the presence of outlier errors — a few months with very large forecast misses that inflate RMSE far above MAD. While Model X''s narrow MAD-RMSE gap suggests consistently distributed errors, Model Y''s divergence reveals significant outlier risk that the MAD metric alone masks, unlike uniformly distributed errors which would produce a narrow gap between both measures.'
WHERE id = 13002;

-- ID 14103: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Per AT-C Section 305 (prospective financial analysis) and regression diagnostics, the Durbin-Watson statistic ranges from 0 to 4, with values near 2.0 indicating no autocorrelation among residuals. A value of 0.85 is well below 2.0, indicating positive serial correlation — meaning consecutive residuals tend to have the same sign, suggesting the model is systematically over- or under-predicting in streaks. While a Durbin-Watson value above 2.0 would indicate negative autocorrelation where errors alternate in sign, the low value here signals that the model may be missing a time-dependent variable or structural pattern.'
WHERE id = 14103;

-- ID 14104: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Per AT-C Section 305 (prospective financial statements) and the SGR formula, the sustainable growth rate equals ROE multiplied by the retention ratio: 18% x (1 - 0.40) = 18% x 0.60 = 10.8%. Since the 10% target is below the SGR of 10.8%, Fenwick can achieve this growth through retained earnings alone without issuing new equity or altering its capital structure. However, incorrectly applying the 40% payout ratio as the retention ratio (18% x 0.40 = 7.2%) reverses the formula components and would erroneously suggest the target is infeasible, whereas the correct retention ratio is 60%.'
WHERE id = 14104;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (8 questions)
-- ============================================================

-- ID 14039: Risk Management and Economics
UPDATE questions SET
  explanation = 'Per ASC 280-10-50 (segment reporting and economic analysis) and macroeconomic frameworks, coincident indicators move simultaneously with aggregate economic activity, confirming the current phase of the business cycle rather than predicting or lagging it. Examples include real GDP, industrial production, employment levels, and personal income. While leading indicators such as building permits and consumer confidence move ahead of the cycle to signal future direction, coincident indicators provide real-time confirmation of whether the economy is currently expanding or contracting.'
WHERE id = 14039;

-- ID 14040: Risk Management and Economics
UPDATE questions SET
  explanation = 'Per IRC Section 1 (income tax rates) and fiscal policy principles, increasing government spending and reducing personal income tax rates are the two primary tools of expansionary fiscal policy, designed to stimulate aggregate demand during economic downturns. These actions are implemented by Congress and the executive branch to counteract recessionary conditions by injecting spending and disposable income into the economy. Unlike monetary policy, which involves interest rate adjustments and money supply management by the Federal Reserve, fiscal policy operates through direct changes to government taxation and spending programs.'
WHERE id = 14040;

-- ID 14041: Risk Management and Economics
UPDATE questions SET
  explanation = 'Under ASC 815-20-25-75 (hedge effectiveness assessment), basis risk occurs when the hedging instrument and the hedged exposure do not move in perfect correlation, creating residual risk even after hedging. Cross-hedging jet fuel with crude oil futures introduces basis risk because the two commodities, while correlated, can diverge — as demonstrated by the 7-percentage-point spread between crude oil''s 12% decline and jet fuel''s 5% decline. Although counterparty risk affects over-the-counter derivatives, exchange-traded futures contracts like crude oil are cleared through a central clearinghouse, unlike bilateral contracts where counterparty default is a genuine concern.'
WHERE id = 14041;

-- ID 14042: Risk Management and Economics
UPDATE questions SET
  explanation = 'Per ASC 255-10-05 (changing prices) and macroeconomic theory, demand-pull inflation occurs when aggregate demand exceeds aggregate supply, often driven by excessive money growth, government spending, or consumer optimism, while cost-push inflation results from rising input costs (wages, raw materials, energy) that shift the aggregate supply curve leftward. The key distinction is whether the inflationary pressure originates from the demand side or the supply side of the economy. Although both types can coexist and produce similar price-level increases, unlike demand-pull inflation which typically accompanies strong economic growth, cost-push inflation can occur alongside stagnant output in a phenomenon known as stagflation.'
WHERE id = 14042;

-- ID 14043: Risk Management and Economics
UPDATE questions SET
  explanation = 'Per ASC 825-10-50 (financial instruments disclosure) and Federal Reserve open market operations, purchasing Treasury securities directly increases bank reserves and the money supply by crediting the reserve accounts of selling banks. The increased supply of reserves puts downward pressure on the federal funds rate, making this the primary mechanism of expansionary monetary policy used to stimulate economic activity. While selling Treasury securities would have the opposite contractionary effect by draining reserves and raising short-term rates, open market purchases expand lending capacity and reduce borrowing costs throughout the financial system.'
WHERE id = 14043;

-- ID 14044: Risk Management and Economics
UPDATE questions SET
  explanation = 'Per ASC 835-30-05 (interest imputation and capital markets) and macroeconomic theory, the crowding-out effect occurs when large-scale government borrowing competes with the private sector for loanable funds, driving up interest rates and increasing the cost of capital for businesses. The $180 billion decline in private investment results from higher rates caused by the government''s $500 billion entry into capital markets, partially offsetting the fiscal stimulus. Although the Phillips Curve describes the inflation-unemployment trade-off, it does not explain the mechanism by which government borrowing displaces private investment, unlike the crowding-out effect which directly addresses competition for limited loanable funds.'
WHERE id = 14044;

-- ID 14045: Risk Management and Economics
UPDATE questions SET
  explanation = 'Under ASC 820-10-55-3 (fair value bond pricing) and fixed income analytics, positive convexity means the price-yield relationship is curved rather than linear, and the convexity adjustment (0.5 x convexity x change-in-yield-squared) is always positive regardless of rate direction. For the 200 basis point decline: 0.5 x 85 x 0.02^2 = 1.7%, making the actual price increase approximately 16.1% versus the 14.4% duration-only estimate. Although the junior analyst argues convexity only benefits when rates decrease, positive convexity actually benefits bondholders in both directions — gaining more than duration predicts when rates fall and losing less than duration predicts when rates rise.'
WHERE id = 14045;

-- ID 14046: Risk Management and Economics
UPDATE questions SET
  explanation = 'Under ASC 820-10-35-18 (fair value interest rate inputs) and interest rate theory, the three established yield curve theories each explain the Treasury yield spread differently. The pure expectations theory (Economist A) holds that the yield curve reflects only the market''s forecast of future short-term rates. Liquidity preference theory (Economist B) adds a term premium — investors demand extra compensation for holding longer-duration bonds due to greater price risk. Market segmentation theory (Economist C) argues that supply and demand within each maturity segment independently determine rates. While Economists A and B both accept substitutability across maturities, Economist C''s segmented markets approach treats each maturity as an independent market.'
WHERE id = 14046;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 3234: State and Local Government Reporting
UPDATE questions SET
  explanation = 'Under GASB Statement No. 34, paragraph 14, government-wide financial statements present two primary columns: governmental activities (financed mainly by taxes, grants, and intergovernmental revenues) and business-type activities (financed by fees charged to external users for goods or services). Discrete component units appear in a separate column to distinguish legally separate entities from the primary government''s own operations. Although fiduciary activities are reported in separate fund statements, unlike governmental and business-type activities they are excluded from the government-wide statements because the resources are held in trust for others.'
WHERE id = 3234;

-- ID 3235: State and Local Government Reporting
UPDATE questions SET
  explanation = 'Under GASB Statement No. 14, paragraph 13, a legally separate entity is a component unit when the primary government is financially accountable — meaning it appoints a voting majority of the governing body and can either impose its will or a financial benefit/burden relationship exists. Component units meeting these criteria are generally presented discretely in a separate column of the government-wide financial statements. However, unlike discrete presentation, blending is required only when the component unit''s governing body is substantively the same as the primary government or when the entity exclusively serves the primary government.'
WHERE id = 3235;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (2 questions)
-- ============================================================

-- ID 3147: Stock Compensation and Business Combinations
UPDATE questions SET
  explanation = 'Under ASC 805-20-25-4, in-process research and development (IPR&D) acquired in a business combination is recognized at fair value as a separate indefinite-lived intangible asset on the acquisition date, regardless of whether the project has an alternative future use. IPR&D is not amortized but is tested for impairment annually until the project is completed (then reclassified as finite-lived and amortized) or abandoned (then written off). While pre-ASC 805 guidance required immediate expensing of acquired IPR&D, the current standard recognizes it as an asset because it represents value transferred in the acquisition price.'
WHERE id = 3147;

-- ID 3148: Stock Compensation and Business Combinations
UPDATE questions SET
  explanation = 'Under ASC 718-10-35-3, when a company elects to account for forfeitures as they occur, the forfeiture of 1,000 options in Year 2 requires reversal of all previously recognized compensation expense for those awards. The cumulative expense through Year 2 was 1,000 options x $5 x (2/4 vesting) = $2,500, which is reversed in the period of forfeiture. While estimating forfeitures upfront would have reduced the per-period expense from the grant date, the as-they-occur method instead recognizes full expense and then reverses upon actual forfeiture, unlike the estimation approach which anticipates departures from the start.'
WHERE id = 3148;

COMMIT;
