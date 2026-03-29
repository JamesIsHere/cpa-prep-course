-- Migration: Stem expansion — FAR batch 6 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for FAR section
-- Affected topics: Accounting Changes and Error Corrections, Consolidations, Contingencies, Debt, Fair Value, Financial Reporting: For-Profit, Financial Statement Ratios, Income Taxes, Intangible Assets, Investments, Not-for-Profit Accounting, Payables and Accrued Liabilities, Property, Plant and Equipment, Revenue Recognition, Special Purpose Frameworks, State and Local Government, Statement of Cash Flows, Trade Receivables



-- ============================================================
-- ACCOUNTING CHANGES AND ERROR CORRECTIONS (3 questions)
-- ============================================================

-- ID 11643: Accounting Changes and Error Corrections (18 words)
-- ORIGINAL STEM: Under ASC 250, retrospective application of a change in accounting principle is considered impracticable when which condition exists?
UPDATE questions SET
  stem = $EXPL$Waverly Industries voluntarily changes its depreciation method for manufacturing equipment in 2025 and attempts to restate prior periods. Management discovers that the necessary historical cost-layer data was not retained. Under ASC 250, retrospective application is considered impracticable when which condition exists?$EXPL$
WHERE id = 11643;

-- ID 12340: Accounting Changes and Error Corrections (18 words)
-- ORIGINAL STEM: Which of the following is specifically excluded from the scope of ASC 250, Accounting Changes and Error Corrections?
UPDATE questions SET
  stem = $EXPL$Granger Corp.''s controller is cataloging all accounting changes made during fiscal year 2025 to determine which fall under ASC 250. She identifies several items that may require disclosure. Which of the following is specifically excluded from the scope of ASC 250?$EXPL$
WHERE id = 12340;

-- ID 4750: Accounting Changes and Error Corrections (19 words)
-- ORIGINAL STEM: When retrospective application of a new accounting principle is impracticable, what does ASC 250 require the entity to do?
UPDATE questions SET
  stem = $EXPL$Ridgeline Manufacturing adopts a new revenue recognition policy in 2025 but cannot reconstruct the data needed to restate prior years. When retrospective application of a new accounting principle is impracticable, what does ASC 250 require the entity to do?$EXPL$
WHERE id = 4750;

-- ============================================================
-- CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 483: Consolidations (17 words)
-- ORIGINAL STEM: Which of the following is an indicator that an entity is NOT a VIE under ASC 810?
UPDATE questions SET
  stem = $EXPL$Beacon Capital is evaluating whether a newly formed real estate partnership qualifies as a variable interest entity. The partnership has multiple unrelated investors and operates independently. Which of the following is an indicator that an entity is NOT a VIE under ASC 810?$EXPL$
WHERE id = 483;

-- ID 2193: Consolidations (17 words)
-- ORIGINAL STEM: In a business combination, the measurement period during which the acquirer can adjust provisional amounts cannot exceed:
UPDATE questions SET
  stem = $EXPL$On July 1, 2025, Clearwater Corp. acquires Horizon Technologies for $18 million. Several acquired assets were recorded at provisional fair values because independent appraisals were still pending. Under ASC 805, the measurement period during which Clearwater can adjust these provisional amounts cannot exceed:$EXPL$
WHERE id = 2193;

-- ============================================================
-- CONTINGENCIES (2 questions)
-- ============================================================

-- ID 11709: Contingencies (16 words)
-- ORIGINAL STEM: What two conditions must both be satisfied before a loss contingency is accrued under ASC 450?
UPDATE questions SET
  stem = $EXPL$Prescott Electronics is named as a defendant in a product liability lawsuit filed in October 2025. The company''s legal counsel is assessing whether a liability should be recorded at year-end. What two conditions must both be satisfied before a loss contingency is accrued under ASC 450?$EXPL$
WHERE id = 11709;

-- ID 1145: Contingencies (17 words)
-- ORIGINAL STEM: Which of the following contingencies would most likely require disclosure even though the likelihood is considered remote?
UPDATE questions SET
  stem = $EXPL$During its year-end close, Atherton Industries reviews several contingent items with its external auditors. One item is classified as remote in likelihood. Which of the following contingencies would most likely require disclosure even though the likelihood is considered remote?$EXPL$
WHERE id = 1145;

-- ============================================================
-- DEBT (2 questions)
-- ============================================================

-- ID 2086: Debt (12 words)
-- ORIGINAL STEM: Under the effective interest method, bonds issued at a premium will have:
UPDATE questions SET
  stem = $EXPL$On January 1, 2025, Lakeview Corp. issues $5,000,000 of 10-year bonds with a 6% stated rate when the market rate is 5%. The bonds are issued at a premium and Lakeview uses the effective interest method. These bonds will have:$EXPL$
WHERE id = 2086;

-- ID 2080: Debt (18 words)
-- ORIGINAL STEM: When bonds are issued at a premium, what happens to the carrying amount of the bonds over time?
UPDATE questions SET
  stem = $EXPL$Pinnacle Industries issues $2,000,000 in bonds at 103 on January 1, 2025, using the effective interest method for amortization. What happens to the carrying amount of the bonds over the life of the issue?$EXPL$
WHERE id = 2080;

-- ============================================================
-- FAIR VALUE (3 questions)
-- ============================================================

-- ID 2227: Fair Value (15 words)
-- ORIGINAL STEM: Under ASC 820, which of the following is NOT one of the three valuation approaches?
UPDATE questions SET
  stem = $EXPL$Fletcher & Associates is preparing a fair value estimate for an intangible asset acquired in a recent business combination. The team reviews ASC 820''s guidance on acceptable valuation techniques. Which of the following is NOT one of the three valuation approaches under ASC 820?$EXPL$
WHERE id = 2227;

-- ID 11748: Fair Value (15 words)
-- ORIGINAL STEM: Under ASC 825, at what level of granularity is the fair value option election made?
UPDATE questions SET
  stem = $EXPL$Crestwood Financial holds a portfolio of commercial loans and is considering electing the fair value option under ASC 825 for selected instruments. At what level of granularity is the fair value option election made?$EXPL$
WHERE id = 11748;

-- ID 1281: Fair Value (16 words)
-- ORIGINAL STEM: Which of the following measurements is NOT within the scope of ASC 820, Fair Value Measurement?
UPDATE questions SET
  stem = $EXPL$During an audit of Kensington Corp., the engagement team identifies several items measured at amounts other than historical cost. The team reviews ASC 820 to determine applicability. Which of the following measurements is NOT within the scope of ASC 820?$EXPL$
WHERE id = 1281;

-- ============================================================
-- FINANCIAL REPORTING: FOR-PROFIT (7 questions)
-- ============================================================

-- ID 12277: Financial Reporting: For-Profit (17 words)
-- ORIGINAL STEM: Under FASB Concepts Statement No. 6, how many elements of financial statements are defined for business enterprises?
UPDATE questions SET
  stem = $EXPL$A staff accountant at Caldwell Industries is preparing for the CPA exam and reviewing the FASB conceptual framework. She is studying Concepts Statement No. 6. How many elements of financial statements are defined for business enterprises under this statement?$EXPL$
WHERE id = 12277;

-- ID 12287: Financial Reporting: For-Profit (17 words)
-- ORIGINAL STEM: Which financial statement reports an entity's revenues, expenses, gains, and losses over a specific period of time?
UPDATE questions SET
  stem = $EXPL$Meridian Corp.''s board of directors requests a report showing the company''s financial performance — specifically revenues, expenses, gains, and losses — for the year ended December 31, 2025. Which financial statement presents this information over a specific period of time?$EXPL$
WHERE id = 12287;

-- ID 1871: Financial Reporting: For-Profit (18 words)
-- ORIGINAL STEM: A company has total assets of $1,200,000 and a debt-to-equity ratio of 1.5. What is total stockholders' equity?
UPDATE questions SET
  stem = $EXPL$Hargrove Enterprises reports total assets of $1,200,000 on its December 31, 2025 balance sheet. The company''s debt-to-equity ratio is 1.5. What is Hargrove''s total stockholders'' equity?$EXPL$
WHERE id = 1871;

-- ID 4708: Financial Reporting: For-Profit (18 words)
-- ORIGINAL STEM: Under the FASB Conceptual Framework, which of the following is a fundamental qualitative characteristic of useful financial information?
UPDATE questions SET
  stem = $EXPL$Sterling Analytics is preparing training materials on the FASB Conceptual Framework for its new accounting staff. The module covers the hierarchy of qualitative characteristics. Which of the following is a fundamental qualitative characteristic of useful financial information?$EXPL$
WHERE id = 4708;

-- ID 11581: Financial Reporting: For-Profit (18 words)
-- ORIGINAL STEM: Under U.S. GAAP, what is the maximum original maturity for an investment to qualify as a cash equivalent?
UPDATE questions SET
  stem = $EXPL$On December 15, 2025, Oakmont Corp. purchases a U.S. Treasury bill maturing on March 1, 2026. The controller is determining whether to classify it as a cash equivalent on the balance sheet. Under U.S. GAAP, what is the maximum original maturity for an investment to qualify as a cash equivalent?$EXPL$
WHERE id = 11581;

-- ID 373: Financial Reporting: For-Profit (19 words)
-- ORIGINAL STEM: Under U.S. GAAP, which of the following items is reported in other comprehensive income (OCI) rather than net income?
UPDATE questions SET
  stem = $EXPL$During its 2025 year-end close, Northbridge Corp.''s accounting team classifies several gains and losses as either net income or other comprehensive income. Under U.S. GAAP, which of the following items is reported in OCI rather than net income?$EXPL$
WHERE id = 373;

-- ID 1852: Financial Reporting: For-Profit (19 words)
-- ORIGINAL STEM: Which of the following items is reported as a component of other comprehensive income (OCI) rather than net income?
UPDATE questions SET
  stem = $EXPL$Whitfield Corp. is preparing its statement of comprehensive income for the year ended December 31, 2025, and must properly classify each item. Which of the following items is reported as a component of other comprehensive income rather than net income?$EXPL$
WHERE id = 1852;

-- ============================================================
-- FINANCIAL STATEMENT RATIOS (3 questions)
-- ============================================================

-- ID 14986: Financial Statement Ratios (11 words)
-- ORIGINAL STEM: Into which category of financial ratios does the quick ratio fall?
UPDATE questions SET
  stem = $EXPL$A credit analyst at First National Bank is evaluating Townsend Manufacturing''s ability to meet short-term obligations. She calculates the quick ratio from Townsend''s latest financials. Into which category of financial ratios does the quick ratio fall?$EXPL$
WHERE id = 14986;

-- ID 15196: Financial Statement Ratios (11 words)
-- ORIGINAL STEM: How is the funded debt to net working capital ratio calculated?
UPDATE questions SET
  stem = $EXPL$Belmont Industries is negotiating a term loan with a covenant that references the funded debt to net working capital ratio. The CFO needs to verify how the bank will compute this metric. How is the funded debt to net working capital ratio calculated?$EXPL$
WHERE id = 15196;

-- ID 15223: Financial Statement Ratios (12 words)
-- ORIGINAL STEM: In the five-factor DuPont decomposition, what does the tax burden ratio represent?
UPDATE questions SET
  stem = $EXPL$An equity analyst is decomposing Thornton Industries'' return on equity using the five-factor DuPont model. She isolates each component to identify performance drivers. In this decomposition, what does the tax burden ratio represent?$EXPL$
WHERE id = 15223;

-- ============================================================
-- INCOME TAXES (2 questions)
-- ============================================================

-- ID 2160: Income Taxes (16 words)
-- ORIGINAL STEM: Under ASC 740, Income Taxes, a deferred tax liability on the balance sheet is created when:
UPDATE questions SET
  stem = $EXPL$Redstone Corp. uses accelerated depreciation for tax purposes but straight-line depreciation for financial reporting, creating a temporary difference. Under ASC 740, a deferred tax liability on the balance sheet is created when:$EXPL$
WHERE id = 2160;

-- ID 2188: Income Taxes (17 words)
-- ORIGINAL STEM: Under ASC 740-10-50, which reconciliation is required in the notes to the financial statements for public entities?
UPDATE questions SET
  stem = $EXPL$Weston Technologies, a publicly traded company, is preparing its 2025 annual report and reviewing income tax disclosure requirements. Under ASC 740-10-50, which reconciliation is required in the notes to the financial statements for public entities?$EXPL$
WHERE id = 2188;

-- ============================================================
-- INTANGIBLE ASSETS (2 questions)
-- ============================================================

-- ID 2019: Intangible Assets (19 words)
-- ORIGINAL STEM: Which of the following intangible assets is considered to have an indefinite useful life and should NOT be amortized?
UPDATE questions SET
  stem = $EXPL$During its year-end impairment review, Cascade Brands identifies several intangible assets on its balance sheet acquired in prior business combinations. The controller must determine which assets require amortization. Which of the following intangible assets is considered to have an indefinite useful life and should NOT be amortized?$EXPL$
WHERE id = 2019;

-- ID 12084: Intangible Assets (19 words)
-- ORIGINAL STEM: A noncompete agreement acquired in a business combination is classified as what type of intangible asset under U.S. GAAP?
UPDATE questions SET
  stem = $EXPL$Vanguard Corp. acquires Solis Technologies in December 2025. Among the identifiable intangible assets is a five-year noncompete agreement with the former CEO. Under U.S. GAAP, this noncompete agreement is classified as what type of intangible asset?$EXPL$
WHERE id = 12084;

-- ============================================================
-- INVESTMENTS (3 questions)
-- ============================================================

-- ID 15672: Investments (17 words)
-- ORIGINAL STEM: Under ASC 321, what is the measurement alternative available for equity investments without readily determinable fair values?
UPDATE questions SET
  stem = $EXPL$Grayson Capital holds a 5% equity stake in a privately held startup that has no quoted market price. The investment lacks a readily determinable fair value. Under ASC 321, what measurement alternative is available for this type of equity investment?$EXPL$
WHERE id = 15672;

-- ID 15674: Investments (17 words)
-- ORIGINAL STEM: Under ASC 820, what does the net asset value (NAV) practical expedient allow an investor to do?
UPDATE questions SET
  stem = $EXPL$Monroe Fund Advisors holds interests in several alternative investment funds that report net asset value per share. Under ASC 820, what does the NAV practical expedient allow an investor to do?$EXPL$
WHERE id = 15674;

-- ID 15676: Investments (18 words)
-- ORIGINAL STEM: Which of the following conditions requires an investor to apply the equity method of accounting under ASC 323?
UPDATE questions SET
  stem = $EXPL$Hartwell Industries acquires 30% of the voting stock of a smaller competitor in March 2025 and obtains a seat on its board. Which of the following conditions requires an investor to apply the equity method under ASC 323?$EXPL$
WHERE id = 15676;

-- ============================================================
-- NOT-FOR-PROFIT ACCOUNTING (2 questions)
-- ============================================================

-- ID 11848: Not-for-Profit Accounting (17 words)
-- ORIGINAL STEM: Under ASU 2016-14, may a not-for-profit present an intermediate measure of operations on its statement of activities?
UPDATE questions SET
  stem = $EXPL$The board treasurer of Coastal Community Foundation is reviewing the 2025 statement of activities and asks whether it can include a subtotal separating operating from nonoperating items. Under ASU 2016-14, may a not-for-profit present an intermediate measure of operations on its statement of activities?$EXPL$
WHERE id = 11848;

-- ID 11849: Not-for-Profit Accounting (17 words)
-- ORIGINAL STEM: Under ASU 2018-08, what two elements must be present for a contribution to be classified as conditional?
UPDATE questions SET
  stem = $EXPL$Hope Alliance, a not-for-profit, receives a $500,000 pledge from a corporate donor tied to specific program milestones. The CFO must determine whether the pledge is conditional or unconditional. Under ASU 2018-08, what two elements must be present for a contribution to be classified as conditional?$EXPL$
WHERE id = 11849;

-- ============================================================
-- PAYABLES AND ACCRUED LIABILITIES (2 questions)
-- ============================================================

-- ID 12152: Payables and Accrued Liabilities (17 words)
-- ORIGINAL STEM: What type of account is sales tax collected from customers but not yet remitted to the government?
UPDATE questions SET
  stem = $EXPL$Brookfield Retail collects a 7% state sales tax on all merchandise sold. At December 31, 2025, $43,000 of collected sales tax has not yet been remitted to the state. What type of account represents this amount on Brookfield''s balance sheet?$EXPL$
WHERE id = 12152;

-- ID 4735: Payables and Accrued Liabilities (18 words)
-- ORIGINAL STEM: Under ASC 450, when should an entity accrue a loss contingency as a liability on the balance sheet?
UPDATE questions SET
  stem = $EXPL$Canton Medical Supply is defending a lawsuit alleging defective products. Legal counsel believes an unfavorable outcome is probable and estimates the potential damages. Under ASC 450, when should an entity accrue a loss contingency as a liability on the balance sheet?$EXPL$
WHERE id = 4735;

-- ============================================================
-- PROPERTY, PLANT AND EQUIPMENT (2 questions)
-- ============================================================

-- ID 12059: Property, Plant and Equipment (16 words)
-- ORIGINAL STEM: Under U.S. GAAP, when should a fixed asset be derecognized and removed from the balance sheet?
UPDATE questions SET
  stem = $EXPL$Dalton Manufacturing permanently retires a CNC milling machine in November 2025 after replacing it with newer equipment. The machine has no remaining salvage value. Under U.S. GAAP, when should a fixed asset be derecognized and removed from the balance sheet?$EXPL$
WHERE id = 12059;

-- ID 403: Property, Plant and Equipment (20 words)
-- ORIGINAL STEM: A nonmonetary exchange lacks commercial substance and no cash is involved. Under ASC 845, how is the acquired asset recorded?
UPDATE questions SET
  stem = $EXPL$Rayburn Trucking exchanges a delivery van for a similar vehicle owned by Summit Logistics. The exchange lacks commercial substance and no cash changes hands. Under ASC 845, how is the acquired asset recorded?$EXPL$
WHERE id = 403;

-- ============================================================
-- REVENUE RECOGNITION (2 questions)
-- ============================================================

-- ID 1931: Revenue Recognition (18 words)
-- ORIGINAL STEM: Under ASC 606, which method is used to estimate variable consideration when there are only two possible outcomes?
UPDATE questions SET
  stem = $EXPL$Prism Software enters a contract with a $200,000 base fee plus a $50,000 performance bonus payable only if the project is completed by June 30, 2026. Under ASC 606, which method is used to estimate variable consideration when there are only two possible outcomes?$EXPL$
WHERE id = 1931;

-- ID 1927: Revenue Recognition (19 words)
-- ORIGINAL STEM: Under ASC 606, the transaction price includes variable consideration. Which of the following is an example of variable consideration?
UPDATE questions SET
  stem = $EXPL$Evergreen Construction is determining the transaction price for a fixed-price building contract that includes potential bonuses and penalties tied to completion milestones. Under ASC 606, which of the following is an example of variable consideration?$EXPL$
WHERE id = 1927;

-- ============================================================
-- SPECIAL PURPOSE FRAMEWORKS (3 questions)
-- ============================================================

-- ID 11921: Special Purpose Frameworks (16 words)
-- ORIGINAL STEM: Who is responsible for selecting the special purpose framework used to prepare an entity's financial statements?
UPDATE questions SET
  stem = $EXPL$Birchwood Properties, a privately held real estate firm, engages an external CPA to compile financial statements using a non-GAAP framework. Who is responsible for selecting the special purpose framework used to prepare the entity''s financial statements?$EXPL$
WHERE id = 11921;

-- ID 2360: Special Purpose Frameworks (17 words)
-- ORIGINAL STEM: A company prepares cash-basis financial statements and purchases equipment for $240,000 cash. How is this transaction reported?
UPDATE questions SET
  stem = $EXPL$Frontier Services prepares its financial statements on the cash basis. In September 2025, Frontier pays $240,000 cash for new warehouse equipment. How is this transaction reported under the cash-basis framework?$EXPL$
WHERE id = 2360;

-- ID 11939: Special Purpose Frameworks (18 words)
-- ORIGINAL STEM: What is the primary purpose of using different financial statement titles for SPF presentations compared to GAAP titles?
UPDATE questions SET
  stem = $EXPL$A CPA preparing compiled statements for Mapleton Hardware under the tax basis of accounting uses titles such as "Statement of Assets, Liabilities, and Equity — Tax Basis." What is the primary purpose of using different financial statement titles for SPF presentations compared to GAAP titles?$EXPL$
WHERE id = 11939;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT (5 questions)
-- ============================================================

-- ID 11380: State and Local Government (15 words)
-- ORIGINAL STEM: Under GASB Concepts Statement No. 1, what is the primary objective of governmental financial reporting?
UPDATE questions SET
  stem = $EXPL$The newly hired finance director of Maplebrook County reviews the GASB conceptual framework to understand reporting goals. Under GASB Concepts Statement No. 1, what is the primary objective of governmental financial reporting?$EXPL$
WHERE id = 11380;

-- ID 11395: State and Local Government (15 words)
-- ORIGINAL STEM: Under GASB Concepts Statement No. 1, which set of financial statements primarily demonstrates fiscal accountability?
UPDATE questions SET
  stem = $EXPL$An auditor is evaluating how Greenfield Township''s financial statements demonstrate accountability to taxpayers and oversight bodies. Under GASB Concepts Statement No. 1, which set of financial statements primarily demonstrates fiscal accountability?$EXPL$
WHERE id = 11395;

-- ID 11430: State and Local Government (15 words)
-- ORIGINAL STEM: Under GASB Statement No. 34, which category of capital assets is not subject to depreciation?
UPDATE questions SET
  stem = $EXPL$Lakeshore City reports several categories of capital assets in its government-wide financial statements, including buildings, roads, and undeveloped land parcels. Under GASB Statement No. 34, which category of capital assets is not subject to depreciation?$EXPL$
WHERE id = 11430;

-- ID 11433: State and Local Government (15 words)
-- ORIGINAL STEM: Under GASB Statement No. 33, which of the following best characterizes a voluntary nonexchange transaction?
UPDATE questions SET
  stem = $EXPL$Riverside County receives a state grant requiring the county to operate a youth mentoring program for three years. The controller is classifying this transaction under GASB Statement No. 33. Which of the following best characterizes a voluntary nonexchange transaction?$EXPL$
WHERE id = 11433;

-- ID 11760: State and Local Government (15 words)
-- ORIGINAL STEM: In the government-wide financial statements under GASB 34, activities are separated into which two categories?
UPDATE questions SET
  stem = $EXPL$Ashford City is preparing its government-wide statement of activities for the first time under GASB 34. The finance director must organize reported activities into the required categories. Activities are separated into which two categories?$EXPL$
WHERE id = 11760;

-- ============================================================
-- STATEMENT OF CASH FLOWS (3 questions)
-- ============================================================

-- ID 1901: Statement of Cash Flows (17 words)
-- ORIGINAL STEM: Under U.S. GAAP, how does a nonfinancial company classify dividends paid on its statement of cash flows?
UPDATE questions SET
  stem = $EXPL$During 2025, Summit Outdoor Gear, a nonfinancial company, declares and pays $350,000 in cash dividends to common shareholders. On Summit''s statement of cash flows, how are these dividends paid classified?$EXPL$
WHERE id = 1901;

-- ID 12310: Statement of Cash Flows (17 words)
-- ORIGINAL STEM: Under ASC 230, cash received from employees exercising stock options is classified as which type of activity?
UPDATE questions SET
  stem = $EXPL$In March 2025, several employees of Orion Pharmaceuticals exercise vested stock options, paying $175,000 in cash to the company. Under ASC 230, how is this cash received classified on the statement of cash flows?$EXPL$
WHERE id = 12310;

-- ID 11621: Statement of Cash Flows (18 words)
-- ORIGINAL STEM: Under ASC 230, the repurchase of a company's own common stock is classified as which type of activity?
UPDATE questions SET
  stem = $EXPL$In September 2025, Drake Electronics repurchases 50,000 shares of its own common stock on the open market for $1.2 million under an authorized buyback program. Under ASC 230, this repurchase is classified as which type of activity on the statement of cash flows?$EXPL$
WHERE id = 11621;

-- ============================================================
-- TRADE RECEIVABLES (2 questions)
-- ============================================================

-- ID 2261: Trade Receivables (15 words)
-- ORIGINAL STEM: Under ASC 326 (CECL), when a company writes off a specific receivable, the entry is:
UPDATE questions SET
  stem = $EXPL$Harmon Distributors determines that a $12,000 receivable from a bankrupt customer is uncollectible. The company uses the allowance method under ASC 326 (CECL). When Harmon writes off this specific receivable, the journal entry is:$EXPL$
WHERE id = 2261;

-- ID 11970: Trade Receivables (15 words)
-- ORIGINAL STEM: How is a trade discount handled in the accounting records for a sale of goods?
UPDATE questions SET
  stem = $EXPL$Langford Supply offers a 20% trade discount off its catalog price to wholesale customers. A distributor places an order for items listed at $50,000. How is this trade discount handled in Langford''s accounting records?$EXPL$
WHERE id = 11970;


