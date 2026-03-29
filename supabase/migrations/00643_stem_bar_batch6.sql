-- Migration: Stem expansion — BAR batch 6 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Capital Structure and Valuation, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Fund-to-Government-Wide Reconciliation, Income Taxes Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (3 questions)
-- ============================================================

-- ID 3372: Advanced Consolidations (13 words)
-- ORIGINAL STEM: Intercompany bond transactions (where one affiliate purchases the bonds of another) result in:
UPDATE questions SET
  stem = $EXPL$During 2025, Halcyon Corp.''s wholly owned subsidiary purchased $2 million of Halcyon''s outstanding bonds on the open market at 97. In preparing year-end consolidated financial statements, intercompany bond transactions of this type result in:$EXPL$
WHERE id = 3372;

-- ID 3171: Advanced Consolidations (14 words)
-- ORIGINAL STEM: Intercompany loans between a parent and subsidiary appear on the consolidated balance sheet as:
UPDATE questions SET
  stem = $EXPL$Pryor Industries lent $500,000 to its 80%-owned subsidiary, Kelton Inc., in October 2025 to fund a facility expansion. At December 31, the loan remains outstanding. Intercompany loans of this nature appear on the consolidated balance sheet as:$EXPL$
WHERE id = 3171;

-- ID 701: Advanced Consolidations (15 words)
-- ORIGINAL STEM: When a parent loses control of a subsidiary through a sale of shares, the parent:
UPDATE questions SET
  stem = $EXPL$Aldrich Corp. held 75% of Devlin Co.''s outstanding shares. In September 2025, Aldrich sold 50% of Devlin''s shares to an unrelated buyer, reducing its ownership to 25%. When a parent loses control of a subsidiary through such a share sale, the parent:$EXPL$
WHERE id = 701;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (2 questions)
-- ============================================================

-- ID 3391: Advanced Lease Transactions (15 words)
-- ORIGINAL STEM: A sale-leaseback transaction at below-market terms (sale price below fair value) under ASC 842 requires:
UPDATE questions SET
  stem = $EXPL$Trident Manufacturing sells its production facility to Greystone Realty for $4.2 million and immediately leases it back. The building''s fair value is $5.0 million. Under ASC 842, a sale-leaseback at below-market terms requires:$EXPL$
WHERE id = 3391;

-- ID 1080: Advanced Lease Transactions (16 words)
-- ORIGINAL STEM: Under ASC 842, what is required when an operating lease is modified to extend its term?
UPDATE questions SET
  stem = $EXPL$On January 1, 2025, Nova Logistics has two years remaining on an operating lease for warehouse space. The lessor agrees to extend the term by three additional years at revised annual payments. Under ASC 842, what is required when an operating lease is modified to extend its term?$EXPL$
WHERE id = 1080;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (2 questions)
-- ============================================================

-- ID 661: Advanced Revenue and Intangibles (16 words)
-- ORIGINAL STEM: Under ASC 606, what are the two methods for estimating variable consideration in a revenue contract?
UPDATE questions SET
  stem = $EXPL$Cascade Construction enters a $12 million building contract that includes a $400,000 bonus for early completion. The project manager must estimate the bonus when determining the transaction price. Under ASC 606, what are the two methods for estimating variable consideration?$EXPL$
WHERE id = 661;

-- ID 673: Advanced Revenue and Intangibles (16 words)
-- ORIGINAL STEM: A software license that provides the customer with functional IP (standalone functionality) is recognized as revenue:
UPDATE questions SET
  stem = $EXPL$Vertex Solutions sells a perpetual license for its data analytics platform to Kepler Corp. for $250,000. The software functions independently without Vertex''s ongoing involvement. A license providing the customer with functional IP of this type is recognized as revenue:$EXPL$
WHERE id = 673;

-- ============================================================
-- CAPITAL STRUCTURE AND VALUATION (2 questions)
-- ============================================================

-- ID 5578: Capital Structure and Valuation (13 words)
-- ORIGINAL STEM: What type of risk does beta measure in the Capital Asset Pricing Model?
UPDATE questions SET
  stem = $EXPL$An analyst at Redmond Capital is estimating the required return on Fulcrum Inc.''s common stock using the Capital Asset Pricing Model. Fulcrum''s beta is 1.4. What type of risk does beta measure in this framework?$EXPL$
WHERE id = 5578;

-- ID 5669: Capital Structure and Valuation (13 words)
-- ORIGINAL STEM: In the Capital Asset Pricing Model, the risk-free rate is typically proxied by:
UPDATE questions SET
  stem = $EXPL$While building a CAPM estimate for Orion Pharmaceuticals, an analyst needs to select an appropriate proxy for the risk-free rate. In the Capital Asset Pricing Model, the risk-free rate is typically proxied by:$EXPL$
WHERE id = 5669;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 3198: Derivatives and Hedging (16 words)
-- ORIGINAL STEM: A company holds a put option on its own inventory. This derivative can be designated as:
UPDATE questions SET
  stem = $EXPL$Coastal Commodities purchases a put option on 50,000 bushels of wheat to protect against a decline in the market price of its grain inventory. Under ASC 815, this derivative can be designated as:$EXPL$
WHERE id = 3198;

-- ID 713: Derivatives and Hedging (18 words)
-- ORIGINAL STEM: A forward contract to purchase inventory for normal operations can be excluded from ASC 815 derivative accounting under:
UPDATE questions SET
  stem = $EXPL$Bridgeport Manufacturing enters a forward contract to buy 10,000 pounds of copper at a fixed price for use in its regular production process. The company intends to take physical delivery. This forward can be excluded from ASC 815 derivative accounting under:$EXPL$
WHERE id = 713;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (4 questions)
-- ============================================================

-- ID 14866: Financial Statement Analysis (15 words)
-- ORIGINAL STEM: What is the key difference between the total debt ratio and the long-term debt ratio?
UPDATE questions SET
  stem = $EXPL$A credit analyst at First National Bank is reviewing two solvency metrics for Pinnacle Corp.: the total debt ratio and the long-term debt ratio. What is the key difference between these two measures?$EXPL$
WHERE id = 14866;

-- ID 602: Financial Statement Analysis (17 words)
-- ORIGINAL STEM: Which of the following describes the three components of the DuPont analysis formula for return on equity?
UPDATE questions SET
  stem = $EXPL$Thornton Industries reports a 22% ROE. An analyst decomposes the figure using DuPont analysis to identify which drivers—profitability, efficiency, or leverage—are contributing most. Which of the following correctly describes the three components of the DuPont formula?$EXPL$
WHERE id = 602;

-- ID 609: Financial Statement Analysis (17 words)
-- ORIGINAL STEM: Which ratio is most useful for comparing the profitability of two companies with significantly different capital structures?
UPDATE questions SET
  stem = $EXPL$Mercer Holdings and Trellis Corp. operate in the same industry but have very different levels of debt. An analyst wants to compare operating profitability while neutralizing leverage differences. Which ratio is most useful for this comparison?$EXPL$
WHERE id = 609;

-- ID 611: Financial Statement Analysis (18 words)
-- ORIGINAL STEM: A company's receivables turnover decreased from 12 to 8 over two years. What is the most likely implication?
UPDATE questions SET
  stem = $EXPL$Baxter Supply''s receivables turnover declined from 12 times in 2023 to 8 times in 2025, while sales remained relatively flat. What is the most likely implication of this trend?$EXPL$
WHERE id = 611;

-- ============================================================
-- FINANCIAL VALUATION METHODS (5 questions)
-- ============================================================

-- ID 3039: Financial Valuation Methods (14 words)
-- ORIGINAL STEM: The two most common methods for calculating terminal value in a DCF model are:
UPDATE questions SET
  stem = $EXPL$An analyst at Meridian Partners is building a five-year DCF model for Solaris Corp. and must estimate the value of cash flows beyond the projection period. The two most common methods for calculating terminal value in a DCF model are:$EXPL$
WHERE id = 3039;

-- ID 3053: Financial Valuation Methods (14 words)
-- ORIGINAL STEM: Under ASC 820, when multiple valuation techniques are used, the resulting fair value should:
UPDATE questions SET
  stem = $EXPL$Wentworth Industries applies both a market approach and an income approach to measure the fair value of an acquired trademark. The two techniques yield slightly different values. Under ASC 820, when multiple valuation techniques are used, the resulting fair value should:$EXPL$
WHERE id = 3053;

-- ID 14826: Financial Valuation Methods (14 words)
-- ORIGINAL STEM: What type of economic indicator do stock market returns and new building permits represent?
UPDATE questions SET
  stem = $EXPL$A financial planning team at Lakeview Capital monitors metrics such as stock market returns and new building permits to anticipate shifts in economic activity. What type of economic indicator do these metrics represent?$EXPL$
WHERE id = 14826;

-- ID 15619: Financial Valuation Methods (14 words)
-- ORIGINAL STEM: Which economic indicator moves simultaneously with the overall economy and is classified as coincident?
UPDATE questions SET
  stem = $EXPL$During a quarterly economic briefing, an analyst at Greyfield Investments identifies indicators that move in lockstep with current economic output rather than leading or lagging it. Which indicator is classified as coincident?$EXPL$
WHERE id = 15619;

-- ID 3061: Financial Valuation Methods (15 words)
-- ORIGINAL STEM: When valuing a company using a DCF model, an increase in working capital investment will:
UPDATE questions SET
  stem = $EXPL$Birch Analytics is projecting free cash flow to the firm for Kendall Corp. The forecast shows a $1.5 million increase in net working capital next year due to higher inventory requirements. In a DCF model, this increase in working capital investment will:$EXPL$
WHERE id = 3061;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (3 questions)
-- ============================================================

-- ID 3411: Fund-to-Government-Wide Reconciliation (18 words)
-- ORIGINAL STEM: A deferred amount on refunding (from an advance refunding of debt) is reported on the government-wide statements as:
UPDATE questions SET
  stem = $EXPL$The City of Ravenswood advance-refunded $8 million of general obligation bonds by issuing new bonds at a lower rate. The difference between the reacquisition price and the carrying amount of the old debt creates a deferred amount on refunding. On the government-wide statements, this amount is reported as:$EXPL$
WHERE id = 3411;

-- ID 14350: Fund-to-Government-Wide Reconciliation (18 words)
-- ORIGINAL STEM: What role does accumulated depreciation play in the balance sheet reconciliation from governmental fund balance to net position?
UPDATE questions SET
  stem = $EXPL$The Town of Elmdale is preparing its annual reconciliation from governmental fund balances to the government-wide statement of net position. Capital assets total $45 million with accumulated depreciation of $18 million. What role does accumulated depreciation play in this reconciliation?$EXPL$
WHERE id = 14350;

-- ID 1187: Fund-to-Government-Wide Reconciliation (19 words)
-- ORIGINAL STEM: Which of the following is the PRIMARY reason a reconciliation between governmental fund statements and government-wide statements is required?
UPDATE questions SET
  stem = $EXPL$Brighton County presents both governmental fund financial statements and government-wide financial statements in its comprehensive annual financial report. GASB 34 requires a reconciliation between these two sets of statements. What is the primary reason this reconciliation is required?$EXPL$
WHERE id = 1187;

-- ============================================================
-- INCOME TAXES ADVANCED (2 questions)
-- ============================================================

-- ID 14696: Income Taxes Advanced (15 words)
-- ORIGINAL STEM: Under ASU 2015-17, how are deferred tax assets and liabilities classified on the balance sheet?
UPDATE questions SET
  stem = $EXPL$Hartwell Corp.''s tax department identifies both current and noncurrent temporary differences when preparing the December 31, 2025 financial statements. Under ASU 2015-17, how are deferred tax assets and liabilities classified on the balance sheet?$EXPL$
WHERE id = 14696;

-- ID 14707: Income Taxes Advanced (15 words)
-- ORIGINAL STEM: Under ASC 740, at what tax rate must deferred tax assets and liabilities be measured?
UPDATE questions SET
  stem = $EXPL$Fenwick Industries has significant temporary differences at year-end 2025. Congress enacted a new corporate tax rate effective January 1, 2026. Under ASC 740, at what tax rate must Fenwick measure its deferred tax assets and liabilities?$EXPL$
WHERE id = 14707;

-- ============================================================
-- INTERFUND TRANSACTIONS (3 questions)
-- ============================================================

-- ID 3337: Interfund Transactions (15 words)
-- ORIGINAL STEM: A transfer from governmental activities to business-type activities on the government-wide statement of activities is:
UPDATE questions SET
  stem = $EXPL$The City of Oakmont''s general fund transfers $600,000 to the municipal water utility enterprise fund to subsidize infrastructure repairs. On the government-wide statement of activities, a transfer from governmental activities to business-type activities is:$EXPL$
WHERE id = 3337;

-- ID 3350: Interfund Transactions (15 words)
-- ORIGINAL STEM: On the statement of revenues, expenditures, and changes in fund balances, interfund transfers are reported:
UPDATE questions SET
  stem = $EXPL$Monroe County''s general fund transfers $1.2 million to the debt service fund for upcoming bond payments. On the governmental fund statement of revenues, expenditures, and changes in fund balances, interfund transfers are reported:$EXPL$
WHERE id = 3350;

-- ID 14288: Interfund Transactions (16 words)
-- ORIGINAL STEM: Under GASB 33, a tax on gasoline purchases is classified as what type of nonexchange revenue?
UPDATE questions SET
  stem = $EXPL$The State of Greenfield collects a per-gallon excise tax each time gasoline is purchased at retail stations. Under GASB Statement No. 33, this tax is classified as what type of nonexchange revenue?$EXPL$
WHERE id = 14288;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (3 questions)
-- ============================================================

-- ID 3385: Internal-Use Software and Cloud Computing (15 words)
-- ORIGINAL STEM: A company develops software both for internal use and to sell externally. Which guidance applies?
UPDATE questions SET
  stem = $EXPL$Sterling Technologies builds a scheduling platform initially for its own operations but later decides to market the product to external customers. When a company develops software both for internal use and for external sale, which guidance applies?$EXPL$
WHERE id = 3385;

-- ID 3254: Internal-Use Software and Cloud Computing (16 words)
-- ORIGINAL STEM: Capitalized implementation costs for a cloud computing service contract are presented on the balance sheet as:
UPDATE questions SET
  stem = $EXPL$Denali Corp. signs a three-year SaaS agreement and capitalizes $180,000 of configuration and customization costs incurred during the application development stage. Under ASU 2018-15, these capitalized CCA implementation costs are presented on the balance sheet as:$EXPL$
WHERE id = 3254;

-- ID 3256: Internal-Use Software and Cloud Computing (16 words)
-- ORIGINAL STEM: A company upgrades its internal-use software to add significant new functionality. The upgrade costs should be:
UPDATE questions SET
  stem = $EXPL$Ridgeline Corp. spends $320,000 to add a real-time analytics module to its existing internal ERP system, providing significant new reporting capabilities that were not available before. Under ASC 350-40, these upgrade costs should be:$EXPL$
WHERE id = 3256;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (5 questions)
-- ============================================================

-- ID 15078: Pension and Postretirement Benefits (15 words)
-- ORIGINAL STEM: Who bears the investment risk associated with plan assets in a defined benefit pension plan?
UPDATE questions SET
  stem = $EXPL$Glenmark Industries sponsors a defined benefit pension plan with $40 million in plan assets invested across equity and fixed-income securities. During 2025, the portfolio''s actual return falls below the expected return. Who bears the investment risk associated with plan assets in this arrangement?$EXPL$
WHERE id = 15078;

-- ID 14877: Pension and Postretirement Benefits (16 words)
-- ORIGINAL STEM: Under ASC 715, what is a transition obligation in the context of defined benefit pension accounting?
UPDATE questions SET
  stem = $EXPL$While reviewing legacy pension disclosures, an analyst at Whitfield Corp. encounters a reference to a transition obligation recognized when the company first adopted the current pension accounting standard. Under ASC 715, what is a transition obligation?$EXPL$
WHERE id = 14877;

-- ID 15088: Pension and Postretirement Benefits (16 words)
-- ORIGINAL STEM: When should an employer begin recognizing the cost of postretirement health care benefits under ASC 715-60?
UPDATE questions SET
  stem = $EXPL$Linden Manufacturing provides retiree health care benefits to employees who complete at least 20 years of service. The HR department asks when pension expense recognition begins for these benefits. Under ASC 715-60, when should an employer begin recognizing the cost of postretirement health care benefits?$EXPL$
WHERE id = 15088;

-- ID 1091: Pension and Postretirement Benefits (17 words)
-- ORIGINAL STEM: The difference between the actual return on plan assets and the expected return on plan assets is:
UPDATE questions SET
  stem = $EXPL$Carver Corp.''s defined benefit plan assets earned an actual return of $3.2 million in 2025, while the expected return based on the long-term rate was $2.8 million. The difference between the actual and expected return on plan assets is:$EXPL$
WHERE id = 1091;

-- ID 15038: Pension and Postretirement Benefits (17 words)
-- ORIGINAL STEM: What is the accounting treatment for assets held in a rabbi trust under a deferred compensation arrangement?
UPDATE questions SET
  stem = $EXPL$Hawthorn Corp. establishes a rabbi trust funded with $5 million in marketable securities to meet obligations under its executive deferred compensation plan. What is the accounting treatment for assets held in this type of trust?$EXPL$
WHERE id = 15038;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (4 questions)
-- ============================================================

-- ID 622: Prospective Analysis and Forecasting (16 words)
-- ORIGINAL STEM: Under AT-C Section 305, a CPA may perform which of the following on prospective financial statements?
UPDATE questions SET
  stem = $EXPL$A client asks Baker & Towne CPAs to provide assurance on a set of financial projections prepared for a bank loan application. Under AT-C Section 305, a CPA may perform which of the following services on prospective financial statements?$EXPL$
WHERE id = 622;

-- ID 2978: Prospective Analysis and Forecasting (16 words)
-- ORIGINAL STEM: The margin of safety is 20% for a company with current sales of $2,000,000. This means:
UPDATE questions SET
  stem = $EXPL$Prescott Retail reports annual sales of $2,000,000 and a breakeven point of $1,600,000, giving it a margin of safety of 20%. This margin of safety means:$EXPL$
WHERE id = 2978;

-- ID 2969: Prospective Analysis and Forecasting (17 words)
-- ORIGINAL STEM: What is the primary difference between a financial forecast and a financial projection under AICPA attestation standards?
UPDATE questions SET
  stem = $EXPL$A CFO at Greenleaf Corp. is deciding whether to issue a financial forecast or a financial projection to accompany a bond offering. Under AICPA attestation standards, what is the primary difference between these two types of prospective financial statements?$EXPL$
WHERE id = 2969;

-- ID 2985: Prospective Analysis and Forecasting (17 words)
-- ORIGINAL STEM: In a CVP graph, the point where the total revenue line intersects the total cost line represents:
UPDATE questions SET
  stem = $EXPL$Davenport Furniture''s controller prepares a cost-volume-profit graph showing total revenue and total costs plotted against unit volume. On this CVP graph, the point where the total revenue line intersects the total cost line represents:$EXPL$
WHERE id = 2985;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (4 questions)
-- ============================================================

-- ID 12727: Risk Management and Economics (15 words)
-- ORIGINAL STEM: The trough phase of the business cycle is best described as the point at which:
UPDATE questions SET
  stem = $EXPL$An economist at Summit Advisory is tracking macroeconomic data and observes that GDP has stopped declining and unemployment has peaked. The trough phase of the business cycle is best described as the point at which:$EXPL$
WHERE id = 12727;

-- ID 12748: Risk Management and Economics (15 words)
-- ORIGINAL STEM: During the expansion phase of the business cycle, which condition is most likely to occur?
UPDATE questions SET
  stem = $EXPL$The National Bureau of Economic Research declares that the economy entered an expansion phase in early 2025 following a brief contraction. During the expansion phase of the business cycle, which condition is most likely to occur?$EXPL$
WHERE id = 12748;

-- ID 659: Risk Management and Economics (16 words)
-- ORIGINAL STEM: An interest rate swap where a company pays fixed and receives floating is used to hedge:
UPDATE questions SET
  stem = $EXPL$Pacific Warehousing has a $20 million variable-rate loan tied to SOFR. To manage its exposure, the company enters an interest rate swap paying a fixed 5.2% and receiving SOFR. This swap is used to hedge:$EXPL$
WHERE id = 659;

-- ID 12740: Risk Management and Economics (16 words)
-- ORIGINAL STEM: Under the trade-off theory of capital structure, the optimal level of debt balances which two factors?
UPDATE questions SET
  stem = $EXPL$Ridgemont Corp.''s board is debating whether to issue additional long-term debt to fund an acquisition. The CFO references the trade-off theory of capital structure. Under this theory, the optimal level of debt balances which two factors?$EXPL$
WHERE id = 12740;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (3 questions)
-- ============================================================

-- ID 3221: State and Local Government Reporting (14 words)
-- ORIGINAL STEM: Which of the following is a program revenue on the government-wide statement of activities?
UPDATE questions SET
  stem = $EXPL$The City of Belmont is preparing its government-wide statement of activities and must classify its revenue sources as either program revenues or general revenues. Which of the following qualifies as a program revenue?$EXPL$
WHERE id = 3221;

-- ID 743: State and Local Government Reporting (15 words)
-- ORIGINAL STEM: Government-mandated nonexchange transactions (such as federal grants with eligibility requirements) are recognized as revenue when:
UPDATE questions SET
  stem = $EXPL$Lancaster County receives a $3 million federal education grant requiring the county to spend the funds on approved programs and submit compliance documentation. Government-mandated nonexchange transactions of this type are recognized as revenue when:$EXPL$
WHERE id = 743;

-- ID 3380: State and Local Government Reporting (15 words)
-- ORIGINAL STEM: A government issues tax anticipation notes (TANs) due in 4 months. These are classified as:
UPDATE questions SET
  stem = $EXPL$In August 2025, Cedar Falls issues $2 million in tax anticipation notes maturing in December 2025 to cover operating expenses until property tax collections arrive. These short-term borrowings are classified as:$EXPL$
WHERE id = 3380;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (3 questions)
-- ============================================================

-- ID 3134: Stock Compensation and Business Combinations (16 words)
-- ORIGINAL STEM: Under ASC 718, when an employee forfeits unvested stock options due to termination, the company should:
UPDATE questions SET
  stem = $EXPL$In March 2025, a senior engineer at Vanguard Dynamics resigns before completing the four-year vesting period on 5,000 stock options granted two years earlier. Under ASC 718, when an employee forfeits unvested stock options due to termination, the company should:$EXPL$
WHERE id = 3134;

-- ID 3144: Stock Compensation and Business Combinations (16 words)
-- ORIGINAL STEM: When stock options are modified to increase the fair value of the award, the company recognizes:
UPDATE questions SET
  stem = $EXPL$Keystone Corp. reduces the exercise price on outstanding employee stock options from $45 to $30 per share, increasing the fair value of each award by $6. When stock options are modified to increase the fair value of the award, the company recognizes:$EXPL$
WHERE id = 3144;

-- ID 3157: Stock Compensation and Business Combinations (16 words)
-- ORIGINAL STEM: Under ASC 805, preexisting relationships between the acquirer and acquiree (such as a supply contract) are:
UPDATE questions SET
  stem = $EXPL$Before acquiring Nexon Corp., Verity Industries had a five-year exclusive supply agreement with Nexon. At the acquisition date, three years remain on the contract. Under ASC 805, preexisting relationships between the acquirer and acquiree are:$EXPL$
WHERE id = 3157;

COMMIT;
