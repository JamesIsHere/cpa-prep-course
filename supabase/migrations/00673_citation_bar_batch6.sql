-- Migration: Citation backfill — BAR batch 6 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Business Combinations, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 3163: Advanced Consolidations
UPDATE questions SET
  explanation = 'Under ASC 810-10-45-18, unrealized profit from upstream intercompany sales is eliminated and allocated between the controlling and noncontrolling interests based on their respective ownership percentages. The $80,000 markup is split 70/30 because the subsidiary (seller) is partially owned, so both interest groups share the elimination. In contrast, downstream sales (parent to subsidiary) require 100% elimination against the parent''s interest, whereas upstream sales like this one allocate the elimination proportionally to reflect each group''s economic stake in the subsidiary.'
WHERE id = 3163;

-- ID 3164: Advanced Consolidations
UPDATE questions SET
  explanation = 'Under ASC 810-10-45-1, the subsidiary''s equity accounts (common stock, APIC, and retained earnings) are eliminated against the parent''s investment account in the consolidation entry. This elimination prevents double-counting because the parent''s investment balance already represents its share of the subsidiary''s net assets. Unlike intercompany revenue or expense eliminations that affect income, this equity elimination is a balance sheet adjustment that allocates any excess purchase price to fair value adjustments and goodwill per ASC 805.'
WHERE id = 3164;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (1 questions)
-- ============================================================

-- ID 3283: Advanced Lease Transactions
UPDATE questions SET
  explanation = 'Under ASC 842-10-30-1, the lease liability measurement includes the present value of a purchase option exercise price when the lessee is reasonably certain to exercise it. The $1,000,000 option price versus a $3,000,000 estimated fair value represents a significant bargain, strongly supporting the reasonable certainty threshold. Unlike variable lease payments not based on an index or rate, which are excluded from the liability measurement, a reasonably certain purchase option is always included because it represents an unavoidable future cash outflow.'
WHERE id = 3283;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (1 questions)
-- ============================================================

-- ID 3107: Advanced Revenue and Intangibles
UPDATE questions SET
  explanation = 'Under ASC 606-10-55-17, the output method measures progress toward satisfaction of a performance obligation based on the value of goods or services transferred to the customer relative to the remaining promised goods or services. Output measures include units delivered, milestones achieved, surveys of performance completed, or time elapsed. While the input method under ASC 606-10-55-20 uses costs incurred or resources consumed, the output method is preferred when it directly reflects the value transferred to the customer.'
WHERE id = 3107;

-- ============================================================
-- BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 4836: Business Combinations
UPDATE questions SET
  explanation = 'Under ASC 805-10-25-17, measurement period adjustments are recorded retrospectively as if the accounting had been completed at the acquisition date. The acquirer increases the patent from $350,000 to $500,000 and decreases goodwill by $150,000, with retrospective adjustment of comparative periods presented. Unlike post-measurement-period corrections, which are recognized in current-period earnings per ASC 805-10-25-19, measurement period adjustments (within 12 months of acquisition) revise the original purchase price allocation rather than recording a gain or loss.'
WHERE id = 4836;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 3192: Derivatives and Hedging
UPDATE questions SET
  explanation = 'Under ASC 815-10-15-83, an interest rate swap is a derivative contract in which one party pays a fixed rate and receives a floating rate (such as SOFR), while the counterparty does the opposite. Only the net interest differential is exchanged periodically; the notional principal is never exchanged. Unlike currency swaps where principal amounts may be exchanged at inception and maturity, plain vanilla interest rate swaps involve only net interest settlement, making them an efficient tool for converting variable-rate exposure to fixed.'
WHERE id = 3192;

-- ID 3193: Derivatives and Hedging
UPDATE questions SET
  explanation = 'Under ASC 815-20-25-1, a fair value hedge is designated to hedge the exposure to changes in fair value of a recognized asset or liability, or an unrecognized firm commitment. For a fixed-rate bond classified as available-for-sale, the swap converts the fixed-rate exposure to floating, hedging fair value changes caused by interest rate movements. Unlike a cash flow hedge under ASC 815-30, which hedges variability in expected future cash flows, a fair value hedge records both the hedging instrument''s and hedged item''s gains and losses in current earnings.'
WHERE id = 3193;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (8 questions)
-- ============================================================

-- ID 2956: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Under the DuPont analysis framework referenced in ASC 280-10 segment reporting disclosures, divergence between the current ratio and quick ratio signals an inventory composition issue. The improving current ratio (2.5 to 2.8) combined with a deteriorating quick ratio (1.8 to 1.1) and declining inventory turnover (8.0 to 4.5) indicates inventory buildup is inflating current assets without improving liquidity. While a rising current ratio alone might suggest stronger liquidity, the quick ratio decline reveals that the improvement is driven by illiquid inventory rather than cash or receivables.'
WHERE id = 2956;

-- ID 2957: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Under ASC 470-10-45-1 (debt classification and disclosure), the interest coverage ratio (EBIT / Interest Expense) of 1.2 times ($360,000 / $300,000) means operating income barely exceeds interest obligations, leaving virtually no cushion for performance declines. This razor-thin margin signals severe financial stress and limited debt service capacity. While a ratio above 1.0 technically indicates current interest can be covered, unlike ratios of 3.0 or higher that signal comfortable capacity, a 1.2 ratio warns that any operating deterioration could render the company unable to meet its debt obligations.'
WHERE id = 2957;

-- ID 2958: Financial Statement Analysis
UPDATE questions SET
  explanation = 'The defensive interval ratio, a liquidity metric supported by analytical procedures under AU-C Section 520 and financial analysis standards, equals (Cash + Short-term Investments + Receivables) divided by Daily Operating Expenses. It measures how many days a company can fund operations from liquid assets alone without any additional revenue. Unlike the current ratio, which compares all current assets to current liabilities at a point in time, the defensive interval provides a time-based survival measure that is particularly useful for assessing vulnerability during revenue disruptions.'
WHERE id = 2958;

-- ID 2959: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Under the economic value added (EVA) framework consistent with ASC 350-20-35 impairment analysis, when ROIC (14%) exceeds WACC (10%), the company generates returns above its cost of capital, creating positive economic value. The 4% spread represents excess return that increases shareholder wealth beyond the required return on invested capital. While a positive net income alone might appear favorable, it does not confirm value creation — unlike ROIC versus WACC analysis, which accounts for the full cost of both debt and equity capital.'
WHERE id = 2959;

-- ID 2960: Financial Statement Analysis
UPDATE questions SET
  explanation = 'The Beneish M-score model, used in forensic accounting and referenced in fraud risk assessment under AU-C Section 240, flags potential earnings manipulation when the score exceeds (is less negative than) the -1.78 threshold. A score of -1.5 is above this threshold, indicating a higher probability of manipulation warranting further investigation. However, unlike a definitive fraud finding, the M-score is a probabilistic screening tool — scores below -1.78 suggest lower manipulation risk, while scores above it merely increase the likelihood without proving wrongdoing.'
WHERE id = 2960;

-- ID 2961: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Under ASC 505-10-50-2 (equity disclosures) and DuPont analysis, the equity multiplier (Total Assets / Total Equity) equals 1 + Debt-to-Equity ratio: before the transaction, 1 + 2.0 = 3.0; after retiring debt with equity proceeds, 1 + 1.0 = 2.0. The equity multiplier declines from 3.0 to 2.0, reflecting reduced financial leverage. While retiring debt lowers financial risk by reducing the multiplier, unlike maintaining higher leverage that amplifies ROE through the DuPont leverage component, deleveraging trades potential return enhancement for greater solvency and stability.'
WHERE id = 2961;

-- ID 2962: Financial Statement Analysis
UPDATE questions SET
  explanation = 'The price-to-earnings ratio, a key valuation metric under ASC 820-10-35-2 (market approach to fair value), reflects market expectations of future earnings growth when elevated above industry averages. A P/E of 25 versus an industry average of 15 most likely indicates investors expect higher future earnings growth, justifying a premium per dollar of current earnings. While overvaluation is possible, unlike a temporarily inflated P/E from one-time earnings declines, a persistently high P/E typically signals that the market has priced in superior growth prospects.'
WHERE id = 2962;

-- ID 2963: Financial Statement Analysis
UPDATE questions SET
  explanation = 'Economic value added (EVA), consistent with the value creation framework underlying ASC 350-20-35-3 goodwill impairment testing, is calculated as NOPAT minus (WACC multiplied by Invested Capital). A positive EVA indicates the company earns returns exceeding its weighted average cost of capital, creating shareholder wealth. Unlike net income, which only deducts debt costs through interest expense, EVA subtracts the full cost of all capital — both debt and equity — providing a more complete measure of true economic profit.'
WHERE id = 2963;

-- ============================================================
-- FINANCIAL VALUATION METHODS (8 questions)
-- ============================================================

-- ID 3069: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Under ASC 805-20-25-10 and ASC 820-10-35-16, the relief-from-royalty method values intangible assets by estimating the royalty savings the owner enjoys by not licensing the asset from a third party. This income approach applies a market-derived royalty rate to projected revenues and discounts the resulting savings to present value. While the multi-period excess earnings method is preferred for customer relationships, the relief-from-royalty method is the standard technique for trademarks, trade names, and technology acquired in a business combination.'
WHERE id = 3069;

-- ID 3357: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Under ASC 805-20-25-10 and ASC 820-10-55-22, the with-and-without method values an intangible asset by comparing enterprise value under two scenarios: one assuming the asset exists and one assuming it does not. The difference in discounted cash flows between the two scenarios is attributed to the intangible. Unlike the relief-from-royalty method, which relies on comparable royalty rates, the with-and-without method is particularly suited for noncompete agreements and customer relationships where market royalty data may be unavailable.'
WHERE id = 3357;

-- ID 13220: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Under ASC 820-10-55-5, the mid-year convention assumes cash flows are received at the midpoint of each period rather than at year-end, reducing each discount exponent by 0.5 years. This adjustment shortens the effective discount period for every cash flow, producing higher present values and a higher enterprise value. While the year-end convention assumes all cash flows arrive on the last day of the period, the mid-year convention better reflects businesses that generate cash flows relatively evenly throughout the year rather than in a lump sum at year-end.'
WHERE id = 13220;

-- ID 13221: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Under ASC 820-10-35-24A, a DCF model must use discount rates consistent with the risks inherent in the projected cash flows. When WACC depends on market-value capital structure weights that in turn depend on the enterprise value being calculated, the standard resolution is an iterative solver that adjusts WACC and enterprise value simultaneously until mutually consistent. Unlike using book-value weights (which ignore market economics) or an industry-average WACC (which ignores company-specific risk), the iterative approach correctly reflects the target capital structure per ASC 820 fair value principles.'
WHERE id = 13221;

-- ID 13222: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Under capital budgeting principles consistent with ASC 360-10-35-17 (asset impairment testing using discounted cash flows), the profitability index equals the present value of future cash flows divided by the initial investment. A PI greater than 1.0 indicates the project creates value because inflows exceed the investment in present value terms. Unlike NPV, which measures absolute dollar value created, PI measures value per dollar invested, making it especially useful when capital is constrained and management must rank competing positive-NPV projects.'
WHERE id = 13222;

-- ID 13223: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Under ASC 820-10-35-36, enterprise value represents the total value of the business to all capital providers. It is calculated as market capitalization plus total debt plus preferred stock minus cash and cash equivalents: (5M shares x $24) + $30M + $10M - $8M = $152 million. While market capitalization alone ($120M) reflects only equity holders'' claim, enterprise value captures the full acquisition cost by including all debt and preferred claims and deducting excess cash that effectively reduces the net purchase price.'
WHERE id = 13223;

-- ID 13224: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Under ASC 820-10-55-11, WACC is the blended cost of capital reflecting each source''s weight and cost: WACC = (0.30 x 5% x (1 - 0.25)) + (0.70 x 11%) = 1.125% + 7.70% = 8.825%, rounded to 8.83%. Only the debt component receives the tax shield because interest expense is tax-deductible under IRC Section 163. Unlike incorrectly using the pre-tax cost of debt (which would overstate WACC at 9.20%), the after-tax adjustment reflects the true economic cost of debt financing by accounting for the interest tax deduction.'
WHERE id = 13224;

-- ID 13225: Financial Valuation Methods
UPDATE questions SET
  explanation = 'Under ASC 820-10-55-11 and the modified CAPM framework, both a country risk premium (CRP) and a size premium should be added when valuing a small-cap company in an emerging market. The CRP compensates for sovereign, political, and currency risks not captured by beta, while the size premium addresses the empirically documented higher returns demanded for small-cap stocks per the Fama-French three-factor model. Unlike the standard single-factor CAPM, which relies solely on beta to capture systematic risk, practitioners augment the base formula to avoid understating the cost of equity.'
WHERE id = 13225;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4854: Foreign Currency Transactions
UPDATE questions SET
  explanation = 'Under ASC 830-10-45-1, when a foreign subsidiary''s functional currency is the reporting currency (U.S. dollar), the temporal method is used to remeasure the subsidiary''s financial statements. Remeasurement gains and losses are recognized in current-period net income. Unlike the current rate method under ASC 830-30-45-3, where the functional currency differs from the reporting currency and translation adjustments are recorded in other comprehensive income (OCI), the temporal method treats currency effects as realized and reports them directly in earnings.'
WHERE id = 4854;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 3318: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = 'Under GASB Statement No. 34, paragraph 77, capital outlay ($2,000,000) is added back in the reconciliation because it is reported as an expenditure in governmental funds but capitalized as an asset government-wide, while depreciation ($500,000) is subtracted because it is an expense government-wide but not recognized in fund statements. The net adjustment is +$1,500,000. Unlike simply netting the two amounts without understanding directionality, the reconciliation reflects the fundamental difference between modified accrual (current financial resources) and full accrual (economic resources) measurement focuses.'
WHERE id = 3318;

-- ID 3319: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = 'Under GASB Statement No. 34, paragraph 80, compensated absences in governmental funds are recognized as expenditures only when they mature — that is, when they become due and payable with currently available resources ($85,000). The remaining long-term liability is not reported in the fund statements under modified accrual. However, on the government-wide statements using full accrual, the entire $1.2 million obligation is reported as a liability, unlike the fund-level treatment that recognizes only the currently due portion.'
WHERE id = 3319;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 4872: Intangible Assets Advanced
UPDATE questions SET
  explanation = 'Under ASC 350-30-35-4, an intangible asset is classified as indefinite-lived when there is no foreseeable limit to the period over which it will generate net cash flows. A broadcast license renewable indefinitely at minimal cost meets this criterion because no legal, contractual, or economic factor limits its useful life. Unlike patents (which expire after a statutory term), customer lists (which decay over time), and noncompete agreements (which have contractual end dates), an indefinitely renewable license has no identifiable endpoint requiring amortization.'
WHERE id = 4872;

-- ============================================================
-- INTERFUND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 3333: Interfund Transactions
UPDATE questions SET
  explanation = 'Under GASB Statement No. 34, paragraph 112a, an interfund loan creates reciprocal receivable and payable balances: a "due from other funds" in the lending General Fund and a "due to other funds" in the borrowing Capital Projects Fund. These are balance sheet items only and do not affect revenues or expenditures. Unlike interfund transfers, which represent permanent resource movements reported as other financing sources/uses per GASB 34 paragraph 112c, interfund loans are temporary and must be repaid, creating only reciprocal asset and liability balances.'
WHERE id = 3333;

-- ID 3334: Interfund Transactions
UPDATE questions SET
  explanation = 'Under GASB Statement No. 34, paragraph 58, interfund receivables and payables between funds within the same activity category (governmental-to-governmental) are eliminated on the government-wide statement of net position because they are internal to a single reporting entity. This prevents overstating both assets and liabilities. However, unlike intra-activity eliminations, amounts between governmental activities and business-type activities are reported as internal balances per GASB 34 paragraph 58b, since these represent claims across distinct activity categories.'
WHERE id = 3334;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (1 questions)
-- ============================================================

-- ID 3257: Internal-Use Software and Cloud Computing
UPDATE questions SET
  explanation = 'Under ASC 350-40-25-7, training costs for internal-use software are always expensed as incurred, regardless of the development stage in which they occur. Training does not directly contribute to the software''s functionality or enhance its capability. Unlike costs incurred during the application development stage (such as coding and testing) that qualify for capitalization under ASC 350-40-25-2, training is considered an operating activity that benefits the users rather than the software asset itself.'
WHERE id = 3257;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (2 questions)
-- ============================================================

-- ID 3294: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = 'Under ASC 715-30-35-9, the expected return on plan assets is a component that reduces net periodic pension cost because investment earnings on plan assets help offset the pension obligation. The expected (not actual) return is used for income statement purposes to smooth earnings volatility. While the difference between actual and expected returns creates an actuarial gain or loss recognized in OCI under ASC 715-30-35-25, unlike service cost and interest cost which increase pension expense, the expected return always operates as an offset.'
WHERE id = 3294;

-- ID 3296: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = 'Under ASC 715-30-35-10, prior service cost from a plan amendment that retroactively increases benefits is initially recognized in other comprehensive income (OCI). It is then amortized from accumulated OCI to net periodic pension cost over the remaining service period of active employees expected to receive benefits. Unlike actuarial gains and losses that may remain in the corridor before amortization, prior service cost is systematically amortized beginning immediately, because the amendment creates a definite cost attributable to past employee service.'
WHERE id = 3296;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (7 questions)
-- ============================================================

-- ID 2997: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Under CVP analysis principles consistent with ASC 420-10-25 (restructuring cost analysis) and managerial accounting standards, the weighted-average contribution margin shifts from $30 (0.60 x $40 + 0.40 x $15) to $25 (0.40 x $40 + 0.60 x $15) when the mix shifts toward the lower-margin product. Breakeven rises from 20,000 units ($600,000 / $30) to 24,000 units ($600,000 / $25). While total unit volume may remain unchanged, the shift toward lower-margin Product Beta reduces aggregate profitability, unlike what aggregate volume metrics alone would suggest.'
WHERE id = 2997;

-- ID 2998: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Under regression analysis principles applied in financial forecasting and consistent with ASC 820-10-55-5 (valuation technique inputs), an R-squared of 0.85 means that 85% of the variance in the dependent variable (revenue) is explained by the independent variable (advertising spend). This is the coefficient of determination, measuring explanatory power rather than prediction accuracy or probability. Unlike the correlation coefficient (r), which measures linear association direction and strength, R-squared specifically quantifies the proportion of variance explained by the model.'
WHERE id = 2998;

-- ID 3351: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Under CVP analysis principles consistent with ASC 420-10 breakeven frameworks, the contribution margin ratio equals ($24 - $12) / $24 = 50%. Breakeven in sales dollars equals fixed costs divided by the CM ratio: $360,000 / 0.50 = $720,000, equivalent to 30,000 units at $24 per unit. While breakeven in units divides fixed costs by the per-unit contribution margin ($360,000 / $12 = 30,000 units), the sales-dollar approach using the CM ratio is more practical when multiple products share a common revenue stream.'
WHERE id = 3351;

-- ID 3352: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Under time-series forecasting methods applied in financial planning consistent with ASC 275-10-50 (risks and uncertainties disclosures), exponential smoothing assigns geometrically declining weights to older observations through a smoothing constant (alpha) between 0 and 1. Higher alpha values place more weight on recent data, making the forecast more responsive to recent changes. Unlike a simple moving average that equally weights all periods in the window, exponential smoothing never fully discards older data, instead allowing its influence to decay gradually with each successive observation.'
WHERE id = 3352;

-- ID 3353: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Under operating leverage analysis consistent with ASC 280-10-50-22 (segment reporting risk disclosures), the degree of operating leverage (DOL) magnifies the percentage change in operating income relative to the percentage change in sales. With a DOL of 4.0 and a 5% sales decline, operating income changes by 4.0 x (-5%) = -20%. While companies with low fixed costs and high variable costs have lower DOL and less amplification, a high-fixed-cost structure creates significant downside risk because even small revenue declines produce outsized drops in operating income.'
WHERE id = 3353;

-- ID 12867: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Under weighted moving average forecasting principles applied in financial planning and consistent with ASC 855-10-55 (subsequent events evaluation timing), the April forecast equals 0.50(520) + 0.30(460) + 0.20(400) = 260 + 138 + 80 = 478 units. The predetermined weights (0.50, 0.30, 0.20) emphasize recent data, reflecting the analyst''s judgment about trend relevance. Unlike a simple moving average of 460 units [(400 + 460 + 520) / 3], which weights all three months equally, the weighted average captures the upward trend by assigning the most weight to March''s higher demand.'
WHERE id = 12867;

-- ID 12973: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'Under classical time-series decomposition applied in financial forecasting and referenced in ASC 275-10-50 (risks and uncertainties), the four standard components are trend, cyclical, seasonal, and irregular (random). The cyclical component captures multi-year economic fluctuations that repeat without a fixed period, such as business cycle expansions and contractions. Unlike standard error and R-squared (which are regression diagnostics) or confidence level (which is a hypothesis-testing concept), these four components form the foundational framework for decomposing historical time-series data before building forecast models.'
WHERE id = 12973;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (8 questions)
-- ============================================================

-- ID 12724: Risk Management and Economics
UPDATE questions SET
  explanation = 'Under ASC 820-10-55-11, WACC blends the after-tax cost of debt and cost of equity weighted by the target capital structure: WACC = (0.30 x 8% x (1 - 0.25)) + (0.70 x 14%) = 1.80% + 9.80% = 11.60%. Only the debt component receives the tax shield because interest expense is deductible under IRC Section 163. Unlike applying the tax adjustment to both components (which would understate WACC), or reversing the weights (which misrepresents the capital structure), the correct calculation applies the tax benefit exclusively to the cost of debt.'
WHERE id = 12724;

-- ID 12725: Risk Management and Economics
UPDATE questions SET
  explanation = 'Under IRC Section 163(a) and the Modigliani-Miller framework with taxes, the interest tax shield equals interest expense multiplied by the corporate tax rate. Because interest payments are tax-deductible, each dollar of interest reduces taxable income and lowers the company''s tax liability, making the after-tax cost of debt lower than the stated coupon rate. Unlike a government subsidy that directly pays principal, the tax shield operates indirectly through reduced tax obligations, and unlike municipal bond exemptions, it applies to all corporate debt with deductible interest.'
WHERE id = 12725;

-- ID 12726: Risk Management and Economics
UPDATE questions SET
  explanation = 'Under IRC Section 163 and the after-tax cost of debt formula (pre-tax rate x (1 - tax rate)), increasing the tax rate from 21% to 28% reduces the after-tax cost from 5.53% (7% x 0.79) to 5.04% (7% x 0.72). A higher tax rate increases the value of the interest deduction, making each dollar of interest expense more valuable as a tax shield. While higher taxes reduce overall net income, they do not increase the after-tax cost of deductible interest — unlike the CEO''s claim, the CFO correctly identifies that the larger deduction makes debt cheaper.'
WHERE id = 12726;

-- ID 12727: Risk Management and Economics
UPDATE questions SET
  explanation = 'Under macroeconomic theory applied in risk assessment per ASC 820-10-55-3 (market participant assumptions), the trough is the lowest point of the business cycle where GDP stops declining and recovery begins. It marks the transition from contraction to expansion, characterized by high unemployment and low inflation. Unlike the peak (maximum output before contraction) or the contraction phase itself (where GDP is actively declining and unemployment is rising), the trough represents the turning point where economic indicators stabilize before improving.'
WHERE id = 12727;

-- ID 12728: Risk Management and Economics
UPDATE questions SET
  explanation = 'Under the Gordon Growth Model (constant-growth DDM), P = D1 / (r - g), the mathematical constraint requires that the growth rate (g) must be less than the required return (r), per ASC 820-10-55-22 fair value estimation principles. If g equals or exceeds r, the denominator becomes zero or negative, producing an undefined or negative stock price that is economically meaningless. Unlike the IRR decision rule (which compares a computed rate to a hurdle), the DDM constraint is structural — the model simply cannot function when the growth assumption violates this requirement.'
WHERE id = 12728;

-- ID 12729: Risk Management and Economics
UPDATE questions SET
  explanation = 'Under ASC 830-10-45-17, translation exposure (also called accounting exposure) arises when a parent converts a foreign subsidiary''s financial statements from the local currency to the reporting currency for consolidation purposes. It is a reporting risk that affects financial statement amounts but not underlying cash flows. Unlike transaction exposure (which affects specific foreign-currency-denominated receivables or payables) or economic exposure (which captures long-term competitive effects on future cash flows), translation exposure is purely an accounting phenomenon arising from the consolidation process.'
WHERE id = 12729;

-- ID 12730: Risk Management and Economics
UPDATE questions SET
  explanation = 'Under ASC 820-10-55-5 and DCF valuation principles, free cash flow to equity (FCFE) must be discounted at the cost of equity, not WACC. Using WACC (9.5%) instead of the higher cost of equity (13%) applies a lower discount rate, producing inflated present values and overstating the equity value. While WACC is the correct rate for discounting free cash flow to the firm (FCFF) because it reflects all capital providers'' required returns, FCFE represents cash flows available only to equity holders and must therefore be discounted at the equity-specific required return.'
WHERE id = 12730;

-- ID 12731: Risk Management and Economics
UPDATE questions SET
  explanation = 'Under DCF valuation principles consistent with ASC 820-10-55-5, total enterprise value equals the sum of discrete-period cash flow present values ($12M) plus the terminal value present value ($38M) = $50M. The terminal value represents $38M / $50M = 76% of total enterprise value, consistent with the typical 60-80% range observed in practice. While the discrete forecast period captures near-term cash flows with greater specificity, the terminal value''s dominance highlights the critical importance of terminal growth rate and exit multiple assumptions in any DCF analysis.'
WHERE id = 12731;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 3223: State and Local Government Reporting
UPDATE questions SET
  explanation = 'Under GASB Statement No. 54, paragraph 30, the General Fund is the government''s chief operating fund and accounts for all financial resources not required to be reported in another fund. Every government must have exactly one General Fund, and it is always reported as a major fund. It uses the modified accrual basis and current financial resources measurement focus. Unlike special revenue funds that track legally restricted or committed resources for specific purposes, the General Fund handles the government''s routine unrestricted operations.'
WHERE id = 3223;

-- ID 3224: State and Local Government Reporting
UPDATE questions SET
  explanation = 'Under GASB Statement No. 34, paragraph 93, proprietary funds (enterprise funds and internal service funds) use the full accrual basis of accounting with the economic resources measurement focus, similar to private-sector businesses. Revenues are recognized when earned and expenses when incurred, regardless of when cash changes hands. Unlike governmental funds that use modified accrual and the current financial resources measurement focus, proprietary funds report all assets and liabilities (including long-term items) because they operate as self-sustaining business-type activities.'
WHERE id = 3224;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 3134: Stock Compensation and Business Combinations
UPDATE questions SET
  explanation = 'Under ASC 718-10-35-3, when an employee forfeits unvested stock options by failing to satisfy the service condition, previously recognized compensation expense for those awards is reversed. The company may either estimate forfeitures at grant date and adjust for actual experience (true-up approach) or elect to recognize forfeitures as they occur per ASC 718-10-35-1D. Unlike awards that vest and are subsequently unexercised (which require no reversal), forfeiture of unvested options means the service condition was never met, so no compensation cost should remain recognized.'
WHERE id = 3134;

COMMIT;
