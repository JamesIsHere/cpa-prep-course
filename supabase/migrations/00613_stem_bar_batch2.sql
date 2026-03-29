-- Migration: Stem expansion — BAR batch 2 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for BAR section
-- Affected topics: Advanced Consolidations, Advanced Lease Transactions, Advanced Revenue and Intangibles, Capital Structure and Valuation, Derivatives and Hedging, Financial Statement Analysis, Financial Valuation Methods, Foreign Currency Transactions, Fund-to-Government-Wide Reconciliation, Income Taxes Advanced, Intangible Assets Advanced, Interfund Transactions, Internal-Use Software and Cloud Computing, Pension and Postretirement Benefits, Prospective Analysis and Forecasting, Risk Management and Economics, State and Local Government Reporting, Stock Compensation and Business Combinations

BEGIN;

-- ============================================================
-- ADVANCED CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 3164: Advanced Consolidations (12 words)
-- ORIGINAL STEM: On consolidation, the subsidiary's equity accounts (common stock, APIC, retained earnings) are:
UPDATE questions SET
  stem = $EXPL$Raines Corp. acquired 100% of Decker Industries in January 2025 for $8 million. During the preparation of year-end consolidated financial statements, the accountant reviews Decker''s equity accounts—common stock, APIC, and retained earnings. On consolidation, these subsidiary equity accounts are:$EXPL$
WHERE id = 3164;

-- ID 3183: Advanced Consolidations (12 words)
-- ORIGINAL STEM: In consolidation, unrealized profit on intercompany sale of a depreciable asset is:
UPDATE questions SET
  stem = $EXPL$In March 2025, Townsend Corp. sold equipment with a book value of $180,000 to its subsidiary, Kepler Inc., for $250,000. Kepler is depreciating the equipment over its remaining five-year life. In the consolidated financial statements, the unrealized profit on this intercompany sale is:$EXPL$
WHERE id = 3183;

-- ============================================================
-- ADVANCED LEASE TRANSACTIONS (2 questions)
-- ============================================================

-- ID 14896: Advanced Lease Transactions (11 words)
-- ORIGINAL STEM: Under ASC 842, how is the short-term lease exemption election applied?
UPDATE questions SET
  stem = $EXPL$Nova Industries leases several categories of assets, including vehicles (all 10-month leases) and office equipment (all 9-month leases with no purchase options). The controller is considering the short-term lease exemption under ASC 842. How is this election applied?$EXPL$
WHERE id = 14896;

-- ID 3269: Advanced Lease Transactions (12 words)
-- ORIGINAL STEM: In a sale-leaseback that qualifies as a sale, the seller-lessee should recognize:
UPDATE questions SET
  stem = $EXPL$Pryor Manufacturing sells a factory building with a carrying value of $2.4 million to Weldon Capital for $3.5 million and immediately leases it back for seven years. The transfer qualifies as a sale under ASC 606. As the seller-lessee, Pryor should recognize:$EXPL$
WHERE id = 3269;

-- ============================================================
-- ADVANCED REVENUE AND INTANGIBLES (2 questions)
-- ============================================================

-- ID 3104: Advanced Revenue and Intangibles (10 words)
-- ORIGINAL STEM: The five-step revenue recognition model under ASC 606 begins with:
UPDATE questions SET
  stem = $EXPL$Meridian Software enters into a three-year arrangement with a customer that bundles a software license, implementation services, and ongoing support. The revenue team is applying the ASC 606 five-step model. What is the first step in this framework?$EXPL$
WHERE id = 3104;

-- ID 3102: Advanced Revenue and Intangibles (11 words)
-- ORIGINAL STEM: Under ASC 606, variable consideration (such as volume rebates) should be:
UPDATE questions SET
  stem = $EXPL$Oakridge Distributors offers tiered volume rebates to retail customers, with the rebate percentage depending on total annual purchases. For the year ended December 31, 2025, the controller is determining how to measure the rebate under ASC 606. Variable consideration such as these rebates should be:$EXPL$
WHERE id = 3102;

-- ============================================================
-- CAPITAL STRUCTURE AND VALUATION (2 questions)
-- ============================================================

-- ID 5676: Capital Structure and Valuation (9 words)
-- ORIGINAL STEM: In corporate finance, a firm's capital structure refers to:
UPDATE questions SET
  stem = $EXPL$Barrett Industries is preparing for a bond issuance and its CFO is evaluating how the new debt will change the firm''s overall financing composition. In corporate finance, a firm''s capital structure refers to:$EXPL$
WHERE id = 5676;

-- ID 5691: Capital Structure and Valuation (9 words)
-- ORIGINAL STEM: A firm's weighted average cost of capital (WACC) represents:
UPDATE questions SET
  stem = $EXPL$Crestline Corp. finances operations with 45% debt and 55% equity. The CFO is calculating the blended return threshold for evaluating new projects. A firm''s weighted average cost of capital (WACC) represents:$EXPL$
WHERE id = 5691;

-- ============================================================
-- DERIVATIVES AND HEDGING (2 questions)
-- ============================================================

-- ID 3203: Derivatives and Hedging (12 words)
-- ORIGINAL STEM: A derivative has a notional amount of $10,000,000. The notional amount represents:
UPDATE questions SET
  stem = $EXPL$Langford Corp. enters into an interest rate swap with a notional amount of $10,000,000 to manage exposure on its variable-rate term loan. The notional amount in this derivative represents:$EXPL$
WHERE id = 3203;

-- ID 3215: Derivatives and Hedging (12 words)
-- ORIGINAL STEM: Under ASC 815, the ineffective portion of a cash flow hedge is:
UPDATE questions SET
  stem = $EXPL$Sterling Industries designated a forward contract as a cash flow hedge of a forecasted inventory purchase. At quarter-end, hedge effectiveness testing reveals that a portion of the derivative''s gain does not offset the hedged risk. Under ASC 815, this ineffective portion is:$EXPL$
WHERE id = 3215;

-- ============================================================
-- FINANCIAL STATEMENT ANALYSIS (6 questions)
-- ============================================================

-- ID 14950: Financial Statement Analysis (7 words)
-- ORIGINAL STEM: What does the defensive interval ratio measure?
UPDATE questions SET
  stem = $EXPL$Fenwick Electronics holds $600,000 in cash, $200,000 in marketable securities, and $400,000 in net receivables, with daily operating expenses of $30,000. An analyst is computing the defensive interval ratio. What does this ratio measure?$EXPL$
WHERE id = 14950;

-- ID 14959: Financial Statement Analysis (7 words)
-- ORIGINAL STEM: What does return on equity (ROE) measure?
UPDATE questions SET
  stem = $EXPL$Hawthorne Manufacturing reported net income of $480,000 on average shareholders'' equity of $3,200,000 for fiscal year 2025. An analyst is evaluating the company''s return on equity. What does ROE measure?$EXPL$
WHERE id = 14959;

-- ID 14965: Financial Statement Analysis (7 words)
-- ORIGINAL STEM: What does the asset turnover ratio measure?
UPDATE questions SET
  stem = $EXPL$Belmont Retail generated $12 million in revenue on average total assets of $4 million during 2025. The financial analyst is computing the asset turnover ratio for comparison against industry peers. What does this ratio measure?$EXPL$
WHERE id = 14965;

-- ID 14974: Financial Statement Analysis (7 words)
-- ORIGINAL STEM: What does the price-to-earnings (P/E) ratio represent?
UPDATE questions SET
  stem = $EXPL$Ashford Technology''s stock trades at $72 per share with trailing earnings per share of $4.50. An equity analyst is evaluating the company''s price-to-earnings ratio relative to the sector average. What does the P/E ratio represent?$EXPL$
WHERE id = 14974;

-- ID 14975: Financial Statement Analysis (7 words)
-- ORIGINAL STEM: What does the operating profit margin measure?
UPDATE questions SET
  stem = $EXPL$Greystone Manufacturing reported operating income of $1.8 million on revenue of $12 million for 2025. The controller is benchmarking the company''s operating profit margin against competitors. What does this metric measure?$EXPL$
WHERE id = 14975;

-- ID 7833: Financial Statement Analysis (8 words)
-- ORIGINAL STEM: What does horizontal analysis of financial statements measure?
UPDATE questions SET
  stem = $EXPL$A financial analyst at Redfield Corp. is comparing the company''s income statements from 2023, 2024, and 2025 to identify trends in revenue and expenses. This technique is known as horizontal analysis. What does horizontal analysis measure?$EXPL$
WHERE id = 7833;

-- ============================================================
-- FINANCIAL VALUATION METHODS (5 questions)
-- ============================================================

-- ID 3065: Financial Valuation Methods (10 words)
-- ORIGINAL STEM: Price/Sales (P/S) ratio is particularly useful for valuing companies that:
UPDATE questions SET
  stem = $EXPL$An analyst is valuing CloudSpark, an early-stage SaaS company that has not yet achieved profitability. Traditional earnings-based multiples are not meaningful. The Price/Sales (P/S) ratio is particularly useful for valuing companies that:$EXPL$
WHERE id = 3065;

-- ID 14814: Financial Valuation Methods (10 words)
-- ORIGINAL STEM: What does duration measure in the context of bond valuation?
UPDATE questions SET
  stem = $EXPL$A portfolio manager at Sable Capital holds $50 million in investment-grade bonds and is assessing interest rate sensitivity ahead of an expected Federal Reserve rate decision. What does duration measure in bond valuation?$EXPL$
WHERE id = 14814;

-- ID 14819: Financial Valuation Methods (10 words)
-- ORIGINAL STEM: What hedging instrument converts variable-rate debt payments into fixed-rate payments?
UPDATE questions SET
  stem = $EXPL$Canton Industries has a $20 million term loan at SOFR plus 2.5% and wants to lock in a predictable interest cost over the next five years. What hedging instrument converts variable-rate debt payments into fixed-rate payments?$EXPL$
WHERE id = 14819;

-- ID 3067: Financial Valuation Methods (11 words)
-- ORIGINAL STEM: When performing a purchase price allocation under ASC 805, goodwill represents:
UPDATE questions SET
  stem = $EXPL$Voss Corp. acquired Linden Biotech for $45 million in cash. The fair value of Linden''s identifiable net assets was determined to be $32 million. When performing the purchase price allocation under ASC 805, the resulting goodwill represents:$EXPL$
WHERE id = 3067;

-- ID 14266: Financial Valuation Methods (11 words)
-- ORIGINAL STEM: What is the measurement date under ASC 820, Fair Value Measurement?
UPDATE questions SET
  stem = $EXPL$Holloway Corp. is measuring the fair value of an investment property for its December 31, 2025, financial statements. The controller is determining the appropriate measurement date under ASC 820. What is the measurement date under this standard?$EXPL$
WHERE id = 14266;

-- ============================================================
-- FOREIGN CURRENCY TRANSACTIONS (1 questions)
-- ============================================================

-- ID 4853: Foreign Currency Transactions (17 words)
-- ORIGINAL STEM: Which of the following factors is most important in determining an entity's functional currency under ASC 830?
UPDATE questions SET
  stem = $EXPL$Kendall Corp., a U.S.-based parent, has a subsidiary in Germany that generates revenue in euros but receives significant financing from the parent in U.S. dollars. Management is determining the subsidiary''s functional currency under ASC 830. Which factor is most important in making this determination?$EXPL$
WHERE id = 4853;

-- ============================================================
-- FUND-TO-GOVERNMENT-WIDE RECONCILIATION (3 questions)
-- ============================================================

-- ID 14365: Fund-to-Government-Wide Reconciliation (13 words)
-- ORIGINAL STEM: What does the unrestricted component of net position on the government-wide statements represent?
UPDATE questions SET
  stem = $EXPL$The City of Brookhaven is preparing its government-wide statement of net position for the fiscal year ended June 30, 2025. The finance director is classifying net position into its three required components. What does the unrestricted component of net position represent?$EXPL$
WHERE id = 14365;

-- ID 3319: Fund-to-Government-Wide Reconciliation (14 words)
-- ORIGINAL STEM: Compensated absences (accrued vacation and sick pay) are reported in governmental fund statements as:
UPDATE questions SET
  stem = $EXPL$The Town of Glendale estimates that its employees have accumulated $1.2 million in unused vacation and sick leave as of June 30, 2025. Only $85,000 is expected to be paid with currently available resources. In the governmental fund statements, compensated absences are reported as:$EXPL$
WHERE id = 3319;

-- ID 3412: Fund-to-Government-Wide Reconciliation (15 words)
-- ORIGINAL STEM: When converting to government-wide statements, the change in accrued interest payable on long-term debt is:
UPDATE questions SET
  stem = $EXPL$Clarkson County''s general obligation bonds have $45,000 of accrued interest at June 30, 2025, up from $38,000 a year earlier. The finance director is preparing the reconciliation from fund statements to government-wide statements. The change in accrued interest payable on this long-term debt is:$EXPL$
WHERE id = 3412;

-- ============================================================
-- INCOME TAXES ADVANCED (1 questions)
-- ============================================================

-- ID 14706: Income Taxes Advanced (12 words)
-- ORIGINAL STEM: Under ASC 740, what is the initial recognition exception for deferred taxes?
UPDATE questions SET
  stem = $EXPL$Westbrook Industries acquires a warehouse for $3 million. The tax basis equals the book basis at the acquisition date, and the transaction does not arise from a business combination. The controller is reviewing whether a deferred tax asset or liability should be recorded. Under ASC 740, what is the initial recognition exception for deferred taxes?$EXPL$
WHERE id = 14706;

-- ============================================================
-- INTANGIBLE ASSETS ADVANCED (1 questions)
-- ============================================================

-- ID 4882: Intangible Assets Advanced (13 words)
-- ORIGINAL STEM: Under ASC 350, how frequently must indefinite-lived intangible assets be tested for impairment?
UPDATE questions SET
  stem = $EXPL$Drake Beverages carries a $6 million trademark on its balance sheet classified as an indefinite-lived intangible asset. The CFO is reviewing the company''s impairment testing schedule. Under ASC 350, how frequently must indefinite-lived intangible assets be tested for impairment?$EXPL$
WHERE id = 4882;

-- ============================================================
-- INTERFUND TRANSACTIONS (3 questions)
-- ============================================================

-- ID 3331: Interfund Transactions (12 words)
-- ORIGINAL STEM: On the government-wide statement of activities, interfund transfers between governmental funds are:
UPDATE questions SET
  stem = $EXPL$The City of Millbrook''s General Fund transferred $2.5 million to the Debt Service Fund during fiscal year 2025 to cover bond principal and interest payments. When preparing the government-wide statement of activities, interfund transfers between governmental funds are:$EXPL$
WHERE id = 3331;

-- ID 3334: Interfund Transactions (12 words)
-- ORIGINAL STEM: On the government-wide statements, interfund receivables and payables between governmental funds are:
UPDATE questions SET
  stem = $EXPL$At June 30, 2025, the City of Thornton''s General Fund reports a $300,000 due from the Capital Projects Fund, and the Capital Projects Fund reports a corresponding $300,000 due to the General Fund. On the government-wide statements, these interfund receivables and payables between governmental funds are:$EXPL$
WHERE id = 3334;

-- ID 3343: Interfund Transactions (12 words)
-- ORIGINAL STEM: Interfund activity is disclosed in the notes to the financial statements to:
UPDATE questions SET
  stem = $EXPL$An auditor reviewing the City of Lakeview''s annual financial report notes extensive interfund loans and transfers among six funds. GASB requires disclosure of interfund activity in the notes. This disclosure is intended to:$EXPL$
WHERE id = 3343;

-- ============================================================
-- INTERNAL-USE SOFTWARE AND CLOUD COMPUTING (2 questions)
-- ============================================================

-- ID 3247: Internal-Use Software and Cloud Computing (12 words)
-- ORIGINAL STEM: Costs incurred during the preliminary project stage of internal-use software development are:
UPDATE questions SET
  stem = $EXPL$Palmer Corp. is developing an internal ERP system. During Q1 2025, the IT team spent $85,000 evaluating vendor proposals, conducting feasibility studies, and selecting the preferred platform. Under ASC 350-40, costs incurred during this preliminary project stage are:$EXPL$
WHERE id = 3247;

-- ID 3248: Internal-Use Software and Cloud Computing (12 words)
-- ORIGINAL STEM: During the application development stage, which costs are capitalized under ASC 350-40?
UPDATE questions SET
  stem = $EXPL$Vantage Inc. has committed to building a custom inventory management system for internal use. The project has entered the application development stage with coding and testing underway. Under ASC 350-40, which costs incurred during this stage are capitalized?$EXPL$
WHERE id = 3248;

-- ============================================================
-- PENSION AND POSTRETIREMENT BENEFITS (5 questions)
-- ============================================================

-- ID 3290: Pension and Postretirement Benefits (13 words)
-- ORIGINAL STEM: The accumulated benefit obligation (ABO) differs from the PBO in that the ABO:
UPDATE questions SET
  stem = $EXPL$Hartwell Industries sponsors a defined benefit pension plan. Its actuary reports a PBO of $14.8 million and an ABO of $12.1 million as of December 31, 2025. The accumulated benefit obligation differs from the projected benefit obligation in that the ABO:$EXPL$
WHERE id = 3290;

-- ID 3291: Pension and Postretirement Benefits (13 words)
-- ORIGINAL STEM: The components of net periodic pension cost include all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$Kelford Manufacturing''s pension actuary is preparing the net periodic pension cost calculation for fiscal year 2025. The CFO is reviewing each component that feeds into the total pension expense. The components of net periodic pension cost include all of the following EXCEPT:$EXPL$
WHERE id = 3291;

-- ID 3299: Pension and Postretirement Benefits (13 words)
-- ORIGINAL STEM: Under ASC 715, the discount rate used to measure the PBO should reflect:
UPDATE questions SET
  stem = $EXPL$Aldrich Corp.''s actuary is selecting the discount rate to measure the projected benefit obligation for the company''s defined benefit pension plan as of December 31, 2025. Under ASC 715, this discount rate should reflect:$EXPL$
WHERE id = 3299;

-- ID 3400: Pension and Postretirement Benefits (13 words)
-- ORIGINAL STEM: The vested benefit obligation (VBO) differs from the ABO in that the VBO:
UPDATE questions SET
  stem = $EXPL$Whitfield Corp. has 200 employees in its defined benefit plan, of whom 140 are fully vested. The plan actuary reports both the ABO and the VBO in the annual actuarial valuation. The vested benefit obligation differs from the ABO in that the VBO:$EXPL$
WHERE id = 3400;

-- ID 15031: Pension and Postretirement Benefits (13 words)
-- ORIGINAL STEM: Under ASC 715, what are vested benefits in a defined benefit pension plan?
UPDATE questions SET
  stem = $EXPL$Calloway Corp. sponsors a defined benefit pension plan with a five-year cliff vesting schedule. Several employees are approaching their vesting date. Under ASC 715, what are vested benefits in a defined benefit pension plan?$EXPL$
WHERE id = 15031;

-- ============================================================
-- PROSPECTIVE ANALYSIS AND FORECASTING (4 questions)
-- ============================================================

-- ID 618: Prospective Analysis and Forecasting (9 words)
-- ORIGINAL STEM: What is the purpose of the percentage-of-sales forecasting method?
UPDATE questions SET
  stem = $EXPL$Ridgeway Corp.''s CFO is preparing pro forma financial statements for 2026 based on a projected 15% increase in revenue. The finance team plans to use the percentage-of-sales method. What is the purpose of this forecasting approach?$EXPL$
WHERE id = 618;

-- ID 12983: Prospective Analysis and Forecasting (9 words)
-- ORIGINAL STEM: What does forecast bias indicate about a forecasting model?
UPDATE questions SET
  stem = $EXPL$An analyst at Summit Logistics notices that the company''s demand forecasting model has consistently over-predicted monthly sales volume for the past twelve months. What does this pattern of forecast bias indicate about the model?$EXPL$
WHERE id = 12983;

-- ID 14808: Prospective Analysis and Forecasting (10 words)
-- ORIGINAL STEM: In DuPont analysis, what does the asset turnover ratio measure?
UPDATE questions SET
  stem = $EXPL$An analyst at Warren Capital is decomposing Eastlake Industries'' ROE using the three-component DuPont framework. The asset turnover component is 1.4x. In this context, what does the asset turnover ratio measure?$EXPL$
WHERE id = 14808;

-- ID 14129: Prospective Analysis and Forecasting (11 words)
-- ORIGINAL STEM: In regression-based forecasting, what is the difference between interpolation and extrapolation?
UPDATE questions SET
  stem = $EXPL$A financial analyst at Brooks Chemicals built a regression model using five years of historical data covering production volumes of 10,000 to 50,000 units. The analyst is now forecasting costs for volumes both within and beyond this range. What is the difference between interpolation and extrapolation?$EXPL$
WHERE id = 14129;

-- ============================================================
-- RISK MANAGEMENT AND ECONOMICS (4 questions)
-- ============================================================

-- ID 14063: Risk Management and Economics (7 words)
-- ORIGINAL STEM: What does price elasticity of demand measure?
UPDATE questions SET
  stem = $EXPL$Sinclair Pharmaceuticals is considering a 10% price increase on one of its branded medications and wants to estimate the impact on unit sales. The economics team is analyzing price elasticity of demand. What does this measure indicate?$EXPL$
WHERE id = 14063;

-- ID 657: Risk Management and Economics (9 words)
-- ORIGINAL STEM: What does the profitability index measure in capital budgeting?
UPDATE questions SET
  stem = $EXPL$Harper Corp. is evaluating three mutually exclusive expansion projects but has limited capital available. The CFO wants to rank the projects using the profitability index. What does this measure indicate in capital budgeting?$EXPL$
WHERE id = 657;

-- ID 14755: Risk Management and Economics (10 words)
-- ORIGINAL STEM: What is the difference between real GDP and nominal GDP?
UPDATE questions SET
  stem = $EXPL$An economist at Granite Analytics notes that a country''s nominal GDP rose 7% in 2025 while real GDP grew only 3%. The economic advisory team is explaining this divergence to clients. What is the difference between real GDP and nominal GDP?$EXPL$
WHERE id = 14755;

-- ID 3090: Risk Management and Economics (11 words)
-- ORIGINAL STEM: Credit risk can be mitigated through all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$Wentworth Financial extends $50 million in trade credit to customers across multiple industries. The risk management team is reviewing strategies to reduce the firm''s exposure to customer default. Credit risk can be mitigated through all of the following EXCEPT:$EXPL$
WHERE id = 3090;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT REPORTING (2 questions)
-- ============================================================

-- ID 3228: State and Local Government Reporting (10 words)
-- ORIGINAL STEM: Under GASB, infrastructure assets (roads, bridges, water systems) must be:
UPDATE questions SET
  stem = $EXPL$The City of Prescott completed a $14 million bridge replacement project during fiscal year 2025. The finance director is determining the proper reporting treatment for this infrastructure asset. Under GASB, infrastructure assets such as roads, bridges, and water systems must be:$EXPL$
WHERE id = 3228;

-- ID 727: State and Local Government Reporting (12 words)
-- ORIGINAL STEM: The statement of activities uses a net (expense) format. Program revenues include:
UPDATE questions SET
  stem = $EXPL$The City of Dunmore is preparing its government-wide statement of activities for fiscal year 2025. The finance team is identifying which revenues offset each function''s expenses under the net expense format. Program revenues reported in this format include:$EXPL$
WHERE id = 727;

-- ============================================================
-- STOCK COMPENSATION AND BUSINESS COMBINATIONS (3 questions)
-- ============================================================

-- ID 678: Stock Compensation and Business Combinations (12 words)
-- ORIGINAL STEM: When stock options expire unexercised, the APIC — stock options balance is:
UPDATE questions SET
  stem = $EXPL$Pinnacle Systems granted 20,000 stock options to employees in 2021 with a four-year vesting period. The company recognized $160,000 in compensation expense over the vesting term. In 2026, all options expired unexercised. The APIC—stock options balance is:$EXPL$
WHERE id = 678;

-- ID 684: Stock Compensation and Business Combinations (12 words)
-- ORIGINAL STEM: Contingent consideration classified as a liability in a business combination is subsequently:
UPDATE questions SET
  stem = $EXPL$In its April 2025 acquisition of Dalton Technologies, Embark Corp. agreed to pay an additional $3 million if Dalton''s revenue exceeds $20 million within two years. The earn-out was classified as a liability at the acquisition date. This contingent consideration is subsequently:$EXPL$
WHERE id = 684;

-- ID 685: Stock Compensation and Business Combinations (12 words)
-- ORIGINAL STEM: The measurement period for finalizing fair values in a business combination is:
UPDATE questions SET
  stem = $EXPL$Apex Holdings completed its acquisition of Vertex Solutions on March 1, 2025. Several identifiable assets are reported at provisional fair values pending final appraisals. Under ASC 805, the measurement period for finalizing these fair values in a business combination is:$EXPL$
WHERE id = 685;

COMMIT;
