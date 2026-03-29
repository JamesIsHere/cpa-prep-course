-- Migration: Stem expansion — FAR batch 8 (31 questions)
-- Date: 2026-03-29
-- Purpose: Expand 31 short stems with scenario context for FAR section
-- Affected topics: Accounting Changes and Error Corrections, Cash and Cash Equivalents, Consolidations, Contingencies, Debt, Fair Value, Financial Statement Ratios, Income Taxes, Intangible Assets, Inventory, Investments, Leases, Not-for-Profit Accounting, Payables and Accrued Liabilities, Property, Plant and Equipment, Revenue Recognition, Special Purpose Frameworks, State and Local Government, Statement of Cash Flows, Subsequent Events, Trade Receivables

BEGIN;

-- ============================================================
-- ACCOUNTING CHANGES AND ERROR CORRECTIONS (2 questions)
-- ============================================================

-- ID 4765: Accounting Changes and Error Corrections (20 words)
-- ORIGINAL STEM: Under ASC 250, which of the following is NOT a required disclosure when an error correction is reported through restatement?
UPDATE questions SET
  stem = $EXPL$During its 2025 audit, Greystone Manufacturing discovered a material inventory misstatement that required restating its prior-year financial statements. Management is preparing the restatement disclosures under ASC 250. Which of the following is NOT a required disclosure when reporting this error correction?$EXPL$
WHERE id = 4765;

-- ID 11641: Accounting Changes and Error Corrections (20 words)
-- ORIGINAL STEM: Under ASC 250, where is the cumulative effect of a change in accounting principle recorded when retrospective application is used?
UPDATE questions SET
  stem = $EXPL$Effective January 1, 2025, Pemberton Industries voluntarily changes its inventory cost flow assumption from FIFO to weighted-average. The company applies the change retrospectively under ASC 250. Where is the cumulative effect of this change in accounting principle recorded?$EXPL$
WHERE id = 11641;

-- ============================================================
-- CASH AND CASH EQUIVALENTS (1 questions)
-- ============================================================

-- ID 11996: Cash and Cash Equivalents (19 words)
-- ORIGINAL STEM: Under ASC 230, the three-month criterion for classifying an investment as a cash equivalent is measured from which date?
UPDATE questions SET
  stem = $EXPL$On November 15, 2025, Ridgeway Corp. purchases a 90-day U.S. Treasury bill maturing on February 13, 2026. The controller is determining whether this instrument qualifies as a cash equivalent under ASC 230. The three-month maturity criterion is measured from which date?$EXPL$
WHERE id = 11996;

-- ============================================================
-- CONSOLIDATIONS (1 questions)
-- ============================================================

-- ID 479: Consolidations (19 words)
-- ORIGINAL STEM: In consolidation, when a parent sells inventory to its subsidiary (downstream transaction) at a profit, the intercompany profit is:
UPDATE questions SET
  stem = $EXPL$Halcyon Corp. owns 80% of Birch Industries. During 2025, Halcyon sold inventory costing $200,000 to Birch for $280,000. At year-end, Birch still holds $140,000 of that inventory. In preparing consolidated statements, the intercompany profit on the downstream sale is:$EXPL$
WHERE id = 479;

-- ============================================================
-- CONTINGENCIES (1 questions)
-- ============================================================

-- ID 11728: Contingencies (18 words)
-- ORIGINAL STEM: Which of the following is an example of a loss contingency that should be evaluated under ASC 450?
UPDATE questions SET
  stem = $EXPL$Whitfield Electronics is preparing its December 31, 2025, financial statements and is reviewing several pending matters with outside counsel. The controller must identify items requiring evaluation under ASC 450. Which of the following is an example of a loss contingency under this guidance?$EXPL$
WHERE id = 11728;

-- ============================================================
-- DEBT (1 questions)
-- ============================================================

-- ID 11944: Debt (19 words)
-- ORIGINAL STEM: What type of bond is backed only by the general creditworthiness of the issuer, with no specific collateral pledged?
UPDATE questions SET
  stem = $EXPL$Orion Technologies issues $5,000,000 in bonds to fund a new research campus. The bond indenture does not pledge any specific assets as collateral; investors rely solely on the company''s overall credit standing. What type of bond has Orion issued?$EXPL$
WHERE id = 11944;

-- ============================================================
-- FAIR VALUE (2 questions)
-- ============================================================

-- ID 2223: Fair Value (18 words)
-- ORIGINAL STEM: Under ASC 820, the fair value measurement of a nonfinancial asset (such as real estate) is based on:
UPDATE questions SET
  stem = $EXPL$Cortland Holdings is measuring the fair value of a commercial office building for impairment testing at December 31, 2025. Under ASC 820, the fair value measurement of this nonfinancial asset is based on:$EXPL$
WHERE id = 2223;

-- ID 2221: Fair Value (19 words)
-- ORIGINAL STEM: Which of the following is an example of a Level 2 input under the ASC 820 fair value hierarchy?
UPDATE questions SET
  stem = $EXPL$An analyst at Prescott Financial is classifying the inputs used to value a corporate bond that trades infrequently. The analyst is applying the ASC 820 fair value hierarchy. Which of the following is an example of a Level 2 input?$EXPL$
WHERE id = 2221;

-- ============================================================
-- FINANCIAL STATEMENT RATIOS (3 questions)
-- ============================================================

-- ID 15195: Financial Statement Ratios (17 words)
-- ORIGINAL STEM: Which liquidity metric evaluates a firm's ability to pay current liabilities using only cash and cash equivalents?
UPDATE questions SET
  stem = $EXPL$Centurion Distributors reports current assets of $900,000, including $320,000 in cash, $180,000 in short-term investments, and $250,000 in receivables. A credit analyst wants the most conservative measure of short-term liquidity using only the most liquid assets. Which metric evaluates the firm''s ability to pay current liabilities using only cash and cash equivalents?$EXPL$
WHERE id = 15195;

-- ID 15129: Financial Statement Ratios (18 words)
-- ORIGINAL STEM: Why might a company's net income differ significantly from its cash flow from operations in a given period?
UPDATE questions SET
  stem = $EXPL$Waverly Technologies reports net income of $2,400,000 for 2025, yet its cash flow from operations is only $1,100,000. The audit committee asks for an explanation of the discrepancy. Why might a company''s net income differ significantly from its cash flow from operations?$EXPL$
WHERE id = 15129;

-- ID 15110: Financial Statement Ratios (19 words)
-- ORIGINAL STEM: Fenwick Industries reports EBIT of $500,000 and interest expense of $100,000. What is Fenwick's degree of financial leverage (DFL)?
UPDATE questions SET
  stem = $EXPL$Fenwick Industries is evaluating the sensitivity of its earnings per share to changes in operating income. The company reports EBIT of $500,000 and interest expense of $100,000 for the current year. What is Fenwick''s degree of financial leverage (DFL)?$EXPL$
WHERE id = 15110;

-- ============================================================
-- INCOME TAXES (1 questions)
-- ============================================================

-- ID 2173: Income Taxes (20 words)
-- ORIGINAL STEM: Under ASC 740-10 (uncertain tax positions), a tax position must first meet what threshold before any benefit can be measured?
UPDATE questions SET
  stem = $EXPL$Braxton Logistics claimed a $1.2 million research credit on its 2024 federal return. During the 2025 provision calculation, the tax department evaluates this position under ASC 740-10. A tax position must first meet what threshold before any benefit can be measured?$EXPL$
WHERE id = 2173;

-- ============================================================
-- INTANGIBLE ASSETS (1 questions)
-- ============================================================

-- ID 12075: Intangible Assets (20 words)
-- ORIGINAL STEM: Which of the following is an example of a contract-based intangible asset recognized in a business combination under ASC 805?
UPDATE questions SET
  stem = $EXPL$Archer Holdings acquires Summit Brands for $45 million. During the purchase price allocation under ASC 805, Archer''s valuation team identifies several intangible assets. Which of the following is an example of a contract-based intangible asset recognized in this business combination?$EXPL$
WHERE id = 12075;

-- ============================================================
-- INVENTORY (1 questions)
-- ============================================================

-- ID 1969: Inventory (20 words)
-- ORIGINAL STEM: In accounting for inventories, the gross profit method is a technique most commonly used for which of the following purposes?
UPDATE questions SET
  stem = $EXPL$A fire destroyed part of Dalton Hardware''s warehouse on March 15, 2025. The company needs to estimate the cost of inventory lost for its insurance claim. In accounting for inventories, the gross profit method is a technique most commonly used for which of the following purposes?$EXPL$
WHERE id = 1969;

-- ============================================================
-- INVESTMENTS (2 questions)
-- ============================================================

-- ID 15182: Investments (19 words)
-- ORIGINAL STEM: Under ASC 810, at what ownership level does a parent generally consolidate a subsidiary through a voting interest model?
UPDATE questions SET
  stem = $EXPL$Meridian Corp. recently increased its ownership stake in Lakeview Inc. and is evaluating whether consolidation is required. Under ASC 810, at what ownership level of voting stock does a parent generally consolidate a subsidiary through the voting interest model?$EXPL$
WHERE id = 15182;

-- ID 15662: Investments (20 words)
-- ORIGINAL STEM: Under ASC 323, what ownership percentage creates a rebuttable presumption that an investor can exercise significant influence over an investee?
UPDATE questions SET
  stem = $EXPL$Trident Capital acquires shares in Apex Software and is determining the appropriate accounting method for the investment. Under ASC 323, what ownership percentage of voting stock creates a rebuttable presumption that the investor can exercise significant influence over the investee?$EXPL$
WHERE id = 15662;

-- ============================================================
-- LEASES (1 questions)
-- ============================================================

-- ID 419: Leases (20 words)
-- ORIGINAL STEM: Under ASC 842, what type of lease results when none of the transfer criteria are met from the lessor's perspective?
UPDATE questions SET
  stem = $EXPL$Canton Realty leases office space to a tenant for five years. The lease does not transfer ownership, contain a bargain purchase option, or cover the major part of the asset''s economic life. Under ASC 842, what type of lease results from the lessor''s perspective when none of the transfer criteria are met?$EXPL$
WHERE id = 419;

-- ============================================================
-- NOT-FOR-PROFIT ACCOUNTING (1 questions)
-- ============================================================

-- ID 183: Not-for-Profit Accounting (20 words)
-- ORIGINAL STEM: A not-for-profit organization receives donated services from a licensed electrician who rewires the building. How should this contribution be reported?
UPDATE questions SET
  stem = $EXPL$Riverside Community Center, a not-for-profit, receives 40 hours of donated services from a licensed electrician who completely rewires the building''s main hall. The work would have cost $6,000 if purchased. How should this contribution be reported?$EXPL$
WHERE id = 183;

-- ============================================================
-- PAYABLES AND ACCRUED LIABILITIES (1 questions)
-- ============================================================

-- ID 12173: Payables and Accrued Liabilities (20 words)
-- ORIGINAL STEM: When a company receives a cash deposit from a customer for a returnable shipping container, how is the deposit recorded?
UPDATE questions SET
  stem = $EXPL$Fulton Chemical ships products in reusable steel drums and collects a $150 deposit per drum from each customer. The drums are expected to be returned within 60 days. How should Fulton record the cash deposit received for each returnable container?$EXPL$
WHERE id = 12173;

-- ============================================================
-- PROPERTY, PLANT AND EQUIPMENT (1 questions)
-- ============================================================

-- ID 1996: Property, Plant and Equipment (20 words)
-- ORIGINAL STEM: Under U.S. GAAP, which of the following expenditures related to property, plant, and equipment should be capitalized rather than expensed?
UPDATE questions SET
  stem = $EXPL$Sterling Manufacturing incurs several expenditures on its production equipment during 2025, including routine maintenance, a major overhaul extending the asset''s useful life, and minor repairs. Under U.S. GAAP, which of the following expenditures related to PP&E should be capitalized rather than expensed?$EXPL$
WHERE id = 1996;

-- ============================================================
-- REVENUE RECOGNITION (1 questions)
-- ============================================================

-- ID 1943: Revenue Recognition (19 words)
-- ORIGINAL STEM: Under ASC 606, how should an entity account for incremental costs of obtaining a contract, such as sales commissions?
UPDATE questions SET
  stem = $EXPL$Pinnacle Software pays its sales representatives a 10% commission on each new three-year subscription contract signed. The controller is determining the proper treatment of these costs. Under ASC 606, how should an entity account for incremental costs of obtaining a contract, such as sales commissions?$EXPL$
WHERE id = 1943;

-- ============================================================
-- SPECIAL PURPOSE FRAMEWORKS (3 questions)
-- ============================================================

-- ID 2370: Special Purpose Frameworks (19 words)
-- ORIGINAL STEM: Under the tax basis of accounting, how are operating leases (previously classified as such under ASC 840) typically reported?
UPDATE questions SET
  stem = $EXPL$Newport Consulting prepares its financial statements using the tax basis of accounting. The firm has several office leases that were classified as operating leases under the prior standard (ASC 840). Under the tax basis, how are these operating leases typically reported?$EXPL$
WHERE id = 2370;

-- ID 11514: Special Purpose Frameworks (19 words)
-- ORIGINAL STEM: Under the tax basis of accounting, how are Section 197 intangible assets such as trademarks and customer lists reported?
UPDATE questions SET
  stem = $EXPL$Oakridge Holdings acquired a competitor and recognized $3 million in trademarks and customer lists as Section 197 intangibles. The company reports on the tax basis of accounting. How are these Section 197 intangible assets reported under that framework?$EXPL$
WHERE id = 11514;

-- ID 2355: Special Purpose Frameworks (20 words)
-- ORIGINAL STEM: Which of the following best describes a key difference between tax-basis financial statements and GAAP financial statements regarding inventory capitalization?
UPDATE questions SET
  stem = $EXPL$A small manufacturer prepares tax-basis financial statements for its lenders. The controller notices that certain overhead costs are treated differently for tax purposes than under GAAP. Which of the following best describes a key difference between the two frameworks regarding inventory capitalization?$EXPL$
WHERE id = 2355;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT (2 questions)
-- ============================================================

-- ID 5400: State and Local Government (19 words)
-- ORIGINAL STEM: Under GASB Statement No. 34, management's discussion and analysis (MD&A) is classified as which component of governmental financial reporting?
UPDATE questions SET
  stem = $EXPL$The finance director of Cedar County is assembling the county''s comprehensive annual financial report and determining where to present the MD&A section. Under GASB Statement No. 34, management''s discussion and analysis is classified as which component of governmental financial reporting?$EXPL$
WHERE id = 5400;

-- ID 4767: State and Local Government (20 words)
-- ORIGINAL STEM: Under modified accrual accounting for governmental funds, revenue is recognized when it is measurable and available. How is "available" defined?
UPDATE questions SET
  stem = $EXPL$Millbrook Township collects property taxes for its general fund and uses modified accrual accounting. The finance officer is determining when to recognize tax revenue at year-end. Under this basis, revenue is recognized when measurable and available. How is "available" defined?$EXPL$
WHERE id = 4767;

-- ============================================================
-- STATEMENT OF CASH FLOWS (3 questions)
-- ============================================================

-- ID 11636: Statement of Cash Flows (19 words)
-- ORIGINAL STEM: Under ASC 230, cash received from issuing common stock to new investors is classified as which type of activity?
UPDATE questions SET
  stem = $EXPL$In March 2025, Redwood Corp. raises $4 million by issuing 200,000 shares of common stock to outside investors. The controller is preparing the statement of cash flows. Under ASC 230, this cash receipt is classified as which type of activity?$EXPL$
WHERE id = 11636;

-- ID 12321: Statement of Cash Flows (19 words)
-- ORIGINAL STEM: Under ASC 230, repayment of the principal portion of a bank loan is classified as which type of activity?
UPDATE questions SET
  stem = $EXPL$On September 1, 2025, Keystone Fabrication makes a $500,000 principal payment on its five-year term loan with First National Bank. Under ASC 230, this principal repayment is classified as which type of activity on the statement of cash flows?$EXPL$
WHERE id = 12321;

-- ID 1900: Statement of Cash Flows (20 words)
-- ORIGINAL STEM: A company reports a $10,000 unrealized gain on trading securities in net income. Under the indirect method, this gain is:
UPDATE questions SET
  stem = $EXPL$Belmont Advisors holds a portfolio of trading securities and reports a $10,000 unrealized gain in net income for 2025. When preparing the operating section of the statement of cash flows under the indirect method, this unrealized gain is:$EXPL$
WHERE id = 1900;

-- ============================================================
-- SUBSEQUENT EVENTS (1 questions)
-- ============================================================

-- ID 15162: Subsequent Events (11 words)
-- ORIGINAL STEM: What must an entity disclose about subsequent events under ASC 855?
UPDATE questions SET
  stem = $EXPL$Langford Industries issues its December 31, 2025, financial statements on March 10, 2026, after evaluating all events through that date. Under ASC 855, what must an entity disclose about subsequent events in the notes to the financial statements?$EXPL$
WHERE id = 15162;

-- ============================================================
-- TRADE RECEIVABLES (1 questions)
-- ============================================================

-- ID 1103: Trade Receivables (20 words)
-- ORIGINAL STEM: Under ASC 326 (CECL), which of the following is NOT a permitted methodology for estimating the allowance for credit losses?
UPDATE questions SET
  stem = $EXPL$Harbor Freight Distributors is implementing ASC 326 and selecting a methodology for its allowance for credit losses on trade receivables. The CFO asks the accounting team to evaluate several estimation approaches. Which of the following is NOT a permitted methodology under the CECL model?$EXPL$
WHERE id = 1103;

COMMIT;
