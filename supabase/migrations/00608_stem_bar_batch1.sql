-- Migration: Stem expansion — BAR batch 1 (49 questions)
-- Date: 2026-03-29
-- Purpose: Expand 49 short stems with scenario context for BAR section
-- Note: ID 12868 skipped — fully placeholder question (choices a/b/c/d, no real content)
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Business Combinations, Capital Structure and Valuation, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Income Taxes Advanced, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 3181: Advanced Consolidations (9 words)
-- ORIGINAL STEM: Goodwill recognized in a business combination is allocated to:
UPDATE questions SET
  stem = $EXPL$Vanguard Industries acquired 100% of Preston Electronics for $12 million in a business combination accounted for under ASC 805. The purchase price exceeded the fair value of identifiable net assets by $3.2 million. For purposes of subsequent impairment testing, goodwill recognized in this combination is allocated to:$EXPL$
WHERE id = 3181;

-- ID 3180: Advanced Consolidations (10 words)
-- ORIGINAL STEM: Downstream intercompany profit on inventory sales is eliminated entirely against:
UPDATE questions SET
  stem = $EXPL$Caldwell Corp. (parent) sold inventory costing $180,000 to its 80%-owned subsidiary, Greenfield Inc., for $250,000. At year-end, 30% of the inventory remains unsold by Greenfield. When preparing consolidated financial statements, the unrealized downstream intercompany profit is eliminated entirely against:$EXPL$
WHERE id = 3180;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (2 questions)
-- ============================================================

-- ID 14888: Advanced Lease Transactions (9 words)
-- ORIGINAL STEM: Under ASC 842, what is the lease commencement date?
UPDATE questions SET
  stem = $EXPL$On March 1, 2025, Bayshore Logistics signs a seven-year lease for distribution center space. The landlord begins tenant improvements on April 15 and delivers possession of the space on June 1. Under ASC 842, what is the lease commencement date?$EXPL$
WHERE id = 14888;

-- ID 3426: Advanced Lease Transactions (10 words)
-- ORIGINAL STEM: Under ASC 842, a related party lease is measured using:
UPDATE questions SET
  stem = $EXPL$Trident Holdings leases office space from a subsidiary that is also controlled by its majority shareholder. The lease terms differ from what would be negotiated at arm''s length. Under ASC 842, a related party lease is measured using:$EXPL$
WHERE id = 3426;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (2 questions)
-- ============================================================

-- ID 3118: Advanced Revenue and Intangibles (6 words)
-- ORIGINAL STEM: Research and development costs are generally:
UPDATE questions SET
  stem = $EXPL$NovaTech Pharmaceuticals spent $4.5 million during 2025 on laboratory testing and prototype formulations for a new drug compound still in early-stage trials. Under U.S. GAAP, research and development costs such as these are generally:$EXPL$
WHERE id = 3118;

-- ID 3126: Advanced Revenue and Intangibles (7 words)
-- ORIGINAL STEM: Goodwill acquired in a business combination is:
UPDATE questions SET
  stem = $EXPL$Apex Media Group acquired Sterling Publishing in a business combination under ASC 805, recognizing $8 million of goodwill on the acquisition date. For subsequent accounting periods, goodwill acquired in this business combination is:$EXPL$
WHERE id = 3126;

-- ============================================================
-- BUSINESS COMBINATIONS (1 questions)
-- ============================================================

-- ID 4841: Business Combinations (9 words)
-- ORIGINAL STEM: Push-down accounting, when elected by the acquiree, results in:
UPDATE questions SET
  stem = $EXPL$Harmon Industries was acquired by Beacon Capital Partners for $95 million. Harmon''s management elects to apply push-down accounting to its separate financial statements. Push-down accounting, when elected by the acquiree, results in:$EXPL$
WHERE id = 4841;

-- ============================================================
-- CAPITAL STRUCTURE AND VALUATION (2 questions)
-- ============================================================

-- ID 5614: Capital Structure and Valuation (8 words)
-- ORIGINAL STEM: How is the cost of preferred stock calculated?
UPDATE questions SET
  stem = $EXPL$Ridgemont Corp. issued 8% preferred stock with a $100 par value at a net issuance price of $96 per share after flotation costs. The CFO is computing the component cost of capital for preferred equity. How is the cost of preferred stock calculated?$EXPL$
WHERE id = 5614;

-- ID 5689: Capital Structure and Valuation (8 words)
-- ORIGINAL STEM: Financial leverage refers to a firm's use of:
UPDATE questions SET
  stem = $EXPL$Whitfield Manufacturing has an EBIT of $400,000 and annual interest expense of $150,000 on its outstanding bonds. An analyst is assessing how the firm''s capital structure amplifies returns to equity holders. Financial leverage refers to a firm''s use of:$EXPL$
WHERE id = 5689;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 3192: Derivatives and Hedging (6 words)
-- ORIGINAL STEM: An interest rate swap typically involves:
UPDATE questions SET
  stem = $EXPL$Pinnacle Energy has a $20 million variable-rate term loan and wants to fix its borrowing costs. Its treasury department enters into a plain vanilla interest rate swap with a bank counterparty. An interest rate swap of this type typically involves:$EXPL$
WHERE id = 3192;

-- ID 3210: Derivatives and Hedging (11 words)
-- ORIGINAL STEM: Under ASC 815, which of the following is NOT a derivative?
UPDATE questions SET
  stem = $EXPL$An auditor is reviewing several financial instruments held by Lakewood Industries to determine proper classification under ASC 815. The auditor must identify which instruments meet the definition of a derivative. Under ASC 815, which of the following is NOT a derivative?$EXPL$
WHERE id = 3210;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (6 questions)
-- ============================================================

-- ID 7853: Financial Statement Analysis (5 words)
-- ORIGINAL STEM: What does residual income measure?
UPDATE questions SET
  stem = $EXPL$Orion Manufacturing''s Eastern Division reported net income of $2.4 million on average invested equity of $15 million. The corporate cost of equity is 12%. Management uses a performance metric that captures value creation above the minimum required return. What does residual income measure?$EXPL$
WHERE id = 7853;

-- ID 14932: Financial Statement Analysis (5 words)
-- ORIGINAL STEM: How is working capital calculated?
UPDATE questions SET
  stem = $EXPL$Crestline Retail reports current assets of $820,000 and current liabilities of $530,000 on its December 31, 2025, balance sheet. The CFO is assessing the company''s short-term financial cushion. How is working capital calculated?$EXPL$
WHERE id = 14932;

-- ID 14925: Financial Statement Analysis (6 words)
-- ORIGINAL STEM: What does the debt-to-equity ratio measure?
UPDATE questions SET
  stem = $EXPL$A credit analyst reviewing Townsend Industries notes total liabilities of $6 million and total stockholders'' equity of $4 million. The analyst wants to evaluate the company''s capital structure risk. What does the debt-to-equity ratio measure?$EXPL$
WHERE id = 14925;

-- ID 7846: Financial Statement Analysis (7 words)
-- ORIGINAL STEM: What does the cash conversion cycle measure?
UPDATE questions SET
  stem = $EXPL$Brighton Hardware has 45 days sales in inventory, 30 days sales outstanding, and pays its suppliers in an average of 25 days. The controller is evaluating the efficiency of the company''s working capital management. What does the cash conversion cycle measure?$EXPL$
WHERE id = 7846;

-- ID 14865: Financial Statement Analysis (7 words)
-- ORIGINAL STEM: What does the price-to-sales (P/S) ratio measure?
UPDATE questions SET
  stem = $EXPL$An analyst is evaluating CloudSync, an unprofitable SaaS startup with $40 million in annual revenue and a market capitalization of $320 million. Traditional earnings-based multiples cannot be applied. What does the price-to-sales (P/S) ratio measure?$EXPL$
WHERE id = 14865;

-- ID 14938: Financial Statement Analysis (7 words)
-- ORIGINAL STEM: What does book value per share represent?
UPDATE questions SET
  stem = $EXPL$Redwood Financial reports total stockholders'' equity of $18 million and 3 million common shares outstanding. An analyst is comparing this accounting-based metric to the current market price per share to assess potential undervaluation. What does book value per share represent?$EXPL$
WHERE id = 14938;

-- ============================================================
-- FINANCIAL VALUATION METHODS (5 questions)
-- ============================================================

-- ID 13219: Financial Valuation Methods (7 words)
-- ORIGINAL STEM: What is relative valuation in financial analysis?
UPDATE questions SET
  stem = $EXPL$Kensington Capital is valuing a mid-market logistics company and decides to compare its trading multiples to those of publicly traded peers rather than building a discounted cash flow model. What is relative valuation in financial analysis?$EXPL$
WHERE id = 13219;

-- ID 14264: Financial Valuation Methods (8 words)
-- ORIGINAL STEM: What is the cost approach to business valuation?
UPDATE questions SET
  stem = $EXPL$An appraiser is asked to value a specialized manufacturing facility that has no comparable sales and generates minimal cash flow. The appraiser selects a method based on the replacement cost of the company''s net assets. What is the cost approach to business valuation?$EXPL$
WHERE id = 14264;

-- ID 15613: Financial Valuation Methods (8 words)
-- ORIGINAL STEM: In fixed-income analysis, what does modified duration measure?
UPDATE questions SET
  stem = $EXPL$A portfolio manager holds $50 million in investment-grade corporate bonds and is concerned about potential Federal Reserve rate increases. The manager calculates a risk metric to estimate the portfolio''s price sensitivity to yield changes. In fixed-income analysis, what does modified duration measure?$EXPL$
WHERE id = 15613;

-- ID 14827: Financial Valuation Methods (9 words)
-- ORIGINAL STEM: What is natural hedging in foreign currency risk management?
UPDATE questions SET
  stem = $EXPL$Oceanic Shipping earns revenue in euros from European customers and also incurs significant operating expenses in euros at its Rotterdam terminal. Rather than purchasing derivatives, the CFO structures operations to offset currency exposure organically. What is natural hedging in foreign currency risk management?$EXPL$
WHERE id = 14827;

-- ID 642: Financial Valuation Methods (10 words)
-- ORIGINAL STEM: What is the definition of enterprise value in business valuation?
UPDATE questions SET
  stem = $EXPL$An investment bank is advising on the acquisition of Palisade Technologies, which has a market capitalization of $600 million, total debt of $200 million, and cash of $50 million. The bank uses a metric reflecting the total cost to acquire the business. What is the definition of enterprise value in business valuation?$EXPL$
WHERE id = 642;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4864: Foreign Currency Transactions (16 words)
-- ORIGINAL STEM: A highly inflationary economy is defined under ASC 830 as one with cumulative inflation of approximately:
UPDATE questions SET
  stem = $EXPL$Grafton Industries has a subsidiary operating in a South American country that has experienced severe currency devaluation over the past three years. The controller is determining whether the subsidiary''s functional currency economy qualifies as highly inflationary under ASC 830, which is defined as cumulative inflation of approximately:$EXPL$
WHERE id = 4864;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (3 questions)
-- ============================================================

-- ID 3405: Fund-to-Government-Wide Reconciliation (12 words)
-- ORIGINAL STEM: On the governmental fund balance sheet, long-term general obligation bonds payable are:
UPDATE questions SET
  stem = $EXPL$The City of Lakeview issued $10 million in general obligation bonds to finance a new civic center. When preparing the governmental fund balance sheet at year-end, the city''s finance director notes that these long-term general obligation bonds payable are:$EXPL$
WHERE id = 3405;

-- ID 3408: Fund-to-Government-Wide Reconciliation (12 words)
-- ORIGINAL STEM: Capital lease (now finance lease) payments in governmental funds are reported as:
UPDATE questions SET
  stem = $EXPL$Elwood County entered into a finance lease for fire-fighting equipment with annual payments of $75,000. The county''s accountant is recording the payment in the Debt Service Fund. Capital lease (now finance lease) payments in governmental funds are reported as:$EXPL$
WHERE id = 3408;

-- ID 14351: Fund-to-Government-Wide Reconciliation (13 words)
-- ORIGINAL STEM: Which proprietary fund type is consolidated with governmental activities in the government-wide reconciliation?
UPDATE questions SET
  stem = $EXPL$The City of Briarwood operates a fleet maintenance fund that provides vehicle repair services exclusively to other city departments. During the government-wide reconciliation, which proprietary fund type is consolidated with governmental activities?$EXPL$
WHERE id = 14351;

-- ============================================================
-- INCOME TAXES ADVANCED (1 questions)
-- ============================================================

-- ID 14717: Income Taxes Advanced (8 words)
-- ORIGINAL STEM: Under ASC 740, what is a temporary difference?
UPDATE questions SET
  stem = $EXPL$Belmont Corp. uses straight-line depreciation for financial reporting and accelerated depreciation for its tax return, creating a discrepancy between the book and tax bases of its fixed assets. Under ASC 740, what is a temporary difference?$EXPL$
WHERE id = 14717;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 4883: Intangible Assets Advanced (12 words)
-- ORIGINAL STEM: Which qualitative factor would LEAST likely indicate that goodwill may be impaired?
UPDATE questions SET
  stem = $EXPL$Granite Solutions is performing its annual qualitative goodwill impairment assessment under ASC 350. Management is reviewing several factors to determine whether it is more likely than not that the reporting unit''s fair value is below its carrying amount. Which qualitative factor would LEAST likely indicate that goodwill may be impaired?$EXPL$
WHERE id = 4883;

-- ============================================================
-- INTERFUND TRANSACTIONS (3 questions)
-- ============================================================

-- ID 3328: Interfund Transactions (9 words)
-- ORIGINAL STEM: An interfund loan differs from an interfund transfer because:
UPDATE questions SET
  stem = $EXPL$The City of Riverton''s General Fund provides $500,000 to the Capital Projects Fund for a new community center. The finance director must determine whether to record this as a loan or a transfer. An interfund loan differs from an interfund transfer because:$EXPL$
WHERE id = 3328;

-- ID 1196: Interfund Transactions (11 words)
-- ORIGINAL STEM: Which of the following is classified as a reciprocal interfund activity?
UPDATE questions SET
  stem = $EXPL$The City of Fairview''s Internal Service Fund bills the General Fund $120,000 for fleet maintenance services performed during the fiscal year. GASB Statement No. 34 classifies interfund activities as reciprocal or nonreciprocal. Which of the following is classified as a reciprocal interfund activity?$EXPL$
WHERE id = 1196;

-- ID 14295: Interfund Transactions (11 words)
-- ORIGINAL STEM: How are interfund reimbursements presented on the governmental fund financial statements?
UPDATE questions SET
  stem = $EXPL$The General Fund of Cedar County inadvertently paid $18,000 for office supplies that properly belong to the Special Revenue Fund. The Special Revenue Fund subsequently reimburses the General Fund. How are interfund reimbursements presented on the governmental fund financial statements?$EXPL$
WHERE id = 14295;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (2 questions)
-- ============================================================

-- ID 3257: Internal-Use Software and Cloud Computing (9 words)
-- ORIGINAL STEM: Under ASC 350-40, training costs for internal-use software are:
UPDATE questions SET
  stem = $EXPL$Pinnacle Financial Services recently deployed a new internal-use CRM system. During the rollout, the company spent $85,000 training employees on the new platform''s features and workflows. Under ASC 350-40, training costs for internal-use software are:$EXPL$
WHERE id = 3257;

-- ID 3255: Internal-Use Software and Cloud Computing (10 words)
-- ORIGINAL STEM: Data conversion costs incurred during the application development stage are:
UPDATE questions SET
  stem = $EXPL$Meridian Healthcare is building a proprietary patient records system and spends $200,000 migrating historical data from the legacy platform so the new software can function properly. Data conversion costs incurred during the application development stage are:$EXPL$
WHERE id = 3255;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (5 questions)
-- ============================================================

-- ID 15052: Pension and Postretirement Benefits (8 words)
-- ORIGINAL STEM: What does the projected benefit obligation (PBO) represent?
UPDATE questions SET
  stem = $EXPL$Thornton Manufacturing sponsors a defined benefit pension plan. The plan actuary reports a beginning PBO of $14 million, reflecting assumptions about future salary increases and employee demographics. What does the projected benefit obligation (PBO) represent?$EXPL$
WHERE id = 15052;

-- ID 15041: Pension and Postretirement Benefits (11 words)
-- ORIGINAL STEM: What distinguishes a defined benefit plan from a defined contribution plan?
UPDATE questions SET
  stem = $EXPL$Hargrove Engineering offers its employees a retirement plan that promises monthly payments based on years of service and final average salary. The CFO is comparing this arrangement to a 401(k)-style alternative. What distinguishes a defined benefit plan from a defined contribution plan?$EXPL$
WHERE id = 15041;

-- ID 3302: Pension and Postretirement Benefits (12 words)
-- ORIGINAL STEM: The expected postretirement benefit obligation (EPBO) differs from the APBO in that:
UPDATE questions SET
  stem = $EXPL$Crossland Industries provides retiree health care benefits and is evaluating the two key obligation measures under ASC 715-60. The plan actuary calculates both the EPBO and APBO for the current year. The expected postretirement benefit obligation (EPBO) differs from the APBO in that:$EXPL$
WHERE id = 3302;

-- ID 3307: Pension and Postretirement Benefits (12 words)
-- ORIGINAL STEM: Under ASC 715, where is service cost reported on the income statement?
UPDATE questions SET
  stem = $EXPL$Baxter Corp.''s defined benefit pension plan incurred $320,000 in service cost during 2025. Following ASU 2017-07, the controller must determine the proper income statement classification for this component. Under ASC 715, where is service cost reported on the income statement?$EXPL$
WHERE id = 3307;

-- ID 3395: Pension and Postretirement Benefits (12 words)
-- ORIGINAL STEM: A defined contribution plan differs from a defined benefit plan in that:
UPDATE questions SET
  stem = $EXPL$Westbrook Corp. sponsors a 401(k) plan in which the company matches employee contributions up to 4% of salary. The company bears no obligation beyond its annual matching contribution. A defined contribution plan differs from a defined benefit plan in that:$EXPL$
WHERE id = 3395;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (3 questions)
-- Note: ID 12868 skipped — fully placeholder question (choices a/b/c/d)
-- ============================================================

-- ID 12974: Prospective Analysis and Forecasting (6 words)
-- ORIGINAL STEM: What is the naïve forecasting method?
UPDATE questions SET
  stem = $EXPL$A budget analyst at Redfield Distribution needs a simple baseline forecast for next quarter''s unit sales. The analyst considers a method that uses the most recent period''s actual result as the prediction for the next period. What is the naïve forecasting method?$EXPL$
WHERE id = 12974;

-- ID 14132: Prospective Analysis and Forecasting (8 words)
-- ORIGINAL STEM: What does the regression assumption of homoscedasticity require?
UPDATE questions SET
  stem = $EXPL$An analyst at Cordova Manufacturing built a regression model predicting overhead costs based on machine hours. Before relying on the results, the analyst checks whether key statistical assumptions hold. What does the regression assumption of homoscedasticity require?$EXPL$
WHERE id = 14132;

-- ID 14807: Prospective Analysis and Forecasting (8 words)
-- ORIGINAL STEM: What does trend analysis examine in financial forecasting?
UPDATE questions SET
  stem = $EXPL$The CFO of Summit Brands is reviewing five years of revenue and operating margin data to identify directional patterns before preparing the annual budget. What does trend analysis examine in financial forecasting?$EXPL$
WHERE id = 14807;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (3 questions)
-- ============================================================

-- ID 14039: Risk Management and Economics (6 words)
-- ORIGINAL STEM: What is a coincident economic indicator?
UPDATE questions SET
  stem = $EXPL$An economist at Hartwell Capital is categorizing macroeconomic data points as leading, coincident, or lagging to calibrate the firm''s business-cycle model. What is a coincident economic indicator?$EXPL$
WHERE id = 14039;

-- ID 14047: Risk Management and Economics (6 words)
-- ORIGINAL STEM: What does M1 money supply include?
UPDATE questions SET
  stem = $EXPL$A Federal Reserve policy brief references the M1 money supply as a key measure of the most liquid forms of money in the economy. What does M1 money supply include?$EXPL$
WHERE id = 14047;

-- ID 14042: Risk Management and Economics (7 words)
-- ORIGINAL STEM: What distinguishes demand-pull inflation from cost-push inflation?
UPDATE questions SET
  stem = $EXPL$During 2025, the U.S. economy experiences rising consumer spending fueled by low interest rates, while a separate industry faces price increases driven by surging raw material costs. What distinguishes demand-pull inflation from cost-push inflation?$EXPL$
WHERE id = 14042;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 3236: State and Local Government Reporting (8 words)
-- ORIGINAL STEM: Under GASB 87 (Leases), a government lessee reports:
UPDATE questions SET
  stem = $EXPL$The City of Ashton enters a 10-year lease for administrative office space with annual payments of $95,000. The city''s accountant is applying the new GASB 87 lease standard. Under GASB 87 (Leases), a government lessee reports:$EXPL$
WHERE id = 3236;

-- ID 3243: State and Local Government Reporting (9 words)
-- ORIGINAL STEM: Custodial funds (formerly agency funds under GASB 84) report:
UPDATE questions SET
  stem = $EXPL$Marion County collects property taxes on behalf of several overlapping special districts and remits the proceeds monthly. The county accounts for these pass-through amounts in a custodial fund. Custodial funds (formerly agency funds under GASB 84) report:$EXPL$
WHERE id = 3243;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (3 questions)
-- ============================================================

-- ID 3149: Stock Compensation and Business Combinations (3 words)
-- ORIGINAL STEM: Assembled workforce is:
UPDATE questions SET
  stem = $EXPL$During the purchase price allocation for its acquisition of Linden Technologies, Cascade Corp.''s valuation team identifies a skilled engineering team as a potential intangible asset. Under ASC 805, assembled workforce is:$EXPL$
WHERE id = 3149;

-- ID 3158: Stock Compensation and Business Combinations (7 words)
-- ORIGINAL STEM: Liability-classified stock-based awards under ASC 718 are:
UPDATE questions SET
  stem = $EXPL$Verity Corp. grants stock appreciation rights (SARs) that will be settled in cash at the end of the vesting period. The controller is determining the measurement approach for these awards. Liability-classified stock-based awards under ASC 718 are:$EXPL$
WHERE id = 3158;

-- ID 3133: Stock Compensation and Business Combinations (11 words)
-- ORIGINAL STEM: Restricted stock units (RSUs) differ from stock options primarily because RSUs:
UPDATE questions SET
  stem = $EXPL$Atlas Biotech grants 5,000 RSUs and 10,000 stock options to key executives as part of its 2025 compensation plan. The CFO is explaining the structural differences between the two instruments to the board. Restricted stock units (RSUs) differ from stock options primarily because RSUs:$EXPL$
WHERE id = 3133;

COMMIT;
