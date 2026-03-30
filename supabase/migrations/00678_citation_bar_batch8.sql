-- Migration: Citation backfill — BAR batch 8 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for BAR section
-- Affected topics: Advanced Consolidations, Advanced Revenue and Intangibles, Business Combinations, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 3168: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$Under ASC 810-10-45, a parent and its subsidiaries are presented as a single economic entity in consolidated financial statements. Intercompany dividends are eliminated because they represent internal cash transfers, not earnings from external parties. While including the dividend on the consolidated cash flow statement might seem logical, ASC 230-10-50 requires that only dividends paid to parties outside the consolidated group appear, since internal transfers would overstate actual cash generation.$EXPL$
WHERE id = 3168;

-- ID 3169: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$Under ASC 810-10-45-1, intercompany profits on asset transfers must be eliminated until realized through transactions with outside parties. The $60,000 gain ($260,000 minus $200,000) is eliminated in Year 1, and the subsidiary''s excess depreciation of $12,000 per year ($60,000 divided by 5 years) is reversed to align with the consolidated cost basis. Unlike simply eliminating the gain with no further adjustment, the annual depreciation correction effectively recognizes the deferred profit over the asset''s remaining life.$EXPL$
WHERE id = 3169;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (1 questions)
-- ============================================================

-- ID 3110: Advanced Revenue and Intangibles
UPDATE questions SET
  explanation = $EXPL$Under ASC 350-20-35-3, goodwill impairment is measured as the excess of a reporting unit''s carrying amount over its fair value, capped at the carrying amount of goodwill. Here, the carrying amount of $15 million exceeds fair value of $12.5 million by $2.5 million, which is less than the $4 million goodwill balance, so the impairment loss is $2.5 million. Unlike writing down the full goodwill balance, the simplified test limits the loss to the actual shortfall between carrying amount and fair value.$EXPL$
WHERE id = 3110;

-- ============================================================
-- BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 4837: Business Combinations
UPDATE questions SET
  explanation = $EXPL$Under ASC 805-20-30-1, when the acquirer elects the proportionate share method, noncontrolling interest is measured at the NCI''s proportionate share of the acquiree''s identifiable net assets. NCI equals 25% multiplied by $10,000,000, or $2,500,000. Goodwill under this method is $9,000,000 minus 75% of $10,000,000, equaling $1,500,000. Unlike the fair value method, which would measure NCI at its full fair value and potentially recognize additional goodwill attributable to the noncontrolling interest, the proportionate share method excludes NCI-related goodwill.$EXPL$
WHERE id = 4837;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 3198: Derivatives and Hedging
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-20-25, a purchased put option on inventory can qualify as either a fair value hedge protecting against declines in the inventory''s fair value or a cash flow hedge protecting against variability in cash flows from a forecasted sale. The designation depends on the entity''s documented risk management objective and strategy. Unlike a written option, which generally cannot serve as a hedging instrument due to the premium received, a purchased put provides genuine downside protection that meets ASC 815''s hedge effectiveness requirements.$EXPL$
WHERE id = 3198;

-- ID 3199: Derivatives and Hedging
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-10-35, the intrinsic value of a call option equals the greater of zero or the stock price minus the strike price. Here, intrinsic value is $58 minus $50, equaling $8, meaning the option is in-the-money. The remaining premium above intrinsic value represents time value reflecting volatility and time to expiration. Unlike a put option, where intrinsic value equals the strike price minus the stock price, a call option''s intrinsic value increases as the underlying stock rises above the strike.$EXPL$
WHERE id = 3199;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (8 questions)
-- ============================================================

-- ID 7953: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Consistent with analytical techniques referenced in FASB Concepts Statement No. 8 on useful financial information, a simple moving average weights all periods equally: ($120,000 plus $140,000 plus $190,000) divided by 3 equals $150,000. The weighted moving average assigns specified weights: 0.50 times $190,000 plus 0.30 times $140,000 plus 0.20 times $120,000 equals $161,000. The $11,000 difference arises because the WMA places greater emphasis on recent data. Unlike the SMA, which treats all periods identically, the WMA responds more quickly to trends.$EXPL$
WHERE id = 7953;

-- ID 7955: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under analytical principles consistent with FASB ASC 275-10 on risks and uncertainties, an R-squared of 0.62 means 38% of cost variation remains unexplained. When a known omitted variable such as temperature logically influences utility costs, adding it as an independent variable in a multiple regression model can increase explanatory power and reduce the standard error of $4,800. While simply increasing the sample size might reduce standard error somewhat, it would not address the systematic omission of a relevant predictor that drives seasonal cost variation.$EXPL$
WHERE id = 7955;

-- ID 7956: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under analytical methods consistent with FASB ASC 275-10 on estimation uncertainty, a seasonal index of 1.20 indicates Q4 sales are typically 20% above the quarterly average. Deseasonalized sales equal actual sales divided by the seasonal index: $960,000 divided by 1.20 equals $800,000, representing the underlying base-level performance. Although Q4 appears strong at $960,000, the deseasonalized figure reveals performance is actually at the $800,000 base level, unlike an interpretation that seasonal factors had no effect.$EXPL$
WHERE id = 7956;

-- ID 7957: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under forecasting principles consistent with FASB ASC 275-10 on estimation and risks, historical ratios project future balances. The AR-to-sales ratio is $600,000 divided by $4,000,000, or 15%. Projected AR equals 15% times $5,000,000, or $750,000. The key risk is that historical relationships may not persist during rapid growth. While this method provides a straightforward projection, it incorrectly assumes that changes in credit terms, collection efficiency, or customer mix during expansion will not cause actual receivables to diverge from the forecast.$EXPL$
WHERE id = 7957;

-- ID 7959: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under analytical principles consistent with FASB ASC 275-10 on estimation uncertainty, t-statistics test whether each coefficient is significantly different from zero, with values below approximately 2.0 suggesting insignificance. X1 (t = 8.2) and X2 (t = 5.4) are clearly significant predictors, while X3 (t = 1.1) is not, despite the model''s overall R-squared of 0.89. Although a high R-squared indicates strong overall explanatory power, it does not mean every individual variable contributes meaningfully, unlike what might be assumed from the aggregate fit alone.$EXPL$
WHERE id = 7959;

-- ID 7961: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under forecasting methodology consistent with FASB ASC 275-10 on estimation, the smoothing constant alpha determines the weight placed on the most recent actual observation. A higher alpha closer to 1.0 assigns more weight to the latest data point, making the forecast highly responsive to recent changes but more volatile. Conversely, a lower alpha closer to 0 produces a smoother, slower-reacting forecast. Unlike what might be assumed, raising alpha does not reduce forecast volatility but rather increases sensitivity to the most recent period''s actual value.$EXPL$
WHERE id = 7961;

-- ID 7963: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under forecasting methods consistent with FASB ASC 275-10 on estimation, a simple moving average forecasts the next period by equally averaging the most recent N observations. The 4-month SMA for January equals (1,200 plus 1,400 plus 1,000 plus 1,600) divided by 4, equaling 1,300 units. Unlike incorrectly using only three months, which yields 1,333 by dividing (1,400 plus 1,000 plus 1,600) by 3, the defined 4-month window must include all four periods to produce the correct forecast.$EXPL$
WHERE id = 7963;

-- ID 7964: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under analytical principles recognized in FASB ASC 275-10 on financial estimation, the sustainable growth rate equals ROE multiplied by the retention ratio. Currently, 16% times (1 minus 0.60) equals 6.4%. Under the proposed 30% payout, 16% times (1 minus 0.30) equals 11.2%, nearly doubling the sustainable growth rate. While using the payout ratio of 60% directly as the retention ratio might seem plausible, that approach would incorrectly overstate the current sustainable growth rate at 9.6% rather than 6.4%.$EXPL$
WHERE id = 7964;

-- ============================================================
-- FINANCIAL VALUATION METHODS (8 questions)
-- ============================================================

-- ID 13238: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35, fair value measurements should reflect the assumptions market participants would use, including liquidity considerations. For a privately held company whose equity cannot be readily sold on a public exchange, the analyst should add an illiquidity premium to the WACC derived from public comparables. This higher discount rate compensates investors for the 6-to-12-month expected time to find a buyer. Unlike lowering the discount rate, which would ignore the additional risk of holding an illiquid position, the premium appropriately reflects reduced marketability.$EXPL$
WHERE id = 13238;

-- ID 13239: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under valuation principles consistent with ASC 820-10-35, EV/Revenue is the preferred multiple for high-growth, unprofitable companies because revenue remains positive even when earnings and EBITDA are negative. As an enterprise-level metric, it also neutralizes capital structure differences across comparables. Unlike P/E, which produces a meaningless negative multiple when applied to an unprofitable company, EV/Revenue captures the market''s valuation of the revenue stream regardless of current profitability.$EXPL$
WHERE id = 13239;

-- ID 13240: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under DCF valuation principles consistent with ASC 820-10-55, the terminal value is calculated as of the end of the explicit forecast period (Year 5) and must be discounted back to present value at the WACC. Failing to discount the terminal value is a common modeling error that dramatically overstates enterprise value because terminal value typically represents 60-80% of total value. Unlike discounting at the cost of equity, which would only be appropriate for an FCFE-based model, FCFF-based terminal values require the WACC.$EXPL$
WHERE id = 13240;

-- ID 13241: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under valuation principles consistent with ASC 820-10-35, price-to-book is the standard multiple for banks and financial institutions because their balance sheets consist primarily of financial assets and liabilities carried at or near fair value. Book value per share serves as a meaningful proxy for net asset value. Unlike EV/EBITDA, which is poorly suited to banks because interest expense is an operating cost rather than a financing cost and depreciation is minimal, P/B directly captures how the market values the institution''s reported net worth.$EXPL$
WHERE id = 13241;

-- ID 13242: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under valuation practices consistent with ASC 805-30-30, net working capital peg adjustments are standard provisions in acquisition agreements. When actual NWC of $2.5 million falls below the agreed-upon normalized target of $3.0 million, the purchase price is reduced by the $500,000 shortfall to compensate the buyer for receiving less working capital than expected. Unlike deducting the full $2.5 million, which would improperly remove all working capital from the price, the peg adjustment only addresses the deviation from the negotiated baseline.$EXPL$
WHERE id = 13242;

-- ID 13243: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under WACC methodology consistent with ASC 740 and corporate finance principles, the after-tax cost of debt equals the pre-tax rate multiplied by (1 minus the tax rate): 6.0% times 0.70 equals 4.20%. Interest expense is tax-deductible, creating a tax shield that reduces the effective borrowing cost. Unlike using the 6.0% pre-tax rate directly in WACC, which would overstate the cost of debt by ignoring the tax benefit, the after-tax figure reflects the true economic cost to the firm.$EXPL$
WHERE id = 13243;

-- ID 13244: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under valuation principles consistent with ASC 820-10-35, FCFE represents cash flows available exclusively to equity holders after all debt obligations have been satisfied. The correct discount rate is the cost of equity (11%) because the cash flows already exclude debt service. Unlike discounting at WACC, which is appropriate for FCFF where cash flows belong to all capital providers, using WACC for FCFE would double-count the cost of debt and systematically undervalue the equity.$EXPL$
WHERE id = 13244;

-- ID 13245: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under DCF valuation principles consistent with ASC 820, the terminal value formula assumes cash flows have reached a sustainable, steady-state growth pattern. A biotechnology company that will not reach steady-state margins until Year 8 requires a longer explicit forecast period so the terminal value is based on normalized cash flows. Unlike applying the terminal growth rate at Year 5 when margins are still changing rapidly, extending to Year 8-10 avoids distorting the valuation by applying perpetuity assumptions to non-representative figures.$EXPL$
WHERE id = 13245;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4857: Foreign Currency Transactions
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-30-35-3, for a cash flow hedge the effective portion of the gain or loss on the hedging instrument is reported in other comprehensive income (OCI) and reclassified into earnings when the hedged forecasted transaction affects earnings. Any ineffective portion is recognized in current earnings immediately. Unlike a fair value hedge where gains and losses on the hedging instrument are recorded directly in earnings each period, a cash flow hedge temporarily defers effective results in AOCI.$EXPL$
WHERE id = 4857;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 3322: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraphs 77-79, the reconciliation from fund financial statements to government-wide statements requires adding capital assets, subtracting long-term liabilities, and incorporating deferred outflows and inflows. Net position equals $3,500,000 fund balance plus $15,000,000 capital assets minus $9,000,000 long-term liabilities plus $400,000 deferred outflows minus $200,000 deferred inflows, totaling $9,700,000. Unlike simply adding capital assets to fund balance, the full reconciliation must account for all items that differ between modified accrual and full accrual accounting.$EXPL$
WHERE id = 3322;

-- ID 3323: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraph 78, reconciling items between fund and government-wide statements include adjustments for different measurement approaches. When governmental funds use the purchases method, supplies are expensed when purchased, but government-wide statements use the consumption method, expensing supplies when used. An increase in supplies inventory means fewer supplies were consumed than purchased, so the excess must be added back. Unlike leaving the expenditure unadjusted, this reconciliation properly converts from modified accrual to full accrual basis.$EXPL$
WHERE id = 3323;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 4875: Intangible Assets Advanced
UPDATE questions SET
  explanation = $EXPL$Under ASC 805-20-55 and ASC 350-30-35, a non-compete agreement acquired in a business combination meets the contractual-legal criterion for recognition as a separate intangible asset. As a finite-lived intangible, it is amortized over its 3-year contractual term at $200,000 per year ($600,000 divided by 3). Unlike indefinite-lived intangibles such as goodwill that are tested for impairment rather than amortized, finite-lived intangibles with determinable useful lives must be systematically amortized.$EXPL$
WHERE id = 4875;

-- ============================================================
-- INTERFUND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 3336: Interfund Transactions
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraph 61, interfund services provided and used between governmental funds are eliminated on the government-wide statements because both the revenue and expense fall within governmental activities, netting to zero. This elimination prevents double-counting internal transactions within the same activity type. However, unlike transactions between governmental activities and business-type activities, which are generally not eliminated to preserve separate reporting of each activity type, intra-activity services must be removed.$EXPL$
WHERE id = 3336;

-- ID 3337: Interfund Transactions
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraph 61, transfers between governmental activities and business-type activities are not eliminated on the government-wide statements because they cross activity boundaries. The transfer is reported as a transfer out in the governmental activities column and a transfer in for business-type activities. Unlike interfund services within the same activity type that are eliminated to avoid double-counting, cross-activity transfers are preserved to accurately reflect resource flows between the two distinct reporting categories.$EXPL$
WHERE id = 3337;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (1 questions)
-- ============================================================

-- ID 3259: Internal-Use Software and Cloud Computing
UPDATE questions SET
  explanation = $EXPL$Under ASU 2018-15 (codified in ASC 350-40), implementation costs incurred during the application development stage of a cloud computing (hosting) arrangement that is a service contract are capitalized as a prepaid asset. The $100,000 is amortized over the 3-year hosting term on a straight-line basis at $33,333 per year, while the $5,000 monthly subscription fees are expensed as incurred. Unlike preliminary project stage costs or post-implementation costs, which are expensed immediately, application development stage costs qualify for capitalization.$EXPL$
WHERE id = 3259;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (2 questions)
-- ============================================================

-- ID 3299: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = $EXPL$Under ASC 715-30-35-43, the discount rate used to measure the projected benefit obligation should reflect the rates at which pension benefits could be effectively settled. In practice, this means yields on high-quality corporate bonds (typically AA-rated) with durations matching the expected timing of benefit payments. Unlike using the expected return on plan assets, which measures anticipated investment performance, the discount rate reflects the time value of money for the obligation itself.$EXPL$
WHERE id = 3299;

-- ID 3300: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = $EXPL$Under ASC 715-30-35-92, a curtailment occurs when an event significantly reduces the expected years of future service of current employees or eliminates the accrual of defined benefits for a significant number of employees'' future services. A plant closure eliminating 200 positions qualifies as a curtailment and triggers immediate recognition of previously unrecognized prior service costs. Unlike a plan settlement, which involves irrevocably transferring the obligation to a third party, a curtailment reduces future benefit accruals while the existing obligation remains.$EXPL$
WHERE id = 3300;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (7 questions)
-- ============================================================

-- ID 12981: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under the percentage-of-sales method consistent with FASB ASC 275-10 on estimation, historical ratios are assumed to continue into projection periods. The one-time $600,000 litigation gain inflated the 10% net profit margin above its recurring level, so using this unadjusted margin would overstate projected earnings and understate external financing needed. The team should normalize the base-year margin by excluding the non-recurring item. Unlike assuming that the percentage-of-sales method automatically filters out anomalies, analysts must manually identify and remove items that will not recur.$EXPL$
WHERE id = 12981;

-- ID 12982: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under analytical methods referenced in FASB ASC 275-10 on estimation, including all four dummy variables for four quarters creates perfect multicollinearity because the four dummies sum to 1 for every observation, perfectly collinear with the intercept. This is the dummy variable trap. Dropping one category (Q4) as the reference allows the intercept to capture Q4''s baseline while the three dummies measure deviations from it. Unlike including all four dummies, which would prevent the regression from being estimated, using N-1 dummies for N categories preserves model solvability.$EXPL$
WHERE id = 12982;

-- ID 12983: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under forecasting principles consistent with FASB ASC 275-10 on estimation uncertainty, forecast bias occurs when a model consistently produces errors in the same direction, either systematically overpredicting or underpredicting actual values. A biased model''s errors do not average to zero over time, indicating a structural flaw in the approach. Unlike high forecast variance where errors scatter widely but symmetrically around actual values, systematic bias reveals the model is missing a directional component such as a trend shift or structural change in the underlying data.$EXPL$
WHERE id = 12983;

-- ID 12984: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under forecasting methodology consistent with FASB ASC 275-10 on estimation, simple exponential smoothing assumes a stationary (flat) series and systematically lags behind trending data, producing persistent underprediction when sales rise steadily. Holt''s double exponential smoothing introduces a second parameter, beta, that smooths the trend component separately from the level (smoothed by alpha). This allows the forecast to track both the current level and the direction of movement. Unlike Holt-Winters triple exponential smoothing, which adds a seasonal component, Holt''s method addresses trend only.$EXPL$
WHERE id = 12984;

-- ID 12985: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under the EFN formula consistent with FASB ASC 275-10 on financial projections, a negative EFN means internally generated funds (retained earnings and spontaneous liability increases) exceed the asset growth required by projected sales. The company has surplus funds available for debt reduction, share repurchases, dividends, or additional investment. Unlike a positive EFN, which indicates the company must raise external capital through debt or equity issuance, a negative EFN signals self-funding capacity beyond current growth needs.$EXPL$
WHERE id = 12985;

-- ID 12986: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under forecasting principles consistent with FASB ASC 275-10 on estimation, causal (explanatory) methods such as regression use independent variables with a logical cause-and-effect relationship to the dependent variable, such as advertising spending, temperature, and disposable income driving beverage sales. Time-series methods rely solely on the variable''s own historical pattern over time. Unlike time-series approaches that extrapolate past patterns, causal methods model the underlying drivers of demand, enabling scenario analysis when input assumptions change.$EXPL$
WHERE id = 12986;

-- ID 12987: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under cost estimation principles consistent with FASB ASC 275-10 on estimation, the slope coefficient ($3.50) represents the estimated change in shipping costs for each one-unit increase in packages shipped. It measures the variable cost per package in this context. The intercept of $18,000 captures the fixed cost component regardless of volume. Unlike R-squared, which measures the proportion of variance explained by the model, the slope coefficient quantifies the per-unit marginal cost relationship between the independent and dependent variables.$EXPL$
WHERE id = 12987;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (8 questions)
-- ============================================================

-- ID 12739: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under Modigliani-Miller Proposition II and trade-off theory, as leverage increases, equity holders bear more financial risk and demand a higher return, raising the cost of equity. Trade-off theory adds that beyond the optimal point, financial distress costs such as bankruptcy risk and agency costs outweigh the incremental tax shield, causing WACC to rise. While debt is initially cheaper due to the tax deductibility of interest under IRC Section 163, the escalating cost of equity eventually offsets this benefit at high leverage levels.$EXPL$
WHERE id = 12739;

-- ID 12740: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under trade-off theory of capital structure, the optimal level of debt balances the tax shield benefit of interest deductibility (recognized under IRC Section 163 and ASC 740) against the increasing costs of financial distress, including bankruptcy costs, agency costs, and lost business as leverage rises. The optimum minimizes WACC. Unlike pecking order theory, which predicts a financing hierarchy based on information asymmetry rather than an optimal target, trade-off theory explicitly models the cost-benefit tradeoff of incremental debt.$EXPL$
WHERE id = 12740;

-- ID 12741: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under pecking order theory, consistent with ASC 470 on debt classification and capital structure analysis, firms prefer internal funds first (no issuance costs or information asymmetry), then debt, then equity as a last resort. Since Westbrook has $50 million in retained earnings exceeding the $40 million needed, it should use internal funds. Unlike trade-off theory, which targets an optimal debt ratio, pecking order theory predicts that firms follow a strict financing hierarchy driven by adverse selection costs, always exhausting cheaper internal sources before tapping external markets.$EXPL$
WHERE id = 12741;

-- ID 12742: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under leverage analysis consistent with ASC 275-10 on risks and uncertainties, the degree of operating leverage (DOL) equals contribution margin divided by EBIT. Contribution margin is $800,000 minus $480,000, or $320,000. EBIT is $320,000 minus $200,000, or $120,000. DOL equals $320,000 divided by $120,000, or 2.67. A 15% sales increase produces 15% times 2.67, equaling a 40% increase in EBIT. Unlike a DOL of 1.0, which would imply no fixed costs and proportional EBIT changes, the high DOL of 2.67 reflects significant fixed cost leverage amplifying profit swings.$EXPL$
WHERE id = 12742;

-- ID 12743: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under leverage analysis consistent with ASC 275-10 on risks and uncertainties, the degree of financial leverage (DFL) equals EBIT divided by (EBIT minus interest expense). DFL is $500,000 divided by ($500,000 minus $125,000), equaling 1.333. A 20% increase in EBIT produces 20% times 1.333, or approximately a 26.7% increase in EBT and EPS. Unlike a DFL of 1.0, which would indicate zero interest expense and no financial leverage effect, the 1.333 multiplier shows that fixed interest charges amplify the impact of operating income changes on shareholders'' returns.$EXPL$
WHERE id = 12743;

-- ID 12744: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under leverage analysis consistent with ASC 275-10 on risks and uncertainties, degree of total leverage (DTL) equals DOL times DFL. Current: contribution margin $400,000, EBIT $150,000, DOL 2.67; DFL equals $150,000 divided by $100,000, or 1.50; DTL equals 4.0. Proposed: contribution margin $600,000, EBIT $200,000, DOL 3.0; DFL equals $200,000 divided by $100,000, or 2.0; DTL equals 6.0. The shift from variable to fixed costs plus additional debt increases DTL by 50%. Although total costs may be equal at this sales level, the mix of fixed versus variable costs changes leverage dramatically.$EXPL$
WHERE id = 12744;

-- ID 12745: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under valuation analysis principles consistent with ASC 820, P/E is an equity-level multiple reflecting net income after interest expense. Companies with vastly different debt-to-equity ratios (0.2, 1.5, and 3.0) carry very different interest burdens, distorting P/E comparisons. EV/EBITDA operates at the enterprise level before interest and capital structure effects, providing more comparable valuations across firms. Unlike P/E, which embeds each company''s unique financing costs into the denominator, EV/EBITDA neutralizes capital structure differences.$EXPL$
WHERE id = 12745;

-- ID 12746: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under valuation principles consistent with ASC 820-10-35 on fair value measurement, a constant-growth DDM applying 4% from Year 0 ignores the 20% high-growth phase in Years 1-3, producing lower near-term dividend estimates ($1.04 versus $1.20 in Year 1). A two-stage DDM captures the higher near-term dividends plus the terminal value, yielding a higher intrinsic value. Unlike the two-stage approach that explicitly models distinct growth phases, the single-stage constant-growth model understates value by averaging away the high-growth period.$EXPL$
WHERE id = 12746;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 3230: State and Local Government Reporting
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraph 23, the modified approach is an alternative to depreciation for eligible infrastructure assets. It requires an asset management system documenting up-to-date condition, condition assessments at least every three years, and evidence that infrastructure is being maintained at or above the government''s established condition level. Unlike standard depreciation, which systematically allocates cost over useful life, the modified approach preserves the historical cost on the balance sheet and expenses maintenance costs as incurred.$EXPL$
WHERE id = 3230;

-- ID 3231: State and Local Government Reporting
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraph 67, an enterprise fund is required when the activity is financed by debt backed solely by fees and charges, when laws or regulations require cost recovery through fees, or when the government''s policy establishes fees intended to recover costs including capital costs. Common examples include water, sewer, and electric utilities. Unlike a general fund that is supported by tax revenues, an enterprise fund operates on a self-supporting basis through user charges.$EXPL$
WHERE id = 3231;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (2 questions)
-- ============================================================

-- ID 3137: Stock Compensation and Business Combinations
UPDATE questions SET
  explanation = $EXPL$Under ASC 805-30-30-1, goodwill is measured as the excess of consideration transferred over the fair value of net identifiable assets acquired. Here, goodwill equals $50,000,000 minus $42,000,000, or $8,000,000, representing expected synergies and other unidentifiable future economic benefits. Unlike identifiable intangible assets that meet the separability or contractual-legal criterion under ASC 805-20, goodwill captures residual value that cannot be individually recognized.$EXPL$
WHERE id = 3137;

-- ID 3140: Stock Compensation and Business Combinations
UPDATE questions SET
  explanation = $EXPL$Under ASC 718-10-30-12, a performance condition that affects vesting is not reflected in the grant-date fair value of a stock option. Instead, it affects the estimate of the number of awards expected to vest, with compensation expense adjusted each period based on the probability of achieving the condition. Unlike market conditions such as reaching a target stock price, which are incorporated into the grant-date fair value using option pricing models, performance conditions like a revenue target are accounted for through the quantity of awards rather than their unit fair value.$EXPL$
WHERE id = 3140;

COMMIT;
