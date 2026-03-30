-- Migration: Citation backfill — BAR batch 4 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Business Combinations, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 703: Advanced Consolidations
UPDATE questions SET
  explanation = 'The correct answer is that securitization SPEs are a common structure requiring VIE consolidation. Under ASC 810-10-15-14, an entity is a VIE if it has insufficient equity at risk to finance its activities without additional subordinated financial support. SPEs created for securitization typically have minimal equity and a single party absorbing the majority of expected losses, meeting both VIE criteria. While other structures may also qualify as VIEs, securitization vehicles were the primary catalyst for ASC 810''s consolidation requirements following off-balance-sheet SPE abuses.'
WHERE id = 703;

-- ID 704: Advanced Consolidations
UPDATE questions SET
  explanation = 'The correct answer is that the basic consolidation elimination entry removes the parent''s investment account against the subsidiary''s stockholders'' equity. Under ASC 810-10-45-1, the elimination entry debits the subsidiary''s equity accounts (common stock, retained earnings, and fair value adjustments) and credits the parent''s investment account to prevent double-counting the subsidiary''s net assets. Without this entry, both the investment asset and the underlying net assets would appear on the consolidated balance sheet, whereas the purpose of consolidation is to present the combined entity as a single economic unit.'
WHERE id = 704;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (1 questions)
-- ============================================================

-- ID 3281: Advanced Lease Transactions
UPDATE questions SET
  explanation = 'The correct answer is that a lease modification extending the term without changing scope is treated as a remeasurement of the existing lease. Under ASC 842-10-25-8, the lessee remeasures the lease liability using the remaining modified payments discounted at a revised rate determined at the modification date. The right-of-use asset is adjusted by the same amount as the change in the lease liability per ASC 842-10-25-11. However, a modification that grants a new right of use not in the original lease would instead be accounted for as a separate contract under ASC 842-10-25-7.'
WHERE id = 3281;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (1 questions)
-- ============================================================

-- ID 3101: Advanced Revenue and Intangibles
UPDATE questions SET
  explanation = 'The correct answer is $4,000,000 in revenue recognized to date. Under ASC 606-10-55-21, the input method (cost-to-cost) measures progress toward satisfaction of a performance obligation based on costs incurred relative to total expected costs. Here, $3,200,000 / $8,000,000 = 40% complete, and 40% of $10,000,000 = $4,000,000. This method is appropriate when inputs faithfully depict the entity''s progress. While the output method measures progress based on value transferred, the cost-to-cost input method is more commonly used for long-term construction contracts.'
WHERE id = 3101;

-- ============================================================
-- BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 4834: Business Combinations
UPDATE questions SET
  explanation = 'The correct answer is $2,000,000 of goodwill. Under ASC 805-30-30-1, goodwill is measured as the excess of consideration transferred over the net of acquisition-date fair values of identifiable assets acquired and liabilities assumed. Here, $20,000,000 - ($25,000,000 - $7,000,000) = $2,000,000. Because consideration exceeds identifiable net assets, goodwill is recognized. However, if net assets had exceeded consideration, ASC 805-30-25-2 would require recognition of a bargain purchase gain rather than goodwill.'
WHERE id = 4834;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 720: Derivatives and Hedging
UPDATE questions SET
  explanation = 'The correct answer is $8 intrinsic value. Under ASC 815-10-15-83, a derivative''s intrinsic value is the favorable difference between the contract terms and current market conditions. For a put option, intrinsic value equals the strike price minus the current price when the option is in the money: $50 - $42 = $8. The $3 premium paid is the option''s cost, not part of intrinsic value. While the net profit would be $5 ($8 - $3), intrinsic value and net payoff are distinct concepts under ASC 815.'
WHERE id = 720;

-- ============================================================

-- ID 3189: Derivatives and Hedging
UPDATE questions SET
  explanation = 'The correct answer is that a forward contract is a customized OTC agreement to buy or sell an asset at a specified price on a future date. Under ASC 815-10-15-83, derivatives include contracts with a notional amount, no or minimal initial net investment, and net settlement provisions. Forwards meet these criteria but are privately negotiated rather than exchange-traded, introducing counterparty risk. Unlike futures contracts, which are standardized and traded on exchanges with daily margin settlement, forwards allow full customization of terms but lack the credit protection of a clearinghouse.'
WHERE id = 3189;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (8 questions)
-- ============================================================

-- ID 2938: Financial Statement Analysis
UPDATE questions SET
  explanation = 'The correct answer is 30 days payable outstanding. Per financial analysis frameworks consistent with ASC 210 balance sheet presentation, the cash conversion cycle (CCC) equals days inventory outstanding (DIO) plus days sales outstanding (DSO) minus days payable outstanding (DPO). Solving: DPO = DIO + DSO - CCC = 45 + 60 - 75 = 30 days. A higher DPO means the company retains cash longer by delaying supplier payments. However, an excessively high DPO may indicate liquidity problems rather than efficient cash management, unlike what the metric alone suggests.'
WHERE id = 2938;

-- ID 2939: Financial Statement Analysis
UPDATE questions SET
  explanation = 'The correct answer is that both companies have a 4% net profit margin. Under the DuPont decomposition of ROA consistent with ASC 220 income statement presentation, ROA equals net profit margin multiplied by asset turnover. Company A: 12% / 3.0 = 4%. Company B: 8% / 2.0 = 4%. Despite identical margins, Company A achieves higher ROA through superior asset efficiency (turnover of 3.0 vs. 2.0). While it might appear that higher ROA implies higher profitability, the DuPont analysis reveals that Company A''s advantage lies entirely in asset utilization rather than margin improvement.'
WHERE id = 2939;

-- ID 2941: Financial Statement Analysis
UPDATE questions SET
  explanation = 'The correct answer is that Evergreen''s high fixed asset turnover is misleadingly inflated by fully depreciated assets. Under ASC 360-10-35, fixed assets are reported at cost less accumulated depreciation, so a fully depreciated fleet carries minimal net book value. Evergreen''s turnover of 8.5 ($34M / ~$4M net assets) appears superior, but it masks impending capital expenditure needs. Although Summit''s lower turnover of 2.1 reflects recent purchases at higher net book value ($34M / $16.2M), this actually indicates more modern capacity. Analysts must consider asset age to avoid concluding that older-asset companies are more capital-efficient when they are actually capital-starved.'
WHERE id = 2941;

-- ID 2942: Financial Statement Analysis
UPDATE questions SET
  explanation = 'The correct answer is that the company is more profitable at the operating level despite higher COGS. Using common-size analysis per ASC 220-10-S99 income statement presentation, the company''s operating income margin is 16% (100% - 62% - 22%) versus the competitor''s 15% (100% - 55% - 30%). The company has higher production costs (COGS 62% vs. 55%) but significantly lower overhead (SGA 22% vs. 30%), yielding a better operating margin. While the competitor achieves a stronger gross margin, this advantage is more than offset by its higher SGA burden, making operating income the more meaningful comparison point.'
WHERE id = 2942;

-- ID 2943: Financial Statement Analysis
UPDATE questions SET
  explanation = 'The correct answer is the grey zone (uncertain). Under ASC 205-40 going concern assessment frameworks, the Altman Z-score model classifies manufacturing firms into three zones: above 2.99 is the safe zone, between 1.81 and 2.99 is the grey zone, and below 1.81 is the distress zone. A score of 2.2 falls in the grey zone, indicating uncertain financial health where bankruptcy is possible but not certain. Unlike a score below 1.81, which would signal high distress probability, the grey zone requires further analysis of qualitative factors and industry conditions.'
WHERE id = 2943;

-- ID 2944: Financial Statement Analysis
UPDATE questions SET
  explanation = 'The correct answer is an equity multiplier of 2.5. Under the extended DuPont framework, ROE equals ROA multiplied by the equity multiplier: 25% / 10% = 2.5. This means total assets are 2.5 times stockholders'' equity, so debt finances 60% of assets [(2.5 - 1) / 2.5]. Per ASC 470 and financial leverage analysis principles, this significant leverage amplifies both returns and risk. While a higher equity multiplier boosts ROE when ROA exceeds the cost of debt, it also increases vulnerability to earnings declines because fixed interest obligations remain constant regardless of performance.'
WHERE id = 2944;

-- ID 2945: Financial Statement Analysis
UPDATE questions SET
  explanation = 'The correct answer is that the company faces increasing financial risk from debt-financed growth. Horizontal analysis of the balance sheet per ASC 210-10-45 reveals a dangerous trend: liabilities grew 70% while equity grew only 10%, and total assets grew 40%. This capital structure shift means the company is increasingly reliant on debt financing. Although rapid asset growth might appear positive, the disproportionate liability increase signals higher default risk under ASC 470 debt classification principles, whereas a healthier growth pattern would show equity growing in proportion to or faster than liabilities.'
WHERE id = 2945;

-- ID 2946: Financial Statement Analysis
UPDATE questions SET
  explanation = 'The correct answer is $262,500 in net income. Working from EBITDA per ASC 220 income statement presentation: EBIT = EBITDA - depreciation - amortization = $500,000 - $80,000 - $20,000 = $400,000. Pre-tax income = EBIT - interest = $400,000 - $50,000 = $350,000. Net income = $350,000 x (1 - 0.25) = $262,500. A common error is subtracting tax before interest, which would incorrectly yield $225,000. However, under ASC 740, income tax is computed on pre-tax income after deducting interest expense, not on operating income.'
WHERE id = 2946;

-- ============================================================
-- FINANCIAL VALUATION METHODS (8 questions)
-- ============================================================

-- ID 3048: Financial Valuation Methods
UPDATE questions SET
  explanation = 'The correct answer is that a minority interest discount reflects the reduced value of a non-controlling ownership stake due to lack of control. Under ASC 820 fair value measurement principles and AICPA Accounting and Valuation Guide: Valuation of Privately-Held-Company Equity Securities, minority shareholders cannot direct operations, set dividends, or control strategic decisions. This lack of influence makes minority shares worth less per share than controlling stakes. While a discount for lack of marketability (DLOM) addresses liquidity, the minority interest discount specifically addresses the absence of control rights, and the two discounts are applied separately.'
WHERE id = 3048;

-- ID 3049: Financial Valuation Methods
UPDATE questions SET
  explanation = 'The correct answer is that the terminal growth rate should approximate or be less than the long-term GDP growth rate. Under DCF valuation principles consistent with ASC 820-10-35-24A (income approach), a company cannot grow faster than the overall economy indefinitely. The Gordon Growth Model terminal value formula (FCF / (WACC - g)) requires the growth rate to be less than WACC for the calculation to produce a finite positive value. Although a company may grow above GDP in the near term, using a terminal rate above GDP implies the company would eventually exceed the entire economy, which is mathematically impossible.'
WHERE id = 3049;

-- ID 3050: Financial Valuation Methods
UPDATE questions SET
  explanation = 'The correct answer is that precedent transaction analysis incorporates control premiums paid in completed acquisitions. Under ASC 805-30-30-1 (business combinations), acquirers typically pay 20-40% above the target''s trading price to gain control. Comparable company analysis uses current market multiples without any control premium. This means precedent transaction analysis generally yields higher valuations than comparable company analysis. While both methods use market-based multiples, the fundamental difference is that transaction multiples reflect what buyers actually paid for control, whereas trading multiples only reflect the price of minority shares.'
WHERE id = 3050;

-- ID 3051: Financial Valuation Methods
UPDATE questions SET
  explanation = 'The correct answer is that the $13 million discrepancy most likely results from changing capital structure assumptions. Under ASC 820-10-35 (income approach), FCFF discounted at WACC assumes a constant target capital structure, while FCFE discounted at cost of equity directly models actual debt service cash flows. When a company''s leverage changes over the projection period, the constant-WACC approach diverges from reality. Although both methods should theoretically produce identical equity values under perfectly consistent assumptions, Glendale''s planned capital structure changes cause the FCFF/WACC model to miss debt dynamics that the FCFE approach captures directly.'
WHERE id = 3051;

-- ID 3052: Financial Valuation Methods
UPDATE questions SET
  explanation = 'The correct answer is $18 million to $24 million. Under ASC 820 fair value hierarchy and the AICPA Valuation Guide, enterprise value is calculated using comparable public company multiples: $4M EBITDA x 6 = $24M to $4M x 8 = $32M. After applying a 25% marketability discount for the private company''s lack of liquidity: $24M x 0.75 = $18M and $32M x 0.75 = $24M. The DLOM reflects that private shares cannot be sold as readily as publicly traded shares. While the EV/EBITDA multiples come from public comparables, the discount adjusts for the fundamental illiquidity difference between public and private ownership.'
WHERE id = 3052;

-- ID 3054: Financial Valuation Methods
UPDATE questions SET
  explanation = 'The correct answer is that the capitalization of earnings method values a business as normalized earnings divided by a capitalization rate. Under ASC 820-10-35-24A (income approach to fair value), this single-period model is appropriate for mature, stable businesses with predictable earnings. The capitalization rate equals the discount rate minus the expected long-term growth rate (cap rate = r - g). Unlike multi-stage DCF models that project explicit cash flows for several years, the capitalization method assumes a constant growth rate in perpetuity, making it suitable only when earnings are stable and predictable.'
WHERE id = 3054;

-- ID 3055: Financial Valuation Methods
UPDATE questions SET
  explanation = 'The correct answer is that the P/E method yields the highest equity value per share at $45.00. Under market approach valuation consistent with ASC 820-10-35-24, applying comparable multiples: P/E gives $3.00 x 15 = $45.00 per share, while P/B gives $15.00 x 2.5 = $37.50 per share. The P/E method produces a higher value because it capitalizes earnings at a relatively high multiple. Although the EV/EBITDA method could theoretically yield a different per-share result, without knowing shares outstanding, the P/E multiple clearly dominates the P/B approach by $7.50 per share.'
WHERE id = 3055;

-- ID 3056: Financial Valuation Methods
UPDATE questions SET
  explanation = 'The correct answer is that the DLOM is applied to reduce the value of private company shares for lack of marketability. Under ASC 820-10-35 fair value measurement and the AICPA Accounting and Valuation Guide, the discount for lack of marketability reflects that private shares cannot be sold on a public exchange, resulting in reduced liquidity, longer time to sell, higher transaction costs, and limited price transparency. Typical DLOMs range from 15-35% depending on company characteristics. Unlike publicly traded shares with immediate marketability, private shares require this adjustment for estate tax and other valuation purposes per IRC Section 2031.'
WHERE id = 3056;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4851: Foreign Currency Transactions
UPDATE questions SET
  explanation = 'The correct answer is that monetary items such as cash, receivables, and payables are remeasured at the current exchange rate under the temporal method. Per ASC 830-10-45-17, when the functional currency is the reporting currency (U.S. dollar), the temporal method requires monetary assets and liabilities to be remeasured at the current (balance sheet date) exchange rate. Nonmonetary items carried at historical cost, such as inventory at cost, PP&E, and equity, are remeasured at the historical rate when acquired. Unlike the current rate method used for translation, the temporal method distinguishes between monetary and nonmonetary items for rate selection.'
WHERE id = 4851;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 3313: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = 'The correct answer is that general obligation bond proceeds are removed from other financing sources and reclassified as a long-term liability. Under GASB Statement No. 34, paragraph 77, the reconciliation between governmental fund statements and government-wide statements must explain all differences in reported amounts. Bond proceeds are reported as other financing sources in governmental funds under the current financial resources measurement focus, but at the government-wide level they create a long-term liability under the economic resources focus. Unlike revenues, borrowing does not increase net position; rather, it simultaneously creates an asset (cash) and an offsetting liability.'
WHERE id = 3313;

-- ID 3315: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = 'The correct answer is that these taxes are reported as deferred inflows of resources on the governmental fund statements. Under GASB Statement No. 33 and the modified accrual basis per GASB Statement No. 34, revenue must be both measurable and available (collected within the availability period, typically 60 days after year-end). Since the $300,000 is expected to be collected 90 days after year-end, it fails the availability criterion. Although the same amount would be recognized as revenue on the government-wide statements under full accrual accounting, the governmental fund statements must defer recognition until the availability threshold is met.'
WHERE id = 3315;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 4870: Intangible Assets Advanced
UPDATE questions SET
  explanation = 'The correct answer is that amortization begins upon completion of the research project. Under ASC 350-30-35-17A, in-process research and development (IPR&D) acquired in a business combination is initially recognized as an indefinite-lived intangible asset per ASC 805-20-55-37 and is not amortized during the development phase. Once the project is successfully completed, it is reclassified as a finite-lived intangible and amortized over its estimated useful life (8 years here). However, if the project were abandoned rather than completed, the entire carrying amount would be written off as an impairment loss under ASC 350-30-35-18.'
WHERE id = 4870;

-- ============================================================
-- INTERFUND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 1204: Interfund Transactions
UPDATE questions SET
  explanation = 'The correct answer is that the General Fund should reduce its expenditure when reimbursed. Under GASB Statement No. 34, paragraph 112, interfund reimbursements restore the fund that initially made the payment by reversing the expenditure, as if the transaction had been properly recorded in the correct fund originally. The Special Revenue Fund then records the expenditure. Unlike interfund transfers, which are permanent one-way flows reported separately on the financial statements, reimbursements are corrections that are not separately displayed because they simply reclassify the original transaction to the proper fund.'
WHERE id = 1204;

-- ID 3328: Interfund Transactions
UPDATE questions SET
  explanation = 'The correct answer is that an interfund loan requires repayment while a transfer does not. Under GASB Statement No. 34, paragraphs 112-113, interfund loans create a receivable in the lending fund and a payable in the borrowing fund, with an expectation of repayment. Transfers are permanent, one-way movements of resources with no repayment expected and are reported as other financing sources/uses. Although both involve moving resources between funds, the balance sheet impact differs fundamentally: loans create assets and liabilities, whereas transfers adjust fund balance directly.'
WHERE id = 3328;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (1 questions)
-- ============================================================

-- ID 3254: Internal-Use Software and Cloud Computing
UPDATE questions SET
  explanation = 'The correct answer is that capitalized CCA implementation costs are presented as a prepaid expense. Under ASU 2018-15 (codified in ASC 350-40-25-16A), implementation costs for a cloud computing arrangement (CCA) that is a service contract are capitalized and presented as a prepaid asset, classified as current or noncurrent based on the remaining hosting term. Unlike internal-use software developed in-house, which is presented as an intangible asset under ASC 350-40, a CCA service contract does not convey control of the software to the customer, so the costs cannot be recognized as an intangible asset.'
WHERE id = 3254;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (2 questions)
-- ============================================================

-- ID 3290: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = 'The correct answer is that the ABO excludes the effect of projected future salary increases. Under ASC 715-30-35-4 (formerly SFAS 87), the accumulated benefit obligation measures pension benefits earned to date using current salary levels, while the projected benefit obligation incorporates expected future compensation growth. The PBO of $14.8 million exceeds the ABO of $12.1 million by $2.7 million, representing the estimated impact of future salary increases on benefits. However, for flat-benefit pension plans that are not based on compensation levels, the ABO and PBO would be equal since there are no salary projections to incorporate.'
WHERE id = 3290;

-- ID 3291: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = 'The correct answer is that actual employer contributions to the plan are not a component of net periodic pension cost. Under ASC 715-30-35-4, net periodic pension cost includes up to six components: service cost, interest cost, expected return on plan assets (a reduction), amortization of prior service cost, amortization of net actuarial gains or losses, and amortization of any transition obligation. Contributions are cash flows that fund the plan but do not directly affect pension expense. While higher contributions increase plan assets, the expense calculation uses expected return on plan assets rather than actual contributions.'
WHERE id = 3291;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (7 questions)
-- ============================================================

-- ID 2982: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'The correct answer is that Structure A has DFL of 1.33 and Structure B has DFL of 4.0. Per financial leverage analysis principles, DFL = EBIT / (EBIT - Interest). Structure A: $800,000 / $600,000 = 1.33; Structure B: $800,000 / $200,000 = 4.0. Interest coverage (EBIT / Interest) is 4.0x for Structure A and 1.33x for Structure B. These metrics are mathematically reciprocal under ASC 470 debt analysis frameworks. As DFL approaches infinity, coverage approaches 1.0x, meaning the company is one earnings decline away from inability to service debt, unlike lower-leverage structures where a substantial buffer exists.'
WHERE id = 2982;

-- ID 2983: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'The correct answer is a DTL of 4.0, meaning a 10% sales change produces a 40% EPS change. Under financial leverage analysis consistent with ASC 260 (earnings per share), the degree of total leverage equals DOL multiplied by DFL: 2.5 x 1.6 = 4.0. Total leverage combines operating leverage from fixed operating costs with financial leverage from fixed financing costs. While operating leverage alone (DOL of 2.5) would amplify a 10% sales change to a 25% EBIT change, the addition of financial leverage further magnifies the impact on EPS to 40%.'
WHERE id = 2983;

-- ID 2984: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'The correct answer is $960,000 in projected accounts receivable. Under the percent-of-sales forecasting method consistent with ASC 310-10 receivables presentation, projected AR = forecasted revenue x historical AR-to-sales ratio = $8,000,000 x 12% = $960,000. This assumes the historical relationship between AR and revenue persists when credit terms, customer mix, and collection efficiency remain stable. Incorrectly applying the 12% ratio to Year 1 revenue of $6,500,000 would yield only $780,000, whereas the projection must use the forecasted revenue figure to properly estimate future receivables.'
WHERE id = 2984;

-- ID 2985: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'The correct answer is the breakeven point, where total revenue equals total costs and profit is zero. Under CVP analysis consistent with ASC 420-10 cost classification principles, the breakeven point is calculated as fixed costs divided by the contribution margin ratio. On a CVP graph, this is the intersection of the total revenue and total cost lines. Below this point the company incurs operating losses, whereas above it the company earns profits. Unlike the margin of safety, which measures how far current sales exceed breakeven, the breakeven point itself represents the minimum revenue needed to avoid losses.'
WHERE id = 2985;

-- ID 2986: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'The correct answer is $5,600,000 in required revenue. Under CVP analysis principles, the after-tax profit target must first be grossed up to a pre-tax amount per ASC 740 income tax concepts: $300,000 / (1 - 0.25) = $400,000 pre-tax profit needed. Required revenue = (fixed costs + target pre-tax profit) / CM ratio = ($1,000,000 + $400,000) / 0.25 = $5,600,000. A common error is using the after-tax profit directly without grossing up for taxes, which would incorrectly yield $5,200,000, whereas the tax rate must be incorporated before applying the CVP formula.'
WHERE id = 2986;

-- ID 2988: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'The correct answer is approximately 4.33 for the degree of operating leverage. Under ASC 420-10 cost behavior analysis, DOL at a given sales level can be calculated as sales units divided by the margin of safety in units: 52,000 / (52,000 - 40,000) = 52,000 / 12,000 = 4.33. This means a 1% change in sales produces approximately a 4.33% change in operating income. The closer a company operates to its breakeven point, the higher its operating leverage, whereas a company with a large margin of safety (far above breakeven) would have a DOL closer to 1.0.'
WHERE id = 2988;

-- ID 2989: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = 'The correct answer is that regression analysis models the statistical relationship between dependent and independent variables to predict future outcomes. Under quantitative forecasting methods referenced in AICPA professional standards, regression estimates the mathematical relationship between a dependent variable (utility costs) and one or more independent variables (production volume). The resulting equation enables forecasting based on expected values of predictive variables. Unlike time-series methods that rely solely on historical patterns of the variable itself, regression analysis incorporates causal relationships that explain why costs change with activity levels.'
WHERE id = 2989;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (8 questions)
-- ============================================================

-- ID 3084: Risk Management and Economics
UPDATE questions SET
  explanation = 'The correct answer is that the GDP deflator measures price changes across all domestically produced goods and services. Per FASB ASC 255-10 (changing prices framework), understanding price-level changes is essential for financial analysis. The GDP deflator covers the entire economy''s output and its composition changes as production patterns shift, making it a Paasche-type index. The CPI, in contrast, tracks a fixed basket of consumer goods and services weighted by household spending patterns. While the CPI is more relevant for measuring consumer purchasing power, the GDP deflator provides a broader inflation measure because it is not limited to consumer purchases alone.'
WHERE id = 3084;

-- ID 3086: Risk Management and Economics
UPDATE questions SET
  explanation = 'The correct answer is that stagflation occurs when high inflation coincides with stagnant economic growth and rising unemployment. Per ASC 255-10 changing prices disclosure concepts, understanding inflation dynamics is critical for financial reporting in volatile price environments. Stagflation results from adverse supply shocks that simultaneously raise prices and reduce output, as exemplified by the 1970s oil crisis. Unlike demand-driven inflation where output rises alongside prices, supply-shock-driven stagflation forces policymakers to choose between fighting inflation through monetary tightening and supporting employment through monetary easing.'
WHERE id = 3086;

-- ID 3087: Risk Management and Economics
UPDATE questions SET
  explanation = 'The correct answer is that the nominal interest rate approximately equals the real interest rate plus expected inflation. Under ASC 820-10-55-5 fair value measurement and discount rate concepts, the Fisher Effect establishes that nominal rates compensate investors for both the real return on capital and expected purchasing power erosion. The exact relationship is (1 + nominal) = (1 + real)(1 + expected inflation), though the linear approximation is commonly used. Unlike the real rate, which reflects only the time value of money, the nominal rate incorporates an inflation premium that adjusts as expectations change.'
WHERE id = 3087;

-- ID 3088: Risk Management and Economics
UPDATE questions SET
  explanation = 'The correct answer is that VaR fails to capture tail risk because it reports only a single loss threshold without describing loss severity beyond that point. Under ASC 815-10-50-4A derivative risk disclosures, entities must provide quantitative information about market risk exposures. VaR at the 95% level states there is a 5% chance of losing more than $5 million, but two portfolios with identical VaR can have vastly different tail risk profiles. Conditional VaR (CVaR) addresses this by computing the average loss conditional on exceeding VaR. Unlike VaR, which ignores the magnitude of extreme losses, CVaR captures full tail-risk severity.'
WHERE id = 3088;

-- ID 3089: Risk Management and Economics
UPDATE questions SET
  explanation = 'The correct answer is that average duration of unemployment is a lagging economic indicator. Under ASC 280-10-50 segment reporting and economic environment analysis, understanding the business cycle is essential for financial planning. Lagging indicators confirm trends after they have occurred; unemployment duration continues rising even after a recession ends because rehiring takes time. Other lagging indicators include the average prime rate, commercial and industrial loans outstanding, and the CPI for services. While building permits and stock market returns are leading indicators that anticipate turning points, unemployment duration reflects conditions that have already passed.'
WHERE id = 3089;

-- ID 3090: Risk Management and Economics
UPDATE questions SET
  explanation = 'The correct answer is that increasing a company''s own leverage does NOT mitigate credit risk; it increases financial risk instead. Under risk management frameworks consistent with ASC 815 and enterprise risk management principles, credit risk mitigation strategies include requiring collateral (providing security against default), purchasing credit default swaps (transferring default risk to a third party), and diversifying the credit portfolio (reducing concentration risk). However, taking on additional debt increases the company''s own default probability, which is the opposite of mitigating exposure to customer defaults.'
WHERE id = 3090;

-- ID 3091: Risk Management and Economics
UPDATE questions SET
  explanation = 'The correct answer is that an interest rate cap sets a maximum (ceiling) rate on variable-rate debt, with the cap provider compensating the borrower if rates exceed the cap. Under ASC 815-10-15 derivative instrument definitions, an interest rate cap is a series of call options (caplets) on an interest rate index. The borrower retains the benefit of rate declines while capping upside exposure. Unlike an interest rate swap that exchanges variable for fixed payments (eliminating both upside and downside), a cap preserves the borrower''s ability to benefit from falling rates in exchange for paying an upfront premium.'
WHERE id = 3091;

-- ID 3092: Risk Management and Economics
UPDATE questions SET
  explanation = 'The correct answer is that the relationship between interest rates and bond prices is inverse. Under ASC 320 and fundamental fixed-income valuation principles, a bond''s fair value equals the present value of its future cash flows discounted at the current market yield. When market rates rise, the discount rate increases, reducing the present value of fixed coupon payments and thus the bond''s price. Although bonds with longer durations exhibit greater price sensitivity to rate changes, the inverse relationship applies to all fixed-rate bonds regardless of maturity or coupon rate.'
WHERE id = 3092;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 745: State and Local Government Reporting
UPDATE questions SET
  explanation = 'The correct answer is depreciation expense. Under GASB Statement No. 34, paragraph 18, government-wide financial statements use full accrual accounting and the economic resources measurement focus, requiring recognition of capital assets and their depreciation over useful lives. Governmental fund statements use modified accrual and the current financial resources focus, so capital asset purchases are recorded as expenditures in the period of acquisition rather than capitalized and depreciated. While the reconciliation between fund and government-wide statements adjusts for this difference, depreciation itself appears only on the government-wide statement of activities.'
WHERE id = 745;

-- ID 3220: State and Local Government Reporting
UPDATE questions SET
  explanation = 'The correct answer is that revenues are classified as program revenues and general revenues. Under GASB Statement No. 34, paragraph 48, the statement of activities presents revenues in a net cost format. Program revenues (charges for services, operating grants, and capital grants) are directly linked to specific government functions and are reported alongside the related expenses. General revenues (taxes, unrestricted grants, investment earnings) are not tied to specific programs and are reported separately. Unlike the governmental fund statements that classify revenues by source, the statement of activities uses this program/general distinction to show each function''s net cost to taxpayers.'
WHERE id = 3220;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 3132: Stock Compensation and Business Combinations
UPDATE questions SET
  explanation = 'The correct answer is $20,000 in Year 1 compensation expense. Under ASC 718-10-35-2, total compensation cost equals the grant-date fair value of the award: 10,000 options x $8 = $80,000. This cost is recognized on a straight-line basis over the requisite service period (the 4-year vesting period): $80,000 / 4 = $20,000 per year. The fair value is measured once at the grant date and is not subsequently remeasured for equity-classified awards. Unlike liability-classified awards that are remeasured at each reporting date, equity awards under ASC 718 lock in the grant-date fair value for the entire recognition period.'
WHERE id = 3132;

COMMIT;
