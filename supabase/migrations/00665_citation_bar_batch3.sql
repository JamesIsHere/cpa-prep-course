-- Migration: Citation backfill — BAR batch 3 (50 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 50 explanations for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Business Combinations, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 698: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$Under ASC 810-10-45, intercompany transactions must be fully eliminated in consolidation. Because Lenox resold all inventory to external customers by year-end 2024, the $150,000 markup is fully realized and no elimination entry carries into 2025. The 2025 consolidation requires no adjustment for this prior-year downstream sale since no unrealized profit remains in ending inventory. However, if goods had remained unsold, the entry would reduce beginning retained earnings and cost of goods sold, unlike a current-year elimination that adjusts current-period income directly.$EXPL$
WHERE id = 698;

-- ID 702: Advanced Consolidations
UPDATE questions SET
  explanation = $EXPL$Under ASC 810-10-45-1, in an upstream intercompany sale the subsidiary initiates the transaction, so the noncontrolling interest bears its proportionate share of the unrealized profit elimination. Cedar''s NCI is reduced by 20% of the $120,000 unrealized profit ($24,000) because NCI shares in the subsidiary''s adjusted earnings. This differs from a downstream sale, where the parent initiates the transaction and the entire unrealized profit elimination is attributed to the controlling interest, whereas in upstream sales the NCI must absorb its share of the eliminated profit.$EXPL$
WHERE id = 702;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (1 questions)
-- ============================================================

-- ID 3279: Advanced Lease Transactions
UPDATE questions SET
  explanation = $EXPL$Under ASC 842-20-25-5, a finance lease lessee recognizes amortization of the right-of-use asset on a straight-line basis and interest expense on the lease liability using the effective interest method. This produces front-loaded total expense because interest is calculated on the outstanding liability balance, which is highest in early periods and declines as payments are made. Unlike an operating lease under ASC 842-20-25-6, which recognizes a single straight-line lease expense over the term, a finance lease''s combined amortization plus interest results in higher expense in early years that decreases over time.$EXPL$
WHERE id = 3279;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (1 questions)
-- ============================================================

-- ID 673: Advanced Revenue and Intangibles
UPDATE questions SET
  explanation = $EXPL$Under ASC 606-10-55-54, a license of functional intellectual property provides the customer with a right to use the IP as it exists at the point of transfer. Because the perpetual software license functions independently without Vertex''s ongoing involvement, it represents functional IP and revenue is recognized at the point in time when the license is transferred to Kepler Corp. Unlike symbolic IP (such as a brand license), which requires over-time recognition because the customer''s benefit depends on the licensor''s ongoing activities, functional IP is recognized at a point in time upon delivery.$EXPL$
WHERE id = 673;

-- ============================================================
-- BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 4831: Business Combinations
UPDATE questions SET
  explanation = $EXPL$Under ASC 805-10-25-10, in a step acquisition the acquirer must remeasure its previously held equity interest at acquisition-date fair value and recognize any resulting gain or loss in earnings. Reed''s gain equals the fair value of its 30% interest ($4,900,000) minus the carrying value ($4,500,000), yielding a $400,000 gain. This remeasurement gain is recognized in current earnings, unlike the goodwill calculation which compares total consideration transferred plus the fair value of previously held interests to the fair value of net assets acquired. The $400,000 is not deferred or recorded in OCI.$EXPL$
WHERE id = 4831;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 718: Derivatives and Hedging
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-20-25-79 as amended by ASU 2017-12, entities may perform a qualitative hedge effectiveness assessment when the critical terms of the hedging instrument and hedged item match or are closely aligned. This eliminates the need for quarterly quantitative testing such as the dollar-offset or regression methods when terms are well-matched. However, if circumstances change and terms are no longer aligned, quantitative assessment is required. Unlike the pre-ASU 2017-12 framework that mandated quantitative effectiveness testing for all hedges, the updated guidance significantly reduces compliance burden for straightforward hedging relationships.$EXPL$
WHERE id = 718;

-- ID 719: Derivatives and Hedging
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-30-40-1, when hedge accounting is discontinued for a cash flow hedge, cumulative gains or losses previously recorded in accumulated other comprehensive income (AOCI) remain in AOCI and are reclassified into earnings in the periods when the forecasted transaction affects earnings. The amounts are not immediately reclassified to earnings upon discontinuance unless the forecasted transaction is no longer probable of occurring. Unlike a fair value hedge discontinuance where basis adjustments remain on the hedged item, a discontinued cash flow hedge retains its OCI balance for future reclassification.$EXPL$
WHERE id = 719;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (9 questions)
-- ============================================================

-- ID 2929: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 210-10-45 (balance sheet classification of current items), the cash ratio — calculated as (cash + cash equivalents) divided by current liabilities — is the most conservative liquidity measure. For Lakewood, the cash ratio equals $90,000 / $300,000 = 0.30, using only the most liquid assets to assess short-term obligation coverage. While the quick ratio ($300,000 / $300,000 = 1.0) also excludes inventory, it includes receivables that may not convert to cash immediately, whereas the cash ratio focuses solely on assets already in cash form.$EXPL$
WHERE id = 2929;

-- ID 2930: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 470-10-50 (debt disclosure requirements), the times interest earned (TIE) ratio equals operating income (EBIT) divided by interest expense, measuring solvency and debt service capacity. For Evergreen, TIE = $450,000 / $150,000 = 3.0 times, indicating operating earnings cover interest obligations three times over. Choice A (2.0) incorrectly subtracts interest from operating income before dividing, while Choice B (0.33) inverts the formula by placing interest in the numerator, unlike the correct calculation that measures how many times earnings can cover interest payments.$EXPL$
WHERE id = 2930;

-- ID 2931: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 205-10-45 (financial statement presentation), a common-size balance sheet expresses every line item as a percentage of total assets, making total assets the 100% base figure. This standardization allows meaningful comparison across companies of different sizes and reveals structural differences in asset composition. The technique is a core analytical tool for evaluating balance sheet structure. Unlike a common-size income statement, which uses net revenue as the base (100%), a common-size balance sheet anchors on total assets, whereas using total liabilities and equity as the base would produce the same result due to the accounting equation.$EXPL$
WHERE id = 2931;

-- ID 2932: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 225-10-S99 (SEC income statement presentation), gross profit margin is calculated as (Revenue minus Cost of Goods Sold) divided by Revenue, measuring the percentage of each sales dollar remaining after direct production costs. This profitability ratio isolates operational efficiency at the production level before operating expenses, interest, or taxes. For Waverly Foods, it reveals how effectively the company manages direct input costs relative to pricing. Unlike net profit margin, which deducts all expenses including SG&A, interest, and taxes from revenue, gross profit margin focuses exclusively on the relationship between sales and the direct cost of producing goods sold.$EXPL$
WHERE id = 2932;

-- ID 2933: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 330-10-35 (inventory measurement and analysis), GMROI equals gross margin divided by average inventory cost. Gross margin = $5,000,000 - $3,000,000 = $2,000,000, and GMROI = $2,000,000 / $600,000 = 3.33, meaning the company earns $3.33 in gross profit for every dollar invested in inventory. GMROI combines profitability and inventory efficiency into a single performance metric used by retailers and analysts. Unlike inventory turnover (COGS / average inventory = 5.0), which measures only how quickly inventory sells, GMROI incorporates the profit margin earned on each inventory dollar invested.$EXPL$
WHERE id = 2933;

-- ID 2934: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 250-10-S99 (SEC financial analysis guidance), the DuPont decomposition (ROE = Profit Margin x Asset Turnover x Equity Multiplier) reveals the drivers of return on equity. Company X ROE = 5% x 2.0 x 3.0 = 30%; Company Y ROE = 10% x 1.5 x 1.5 = 22.5%. Company X has a higher ROE by 7.5 percentage points despite lower profitability, driven primarily by its equity multiplier of 3.0 versus 1.5. Although Company Y has double the profit margin, its lower leverage and asset turnover result in a lower overall return on equity, whereas Company X''s leverage amplifies its returns.$EXPL$
WHERE id = 2934;

-- ID 2935: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 210-10-45 (current asset classification), the current ratio includes all current assets including inventory, while the quick ratio excludes inventory per ASC 330-10-35. When the current ratio rises from 1.8 to 2.4 while the quick ratio declines from 1.3 to 0.8 with flat revenue, the divergence indicates significant inventory buildup. Inventory is the only current asset included in the current ratio but excluded from the quick ratio. While improved collections would raise both ratios simultaneously, an inventory accumulation with declining cash and receivables signals potential demand weakness or overproduction rather than improving liquidity.$EXPL$
WHERE id = 2935;

-- ID 2936: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 505-10-50 (equity disclosure) and the DuPont framework, the equity multiplier equals Average Total Assets / Average Equity = $4,000,000 / $1,600,000 = 2.50, meaning $2.50 in assets for every $1.00 of equity and significant debt reliance. The 5-step DuPont decomposition breaks ROE into tax burden, interest burden, operating margin, asset turnover, and equity multiplier to isolate return drivers. A multiplier of 2.50 means 60% of assets are debt-financed. Unlike an equity multiplier of 1.0, which would indicate zero debt financing, a multiplier of 2.50 reveals that leverage substantially amplifies the company''s return on equity.$EXPL$
WHERE id = 2936;

-- ID 2937: Financial Statement Analysis
UPDATE questions SET
  explanation = $EXPL$Under ASC 205-10-45 (financial statement presentation) and horizontal analysis methodology, when a revenue trend index (138) substantially outpaces the net income index (98), profit margins are deteriorating because costs consume more than all incremental revenue. Revenue grew 38% over three years while net income declined 2%, indicating rising expenses such as COGS inflation, expanding SG&A, or a mix shift toward lower-margin products. Although economies of scale would be expected to improve margins causing net income to grow faster than revenue, the opposite pattern indicates margin compression, whereas premature revenue recognition would typically inflate both revenue and net income together.$EXPL$
WHERE id = 2937;

-- ============================================================
-- FINANCIAL VALUATION METHODS (9 questions)
-- ============================================================

-- ID 3039: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 and professional valuation standards, terminal value in a DCF model is most commonly estimated using either the Gordon Growth Model (perpetuity growth method: TV = FCF x (1+g) / (WACC - g)) or the exit multiple method (applying a market-based multiple to the terminal year metric such as EBITDA). The perpetuity growth method assumes cash flows grow at a constant rate indefinitely, while the exit multiple applies comparable transaction pricing. Unlike the asset-based approach, which values the company based on net asset values, these income-based terminal value methods capture the ongoing earnings capacity beyond the explicit forecast period.$EXPL$
WHERE id = 3039;

-- ID 3040: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35-52, the fair value hierarchy classifies inputs into three levels. Level 3 measurements use significant unobservable inputs, meaning management''s own assumptions about what market participants would use to price the asset. These are applied when observable market data (Level 1 quoted prices or Level 2 observable inputs) is unavailable, as with this private equity investment. Level 3 represents the least reliable measurement level and requires enhanced disclosures. Unlike Level 1 inputs, which use quoted prices in active markets for identical assets, Level 3 relies on entity-developed models and assumptions that cannot be corroborated by market data.$EXPL$
WHERE id = 3040;

-- ID 3041: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under DCF valuation methodology consistent with ASC 820, terminal value using the Gordon Growth Model equals FCFF in the final year times (1 + growth rate) divided by (WACC minus growth rate). Terminal value = $5,000,000 x 1.025 / (0.11 - 0.025) = $5,125,000 / 0.085 = $60,294,118. This captures all cash flows beyond the five-year explicit forecast period assuming perpetual growth at 2.5%. The terminal value is calculated at the end of Year 5 and must be discounted back to present value. Unlike the exit multiple method, which applies a market-based multiple, the perpetuity growth method assumes a constant growth rate in perpetuity.$EXPL$
WHERE id = 3041;

-- ID 3042: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under professional valuation standards and ASC 820-10-35, the asset-based approach values an entity by determining the fair value of its assets minus liabilities. This approach is most appropriate for asset-intensive companies such as real estate holding companies, natural resource firms, and investment companies where tangible assets are the primary value driver. With $500 million in property assets and stable rental income, this real estate holding company''s value is best captured by its underlying asset values. Unlike the income approach, which may undervalue asset-heavy firms with stable but modest cash flows, the asset-based approach directly reflects the market value of the property portfolio.$EXPL$
WHERE id = 3042;

-- ID 3043: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 and professional valuation guidance, the quality of a comparable company analysis depends critically on selecting truly comparable peers matched on industry, size, growth rates, margins, risk profile, and capital structure. Selecting inappropriate comparables produces misleading multiples regardless of which metric is used. For Westport Logistics, peers must operate in the same transportation segment with similar operating characteristics. Unlike a DCF analysis, which relies on the company''s own projected cash flows, the market approach derives value from external pricing data, making peer selection rather than discount rate estimation the most critical judgment.$EXPL$
WHERE id = 3043;

-- ID 3044: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under valuation principles consistent with ASC 820, EV/EBITDA is preferred for cross-company comparisons because it is capital-structure neutral. Enterprise value encompasses both debt and equity, and EBITDA excludes interest, taxes, depreciation, and amortization, eliminating the effects of differing leverage, tax jurisdictions, and depreciation policies. This makes EV/EBITDA ideal for comparing acquisition targets with different financing structures. Unlike the P/E ratio, which is directly affected by capital structure (interest expense reduces earnings), tax rates, and depreciation methods, EV/EBITDA provides a cleaner comparison of operating performance across companies with different financial policies.$EXPL$
WHERE id = 3044;

-- ID 3045: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under ASC 230-10-45 (statement of cash flows), FCFF represents cash available to all capital providers: Net Income + D&A + Interest x (1 - Tax Rate) - CapEx - Change in NWC. FCFF = $800,000 + $200,000 + ($100,000 x 0.75) - $350,000 - $50,000 = $675,000. Interest is added back on an after-tax basis because FCFF measures cash flow before financing costs, preserving the tax shield. Unlike Free Cash Flow to Equity (FCFE), which deducts net debt payments and represents cash available only to equity holders, FCFF includes cash flows available to both debt and equity investors.$EXPL$
WHERE id = 3045;

-- ID 3046: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under DCF valuation principles consistent with ASC 820, enterprise value and the discount rate have an inverse relationship: as the WACC increases, the present value of future cash flows decreases, reducing the DCF valuation. Moving from a 10% to 12% WACC significantly reduces the present value of both projected cash flows and the terminal value. This sensitivity demonstrates why WACC estimation is critical in DCF analysis and why small changes in assumptions can produce materially different valuations. Unlike increasing growth rate assumptions, which would raise the valuation, a higher discount rate reflects greater perceived risk and produces a lower present value for every future cash flow.$EXPL$
WHERE id = 3046;

-- ID 3047: Financial Valuation Methods
UPDATE questions SET
  explanation = $EXPL$Under professional valuation standards and ASC 820-10-35, the income approach values an asset based on the present value of expected future economic benefits. It encompasses DCF models (projecting and discounting specific future cash flows over an explicit period plus terminal value) and the capitalization of earnings method (applying a single capitalization rate to a normalized earnings stream). Both methods convert anticipated income into present value. Unlike the market approach, which derives value from comparable company or transaction multiples, and the asset-based approach, which values individual assets and liabilities, the income approach focuses on the entity''s earnings capacity.$EXPL$
WHERE id = 3047;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4850: Foreign Currency Transactions
UPDATE questions SET
  explanation = $EXPL$Under ASC 830-30-45-12, when translating a foreign subsidiary''s financial statements using the current rate method (required when the subsidiary''s functional currency differs from the parent''s reporting currency), the resulting cumulative translation adjustment (CTA) is reported as a component of other comprehensive income and accumulates in AOCI within stockholders'' equity. The CTA is not recognized in net income until sale or substantial liquidation of the foreign investment. Unlike transaction gains and losses under ASC 830-20, which are recognized directly in current-period net income, translation adjustments bypass the income statement and reside in accumulated other comprehensive income.$EXPL$
WHERE id = 4850;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 3311: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraphs 77-78, the reconciliation from governmental fund statements to government-wide statements requires adjusting for differences in measurement focus. Capital outlays of $2.3 million recorded as expenditures in the General Fund must be reclassified as capital assets on the government-wide statement of net position. The reconciliation adds back the expenditure and records the asset because government-wide statements use the economic resources measurement focus and full accrual accounting. Unlike governmental fund statements, which treat capital outlays as current-period expenditures reducing fund balance, the government-wide statements capitalize and depreciate these assets over their useful lives.$EXPL$
WHERE id = 3311;

-- ID 3312: Fund-to-Government-Wide Reconciliation
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraphs 18-20, governmental funds use the current financial resources measurement focus, which reports only current assets and liabilities. Capital assets are not recognized in governmental funds, so depreciation expense does not appear. On the government-wide statements, which use the economic resources measurement focus and full accrual accounting, capital assets are reported and depreciated over their useful lives, producing the $1.4 million in depreciation expense. Unlike proprietary funds (enterprise and internal service), which also use economic resources measurement focus and report depreciation, governmental funds exclude long-term assets and their related depreciation entirely.$EXPL$
WHERE id = 3312;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 4869: Intangible Assets Advanced
UPDATE questions SET
  explanation = $EXPL$Under ASC 350-30-35-18, indefinite-lived intangible assets are not amortized but must be tested for impairment at least annually or when triggering events occur. The impairment test compares fair value to carrying amount, and if fair value is less, an impairment loss equal to the difference is recognized. Since the trade name was not amortized, its carrying amount remains $5,000,000, and the impairment loss equals $5,000,000 minus $4,200,000 = $800,000. Unlike finite-lived intangible assets, which are amortized and tested for impairment only when indicators exist using a two-step recoverability approach, indefinite-lived intangibles require annual impairment testing with a direct fair value comparison.$EXPL$
WHERE id = 4869;

-- ============================================================
-- INTERFUND TRANSACTIONS (1 questions)
-- ============================================================

-- ID 1202: Interfund Transactions
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 33, paragraph 20, government-mandated and voluntary nonexchange transactions require that all eligibility requirements be met before revenue is recognized. The education grant requires a 15% local match, but the district has provided only 10%. Because this eligibility requirement has not been fully satisfied, no revenue can be recognized regardless of the $800,000 already spent on approved programs. The entire amount received is reported as unearned revenue (a liability) until the matching requirement is met. Unlike exchange transactions where revenue is recognized upon delivery, nonexchange transaction revenue recognition is contingent on meeting all eligibility requirements including matching provisions.$EXPL$
WHERE id = 1202;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (1 questions)
-- ============================================================

-- ID 3253: Internal-Use Software and Cloud Computing
UPDATE questions SET
  explanation = $EXPL$Under ASU 2018-15 (codified in ASC 350-40), implementation costs for cloud computing arrangements that are service contracts follow the same capitalization framework as internal-use software under ASC 350-40-25. The $50,000 for vendor evaluation falls in the preliminary project stage and is expensed as incurred. The $200,000 for configuration and customization occurs during the application development stage and is capitalized as a prepaid asset, then amortized over the service period. Unlike costs incurred during the post-implementation stage (training, maintenance), which are expensed, application development stage costs meet the capitalization criteria regardless of whether the arrangement is a license or a service contract.$EXPL$
WHERE id = 3253;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (2 questions)
-- ============================================================

-- ID 1095: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = $EXPL$Under ASC 715-30-35-4, net periodic pension cost (NPPC) includes service cost, interest cost, and expected return on plan assets (among other components). Service cost = $300,000. Interest cost = PBO x discount rate = $5,000,000 x 5% = $250,000. Expected return = plan assets x expected rate = $4,600,000 x 7% = $322,000. NPPC = $300,000 + $250,000 - $322,000 = $228,000. The expected return (not actual return) reduces NPPC, with differences between actual and expected returns recorded in OCI. Unlike the actual return, which fluctuates with market conditions, the expected return provides a smoothed reduction to pension expense.$EXPL$
WHERE id = 1095;

-- ID 3289: Pension and Postretirement Benefits
UPDATE questions SET
  explanation = $EXPL$Under ASC 715-30-20, the projected benefit obligation (PBO) represents the actuarial present value of all pension benefits attributed to employee service rendered to date, incorporating assumptions about future salary increases for pay-related benefit formulas. The PBO is the primary measure used for balance sheet recognition and pension expense calculations. Unlike the accumulated benefit obligation (ABO), which uses current salary levels and ignores future pay increases, the PBO provides a more comprehensive measure of the employer''s obligation. The vested benefit obligation (VBO) is even more restrictive, including only benefits to which employees are currently entitled.$EXPL$
WHERE id = 3289;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (7 questions)
-- ============================================================

-- ID 2974: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under AICPA AT-C Section 305 (prospective financial statements), pro forma projections follow a structured income statement buildup. Revenue of $5,000,000 less COGS at 60% ($3,000,000) yields gross profit of $2,000,000. Subtracting operating expenses of $1,200,000 gives operating income of $800,000. Applying the 25% tax rate produces $200,000 in tax expense, yielding projected net income of $600,000. Choice B ($800,000) incorrectly omits the tax provision, whereas the correct projection must include all components through net income. Choice C ($450,000) likely misapplies the tax rate to revenue rather than operating income.$EXPL$
WHERE id = 2974;

-- ID 2975: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under AICPA AT-C Section 305 guidance on prospective financial information, the percent-of-sales forecasting method assumes that most balance sheet and income statement items maintain a stable proportional relationship with revenue. Items such as COGS, accounts receivable, inventory, and accounts payable are projected as a constant percentage of forecasted sales based on historical ratios. This simplification is effective for short-term projections when the operating structure remains stable. Unlike regression-based or driver-based forecasting models, which can capture nonlinear relationships, the percent-of-sales method assumes linear scaling and may not reflect structural changes in the business.$EXPL$
WHERE id = 2975;

-- ID 2976: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under AICPA AT-C Section 305 and financial planning frameworks, scenario analysis presents multiple cases to bracket potential outcomes. The base case represents the most likely or expected outcome built on current trends and reasonable assumptions. The optimistic scenario reflects favorable conditions, while the pessimistic scenario models unfavorable conditions. The base case serves as the primary benchmark against which alternative scenarios are measured. Unlike sensitivity analysis, which varies one input at a time to test its impact, scenario analysis changes multiple assumptions simultaneously to model coherent alternative futures including optimistic, base, and pessimistic outcomes.$EXPL$
WHERE id = 2976;

-- ID 2978: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under ASC 420-10-25 (cost analysis and restructuring guidance) and CVP analysis principles, the margin of safety measures the cushion between current sales and the breakeven point. Margin of safety = (Current Sales - Breakeven Sales) / Current Sales = ($2,000,000 - $1,600,000) / $2,000,000 = 20%, meaning sales can decline by $400,000 before losses begin. A higher margin of safety indicates lower operating risk. Unlike the degree of operating leverage, which measures the sensitivity of operating income to sales changes, the margin of safety directly quantifies the sales decline buffer before reaching breakeven.$EXPL$
WHERE id = 2978;

-- ID 2979: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under ASC 420-10-25 and CVP analysis principles, the degree of operating leverage (DOL) measures the percentage change in operating income for a given percentage change in sales. With a DOL of 3.0, a 10% sales increase produces a 30% increase in operating income (3.0 x 10% = 30%). High operating leverage results from a cost structure dominated by fixed costs, which amplifies both gains and losses as sales fluctuate. Unlike financial leverage, which magnifies returns through the use of debt financing per ASC 470, operating leverage arises from the proportion of fixed versus variable costs in the company''s operating structure.$EXPL$
WHERE id = 2979;

-- ID 2980: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under financial planning frameworks consistent with AICPA AT-C Section 305, when the percent-of-sales method is used to prepare pro forma financial statements, the external financing needed (EFN) is the balancing figure after projecting all assets, spontaneous liabilities, and equity (including retained earnings from projected net income less dividends). The EFN represents the additional debt or equity financing required to support projected growth. This plug figure arises because asset growth typically outpaces the increase in spontaneous liabilities and retained earnings. Unlike internal financing from retained earnings, which is generated automatically, EFN must be raised from external capital markets.$EXPL$
WHERE id = 2980;

-- ID 2981: Prospective Analysis and Forecasting
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 (fair value measurement techniques) and risk analysis methodology, a Monte Carlo simulation generates thousands of scenarios by randomly sampling input variables to produce a probability distribution of outcomes. The 5th percentile NPV of $600,000 means there is a 5% probability the NPV will fall below $600,000 and a 95% probability it will exceed that amount. This value-at-risk interpretation helps management assess downside exposure. Unlike the mean NPV ($2,000,000), which represents the expected outcome, the 5th percentile focuses on tail risk, whereas a deterministic single-point NPV estimate provides no probability distribution information.$EXPL$
WHERE id = 2981;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (7 questions)
-- ============================================================

-- ID 3076: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 (risk assessment in fair value measurement) and modern portfolio theory, systematic risk (market risk) affects all securities and cannot be eliminated through diversification. It includes macroeconomic factors such as interest rate changes, inflation, recessions, and geopolitical events. Only unsystematic risk (firm-specific risk) can be reduced by holding a well-diversified portfolio. Unlike unsystematic risk, which is unique to individual companies and can be virtually eliminated with approximately 20-30 uncorrelated securities, systematic risk persists regardless of portfolio size and is measured by beta in the capital asset pricing model.$EXPL$
WHERE id = 3076;

-- ID 3077: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 820-10-35 (market-based measurement inputs), the Consumer Price Index (CPI), published by the Bureau of Labor Statistics, measures the average change over time in prices paid by urban consumers for a fixed market basket of goods and services. The CPI is the most widely cited consumer inflation measure and is used to adjust Social Security benefits, tax brackets, and cost-of-living agreements. Unlike the Producer Price Index (PPI), which measures wholesale prices at the producer level before goods reach consumers, the CPI captures final retail prices that households actually pay, whereas the GDP deflator covers a broader set of goods including government and investment spending.$EXPL$
WHERE id = 3077;

-- ID 3078: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-20-25, an interest rate swap used to convert variable-rate debt to a fixed rate involves the entity paying a fixed rate and receiving a floating rate. Baxter pays fixed 5.5% on the swap and receives SOFR, which offsets the SOFR component of its loan (SOFR + 2%), leaving a net fixed rate of 7.5% (5.5% swap fixed + 2% spread). In this arrangement, Baxter is the fixed-rate payer (and floating-rate receiver). Unlike a company seeking to convert fixed-rate debt to variable-rate exposure, which would enter a swap paying floating and receiving fixed, Baxter''s objective of eliminating variable-rate exposure requires paying fixed on the swap.$EXPL$
WHERE id = 3078;

-- ID 3079: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under macroeconomic theory as tested in the BAR section, the business cycle follows four sequential phases: expansion (rising GDP, employment, and output), peak (the highest point before contraction begins), contraction or recession (declining economic activity), and trough (the lowest point before recovery). After the trough, a new expansion begins and the cycle repeats. Understanding these phases is essential for financial planning, risk assessment, and investment timing. Unlike secular trends, which describe long-term directional movements in the economy over decades, business cycle phases are cyclical fluctuations that typically span months to years around the long-term growth trend.$EXPL$
WHERE id = 3079;

-- ID 3080: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-20-25 and risk management principles, natural hedging involves matching foreign currency inflows with outflows in the same currency to reduce net exposure without derivative instruments. Global Parts has EUR 2 million in receivables and EUR 1.5 million in payables, creating a net exposure of only EUR 500,000 through operational alignment. The company can further reduce exposure by adjusting sourcing or pricing to better match currency flows. Unlike derivative hedging instruments such as forward contracts or options, which involve counterparty risk and transaction costs, natural hedging achieves exposure reduction through operational decisions, whereas forward contracts lock in specific exchange rates for the full notional amount.$EXPL$
WHERE id = 3080;

-- ID 3082: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 830-10-05 (foreign currency matters) and international economics theory, purchasing power parity (PPP) states that exchange rates between two currencies should adjust so identical goods cost the same in both countries when expressed in a common currency. If a basket of goods costs more in one country, that currency should depreciate to restore equilibrium. PPP holds better as a long-run predictor than a short-run indicator. Unlike interest rate parity, which links exchange rates to interest rate differentials and holds well in the short run due to arbitrage, PPP is based on goods price differentials and converges slowly due to trade barriers and non-tradable goods.$EXPL$
WHERE id = 3082;

-- ID 3083: Risk Management and Economics
UPDATE questions SET
  explanation = $EXPL$Under ASC 815-10-15 and risk management principles, a call option on crude oil gives Delta the right but not the obligation to purchase oil at a predetermined strike price. This provides downside protection (the effective purchase price will not exceed the strike plus the premium) while preserving the benefit if market prices decline, since the option can simply expire unexercised. Management pays an upfront premium for this asymmetric payoff. Unlike forward contracts or futures, which lock in a fixed price and eliminate both downside risk and upside potential, options provide one-sided protection, whereas a collar strategy limits both upside and downside within a defined range.$EXPL$
WHERE id = 3083;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 740: State and Local Government Reporting
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 33, paragraph 16, derived tax revenues (such as sales taxes, income taxes, and motor fuel taxes) are recognized when the underlying exchange transaction occurs and the resources are available. For sales taxes, revenue is recognized when the retail sale takes place (the enabling event) provided collections are received within the availability period (typically 60 days after fiscal year-end for modified accrual basis). Unlike imposed nonexchange revenues such as property taxes, which are recognized in the period for which they are levied, derived tax revenues depend on the timing of the underlying taxable transaction rather than a governmental levy or assessment.$EXPL$
WHERE id = 740;

-- ID 741: State and Local Government Reporting
UPDATE questions SET
  explanation = $EXPL$Under GASB Statement No. 34, paragraph 69, internal service funds are classified as proprietary funds that account for goods or services provided to other departments or agencies within the same government on a cost-reimbursement basis. A centralized fleet maintenance garage serving all county departments is a classic example. Internal service funds use full accrual accounting and the economic resources measurement focus, reporting revenues, expenses, assets, and liabilities. Unlike enterprise funds, which are also proprietary funds but predominantly serve external customers and charge user fees, internal service funds serve internal governmental customers, whereas governmental funds use the modified accrual basis and current financial resources focus.$EXPL$
WHERE id = 741;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 689: Stock Compensation and Business Combinations
UPDATE questions SET
  explanation = $EXPL$Under ASC 718-10-35-2, compensation cost for restricted stock is measured at grant-date fair value and recognized over the vesting period. The original award of 8,000 shares at $25 equals $200,000. When 1,000 shares are forfeited in Year 2, the total compensation is revised to 7,000 shares x $25 = $175,000. Year 1 expense was $50,000 (8,000 x $25 / 4). In Year 2, cumulative expense through Year 2 should be $175,000 x 2/4 = $87,500, so Year 2 expense is $37,500. Unlike estimated forfeiture methods, which predict forfeitures upfront and adjust gradually, recognizing forfeitures as they occur requires a cumulative catch-up adjustment in the period of forfeiture.$EXPL$
WHERE id = 689;

COMMIT;
