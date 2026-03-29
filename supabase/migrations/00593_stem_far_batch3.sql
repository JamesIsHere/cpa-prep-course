-- Migration: Stem expansion — FAR batch 3 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for FAR section
-- Affected topics: Accounting Changes and Error Corrections, Cash and Cash Equivalents, Consolidations, Contingencies, Debt, Fair Value, Financial Reporting: For-Profit, Financial Statement Ratios, Income Taxes, Intangible Assets, Inventory, Investments, Leases, Not-for-Profit Accounting, Payables and Accrued Liabilities, Property, Plant and Equipment, Revenue Recognition, Special Purpose Frameworks, State and Local Government, Statement of Cash Flows, Subsequent Events, Trade Receivables



-- ============================================================
-- ACCOUNTING CHANGES AND ERROR CORRECTIONS (2 questions)
-- ============================================================

-- ID 4748: Accounting Changes and Error Corrections (15 words)
-- ORIGINAL STEM: Which of the following is classified as a change in accounting principle under ASC 250?
UPDATE questions SET
  stem = $EXPL$During its 2025 year-end close, Ridgemont Industries is evaluating several accounting modifications made during the year. The controller needs to determine how each change should be classified for disclosure purposes. Which of the following is classified as a change in accounting principle under ASC 250?$EXPL$
WHERE id = 4748;

-- ID 11663: Accounting Changes and Error Corrections (15 words)
-- ORIGINAL STEM: Which of the following types of accounting changes falls within the scope of ASC 250?
UPDATE questions SET
  stem = $EXPL$Greystone Manufacturing recently changed its depreciation method and also corrected a prior-period inventory error. The CFO asks the accounting team to identify which modifications require treatment under ASC 250. Which of the following types of accounting changes falls within the scope of ASC 250?$EXPL$
WHERE id = 11663;

-- ============================================================
-- CASH AND CASH EQUIVALENTS (1 questions)
-- ============================================================

-- ID 11999: Cash and Cash Equivalents (13 words)
-- ORIGINAL STEM: What is a deposit in transit in the context of a bank reconciliation?
UPDATE questions SET
  stem = $EXPL$On December 31, 2025, Clearwater Supplies mails a $14,200 deposit to its bank. The deposit does not appear on the December bank statement. In preparing the bank reconciliation, how should the controller classify this item?$EXPL$
WHERE id = 11999;

-- ============================================================
-- CONSOLIDATIONS (1 questions)
-- ============================================================

-- ID 2196: Consolidations (13 words)
-- ORIGINAL STEM: Which of the following intercompany transactions requires elimination in preparing consolidated financial statements?
UPDATE questions SET
  stem = $EXPL$Pryor Holdings owns 100% of Summit Corp. During 2025, Summit sold inventory to Pryor at a $90,000 markup, and Pryor paid management fees to Summit. The consolidation team is preparing year-end workpapers. Which intercompany transaction requires elimination in the consolidated financial statements?$EXPL$
WHERE id = 2196;

-- ============================================================
-- CONTINGENCIES (2 questions)
-- ============================================================

-- ID 1143: Contingencies (11 words)
-- ORIGINAL STEM: Under ASC 460, how should a financial guarantee be initially measured?
UPDATE questions SET
  stem = $EXPL$In March 2025, Torrence Corp. guarantees a $500,000 bank loan obtained by its subsidiary. The subsidiary pays no fee for the guarantee. Under ASC 460, how should Torrence initially measure this financial guarantee?$EXPL$
WHERE id = 1143;

-- ID 1138: Contingencies (13 words)
-- ORIGINAL STEM: How should a gain contingency be reported when the gain is considered probable?
UPDATE questions SET
  stem = $EXPL$Winslow Enterprises filed a patent infringement lawsuit in 2024 and expects a favorable $2 million judgment. Outside counsel considers the outcome probable as of December 31, 2025. How should this gain contingency be reported in the 2025 financial statements?$EXPL$
WHERE id = 1138;

-- ============================================================
-- DEBT (1 questions)
-- ============================================================

-- ID 11950: Debt (9 words)
-- ORIGINAL STEM: What is the purpose of a bond sinking fund?
UPDATE questions SET
  stem = $EXPL$Kensington Properties issued $10 million in 20-year bonds with a covenant requiring annual cash deposits into a restricted account. The trustee uses these funds to retire portions of the bond issue periodically. What is the purpose of this sinking fund arrangement?$EXPL$
WHERE id = 11950;

-- ============================================================
-- FAIR VALUE (2 questions)
-- ============================================================

-- ID 1283: Fair Value (12 words)
-- ORIGINAL STEM: Net realizable value (NRV) used for inventory measurement under ASC 330 is:
UPDATE questions SET
  stem = $EXPL$At year-end, Dalton Supply''s controller is writing down excess inventory to its appropriate floor value under ASC 330. She needs to compute net realizable value. Under ASC 330, net realizable value for inventory measurement is defined as:$EXPL$
WHERE id = 1283;

-- ID 2230: Fair Value (12 words)
-- ORIGINAL STEM: Under ASC 820, the principal market for an asset is defined as:
UPDATE questions SET
  stem = $EXPL$Mercer Holdings is measuring the fair value of a thinly traded corporate bond and must identify the appropriate market. The bond trades on two exchanges with different volumes. Under ASC 820, the principal market for an asset is defined as:$EXPL$
WHERE id = 2230;

-- ============================================================
-- FINANCIAL REPORTING: FOR-PROFIT (8 questions)
-- ============================================================

-- ID 12281: Financial Reporting: For-Profit (11 words)
-- ORIGINAL STEM: What is the purpose of intraperiod tax allocation under ASC 740-20?
UPDATE questions SET
  stem = $EXPL$Cascade Electronics reports $400,000 of income from continuing operations and a $60,000 loss from discontinued operations for 2025. The controller must determine how to distribute the total income tax provision across these components. What is the purpose of intraperiod tax allocation under ASC 740-20?$EXPL$
WHERE id = 12281;

-- ID 1857: Financial Reporting: For-Profit (12 words)
-- ORIGINAL STEM: Which of the following pension-related items is reported in other comprehensive income?
UPDATE questions SET
  stem = $EXPL$Brighton Manufacturing sponsors a defined benefit pension plan. During 2025, the plan actuary reports changes in assumptions that produced a net actuarial loss. The controller is classifying each pension component between net income and OCI. Which pension-related item is reported in other comprehensive income?$EXPL$
WHERE id = 1857;

-- ID 11583: Financial Reporting: For-Profit (12 words)
-- ORIGINAL STEM: In the context of balance sheet analysis, what does working capital represent?
UPDATE questions SET
  stem = $EXPL$A credit analyst reviewing Ashford Corp.''s December 31, 2025, balance sheet notes current assets of $820,000 and current liabilities of $530,000. The analyst wants to assess short-term financial health. What does working capital represent in this context?$EXPL$
WHERE id = 11583;

-- ID 12219: Financial Reporting: For-Profit (12 words)
-- ORIGINAL STEM: Which statement correctly distinguishes losses from expenses under the FASB Conceptual Framework?
UPDATE questions SET
  stem = $EXPL$During 2025, Oakmont Corp. incurred $200,000 in manufacturing overhead and also suffered a $75,000 casualty loss from a storm. The CFO is reviewing how each outflow is classified in the income statement. Which statement correctly distinguishes losses from expenses under the FASB Conceptual Framework?$EXPL$
WHERE id = 12219;

-- ID 12235: Financial Reporting: For-Profit (12 words)
-- ORIGINAL STEM: Under the FASB Conceptual Framework, what does the full disclosure principle require?
UPDATE questions SET
  stem = $EXPL$Hartwell Industries is preparing its 2025 annual report and considering what level of detail to include in the notes. The audit committee references the FASB Conceptual Framework''s guidance on transparency. What does the full disclosure principle require?$EXPL$
WHERE id = 12235;

-- ID 11544: Financial Reporting: For-Profit (13 words)
-- ORIGINAL STEM: Under the FASB Conceptual Framework, how is equity defined for a business entity?
UPDATE questions SET
  stem = $EXPL$A newly hired staff accountant at Pemberton Inc. asks how the residual claim of owners is formally defined under U.S. GAAP. Under the FASB Conceptual Framework, how is equity defined for a business entity?$EXPL$
WHERE id = 11544;

-- ID 11597: Financial Reporting: For-Profit (13 words)
-- ORIGINAL STEM: Under current U.S. GAAP, how are extraordinary items reported on the income statement?
UPDATE questions SET
  stem = $EXPL$Stonewall Corp. suffered a significant earthquake-related loss in 2025 and the controller is considering whether to report it as an extraordinary item. Under current U.S. GAAP, how are extraordinary items reported on the income statement?$EXPL$
WHERE id = 11597;

-- ID 11606: Financial Reporting: For-Profit (13 words)
-- ORIGINAL STEM: In the context of current versus noncurrent classification, what is the operating cycle?
UPDATE questions SET
  stem = $EXPL$Harborview Distillery ages its whiskey inventory for three years before sale. The controller must determine whether this inventory qualifies as a current asset. In the context of current versus noncurrent classification, what is the operating cycle?$EXPL$
WHERE id = 11606;

-- ============================================================
-- FINANCIAL STATEMENT RATIOS (4 questions)
-- ============================================================

-- ID 15218: Financial Statement Ratios (7 words)
-- ORIGINAL STEM: Which formula correctly calculates accounts receivable turnover?
UPDATE questions SET
  stem = $EXPL$Fenwick Distributors reports net credit sales of $3.6 million, beginning accounts receivable of $280,000, and ending accounts receivable of $320,000 for 2025. The CFO wants to evaluate collection efficiency. Which formula correctly calculates accounts receivable turnover?$EXPL$
WHERE id = 15218;

-- ID 15130: Financial Statement Ratios (8 words)
-- ORIGINAL STEM: What does a debt-to-equity ratio of 2.0 indicate?
UPDATE questions SET
  stem = $EXPL$A bank analyst reviewing Langley Corp.''s year-end financials calculates total liabilities of $4 million and total stockholders'' equity of $2 million, producing a debt-to-equity ratio of 2.0. What does this ratio indicate about the company''s capital structure?$EXPL$
WHERE id = 15130;

-- ID 14987: Financial Statement Ratios (9 words)
-- ORIGINAL STEM: What is the formula for the gross profit margin?
UPDATE questions SET
  stem = $EXPL$For fiscal year 2025, Calloway Retail reports revenue of $1.2 million and cost of goods sold of $780,000. The controller wants to express profitability as a percentage of revenue. What is the formula for gross profit margin?$EXPL$
WHERE id = 14987;

-- ID 14988: Financial Statement Ratios (9 words)
-- ORIGINAL STEM: What does the operating cycle measure for a business?
UPDATE questions SET
  stem = $EXPL$Evergreen Furniture manufactures custom tables, holding raw materials for 45 days and collecting receivables in 30 days on average. Management wants to understand the total time cash is tied up in operations. What does the operating cycle measure?$EXPL$
WHERE id = 14988;

-- ============================================================
-- INCOME TAXES (2 questions)
-- ============================================================

-- ID 455: Income Taxes (13 words)
-- ORIGINAL STEM: Under ASC 740, which of the following items creates a deferred tax liability?
UPDATE questions SET
  stem = $EXPL$Birchwood Corp. uses straight-line depreciation for financial reporting but accelerated depreciation for its tax return, resulting in higher tax depreciation in early years. Under ASC 740, which of the following items creates a deferred tax liability?$EXPL$
WHERE id = 455;

-- ID 2185: Income Taxes (13 words)
-- ORIGINAL STEM: Which of the following would NOT create a temporary difference under ASC 740?
UPDATE questions SET
  stem = $EXPL$During its 2025 tax provision, Caldwell Inc.''s tax team is analyzing book-tax differences to identify temporary versus permanent items. Which of the following would NOT create a temporary difference under ASC 740?$EXPL$
WHERE id = 2185;

-- ============================================================
-- INTANGIBLE ASSETS (2 questions)
-- ============================================================

-- ID 2026: Intangible Assets (12 words)
-- ORIGINAL STEM: Which of the following costs should be capitalized as an intangible asset?
UPDATE questions SET
  stem = $EXPL$Vanguard Technologies incurred legal fees to obtain a patent, advertising costs for a product launch, and research costs for a new prototype during 2025. Which of these costs should be capitalized as an intangible asset?$EXPL$
WHERE id = 2026;

-- ID 2038: Intangible Assets (12 words)
-- ORIGINAL STEM: Under ASC 985-20, when is technological feasibility for a software product established?
UPDATE questions SET
  stem = $EXPL$Nextera Software is developing a new accounting application and wants to begin capitalizing development costs. The project manager asks the controller at what milestone capitalization may begin. Under ASC 985-20, when is technological feasibility for a software product established?$EXPL$
WHERE id = 2038;

-- ============================================================
-- INVENTORY (1 questions)
-- ============================================================

-- ID 395: Inventory (9 words)
-- ORIGINAL STEM: What is the purpose of the retail inventory method?
UPDATE questions SET
  stem = $EXPL$Crestview Department Stores operates 40 locations and needs to estimate ending inventory for interim financial statements without taking a physical count. The controller proposes using cost-to-retail ratios. What is the purpose of the retail inventory method?$EXPL$
WHERE id = 395;

-- ============================================================
-- INVESTMENTS (2 questions)
-- ============================================================

-- ID 15661: Investments (15 words)
-- ORIGINAL STEM: Under ASC 320, at what amount are trading debt securities reported on the balance sheet?
UPDATE questions SET
  stem = $EXPL$Sterling Capital purchased $250,000 of corporate bonds in November 2025, classifying them as trading securities. By December 31, the bonds'' market value has risen to $258,000. Under ASC 320, at what amount should these securities be reported on the balance sheet?$EXPL$
WHERE id = 15661;

-- ID 15166: Investments (16 words)
-- ORIGINAL STEM: Under ASC 320, which feature distinguishes a debt security from an equity security for classification purposes?
UPDATE questions SET
  stem = $EXPL$Whitmore Fund holds both convertible bonds and preferred stock in its portfolio. The portfolio manager needs to determine the proper classification under ASC 320. Which feature distinguishes a debt security from an equity security for classification purposes?$EXPL$
WHERE id = 15166;

-- ============================================================
-- LEASES (1 questions)
-- ============================================================

-- ID 2077: Leases (13 words)
-- ORIGINAL STEM: Under ASC 842, how does an original lessee (intermediate lessor) classify a sublease?
UPDATE questions SET
  stem = $EXPL$Crestline Logistics leases a warehouse under a 10-year agreement and then subleases the space to a smaller distributor for 6 years. Under ASC 842, how should Crestline, as the intermediate lessor, classify the sublease?$EXPL$
WHERE id = 2077;

-- ============================================================
-- NOT-FOR-PROFIT ACCOUNTING (2 questions)
-- ============================================================

-- ID 11842: Not-for-Profit Accounting (11 words)
-- ORIGINAL STEM: Under ASU 2016-14, what must a not-for-profit disclose about its liquidity?
UPDATE questions SET
  stem = $EXPL$Lakeside Community Foundation is preparing its 2025 annual financial statements and its auditors note new disclosure requirements under ASU 2016-14. What must the foundation disclose about its liquidity?$EXPL$
WHERE id = 11842;

-- ID 11833: Not-for-Profit Accounting (13 words)
-- ORIGINAL STEM: What is the not-for-profit equivalent of the for-profit balance sheet under ASC 958?
UPDATE questions SET
  stem = $EXPL$A newly hired accountant at Cedar Valley Health Services, a not-for-profit hospital, is preparing year-end financial statements. The accountant asks what the not-for-profit equivalent of the for-profit balance sheet is called under ASC 958.$EXPL$
WHERE id = 11833;

-- ============================================================
-- PAYABLES AND ACCRUED LIABILITIES (2 questions)
-- ============================================================

-- ID 12163: Payables and Accrued Liabilities (10 words)
-- ORIGINAL STEM: What does income tax payable represent on the balance sheet?
UPDATE questions SET
  stem = $EXPL$At December 31, 2025, Prescott Manufacturing''s balance sheet shows a $145,000 income tax payable. A new staff accountant asks what this liability represents. What does income tax payable represent on the balance sheet?$EXPL$
WHERE id = 12163;

-- ID 4743: Payables and Accrued Liabilities (12 words)
-- ORIGINAL STEM: Which of the following distinguishes an accrued liability from a contingent liability?
UPDATE questions SET
  stem = $EXPL$At year-end, Meridian Corp. has recorded employee wages earned but unpaid and is also evaluating a pending product liability lawsuit. The controller needs to classify each item properly. Which of the following distinguishes an accrued liability from a contingent liability?$EXPL$
WHERE id = 4743;

-- ============================================================
-- PROPERTY, PLANT AND EQUIPMENT (2 questions)
-- ============================================================

-- ID 406: Property, Plant and Equipment (12 words)
-- ORIGINAL STEM: Over time, accretion expense on an asset retirement obligation is recognized by:
UPDATE questions SET
  stem = $EXPL$Granite Mining Co. recorded a $2.4 million asset retirement obligation when it opened a new quarry in 2022. The obligation was discounted at 6%. Each year, the carrying amount increases as the settlement date approaches. This accretion expense is recognized by:$EXPL$
WHERE id = 406;

-- ID 12033: Property, Plant and Equipment (12 words)
-- ORIGINAL STEM: Under U.S. GAAP, which of the following distinguishes land improvements from land?
UPDATE questions SET
  stem = $EXPL$Beacon Properties purchased a parcel of land for $800,000 and then spent $120,000 on paving a parking lot and $45,000 on landscaping. The controller must determine which costs to depreciate. Under U.S. GAAP, which characteristic distinguishes land improvements from land?$EXPL$
WHERE id = 12033;

-- ============================================================
-- REVENUE RECOGNITION (1 questions)
-- ============================================================

-- ID 386: Revenue Recognition (15 words)
-- ORIGINAL STEM: Sales-based royalties on licenses of intellectual property are recognized as revenue under ASC 606 when:
UPDATE questions SET
  stem = $EXPL$Pinnacle Music licenses its catalog to StreamWave under an agreement requiring a 5% royalty on all streaming revenue. Pinnacle''s controller is determining when to recognize royalty income. Under ASC 606, sales-based royalties on licenses of intellectual property are recognized as revenue when:$EXPL$
WHERE id = 386;

-- ============================================================
-- SPECIAL PURPOSE FRAMEWORKS (3 questions)
-- ============================================================

-- ID 2353: Special Purpose Frameworks (12 words)
-- ORIGINAL STEM: Under the income tax basis of accounting, when is revenue generally recognized?
UPDATE questions SET
  stem = $EXPL$Hayward Consulting, a small firm, prepares its financial statements using the income tax basis of accounting rather than GAAP. The firm''s accountant is determining the appropriate timing for revenue recognition. Under this framework, when is revenue generally recognized?$EXPL$
WHERE id = 2353;

-- ID 11496: Special Purpose Frameworks (12 words)
-- ORIGINAL STEM: Under the pure cash basis of accounting, how are long-lived assets reported?
UPDATE questions SET
  stem = $EXPL$Redwood Landscaping purchased a $60,000 truck in 2025 and uses the pure cash basis of accounting for its financial statements. The owner asks how the truck should appear on the balance sheet. Under the pure cash basis, how are long-lived assets reported?$EXPL$
WHERE id = 11496;

-- ID 11912: Special Purpose Frameworks (12 words)
-- ORIGINAL STEM: Under the pure cash basis of accounting, how are warranty obligations reported?
UPDATE questions SET
  stem = $EXPL$Summit Appliance Repair offers a one-year warranty on all service work and uses the pure cash basis of accounting. At year-end, several warranties remain outstanding. Under the pure cash basis, how are warranty obligations reported?$EXPL$
WHERE id = 11912;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT (6 questions)
-- ============================================================

-- ID 4775: State and Local Government (12 words)
-- ORIGINAL STEM: Which of the following is a fiduciary fund type under GASB standards?
UPDATE questions SET
  stem = $EXPL$The City of Elmwood holds property tax collections on behalf of the local school district and county government. The city''s finance director must classify this activity in the annual financial report. Which of the following is a fiduciary fund type under GASB standards?$EXPL$
WHERE id = 4775;

-- ID 5368: State and Local Government (12 words)
-- ORIGINAL STEM: Under GASB Concepts Statement No. 4, what are deferred inflows of resources?
UPDATE questions SET
  stem = $EXPL$The Town of Ridgewood receives property tax payments in November 2025 for the fiscal year beginning January 2026. The finance director must determine how to report these receipts on the government-wide statements. Under GASB Concepts Statement No. 4, what are deferred inflows of resources?$EXPL$
WHERE id = 5368;

-- ID 11442: State and Local Government (12 words)
-- ORIGINAL STEM: Under GASB Statement No. 10, what is a public entity risk pool?
UPDATE questions SET
  stem = $EXPL$Several municipalities in the state jointly contribute to a shared arrangement that provides property and casualty coverage for all participating governments. Under GASB Statement No. 10, what is this type of arrangement called?$EXPL$
WHERE id = 11442;

-- ID 11789: State and Local Government (12 words)
-- ORIGINAL STEM: Under GASB 75, what does the acronym OPEB represent in governmental accounting?
UPDATE questions SET
  stem = $EXPL$The City of Westbrook provides retiree health insurance to former employees and must report the associated long-term obligation. Under GASB 75, what does the acronym OPEB represent in governmental accounting?$EXPL$
WHERE id = 11789;

-- ID 4781: State and Local Government (13 words)
-- ORIGINAL STEM: Under GASB standards, which set of financial statements is required for proprietary funds?
UPDATE questions SET
  stem = $EXPL$The City of Brookhaven operates a water and sewer utility as an enterprise fund. The finance director is preparing the proprietary fund section of the annual report. Under GASB standards, which set of financial statements is required for proprietary funds?$EXPL$
WHERE id = 4781;

-- ID 4784: State and Local Government (13 words)
-- ORIGINAL STEM: Under GASB 54, which description best defines the nonspendable category of fund balance?
UPDATE questions SET
  stem = $EXPL$At year-end, Marion County''s general fund holds $300,000 in prepaid insurance and a $1.2 million permanent endowment principal. The controller is classifying fund balance under GASB 54. Which description best defines the nonspendable category of fund balance?$EXPL$
WHERE id = 4784;

-- ============================================================
-- STATEMENT OF CASH FLOWS (3 questions)
-- ============================================================

-- ID 11620: Statement of Cash Flows (14 words)
-- ORIGINAL STEM: Under ASC 230, how are stock dividends reported on the statement of cash flows?
UPDATE questions SET
  stem = $EXPL$In June 2025, Stratton Corp. declared and distributed a 10% stock dividend to common shareholders. No cash was exchanged. The controller is preparing the year-end statement of cash flows. Under ASC 230, how should this stock dividend be reported?$EXPL$
WHERE id = 11620;

-- ID 1896: Statement of Cash Flows (15 words)
-- ORIGINAL STEM: Under U.S. GAAP, how are income taxes paid classified on the statement of cash flows?
UPDATE questions SET
  stem = $EXPL$During 2025, Waverly Industries paid $620,000 in federal and state income taxes. The controller is classifying this outflow for the statement of cash flows. Under U.S. GAAP, how are income taxes paid classified?$EXPL$
WHERE id = 1896;

-- ID 11616: Statement of Cash Flows (15 words)
-- ORIGINAL STEM: Under ASC 230, how are bank overdrafts typically classified on the statement of cash flows?
UPDATE questions SET
  stem = $EXPL$At December 31, 2025, Northgate Retail''s primary checking account shows a negative balance of $18,000 because outstanding checks exceeded deposits. The controller is preparing the statement of cash flows. Under ASC 230, how are bank overdrafts typically classified?$EXPL$
WHERE id = 11616;

-- ============================================================
-- SUBSEQUENT EVENTS (1 questions)
-- ============================================================

-- ID 15155: Subsequent Events (9 words)
-- ORIGINAL STEM: Which best describes a Type II nonrecognized subsequent event?
UPDATE questions SET
  stem = $EXPL$Ashford Corp.''s fiscal year ends December 31, 2025, and its financial statements will be issued on March 15, 2026. On February 10, 2026, a fire destroys one of its warehouses. Under ASC 855, which best describes a Type II nonrecognized subsequent event?$EXPL$
WHERE id = 15155;

-- ============================================================
-- TRADE RECEIVABLES (1 questions)
-- ============================================================

-- ID 2251: Trade Receivables (13 words)
-- ORIGINAL STEM: When accounts receivable are factored without recourse, the transaction is accounted for as:
UPDATE questions SET
  stem = $EXPL$Midland Distributors sells $400,000 of accounts receivable to Capital Finance Corp. without recourse, receiving $380,000 in cash. Capital Finance assumes all credit risk on the transferred receivables. This transaction is accounted for as:$EXPL$
WHERE id = 2251;


