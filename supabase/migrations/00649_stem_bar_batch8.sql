-- Migration: Stem expansion — BAR batch 8 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Business Combinations, Capital Structure and Valuation, Derivatives and Hedging, Financial Statement Analysis, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Income Taxes Advanced, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (3 questions)
-- ============================================================

-- ID 3187: Advanced Consolidations (18 words)
-- ORIGINAL STEM: A 60%-owned subsidiary declares and pays dividends of $200,000. On the consolidated financial statements, how is this reported?
UPDATE questions SET
  stem = $EXPL$Northridge Industries owns 60% of Cascade Fabrication. During 2025, Cascade declares and pays dividends totaling $200,000 to all shareholders. On the consolidated financial statements, how are these dividends reported?$EXPL$
WHERE id = 3187;

-- ID 698: Advanced Consolidations (19 words)
-- ORIGINAL STEM: In the year following a downstream intercompany inventory sale where all goods have been sold externally, the consolidation entry:
UPDATE questions SET
  stem = $EXPL$In 2024, Paxon Corp. sold inventory to its 80%-owned subsidiary, Lenox Co., at a $150,000 markup. By December 31, 2024, Lenox had resold all the goods to external customers. In the Year 2025 consolidation, the entry related to this prior-year downstream sale:$EXPL$
WHERE id = 698;

-- ID 3182: Advanced Consolidations (20 words)
-- ORIGINAL STEM: When a parent increases its ownership from 70% to 85% by purchasing additional shares from the noncontrolling interest, this transaction:
UPDATE questions SET
  stem = $EXPL$Duval Holdings currently owns 70% of Grayline Corp. In March 2025, Duval purchases an additional 15% of Grayline''s shares directly from noncontrolling shareholders for $2,400,000 in cash. Under ASC 810, this transaction:$EXPL$
WHERE id = 3182;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (1 questions)
-- ============================================================

-- ID 3285: Advanced Lease Transactions (19 words)
-- ORIGINAL STEM: Under ASC 842, the discount rate used by a lessee to calculate the present value of lease payments is:
UPDATE questions SET
  stem = $EXPL$Winslow Manufacturing signs a seven-year equipment lease in January 2025 with annual payments of $95,000. The lease does not state an implicit rate, and Winslow is not a public company. Under ASC 842, which discount rate should Winslow use to calculate the present value of lease payments?$EXPL$
WHERE id = 3285;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (1 questions)
-- ============================================================

-- ID 3125: Advanced Revenue and Intangibles (19 words)
-- ORIGINAL STEM: When a contract modification adds distinct goods or services at their standalone selling prices, it is accounted for as:
UPDATE questions SET
  stem = $EXPL$Redmond Software has an existing two-year support contract with a client. In October 2025, the client requests an additional analytics module with distinct functionality, and the parties agree on a price that reflects the module''s standalone selling price. Under ASC 606, how is this modification accounted for?$EXPL$
WHERE id = 3125;

-- ============================================================
-- BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 14405: Business Combinations (19 words)
-- ORIGINAL STEM: Under U.S. GAAP for public business entities, how is goodwill accounted for in periods subsequent to a business combination?
UPDATE questions SET
  stem = $EXPL$Archer Holdings, a publicly traded company, acquired Beacon Industries in 2023, recognizing $4,200,000 of goodwill. As Archer prepares its 2025 annual financial statements, how should it account for this goodwill in subsequent periods under U.S. GAAP?$EXPL$
WHERE id = 14405;

-- ============================================================
-- CAPITAL STRUCTURE AND VALUATION (2 questions)
-- ============================================================

-- ID 5662: Capital Structure and Valuation (16 words)
-- ORIGINAL STEM: Under Modigliani-Miller Proposition II without taxes, what happens to the cost of equity as leverage increases?
UPDATE questions SET
  stem = $EXPL$A finance professor asks students to analyze a firm operating in a frictionless market with no taxes, no bankruptcy costs, and perfect information. Under Modigliani-Miller Proposition II without taxes, what happens to the cost of equity as the firm increases its leverage?$EXPL$
WHERE id = 5662;

-- ID 5663: Capital Structure and Valuation (16 words)
-- ORIGINAL STEM: Pennfield Enterprises has total debt of $8,000,000 and total equity of $12,000,000. Calculate Pennfield's debt-to-total-capital ratio.
UPDATE questions SET
  stem = $EXPL$Pennfield Enterprises reports total interest-bearing debt of $8,000,000 and total equity of $12,000,000 on its December 31, 2025 balance sheet. An analyst reviewing Pennfield''s capital structure calculates the debt-to-total-capital ratio. What is the result?$EXPL$
WHERE id = 5663;

-- ============================================================
-- DERIVATIVES AND HEDGING (1 questions)
-- ============================================================

-- ID 708: Derivatives and Hedging (19 words)
-- ORIGINAL STEM: Under ASC 815, where is the effective portion of gain or loss on a cash flow hedge initially reported?
UPDATE questions SET
  stem = $EXPL$Coastal Energy designates an interest rate swap as a cash flow hedge of its variable-rate borrowing facility. At the end of Q3 2025, the swap has an unrealized gain of $180,000, all of which is effective. Under ASC 815, where is this effective gain initially reported?$EXPL$
WHERE id = 708;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (4 questions)
-- ============================================================

-- ID 14943: Financial Statement Analysis (19 words)
-- ORIGINAL STEM: Trident Corp. reports current assets of $180,000 and current liabilities of $240,000. What does the resulting current ratio indicate?
UPDATE questions SET
  stem = $EXPL$Trident Corp.''s December 31, 2025 balance sheet reports current assets of $180,000 and current liabilities of $240,000. A creditor evaluating Trident''s short-term liquidity calculates the current ratio. What does the resulting ratio indicate?$EXPL$
WHERE id = 14943;

-- ID 2927: Financial Statement Analysis (20 words)
-- ORIGINAL STEM: A company reports net credit sales of $3,600,000 and average accounts receivable of $400,000. What is the accounts receivable turnover?
UPDATE questions SET
  stem = $EXPL$For the year ended December 31, 2025, Pinnacle Distributors reports net credit sales of $3,600,000. Its beginning and ending accounts receivable balances average $400,000. What is Pinnacle''s accounts receivable turnover?$EXPL$
WHERE id = 2927;

-- ID 14923: Financial Statement Analysis (20 words)
-- ORIGINAL STEM: Atlas Manufacturing reports net sales of $500,000 and cost of goods sold of $325,000. What is Atlas's gross profit margin?
UPDATE questions SET
  stem = $EXPL$Atlas Manufacturing''s 2025 income statement shows net sales of $500,000 and cost of goods sold of $325,000. An analyst benchmarking Atlas against industry peers calculates its gross profit margin. What is the result?$EXPL$
WHERE id = 14923;

-- ID 14960: Financial Statement Analysis (20 words)
-- ORIGINAL STEM: Halcyon Corp. reports total purchases of $2,190,000 and average accounts payable of $300,000. What is Halcyon's days payable outstanding (DPO)?
UPDATE questions SET
  stem = $EXPL$Halcyon Corp.''s 2025 records show total purchases of $2,190,000 and average accounts payable of $300,000. The CFO is analyzing the company''s payment cycle. What is Halcyon''s days payable outstanding (DPO)?$EXPL$
WHERE id = 14960;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (3 questions)
-- ============================================================

-- ID 4859: Foreign Currency Transactions (19 words)
-- ORIGINAL STEM: Under ASC 830, which of the following is translated at historical exchange rates when using the current rate method?
UPDATE questions SET
  stem = $EXPL$Hartfield Inc. consolidates a wholly owned subsidiary in Japan whose functional currency is the yen. Hartfield applies the current rate method under ASC 830. Which of the following balance sheet items is translated at historical exchange rates?$EXPL$
WHERE id = 4859;

-- ID 14449: Foreign Currency Transactions (19 words)
-- ORIGINAL STEM: Under the current rate method in ASC 830, at what exchange rate is a foreign subsidiary's common stock translated?
UPDATE questions SET
  stem = $EXPL$Oriole Corp. is translating the financial statements of its German subsidiary, whose functional currency is the euro. When applying the current rate method under ASC 830, at what exchange rate is the subsidiary''s common stock translated?$EXPL$
WHERE id = 14449;

-- ID 4848: Foreign Currency Transactions (20 words)
-- ORIGINAL STEM: A foreign subsidiary operates in a highly inflationary economy. Under ASC 830, how should the parent account for this subsidiary?
UPDATE questions SET
  stem = $EXPL$Meridian Corp. has a subsidiary in Argentina, where cumulative inflation has exceeded 100% over the most recent three-year period. Under ASC 830, how should Meridian account for this subsidiary''s financial statements?$EXPL$
WHERE id = 4848;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (3 questions)
-- ============================================================

-- ID 3326: Fund-to-Government-Wide Reconciliation (20 words)
-- ORIGINAL STEM: Under GASB standards for state and local government financial reporting, the reconciliation between fund and government-wide statements must be presented:
UPDATE questions SET
  stem = $EXPL$The finance director of Clearwater County is preparing the annual comprehensive financial report. The county''s governmental fund balance sheet reports a total fund balance of $14,800,000. Under GASB 34, the reconciliation between fund and government-wide statements must be presented:$EXPL$
WHERE id = 3326;

-- ID 14338: Fund-to-Government-Wide Reconciliation (20 words)
-- ORIGINAL STEM: What is the reconciling treatment of the net OPEB liability when converting from governmental fund balance to government-wide net position?
UPDATE questions SET
  stem = $EXPL$Lakewood Township''s governmental fund balance sheet does not reflect its $3,200,000 net OPEB liability for retiree healthcare benefits. When reconciling total governmental fund balance to net position of governmental activities, what is the treatment of this OPEB liability?$EXPL$
WHERE id = 14338;

-- ID 14346: Fund-to-Government-Wide Reconciliation (20 words)
-- ORIGINAL STEM: Which fund type is excluded from the government-wide financial statements and therefore does not require a reconciliation to governmental activities?
UPDATE questions SET
  stem = $EXPL$A new staff accountant at Riverton City is preparing the government-wide statement of net position and asks which fund types must be reconciled. Which fund type is excluded from the government-wide financial statements and therefore does not require reconciliation to governmental activities?$EXPL$
WHERE id = 14346;

-- ============================================================
-- INCOME TAXES ADVANCED (2 questions)
-- ============================================================

-- ID 4902: Income Taxes Advanced (18 words)
-- ORIGINAL STEM: For GILTI (Global Intangible Low-Taxed Income), an entity may make an accounting policy election under ASC 740 to:
UPDATE questions SET
  stem = $EXPL$Vanguard Technologies, a U.S. multinational, incurs a significant GILTI inclusion from its Irish subsidiary''s 2025 earnings. The tax department is evaluating available accounting policy elections. Under ASC 740, an entity may make an accounting policy election for GILTI to:$EXPL$
WHERE id = 4902;

-- ID 4889: Income Taxes Advanced (20 words)
-- ORIGINAL STEM: Intraperiod tax allocation under ASC 740 requires that income tax expense or benefit be allocated among which of the following?
UPDATE questions SET
  stem = $EXPL$Sycamore Industries reports a $500,000 operating loss, a $120,000 gain in other comprehensive income, and a $60,000 prior-period adjustment in 2025. The controller is applying intraperiod tax allocation under ASC 740. Income tax expense or benefit must be allocated among which of the following?$EXPL$
WHERE id = 4889;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (3 questions)
-- ============================================================

-- ID 14752: Intangible Assets Advanced (17 words)
-- ORIGINAL STEM: Under ASC 805, in what type of transaction is goodwill initially recognized on the acquirer's balance sheet?
UPDATE questions SET
  stem = $EXPL$Vertex Corp. recently completed a transaction and recognized $1,800,000 of goodwill on its balance sheet. Under ASC 805, in what type of transaction is goodwill initially recognized by the acquirer?$EXPL$
WHERE id = 14752;

-- ID 4872: Intangible Assets Advanced (18 words)
-- ORIGINAL STEM: Which of the following intangible assets acquired in a business combination would most likely be classified as indefinite-lived?
UPDATE questions SET
  stem = $EXPL$Birchwood Industries acquires Ridgepoint Foods in a business combination and identifies several intangible assets for separate recognition. Which of the following acquired intangible assets would most likely be classified as indefinite-lived under U.S. GAAP?$EXPL$
WHERE id = 4872;

-- ID 14745: Intangible Assets Advanced (19 words)
-- ORIGINAL STEM: Under U.S. GAAP, how do public business entities account for goodwill after its initial recognition in a business combination?
UPDATE questions SET
  stem = $EXPL$Summit Health, a publicly traded hospital group, recognized $6,500,000 of goodwill when it acquired Pacific Medical Associates in 2022. As Summit prepares its 2025 financials, how should it account for goodwill after initial recognition under U.S. GAAP?$EXPL$
WHERE id = 14745;

-- ============================================================
-- INTERFUND TRANSACTIONS (3 questions)
-- ============================================================

-- ID 14283: Interfund Transactions (18 words)
-- ORIGINAL STEM: Under GASB 33, fines and penalties imposed by a government are classified as which type of nonexchange revenue?
UPDATE questions SET
  stem = $EXPL$The City of Briarwood collects $420,000 in traffic fines and building code violation penalties during fiscal year 2025. Under GASB Statement No. 33, these fines and penalties are classified as which type of nonexchange revenue?$EXPL$
WHERE id = 14283;

-- ID 1201: Interfund Transactions (19 words)
-- ORIGINAL STEM: Sales tax revenue collected by a state government on behalf of transactions between buyers and sellers is classified as:
UPDATE questions SET
  stem = $EXPL$The state of Mapleridge collects a 6% sales tax on retail transactions occurring within its borders. Under GASB 33, the sales tax revenue arising from these underlying exchange transactions between buyers and sellers is classified as:$EXPL$
WHERE id = 1201;

-- ID 3347: Interfund Transactions (19 words)
-- ORIGINAL STEM: When preparing the government-wide statement of net position, interfund eliminations for governmental activities include all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$Hillcrest County''s finance office is preparing the government-wide statement of net position. The controller identifies several interfund balances between governmental funds that must be eliminated. Interfund eliminations for governmental activities include all of the following EXCEPT:$EXPL$
WHERE id = 3347;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (3 questions)
-- ============================================================

-- ID 3267: Internal-Use Software and Cloud Computing (19 words)
-- ORIGINAL STEM: A company pays a vendor $300,000 for a perpetual software license and $80,000 for annual maintenance. Under ASC 350-40:
UPDATE questions SET
  stem = $EXPL$In January 2025, Bridgeport Financial pays a vendor $300,000 for a perpetual license to an internal-use accounting platform and $80,000 for the first year of maintenance and support. Under ASC 350-40, how should these costs be treated?$EXPL$
WHERE id = 3267;

-- ID 3383: Internal-Use Software and Cloud Computing (19 words)
-- ORIGINAL STEM: A company pays $40,000 for user training on a new cloud platform during the implementation phase. This cost is:
UPDATE questions SET
  stem = $EXPL$Sterling Logistics is implementing a new SaaS-based warehouse management system classified as a service contract. During the implementation phase, Sterling pays $40,000 for user training sessions. Under ASU 2018-15, this training cost is:$EXPL$
WHERE id = 3383;

-- ID 3387: Internal-Use Software and Cloud Computing (19 words)
-- ORIGINAL STEM: A company determines its cloud hosting arrangement contains a software license element. The license portion should be recognized as:
UPDATE questions SET
  stem = $EXPL$After analyzing its three-year cloud hosting arrangement, Calloway Corp. determines the contract includes a software license element because it has the right to take possession and can run the software independently. Under ASC 350-40, the license portion should be recognized as:$EXPL$
WHERE id = 3387;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (5 questions)
-- ============================================================

-- ID 15034: Pension and Postretirement Benefits (19 words)
-- ORIGINAL STEM: Under ASU 2017-07, where is the service cost component of net periodic pension cost presented in the income statement?
UPDATE questions SET
  stem = $EXPL$Greystone Manufacturing sponsors a defined benefit pension plan. The controller is preparing the 2025 income statement and must classify the $480,000 service cost component of net periodic pension cost. Under ASU 2017-07, where is service cost presented?$EXPL$
WHERE id = 15034;

-- ID 15079: Pension and Postretirement Benefits (19 words)
-- ORIGINAL STEM: What rate should be used as the discount rate for measuring a defined benefit pension obligation under ASC 715?
UPDATE questions SET
  stem = $EXPL$Harmon Industries is selecting the discount rate to measure its projected benefit obligation as of December 31, 2025. The plan actuary asks the controller which benchmark to use. Under ASC 715, what rate should be used as the discount rate?$EXPL$
WHERE id = 15079;

-- ID 3309: Pension and Postretirement Benefits (20 words)
-- ORIGINAL STEM: The health care cost trend rate is a key assumption in measuring OPEB obligations. An increase in this rate would:
UPDATE questions SET
  stem = $EXPL$Whitfield Corp. sponsors a retiree health plan and is updating its OPEB assumptions for 2025. The actuary proposes increasing the health care cost trend rate by 1.5 percentage points. An increase in this rate would:$EXPL$
WHERE id = 3309;

-- ID 3397: Pension and Postretirement Benefits (20 words)
-- ORIGINAL STEM: A pension plan has the following: PBO $8,000,000; ABO $7,200,000; Fair value of plan assets $7,600,000. The funded status is:
UPDATE questions SET
  stem = $EXPL$Kensington Corp.''s defined benefit pension plan reports the following at December 31, 2025: PBO of $8,000,000, ABO of $7,200,000, and fair value of plan assets of $7,600,000. Under ASC 715, the funded status reported on the balance sheet is:$EXPL$
WHERE id = 3397;

-- ID 15014: Pension and Postretirement Benefits (20 words)
-- ORIGINAL STEM: How is the funded status of a defined benefit pension plan reported on the employer's balance sheet under ASC 715?
UPDATE questions SET
  stem = $EXPL$Ashford Electronics sponsors a defined benefit pension plan with a PBO of $12,000,000 and plan assets with a fair value of $10,500,000 at year-end 2025. How is the funded status reported on Ashford''s balance sheet under ASC 715?$EXPL$
WHERE id = 15014;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (5 questions)
-- ============================================================

-- ID 14131: Prospective Analysis and Forecasting (18 words)
-- ORIGINAL STEM: What is the role of the "responsible party" in the preparation of prospective financial statements under AICPA standards?
UPDATE questions SET
  stem = $EXPL$Granger Development is preparing a financial forecast for submission to a bank to support a $5,000,000 construction loan. Under AICPA standards governing prospective financial statements, what is the role of the "responsible party" in this process?$EXPL$
WHERE id = 14131;

-- ID 14800: Prospective Analysis and Forecasting (18 words)
-- ORIGINAL STEM: In exponential smoothing, what is the valid range of the smoothing constant alpha and what does it control?
UPDATE questions SET
  stem = $EXPL$Ridgeway Electronics uses exponential smoothing to forecast monthly product demand. The operations analyst is selecting a value for the smoothing constant alpha. What is the valid range of alpha, and what does it control?$EXPL$
WHERE id = 14800;

-- ID 12989: Prospective Analysis and Forecasting (19 words)
-- ORIGINAL STEM: Under AT-C Section 305, what level of assurance does a CPA provide in a compilation of prospective financial statements?
UPDATE questions SET
  stem = $EXPL$Miller & Associates, CPAs, has been engaged to compile a financial projection for a private client seeking investor funding. Under AT-C Section 305, what level of assurance does the CPA provide in a compilation of prospective financial statements?$EXPL$
WHERE id = 12989;

-- ID 627: Prospective Analysis and Forecasting (20 words)
-- ORIGINAL STEM: When using regression analysis for cost estimation, which statistic measures the average distance of observed values from the regression line?
UPDATE questions SET
  stem = $EXPL$Oakridge Manufacturing runs a simple linear regression of monthly overhead costs against machine hours. The controller wants to assess how closely the data points cluster around the fitted line. Which statistic measures the average distance of observed values from the regression line?$EXPL$
WHERE id = 627;

-- ID 2983: Prospective Analysis and Forecasting (20 words)
-- ORIGINAL STEM: A firm has a DOL of 2.5 and a DFL of 1.6. What is the degree of total leverage (DTL)?
UPDATE questions SET
  stem = $EXPL$Weston Packaging has a degree of operating leverage (DOL) of 2.5 and a degree of financial leverage (DFL) of 1.6. The CFO wants to understand the combined impact of a 10% change in sales on EPS. What is the degree of total leverage (DTL)?$EXPL$
WHERE id = 2983;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (4 questions)
-- ============================================================

-- ID 3078: Risk Management and Economics (19 words)
-- ORIGINAL STEM: A company enters into an interest rate swap to convert its variable-rate debt to fixed-rate. The company is the:
UPDATE questions SET
  stem = $EXPL$Baxter Industries has a $20,000,000 term loan at SOFR plus 2%. To eliminate exposure to rising rates, Baxter enters an interest rate swap agreeing to pay a fixed 5.5% and receive SOFR. In this swap arrangement, Baxter is the:$EXPL$
WHERE id = 3078;

-- ID 3083: Risk Management and Economics (20 words)
-- ORIGINAL STEM: A company faces commodity price risk for oil purchases. Which hedging instrument would provide downside protection while preserving upside potential?
UPDATE questions SET
  stem = $EXPL$Delta Air Transport purchases approximately 500,000 barrels of jet fuel per quarter and is concerned about rising crude oil prices over the next six months. Management wants downside protection while preserving the benefit if prices decline. Which hedging instrument best meets this objective?$EXPL$
WHERE id = 3083;

-- ID 12728: Risk Management and Economics (20 words)
-- ORIGINAL STEM: In the Gordon Growth Model (constant-growth DDM), what constraint must hold for the model to produce a valid stock price?
UPDATE questions SET
  stem = $EXPL$An analyst uses the Gordon Growth Model to value Millbrook Pharmaceuticals, which pays a steady annual dividend. When applying the constant-growth DDM formula P = D1 / (r − g), what mathematical constraint must hold for the model to produce a valid stock price?$EXPL$
WHERE id = 12728;

-- ID 14760: Risk Management and Economics (20 words)
-- ORIGINAL STEM: What type of unemployment occurs when workers are temporarily between jobs while searching for new positions that match their skills?
UPDATE questions SET
  stem = $EXPL$After voluntarily leaving her position at a consulting firm, an experienced data analyst spends two months interviewing with companies that match her skill set. What type of unemployment best describes her situation during this transition?$EXPL$
WHERE id = 14760;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (3 questions)
-- ============================================================

-- ID 745: State and Local Government Reporting (18 words)
-- ORIGINAL STEM: Which of the following is reported on the government-wide statement of activities but NOT on governmental fund statements?
UPDATE questions SET
  stem = $EXPL$The City of Brookfield is preparing both its governmental fund financial statements and government-wide statement of activities for fiscal year 2025. Which of the following items appears on the government-wide statement of activities but NOT on the governmental fund statements?$EXPL$
WHERE id = 745;

-- ID 3240: State and Local Government Reporting (18 words)
-- ORIGINAL STEM: Under GASB standards, pension obligations for a cost-sharing multiple-employer pension plan are reported by the participating government as:
UPDATE questions SET
  stem = $EXPL$Oakdale County participates in a cost-sharing multiple-employer defined benefit pension plan administered by the state retirement system. Under GASB 68, the pension obligation attributable to Oakdale is reported on its government-wide statements as:$EXPL$
WHERE id = 3240;

-- ID 3229: State and Local Government Reporting (19 words)
-- ORIGINAL STEM: Fund balance in governmental funds is classified into five categories. Which of the following is NOT one of them?
UPDATE questions SET
  stem = $EXPL$The auditor reviewing Pine Valley Township''s general fund balance sheet notes that fund balance is classified into five GASB-defined categories. Which of the following is NOT one of the five fund balance classifications?$EXPL$
WHERE id = 3229;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (3 questions)
-- ============================================================

-- ID 683: Stock Compensation and Business Combinations (19 words)
-- ORIGINAL STEM: If the fair value of net identifiable assets exceeds the purchase price in a business combination, the acquirer should:
UPDATE questions SET
  stem = $EXPL$Nova Corp. acquires 100% of Helios Ltd. for $8,000,000 in cash. On the acquisition date, the fair value of Helios''s identifiable net assets totals $9,200,000. Under ASC 805, the acquirer should:$EXPL$
WHERE id = 683;

-- ID 3136: Stock Compensation and Business Combinations (19 words)
-- ORIGINAL STEM: Under ASC 805, the acquisition method requires that identifiable assets and liabilities of the acquired entity be measured at:
UPDATE questions SET
  stem = $EXPL$Copeland Industries acquires TrueNorth Manufacturing in a business combination on July 1, 2025. TrueNorth''s balance sheet shows assets at historical cost. Under ASC 805, the acquisition method requires that identifiable assets and liabilities of TrueNorth be measured at:$EXPL$
WHERE id = 3136;

-- ID 3153: Stock Compensation and Business Combinations (20 words)
-- ORIGINAL STEM: Employee stock purchase plans (ESPPs) that offer a discount of 5% or less and have no look-back feature are generally:
UPDATE questions SET
  stem = $EXPL$Waverly Technologies offers an ESPP that allows employees to purchase company shares at a 5% discount from the market price on the purchase date, with no look-back feature. Under ASC 718, such employee stock purchase plans are generally:$EXPL$
WHERE id = 3153;

COMMIT;
