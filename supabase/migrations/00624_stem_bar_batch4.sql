-- Migration: Stem expansion — BAR batch 4 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Capital Structure and Valuation, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Income Taxes Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (3 questions)
-- ============================================================

-- ID 703: Advanced Consolidations (13 words)
-- ORIGINAL STEM: Which of the following is a common structure that may require VIE consolidation?
UPDATE questions SET
  stem = $EXPL$Creston Industries established a special purpose entity to securitize a portfolio of receivables. The entity has minimal equity at risk and Creston absorbs the majority of expected losses. Which of the following is a common structure that may require VIE consolidation?$EXPL$
WHERE id = 703;

-- ID 3161: Advanced Consolidations (13 words)
-- ORIGINAL STEM: Intercompany sales between a parent and subsidiary must be eliminated in consolidation because:
UPDATE questions SET
  stem = $EXPL$During 2025, Alder Corp. sold $800,000 of inventory to its wholly owned subsidiary, Birch Inc. The controller is preparing year-end consolidated financial statements. Intercompany sales between a parent and subsidiary must be eliminated in consolidation because:$EXPL$
WHERE id = 3161;

-- ID 3165: Advanced Consolidations (13 words)
-- ORIGINAL STEM: Noncontrolling interest (NCI) in a subsidiary is reported on the consolidated balance sheet:
UPDATE questions SET
  stem = $EXPL$Falkner Group acquired 75% of Summit Technologies for $9 million, leaving 25% held by outside shareholders. As the controller prepares consolidated financial statements, noncontrolling interest (NCI) in Summit is reported on the consolidated balance sheet:$EXPL$
WHERE id = 3165;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (2 questions)
-- ============================================================

-- ID 14899: Advanced Lease Transactions (13 words)
-- ORIGINAL STEM: Under ASC 842, how does a lessee recognize expense for an operating lease?
UPDATE questions SET
  stem = $EXPL$On January 1, 2025, Birchwood Retail signs a seven-year operating lease for storefront space with annual payments starting at $50,000 and escalating 3% each year. Under ASC 842, how does Birchwood recognize expense for this operating lease?$EXPL$
WHERE id = 14899;

-- ID 3286: Advanced Lease Transactions (14 words)
-- ORIGINAL STEM: A sale-leaseback at above-market terms (sale price exceeds fair value) under ASC 842 requires:
UPDATE questions SET
  stem = $EXPL$Kelton Manufacturing sells its warehouse with a carrying value of $2 million to an investor for $3.5 million, though the fair value is only $3 million. Kelton simultaneously leases the building back. Under ASC 842, a sale-leaseback at above-market terms requires:$EXPL$
WHERE id = 3286;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (2 questions)
-- ============================================================

-- ID 662: Advanced Revenue and Intangibles (14 words)
-- ORIGINAL STEM: When allocating the transaction price to multiple performance obligations, the allocation is based on:
UPDATE questions SET
  stem = $EXPL$Vertex Solutions enters a $450,000 contract with a customer that includes software, implementation services, and two years of support. The controller must allocate the transaction price to each performance obligation. Under ASC 606, the allocation is based on:$EXPL$
WHERE id = 662;

-- ID 3107: Advanced Revenue and Intangibles (14 words)
-- ORIGINAL STEM: Under the output method of revenue recognition for long-term contracts, progress is measured by:
UPDATE questions SET
  stem = $EXPL$Bridgepoint Construction is building a custom office complex under a three-year contract and recognizes revenue over time. Management selects the output method to measure progress. Under this approach, progress is measured by:$EXPL$
WHERE id = 3107;

-- ============================================================
-- CAPITAL STRUCTURE AND VALUATION (2 questions)
-- ============================================================

-- ID 5218: Capital Structure and Valuation (12 words)
-- ORIGINAL STEM: In a discounted cash flow valuation, what does the terminal value represent?
UPDATE questions SET
  stem = $EXPL$An analyst at Whitfield Capital is building a five-year DCF model for a target acquisition. After projecting explicit-period cash flows, the analyst must estimate future value beyond the forecast window. In a discounted cash flow valuation, what does the terminal value represent?$EXPL$
WHERE id = 5218;

-- ID 5237: Capital Structure and Valuation (12 words)
-- ORIGINAL STEM: In corporate valuation, what does free cash flow to the firm represent?
UPDATE questions SET
  stem = $EXPL$Linden Advisors is valuing Praxon Industries by discounting cash flows at Praxon''s WACC. The analyst needs to identify the cash flow measure appropriate for all capital providers. In corporate valuation, what does free cash flow to the firm (FCFF) represent?$EXPL$
WHERE id = 5237;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 714: Derivatives and Hedging (15 words)
-- ORIGINAL STEM: In a net investment hedge, the effective portion of the hedging gain/loss is recognized in:
UPDATE questions SET
  stem = $EXPL$Garrison Corp. designates a euro-denominated forward contract as a net investment hedge of its German subsidiary. At year-end, the forward has an unrealized gain. The effective portion of the hedging gain or loss is recognized in:$EXPL$
WHERE id = 714;

-- ID 715: Derivatives and Hedging (15 words)
-- ORIGINAL STEM: If a company does not designate a derivative as a hedge, fair value changes are:
UPDATE questions SET
  stem = $EXPL$Trenton Industries purchases an interest rate cap to limit exposure on its variable-rate debt but does not formally designate the cap as a hedging instrument under ASC 815. Changes in the cap''s fair value are:$EXPL$
WHERE id = 715;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (5 questions)
-- ============================================================

-- ID 603: Financial Statement Analysis (10 words)
-- ORIGINAL STEM: What does the days sales in inventory (DSI) ratio measure?
UPDATE questions SET
  stem = $EXPL$Oakmont Hardware reported cost of goods sold of $1.2 million and average inventory of $200,000 for the year ended December 31, 2025. The CFO converts the inventory turnover into a time-based metric. What does the days sales in inventory (DSI) ratio measure?$EXPL$
WHERE id = 603;

-- ID 14944: Financial Statement Analysis (10 words)
-- ORIGINAL STEM: What is the formula for basic earnings per share (EPS)?
UPDATE questions SET
  stem = $EXPL$Redfield Corp. reported net income of $4.5 million for 2025. The company had 1 million weighted-average common shares outstanding and paid $300,000 in preferred dividends. What is the formula for basic earnings per share (EPS)?$EXPL$
WHERE id = 14944;

-- ID 7848: Financial Statement Analysis (11 words)
-- ORIGINAL STEM: In regression analysis, what does the coefficient of determination (R-squared) measure?
UPDATE questions SET
  stem = $EXPL$A cost analyst at Meridian Manufacturing runs a simple linear regression of overhead costs against machine hours and obtains an R-squared of 0.88. In regression analysis, what does the coefficient of determination (R-squared) measure?$EXPL$
WHERE id = 7848;

-- ID 7969: Financial Statement Analysis (11 words)
-- ORIGINAL STEM: Which of the following is classified as a leading economic indicator?
UPDATE questions SET
  stem = $EXPL$An economist at Pinecrest Investments is reviewing macroeconomic data to forecast the direction of the next business cycle. The analyst separates indicators into leading, coincident, and lagging categories. Which of the following is classified as a leading economic indicator?$EXPL$
WHERE id = 7969;

-- ID 14917: Financial Statement Analysis (11 words)
-- ORIGINAL STEM: The current ratio is classified under which category of financial ratios?
UPDATE questions SET
  stem = $EXPL$A credit analyst evaluating Henley Distribution calculates a current ratio of 1.85 using the company''s most recent balance sheet. The current ratio is classified under which category of financial ratios?$EXPL$
WHERE id = 14917;

-- ============================================================
-- FINANCIAL VALUATION METHODS (5 questions)
-- ============================================================

-- ID 13222: Financial Valuation Methods (12 words)
-- ORIGINAL STEM: What decision rule does the profitability index (PI) use for capital budgeting?
UPDATE questions SET
  stem = $EXPL$Cedarbrook Enterprises faces capital constraints and must rank several positive-NPV projects to maximize value per dollar invested. The finance team calculates a profitability index for each proposal. What decision rule does the profitability index (PI) use for capital budgeting?$EXPL$
WHERE id = 13222;

-- ID 13227: Financial Valuation Methods (12 words)
-- ORIGINAL STEM: What does the internal rate of return (IRR) represent in capital budgeting?
UPDATE questions SET
  stem = $EXPL$The capital budgeting committee at Northwind Logistics evaluates a proposed warehouse expansion by computing its internal rate of return. What does the IRR represent in capital budgeting?$EXPL$
WHERE id = 13227;

-- ID 14269: Financial Valuation Methods (12 words)
-- ORIGINAL STEM: What are Level 1 inputs in the ASC 820 fair value hierarchy?
UPDATE questions SET
  stem = $EXPL$Ashford Financial is measuring the fair value of its investment portfolio under ASC 820. The controller classifies each holding within the three-level hierarchy. What are Level 1 inputs in the ASC 820 fair value hierarchy?$EXPL$
WHERE id = 14269;

-- ID 645: Financial Valuation Methods (13 words)
-- ORIGINAL STEM: Which valuation multiple is most appropriate for comparing companies with different capital structures?
UPDATE questions SET
  stem = $EXPL$An analyst at Crestline Partners is comparing two potential acquisition targets in the same industry — one with minimal debt and the other highly leveraged. Which valuation multiple is most appropriate for comparing companies with different capital structures?$EXPL$
WHERE id = 645;

-- ID 1305: Financial Valuation Methods (13 words)
-- ORIGINAL STEM: ASC 820 fair value measurement and business valuation discounted cash flow (DCF) analysis:
UPDATE questions SET
  stem = $EXPL$A staff accountant is comparing the DCF model used by the M&A team to value an acquisition target with the ASC 820 fair value measurements recorded for the same assets post-acquisition. ASC 820 fair value measurement and business valuation DCF analysis:$EXPL$
WHERE id = 1305;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (2 questions)
-- ============================================================

-- ID 14434: Foreign Currency Transactions (17 words)
-- ORIGINAL STEM: Under ASC 830, the functional currency of an entity is defined as the currency of which environment?
UPDATE questions SET
  stem = $EXPL$Helios Corp., a U.S. parent, is evaluating whether its Brazilian subsidiary''s functional currency is the real or the dollar. Under ASC 830, the functional currency of an entity is defined as the currency of which environment?$EXPL$
WHERE id = 14434;

-- ID 14445: Foreign Currency Transactions (17 words)
-- ORIGINAL STEM: Under ASC 830, the reporting currency is defined as the currency in which an entity does what?
UPDATE questions SET
  stem = $EXPL$Windgate International operates subsidiaries in Japan and Germany but presents consolidated financial statements in U.S. dollars. Under ASC 830, the reporting currency is defined as the currency in which an entity does what?$EXPL$
WHERE id = 14445;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (3 questions)
-- ============================================================

-- ID 3406: Fund-to-Government-Wide Reconciliation (16 words)
-- ORIGINAL STEM: The amortization of bond premium on the government-wide statements reduces interest expense. On the fund statements:
UPDATE questions SET
  stem = $EXPL$The City of Waverly issued $10 million in general obligation bonds at a premium of $250,000. On the government-wide statements, the premium is amortized to reduce interest expense over the life of the bonds. On the fund statements:$EXPL$
WHERE id = 3406;

-- ID 14341: Fund-to-Government-Wide Reconciliation (16 words)
-- ORIGINAL STEM: What are the three categories of net position reported on the government-wide statement of net position?
UPDATE questions SET
  stem = $EXPL$The finance director of Briarwood County is preparing the government-wide statement of net position for the fiscal year. She must classify the government''s residual amounts into the proper categories. What are the three categories of net position reported on this statement?$EXPL$
WHERE id = 14341;

-- ID 1192: Fund-to-Government-Wide Reconciliation (17 words)
-- ORIGINAL STEM: Which of the following is a typical reconciling adjustment when converting governmental fund statements to government-wide statements?
UPDATE questions SET
  stem = $EXPL$The Town of Cedarville is preparing the GASB 34 reconciliation between its governmental fund balance sheet and the government-wide statement of net position. Which of the following is a typical reconciling adjustment in this conversion?$EXPL$
WHERE id = 1192;

-- ============================================================
-- INCOME TAXES ADVANCED (1 questions)
-- ============================================================

-- ID 4888: Income Taxes Advanced (14 words)
-- ORIGINAL STEM: Under ASC 740, the tax provision for an interim period is computed using the:
UPDATE questions SET
  stem = $EXPL$Quasar Technologies is preparing its first-quarter 10-Q filing and must determine the income tax provision for the three-month period. Under ASC 740, the tax provision for an interim period is computed using the:$EXPL$
WHERE id = 4888;

-- ============================================================
-- INTERFUND TRANSACTIONS (3 questions)
-- ============================================================

-- ID 14293: Interfund Transactions (13 words)
-- ORIGINAL STEM: Under GASB 34, which two types of interfund activity are classified as nonreciprocal?
UPDATE questions SET
  stem = $EXPL$The City of Larkspur''s General Fund moved $2 million to the Debt Service Fund and reimbursed the Special Revenue Fund $15,000 for a misclassified expenditure. Under GASB 34, which two types of interfund activity are classified as nonreciprocal?$EXPL$
WHERE id = 14293;

-- ID 14294: Interfund Transactions (13 words)
-- ORIGINAL STEM: What distinguishes interfund services provided and used from other types of interfund activity?
UPDATE questions SET
  stem = $EXPL$Mapleview County''s Internal Service Fund bills the General Fund $120,000 for fleet maintenance at rates comparable to outside vendors. What distinguishes interfund services provided and used from other types of interfund activity?$EXPL$
WHERE id = 14294;

-- ID 3342: Interfund Transactions (14 words)
-- ORIGINAL STEM: Long-term interfund loans that are not expected to be repaid should be reclassified as:
UPDATE questions SET
  stem = $EXPL$Three years ago, the City of Thornton''s General Fund advanced $500,000 to the Capital Projects Fund. Management now acknowledges that repayment is unlikely. Long-term interfund loans that are not expected to be repaid should be reclassified as:$EXPL$
WHERE id = 3342;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (2 questions)
-- ============================================================

-- ID 3382: Internal-Use Software and Cloud Computing (13 words)
-- ORIGINAL STEM: Under ASU 2018-15, the amortization period for capitalized cloud computing implementation costs is:
UPDATE questions SET
  stem = $EXPL$Delphi Analytics signs a five-year SaaS contract classified as a service arrangement and capitalizes $350,000 of implementation costs during the application development stage. Under ASU 2018-15, the amortization period for these capitalized cloud computing implementation costs is:$EXPL$
WHERE id = 3382;

-- ID 3258: Internal-Use Software and Cloud Computing (14 words)
-- ORIGINAL STEM: When a company abandons an internal-use software project, the unamortized capitalized costs should be:
UPDATE questions SET
  stem = $EXPL$Orion Health Systems spent $1.2 million developing a custom patient-scheduling application under ASC 350-40. After a strategic shift, management decides to abandon the project before go-live. The unamortized capitalized costs should be:$EXPL$
WHERE id = 3258;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (5 questions)
-- ============================================================

-- ID 15065: Pension and Postretirement Benefits (14 words)
-- ORIGINAL STEM: How does the accumulated benefit obligation (ABO) differ from the projected benefit obligation (PBO)?
UPDATE questions SET
  stem = $EXPL$Hawkins Industries has a defined benefit pension plan. At December 31, 2025, the actuary reports both an ABO and a PBO. How does the accumulated benefit obligation (ABO) differ from the projected benefit obligation (PBO)?$EXPL$
WHERE id = 15065;

-- ID 15066: Pension and Postretirement Benefits (14 words)
-- ORIGINAL STEM: Which pension-related item is initially recognized in other comprehensive income rather than net income?
UPDATE questions SET
  stem = $EXPL$Atlas Corp.''s actuary revised the mortality assumption for the company''s defined benefit plan, creating a $1.4 million actuarial loss at year-end. Which pension-related item is initially recognized in other comprehensive income rather than net income?$EXPL$
WHERE id = 15066;

-- ID 15076: Pension and Postretirement Benefits (14 words)
-- ORIGINAL STEM: What is the "substantive plan" concept in accounting for postretirement benefits under ASC 715-60?
UPDATE questions SET
  stem = $EXPL$Westbrook Manufacturing provides retiree health benefits. Although the written plan document caps annual benefits at $8,000, the company has consistently paid amounts exceeding that cap. What is the "substantive plan" concept in accounting for postretirement benefits under ASC 715-60?$EXPL$
WHERE id = 15076;

-- ID 1087: Pension and Postretirement Benefits (15 words)
-- ORIGINAL STEM: Under ASU 2017-07, which component of net periodic pension cost is reported within operating income?
UPDATE questions SET
  stem = $EXPL$Calloway Inc. reports a net periodic pension cost of $2.8 million for 2025. The controller is separating the components between operating and non-operating sections of the income statement. Under ASU 2017-07, which component is reported within operating income?$EXPL$
WHERE id = 1087;

-- ID 15013: Pension and Postretirement Benefits (15 words)
-- ORIGINAL STEM: Which of the following is a component of net periodic pension cost under ASC 715?
UPDATE questions SET
  stem = $EXPL$Glenmore Corp. sponsors a defined benefit pension plan with a beginning PBO of $12 million and plan assets of $10 million. The controller is computing the annual pension expense. Which of the following is a component of net periodic pension cost under ASC 715?$EXPL$
WHERE id = 15013;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (4 questions)
-- ============================================================

-- ID 12990: Prospective Analysis and Forecasting (12 words)
-- ORIGINAL STEM: What does the term "forecast horizon" refer to in prospective financial analysis?
UPDATE questions SET
  stem = $EXPL$An analyst at Pinnacle Advisory is preparing a financial forecast for a client seeking bank financing. The analyst must determine how far into the future to project cash flows. What does the term "forecast horizon" refer to in prospective financial analysis?$EXPL$
WHERE id = 12990;

-- ID 12996: Prospective Analysis and Forecasting (12 words)
-- ORIGINAL STEM: Under AICPA guidelines, prospective financial statements should present information in what format?
UPDATE questions SET
  stem = $EXPL$Ryland & Associates CPAs is compiling prospective financial statements for a client pursuing venture capital funding. The engagement partner reviews AICPA guidelines for proper presentation. Under those guidelines, prospective financial statements should present information in what format?$EXPL$
WHERE id = 12996;

-- ID 624: Prospective Analysis and Forecasting (13 words)
-- ORIGINAL STEM: In exponential smoothing, a higher alpha value (closer to 1.0) makes the forecast:
UPDATE questions SET
  stem = $EXPL$A demand planner at Beacon Supply is selecting the smoothing constant (alpha) for an exponential smoothing model used to forecast monthly sales. Increasing alpha from 0.2 to 0.8 would make the forecast:$EXPL$
WHERE id = 624;

-- ID 14796: Prospective Analysis and Forecasting (13 words)
-- ORIGINAL STEM: What is the purpose of a pro forma balance sheet in financial planning?
UPDATE questions SET
  stem = $EXPL$The CFO of Ridgemont Hospitality asks the FP&A team to prepare a pro forma balance sheet as part of the company''s 2026 strategic plan. What is the purpose of this pro forma balance sheet in financial planning?$EXPL$
WHERE id = 14796;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (4 questions)
-- ============================================================

-- ID 14061: Risk Management and Economics (12 words)
-- ORIGINAL STEM: In risk classification, country risk (also called political risk) is categorized as:
UPDATE questions SET
  stem = $EXPL$Vantage Global is evaluating an infrastructure investment in an emerging market where recent government instability has raised concerns about asset expropriation. In risk classification, country risk (also called political risk) is categorized as:$EXPL$
WHERE id = 14061;

-- ID 14773: Risk Management and Economics (12 words)
-- ORIGINAL STEM: What is the simple deposit multiplier in a fractional reserve banking system?
UPDATE questions SET
  stem = $EXPL$An economics instructor illustrates how a $1,000 initial deposit expands through the banking system when the required reserve ratio is 10%. What is the simple deposit multiplier in a fractional reserve banking system?$EXPL$
WHERE id = 14773;

-- ID 655: Risk Management and Economics (14 words)
-- ORIGINAL STEM: When NPV and IRR give conflicting rankings for mutually exclusive projects, the analyst should:
UPDATE questions SET
  stem = $EXPL$Hartwell Corp. is choosing between two mutually exclusive equipment upgrades. Project A has a higher NPV but a lower IRR than Project B due to differences in scale. When NPV and IRR give conflicting rankings, the analyst should:$EXPL$
WHERE id = 655;

-- ID 3074: Risk Management and Economics (14 words)
-- ORIGINAL STEM: The yield curve is currently inverted (short-term rates exceed long-term rates). This typically signals:
UPDATE questions SET
  stem = $EXPL$In March 2026, the chief economist at Crestfield Bank notes that 2-year Treasury yields exceed 10-year yields by 40 basis points. The yield curve is currently inverted. This typically signals:$EXPL$
WHERE id = 3074;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 3238: State and Local Government Reporting (12 words)
-- ORIGINAL STEM: A permanent fund is a governmental fund that reports resources that are:
UPDATE questions SET
  stem = $EXPL$A local benefactor donates $5 million to the City of Ashford with the stipulation that only the investment earnings may be spent on park maintenance. A permanent fund is a governmental fund that reports resources that are:$EXPL$
WHERE id = 3238;

-- ID 3245: State and Local Government Reporting (12 words)
-- ORIGINAL STEM: Deferred outflows of resources on a government's statement of net position represent:
UPDATE questions SET
  stem = $EXPL$The auditor of Brookhaven Township notes a $1.8 million line item for deferred outflows of resources on the government-wide statement of net position related to pensions. Deferred outflows of resources on this statement represent:$EXPL$
WHERE id = 3245;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (3 questions)
-- ============================================================

-- ID 686: Stock Compensation and Business Combinations (13 words)
-- ORIGINAL STEM: Under ASC 718, what is the modification floor rule for stock compensation awards?
UPDATE questions SET
  stem = $EXPL$Prisma Technologies modifies the terms of outstanding stock options held by key executives, reducing the exercise price from $40 to $30. Under ASC 718, what is the modification floor rule for stock compensation awards?$EXPL$
WHERE id = 686;

-- ID 3155: Stock Compensation and Business Combinations (13 words)
-- ORIGINAL STEM: Under ASC 805, the acquirer in a business combination is the entity that:
UPDATE questions SET
  stem = $EXPL$In a January 2026 transaction, Colton Enterprises merges with Vail Industries in an exchange of equity interests. The accountants must determine which entity is the acquirer. Under ASC 805, the acquirer in a business combination is the entity that:$EXPL$
WHERE id = 3155;

-- ID 3362: Stock Compensation and Business Combinations (13 words)
-- ORIGINAL STEM: Under ASC 805, which of the following is NOT an identifiable intangible asset?
UPDATE questions SET
  stem = $EXPL$Monarch Holdings acquires all of RiverTech for $15 million. The purchase price allocation team is identifying intangible assets to recognize separately from goodwill. Under ASC 805, which of the following is NOT an identifiable intangible asset?$EXPL$
WHERE id = 3362;

COMMIT;
