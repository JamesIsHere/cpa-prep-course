-- Migration: Bloom's L1 rebalancing — BAR batch 1 (23 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 23 L2 (Application) questions to L1 (Remember/Understand) depth for BAR section
-- Affected topics: Financial Statement Analysis, Derivatives and Hedging, Prospective Analysis and Forecasting, Advanced Revenue and Intangibles, Advanced Lease Transactions, Risk Management and Economics, Stock Compensation and Business Combinations, Pension and Postretirement Benefits, Capital Structure and Valuation, Financial Valuation Methods, Fund-to-Government-Wide Reconciliation, Foreign Currency Transactions, Income Taxes Advanced, State and Local Government Reporting, Internal-Use Software and Cloud Computing, Intangible Assets Advanced, Business Combinations, Advanced Consolidations

BEGIN;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (2 questions)
-- ============================================================

-- ID 602: Financial Statement Analysis — DuPont analysis components
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Which of the following describes the three components of the DuPont analysis formula for return on equity?',
  choices = '["Net profit margin, asset turnover, and equity multiplier", "Gross profit margin, debt-to-equity ratio, and current ratio", "Operating margin, inventory turnover, and interest coverage ratio", "Return on assets, dividend payout ratio, and price-to-earnings ratio"]'::jsonb,
  explanation = 'Correct (A): The DuPont analysis decomposes return on equity (ROE) into three components: net profit margin (net income / revenue), asset turnover (revenue / total assets), and equity multiplier (total assets / shareholders equity). Multiplying these three ratios yields ROE. (B) is wrong because gross profit margin, debt-to-equity, and current ratio are not the DuPont components. (C) is wrong because operating margin and interest coverage are profitability and solvency measures, not DuPont factors. (D) is wrong because dividend payout and P/E ratios relate to shareholder returns and valuation, not the DuPont decomposition.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 602;

-- ID 603: Financial Statement Analysis — Days sales in inventory definition
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'What does the days sales in inventory (DSI) ratio measure?',
  choices = '["The percentage of inventory that becomes obsolete each year", "The average number of days a company takes to sell its entire inventory", "The number of days between purchasing inventory and collecting cash from customers", "The ratio of ending inventory to total assets"]'::jsonb,
  explanation = 'Correct (B): Days sales in inventory (DSI) measures the average number of days it takes a company to turn its inventory into sales. It is calculated as (average inventory / cost of goods sold) x 365. A lower DSI indicates faster inventory turnover. (A) is wrong because DSI measures turnover speed, not obsolescence rates. (C) is wrong because that describes the cash conversion cycle, which includes receivables collection. (D) is wrong because that describes an inventory-to-assets ratio, not a time-based turnover measure.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 603;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 708: Derivatives and Hedging — Cash flow hedge reporting location
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under ASC 815, where is the effective portion of gain or loss on a cash flow hedge initially reported?',
  choices = '["As a direct adjustment to retained earnings", "In net income as a component of operating expenses", "In other comprehensive income (OCI)", "In the footnotes only, with no financial statement recognition"]'::jsonb,
  explanation = 'Correct (C): Under ASC 815-30-35, the effective portion of the gain or loss on a derivative designated as a cash flow hedge is reported in other comprehensive income (OCI). It is later reclassified into earnings when the hedged forecasted transaction affects earnings. (B) is wrong because the effective portion bypasses net income until the hedged item impacts earnings. (A) is wrong because retained earnings are not directly adjusted for hedge gains or losses. (D) is wrong because ASC 815 requires financial statement recognition, not footnote-only disclosure.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 708;

-- ID 709: Derivatives and Hedging — Derivative characteristics under ASC 815
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under ASC 815, which of the following is a required characteristic of a derivative instrument?',
  choices = '["It must settle only in cash at the end of each reporting period", "It must be traded on a public exchange", "It requires a large initial net investment equal to the notional amount", "It has one or more underlyings and one or more notional amounts or payment provisions"]'::jsonb,
  explanation = 'Correct (D): Under ASC 815-10-15-83, a derivative must have (1) one or more underlyings and one or more notional amounts or payment provisions, (2) no initial net investment or a smaller initial net investment than would be required for contracts with similar market response, and (3) net settlement or equivalent. (B) is wrong because derivatives need not be exchange-traded. (C) is wrong because derivatives require little or no initial net investment, not a large one. (A) is wrong because net settlement can occur in forms other than cash and is not required at each period end.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 709;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (2 questions)
-- ============================================================

-- ID 616: Prospective Analysis and Forecasting — Forecast vs projection distinction
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Under AICPA standards, what distinguishes a financial forecast from a financial projection?',
  choices = '["A forecast presents expected results under expected conditions, while a projection presents results under one or more hypothetical assumptions", "A forecast covers five or more years, while a projection covers less than one year", "A forecast must be audited, while a projection requires only a review", "A forecast is prepared by external accountants, while a projection is prepared by internal management"]'::jsonb,
  explanation = 'Correct (A): Under AICPA attestation standards (AT-C 305), a financial forecast presents an entitys expected financial position and results based on conditions the responsible party expects to exist. A financial projection presents results based on one or more hypothetical assumptions (what-if scenarios). Only forecasts may be distributed for general use; projections are limited to parties who can negotiate directly with the responsible party. (B) is wrong because the distinction is about assumptions, not time horizon. (C) is wrong because neither requires a specific level of assurance by definition. (D) is wrong because both can be prepared by management.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 616;

-- ID 618: Prospective Analysis and Forecasting — Percentage-of-sales method definition
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'What is the purpose of the percentage-of-sales forecasting method?',
  choices = '["To calculate the exact sales price needed to achieve a target profit margin", "To project future financial statement items that vary proportionally with sales revenue", "To determine the percentage of total revenue attributable to each product line", "To estimate the probability of achieving budgeted sales targets"]'::jsonb,
  explanation = 'Correct (B): The percentage-of-sales method projects future balance sheet and income statement items by assuming they maintain a stable relationship with sales revenue. Items like accounts receivable, inventory, and cost of goods sold are forecast as a percentage of projected sales. Items such as long-term debt and equity typically do not vary proportionally with sales and are excluded. (A) is wrong because the method forecasts financial statements, not pricing decisions. (C) is wrong because it describes revenue segmentation, not forecasting. (D) is wrong because it describes probability analysis, not the percentage-of-sales approach.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 618;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (2 questions)
-- ============================================================

-- ID 661: Advanced Revenue and Intangibles — Variable consideration estimation methods
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under ASC 606, what are the two methods for estimating variable consideration in a revenue contract?',
  choices = '["The cost-plus method and the adjusted market assessment approach", "The fair value method and the residual approach", "The expected value method and the most likely amount method", "The percentage-of-completion method and the completed-contract method"]'::jsonb,
  explanation = 'Correct (C): Under ASC 606-10-32-8, variable consideration is estimated using either the expected value method (probability-weighted average of possible outcomes) or the most likely amount method (single most likely outcome). The entity selects the method that better predicts the amount of consideration to which it will be entitled. (B) is wrong because fair value and residual approach relate to standalone selling price allocation, not variable consideration estimation. (A) is wrong because those are methods for determining standalone selling prices. (D) is wrong because those are revenue recognition timing methods under prior GAAP, not variable consideration estimation approaches.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 661;

-- ID 664: Advanced Revenue and Intangibles — Contract modification adding distinct goods
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under ASC 606, how is a contract modification treated when it adds distinct goods or services at their standalone selling prices?',
  choices = '["As a prospective adjustment applied only to the remaining performance obligations", "As a termination of the original contract and creation of a new one", "As a cumulative catch-up adjustment to revenue already recognized", "As a separate contract, independent of the original agreement"]'::jsonb,
  explanation = 'Correct (D): Under ASC 606-10-25-12, a contract modification is treated as a separate contract when the modification adds distinct goods or services and the contract price increases by an amount that reflects their standalone selling prices. The original contract continues unaffected. (B) is wrong because termination-and-restatement treatment applies when added goods are distinct but not at standalone prices. (C) is wrong because cumulative catch-up applies when the modification changes existing (not distinct) performance obligations. (A) is wrong because prospective treatment applies to modifications adding distinct goods not priced at standalone selling prices.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 664;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (2 questions)
-- ============================================================

-- ID 1077: Advanced Lease Transactions — Failed sale-leaseback treatment
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Under ASC 842, how does a seller-lessee account for cash received in a sale-leaseback transaction that fails to qualify as a sale?',
  choices = '["As a financing obligation (loan), not as sale proceeds", "As deferred revenue amortized over the lease term", "As a gain recognized immediately in net income", "As a reduction of the carrying amount of the underlying asset"]'::jsonb,
  explanation = 'Correct (A): Under ASC 842-40-25, when a sale-leaseback transaction does not qualify as a sale (because the transfer does not meet the criteria in ASC 606), the seller-lessee does not derecognize the asset. The cash received is accounted for as a financial liability (financing obligation). (B) is wrong because deferred revenue treatment applies to advance payments for performance obligations, not failed sale-leasebacks. (C) is wrong because no sale has occurred, so no gain can be recognized. (D) is wrong because the asset remains on the books at its existing carrying amount.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1077;

-- ID 1080: Advanced Lease Transactions — Lease modification accounting
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under ASC 842, what is required when an operating lease is modified to extend its term?',
  choices = '["The lessee continues with the original lease liability and recognizes the extension costs as incurred", "The lessee remeasures the lease liability using a revised discount rate and adjusts the right-of-use asset", "The lessee derecognizes the original lease and records a new lease from the modification date", "The lessee records the additional lease payments as a separate operating lease"]'::jsonb,
  explanation = 'Correct (B): Under ASC 842-10-25-8 through 25-15, when a lease modification extends the lease term and is not treated as a separate contract, the lessee remeasures the lease liability at the modification date using a revised discount rate. The right-of-use asset is adjusted by the amount of the change in the lease liability. (A) is wrong because the lease liability must be remeasured, not left unchanged. (C) is wrong because modifications that are not separate contracts do not require derecognition and rerecording. (D) is wrong because extensions to an existing lease are accounted for as modifications, not separate leases.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1080;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (1 question)
-- ============================================================

-- ID 657: Risk Management and Economics — Profitability index definition
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What does the profitability index measure in capital budgeting?',
  choices = '["The number of years required to recover the initial investment", "The difference between total cash inflows and total cash outflows over a project life", "The ratio of the present value of future cash flows to the initial investment", "The internal rate of return divided by the cost of capital"]'::jsonb,
  explanation = 'Correct (C): The profitability index (PI) is calculated as the present value of future cash flows divided by the initial investment. A PI greater than 1.0 indicates the project creates value. It is especially useful for ranking projects when capital is limited because it measures value created per dollar invested. (A) is wrong because that describes the payback period. (B) is wrong because that describes net cash flow, not the profitability index. (D) is wrong because PI is not derived from the internal rate of return.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 657;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (1 question)
-- ============================================================

-- ID 686: Stock Compensation and Business Combinations — ASC 718 modification floor rule
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under ASC 718, what is the modification floor rule for stock compensation awards?',
  choices = '["Modified awards must be revalued to zero and re-granted as new awards from the modification date", "The exercise price of a modified option must be at least equal to the stock price on the modification date", "Any modification that increases the fair value of an award must be approved by shareholders", "Total compensation cost after a modification cannot be less than the fair value of the original award at its grant date"]'::jsonb,
  explanation = 'Correct (D): Under ASC 718-20-35-3, when a share-based payment award is modified, the minimum total compensation cost recognized is the grant-date fair value of the original award. If the modification increases the fair value, incremental compensation cost is recognized. If the modification decreases the fair value, the entity continues to recognize the original grant-date fair value. (B) is wrong because the floor rule relates to compensation cost measurement, not exercise price minimums. (C) is wrong because ASC 718 does not require shareholder approval for modifications. (A) is wrong because modifications do not reset the award to zero.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 686;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (1 question)
-- ============================================================

-- ID 1087: Pension and Postretirement Benefits — Pension cost operating component
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Under ASU 2017-07, which component of net periodic pension cost is reported within operating income?',
  choices = '["Service cost only", "Service cost and interest cost", "All components of net periodic pension cost", "Interest cost, expected return on plan assets, and amortization of prior service cost"]'::jsonb,
  explanation = 'Correct (A): Under ASU 2017-07 (Compensation — Retirement Benefits), only the service cost component of net periodic pension cost is reported within operating income on the income statement. All other components — interest cost, expected return on plan assets, amortization of prior service cost, and amortization of net actuarial gains/losses — are reported below the operating income subtotal. (B) is wrong because interest cost is excluded from operating income under ASU 2017-07. (C) is wrong because only service cost, not all components, appears in operating income. (D) is wrong because those components are reported outside of operating income.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1087;

-- ============================================================
-- CAPITAL STRUCTURE AND VALUATION (1 question)
-- ============================================================

-- ID 630: Capital Structure and Valuation — Pecking order theory definition
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Which of the following best describes the pecking order theory of capital structure?',
  choices = '["Firms maintain a fixed target debt-to-equity ratio and adjust financing annually to reach it", "Firms prefer internal financing first, then debt, and issue equity only as a last resort", "Firms always prefer equity financing because it avoids the obligation to make fixed payments", "Firms choose the mix of debt and equity that minimizes the weighted average cost of capital"]'::jsonb,
  explanation = 'Correct (B): The pecking order theory (Myers and Majluf, 1984) states that firms prefer financing sources with the least information asymmetry. Internal funds are preferred first, followed by debt, with equity issuance as a last resort because it signals that management believes shares are overvalued. (A) is wrong because that describes the trade-off theory with a target ratio. (C) is wrong because pecking order theory ranks equity last, not first. (D) is wrong because that describes the optimal capital structure concept, not the pecking order hierarchy.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 630;

-- ============================================================
-- FINANCIAL VALUATION METHODS (1 question)
-- ============================================================

-- ID 642: Financial Valuation Methods — Enterprise value definition
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'What is the definition of enterprise value in business valuation?',
  choices = '["The present value of expected future dividends discounted at the cost of equity", "The book value of total assets minus total liabilities on the balance sheet", "The total value of a firm to all capital providers, calculated as market capitalization plus total debt minus cash and cash equivalents", "The market price per share multiplied by the number of shares outstanding"]'::jsonb,
  explanation = 'Correct (C): Enterprise value (EV) represents the total value of a firm to both equity and debt holders. It is commonly calculated as market capitalization plus total debt plus minority interest plus preferred equity minus cash and cash equivalents. EV is used in valuation multiples such as EV/EBITDA because it reflects the value of the entire business regardless of capital structure. (A) is wrong because that describes the dividend discount model for equity value. (B) is wrong because that describes book value of equity, not enterprise value. (D) is wrong because that describes market capitalization, which is only one component of enterprise value.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 642;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (1 question)
-- ============================================================

-- ID 1192: Fund-to-Government-Wide Reconciliation — Types of reconciling adjustments
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Which of the following is a typical reconciling adjustment when converting governmental fund statements to government-wide statements?',
  choices = '["Fund balance is reclassified as unrestricted net position without any other adjustments", "Cash balances are restated from historical cost to fair value in the government-wide statements", "All interfund transfers are eliminated and replaced with external revenue in the government-wide statements", "Capital asset purchases reported as expenditures in the funds are reclassified as assets in the government-wide statements"]'::jsonb,
  explanation = 'Correct (D): Under GASB 34, governmental funds use the current financial resources measurement focus, which reports capital outlays as expenditures. In the government-wide statements (economic resources focus), those same outlays are capitalized as assets and depreciated over their useful lives. This is one of the most common reconciling items between fund-level and government-wide statements. (B) is wrong because cash is not restated to fair value. (C) is wrong because interfund transfers between governmental funds are eliminated in the government-wide statements, but they are not replaced with external revenue. (A) is wrong because the reconciliation involves multiple types of adjustments beyond simple reclassification.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1192;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 question)
-- ============================================================

-- ID 5352: Foreign Currency Transactions — Highly inflationary economy rule
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Under ASC 830, what is the required accounting treatment for a foreign subsidiary operating in a highly inflationary economy?',
  choices = '["Use the temporal method (remeasurement) as if the functional currency were the reporting currency", "Use the current rate method and report all translation adjustments in other comprehensive income", "Discontinue consolidation until the economy is no longer highly inflationary", "Convert all financial statements at the historical exchange rate as of the subsidiary acquisition date"]'::jsonb,
  explanation = 'Correct (A): Under ASC 830-10-45-11, when a foreign subsidiary operates in a highly inflationary economy (cumulative inflation of approximately 100% or more over three years), the financial statements must be remeasured as if the functional currency were the reporting currency (the parent company currency). This requires use of the temporal method. (B) is wrong because the current rate method is used when the local currency is the functional currency in a non-highly inflationary economy. (C) is wrong because consolidation is not discontinued; the remeasurement approach is applied instead. (D) is wrong because the temporal method uses a mix of historical and current rates, not a single historical rate.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5352;

-- ============================================================
-- INCOME TAXES ADVANCED (1 question)
-- ============================================================

-- ID 5391: Income Taxes Advanced — Uncertain tax position measurement
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under ASC 740-10, how is an uncertain tax position measured after it meets the more-likely-than-not recognition threshold?',
  choices = '["At the full amount of the tax benefit claimed on the return", "At the largest amount of benefit that is greater than 50% likely to be realized upon settlement", "At the expected value of all possible settlement outcomes weighted by probability", "At the minimum amount of benefit that the taxing authority would accept"]'::jsonb,
  explanation = 'Correct (B): Under ASC 740-10-30-7, once an uncertain tax position (UTP) meets the more-likely-than-not recognition threshold, it is measured at the largest amount of tax benefit that is greater than 50% likely to be realized upon ultimate settlement with the taxing authority. This is sometimes called the cumulative probability approach. (A) is wrong because the full claimed amount is recognized only if there is greater than 50% likelihood of realizing the entire benefit. (C) is wrong because ASC 740 uses the largest-amount-greater-than-50% method, not an expected value approach. (D) is wrong because the measurement looks at what is more likely than not to be realized, not the minimum acceptable to the authority.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5391;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (1 question)
-- ============================================================

-- ID 722: State and Local Government Reporting — General fund as a major fund
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'Under GASB standards, which governmental fund type always qualifies as a major fund regardless of its size?',
  choices = '["The capital projects fund", "The debt service fund", "The general fund", "The permanent fund"]'::jsonb,
  explanation = 'Correct (C): Under GASB Statement No. 34, paragraph 76, the general fund is always reported as a major fund regardless of whether it meets the quantitative thresholds (10% of total governmental funds and 5% of total governmental and enterprise funds combined). All other governmental fund types — debt service, capital projects, special revenue, and permanent funds — must meet the size thresholds to qualify as major funds. (B) is wrong because debt service funds are major only if they meet the quantitative criteria. (A) is wrong because capital projects funds must also meet the thresholds. (D) is wrong because permanent funds are not automatically classified as major funds.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 722;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (1 question)
-- ============================================================

-- ID 1067: Internal-Use Software and Cloud Computing — Capitalizable costs
-- correct_index = 3 (was 0; swapped A↔D)
UPDATE questions SET
  stem = 'Under ASC 350-40, which costs are capitalizable during the application development stage of an internal-use software project?',
  choices = '["General and administrative overhead allocated to the project", "Preliminary project evaluation and alternative assessment costs", "Training costs for employees who will use the software", "Coding, testing, and installation costs directly associated with the software"]'::jsonb,
  explanation = 'Correct (D): Under ASC 350-40-25, costs incurred during the application development stage are capitalized. These include coding, software configuration, testing, and installation costs directly associated with developing the software for its intended use. (B) is wrong because preliminary project stage costs (evaluating alternatives, determining technology) are expensed as incurred under ASC 350-40-25-2. (C) is wrong because training costs are always expensed regardless of the project stage. (A) is wrong because general and administrative overhead is expensed, not capitalized, for internal-use software projects.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1067;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 question)
-- ============================================================

-- ID 5371: Intangible Assets Advanced — Finite-life intangible amortization rule
-- correct_index = 0 (unchanged)
UPDATE questions SET
  stem = 'Under ASC 350, how are intangible assets with finite useful lives accounted for after initial recognition?',
  choices = '["They are amortized over their useful lives and tested for impairment when events indicate a possible decline in value", "They are carried at cost indefinitely and tested for impairment annually", "They are revalued to fair value at each reporting date with changes in other comprehensive income", "They are expensed immediately in the period of acquisition"]'::jsonb,
  explanation = 'Correct (A): Under ASC 350-30-35, intangible assets with finite useful lives are amortized over their estimated useful lives, typically on a straight-line basis unless another pattern is more representative. They are reviewed for impairment under ASC 360-10 when events or circumstances indicate the carrying amount may not be recoverable. (B) is wrong because that describes the treatment for indefinite-life intangibles, not finite-life intangibles. (C) is wrong because U.S. GAAP does not permit revaluation of intangible assets to fair value after initial recognition. (D) is wrong because finite-life intangibles are capitalized and amortized, not immediately expensed.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5371;

-- ============================================================
-- BUSINESS COMBINATIONS (1 question)
-- ============================================================

-- ID 5331: Business Combinations — Bargain purchase definition
-- correct_index = 1 (was 0; swapped A↔B)
UPDATE questions SET
  stem = 'Under ASC 805, what is a bargain purchase in a business combination?',
  choices = '["An acquisition in which the purchase price exceeds the fair value of the target company total assets", "An acquisition in which the fair value of identifiable net assets acquired exceeds the consideration transferred", "An acquisition completed below the book value of the target but above its fair value", "An acquisition in which the acquirer pays exactly the fair value of identifiable net assets"]'::jsonb,
  explanation = 'Correct (B): Under ASC 805-30-25-2, a bargain purchase occurs when the fair value of the identifiable net assets acquired exceeds the aggregate of consideration transferred, any noncontrolling interest, and any previously held equity interest. The excess is recognized as a gain in earnings after the acquirer reassesses whether all assets and liabilities have been properly identified and measured. (A) is wrong because that describes a situation that would generate goodwill, not a bargain purchase. (C) is wrong because a bargain purchase is defined by reference to fair value of net assets versus consideration, not book value. (D) is wrong because paying exactly fair value results in neither goodwill nor a bargain purchase gain.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5331;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (1 question)
-- ============================================================

-- ID 691: Advanced Consolidations — Downstream intercompany elimination rule
-- correct_index = 2 (was 0; swapped A↔C)
UPDATE questions SET
  stem = 'In consolidated financial statements, what is the rule for eliminating downstream intercompany sales?',
  choices = '["Intercompany profit is eliminated only if the goods remain in the subsidiary ending inventory", "Only the parent company proportionate share of intercompany profit is eliminated", "100% of the intercompany profit is eliminated against the parent company, regardless of the noncontrolling interest percentage", "Downstream sales do not require elimination because the parent controls the transaction"]'::jsonb,
  explanation = 'Correct (C): In a downstream sale (parent sells to subsidiary), 100% of the unrealized intercompany profit is eliminated in consolidation. The full elimination is charged against the parent (selling entity) because the parent initiated the transaction. The noncontrolling interest is not affected by downstream eliminations. This differs from upstream sales, where the elimination is allocated between the parent and noncontrolling interest. (B) is wrong because proportionate elimination applies to upstream sales, not downstream. (A) is wrong because the elimination rule applies regardless of whether goods are resold — if goods remain in inventory, unrealized profit must be eliminated. (D) is wrong because all intercompany transactions, including downstream sales, must be eliminated in consolidation.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 691;

COMMIT;
