-- Migration: Stem expansion — BAR batch 7 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Business Combinations, Capital Structure and Valuation, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Income Taxes Advanced, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 3186: Advanced Consolidations (16 words)
-- ORIGINAL STEM: The fair value of noncontrolling interest at the acquisition date is used under ASC 805 to:
UPDATE questions SET
  stem = $EXPL$Granite Industries acquires 80% of Summit Corp on April 1, 2025, for $12 million in cash. Summit''s identifiable net assets have a fair value of $13 million. Under ASC 805, the fair value of the 20% noncontrolling interest at the acquisition date is used to:$EXPL$
WHERE id = 3186;

-- ID 693: Advanced Consolidations (17 words)
-- ORIGINAL STEM: An entity must consolidate a VIE when it is the primary beneficiary. The primary beneficiary must have:
UPDATE questions SET
  stem = $EXPL$Beacon Financial created a special purpose entity to securitize $50 million in receivables. The SPE qualifies as a variable interest entity under ASC 810. To be identified as the primary beneficiary required to consolidate the VIE, an entity must have:$EXPL$
WHERE id = 693;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (2 questions)
-- ============================================================

-- ID 3284: Advanced Lease Transactions (17 words)
-- ORIGINAL STEM: Variable lease payments based on sales volume (e.g., percentage rent) are accounted for under ASC 842 as:
UPDATE questions SET
  stem = $EXPL$Coastal Boutique leases retail space and pays base rent of $4,000 per month plus 3% of monthly gross sales exceeding $100,000. Under ASC 842, the variable lease payments tied to sales volume are accounted for as:$EXPL$
WHERE id = 3284;

-- ID 3272: Advanced Lease Transactions (19 words)
-- ORIGINAL STEM: A lease modification that shortens the lease term or reduces the scope of the lease is accounted for as:
UPDATE questions SET
  stem = $EXPL$On July 1, 2025, Pinnacle Corp modifies its 10-year office lease to return one of its two leased floors, reducing the remaining scope by approximately half. Under ASC 842, this type of modification is accounted for as:$EXPL$
WHERE id = 3272;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (2 questions)
-- ============================================================

-- ID 3106: Advanced Revenue and Intangibles (17 words)
-- ORIGINAL STEM: An entity determines it is a principal rather than an agent in a transaction if the entity:
UPDATE questions SET
  stem = $EXPL$MarketHub operates an online platform connecting sellers with buyers. MarketHub sets the selling price, holds inventory in its warehouse before shipment, and bears the risk of product returns. Under ASC 606, an entity determines it is a principal rather than an agent if the entity:$EXPL$
WHERE id = 3106;

-- ID 3119: Advanced Revenue and Intangibles (18 words)
-- ORIGINAL STEM: A company enters into a bill-and-hold arrangement. Under ASC 606, revenue can be recognized before physical delivery if:
UPDATE questions SET
  stem = $EXPL$Titan Steel manufactures custom components for Orion Aerospace. Orion requests that Titan retain the finished goods in its warehouse due to limited storage at Orion''s facility. Under ASC 606, revenue on this bill-and-hold arrangement can be recognized before physical delivery if:$EXPL$
WHERE id = 3119;

-- ============================================================
-- BUSINESS COMBINATIONS (2 questions)
-- ============================================================

-- ID 4835: Business Combinations (11 words)
-- ORIGINAL STEM: In a business combination, which of the following determines the acquirer?
UPDATE questions SET
  stem = $EXPL$Redwood Holdings and Cascade Enterprises announce a merger in which Cascade shareholders will receive Redwood shares. The combined entity will retain Redwood''s management team and board majority. In a business combination under ASC 805, which of the following determines the acquirer?$EXPL$
WHERE id = 4835;

-- ID 4843: Business Combinations (16 words)
-- ORIGINAL STEM: In a reverse acquisition, which entity's equity structure is reflected in the post-combination consolidated financial statements?
UPDATE questions SET
  stem = $EXPL$Spruce Inc., a private operating company, merges into Cedar Corp., a publicly traded shell company, in a transaction identified as a reverse acquisition. In the post-combination consolidated financial statements, which entity''s equity structure is reflected?$EXPL$
WHERE id = 4843;

-- ============================================================
-- CAPITAL STRUCTURE AND VALUATION (1 questions)
-- ============================================================

-- ID 5613: Capital Structure and Valuation (14 words)
-- ORIGINAL STEM: What does Modigliani-Miller Proposition I state in a world without taxes or bankruptcy costs?
UPDATE questions SET
  stem = $EXPL$During a finance seminar, an analyst at Bridgeport Capital discusses how capital structure affects firm value under perfect-market assumptions. What does Modigliani-Miller Proposition I state in a world without taxes or bankruptcy costs?$EXPL$
WHERE id = 5613;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 3200: Derivatives and Hedging (18 words)
-- ORIGINAL STEM: A company with fixed-rate debt enters a receive-fixed, pay-floating interest rate swap. This effectively converts the debt to:
UPDATE questions SET
  stem = $EXPL$Harborview Manufacturing has $20 million of 5% fixed-rate bonds outstanding. To adjust its interest rate exposure, Harborview enters a receive-fixed, pay-floating interest rate swap with the same notional amount. This swap effectively converts the debt to:$EXPL$
WHERE id = 3200;

-- ID 3208: Derivatives and Hedging (18 words)
-- ORIGINAL STEM: If a derivative does not qualify for hedge accounting under ASC 815, changes in its fair value are:
UPDATE questions SET
  stem = $EXPL$Westfield Industries purchases a commodity option but does not formally designate it as a hedge under ASC 815. At the end of each reporting period, changes in the option''s fair value are:$EXPL$
WHERE id = 3208;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (4 questions)
-- ============================================================

-- ID 2929: Financial Statement Analysis (18 words)
-- ORIGINAL STEM: Which ratio best measures a company's ability to meet its short-term obligations using only its most liquid assets?
UPDATE questions SET
  stem = $EXPL$Lakewood Electronics reports cash of $90,000, short-term investments of $60,000, receivables of $150,000, inventory of $220,000, and current liabilities of $300,000. Which ratio best measures the company''s ability to meet short-term obligations using only its most liquid assets?$EXPL$
WHERE id = 2929;

-- ID 2930: Financial Statement Analysis (18 words)
-- ORIGINAL STEM: A company has operating income of $450,000 and interest expense of $150,000. The times interest earned ratio is:
UPDATE questions SET
  stem = $EXPL$Evergreen Supply Co. reports operating income of $450,000 for the year ended December 31, 2025. Its annual interest expense on outstanding bank loans totals $150,000. The times interest earned ratio is:$EXPL$
WHERE id = 2930;

-- ID 7845: Financial Statement Analysis (18 words)
-- ORIGINAL STEM: On a common-size income statement, what is the base amount to which all other line items are compared?
UPDATE questions SET
  stem = $EXPL$An analyst at Whitfield Partners prepares a common-size income statement for Crestline Manufacturing to compare its cost structure against industry peers of different sizes. What is the base amount to which all other line items are compared?$EXPL$
WHERE id = 7845;

-- ID 2951: Financial Statement Analysis (19 words)
-- ORIGINAL STEM: Which of the following scenarios would most likely improve a company's return on assets without affecting its profit margin?
UPDATE questions SET
  stem = $EXPL$Ridgeway Corp''s DuPont analysis shows a net profit margin of 8%, asset turnover of 1.2x, and equity multiplier of 2.0x. Management wants to improve return on assets without changing the profit margin. Which scenario would most likely achieve this?$EXPL$
WHERE id = 2951;

-- ============================================================
-- FINANCIAL VALUATION METHODS (9 questions)
-- ============================================================

-- ID 13235: Financial Valuation Methods (15 words)
-- ORIGINAL STEM: What is the primary limitation of the simple payback period as a capital budgeting tool?
UPDATE questions SET
  stem = $EXPL$Ashford Manufacturing evaluates a $500,000 equipment purchase expected to generate $125,000 per year for six years. The CFO calculates a four-year payback period but questions whether this metric alone is sufficient. What is the primary limitation of the simple payback period as a capital budgeting tool?$EXPL$
WHERE id = 13235;

-- ID 14253: Financial Valuation Methods (15 words)
-- ORIGINAL STEM: What does the term "unit of account" refer to under ASC 820, Fair Value Measurement?
UPDATE questions SET
  stem = $EXPL$Meridian Corp holds a 15% equity investment in a publicly traded company and is determining how to measure fair value under ASC 820. What does the term "unit of account" refer to under this standard?$EXPL$
WHERE id = 14253;

-- ID 15592: Financial Valuation Methods (15 words)
-- ORIGINAL STEM: Under Modigliani-Miller Proposition I without taxes, a firm's total value is determined by what factor?
UPDATE questions SET
  stem = $EXPL$A graduate student analyzing two identical firms—one financed entirely with equity and the other with 50% debt—applies classical capital structure theory. Under Modigliani-Miller Proposition I without taxes, a firm''s total value is determined by what factor?$EXPL$
WHERE id = 15592;

-- ID 3058: Financial Valuation Methods (16 words)
-- ORIGINAL STEM: The weighted average cost of capital used as a discount rate in DCF analysis should reflect:
UPDATE questions SET
  stem = $EXPL$Sterling Advisors is performing a DCF valuation of a mid-market manufacturing company and must select an appropriate discount rate for the projected free cash flows to the firm. The WACC used in this analysis should reflect:$EXPL$
WHERE id = 3058;

-- ID 3060: Financial Valuation Methods (16 words)
-- ORIGINAL STEM: Under the market approach to fair value under ASC 820, a Level 2 input would be:
UPDATE questions SET
  stem = $EXPL$A valuation specialist is measuring the fair value of a corporate bond that trades infrequently. The specialist applies the market approach under ASC 820. A Level 2 input in this measurement would be:$EXPL$
WHERE id = 3060;

-- ID 3064: Financial Valuation Methods (16 words)
-- ORIGINAL STEM: The excess earnings method (also called the multi-period excess earnings method) is primarily used to value:
UPDATE questions SET
  stem = $EXPL$After acquiring Keystone Media, an appraiser applies the multi-period excess earnings method to measure a specific intangible asset at fair value for the purchase price allocation. This method is primarily used to value:$EXPL$
WHERE id = 3064;

-- ID 15600: Financial Valuation Methods (17 words)
-- ORIGINAL STEM: What two components make up the cost of equity under the dividend growth model (Gordon Growth Model)?
UPDATE questions SET
  stem = $EXPL$Clearwater Corp pays a regular annual dividend and expects steady long-term growth. An analyst uses the Gordon Growth Model to estimate Clearwater''s cost of equity. What two components make up the cost of equity under this model?$EXPL$
WHERE id = 15600;

-- ID 648: Financial Valuation Methods (18 words)
-- ORIGINAL STEM: When calculating enterprise value from a DCF using FCFF, to arrive at equity value per share you must:
UPDATE questions SET
  stem = $EXPL$An analyst values Crestwood Industries using a DCF model and discounts projected FCFF at WACC to obtain an enterprise value of $840 million. To convert this figure to equity value per share, the analyst must:$EXPL$
WHERE id = 648;

-- ID 3036: Financial Valuation Methods (18 words)
-- ORIGINAL STEM: Free cash flow to equity (FCFE) differs from free cash flow to the firm (FCFF) primarily because FCFE:
UPDATE questions SET
  stem = $EXPL$A junior analyst at Vanguard Capital is comparing FCFF and FCFE models for a leveraged buyout target. Free cash flow to equity differs from free cash flow to the firm primarily because FCFE:$EXPL$
WHERE id = 3036;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (2 questions)
-- ============================================================

-- ID 14428: Foreign Currency Transactions (18 words)
-- ORIGINAL STEM: Under ASC 830, at what exchange rate is a foreign currency transaction initially recorded on the transaction date?
UPDATE questions SET
  stem = $EXPL$On March 15, 2025, Palisade Corp purchases inventory from a German supplier for 200,000 euros when the spot rate is $1.08 per euro. Under ASC 830, at what exchange rate is this foreign currency transaction initially recorded?$EXPL$
WHERE id = 14428;

-- ID 4849: Foreign Currency Transactions (19 words)
-- ORIGINAL STEM: Under the current rate method, which exchange rate is used to translate a foreign subsidiary's revenue and expense accounts?
UPDATE questions SET
  stem = $EXPL$Silverline Corp consolidates its UK subsidiary, whose functional currency is the British pound. During translation of the subsidiary''s income statement using the current rate method, which exchange rate is used for revenue and expense accounts?$EXPL$
WHERE id = 4849;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (2 questions)
-- ============================================================

-- ID 1195: Fund-to-Government-Wide Reconciliation (19 words)
-- ORIGINAL STEM: Depreciation expense of $1,400,000 for governmental activities capital assets appears as a reconciling item on the government-wide statements because:
UPDATE questions SET
  stem = $EXPL$The City of Oakmont reports $1,400,000 in depreciation on governmental activities capital assets. This amount appears as a reconciling item when converting from fund financial statements to government-wide statements because:$EXPL$
WHERE id = 1195;

-- ID 3403: Fund-to-Government-Wide Reconciliation (19 words)
-- ORIGINAL STEM: A government spent $3,000,000 on new vehicles during the year. In the governmental fund statements this is reported as:
UPDATE questions SET
  stem = $EXPL$During fiscal year 2025, the City of Briarwood purchases a fleet of emergency vehicles for $3,000,000 using General Fund resources. In the governmental fund financial statements, this purchase is reported as:$EXPL$
WHERE id = 3403;

-- ============================================================
-- INCOME TAXES ADVANCED (1 questions)
-- ============================================================

-- ID 14712: Income Taxes Advanced (16 words)
-- ORIGINAL STEM: Under ASC 740, a tax credit carryforward gives rise to which type of deferred tax item?
UPDATE questions SET
  stem = $EXPL$Horizon Energy Corp generated $800,000 in research and development tax credits during 2025 that exceed its current tax liability. The unused credits can be carried forward to future years. Under ASC 740, a tax credit carryforward gives rise to which type of deferred tax item?$EXPL$
WHERE id = 14712;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (2 questions)
-- ============================================================

-- ID 14737: Intangible Assets Advanced (16 words)
-- ORIGINAL STEM: Under ASC 730, how are research and development costs generally treated in a company's financial statements?
UPDATE questions SET
  stem = $EXPL$During 2025, Apex Biotech spends $4.2 million on laboratory research for a new pharmaceutical compound that has not yet received regulatory approval. Under ASC 730, how are these research and development costs generally treated in the financial statements?$EXPL$
WHERE id = 14737;

-- ID 14740: Intangible Assets Advanced (17 words)
-- ORIGINAL STEM: Under ASC 805, into which category of identifiable intangible assets does an order or production backlog fall?
UPDATE questions SET
  stem = $EXPL$Atlas Manufacturing acquires Forge Industries in a business combination. Forge has $6 million in unfilled customer orders at the acquisition date. Under ASC 805, into which category of identifiable intangible assets does this order backlog fall?$EXPL$
WHERE id = 14740;

-- ============================================================
-- INTERFUND TRANSACTIONS (2 questions)
-- ============================================================

-- ID 3345: Interfund Transactions (18 words)
-- ORIGINAL STEM: The General Fund transfers $1,000,000 to an enterprise fund to subsidize operations. On the government-wide statement of activities:
UPDATE questions SET
  stem = $EXPL$The City of Elmwood''s General Fund transfers $1,000,000 to the Water Utility Enterprise Fund to subsidize below-cost water rates for low-income residents. On the government-wide statement of activities, this transfer is reported as:$EXPL$
WHERE id = 3345;

-- ID 14280: Interfund Transactions (18 words)
-- ORIGINAL STEM: What account title does the borrowing fund use to report a long-term interfund loan received from another fund?
UPDATE questions SET
  stem = $EXPL$The Capital Projects Fund of Linden County borrows $3 million from the General Fund under a five-year repayment agreement. What account title does the borrowing fund use to report this long-term interfund loan?$EXPL$
WHERE id = 14280;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (2 questions)
-- ============================================================

-- ID 1067: Internal-Use Software and Cloud Computing (17 words)
-- ORIGINAL STEM: Under ASC 350-40, which costs are capitalizable during the application development stage of an internal-use software project?
UPDATE questions SET
  stem = $EXPL$Nexus Logistics begins building a custom inventory management system for internal use only. The project has been authorized, funded, and is in the application development stage. Under ASC 350-40, which costs incurred during this stage are capitalizable?$EXPL$
WHERE id = 1067;

-- ID 3260: Internal-Use Software and Cloud Computing (19 words)
-- ORIGINAL STEM: The amortization expense for capitalized implementation costs of a cloud computing service contract is presented in the income statement:
UPDATE questions SET
  stem = $EXPL$Vertex Corp capitalized $220,000 of implementation costs for a four-year SaaS arrangement classified as a service contract. When reporting the annual amortization of these capitalized costs, the expense is presented in the income statement:$EXPL$
WHERE id = 3260;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (4 questions)
-- ============================================================

-- ID 15095: Pension and Postretirement Benefits (17 words)
-- ORIGINAL STEM: Where are actuarial gains and losses from a defined benefit pension plan initially recognized under ASC 715?
UPDATE questions SET
  stem = $EXPL$Belmont Industries'' actuary revised the mortality assumptions for its defined benefit pension plan in 2025, resulting in a $2.4 million actuarial loss. Under ASC 715, where is this actuarial loss initially recognized?$EXPL$
WHERE id = 15095;

-- ID 14878: Pension and Postretirement Benefits (18 words)
-- ORIGINAL STEM: Under ASC 715-80, how does an employer participating in a multi-employer defined benefit pension plan recognize pension expense?
UPDATE questions SET
  stem = $EXPL$Hawthorne Construction participates in a multi-employer defined benefit pension plan covering workers from several companies in the region. Under ASC 715-80, how does Hawthorne recognize its pension expense for this plan?$EXPL$
WHERE id = 14878;

-- ID 15092: Pension and Postretirement Benefits (18 words)
-- ORIGINAL STEM: Which of the following is an example of a postretirement benefit other than pensions covered by ASC 715-60?
UPDATE questions SET
  stem = $EXPL$Grandview Manufacturing provides several postretirement benefits to its former employees beyond their pension plan. The company''s controller is reviewing ASC 715-60 to ensure proper accounting. Which of the following is an example of an OPEB covered by this standard?$EXPL$
WHERE id = 15092;

-- ID 15033: Pension and Postretirement Benefits (19 words)
-- ORIGINAL STEM: Under ASC 710-10, which condition must be met to accrue a liability for compensated absences such as vacation pay?
UPDATE questions SET
  stem = $EXPL$Riverton Corp''s employees accumulate unused vacation days that vest at year-end. The HR director asks the controller when a liability must be recorded. Under ASC 710-10, which condition must be met to accrue a liability for compensated absences such as vacation pay?$EXPL$
WHERE id = 15033;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (4 questions)
-- ============================================================

-- ID 14122: Prospective Analysis and Forecasting (17 words)
-- ORIGINAL STEM: What initial value is typically used to start an exponential smoothing forecast when no prior forecast exists?
UPDATE questions SET
  stem = $EXPL$Brightfield Retail is implementing exponential smoothing to forecast monthly demand but has no prior forecast to serve as a starting point. What initial value is typically used to begin the exponential smoothing process when no prior forecast exists?$EXPL$
WHERE id = 14122;

-- ID 2980: Prospective Analysis and Forecasting (18 words)
-- ORIGINAL STEM: When constructing a pro forma balance sheet using the percent-of-sales method, the "plug" figure (external financing needed) represents:
UPDATE questions SET
  stem = $EXPL$Trident Corp projects 20% revenue growth next year and prepares a pro forma balance sheet using the percent-of-sales method. After computing projected assets and spontaneous liabilities, the resulting "plug" figure for external financing needed represents:$EXPL$
WHERE id = 2980;

-- ID 2994: Prospective Analysis and Forecasting (18 words)
-- ORIGINAL STEM: Which forecasting technique is most appropriate when historical data is limited, such as for a new product launch?
UPDATE questions SET
  stem = $EXPL$Lumina Technologies plans to launch an entirely new product category with no prior sales history. The forecasting team must select a technique despite the absence of historical data. Which approach is most appropriate in this situation?$EXPL$
WHERE id = 2994;

-- ID 3353: Prospective Analysis and Forecasting (18 words)
-- ORIGINAL STEM: A company with DOL of 4.0 experiences a 5% decline in sales. Operating income will change by approximately:
UPDATE questions SET
  stem = $EXPL$Falcon Industries has a degree of operating leverage of 4.0, reflecting its high fixed-cost structure. During Q3 2025, the company experiences a 5% decline in sales. Operating income will change by approximately:$EXPL$
WHERE id = 3353;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (3 questions)
-- ============================================================

-- ID 3080: Risk Management and Economics (17 words)
-- ORIGINAL STEM: A company has both euro-denominated receivables and euro-denominated payables. The net currency exposure can be reduced through:
UPDATE questions SET
  stem = $EXPL$Global Parts Inc. has euro-denominated receivables of EUR 2 million and euro-denominated payables of EUR 1.5 million. The treasurer wants to reduce the company''s net currency exposure. This can be achieved through:$EXPL$
WHERE id = 3080;

-- ID 14776: Risk Management and Economics (17 words)
-- ORIGINAL STEM: What does it mean when a foreign currency is said to be trading at a forward premium?
UPDATE questions SET
  stem = $EXPL$A treasury analyst at Northbridge Corp observes that the 90-day forward rate for the Japanese yen is higher than the current spot rate. What does it mean when a foreign currency is said to be trading at a forward premium?$EXPL$
WHERE id = 14776;

-- ID 654: Risk Management and Economics (19 words)
-- ORIGINAL STEM: A bond has a modified duration of 6.0. If interest rates decrease by 0.75%, the bond price will approximately:
UPDATE questions SET
  stem = $EXPL$Eastfield Capital holds a corporate bond portfolio with a modified duration of 6.0. Market analysts forecast that benchmark interest rates will decrease by 0.75%. Based on this duration, the bond price will approximately:$EXPL$
WHERE id = 654;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 14848: State and Local Government Reporting (16 words)
-- ORIGINAL STEM: Under GASB standards, which of the following is one of the four types of fiduciary funds?
UPDATE questions SET
  stem = $EXPL$A newly hired government accountant in Maplewood County is classifying the county''s funds for annual financial reporting purposes. Under GASB standards, which of the following is one of the four types of fiduciary funds?$EXPL$
WHERE id = 14848;

-- ID 722: State and Local Government Reporting (17 words)
-- ORIGINAL STEM: Under GASB standards, which governmental fund type always qualifies as a major fund regardless of its size?
UPDATE questions SET
  stem = $EXPL$The finance director of Clearfield Township is preparing the annual financial statements and must determine which governmental funds to report as major funds. Under GASB standards, which governmental fund type always qualifies as a major fund regardless of its size?$EXPL$
WHERE id = 722;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (2 questions)
-- ============================================================

-- ID 3365: Stock Compensation and Business Combinations (16 words)
-- ORIGINAL STEM: Under ASC 718, the expected term of stock options for nonpublic companies may be estimated using:
UPDATE questions SET
  stem = $EXPL$Prairie Holdings, a privately held company, grants stock options to key executives in January 2025. Because it lacks sufficient historical exercise data, the company must estimate the expected option term. Under ASC 718, nonpublic companies may estimate the expected term using:$EXPL$
WHERE id = 3365;

-- ID 3367: Stock Compensation and Business Combinations (18 words)
-- ORIGINAL STEM: The acquirer in a business combination recognizes a contingent liability of the acquiree at the acquisition date if:
UPDATE questions SET
  stem = $EXPL$Vanguard Corp acquires Stellar Products on June 30, 2025. Stellar is a defendant in a pending product liability lawsuit. Under ASC 805, the acquirer recognizes a contingent liability of the acquiree at the acquisition date if:$EXPL$
WHERE id = 3367;

COMMIT;
