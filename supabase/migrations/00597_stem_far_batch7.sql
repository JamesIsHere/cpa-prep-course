-- Migration: Stem expansion — FAR batch 7 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for FAR section
-- Affected topics: Accounting Changes and Error Corrections, Cash and Cash Equivalents, Consolidations, Contingencies, Debt, Fair Value, Financial Reporting: For-Profit, Financial Statement Ratios, Income Taxes, Intangible Assets, Inventory, Investments, Leases, Not-for-Profit Accounting, Payables and Accrued Liabilities, Property, Plant and Equipment, Revenue Recognition, Special Purpose Frameworks, State and Local Government, Statement of Cash Flows, Subsequent Events, Trade Receivables



-- ============================================================
-- ACCOUNTING CHANGES AND ERROR CORRECTIONS (2 questions)
-- ============================================================

-- ID 12351: Accounting Changes and Error Corrections (19 words)
-- ORIGINAL STEM: Under ASC 250, the correction of a material error in previously issued financial statements is accomplished through which method?
UPDATE questions SET
  stem = $EXPL$During the 2025 audit of Prescott Industries, the external auditors discovered that the company had materially understated its warranty liability in the 2024 financial statements. Under ASC 250, the correction of this material error in previously issued financial statements is accomplished through which method?$EXPL$
WHERE id = 12351;

-- ID 4751: Accounting Changes and Error Corrections (20 words)
-- ORIGINAL STEM: A company changes its depreciation method from double-declining balance to straight-line. Under current U.S. GAAP, this change is treated as:
UPDATE questions SET
  stem = $EXPL$Trident Manufacturing has used double-declining balance depreciation for its production equipment since inception. In 2025, management determines that straight-line depreciation better reflects the pattern of economic benefits consumed. Under current U.S. GAAP, this change is treated as:$EXPL$
WHERE id = 4751;

-- ============================================================
-- CASH AND CASH EQUIVALENTS (2 questions)
-- ============================================================

-- ID 2260: Cash and Cash Equivalents (17 words)
-- ORIGINAL STEM: Sterling Corp. has a $1,000,000 line of credit with $400,000 drawn. The undrawn portion of $600,000 represents:
UPDATE questions SET
  stem = $EXPL$Sterling Corp. maintains a $1,000,000 revolving line of credit with First National Bank. As of December 31, 2025, the company has drawn $400,000. When preparing the year-end balance sheet, the undrawn portion of $600,000 represents:$EXPL$
WHERE id = 2260;

-- ID 2264: Cash and Cash Equivalents (18 words)
-- ORIGINAL STEM: Which of the following items would NOT be classified as cash or cash equivalents on the balance sheet?
UPDATE questions SET
  stem = $EXPL$Crestline Industries is preparing its December 31, 2025 balance sheet and the controller is classifying several short-term holdings. Which of the following items would NOT be classified as cash or cash equivalents?$EXPL$
WHERE id = 2264;

-- ============================================================
-- CONSOLIDATIONS (1 questions)
-- ============================================================

-- ID 2190: Consolidations (18 words)
-- ORIGINAL STEM: Under ASC 805, the acquisition method requires the acquirer to recognize identifiable assets acquired and liabilities assumed at:
UPDATE questions SET
  stem = $EXPL$On March 1, 2025, Halcyon Corp. acquires 100% of the outstanding shares of Vanguard Inc. for $12 million in cash. Under ASC 805, the acquisition method requires Halcyon to recognize identifiable assets acquired and liabilities assumed at:$EXPL$
WHERE id = 2190;

-- ============================================================
-- CONTINGENCIES (1 questions)
-- ============================================================

-- ID 2138: Contingencies (17 words)
-- ORIGINAL STEM: Under ASC 450, a loss contingency should be accrued (recorded as a liability) when the loss is:
UPDATE questions SET
  stem = $EXPL$Ridgeway Pharmaceuticals is facing a product liability lawsuit filed in October 2025. The company''s legal counsel is assessing whether to record a liability in the year-end financial statements. Under ASC 450, a loss contingency should be accrued when the loss is:$EXPL$
WHERE id = 2138;

-- ============================================================
-- DEBT (1 questions)
-- ============================================================

-- ID 2078: Debt (19 words)
-- ORIGINAL STEM: Wellington Corp. issues $1,000,000 of 10-year, 8% bonds at 103. What are the total proceeds from the bond issuance?
UPDATE questions SET
  stem = $EXPL$On July 1, 2025, Wellington Corp. issues $1,000,000 face value of 10-year, 8% bonds to institutional investors at a price of 103. What are the total cash proceeds Wellington receives from this bond issuance?$EXPL$
WHERE id = 2078;

-- ============================================================
-- FAIR VALUE (2 questions)
-- ============================================================

-- ID 2225: Fair Value (16 words)
-- ORIGINAL STEM: Which of the following valuation techniques is most commonly associated with Level 3 fair value measurements?
UPDATE questions SET
  stem = $EXPL$Beacon Capital holds a portfolio of private equity investments with no observable market prices. The controller must determine fair value using significant unobservable inputs classified as Level 3 under ASC 820. Which valuation technique is most commonly associated with Level 3 measurements?$EXPL$
WHERE id = 2225;

-- ID 1147: Fair Value (17 words)
-- ORIGINAL STEM: Which of the following is an example of a Level 1 input in the fair value hierarchy?
UPDATE questions SET
  stem = $EXPL$Pinnacle Investments is measuring its financial assets at fair value under ASC 820 and classifying the inputs used in each valuation. Which of the following is an example of a Level 1 input in the fair value hierarchy?$EXPL$
WHERE id = 1147;

-- ============================================================
-- FINANCIAL REPORTING: FOR-PROFIT (11 questions)
-- ============================================================

-- ID 1855: Financial Reporting: For-Profit (19 words)
-- ORIGINAL STEM: Regarding the format and presentation of a single-step income statement under U.S. GAAP, which of the following is true?
UPDATE questions SET
  stem = $EXPL$Larkspur Retail Corp. is preparing its 2025 annual report and the CFO has elected to present a single-step income statement. Regarding the format and presentation of this statement under U.S. GAAP, which of the following is true?$EXPL$
WHERE id = 1855;

-- ID 1870: Financial Reporting: For-Profit (19 words)
-- ORIGINAL STEM: Which of the following errors, if discovered in the current year, would require restatement of prior period financial statements?
UPDATE questions SET
  stem = $EXPL$During the 2025 year-end close, the accounting staff at Northgate Electronics identifies several items affecting prior years'' financial statements. Which of the following, if discovered in the current year, would require restatement of prior period financial statements?$EXPL$
WHERE id = 1870;

-- ID 1874: Financial Reporting: For-Profit (19 words)
-- ORIGINAL STEM: A company voluntarily changes its inventory method from weighted-average to FIFO. Which disclosure is NOT required under ASC 250?
UPDATE questions SET
  stem = $EXPL$Effective January 1, 2025, Clearwater Distributing voluntarily changes its inventory costing method from weighted-average to FIFO. The company is preparing the required disclosures for this accounting change. Which disclosure is NOT required under ASC 250?$EXPL$
WHERE id = 1874;

-- ID 4710: Financial Reporting: For-Profit (19 words)
-- ORIGINAL STEM: The GAAP hierarchy under ASC 105 establishes that the most authoritative source of U.S. GAAP for nongovernmental entities is:
UPDATE questions SET
  stem = $EXPL$A newly hired staff accountant at Greystone Consulting is researching the proper treatment of an unusual transaction. The senior manager explains that the GAAP hierarchy under ASC 105 must be followed. The most authoritative source of U.S. GAAP for nongovernmental entities is:$EXPL$
WHERE id = 4710;

-- ID 4716: Financial Reporting: For-Profit (19 words)
-- ORIGINAL STEM: Which standard-setting body is responsible for establishing accounting standards for state and local governmental entities in the United States?
UPDATE questions SET
  stem = $EXPL$The finance director of Lincoln County is reviewing new accounting pronouncements that apply to the county''s annual financial report. Which standard-setting body is responsible for establishing accounting standards for state and local governmental entities in the United States?$EXPL$
WHERE id = 4716;

-- ID 4724: Financial Reporting: For-Profit (19 words)
-- ORIGINAL STEM: The SEC has the statutory authority to establish financial accounting standards for public companies. In practice, the SEC has:
UPDATE questions SET
  stem = $EXPL$A CPA candidate is studying the relationship between government regulators and private standard-setters in the U.S. financial reporting system. The SEC has the statutory authority to establish financial accounting standards for public companies. In practice, the SEC has:$EXPL$
WHERE id = 4724;

-- ID 11521: Financial Reporting: For-Profit (19 words)
-- ORIGINAL STEM: Under the FASB Conceptual Framework, which assumption requires that financial transactions be recorded in a common denomination of currency?
UPDATE questions SET
  stem = $EXPL$Atlas Global Trading conducts transactions in multiple currencies across several countries. When preparing its U.S. GAAP financial statements, all amounts are translated into U.S. dollars. Under the FASB Conceptual Framework, which assumption requires that financial transactions be recorded in a common denomination of currency?$EXPL$
WHERE id = 11521;

-- ID 12229: Financial Reporting: For-Profit (19 words)
-- ORIGINAL STEM: Under FASB due process, what document does the FASB issue to solicit public comment before finalizing a new standard?
UPDATE questions SET
  stem = $EXPL$The FASB is developing new guidance on a financial reporting topic and has completed its initial deliberations. Before finalizing the standard, the Board publishes a document for public comment. Under FASB due process, what is this document called?$EXPL$
WHERE id = 12229;

-- ID 148: Financial Reporting: For-Profit (20 words)
-- ORIGINAL STEM: Which of the following is classified as an operating activity on the statement of cash flows under the indirect method?
UPDATE questions SET
  stem = $EXPL$Summit Apparel is preparing its 2025 statement of cash flows using the indirect method. The controller is classifying several transactions into operating, investing, and financing categories. Which of the following is classified as an operating activity?$EXPL$
WHERE id = 148;

-- ID 4709: Financial Reporting: For-Profit (20 words)
-- ORIGINAL STEM: Under the FASB Conceptual Framework, which element of financial statements represents an increase in equity from peripheral or incidental transactions?
UPDATE questions SET
  stem = $EXPL$Evergreen Lumber Co. sold a parcel of surplus land at a gain during 2025. This transaction is outside the company''s core operations. Under the FASB Conceptual Framework, which element of financial statements represents an increase in equity from peripheral or incidental transactions?$EXPL$
WHERE id = 4709;

-- ID 4718: Financial Reporting: For-Profit (20 words)
-- ORIGINAL STEM: Under the FASB Conceptual Framework, which of the following is NOT an element of financial statements for a business entity?
UPDATE questions SET
  stem = $EXPL$An accounting instructor is reviewing the ten elements of financial statements defined by the FASB Conceptual Framework with a group of new hires at Redfield & Associates. Which of the following is NOT an element of financial statements for a business entity?$EXPL$
WHERE id = 4718;

-- ============================================================
-- FINANCIAL STATEMENT RATIOS (3 questions)
-- ============================================================

-- ID 15116: Financial Statement Ratios (13 words)
-- ORIGINAL STEM: What is the primary difference between the current ratio and the quick ratio?
UPDATE questions SET
  stem = $EXPL$A credit analyst at Pacific Commercial Bank is evaluating a loan application from Dalton Supply Co. She calculates both the current ratio and the quick ratio and notes they differ significantly. What is the primary difference between these two liquidity measures?$EXPL$
WHERE id = 15116;

-- ID 15209: Financial Statement Ratios (14 words)
-- ORIGINAL STEM: How do the operating profit margin and net profit margin differ from each other?
UPDATE questions SET
  stem = $EXPL$Westbrook Industries reports an operating profit margin of 18% but a net profit margin of only 9% for the year ended December 31, 2025. The CFO attributes the gap to non-operating items. How do the operating profit margin and net profit margin differ from each other?$EXPL$
WHERE id = 15209;

-- ID 15201: Financial Statement Ratios (15 words)
-- ORIGINAL STEM: A company divides its total operating expenses by net revenue to calculate which performance metric?
UPDATE questions SET
  stem = $EXPL$The controller at Ashford Logistics compiles the 2025 income statement and divides total operating expenses of $4.2 million by net revenue of $12.8 million. This calculation produces which performance metric?$EXPL$
WHERE id = 15201;

-- ============================================================
-- INCOME TAXES (1 questions)
-- ============================================================

-- ID 453: Income Taxes (20 words)
-- ORIGINAL STEM: Which of the following is a permanent difference that does NOT give rise to a deferred tax asset or liability?
UPDATE questions SET
  stem = $EXPL$During the preparation of Oakridge Corp.''s 2025 tax provision, the tax manager is identifying items that create permanent versus temporary differences. Which of the following is a permanent difference that does NOT give rise to a deferred tax asset or liability?$EXPL$
WHERE id = 453;

-- ============================================================
-- INTANGIBLE ASSETS (1 questions)
-- ============================================================

-- ID 12062: Intangible Assets (20 words)
-- ORIGINAL STEM: Under ASC 805, what criterion must an intangible asset meet to be recognized separately from goodwill in a business combination?
UPDATE questions SET
  stem = $EXPL$Apex Holdings acquires BrightPath Software in a business combination. During the purchase price allocation, Apex identifies several intangible assets including customer lists and proprietary technology. Under ASC 805, what criterion must an intangible asset meet to be recognized separately from goodwill?$EXPL$
WHERE id = 12062;

-- ============================================================
-- INVENTORY (2 questions)
-- ============================================================

-- ID 1971: Inventory (13 words)
-- ORIGINAL STEM: Which of the following inventory cost flow methods is NOT permitted under IFRS?
UPDATE questions SET
  stem = $EXPL$Geneva Electronics, a Swiss-based manufacturer, is transitioning its financial reporting from local standards to IFRS. The controller is reviewing the company''s inventory accounting policies for compliance. Which of the following inventory cost flow methods is NOT permitted under IFRS?$EXPL$
WHERE id = 1971;

-- ID 1977: Inventory (16 words)
-- ORIGINAL STEM: Which of the following costs should be included in the cost of inventory under U.S. GAAP?
UPDATE questions SET
  stem = $EXPL$Cascade Furniture manufactures custom cabinetry and incurs various costs during the production process, including materials, labor, and overhead. The cost accountant is determining which expenditures to capitalize. Which of the following costs should be included in the cost of inventory under U.S. GAAP?$EXPL$
WHERE id = 1977;

-- ============================================================
-- INVESTMENTS (2 questions)
-- ============================================================

-- ID 15680: Investments (18 words)
-- ORIGINAL STEM: Under ASC 320, which of the following is classified as a debt security rather than an equity security?
UPDATE questions SET
  stem = $EXPL$The portfolio manager at Meridian Trust is categorizing several recently purchased financial instruments for proper accounting treatment. Under ASC 320, which of the following is classified as a debt security rather than an equity security?$EXPL$
WHERE id = 15680;

-- ID 15180: Investments (19 words)
-- ORIGINAL STEM: Under ASC 321, how are transaction costs treated when purchasing equity securities measured at fair value through net income?
UPDATE questions SET
  stem = $EXPL$Harborview Capital purchases 5,000 shares of a publicly traded company for $150,000 and pays $2,500 in brokerage commissions. The investment will be measured at fair value through net income. Under ASC 321, how are the transaction costs treated?$EXPL$
WHERE id = 15180;

-- ============================================================
-- LEASES (2 questions)
-- ============================================================

-- ID 2048: Leases (15 words)
-- ORIGINAL STEM: Under ASC 842, a lessee with an operating lease recognizes lease expense on what basis?
UPDATE questions SET
  stem = $EXPL$On January 1, 2025, Thornton Services signs a four-year office lease classified as an operating lease under ASC 842. Annual payments are $60,000, escalating 3% each year. How should Thornton recognize lease expense over the lease term?$EXPL$
WHERE id = 2048;

-- ID 2052: Leases (16 words)
-- ORIGINAL STEM: Under ASC 842, which of the following is included in the measurement of the lease liability?
UPDATE questions SET
  stem = $EXPL$Corbin Logistics is calculating the initial lease liability for a new warehouse lease under ASC 842. The lease includes fixed payments, variable charges tied to usage, and a purchase option. Which of the following is included in the measurement of the lease liability?$EXPL$
WHERE id = 2052;

-- ============================================================
-- NOT-FOR-PROFIT ACCOUNTING (1 questions)
-- ============================================================

-- ID 11847: Not-for-Profit Accounting (19 words)
-- ORIGINAL STEM: Under ASC 958, which methods may a not-for-profit use to present operating activities on the statement of cash flows?
UPDATE questions SET
  stem = $EXPL$The Riverdale Community Foundation is preparing its annual financial statements and the treasurer is deciding how to present operating activities on the statement of cash flows. Under ASC 958, which methods may a not-for-profit use for this presentation?$EXPL$
WHERE id = 11847;

-- ============================================================
-- PAYABLES AND ACCRUED LIABILITIES (1 questions)
-- ============================================================

-- ID 4745: Payables and Accrued Liabilities (19 words)
-- ORIGINAL STEM: Under ASC 420, when should an entity recognize a liability for one-time employee termination benefits associated with a restructuring?
UPDATE questions SET
  stem = $EXPL$In November 2025, Stanton Technologies announces a restructuring plan that includes involuntary termination of 200 employees. The affected workers will receive one-time severance packages. Under ASC 420, when should Stanton recognize a liability for these termination benefits?$EXPL$
WHERE id = 4745;

-- ============================================================
-- PROPERTY, PLANT AND EQUIPMENT (1 questions)
-- ============================================================

-- ID 405: Property, Plant and Equipment (20 words)
-- ORIGINAL STEM: Which of the following criteria must be met to classify a long-lived asset as held for sale under ASC 360?
UPDATE questions SET
  stem = $EXPL$Bridgeport Manufacturing plans to sell an idle production facility and has engaged a commercial real estate broker. The controller needs to determine whether to reclassify the building as held for sale. Which of the following criteria must be met under ASC 360?$EXPL$
WHERE id = 405;

-- ============================================================
-- REVENUE RECOGNITION (1 questions)
-- ============================================================

-- ID 1940: Revenue Recognition (19 words)
-- ORIGINAL STEM: Under ASC 606, which of the following is a method for estimating standalone selling prices when not directly observable?
UPDATE questions SET
  stem = $EXPL$Orion Software bundles a software license, implementation services, and two years of support into a single contract. The company does not sell the implementation services separately, so no observable price exists. Under ASC 606, which method may Orion use to estimate the standalone selling price?$EXPL$
WHERE id = 1940;

-- ============================================================
-- SPECIAL PURPOSE FRAMEWORKS (2 questions)
-- ============================================================

-- ID 2356: Special Purpose Frameworks (19 words)
-- ORIGINAL STEM: A company prepares tax-basis financial statements and has $500,000 of tax-exempt municipal bond interest income. How is this reported?
UPDATE questions SET
  stem = $EXPL$Redwood Holdings prepares its financial statements using the income tax basis of accounting. During 2025, the company earned $500,000 of tax-exempt interest from municipal bonds. How is this income reported on the tax-basis financial statements?$EXPL$
WHERE id = 2356;

-- ID 2359: Special Purpose Frameworks (19 words)
-- ORIGINAL STEM: Which of the following accurately describes the AICPA's Financial Reporting Framework for Small- and Medium-Sized Entities (FRF for SMEs)?
UPDATE questions SET
  stem = $EXPL$A local CPA firm advises the owner of a privately held landscaping company that the AICPA''s Financial Reporting Framework for Small- and Medium-Sized Entities (FRF for SMEs) may be a suitable alternative to full GAAP. Which of the following accurately describes this framework?$EXPL$
WHERE id = 2359;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT (7 questions)
-- ============================================================

-- ID 460: State and Local Government (16 words)
-- ORIGINAL STEM: Property taxes are an example of which type of nonexchange revenue under GASB Statement No. 33?
UPDATE questions SET
  stem = $EXPL$The City of Maplewood levies property taxes on all real property within its jurisdiction to fund general government operations. The finance director is classifying this revenue under GASB Statement No. 33. Property taxes are an example of which type of nonexchange revenue?$EXPL$
WHERE id = 460;

-- ID 4770: State and Local Government (16 words)
-- ORIGINAL STEM: Which of the following fund types uses full accrual accounting and the economic resources measurement focus?
UPDATE questions SET
  stem = $EXPL$A newly hired accountant at the City of Fairview is learning the measurement focus and basis of accounting used by different fund types. Which of the following fund types uses full accrual accounting and the economic resources measurement focus?$EXPL$
WHERE id = 4770;

-- ID 5274: State and Local Government (16 words)
-- ORIGINAL STEM: Under GASB Statement No. 84, what type of activity is reported in a private-purpose trust fund?
UPDATE questions SET
  stem = $EXPL$Jefferson County holds a trust established by a donor to provide college scholarships to eligible county residents. The county''s accountant is determining the correct fund classification. Under GASB Statement No. 84, what type of activity is reported in a private-purpose trust fund?$EXPL$
WHERE id = 5274;

-- ID 5414: State and Local Government (16 words)
-- ORIGINAL STEM: Under GASB Statement No. 34, which category of funds is excluded from the government-wide financial statements?
UPDATE questions SET
  stem = $EXPL$The City of Brookhaven prepares both fund-level and government-wide financial statements in its comprehensive annual financial report. Under GASB Statement No. 34, which category of funds is excluded from the government-wide financial statements?$EXPL$
WHERE id = 5414;

-- ID 11769: State and Local Government (16 words)
-- ORIGINAL STEM: Under GASB 34, which component is presented as required supplementary information before the basic financial statements?
UPDATE questions SET
  stem = $EXPL$The finance department of Marion Township is assembling its annual financial report and organizing the required components in proper order. Under GASB 34, which component is presented as required supplementary information before the basic financial statements?$EXPL$
WHERE id = 11769;

-- ID 4769: State and Local Government (17 words)
-- ORIGINAL STEM: In governmental accounting, fund balance classifications under GASB Statement No. 54 include all of the following EXCEPT:
UPDATE questions SET
  stem = $EXPL$The City of Lakeview is preparing its general fund balance sheet and must classify fund balance into the categories required by GASB Statement No. 54. Fund balance classifications under this standard include all of the following EXCEPT:$EXPL$
WHERE id = 4769;

-- ID 5250: State and Local Government (17 words)
-- ORIGINAL STEM: Under GASB Concepts Statement No. 4, which of the following best defines a deferred outflow of resources?
UPDATE questions SET
  stem = $EXPL$The auditor of Grafton County notes a line item labeled "deferred outflows of resources" on the government-wide statement of net position. Under GASB Concepts Statement No. 4, which of the following best defines a deferred outflow of resources?$EXPL$
WHERE id = 5250;

-- ============================================================
-- STATEMENT OF CASH FLOWS (3 questions)
-- ============================================================

-- ID 11638: Statement of Cash Flows (18 words)
-- ORIGINAL STEM: Under ASC 230, how are cash flows classified when they do not clearly fit investing or financing categories?
UPDATE questions SET
  stem = $EXPL$While preparing the 2025 statement of cash flows for Venture Dynamics, the accountant encounters several transactions that do not clearly fit the investing or financing categories. Under ASC 230, how should these cash flows be classified?$EXPL$
WHERE id = 11638;

-- ID 12304: Statement of Cash Flows (18 words)
-- ORIGINAL STEM: Under U.S. GAAP, how is interest received on a bond investment classified on the statement of cash flows?
UPDATE questions SET
  stem = $EXPL$During 2025, Keystone Financial receives $45,000 of semiannual interest payments on its held-to-maturity bond portfolio. The controller is preparing the statement of cash flows. Under U.S. GAAP, how is interest received on a bond investment classified?$EXPL$
WHERE id = 12304;

-- ID 1879: Statement of Cash Flows (19 words)
-- ORIGINAL STEM: Under ASC 230, what adjustments are made to net income when preparing the operating section using the indirect method?
UPDATE questions SET
  stem = $EXPL$Centennial Corp. reports net income of $820,000 for 2025 and prepares its statement of cash flows using the indirect method. Under ASC 230, what adjustments are made to net income when preparing the operating section?$EXPL$
WHERE id = 1879;

-- ============================================================
-- SUBSEQUENT EVENTS (2 questions)
-- ============================================================

-- ID 15139: Subsequent Events (11 words)
-- ORIGINAL STEM: Under ASC 855, what are the two types of subsequent events?
UPDATE questions SET
  stem = $EXPL$After the December 31, 2025 balance sheet date but before its financial statements are issued, Calloway Enterprises experiences several significant events. The CFO must evaluate each event under ASC 855. What are the two types of subsequent events defined by this standard?$EXPL$
WHERE id = 15139;

-- ID 15154: Subsequent Events (11 words)
-- ORIGINAL STEM: What is the subsequent event evaluation period for an SEC-filing entity?
UPDATE questions SET
  stem = $EXPL$Granite Biotech, a publicly traded company that files quarterly and annual reports with the SEC, has a December 31, 2025 fiscal year-end. Management is determining the cutoff date for evaluating subsequent events. What is the evaluation period for an SEC-filing entity?$EXPL$
WHERE id = 15154;

-- ============================================================
-- TRADE RECEIVABLES (1 questions)
-- ============================================================

-- ID 2269: Trade Receivables (16 words)
-- ORIGINAL STEM: Under CECL, how should a company account for a previously written-off receivable that is subsequently collected?
UPDATE questions SET
  stem = $EXPL$In March 2025, Belmont Distributors receives a $15,000 payment from a customer whose account had been written off as uncollectible in the prior year. Under the CECL model, how should Belmont account for this recovery?$EXPL$
WHERE id = 2269;


