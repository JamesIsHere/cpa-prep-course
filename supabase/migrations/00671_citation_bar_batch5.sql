-- Migration: Citation backfill — BAR batch 5 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Income Taxes Advanced, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 705: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$Under ASC 810-10-45, a constructive gain or loss on intercompany bonds arises from the difference between the carrying amount of the debt on the issuer''s books and the price paid by the affiliate to acquire it on the open market. Because the subsidiary purchased the bonds at 97 (a discount), the consolidated entity recognizes a constructive gain equal to the excess of the issuer''s carrying value over the acquisition price. However, simply retiring the bonds at par would produce no gain or loss, unlike this open-market purchase where the price diverges from carrying value.$EXPL$
WHERE id = 705;

-- ID 3161: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$Under ASC 810-10-45-1, consolidated financial statements present the parent and its subsidiaries as a single economic entity. Intercompany sales must be eliminated because they represent internal transfers, not transactions with outside parties, and failing to eliminate them would overstate consolidated revenue and cost of goods sold. While recording these transactions in the individual entities'' books is appropriate for standalone reporting, including them in consolidation would double-count activity that occurred entirely within the economic entity.$EXPL$
WHERE id = 3161;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (1 questions)
-- ============================================================

-- ID 3282: Advanced Lease Transactions
UPDATE questions SET
  explanation = $EXPL$Under ASC 842-20-30-5, lease incentives received by the lessee — such as tenant improvement allowances — reduce the measurement of the right-of-use (ROU) asset rather than being recognized as revenue or deferred revenue. This treatment reflects that the incentive effectively lowers the lessee''s cost of the lease. Unlike a capital contribution that would increase equity, a lease incentive is an integral part of the lease consideration that reduces the ROU asset and results in lower amortization expense over the lease term.$EXPL$
WHERE id = 3282;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (1 questions)
-- ============================================================

-- ID 3105: Advanced Revenue and Intangibles
UPDATE questions SET
  explanation = $EXPL$Under ASC 606-10-55-36 through 55-40, an entity that does not obtain control of a good or service before it is transferred to the customer is an agent and recognizes revenue at the net amount — the commission or fee earned. QuickShip never takes title, does not set prices, and bears no inventory risk, all indicating agent status. In contrast, a principal who controls the good before transfer would recognize the gross transaction amount as revenue.$EXPL$
WHERE id = 3105;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 3190: Derivatives and Hedging
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-10-15-83, derivative instruments include both exchange-traded futures and over-the-counter forward contracts. Futures contracts are standardized, traded on organized exchanges, and subject to daily mark-to-market settlement through a clearinghouse, which significantly reduces counterparty risk. In contrast, forward contracts are customized bilateral agreements negotiated privately without daily settlement, exposing each party to the other''s credit risk over the contract''s life.$EXPL$
WHERE id = 3190;

-- ID 3191: Derivatives and Hedging
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-10-15-83, a call option is a derivative that gives the holder the right, but not the obligation, to purchase the underlying asset at the strike price before or at expiration. The buyer pays a premium for this right, which represents the maximum potential loss. Unlike a put option, which grants the right to sell the underlying asset, a call option profits when the underlying asset''s price rises above the strike price plus the premium paid.$EXPL$
WHERE id = 3191;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (9 questions)
-- ============================================================

-- ID 2947: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-55 fair value measurement guidance and the DuPont framework, ROE decomposes into profit margin, asset turnover, and the equity multiplier (total assets / equity). Company B carries more financial risk because its high equity multiplier indicates greater reliance on debt financing, increasing fixed interest obligations and default risk. Although both companies achieve a 20% ROE, Company A''s high-margin, low-leverage approach is more sustainable, whereas Company B''s leverage-dependent model is vulnerable to earnings volatility and rising interest rates.$EXPL$
WHERE id = 2947;

-- ID 2948: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Per financial analysis principles consistent with ASC 420-10 cost structure disclosures, operating leverage is high when fixed costs represent a large proportion of total costs. High fixed costs mean that small changes in sales volume produce amplified swings in operating income because the fixed cost base does not adjust with volume. Unlike financial leverage, which relates to the use of debt in the capital structure, operating leverage is driven entirely by the firm''s cost structure.$EXPL$
WHERE id = 2948;

-- ID 2949: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under receivables analysis consistent with ASC 310-10, days sales outstanding (DSO) measures the average number of days to collect accounts receivable. An increase from 35 to 52 days with flat revenue indicates the company is taking longer to collect, suggesting deteriorating customer credit quality, relaxed credit terms, or lax collection policies. In contrast, improved collection efficiency would decrease DSO, and a shift to cash sales would also reduce this metric rather than increase it.$EXPL$
WHERE id = 2949;

-- ID 2950: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 205-10-45 and SEC Regulation S-X Rule 5-02, common-size balance sheet analysis expresses each line item as a percentage of total assets. Inventory at 25% of $10,000,000 total assets equals $2,500,000. Common-size statements facilitate comparisons across companies of different sizes by normalizing all items to a percentage base. Unlike ratio analysis, which compares two specific items, common-size analysis presents every account as a proportion of a single base figure.$EXPL$
WHERE id = 2950;

-- ID 2951: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 360-10-45 on asset disposals and the DuPont framework, ROA equals profit margin multiplied by asset turnover. To improve ROA without changing profit margin, management must increase asset turnover — revenue divided by total assets. Disposing of underperforming assets reduces the asset base while maintaining revenue, thereby increasing turnover. While reducing expenses or increasing prices would also improve ROA, those strategies operate through the profit margin component, which the question holds constant.$EXPL$
WHERE id = 2951;

-- ID 2952: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 942-505 on banking capital adequacy and the Basel III framework, the minimum Tier 1 capital ratio is 6%, but including the 2.5% capital conservation buffer raises the effective threshold to 8.5%. The bank''s 8.5% ratio meets the minimum requirement but sits exactly at the buffer boundary, leaving no cushion above the combined threshold. Unlike a bank with a ratio well above 8.5%, this bank faces restrictions on dividend distributions and discretionary bonus payments if its ratio falls even slightly.$EXPL$
WHERE id = 2952;

-- ID 2953: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 505-10-50 equity disclosure guidance and the sustainable growth rate model, the growth rate equals ROE multiplied by the retention ratio. The retention ratio is 1 minus the dividend payout ratio: 1 − 0.40 = 0.60. Therefore, the sustainable growth rate is 18% × 0.60 = 10.8%, representing the maximum rate the company can grow using only internally generated funds while maintaining its current capital structure. Unlike external financing-dependent growth, this rate requires no additional debt or equity issuance.$EXPL$
WHERE id = 2953;

-- ID 2954: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 280-10-50 segment reporting and the DuPont framework, ROA equals profit margin multiplied by asset turnover. A company with higher asset turnover but lower profit margin than peers reflects a high-volume, low-margin business strategy — common in discount retailing. This represents a deliberate strategic positioning rather than underperformance. However, concluding that ROA must be lower would be incorrect because the magnitude of each component determines the outcome; the higher turnover may fully or partially offset the lower margin.$EXPL$
WHERE id = 2954;

-- ID 2955: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 230-10-45, free cash flow to the firm (FCFF) equals operating cash flow minus capital expenditures adjusted for taxes. When net income is positive but FCFF is negative, the gap typically results from heavy capital investment exceeding depreciation and working capital absorption from growth. For Pinnacle, the manufacturing expansion and new product launches explain the large capex outlays. While this divergence does not automatically signal distress — growth-stage companies routinely report this pattern — analysts must assess whether persistent negative FCFF despite positive accrual earnings may require external financing.$EXPL$
WHERE id = 2955;

-- ============================================================
-- FINANCIAL VALUATION METHODS (9 questions)
-- ============================================================

-- ID 3058: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35, the weighted average cost of capital (WACC) used in a DCF analysis should reflect the marginal cost of new capital at the target capital structure, not historical or embedded costs. WACC represents the blended return required by all capital providers — debt and equity — weighted by their market-value proportions. Unlike using the company''s historical borrowing rate, the marginal cost approach captures current market conditions and the risk profile of the specific investment being valued.$EXPL$
WHERE id = 3058;

-- ID 3059: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under the income approach consistent with ASC 820-10-35, the capitalization of earnings formula is: Enterprise Value = Normalized Earnings / Capitalization Rate. At 16%: $1.5M / 0.16 = $9.375M. At 12%: $1.5M / 0.12 = $12.5M — a 33% increase. The capitalization rate represents the investor''s required return; a lower rate means investors perceive less risk and accept lower returns per dollar of earnings, driving up the price. Unlike the claim that value decreases with a lower rate, value and the capitalization rate have an inverse mathematical relationship.$EXPL$
WHERE id = 3059;

-- ID 3060: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35-47 through 35-55, Level 2 inputs include quoted prices for similar assets in active markets, quoted prices for identical assets in inactive markets, and other observable market data such as interest rates, yield curves, and credit spreads. For an infrequently traded corporate bond, observable yield data from similar bonds qualifies as Level 2. In contrast, a quoted price for the exact same security in an active market is Level 1, whereas unobservable management assumptions constitute Level 3 inputs.$EXPL$
WHERE id = 3060;

-- ID 3061: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under DCF valuation principles consistent with ASC 820-10-55, free cash flow to the firm equals NOPAT plus depreciation and amortization minus capital expenditures minus the change in net working capital. An increase in net working capital — more cash tied up in inventory and receivables — is a use of cash that reduces free cash flow. Unlike depreciation, which is a non-cash charge added back to arrive at FCF, a working capital increase represents actual cash consumption that lowers the value available to capital providers.$EXPL$
WHERE id = 3061;

-- ID 3062: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 valuation principles, a sum-of-the-parts (SOTP) valuation is most appropriate when a diversified company operates segments with distinctly different risk profiles, growth rates, and comparable peer groups. Each segment is valued separately using the method and multiples best suited to its industry, then summed for total enterprise value. Unlike applying a single blended multiple to consolidated earnings — which obscures segment-level differences — SOTP captures the unique economics of each business unit.$EXPL$
WHERE id = 3062;

-- ID 3063: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under DCF valuation methodology consistent with ASC 820-10-55, terminal value equals FCF(1+g) / (WACC − g). Increasing the terminal growth rate from 3% to 4% changes the denominator from 7% to 6%, increasing terminal value by approximately 17%. Because terminal value often represents 60–80% of total enterprise value, even a 1 percentage-point change in the long-term growth assumption has an outsized impact on equity value. Unlike changes in near-term cash flows, terminal growth rate adjustments compound indefinitely, making this input highly sensitive.$EXPL$
WHERE id = 3063;

-- ID 3065: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under market approach valuation principles consistent with ASC 820-10-35, the price-to-sales (P/S) ratio is particularly useful for companies with negative or highly volatile earnings where price-to-earnings (P/E) multiples cannot be meaningfully calculated. Revenue is typically more stable than earnings and is always positive for operating companies, making P/S applicable to early-stage or unprofitable firms like SaaS companies. However, unlike P/E, the P/S ratio ignores profitability differences between companies, so it should be used alongside other metrics.$EXPL$
WHERE id = 3065;

-- ID 3066: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 805-10-25, business combinations are measured at fair value, and control premiums in acquisitions typically range from 20–40% above the pre-announcement stock price based on historical M&A transaction data. The premium compensates target shareholders for relinquishing their shares and reflects the value of control — the ability to direct strategy, set dividends, and realize synergies. Unlike a minority discount, which reduces value for lack of control, the control premium represents the incremental price a buyer pays to acquire decision-making authority.$EXPL$
WHERE id = 3066;

-- ID 3068: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under market approach analysis consistent with ASC 820-10-35, EV/EBITDA multiple compression — a declining multiple despite stable EBITDA — indicates the market assigns a lower valuation to the company''s earnings stream. This typically reflects deteriorating growth expectations, increasing perceived risk, or negative industry sentiment driving down enterprise value. Unlike EBITDA contraction, where the earnings themselves decline, multiple compression means investors simply demand more earnings per dollar of value, reflecting a repricing of risk rather than an operating deterioration.$EXPL$
WHERE id = 3068;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4852: Foreign Currency Transactions
UPDATE questions SET
  explanation = $EXPL$Under ASC 830-10-45-17, when a subsidiary''s functional currency is its local currency, the current rate method requires that all assets and liabilities — including nonmonetary items like equipment — be translated at the current exchange rate at the balance sheet date. Equipment = £2,000,000 × $1.25 = $2,500,000. Unlike the temporal method, which translates nonmonetary assets at historical rates, the current rate method uses the balance sheet date rate for all assets and liabilities, with only equity accounts translated at historical rates.$EXPL$
WHERE id = 4852;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 3316: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraphs 77–79, revenue deferred in governmental funds because it is unavailable (not collected within the availability period) must be recognized as revenue on the government-wide statements under full accrual accounting. The reconciliation converts these deferred inflows to revenue, increasing net position. Unlike the modified accrual basis used for governmental funds, which requires both measurability and availability, the government-wide statements recognize revenue when earned regardless of collection timing.$EXPL$
WHERE id = 3316;

-- ID 3317: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraph 62, internal service funds primarily serve governmental activities and their net position is typically consolidated with governmental activities in the government-wide reconciliation. This treatment reflects that the services provided — such as motor pool, printing, or IT — support governmental functions. Unlike enterprise funds, which serve external customers and are reported as business-type activities, internal service funds are reclassified to governmental activities because their operations are integral to governmental programs.$EXPL$
WHERE id = 3317;

-- ============================================================
-- INCOME TAXES ADVANCED (1 questions)
-- ============================================================

-- ID 4893: Income Taxes Advanced
UPDATE questions SET
  explanation = $EXPL$Under ASC 740-10-30-18 through 30-23, positive evidence supporting the realizability of deferred tax assets includes existing contracts or firm sales backlog that will produce sufficient future taxable income, appreciated asset values exceeding tax basis, and a strong earnings history excluding the loss that created the DTA. These factors indicate that future taxable income will be sufficient to realize the deferred tax benefit. In contrast, recent operating losses, expiring carryforward periods, and unsettled adverse circumstances represent negative evidence that would support recording a valuation allowance.$EXPL$
WHERE id = 4893;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 4871: Intangible Assets Advanced
UPDATE questions SET
  explanation = $EXPL$Under ASC 350-20-35-3 through 35-19, the one-step goodwill impairment test compares a reporting unit''s fair value to its carrying amount. If fair value is less than carrying amount, the impairment loss equals the difference, limited to the carrying amount of goodwill. Here: $15,000,000 − $12,500,000 = $2,500,000, which is less than the $4,000,000 goodwill balance, so the full $2,500,000 is recognized as impairment. Unlike the former two-step test, the current standard does not require a hypothetical purchase price allocation to measure the loss.$EXPL$
WHERE id = 4871;

-- ============================================================
-- INTERFUND TRANSACTIONS (1 questions)
-- ============================================================

-- ID 3331: Interfund Transactions
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraph 112, interfund transfers between governmental funds are eliminated in the government-wide statement of activities because governmental activities are presented as a single column. These transfers are internal movements of resources that do not represent transactions with external parties. However, unlike transfers within governmental activities, transfers between governmental and business-type activities are reported separately on the government-wide statements because they cross reporting categories.$EXPL$
WHERE id = 3331;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (1 questions)
-- ============================================================

-- ID 3256: Internal-Use Software and Cloud Computing
UPDATE questions SET
  explanation = $EXPL$Under ASC 350-40-25-7, costs of upgrades and enhancements to internal-use software that result in additional functionality should be capitalized. The critical test is whether the modification enables the software to perform tasks it could not previously perform. Adding a real-time analytics module provides significant new reporting capabilities, meeting this threshold. Unlike routine maintenance, bug fixes, or minor modifications that do not add new functionality — which are expensed as incurred under ASC 350-40-35-1 — enhancements that create new capabilities qualify for capitalization.$EXPL$
WHERE id = 3256;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (2 questions)
-- ============================================================

-- ID 3292: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = $EXPL$Under ASC 715-30-35-4, service cost represents the actuarial present value of benefits attributed by the plan''s benefit formula to services rendered by employees during the current period. It is the only component of net periodic pension cost required to be presented as an operating expense on the income statement per ASC 715-30-35-41. Unlike interest cost, which reflects the passage of time on the existing obligation, service cost measures the incremental pension obligation earned through current-year employee service.$EXPL$
WHERE id = 3292;

-- ID 3293: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = $EXPL$Under ASC 715-30-35-7, interest cost is computed as the beginning projected benefit obligation (PBO) multiplied by the discount rate and represents the increase in the PBO due to the passage of time — one year closer to benefit payment. The discount rate should reflect rates at which pension obligations could be effectively settled, typically high-quality corporate bond rates. Unlike service cost, which measures new benefits earned in the current period, interest cost accrues on the entire outstanding obligation regardless of whether employees continue working.$EXPL$
WHERE id = 3293;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (7 questions)
-- ============================================================

-- ID 2990: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per AT-C Section 305 on prospective financial information, a rolling forecast continuously extends the planning horizon by adding a new period as each current period ends, always maintaining a forward-looking view (e.g., 12 months ahead). This approach incorporates the most current information into projections, keeping the forecast relevant. Unlike a traditional static annual budget that becomes progressively stale as the year advances, a rolling forecast adapts to changing conditions and prevents the planning horizon from shrinking.$EXPL$
WHERE id = 2990;

-- ID 2991: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per ASC 420-10 cost structure analysis and CVP principles, if raw materials are 35% of revenue and costs increase by 15%, the new raw materials percentage is 35% × 1.15 = 40.25% of revenue — a 5.25 percentage point increase. Subtracting from the 18% operating margin yields approximately 12.75%, assuming all other costs and revenue remain constant. Unlike variable costs that scale with volume, this scenario models a rate increase that compresses margins directly, which is why sensitivity analysis is critical for cost-driven businesses.$EXPL$
WHERE id = 2991;

-- ID 2992: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per ASC 505-10-50 equity and retention analysis, the EFN model calculates: EFN = (A/S × ΔS) − (L/S × ΔS) − (PM × S₁ × retention). With retention at 70% (payout 30%): (0.60 × $2,000,000) − (0.20 × $2,000,000) − (0.08 × $10,000,000 × 0.70) = $1,200,000 − $400,000 − $560,000 = $240,000. Increasing retention from 50% to 70% boosts internally generated funds by $160,000, reducing EFN from $400,000 to $240,000. Unlike choice C, which equals only the change in EFN, the correct answer is the new EFN level of $240,000.$EXPL$
WHERE id = 2992;

-- ID 2993: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per ASC 420-10 cost analysis and CVP principles, breakeven revenue equals fixed costs divided by the contribution margin (CM) ratio. If fixed costs decrease by 10% while the CM ratio remains constant, breakeven revenue decreases proportionally by 10% because it is a linear function of fixed costs when the CM ratio is held constant. Unlike a change in the CM ratio — which would alter the slope of the profit equation — a fixed cost reduction shifts the breakeven point downward by the same percentage as the cost decrease.$EXPL$
WHERE id = 2993;

-- ID 2994: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per AT-C Section 305 on prospective financial information, qualitative forecasting methods — such as the Delphi technique (structured expert opinion), market surveys, and executive judgment — are most appropriate when historical data is limited or nonexistent. Launching an entirely new product category with no prior sales history makes quantitative methods impractical. Unlike regression analysis or moving averages, which require sufficient historical data to identify statistical patterns, qualitative approaches leverage expert knowledge and market intelligence to form reasonable projections.$EXPL$
WHERE id = 2994;

-- ID 2995: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per ASC 820-10-55 fair value sensitivity analysis methodology, a tornado diagram ranks input variables by their impact on the output metric (here, NPV). Revenue growth''s $10M range ($2M to $12M) dominates — it can make or break the project, so management should prioritize revenue forecasting accuracy and scenario planning. Raw material costs'' $4M range justifies hedging strategies such as forward contracts. The discount rate''s narrow $1.3M range suggests moderate changes in cost of capital are tolerable. Unlike choice A, which inverts the interpretation, the widest bar represents the most impactful — not least impactful — variable.$EXPL$
WHERE id = 2995;

-- ID 2996: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Per ASC 420-10 cost structure analysis, the indifference point is where total costs are equal under both alternatives. Setting 15Q + FC = 10Q + FC + 500,000 yields 5Q = 500,000, so Q = 100,000 units. Above this volume, the automated option is cheaper because the $5 per-unit variable cost savings outpace the additional $500,000 in fixed costs. Unlike breakeven analysis, which determines zero-profit volume, indifference analysis identifies the volume at which two cost structures produce equal total costs.$EXPL$
WHERE id = 2996;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (7 questions)
-- ============================================================

-- ID 3093: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per financial risk management principles and ASC 815-10 derivatives guidance, duration measures the sensitivity of a bond''s price to changes in interest rates. Modified duration approximates the percentage price change for a 1% change in yield — a duration of 5 means a 1% rate increase causes approximately a 5% price decline. Unlike maturity, which measures only the time until final principal repayment, duration accounts for the timing and magnitude of all cash flows (coupons and principal), providing a more complete risk metric.$EXPL$
WHERE id = 3093;

-- ID 3094: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 830-10 on foreign currency matters, a 10% euro depreciation reduces the USD value of euro-denominated revenue proportionally. Since 60% of revenue is invoiced in euros, the impact on total USD revenue is 60% × 10% = approximately a 6% decrease, all else equal. The remaining 40% denominated in USD is unaffected. Unlike a company that invoices entirely in its home currency, an exporter with significant foreign-currency revenues faces direct translation exposure that compresses margins when the foreign currency weakens.$EXPL$
WHERE id = 3094;

-- ID 3095: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per ASC 815-10-15 on risk categories and the Basel Committee''s operational risk framework, operational risk encompasses losses from inadequate or failed internal processes, people, systems, or external events — including system failures, fraud, legal risk, and natural disasters. Changes in market interest rates constitute market risk, not operational risk. Unlike operational risk, which arises from internal breakdowns and external disruptions to business processes, market risk stems from movements in market prices, rates, and indices that affect the value of financial instruments.$EXPL$
WHERE id = 3095;

-- ID 3097: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per ASC 820-10-35 fair value and macroeconomic analysis, the Phillips Curve illustrates the inverse relationship between inflation and unemployment: lower unemployment tends to coincide with higher inflation, and vice versa. This trade-off helps policymakers understand the potential inflationary consequences of pursuing full employment through expansionary monetary or fiscal policy. Unlike the IS-LM model, which focuses on the interaction between interest rates and output in goods and money markets, the Phillips Curve specifically addresses the inflation-unemployment trade-off.$EXPL$
WHERE id = 3097;

-- ID 3098: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per enterprise risk management principles consistent with COSO ERM guidance, a company must hedge enough exposure to bring residual risk within its stated risk appetite. The unhedged exposure of $25,000,000 exceeds the $10,000,000 risk appetite by $15,000,000, requiring hedging of at least $15,000,000 to bring the residual variation within acceptable limits. Unlike full hedging, which would eliminate all commodity price variation, the risk appetite approach allows the company to retain exposure up to its tolerance threshold while hedging only the excess.$EXPL$
WHERE id = 3098;

-- ID 3099: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per ASC 320-10-35 on investment securities and monetary policy principles, quantitative easing (QE) involves the central bank purchasing government bonds and other securities to inject money into the economy, increasing the money supply and lowering long-term interest rates. QE is an unconventional monetary policy tool deployed when short-term interest rates are already at or near the zero lower bound, making conventional rate cuts ineffective. Unlike open market operations that target short-term rates, QE directly targets long-term yields by purchasing longer-duration securities to flatten the yield curve.$EXPL$
WHERE id = 3099;

-- ID 3418: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Per international finance theory and ASC 830-10 on foreign currency, interest rate parity holds that the forward exchange rate premium or discount between two currencies equals the interest rate differential between the two countries. With U.S. rates at 5% and U.K. rates at 3%, the dollar should trade at a forward discount against the pound, offsetting the higher U.S. rate. Unlike purchasing power parity, which links exchange rates to relative price levels, interest rate parity specifically connects forward rates to nominal interest rate differentials to prevent risk-free arbitrage.$EXPL$
WHERE id = 3418;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 3221: State and Local Government Reporting
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraph 48, program revenues are directly associated with a specific function or program and include charges for services, operating grants, and capital grants. Swimming pool fees are charged by the parks and recreation function, qualifying as program revenue (charges for services). In contrast, property taxes, sales taxes, and unrestricted state aid are classified as general revenues because they are not tied to a specific program and instead support governmental activities broadly.$EXPL$
WHERE id = 3221;

-- ID 3222: State and Local Government Reporting
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraphs 106–109, fiduciary funds — including pension trust, investment trust, private-purpose trust, and custodial funds — hold resources in a trustee or custodial capacity for external beneficiaries. These funds are excluded from the government-wide financial statements because the resources cannot be used for the government''s own programs or activities. Unlike governmental and proprietary funds, which report resources available for government operations, fiduciary funds are presented in separate fiduciary fund financial statements.$EXPL$
WHERE id = 3222;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 3133: Stock Compensation and Business Combinations
UPDATE questions SET
  explanation = $EXPL$Under ASC 718-10-30, restricted stock units (RSUs) represent a promise to deliver shares upon vesting with a grant-date fair value typically equal to the stock price. RSUs have value regardless of stock price movement because the employee receives the full share value at vesting. Unlike stock options, which have an exercise price and may become worthless if the stock price falls below that price (underwater), RSUs always retain intrinsic value as long as the underlying stock has any market value.$EXPL$
WHERE id = 3133;

COMMIT;
