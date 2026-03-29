-- Migration: Stem expansion — BAR batch 3 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Business Combinations, Capital Structure and Valuation, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Income Taxes Advanced, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 3373: Advanced Consolidations (12 words)
-- ORIGINAL STEM: Cumulative translation adjustments (CTA) related to a foreign subsidiary are reported in:
UPDATE questions SET
  stem = $EXPL$Delmar Industries owns a wholly owned subsidiary headquartered in Germany. At year-end, the subsidiary''s financial statements are translated from euros to U.S. dollars using the current rate method. Where are cumulative translation adjustments related to this foreign subsidiary reported?$EXPL$
WHERE id = 3373;

-- ID 691: Advanced Consolidations (13 words)
-- ORIGINAL STEM: In consolidated financial statements, what is the rule for eliminating downstream intercompany sales?
UPDATE questions SET
  stem = $EXPL$Garfield Corp. owns 80% of Westbrook Inc. During 2025, Garfield sold $500,000 of inventory to Westbrook, of which 30% remained unsold at year-end. In preparing consolidated financial statements, what is the rule for eliminating these downstream intercompany sales?$EXPL$
WHERE id = 691;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (2 questions)
-- ============================================================

-- ID 3268: Advanced Lease Transactions (13 words)
-- ORIGINAL STEM: Under ASC 842, a sale-leaseback transaction is recognized as a sale only if:
UPDATE questions SET
  stem = $EXPL$Redstone Manufacturing sells its distribution center for $4.2 million and simultaneously leases it back for eight years. The controller is evaluating whether to derecognize the building. Under ASC 842, this sale-leaseback is recognized as a sale only if:$EXPL$
WHERE id = 3268;

-- ID 3388: Advanced Lease Transactions (13 words)
-- ORIGINAL STEM: Under ASC 842, a lease exists when a contract conveys the right to:
UPDATE questions SET
  stem = $EXPL$Orion Logistics signs a three-year agreement granting it exclusive use of a fleet of delivery trucks owned by TransNational. The accounting team is assessing whether this contract meets the definition of a lease. Under ASC 842, a lease exists when a contract conveys the right to:$EXPL$
WHERE id = 3388;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (2 questions)
-- ============================================================

-- ID 3113: Advanced Revenue and Intangibles (12 words)
-- ORIGINAL STEM: The constraint on variable consideration under ASC 606 requires that an entity:
UPDATE questions SET
  stem = $EXPL$Pinnacle Construction has a $12 million contract that includes a $600,000 performance bonus contingent on meeting a completion deadline. The CFO is determining how much variable consideration to include in the transaction price. Under ASC 606, the constraint on variable consideration requires that an entity:$EXPL$
WHERE id = 3113;

-- ID 671: Advanced Revenue and Intangibles (13 words)
-- ORIGINAL STEM: The recoverability test (Step 1) under ASC 360 compares the carrying amount to:
UPDATE questions SET
  stem = $EXPL$Baxter Manufacturing operates a specialized production line with a carrying amount of $1.8 million. Due to declining product demand, the controller is testing the asset for impairment. The recoverability test (Step 1) under ASC 360 compares the carrying amount to:$EXPL$
WHERE id = 671;

-- ============================================================
-- BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 4844: Business Combinations (9 words)
-- ORIGINAL STEM: Under ASC 805, the acquisition date is defined as:
UPDATE questions SET
  stem = $EXPL$Greystone Holdings signed a definitive merger agreement with Crestline Technologies on March 1, 2025, and received regulatory approval on April 15, 2025. The transaction closed on May 1, 2025. Under ASC 805, the acquisition date is defined as:$EXPL$
WHERE id = 4844;

-- ============================================================
-- CAPITAL STRUCTURE AND VALUATION (2 questions)
-- ============================================================

-- ID 5729: Capital Structure and Valuation (10 words)
-- ORIGINAL STEM: What does the debt-to-equity ratio measure in capital structure analysis?
UPDATE questions SET
  stem = $EXPL$Vanguard Industries reports total liabilities of $6 million and total stockholders'' equity of $4 million. An analyst is evaluating the company''s capital structure risk. What does the debt-to-equity ratio measure in this analysis?$EXPL$
WHERE id = 5729;

-- ID 5636: Capital Structure and Valuation (11 words)
-- ORIGINAL STEM: What does the equity multiplier measure in the DuPont analysis framework?
UPDATE questions SET
  stem = $EXPL$An analyst is decomposing Hartwell Corp.''s return on equity using DuPont analysis. The company reports average total assets of $15 million and average stockholders'' equity of $5 million. What does the equity multiplier measure within this framework?$EXPL$
WHERE id = 5636;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 3212: Derivatives and Hedging (13 words)
-- ORIGINAL STEM: A company writes (sells) a call option on its own stock. This position:
UPDATE questions SET
  stem = $EXPL$On June 1, 2025, Nexus Corp. writes (sells) call options on 50,000 shares of its own common stock with a strike price of $45 per share. The shares are currently trading at $40. This written call option position:$EXPL$
WHERE id = 3212;

-- ID 709: Derivatives and Hedging (15 words)
-- ORIGINAL STEM: Under ASC 815, which of the following is a required characteristic of a derivative instrument?
UPDATE questions SET
  stem = $EXPL$Cortland Industries enters into a financial contract whose value fluctuates with changes in a commodity price index. The controller is determining whether the instrument qualifies as a derivative. Under ASC 815, which of the following is a required characteristic of a derivative instrument?$EXPL$
WHERE id = 709;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (6 questions)
-- ============================================================

-- ID 7966: Financial Statement Analysis (8 words)
-- ORIGINAL STEM: What is working capital in financial statement analysis?
UPDATE questions SET
  stem = $EXPL$Oakridge Electronics reports current assets of $820,000 and current liabilities of $540,000 at December 31, 2025. An analyst reviewing the company''s short-term liquidity is calculating working capital. How is working capital defined in financial statement analysis?$EXPL$
WHERE id = 7966;

-- ID 14948: Financial Statement Analysis (8 words)
-- ORIGINAL STEM: What does the retention ratio (plowback ratio) represent?
UPDATE questions SET
  stem = $EXPL$Clearview Corp. reported net income of $2.4 million in 2025 and paid $600,000 in dividends. A financial analyst is computing the retention ratio to assess earnings reinvestment. What does the retention ratio (plowback ratio) represent?$EXPL$
WHERE id = 14948;

-- ID 14973: Financial Statement Analysis (8 words)
-- ORIGINAL STEM: What does the net profit margin ratio indicate?
UPDATE questions SET
  stem = $EXPL$Summit Brands generated $18 million in revenue and $1.8 million in net income for the fiscal year ended December 31, 2025. An analyst is evaluating the company''s bottom-line profitability. What does the net profit margin ratio indicate?$EXPL$
WHERE id = 14973;

-- ID 7973: Financial Statement Analysis (9 words)
-- ORIGINAL STEM: What does sensitivity analysis measure in prospective financial analysis?
UPDATE questions SET
  stem = $EXPL$Crestfield Industries is preparing a five-year financial forecast and wants to understand how changes in individual assumptions—such as revenue growth or raw material costs—affect projected net income. What does sensitivity analysis measure in prospective financial analysis?$EXPL$
WHERE id = 7973;

-- ID 14861: Financial Statement Analysis (9 words)
-- ORIGINAL STEM: What does enterprise value (EV) represent in financial analysis?
UPDATE questions SET
  stem = $EXPL$An investment banker is evaluating Meridian Corp. for a potential acquisition. The company has a market capitalization of $400 million, total debt of $120 million, and cash of $30 million. What does enterprise value represent in this financial analysis context?$EXPL$
WHERE id = 14861;

-- ID 14924: Financial Statement Analysis (9 words)
-- ORIGINAL STEM: What is the formula for return on assets (ROA)?
UPDATE questions SET
  stem = $EXPL$Trellis Corp. reported net income of $360,000 and average total assets of $3 million for 2025. An analyst is computing a profitability ratio to evaluate how efficiently the company uses its asset base. What is the formula for return on assets (ROA)?$EXPL$
WHERE id = 14924;

-- ============================================================
-- FINANCIAL VALUATION METHODS (5 questions)
-- ============================================================

-- ID 14270: Financial Valuation Methods (11 words)
-- ORIGINAL STEM: What is the principal market under ASC 820, Fair Value Measurement?
UPDATE questions SET
  stem = $EXPL$Evergreen Holdings is measuring the fair value of a thinly traded corporate bond that can be sold on three different exchanges with varying volume levels. Under ASC 820, what is the principal market for this measurement?$EXPL$
WHERE id = 14270;

-- ID 15610: Financial Valuation Methods (11 words)
-- ORIGINAL STEM: What economic conditions characterize the trough phase of a business cycle?
UPDATE questions SET
  stem = $EXPL$An economist advising Lakeshore Capital notes that the national economy has reached its lowest output level after a prolonged contraction. What economic conditions characterize the trough phase of a business cycle?$EXPL$
WHERE id = 15610;

-- ID 650: Financial Valuation Methods (12 words)
-- ORIGINAL STEM: Which valuation approach is most appropriate for an unprofitable, early-stage technology company?
UPDATE questions SET
  stem = $EXPL$QuantumLeap Inc., a three-year-old software startup, has negative earnings and no dividend history but generates $8 million in annual revenue. An analyst needs to select a valuation multiple. Which valuation approach is most appropriate for this unprofitable, early-stage technology company?$EXPL$
WHERE id = 650;

-- ID 3038: Financial Valuation Methods (12 words)
-- ORIGINAL STEM: In a discounted cash flow (DCF) valuation, the terminal value typically represents:
UPDATE questions SET
  stem = $EXPL$An analyst at Bridgepoint Capital is building a five-year DCF model for a mature consumer products company. After projecting discrete free cash flows through Year 5, the analyst estimates the value of all subsequent cash flows. In a DCF valuation, the terminal value typically represents:$EXPL$
WHERE id = 3038;

-- ID 3043: Financial Valuation Methods (12 words)
-- ORIGINAL STEM: When using comparable company analysis (trading multiples), the most critical step is:
UPDATE questions SET
  stem = $EXPL$An analyst is valuing Westport Logistics using EV/EBITDA multiples from publicly traded peers in the transportation sector. When using comparable company analysis, the most critical step is:$EXPL$
WHERE id = 3043;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4854: Foreign Currency Transactions (17 words)
-- ORIGINAL STEM: Under the temporal method, remeasurement gains and losses on a foreign subsidiary's financial statements are reported in:
UPDATE questions SET
  stem = $EXPL$Hendricks Corp. has a wholly owned subsidiary in Brazil whose functional currency is the U.S. dollar. The subsidiary''s financial statements, denominated in Brazilian reais, are remeasured using the temporal method. Where are remeasurement gains and losses reported?$EXPL$
WHERE id = 4854;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (3 questions)
-- ============================================================

-- ID 3311: Fund-to-Government-Wide Reconciliation (16 words)
-- ORIGINAL STEM: Capital outlay expenditures reported in governmental funds require what adjustment in the reconciliation to government-wide statements?
UPDATE questions SET
  stem = $EXPL$The City of Ridgemont''s General Fund recorded $2.3 million in capital outlay expenditures for new fire apparatus during the fiscal year. When preparing the reconciliation from the governmental fund statements to the government-wide statements, what adjustment is required for these capital outlays?$EXPL$
WHERE id = 3311;

-- ID 3312: Fund-to-Government-Wide Reconciliation (16 words)
-- ORIGINAL STEM: Depreciation expense appears on the government-wide statement of activities but NOT on governmental fund statements because:
UPDATE questions SET
  stem = $EXPL$The Town of Cedarbrook reports $1.4 million in depreciation on infrastructure and equipment on its government-wide statement of activities. However, no depreciation appears on the governmental fund statements. This difference exists because:$EXPL$
WHERE id = 3312;

-- ID 3316: Fund-to-Government-Wide Reconciliation (16 words)
-- ORIGINAL STEM: The reconciliation adjustment for unavailable revenue (deferred inflows in governmental funds) when converting to government-wide statements:
UPDATE questions SET
  stem = $EXPL$The County of Fairhaven reports $480,000 in deferred inflows of resources on its governmental fund balance sheet for property taxes levied but not collected within 60 days of year-end. When reconciling to the government-wide statements, this unavailable revenue adjustment:$EXPL$
WHERE id = 3316;

-- ============================================================
-- INCOME TAXES ADVANCED (1 questions)
-- ============================================================

-- ID 14722: Income Taxes Advanced (12 words)
-- ORIGINAL STEM: Under ASC 740, which of the following creates a deferred tax liability?
UPDATE questions SET
  stem = $EXPL$Thornton Manufacturing uses straight-line depreciation for financial reporting but accelerated depreciation for tax purposes, resulting in higher tax deductions in early years. Under ASC 740, which of the following creates a deferred tax liability?$EXPL$
WHERE id = 14722;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 14734: Intangible Assets Advanced (13 words)
-- ORIGINAL STEM: Under U.S. GAAP, what is the proper accounting treatment for internally generated goodwill?
UPDATE questions SET
  stem = $EXPL$Beacon Enterprises has built significant brand recognition and customer loyalty over 15 years of operations. The CFO asks whether this internally developed reputation can be recognized on the balance sheet. Under U.S. GAAP, what is the proper accounting treatment for internally generated goodwill?$EXPL$
WHERE id = 14734;

-- ============================================================
-- INTERFUND TRANSACTIONS (3 questions)
-- ============================================================

-- ID 3344: Interfund Transactions (12 words)
-- ORIGINAL STEM: A quasi-external transaction is now referred to under current GASB standards as:
UPDATE questions SET
  stem = $EXPL$The City of Maplewood''s Internal Service Fund charges the General Fund for centralized IT services at rates approximating fair market value. Under current GASB standards, this type of quasi-external transaction is referred to as:$EXPL$
WHERE id = 3344;

-- ID 3333: Interfund Transactions (13 words)
-- ORIGINAL STEM: An interfund loan from the General Fund to a capital projects fund creates:
UPDATE questions SET
  stem = $EXPL$The Town of Birchdale''s General Fund lends $750,000 to the Capital Projects Fund to bridge a temporary cash shortfall on a new municipal building project. This interfund loan creates:$EXPL$
WHERE id = 3333;

-- ID 3336: Interfund Transactions (13 words)
-- ORIGINAL STEM: On the government-wide statements, interfund services provided and used between governmental funds are:
UPDATE questions SET
  stem = $EXPL$Glendale County''s Internal Service Fund provides fleet maintenance to the General Fund and the Special Revenue Fund at fair market rates. On the government-wide statements, these interfund services provided and used between governmental funds are:$EXPL$
WHERE id = 3336;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (2 questions)
-- ============================================================

-- ID 3263: Internal-Use Software and Cloud Computing (13 words)
-- ORIGINAL STEM: Interest costs during the application development stage of a major internal-use software project:
UPDATE questions SET
  stem = $EXPL$Ashford Financial is developing a proprietary risk management platform expected to take 18 months to complete. The project has entered the application development stage and the company is incurring borrowing costs. Interest costs during this stage of a major internal-use software project:$EXPL$
WHERE id = 3263;

-- ID 3265: Internal-Use Software and Cloud Computing (13 words)
-- ORIGINAL STEM: Under ASC 350-40, software developed for internal use is defined as software that:
UPDATE questions SET
  stem = $EXPL$Caldwell Corp. is building a custom inventory tracking system that will be used exclusively by its warehouse operations team. The controller needs to confirm the system qualifies for capitalization. Under ASC 350-40, software developed for internal use is defined as software that:$EXPL$
WHERE id = 3265;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (5 questions)
-- ============================================================

-- ID 15057: Pension and Postretirement Benefits (13 words)
-- ORIGINAL STEM: What is the vested benefit obligation (VBO) of a defined benefit pension plan?
UPDATE questions SET
  stem = $EXPL$Hartfield Industries maintains a defined benefit pension plan covering 800 employees. The plan actuary distinguishes between benefits that employees have earned unconditionally and those contingent on continued service. What is the vested benefit obligation (VBO) of a defined benefit pension plan?$EXPL$
WHERE id = 15057;

-- ID 3301: Pension and Postretirement Benefits (14 words)
-- ORIGINAL STEM: Postretirement benefits other than pensions (OPEB), such as retiree health care, are accounted for:
UPDATE questions SET
  stem = $EXPL$Grandview Corp. provides health insurance to employees who retire with at least 20 years of service. The controller is determining the appropriate accounting framework for this obligation. Under U.S. GAAP, postretirement benefits other than pensions, such as retiree health care, are accounted for:$EXPL$
WHERE id = 3301;

-- ID 3398: Pension and Postretirement Benefits (14 words)
-- ORIGINAL STEM: Under ASC 715, the discount rate assumption for measuring the PBO should be reassessed:
UPDATE questions SET
  stem = $EXPL$The actuary for Weston Manufacturing''s defined benefit pension plan used a 5.25% discount rate to measure the projected benefit obligation at the prior year-end. Market interest rates have shifted since then. Under ASC 715, the discount rate assumption for measuring the PBO should be reassessed:$EXPL$
WHERE id = 3398;

-- ID 3399: Pension and Postretirement Benefits (14 words)
-- ORIGINAL STEM: When a pension plan is terminated and all obligations are settled, the company must:
UPDATE questions SET
  stem = $EXPL$Ridgeline Corp. announces the termination of its defined benefit pension plan and purchases annuity contracts from an insurance company to settle all remaining obligations to plan participants. When a plan is terminated and all obligations are settled, the company must:$EXPL$
WHERE id = 3399;

-- ID 15011: Pension and Postretirement Benefits (14 words)
-- ORIGINAL STEM: Under ASC 715, which of the following best describes a defined benefit pension plan?
UPDATE questions SET
  stem = $EXPL$Kensington Industries offers a retirement plan that promises employees a monthly pension based on years of service and final average salary. The company bears the investment and actuarial risk. Under ASC 715, which of the following best describes this type of plan?$EXPL$
WHERE id = 15011;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (4 questions)
-- ============================================================

-- ID 616: Prospective Analysis and Forecasting (12 words)
-- ORIGINAL STEM: Under AICPA standards, what distinguishes a financial forecast from a financial projection?
UPDATE questions SET
  stem = $EXPL$Brighton Healthcare prepares two sets of prospective financial statements for its board: one reflecting expected operating conditions and one modeling a hypothetical 20% reduction in patient volume. Under AICPA standards, what distinguishes a financial forecast from a financial projection?$EXPL$
WHERE id = 616;

-- ID 626: Prospective Analysis and Forecasting (12 words)
-- ORIGINAL STEM: The primary difference between a financial forecast and a financial projection is:
UPDATE questions SET
  stem = $EXPL$Lakeview Energy presents prospective financial statements to potential investors. Management includes one set based on its best-estimate assumptions and another set modeling a scenario where oil prices drop 40%. The primary difference between a financial forecast and a financial projection is:$EXPL$
WHERE id = 626;

-- ID 2987: Prospective Analysis and Forecasting (12 words)
-- ORIGINAL STEM: When a CPA examines a financial forecast, the CPA's report should include:
UPDATE questions SET
  stem = $EXPL$Porter & Associates LLP has been engaged to examine the financial forecast prepared by Stratton Corp. for the year ending December 31, 2026. The engagement is conducted under AT-C Section 305. The CPA''s report on this examination should include:$EXPL$
WHERE id = 2987;

-- ID 2990: Prospective Analysis and Forecasting (12 words)
-- ORIGINAL STEM: A rolling forecast differs from a traditional annual budget primarily because it:
UPDATE questions SET
  stem = $EXPL$Northwind Corp.''s finance team replaces its static annual budget with a planning tool that continuously extends the forecast horizon by adding a new month or quarter as each period ends. A rolling forecast differs from a traditional annual budget primarily because it:$EXPL$
WHERE id = 2990;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (3 questions)
-- ============================================================

-- ID 14775: Risk Management and Economics (11 words)
-- ORIGINAL STEM: What does the Capital Market Line (CML) represent in portfolio theory?
UPDATE questions SET
  stem = $EXPL$A portfolio manager at Sterling Advisors is evaluating the optimal mix of a risk-free asset and the market portfolio for a client''s investment account. What does the Capital Market Line (CML) represent in portfolio theory?$EXPL$
WHERE id = 14775;

-- ID 14777: Risk Management and Economics (11 words)
-- ORIGINAL STEM: What is the commonly used informal definition of an economic recession?
UPDATE questions SET
  stem = $EXPL$An analyst at Ridgewater Capital is monitoring U.S. GDP data and observes that real output has declined for two consecutive quarters. What is the commonly used informal definition of an economic recession?$EXPL$
WHERE id = 14777;

-- ID 12734: Risk Management and Economics (12 words)
-- ORIGINAL STEM: How does the discounted payback period differ from the simple payback period?
UPDATE questions SET
  stem = $EXPL$Kepler Manufacturing is evaluating a $2 million equipment investment that generates uneven annual cash flows over six years. The CFO wants a payback measure that accounts for the time value of money. How does the discounted payback period differ from the simple payback period?$EXPL$
WHERE id = 12734;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 731: State and Local Government Reporting (12 words)
-- ORIGINAL STEM: The reconciliation between governmental fund statements and government-wide statements includes which adjustment?
UPDATE questions SET
  stem = $EXPL$The City of Ashford is preparing its comprehensive annual financial report and must reconcile its governmental fund balance sheet to the government-wide statement of net position. This reconciliation includes which adjustment?$EXPL$
WHERE id = 731;

-- ID 3224: State and Local Government Reporting (12 words)
-- ORIGINAL STEM: Proprietary funds (enterprise and internal service funds) use which basis of accounting?
UPDATE questions SET
  stem = $EXPL$The Springdale Water Authority operates as an enterprise fund providing water and sewer services to residents. The authority''s accounting staff is selecting the appropriate basis of accounting. Proprietary funds use which basis of accounting?$EXPL$
WHERE id = 3224;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (3 questions)
-- ============================================================

-- ID 687: Stock Compensation and Business Combinations (12 words)
-- ORIGINAL STEM: Direct acquisition costs in a business combination (legal fees, due diligence) are:
UPDATE questions SET
  stem = $EXPL$Silverline Corp. acquires Beacon Technologies for $25 million and incurs $1.2 million in legal fees, investment banking advisory fees, and due diligence costs related to the acquisition. Under ASC 805, these direct acquisition costs are:$EXPL$
WHERE id = 687;

-- ID 3135: Stock Compensation and Business Combinations (12 words)
-- ORIGINAL STEM: The Black-Scholes option pricing model requires all of the following inputs EXCEPT:
UPDATE questions SET
  stem = $EXPL$Zenith Corp. granted 100,000 employee stock options on January 1, 2025, and the compensation committee is gathering the inputs needed to measure grant-date fair value. The Black-Scholes option pricing model requires all of the following inputs EXCEPT:$EXPL$
WHERE id = 3135;

-- ID 3361: Stock Compensation and Business Combinations (12 words)
-- ORIGINAL STEM: Stock appreciation rights (SARs) that are settled in cash are classified as:
UPDATE questions SET
  stem = $EXPL$On March 1, 2025, Aldridge Industries grants 20,000 stock appreciation rights to senior executives. The SARs vest over three years and will be settled in cash based on the appreciation in the company''s stock price. These cash-settled SARs are classified as:$EXPL$
WHERE id = 3361;

COMMIT;
