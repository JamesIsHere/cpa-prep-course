-- Migration: Stem expansion — BAR batch 5 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Business Combinations, Capital Structure and Valuation, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Income Taxes Advanced, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 3174: Advanced Consolidations (13 words)
-- ORIGINAL STEM: In consolidation, intercompany management fees charged by the parent to a subsidiary are:
UPDATE questions SET
  stem = $EXPL$Garnet Industries charges its wholly owned subsidiary, Beacon Corp., a $400,000 annual management fee for centralized accounting and HR services. When preparing Garnet''s consolidated financial statements, these intercompany management fees are:$EXPL$
WHERE id = 3174;

-- ID 3175: Advanced Consolidations (13 words)
-- ORIGINAL STEM: Under the equity method (for investees that are not consolidated), the investor recognizes:
UPDATE questions SET
  stem = $EXPL$Pelham Corp. holds a 35% interest in Waverly Technologies, which reported $2,000,000 in net income and paid $500,000 in dividends during 2025. Pelham applies the equity method but does not consolidate Waverly. Under the equity method, the investor recognizes:$EXPL$
WHERE id = 3175;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (2 questions)
-- ============================================================

-- ID 3281: Advanced Lease Transactions (15 words)
-- ORIGINAL STEM: A lease modification that extends the lease term without changing the scope is treated as:
UPDATE questions SET
  stem = $EXPL$Caldwell Manufacturing leases production equipment under a five-year operating lease. At the start of Year 3, Caldwell and the lessor agree to extend the term by three additional years at the same annual payment. Under ASC 842, this modification that extends the term without changing scope is treated as:$EXPL$
WHERE id = 3281;

-- ID 3282: Advanced Lease Transactions (15 words)
-- ORIGINAL STEM: Under ASC 842, lease incentives received by the lessee (such as tenant improvement allowances) are:
UPDATE questions SET
  stem = $EXPL$Redfield Corp. signs a ten-year office lease and receives a $250,000 tenant improvement allowance from the landlord to build out the space. Under ASC 842, lease incentives such as this allowance received by the lessee are:$EXPL$
WHERE id = 3282;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (2 questions)
-- ============================================================

-- ID 3130: Advanced Revenue and Intangibles (14 words)
-- ORIGINAL STEM: A warranty that provides a service beyond assuring the product meets agreed-upon specifications is:
UPDATE questions SET
  stem = $EXPL$Frontier Electronics sells commercial generators with a standard two-year warranty covering manufacturing defects. For an additional fee, customers can purchase a five-year extended warranty that also covers accidental damage. Under ASC 606, the extended warranty that provides service beyond assuring agreed-upon specifications is:$EXPL$
WHERE id = 3130;

-- ID 3360: Advanced Revenue and Intangibles (15 words)
-- ORIGINAL STEM: Internally generated intangible assets (other than software) such as brand names developed through advertising are:
UPDATE questions SET
  stem = $EXPL$Over the past decade, Pinnacle Brands has spent $12 million on advertising campaigns that built significant brand recognition in its market. The controller is considering whether to capitalize the internally generated brand value. Under GAAP, internally generated intangible assets such as brand names developed through advertising are:$EXPL$
WHERE id = 3360;

-- ============================================================
-- BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 4828: Business Combinations (10 words)
-- ORIGINAL STEM: In a business combination, contingent consideration is initially measured at:
UPDATE questions SET
  stem = $EXPL$Trident Corp. acquires DataWave Inc. for $8 million in cash plus an earn-out provision that will pay the former owners up to $2 million if DataWave''s revenue exceeds certain thresholds over the next two years. Under ASC 805, this contingent consideration is initially measured at:$EXPL$
WHERE id = 4828;

-- ============================================================
-- CAPITAL STRUCTURE AND VALUATION (1 questions)
-- ============================================================

-- ID 5694: Capital Structure and Valuation (12 words)
-- ORIGINAL STEM: In corporate finance, a firm's target capital structure is best described as:
UPDATE questions SET
  stem = $EXPL$Brightstone Industries is evaluating its long-term financing mix of 40% debt, 10% preferred stock, and 50% common equity. Management uses this proportion as a benchmark when making new financing decisions. A firm''s target capital structure is best described as:$EXPL$
WHERE id = 5694;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 3190: Derivatives and Hedging (15 words)
-- ORIGINAL STEM: The key difference between a futures contract and a forward contract is that futures are:
UPDATE questions SET
  stem = $EXPL$Orion Foods hedges its wheat purchases using exchange-traded contracts, while a competitor uses customized bilateral agreements with grain suppliers for the same purpose. The key difference between futures contracts and forward contracts is that futures are:$EXPL$
WHERE id = 3190;

-- ID 3201: Derivatives and Hedging (15 words)
-- ORIGINAL STEM: Under ASC 815, to qualify for hedge accounting, all of the following are required EXCEPT:
UPDATE questions SET
  stem = $EXPL$Meridian Corp. designates an interest rate swap as a cash flow hedge on its variable-rate term loan and prepares formal documentation at inception. Under ASC 815, to qualify for hedge accounting, all of the following are required EXCEPT:$EXPL$
WHERE id = 3201;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (10 questions)
-- ============================================================

-- ID 14961: Financial Statement Analysis (11 words)
-- ORIGINAL STEM: A company's sustainable growth rate is determined by which two factors?
UPDATE questions SET
  stem = $EXPL$Lakewood Industries is projecting how quickly it can grow revenue without raising new equity or increasing its financial leverage. The CFO calculates the sustainable growth rate for the board presentation. A company''s sustainable growth rate is determined by which two factors?$EXPL$
WHERE id = 14961;

-- ID 7958: Financial Statement Analysis (12 words)
-- ORIGINAL STEM: What distinguishes a financial forecast from a financial projection under AICPA standards?
UPDATE questions SET
  stem = $EXPL$Voss Corp. is preparing prospective financial statements for its bank lending group. The controller must decide whether to present a forecast or a projection. Under AICPA standards, what distinguishes a financial forecast from a financial projection?$EXPL$
WHERE id = 7958;

-- ID 14934: Financial Statement Analysis (12 words)
-- ORIGINAL STEM: Which ratio provides the most conservative measure of a company's short-term liquidity?
UPDATE questions SET
  stem = $EXPL$Thornton Supply reports cash of $150,000, short-term investments of $50,000, receivables of $200,000, inventory of $400,000, and current liabilities of $500,000. An analyst wants the most stringent assessment of short-term liquidity. Which ratio provides the most conservative measure?$EXPL$
WHERE id = 14934;

-- ID 612: Financial Statement Analysis (13 words)
-- ORIGINAL STEM: The cash ratio is considered more conservative than the current ratio because it:
UPDATE questions SET
  stem = $EXPL$During a credit review, Anchor Bank computes both the current ratio and the cash ratio for Pacific Distributors, noting the cash ratio is significantly lower. The cash ratio is considered more conservative than the current ratio because it:$EXPL$
WHERE id = 612;

-- ID 14926: Financial Statement Analysis (13 words)
-- ORIGINAL STEM: Which ratio measures a company's ability to meet interest payments from operating earnings?
UPDATE questions SET
  stem = $EXPL$Summit Manufacturing has $480,000 of EBIT and $160,000 of annual interest expense. A credit analyst evaluating Summit''s debt capacity wants to assess its ability to service interest obligations from operating earnings. Which ratio measures this ability?$EXPL$
WHERE id = 14926;

-- ID 604: Financial Statement Analysis (14 words)
-- ORIGINAL STEM: In a common-size income statement, each line item is expressed as a percentage of:
UPDATE questions SET
  stem = $EXPL$An analyst at Northland Securities is preparing a common-size income statement to compare two retailers of vastly different sizes. In a common-size income statement, each line item is expressed as a percentage of:$EXPL$
WHERE id = 604;

-- ID 2966: Financial Statement Analysis (14 words)
-- ORIGINAL STEM: Which of the following is a limitation of using financial ratios for cross-company comparison?
UPDATE questions SET
  stem = $EXPL$An analyst compares the inventory turnover of a LIFO-based manufacturer with that of a FIFO-based competitor in the same industry. Which of the following is a limitation of using financial ratios for cross-company comparison?$EXPL$
WHERE id = 2966;

-- ID 2957: Financial Statement Analysis (15 words)
-- ORIGINAL STEM: A company reports interest coverage of 1.2 times. An analyst should be most concerned because:
UPDATE questions SET
  stem = $EXPL$Graystone Fabrication''s year-end financial statements show EBIT of $360,000 and interest expense of $300,000, yielding an interest coverage ratio of 1.2 times. An analyst reviewing this result should be most concerned because:$EXPL$
WHERE id = 2957;

-- ID 2968: Financial Statement Analysis (15 words)
-- ORIGINAL STEM: The fixed charge coverage ratio differs from the times interest earned ratio primarily because it:
UPDATE questions SET
  stem = $EXPL$Keller Logistics has significant operating lease obligations and preferred dividend commitments in addition to its interest expense. An analyst computes both the fixed charge coverage ratio and the times interest earned ratio. The fixed charge coverage ratio differs from the times interest earned ratio primarily because it:$EXPL$
WHERE id = 2968;

-- ID 7961: Financial Statement Analysis (15 words)
-- ORIGINAL STEM: In exponential smoothing, what is the effect of selecting a smoothing constant closer to 1.0?
UPDATE questions SET
  stem = $EXPL$A demand planner at Ridgeway Consumer Products uses exponential smoothing to forecast monthly sales and is considering raising the smoothing constant (alpha) from 0.2 to 0.9. In exponential smoothing, what is the effect of selecting a smoothing constant closer to 1.0?$EXPL$
WHERE id = 7961;

-- ============================================================
-- FINANCIAL VALUATION METHODS (4 questions)
-- ============================================================

-- ID 13248: Financial Valuation Methods (13 words)
-- ORIGINAL STEM: What advantage does the discounted payback period have over the simple payback period?
UPDATE questions SET
  stem = $EXPL$Harmon Industries is evaluating a $500,000 equipment investment expected to generate annual cash flows over six years. The CFO calculates both the simple and discounted payback periods. What advantage does the discounted payback period have over the simple payback period?$EXPL$
WHERE id = 13248;

-- ID 14246: Financial Valuation Methods (13 words)
-- ORIGINAL STEM: What does ASC 820 mean by an "orderly transaction" when measuring fair value?
UPDATE questions SET
  stem = $EXPL$During a goodwill impairment test, Whitfield Corp.''s valuation team must identify appropriate market inputs that reflect an orderly transaction. Under ASC 820, what does "orderly transaction" mean when measuring fair value?$EXPL$
WHERE id = 14246;

-- ID 644: Financial Valuation Methods (14 words)
-- ORIGINAL STEM: In a DCF model, terminal value typically represents what percentage of total enterprise value?
UPDATE questions SET
  stem = $EXPL$An investment bank is building a five-year DCF model for Crestline Corp., projecting discrete free cash flows through 2030 and a terminal value beyond that period. In a DCF model, the terminal value typically represents what approximate share of total enterprise value?$EXPL$
WHERE id = 644;

-- ID 1306: Financial Valuation Methods (14 words)
-- ORIGINAL STEM: Which of the following measurements is scoped OUT of ASC 820, Fair Value Measurement?
UPDATE questions SET
  stem = $EXPL$During year-end reporting, Belmont Corp.''s accounting team applies various valuation standards across inventory, derivatives, and share-based compensation. Which of the following measurements is scoped out of ASC 820, Fair Value Measurement?$EXPL$
WHERE id = 1306;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4851: Foreign Currency Transactions (18 words)
-- ORIGINAL STEM: Under the temporal method, which of the following balance sheet items is remeasured at the current exchange rate?
UPDATE questions SET
  stem = $EXPL$Sterling Corp. remeasures the financial statements of its Mexican subsidiary, which uses the peso as its local currency but the U.S. dollar as its functional currency. Under the temporal method, which balance sheet item is remeasured at the current exchange rate?$EXPL$
WHERE id = 4851;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 3321: Fund-to-Government-Wide Reconciliation (17 words)
-- ORIGINAL STEM: In state and local government financial reporting, accrued interest payable on general long-term debt is treated as:
UPDATE questions SET
  stem = $EXPL$The City of Ashford issued $10 million in general obligation bonds. At year-end, $75,000 of interest has accrued but is not yet due. In preparing the government-wide statements, accrued interest payable on general long-term debt is treated as:$EXPL$
WHERE id = 3321;

-- ID 3402: Fund-to-Government-Wide Reconciliation (18 words)
-- ORIGINAL STEM: The reconciliation from governmental fund balance to government-wide net position typically includes all of the following adjustments EXCEPT:
UPDATE questions SET
  stem = $EXPL$The Town of Ridgemont''s finance director is preparing the GASB 34 reconciliation from total governmental fund balances to net position of governmental activities. The reconciliation typically includes all of the following adjustments EXCEPT:$EXPL$
WHERE id = 3402;

-- ============================================================
-- INCOME TAXES ADVANCED (1 questions)
-- ============================================================

-- ID 4898: Income Taxes Advanced (15 words)
-- ORIGINAL STEM: Under ASC 740, interest and penalties related to uncertain tax positions should be classified as:
UPDATE questions SET
  stem = $EXPL$Aldridge Corp. has an uncertain tax position related to a $3 million research credit claimed in 2023. The IRS is examining the return, and the company accrues $180,000 for potential interest and penalties. Under ASC 740, interest and penalties on uncertain tax positions should be classified as:$EXPL$
WHERE id = 4898;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 4866: Intangible Assets Advanced (16 words)
-- ORIGINAL STEM: Under ASC 350, goodwill impairment testing uses a one-step approach. The impairment loss is measured as:
UPDATE questions SET
  stem = $EXPL$Fletcher Industries performs its annual goodwill impairment test and determines that a reporting unit with a carrying amount of $25 million (including $8 million of goodwill) has a fair value of $21 million. Under ASC 350''s one-step approach, the impairment loss is measured as:$EXPL$
WHERE id = 4866;

-- ============================================================
-- INTERFUND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 3346: Interfund Transactions (14 words)
-- ORIGINAL STEM: An interfund receivable in the General Fund labeled "due from Capital Projects Fund" indicates:
UPDATE questions SET
  stem = $EXPL$The City of Oakdale''s General Fund balance sheet reports a $150,000 interfund receivable labeled "due from Capital Projects Fund" arising from a short-term cash advance earlier in the fiscal year. This interfund receivable indicates:$EXPL$
WHERE id = 3346;

-- ID 3349: Interfund Transactions (14 words)
-- ORIGINAL STEM: A recurring annual transfer from the General Fund to a debt service fund is:
UPDATE questions SET
  stem = $EXPL$Each fiscal year, the Town of Maplebrook''s General Fund appropriates $1.2 million and transfers it to the Debt Service Fund for annual bond principal and interest payments. Under GASB standards, this recurring annual transfer is classified as:$EXPL$
WHERE id = 3349;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (2 questions)
-- ============================================================

-- ID 3384: Internal-Use Software and Cloud Computing (14 words)
-- ORIGINAL STEM: Which of the following activities occurs during the preliminary project stage of internal-use software?
UPDATE questions SET
  stem = $EXPL$Stratton Corp. is developing a new ERP system for internal use. The project team is currently evaluating three vendor platforms and conducting feasibility studies. Under ASC 350-40, which activity occurs during the preliminary project stage?$EXPL$
WHERE id = 3384;

-- ID 3386: Internal-Use Software and Cloud Computing (14 words)
-- ORIGINAL STEM: General and administrative overhead costs during the application development stage of internal-use software are:
UPDATE questions SET
  stem = $EXPL$While Barlow Inc.''s IT team codes and configures a new inventory management system, the controller asks whether the company''s general and administrative overhead should be included in the capitalized cost. Under ASC 350-40, G&A overhead during the application development stage is:$EXPL$
WHERE id = 3386;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (5 questions)
-- ============================================================

-- ID 15018: Pension and Postretirement Benefits (15 words)
-- ORIGINAL STEM: Under ASC 715-70, when does an employer recognize expense for a defined contribution pension plan?
UPDATE questions SET
  stem = $EXPL$Eastbrook Corp. sponsors a 401(k) plan and matches employee contributions up to 4% of salary. The controller is determining the timing of pension expense recognition. Under ASC 715-70, when does an employer recognize expense for a defined contribution plan?$EXPL$
WHERE id = 15018;

-- ID 15051: Pension and Postretirement Benefits (15 words)
-- ORIGINAL STEM: What is the relationship between ERISA minimum funding requirements and pension expense recognized under GAAP?
UPDATE questions SET
  stem = $EXPL$Norwood Manufacturing contributed $1.8 million to its defined benefit plan to meet ERISA funding requirements, but the GAAP net periodic pension cost is $1.5 million. What is the relationship between ERISA minimum funding requirements and pension expense recognized under GAAP?$EXPL$
WHERE id = 15051;

-- ID 15056: Pension and Postretirement Benefits (15 words)
-- ORIGINAL STEM: How does an employer account for its required annual contribution to a defined contribution plan?
UPDATE questions SET
  stem = $EXPL$Keystone Logistics makes a $600,000 annual matching contribution to its 401(k) plan. The plan trustee invests the funds in diversified mutual funds selected by employees. How does the employer account for its required annual contribution to a defined contribution plan?$EXPL$
WHERE id = 15056;

-- ID 15061: Pension and Postretirement Benefits (15 words)
-- ORIGINAL STEM: What primary financial statement does a health and welfare benefit plan prepare under ASC 965?
UPDATE questions SET
  stem = $EXPL$Delta Industries sponsors a health and welfare benefit plan covering retiree medical and dental benefits. The plan''s auditor is confirming which statements the plan itself must prepare. Under ASC 965, what primary financial statement does a health and welfare benefit plan prepare?$EXPL$
WHERE id = 15061;

-- ID 15072: Pension and Postretirement Benefits (15 words)
-- ORIGINAL STEM: What financial statements are required for a defined benefit pension plan reporting under ASC 960?
UPDATE questions SET
  stem = $EXPL$Marlow Corp.''s defined benefit pension plan holds $45 million in assets and has a $52 million projected benefit obligation. The plan itself must issue standalone financial statements. Under ASC 960, what financial statements are required for the plan?$EXPL$
WHERE id = 15072;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (4 questions)
-- ============================================================

-- ID 2998: Prospective Analysis and Forecasting (14 words)
-- ORIGINAL STEM: An R-squared value of 0.85 in a regression model used for revenue forecasting indicates:
UPDATE questions SET
  stem = $EXPL$Vanguard Electronics uses a simple linear regression model relating advertising spend to quarterly revenue. The model yields an R-squared of 0.85. In the context of revenue forecasting, this R-squared value indicates:$EXPL$
WHERE id = 2998;

-- ID 12992: Prospective Analysis and Forecasting (14 words)
-- ORIGINAL STEM: Under AICPA standards, who bears primary responsibility for the assumptions underlying prospective financial statements?
UPDATE questions SET
  stem = $EXPL$Archer Corp. engages its CPA firm to examine a five-year financial forecast that will be presented to potential investors. Under AICPA standards, who bears primary responsibility for the assumptions underlying the prospective financial statements?$EXPL$
WHERE id = 12992;

-- ID 14128: Prospective Analysis and Forecasting (14 words)
-- ORIGINAL STEM: In prospective financial analysis, what is the difference between forecast accuracy and forecast precision?
UPDATE questions SET
  stem = $EXPL$A financial planning team at Crestwood Inc. is reviewing the performance of its quarterly revenue forecasting model. Management wants to understand whether the model''s estimates are close to actual results versus how tightly clustered they are. What is the difference between forecast accuracy and forecast precision?$EXPL$
WHERE id = 14128;

-- ID 14798: Prospective Analysis and Forecasting (15 words)
-- ORIGINAL STEM: In time-series forecasting, what does a seasonal index of 0.80 for a given quarter indicate?
UPDATE questions SET
  stem = $EXPL$Ridgeway Retail computes seasonal indices to adjust its quarterly sales forecasts. The first-quarter index is calculated as 0.80. In time-series forecasting, a seasonal index of 0.80 for a given quarter indicates:$EXPL$
WHERE id = 14798;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (3 questions)
-- ============================================================

-- ID 12725: Risk Management and Economics (14 words)
-- ORIGINAL STEM: What is the interest tax shield and why does it make debt financing attractive?
UPDATE questions SET
  stem = $EXPL$Hawthorne Corp. is considering issuing $5 million in bonds at 6% interest. The corporate tax rate is 25%. The CFO explains to the board that the interest payments generate a tax benefit. What is the interest tax shield, and why does it make debt financing attractive?$EXPL$
WHERE id = 12725;

-- ID 14065: Risk Management and Economics (14 words)
-- ORIGINAL STEM: In the CAPM framework, a stock with a beta of 0.60 is expected to:
UPDATE questions SET
  stem = $EXPL$An analyst at Sterling Capital evaluates Veritas Pharmaceuticals, which has a beta of 0.60 against the S&P 500. The risk-free rate is 4% and the market risk premium is 6%. Under CAPM, a stock with this beta is expected to:$EXPL$
WHERE id = 14065;

-- ID 3418: Risk Management and Economics (15 words)
-- ORIGINAL STEM: Interest rate parity theory states that the difference in interest rates between two countries is:
UPDATE questions SET
  stem = $EXPL$A multinational treasurer observes that the U.S. one-year interest rate is 5% while the comparable U.K. rate is 3%. The treasurer considers the implications for the dollar-pound forward exchange rate. Interest rate parity theory states that the difference in interest rates between two countries is:$EXPL$
WHERE id = 3418;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 740: State and Local Government Reporting (13 words)
-- ORIGINAL STEM: Derived tax revenues (income tax, sales tax) in governmental funds are recognized when:
UPDATE questions SET
  stem = $EXPL$The County of Riverside collects a 1% local sales tax on retail transactions within its jurisdiction. The finance department is determining the proper revenue recognition timing for its General Fund. Derived tax revenues such as sales taxes in governmental funds are recognized when:$EXPL$
WHERE id = 740;

-- ID 742: State and Local Government Reporting (14 words)
-- ORIGINAL STEM: The three categories of net position on the government-wide statement of net position are:
UPDATE questions SET
  stem = $EXPL$The City of Lakeview is preparing its government-wide statement of net position under GASB 34. The finance director must classify the city''s net position into its required categories. The three categories of net position reported on this statement are:$EXPL$
WHERE id = 742;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (3 questions)
-- ============================================================

-- ID 3147: Stock Compensation and Business Combinations (14 words)
-- ORIGINAL STEM: Under ASC 805, in-process research and development (IPR&D) acquired in a business combination is:
UPDATE questions SET
  stem = $EXPL$Atlas Pharma acquires BioNova Labs for $200 million. At the acquisition date, BioNova has an experimental drug in Phase II clinical trials with no book value on its balance sheet. Under ASC 805, in-process research and development acquired in a business combination is:$EXPL$
WHERE id = 3147;

-- ID 3139: Stock Compensation and Business Combinations (15 words)
-- ORIGINAL STEM: Acquisition-related costs (legal fees, due diligence costs, investment banking fees) in a business combination are:
UPDATE questions SET
  stem = $EXPL$Vantage Corp. incurs $1.2 million in legal fees, due diligence costs, and investment banking fees while acquiring Relay Systems. The controller is determining the proper treatment of these acquisition-related costs under ASC 805. These costs are:$EXPL$
WHERE id = 3139;

-- ID 3150: Stock Compensation and Business Combinations (15 words)
-- ORIGINAL STEM: Under ASC 718, compensation expense for stock awards with only a service condition is recognized:
UPDATE questions SET
  stem = $EXPL$On January 1, 2025, Prism Technologies grants 20,000 restricted stock units to key employees, vesting ratably over four years of continuous service. Under ASC 718, compensation expense for stock awards with only a service condition is recognized:$EXPL$
WHERE id = 3150;

COMMIT;
