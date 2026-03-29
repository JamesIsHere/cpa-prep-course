-- Migration: Stem expansion — FAR batch 2 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for FAR section
-- Affected topics: Accounting Changes and Error Corrections, Cash and Cash Equivalents, Consolidations, Contingencies, Debt, Fair Value, Financial Reporting: For-Profit, Financial Statement Ratios, Income Taxes, Intangible Assets, Inventory, Investments, Leases, Not-for-Profit Accounting, Payables and Accrued Liabilities, Property, Plant and Equipment, Revenue Recognition, Special Purpose Frameworks, State and Local Government, Statement of Cash Flows, Subsequent Events, Trade Receivables

BEGIN;

-- ============================================================
-- ACCOUNTING CHANGES AND ERROR CORRECTIONS (2 questions)
-- ============================================================

-- ID 12343: Accounting Changes and Error Corrections (13 words)
-- ORIGINAL STEM: Under ASC 250, what are "indirect effects" of a change in accounting principle?
UPDATE questions SET
  stem = $EXPL$Thornton Industries switched from FIFO to weighted-average cost for inventory valuation in 2025. The controller noted that the change would also affect profit-sharing bonuses tied to net income. Under ASC 250, what are "indirect effects" of a change in accounting principle?$EXPL$
WHERE id = 12343;

-- ID 4752: Accounting Changes and Error Corrections (14 words)
-- ORIGINAL STEM: Which of the following qualifies as a change in reporting entity under ASC 250?
UPDATE questions SET
  stem = $EXPL$Granger Corp. recently restructured its organization, and the CFO is evaluating whether the revised financial statement presentation triggers specific ASC 250 requirements. Which of the following qualifies as a change in reporting entity under ASC 250?$EXPL$
WHERE id = 4752;

-- ============================================================
-- CASH AND CASH EQUIVALENTS (1 questions)
-- ============================================================

-- ID 11974: Cash and Cash Equivalents (10 words)
-- ORIGINAL STEM: What is the purpose of an imprest petty cash fund?
UPDATE questions SET
  stem = $EXPL$Reed & Associates maintains a $500 petty cash fund managed by the office administrator. The fund is replenished each Friday by writing a check for the total of receipts collected. What is the purpose of this imprest petty cash arrangement?$EXPL$
WHERE id = 11974;

-- ============================================================
-- CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 186: Consolidations (12 words)
-- ORIGINAL STEM: Under ASC 805, what method is used to account for business combinations?
UPDATE questions SET
  stem = $EXPL$On March 1, 2025, Wexler Holdings acquired 100% of Beacon Technologies for $14 million in cash. The CFO is determining the proper accounting treatment for the combination. Under ASC 805, what method is used to account for business combinations?$EXPL$
WHERE id = 186;

-- ID 475: Consolidations (13 words)
-- ORIGINAL STEM: Under ASC 810, a variable interest entity (VIE) is an entity in which:
UPDATE questions SET
  stem = $EXPL$Cypress Financial holds a 15% equity stake in a special-purpose entity created to securitize mortgage receivables. The auditor is assessing whether consolidation is required. Under ASC 810, a variable interest entity (VIE) is an entity in which:$EXPL$
WHERE id = 475;

-- ============================================================
-- CONTINGENCIES (2 questions)
-- ============================================================

-- ID 1136: Contingencies (10 words)
-- ORIGINAL STEM: Under ASC 450, when must a loss contingency be accrued?
UPDATE questions SET
  stem = $EXPL$Delmar Manufacturing is defending a product liability lawsuit filed in October 2025. As of December 31, 2025, the company''s legal counsel has provided a preliminary assessment of the case outcome. Under ASC 450, when must a loss contingency be accrued?$EXPL$
WHERE id = 1136;

-- ID 1139: Contingencies (11 words)
-- ORIGINAL STEM: Under ASC 855, how are subsequent events evaluated for contingency recognition?
UPDATE questions SET
  stem = $EXPL$Prescott Corp. issued its December 31, 2025 financial statements on March 5, 2026. In February 2026, the company learned that a pending lawsuit had been settled. Under ASC 855, how are subsequent events evaluated for contingency recognition?$EXPL$
WHERE id = 1139;

-- ============================================================
-- DEBT (1 questions)
-- ============================================================

-- ID 11945: Debt (8 words)
-- ORIGINAL STEM: When is a bond issued at a premium?
UPDATE questions SET
  stem = $EXPL$On January 1, 2025, Calloway Inc. issued $2 million in 10-year bonds with a stated interest rate of 6%. At the time of issuance, the market interest rate for similar bonds was 5%. When is a bond considered to be issued at a premium?$EXPL$
WHERE id = 11945;

-- ============================================================
-- FAIR VALUE (2 questions)
-- ============================================================

-- ID 1151: Fair Value (11 words)
-- ORIGINAL STEM: Under ASC 320, how are trading securities measured after initial recognition?
UPDATE questions SET
  stem = $EXPL$Brighton Capital purchased $800,000 of corporate bonds in November 2025, classifying them as trading securities. At December 31, 2025, the portfolio''s fair value had declined to $765,000. Under ASC 320, how are trading securities measured after initial recognition?$EXPL$
WHERE id = 1151;

-- ID 2234: Fair Value (11 words)
-- ORIGINAL STEM: Under ASC 820, the cost approach to fair value measurement reflects:
UPDATE questions SET
  stem = $EXPL$An appraiser is determining the fair value of a specialized manufacturing facility for Regent Industries. Because no active market exists for comparable assets, the appraiser considers what it would cost to replace the asset. Under ASC 820, the cost approach to fair value measurement reflects:$EXPL$
WHERE id = 2234;

-- ============================================================
-- FINANCIAL REPORTING: FOR-PROFIT (8 questions)
-- ============================================================

-- ID 4714: Financial Reporting: For-Profit (9 words)
-- ORIGINAL STEM: The going concern assumption in financial reporting presumes that:
UPDATE questions SET
  stem = $EXPL$During the 2025 audit of Faulkner Retail, the auditor noted recurring losses and negative operating cash flows over the past three years. Management is evaluating whether to include a going concern disclosure. The going concern assumption in financial reporting presumes that:$EXPL$
WHERE id = 4714;

-- ID 11536: Financial Reporting: For-Profit (9 words)
-- ORIGINAL STEM: Under the FASB Conceptual Framework, how are expenses defined?
UPDATE questions SET
  stem = $EXPL$A new staff accountant at Larson Distributing is preparing journal entries for costs incurred during December 2025, including rent, wages, and depreciation. The controller asks the accountant to explain the conceptual basis for recording these items. Under the FASB Conceptual Framework, how are expenses defined?$EXPL$
WHERE id = 11536;

-- ID 11530: Financial Reporting: For-Profit (10 words)
-- ORIGINAL STEM: Under the FASB Conceptual Framework, how is an asset defined?
UPDATE questions SET
  stem = $EXPL$Palmer Technologies recently acquired a patent that provides exclusive manufacturing rights for 15 years. The CFO is explaining to the board why this purchase qualifies for balance sheet recognition. Under the FASB Conceptual Framework, how is an asset defined?$EXPL$
WHERE id = 11530;

-- ID 11602: Financial Reporting: For-Profit (10 words)
-- ORIGINAL STEM: How are prepaid expenses classified on a classified balance sheet?
UPDATE questions SET
  stem = $EXPL$On December 1, 2025, Whitfield Services paid $36,000 for a 12-month insurance policy effective immediately. The controller is preparing the December 31, 2025 classified balance sheet. How should the remaining prepaid insurance be classified?$EXPL$
WHERE id = 11602;

-- ID 12220: Financial Reporting: For-Profit (10 words)
-- ORIGINAL STEM: Under the FASB Conceptual Framework, what are distributions to owners?
UPDATE questions SET
  stem = $EXPL$In March 2025, the board of Oakridge Corp. declared a $2.50 per share cash dividend to common shareholders. An accounting intern asks how dividends relate to the FASB Conceptual Framework. Under the framework, what are distributions to owners?$EXPL$
WHERE id = 12220;

-- ID 12226: Financial Reporting: For-Profit (10 words)
-- ORIGINAL STEM: Under the FASB Conceptual Framework, what are investments by owners?
UPDATE questions SET
  stem = $EXPL$Summit Engineering issued 50,000 shares of common stock at $18 per share to fund a new research facility. The CFO is classifying this transaction under the FASB Conceptual Framework. What are investments by owners?$EXPL$
WHERE id = 12226;

-- ID 12278: Financial Reporting: For-Profit (10 words)
-- ORIGINAL STEM: What does an accumulated deficit on the balance sheet represent?
UPDATE questions SET
  stem = $EXPL$While reviewing Nolan Biotech''s balance sheet, an analyst notices stockholders'' equity shows a negative retained earnings balance of $4.2 million. What does an accumulated deficit on the balance sheet represent?$EXPL$
WHERE id = 12278;

-- ID 12232: Financial Reporting: For-Profit (11 words)
-- ORIGINAL STEM: What is the organizational structure of the FASB Accounting Standards Codification?
UPDATE questions SET
  stem = $EXPL$A staff auditor is researching the accounting treatment for a complex lease arrangement and needs to navigate the authoritative guidance efficiently. What is the organizational structure of the FASB Accounting Standards Codification?$EXPL$
WHERE id = 12232;

-- ============================================================
-- FINANCIAL STATEMENT RATIOS (3 questions)
-- ============================================================

-- ID 15002: Financial Statement Ratios (7 words)
-- ORIGINAL STEM: What does the price-to-book (P/B) ratio compare?
UPDATE questions SET
  stem = $EXPL$An equity analyst is evaluating Sentinel Corp., whose common stock trades at $54 per share. The company''s most recent balance sheet reports total stockholders'' equity of $120 million with 4 million shares outstanding. What does the price-to-book (P/B) ratio compare?$EXPL$
WHERE id = 15002;

-- ID 15106: Financial Statement Ratios (7 words)
-- ORIGINAL STEM: What does the capital intensity ratio measure?
UPDATE questions SET
  stem = $EXPL$Vanguard Electronics reported total assets of $25 million and net revenue of $40 million for fiscal 2025. A financial analyst is computing capital efficiency metrics for an industry comparison. What does the capital intensity ratio measure?$EXPL$
WHERE id = 15106;

-- ID 15132: Financial Statement Ratios (7 words)
-- ORIGINAL STEM: How is a company's market capitalization calculated?
UPDATE questions SET
  stem = $EXPL$Crestview Pharmaceuticals has 8 million shares of common stock outstanding, currently trading at $62 per share. An analyst preparing a valuation report needs to determine the company''s total market value. How is market capitalization calculated?$EXPL$
WHERE id = 15132;

-- ============================================================
-- INCOME TAXES (2 questions)
-- ============================================================

-- ID 11802: Income Taxes (9 words)
-- ORIGINAL STEM: Under ASC 740, what is a deferred tax benefit?
UPDATE questions SET
  stem = $EXPL$At December 31, 2025, Harmon Industries recorded a $350,000 increase in its deferred tax asset related to warranty obligations that are not yet deductible for tax purposes. Under ASC 740, what is a deferred tax benefit?$EXPL$
WHERE id = 11802;

-- ID 2179: Income Taxes (11 words)
-- ORIGINAL STEM: Under ASC 740, deferred tax assets and liabilities are measured using:
UPDATE questions SET
  stem = $EXPL$Canton Manufacturing has temporary differences that will reverse over the next five years. Congress recently enacted a change in the corporate tax rate effective in 2027. Under ASC 740, deferred tax assets and liabilities are measured using:$EXPL$
WHERE id = 2179;

-- ============================================================
-- INTANGIBLE ASSETS (2 questions)
-- ============================================================

-- ID 2020: Intangible Assets (9 words)
-- ORIGINAL STEM: Under ASC 350, how is goodwill tested for impairment?
UPDATE questions SET
  stem = $EXPL$Ridgeline Corp. acquired a subsidiary in 2023 and recorded $5.8 million in goodwill. At the 2025 annual assessment, management suspects the reporting unit''s fair value may have declined below its carrying amount. Under ASC 350, how is goodwill tested for impairment?$EXPL$
WHERE id = 2020;

-- ID 12083: Intangible Assets (11 words)
-- ORIGINAL STEM: Under U.S. GAAP, when is goodwill recognized on the balance sheet?
UPDATE questions SET
  stem = $EXPL$On July 1, 2025, Pinnacle Group paid $22 million to acquire all of the net assets of Harbor Consulting, whose identifiable net assets had a fair value of $17 million. Under U.S. GAAP, when is goodwill recognized on the balance sheet?$EXPL$
WHERE id = 12083;

-- ============================================================
-- INVENTORY (1 questions)
-- ============================================================

-- ID 1961: Inventory (8 words)
-- ORIGINAL STEM: Under ASC 330, inventory should be reported at:
UPDATE questions SET
  stem = $EXPL$At year-end, Baxter Supply''s electronics inventory has a historical cost of $420,000. Due to rapid technological changes, the estimated selling price has dropped to $390,000, with $15,000 in expected disposal costs. Under ASC 330, inventory should be reported at:$EXPL$
WHERE id = 1961;

-- ============================================================
-- INVESTMENTS (2 questions)
-- ============================================================

-- ID 15184: Investments (14 words)
-- ORIGINAL STEM: Under ASC 320, where are unrealized holding gains on available-for-sale debt securities initially reported?
UPDATE questions SET
  stem = $EXPL$Waverly Corp. holds a portfolio of corporate bonds classified as available-for-sale. At December 31, 2025, the portfolio''s fair value exceeds its amortized cost by $85,000. Under ASC 320, where are unrealized holding gains on available-for-sale debt securities initially reported?$EXPL$
WHERE id = 15184;

-- ID 15664: Investments (14 words)
-- ORIGINAL STEM: Where are unrealized holding gains and losses on trading securities recognized under ASC 320?
UPDATE questions SET
  stem = $EXPL$Meridian Capital manages a portfolio of government bonds classified as trading securities. At quarter-end, the portfolio''s fair value increased by $42,000 above its carrying amount. Where are unrealized holding gains and losses on trading securities recognized under ASC 320?$EXPL$
WHERE id = 15664;

-- ============================================================
-- LEASES (1 questions)
-- ============================================================

-- ID 2067: Leases (12 words)
-- ORIGINAL STEM: Under ASC 842, which of the following is NOT considered a lease?
UPDATE questions SET
  stem = $EXPL$Foster Logistics is reviewing several contracts to determine which arrangements contain a lease component under the new standard. The controller needs to distinguish leases from service agreements. Under ASC 842, which of the following is NOT considered a lease?$EXPL$
WHERE id = 2067;

-- ============================================================
-- NOT-FOR-PROFIT ACCOUNTING (2 questions)
-- ============================================================

-- ID 184: Not-for-Profit Accounting (9 words)
-- ORIGINAL STEM: Under ASC 958, how must a not-for-profit report expenses?
UPDATE questions SET
  stem = $EXPL$The Riverside Community Foundation is preparing its annual financial statements for the year ended December 31, 2025. The finance director needs to determine the required presentation of program and supporting costs. Under ASC 958, how must a not-for-profit report expenses?$EXPL$
WHERE id = 184;

-- ID 468: Not-for-Profit Accounting (10 words)
-- ORIGINAL STEM: Under ASC 958-605, when are contributed services recognized as revenue?
UPDATE questions SET
  stem = $EXPL$During 2025, licensed attorneys donated 200 hours of pro bono legal work to the Eastside Legal Aid Society. The executive director is determining whether to recognize revenue for these services. Under ASC 958-605, when are contributed services recognized as revenue?$EXPL$
WHERE id = 468;

-- ============================================================
-- PAYABLES AND ACCRUED LIABILITIES (2 questions)
-- ============================================================

-- ID 12154: Payables and Accrued Liabilities (8 words)
-- ORIGINAL STEM: What is the current portion of long-term debt?
UPDATE questions SET
  stem = $EXPL$Stratton Manufacturing has a $5 million term loan with quarterly principal payments of $125,000. The controller is preparing the December 31, 2025 classified balance sheet. What is the current portion of long-term debt?$EXPL$
WHERE id = 12154;

-- ID 12164: Payables and Accrued Liabilities (9 words)
-- ORIGINAL STEM: What is a retention payable in the construction industry?
UPDATE questions SET
  stem = $EXPL$Apex Builders is the general contractor on a $12 million office complex project. The owner withholds 10% from each progress billing until substantial completion. What is a retention payable in the construction industry?$EXPL$
WHERE id = 12164;

-- ============================================================
-- PROPERTY, PLANT AND EQUIPMENT (2 questions)
-- ============================================================

-- ID 159: Property, Plant and Equipment (10 words)
-- ORIGINAL STEM: Under ASC 360, what triggers impairment testing for long-lived assets?
UPDATE questions SET
  stem = $EXPL$Kendall Textiles operates an aging manufacturing plant. In Q4 2025, the company lost its largest customer, which accounted for 40% of the plant''s output. Management is evaluating the plant''s carrying value. Under ASC 360, what triggers impairment testing for long-lived assets?$EXPL$
WHERE id = 159;

-- ID 12052: Property, Plant and Equipment (11 words)
-- ORIGINAL STEM: Under U.S. GAAP, when does depreciation of a fixed asset begin?
UPDATE questions SET
  stem = $EXPL$On September 15, 2025, Ashland Corp. purchased new production equipment for $480,000. Installation was completed on October 10, and the equipment entered service on October 20. Under U.S. GAAP, when does depreciation of a fixed asset begin?$EXPL$
WHERE id = 12052;

-- ============================================================
-- REVENUE RECOGNITION (1 questions)
-- ============================================================

-- ID 152: Revenue Recognition (9 words)
-- ORIGINAL STEM: Under ASC 606, how are customer loyalty points treated?
UPDATE questions SET
  stem = $EXPL$Velocity Airlines awards frequent flyer miles to passengers on every flight. Customers can redeem accumulated miles for free tickets or seat upgrades. Under ASC 606, how are customer loyalty points treated?$EXPL$
WHERE id = 152;

-- ============================================================
-- SPECIAL PURPOSE FRAMEWORKS (3 questions)
-- ============================================================

-- ID 11490: Special Purpose Frameworks (11 words)
-- ORIGINAL STEM: What is the former professional term for a special purpose framework?
UPDATE questions SET
  stem = $EXPL$A small CPA firm is preparing financial statements for a client using the cash basis of accounting. An older partner refers to this as a type of reporting framework by its former professional designation. What is the former professional term for a special purpose framework?$EXPL$
WHERE id = 11490;

-- ID 1120: Special Purpose Frameworks (12 words)
-- ORIGINAL STEM: Under the tax basis of accounting, goodwill from a business acquisition is:
UPDATE questions SET
  stem = $EXPL$Drake Enterprises prepares its financial statements using the income tax basis. In 2024, Drake acquired a competitor and recorded goodwill on its tax-basis balance sheet. Under the tax basis of accounting, goodwill from a business acquisition is:$EXPL$
WHERE id = 1120;

-- ID 1122: Special Purpose Frameworks (12 words)
-- ORIGINAL STEM: Which is a common difference between tax basis and GAAP financial statements?
UPDATE questions SET
  stem = $EXPL$A CPA is converting a client''s tax-basis financial statements to GAAP for a bank loan application. The CPA identifies several items that require adjustment. Which is a common difference between tax basis and GAAP financial statements?$EXPL$
WHERE id = 1122;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT (6 questions)
-- ============================================================

-- ID 5453: State and Local Government (9 words)
-- ORIGINAL STEM: Under GASB 54, what does assigned fund balance represent?
UPDATE questions SET
  stem = $EXPL$The city of Brookhaven is preparing its general fund balance sheet for the fiscal year ended June 30, 2025. The finance director is classifying fund balance components according to GASB 54. What does assigned fund balance represent?$EXPL$
WHERE id = 5453;

-- ID 4766: State and Local Government (10 words)
-- ORIGINAL STEM: Which accounting basis is used for governmental fund financial statements?
UPDATE questions SET
  stem = $EXPL$A newly hired accountant for the City of Lakeview is preparing the general fund financial statements and asks the finance director about the recognition criteria for revenues and expenditures. Which accounting basis is used for governmental fund financial statements?$EXPL$
WHERE id = 4766;

-- ID 4773: State and Local Government (10 words)
-- ORIGINAL STEM: The measurement focus of governmental fund financial statements is the:
UPDATE questions SET
  stem = $EXPL$During the annual audit of Cedar County, the auditor notes that the governmental fund statements report different items than the government-wide statements. The measurement focus of governmental fund financial statements is the:$EXPL$
WHERE id = 4773;

-- ID 5385: State and Local Government (11 words)
-- ORIGINAL STEM: Under GASB Statement No. 33, what is a government-mandated nonexchange transaction?
UPDATE questions SET
  stem = $EXPL$The state legislature requires all school districts to implement a new special education program and provides dedicated grant funding. The school district''s accountant is classifying this revenue source. Under GASB Statement No. 33, what is a government-mandated nonexchange transaction?$EXPL$
WHERE id = 5385;

-- ID 11762: State and Local Government (11 words)
-- ORIGINAL STEM: In governmental budgetary accounting, at what point is an encumbrance recorded?
UPDATE questions SET
  stem = $EXPL$The City of Glendale''s purchasing department issues a $75,000 purchase order for new police vehicles in October 2025. The finance department needs to record this commitment. In governmental budgetary accounting, at what point is an encumbrance recorded?$EXPL$
WHERE id = 11762;

-- ID 11782: State and Local Government (11 words)
-- ORIGINAL STEM: Under GASB 84, what is the purpose of a custodial fund?
UPDATE questions SET
  stem = $EXPL$The county tax collector receives property tax payments on behalf of several overlapping school districts and special districts. The county''s finance director must determine the proper fund classification. Under GASB 84, what is the purpose of a custodial fund?$EXPL$
WHERE id = 11782;

-- ============================================================
-- STATEMENT OF CASH FLOWS (3 questions)
-- ============================================================

-- ID 11611: Statement of Cash Flows (9 words)
-- ORIGINAL STEM: Under ASC 230, which characteristic defines a cash equivalent?
UPDATE questions SET
  stem = $EXPL$Novak Industries holds a 60-day U.S. Treasury bill and a 9-month certificate of deposit. The controller is determining which instruments qualify as cash equivalents on the statement of cash flows. Under ASC 230, which characteristic defines a cash equivalent?$EXPL$
WHERE id = 11611;

-- ID 1884: Statement of Cash Flows (14 words)
-- ORIGINAL STEM: Under the direct method of presenting operating activities, which of the following is reported?
UPDATE questions SET
  stem = $EXPL$Garrett Manufacturing prepares its statement of cash flows using the direct method. The controller is determining which line items to present in the operating activities section. Under the direct method, which of the following is reported?$EXPL$
WHERE id = 1884;

-- ID 1899: Statement of Cash Flows (14 words)
-- ORIGINAL STEM: Which of the following is NOT disclosed as a noncash investing and financing activity?
UPDATE questions SET
  stem = $EXPL$While preparing the 2025 statement of cash flows for Beacon Industries, the controller is identifying transactions that must be disclosed separately as noncash activities. Which of the following is NOT disclosed as a noncash investing and financing activity?$EXPL$
WHERE id = 1899;

-- ============================================================
-- SUBSEQUENT EVENTS (1 questions)
-- ============================================================

-- ID 15138: Subsequent Events (9 words)
-- ORIGINAL STEM: What are subsequent events as defined by ASC 855?
UPDATE questions SET
  stem = $EXPL$Orion Consulting has a December 31, 2025 year-end and plans to issue its financial statements on March 15, 2026. The CFO is reviewing transactions that occurred in January and February 2026. What are subsequent events as defined by ASC 855?$EXPL$
WHERE id = 15138;

-- ============================================================
-- TRADE RECEIVABLES (1 questions)
-- ============================================================

-- ID 11998: Trade Receivables (12 words)
-- ORIGINAL STEM: How is the allowance for credit losses classified on the balance sheet?
UPDATE questions SET
  stem = $EXPL$At December 31, 2025, Kensington Wholesale reports gross accounts receivable of $1.8 million and an estimated allowance for credit losses of $54,000. The controller is preparing the classified balance sheet. How is the allowance for credit losses classified on the balance sheet?$EXPL$
WHERE id = 11998;

COMMIT;
