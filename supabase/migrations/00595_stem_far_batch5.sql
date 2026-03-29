-- Migration: Stem expansion — FAR batch 5 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for FAR section
-- Affected topics: Accounting Changes and Error Corrections, Cash and Cash Equivalents, Consolidations, Contingencies, Debt, Equity, Fair Value, Financial Reporting: For-Profit, Financial Statement Ratios, Income Taxes, Intangible Assets, Inventory, Investments, Leases, Not-for-Profit Accounting, Payables and Accrued Liabilities, Property, Plant and Equipment, Public Company Reporting, Revenue Recognition, Special Purpose Frameworks, State and Local Government, Statement of Cash Flows, Subsequent Events, Trade Receivables



-- ============================================================
-- ACCOUNTING CHANGES AND ERROR CORRECTIONS (2 questions)
-- ============================================================

-- ID 12358: Accounting Changes and Error Corrections (16 words)
-- ORIGINAL STEM: Under ASC 250, the cumulative effect of a change in accounting principle refers to which amount?
UPDATE questions SET
  stem = $EXPL$Grafton Industries switches from the FIFO to the weighted-average method for inventory valuation in 2025. The controller must calculate the ASC 250 cumulative effect of this change in accounting principle. What amount does the cumulative effect represent?$EXPL$
WHERE id = 12358;

-- ID 4764: Accounting Changes and Error Corrections (17 words)
-- ORIGINAL STEM: Which of the following correctly distinguishes a change in accounting principle from a change in accounting estimate?
UPDATE questions SET
  stem = $EXPL$Belmont Corp.''s new CFO notices the company both switched its depreciation method and revised the useful life of equipment during 2025. She asks the accounting team to classify each change under ASC 250. Which of the following correctly distinguishes a change in accounting principle from a change in accounting estimate?$EXPL$
WHERE id = 4764;

-- ============================================================
-- CASH AND CASH EQUIVALENTS (1 questions)
-- ============================================================

-- ID 11984: Cash and Cash Equivalents (15 words)
-- ORIGINAL STEM: What is the proper balance sheet classification of cash held in a bond sinking fund?
UPDATE questions SET
  stem = $EXPL$Crestview Manufacturing has $2.4 million in a trustee-managed account designated to retire its outstanding bonds in 2029. The controller is preparing the year-end balance sheet. What is the proper classification of cash held in this bond sinking fund?$EXPL$
WHERE id = 11984;

-- ============================================================
-- CONSOLIDATIONS (1 questions)
-- ============================================================

-- ID 485: Consolidations (15 words)
-- ORIGINAL STEM: Under the equity method, an investor recognizes its share of the investee's net income by:
UPDATE questions SET
  stem = $EXPL$Pinnacle Corp. owns 35% of Lakewood Inc. and applies the equity method. Lakewood reports net income of $800,000 for the year ended December 31, 2025. How should Pinnacle recognize its share of Lakewood''s net income?$EXPL$
WHERE id = 485;

-- ============================================================
-- CONTINGENCIES (2 questions)
-- ============================================================

-- ID 1137: Contingencies (16 words)
-- ORIGINAL STEM: Under ASC 450, how is a loss accrued when the probable amount falls within a range?
UPDATE questions SET
  stem = $EXPL$Redstone Inc. is defending a product liability lawsuit. Legal counsel concludes the loss is probable and estimates it will fall between $500,000 and $1,200,000, with no amount in the range more likely than another. Under ASC 450, how should Redstone accrue this loss?$EXPL$
WHERE id = 1137;

-- ID 2148: Contingencies (16 words)
-- ORIGINAL STEM: Under ASC 450, which of the following best describes a 'commitment' as distinguished from a 'contingency'?
UPDATE questions SET
  stem = $EXPL$Oakdale Corp. has signed a noncancelable five-year supply agreement and is also defending a pending environmental lawsuit. The controller is determining which item qualifies as a commitment versus a contingency. Under ASC 450, which best describes how a commitment differs from a contingency?$EXPL$
WHERE id = 2148;

-- ============================================================
-- DEBT (1 questions)
-- ============================================================

-- ID 11962: Debt (11 words)
-- ORIGINAL STEM: What does the stated rate (coupon rate) on a bond represent?
UPDATE questions SET
  stem = $EXPL$On January 1, 2025, Meridian Corp. issues $5 million in 10-year bonds with a 6% stated rate, payable semiannually. A new staff accountant asks how the coupon rate is applied. What does the stated rate on the bond represent?$EXPL$
WHERE id = 11962;

-- ============================================================
-- EQUITY (1 questions)
-- ============================================================

-- ID 437: Equity (11 words)
-- ORIGINAL STEM: Under ASC 718, at what value are employee stock options measured?
UPDATE questions SET
  stem = $EXPL$Tremont Technologies grants 10,000 stock options to its executives on March 1, 2025. The options vest over three years. The compensation committee asks the controller to determine the measurement basis. Under ASC 718, at what value are these stock options measured?$EXPL$
WHERE id = 437;

-- ============================================================
-- FAIR VALUE (2 questions)
-- ============================================================

-- ID 11741: Fair Value (13 words)
-- ORIGINAL STEM: Under ASC 820, fair value is measured as of what point in time?
UPDATE questions SET
  stem = $EXPL$Hargrove Inc. is preparing its December 31, 2025 financial statements and must remeasure certain assets at fair value. The auditor questions which date to use for the measurement. Under ASC 820, fair value is determined as of what point in time?$EXPL$
WHERE id = 11741;

-- ID 1152: Fair Value (14 words)
-- ORIGINAL STEM: Under ASC 820, what does the cost approach measure in a fair value assessment?
UPDATE questions SET
  stem = $EXPL$Westbrook Manufacturing owns a specialized production facility with no comparable market transactions. The appraiser recommends using the cost approach under ASC 820 to determine fair value. What does this approach measure?$EXPL$
WHERE id = 1152;

-- ============================================================
-- FINANCIAL REPORTING: FOR-PROFIT (9 questions)
-- ============================================================

-- ID 1866: Financial Reporting: For-Profit (15 words)
-- ORIGINAL STEM: Under U.S. GAAP, which of the following subsequent events requires adjustment to the financial statements?
UPDATE questions SET
  stem = $EXPL$Ashford Corp. closed its books on December 31, 2025, and is finalizing financial statements for issuance on March 10, 2026. Several events occurred in January and February. Under U.S. GAAP, which of the following subsequent events requires adjustment to the financial statements?$EXPL$
WHERE id = 1866;

-- ID 4706: Financial Reporting: For-Profit (15 words)
-- ORIGINAL STEM: According to the FASB Conceptual Framework, what is the primary objective of general-purpose financial reporting?
UPDATE questions SET
  stem = $EXPL$A newly formed public company is drafting its first annual report and the board asks the controller to explain why financial statements are prepared. According to the FASB Conceptual Framework, what is the primary objective of general-purpose financial reporting?$EXPL$
WHERE id = 4706;

-- ID 4711: Financial Reporting: For-Profit (15 words)
-- ORIGINAL STEM: Which of the following best describes the concept of "relevance" in the FASB Conceptual Framework?
UPDATE questions SET
  stem = $EXPL$During an internal training session, the CFO of Langley Corp. explains qualitative characteristics of useful financial information. A staff accountant asks for clarification on one specific attribute. Which best describes the concept of relevance in the FASB Conceptual Framework?$EXPL$
WHERE id = 4711;

-- ID 4712: Financial Reporting: For-Profit (15 words)
-- ORIGINAL STEM: Under the FASB Conceptual Framework, faithful representation requires that financial information possess which three attributes?
UPDATE questions SET
  stem = $EXPL$Norwood Industries'' auditor identifies a disclosure that may not meet the standard for faithful representation. The audit manager asks the team to review the specific attributes required. Under the FASB Conceptual Framework, faithful representation requires financial information to possess which three attributes?$EXPL$
WHERE id = 4712;

-- ID 12223: Financial Reporting: For-Profit (15 words)
-- ORIGINAL STEM: Under the FASB Conceptual Framework, what is the primary purpose of notes to financial statements?
UPDATE questions SET
  stem = $EXPL$Clearwater Logistics is preparing its 2025 annual report, and the controller is compiling extensive note disclosures. A board member questions the need for such detail. Under the FASB Conceptual Framework, what is the primary purpose of notes to financial statements?$EXPL$
WHERE id = 12223;

-- ID 375: Financial Reporting: For-Profit (16 words)
-- ORIGINAL STEM: When a nonauthoritative source of guidance conflicts with the FASB Accounting Standards Codification, which takes precedence?
UPDATE questions SET
  stem = $EXPL$While researching the accounting for an unusual transaction, a senior accountant at Fulton Corp. finds conflicting guidance between an AICPA practice aid and the FASB Accounting Standards Codification. Which source takes precedence?$EXPL$
WHERE id = 375;

-- ID 12289: Financial Reporting: For-Profit (16 words)
-- ORIGINAL STEM: Which of the following is NOT one of the basic financial statements required under U.S. GAAP?
UPDATE questions SET
  stem = $EXPL$Denning Corp.''s new controller is reviewing the annual filing package to ensure all required financial statements are included. Which of the following is NOT one of the basic financial statements required under U.S. GAAP?$EXPL$
WHERE id = 12289;

-- ID 377: Financial Reporting: For-Profit (17 words)
-- ORIGINAL STEM: Under ASC 220, which of the following is NOT a component of accumulated other comprehensive income (AOCI)?
UPDATE questions SET
  stem = $EXPL$Palmer Industries reports an AOCI balance on its December 31, 2025 balance sheet. The external auditor is verifying which items belong in that section. Under ASC 220, which of the following is NOT a component of accumulated other comprehensive income?$EXPL$
WHERE id = 377;

-- ID 11539: Financial Reporting: For-Profit (17 words)
-- ORIGINAL STEM: Under ASC 105, what is the authoritative status of FASB Concepts Statements within the U.S. GAAP hierarchy?
UPDATE questions SET
  stem = $EXPL$During a technical research project, a staff accountant at Kepler Corp. cites a FASB Concepts Statement to support a proposed accounting treatment. The audit partner challenges this approach. Under ASC 105, what is the authoritative status of FASB Concepts Statements within the U.S. GAAP hierarchy?$EXPL$
WHERE id = 11539;

-- ============================================================
-- FINANCIAL STATEMENT RATIOS (4 questions)
-- ============================================================

-- ID 15112: Financial Statement Ratios (9 words)
-- ORIGINAL STEM: What does the debt-to-assets ratio indicate about a company?
UPDATE questions SET
  stem = $EXPL$Fenwick Corp. reports total assets of $12 million and total liabilities of $7.8 million at year-end. A credit analyst calculates the debt-to-assets ratio as part of the loan review. What does this ratio indicate about a company?$EXPL$
WHERE id = 15112;

-- ID 15216: Financial Statement Ratios (9 words)
-- ORIGINAL STEM: Which components are included in calculating enterprise value (EV)?
UPDATE questions SET
  stem = $EXPL$An investment bank is valuing Bridgeport Corp. for a potential acquisition and uses enterprise value as the primary metric. Which components are included in calculating enterprise value?$EXPL$
WHERE id = 15216;

-- ID 15004: Financial Statement Ratios (10 words)
-- ORIGINAL STEM: How is working capital calculated on a company's balance sheet?
UPDATE questions SET
  stem = $EXPL$Granger Supply Co. reports current assets of $3.2 million and current liabilities of $1.9 million on its December 31, 2025 balance sheet. The bank reviewing Granger''s loan application asks about its liquidity position. How is working capital calculated?$EXPL$
WHERE id = 15004;

-- ID 15108: Financial Statement Ratios (10 words)
-- ORIGINAL STEM: How is tangible net worth calculated for financial ratio analysis?
UPDATE questions SET
  stem = $EXPL$A lender reviewing Pemberton Manufacturing''s financials requires a tangible net worth covenant. The company reports total equity of $8 million, goodwill of $1.5 million, and patents of $600,000. How is tangible net worth calculated for financial ratio analysis?$EXPL$
WHERE id = 15108;

-- ============================================================
-- INCOME TAXES (2 questions)
-- ============================================================

-- ID 176: Income Taxes (15 words)
-- ORIGINAL STEM: A deferred tax asset or liability should be classified as current or noncurrent based on:
UPDATE questions SET
  stem = $EXPL$Aldrich Corp. has deferred tax items arising from warranty reserves, depreciation differences, and pension obligations at December 31, 2025. The controller is preparing the classified balance sheet. A deferred tax asset or liability should be classified as current or noncurrent based on what?$EXPL$
WHERE id = 176;

-- ID 2175: Income Taxes (15 words)
-- ORIGINAL STEM: Which of the following creates a temporary difference that results in a deferred tax asset?
UPDATE questions SET
  stem = $EXPL$Sterling Corp.''s tax manager is reconciling book and tax differences for fiscal year 2025 and identifying which items generate deferred tax assets versus liabilities. Which of the following creates a temporary difference resulting in a deferred tax asset?$EXPL$
WHERE id = 2175;

-- ============================================================
-- INTANGIBLE ASSETS (1 questions)
-- ============================================================

-- ID 2032: Intangible Assets (18 words)
-- ORIGINAL STEM: Under ASC 730, which of the following costs should be capitalized rather than expensed as research and development?
UPDATE questions SET
  stem = $EXPL$Vanguard Biotech spends $14 million on various research and development activities during 2025, including lab supplies, personnel costs, and equipment purchases. Under ASC 730, which of the following R&D-related costs should be capitalized rather than expensed?$EXPL$
WHERE id = 2032;

-- ============================================================
-- INVENTORY (1 questions)
-- ============================================================

-- ID 12097: Inventory (12 words)
-- ORIGINAL STEM: What are the three classifications of inventory reported by a manufacturing company?
UPDATE questions SET
  stem = $EXPL$Cascade Manufacturing produces custom metal components and reports its inventory on the December 31, 2025 balance sheet. The external auditor asks to see a breakdown by classification. What are the three classifications of inventory reported by a manufacturing company?$EXPL$
WHERE id = 12097;

-- ============================================================
-- INVESTMENTS (2 questions)
-- ============================================================

-- ID 15178: Investments (17 words)
-- ORIGINAL STEM: Under ASC 321, what is the measurement alternative for equity securities without a readily determinable fair value?
UPDATE questions SET
  stem = $EXPL$Ridgeline Corp. acquires a 5% equity stake in a privately held startup with no quoted market price. Because fair value is not readily determinable, the controller considers the measurement alternative. Under ASC 321, what does this alternative require?$EXPL$
WHERE id = 15178;

-- ID 15186: Investments (17 words)
-- ORIGINAL STEM: Under ASC 321-10-35-2, what triggers an upward adjustment for an equity security carried under the measurement alternative?
UPDATE questions SET
  stem = $EXPL$Ridgeline Corp. carries a private equity investment under the ASC 321 measurement alternative at cost minus impairment. In March 2026, a similar security in the same investee sells in an orderly transaction at a higher price. Under ASC 321-10-35-2, what triggers an upward adjustment for this investment?$EXPL$
WHERE id = 15186;

-- ============================================================
-- LEASES (1 questions)
-- ============================================================

-- ID 2064: Leases (14 words)
-- ORIGINAL STEM: Under ASC 842, how is a lessee''s right-of-use asset for a finance lease amortized?
UPDATE questions SET
  stem = $EXPL$On January 1, 2025, Nova Logistics signs a five-year finance lease for delivery trucks with a total right-of-use asset of $450,000. The controller is setting up the amortization schedule. Under ASC 842, how is the right-of-use asset for a finance lease amortized?$EXPL$
WHERE id = 2064;

-- ============================================================
-- NOT-FOR-PROFIT ACCOUNTING (1 questions)
-- ============================================================

-- ID 11820: Not-for-Profit Accounting (16 words)
-- ORIGINAL STEM: Under ASC 958, how are board-designated net assets classified on an NFP's statement of financial position?
UPDATE questions SET
  stem = $EXPL$The board of Coastal Community Foundation votes to set aside $2 million of unrestricted funds for a future capital project. No donor restrictions apply. Under ASC 958, how are these board-designated net assets classified on the statement of financial position?$EXPL$
WHERE id = 11820;

-- ============================================================
-- PAYABLES AND ACCRUED LIABILITIES (1 questions)
-- ============================================================

-- ID 12174: Payables and Accrued Liabilities (16 words)
-- ORIGINAL STEM: How should outstanding checks and customer credit balances be treated after the statutory escheat period expires?
UPDATE questions SET
  stem = $EXPL$Harmon Retail identifies $85,000 in outstanding payroll checks and $12,000 in customer credit balances that have exceeded the state''s statutory dormancy period. How should these items be treated after the escheat period expires?$EXPL$
WHERE id = 12174;

-- ============================================================
-- PROPERTY, PLANT AND EQUIPMENT (2 questions)
-- ============================================================

-- ID 2003: Property, Plant and Equipment (15 words)
-- ORIGINAL STEM: In a nonmonetary exchange that lacks commercial substance, how should the acquired asset be recorded?
UPDATE questions SET
  stem = $EXPL$Kirkland Trucking trades a used delivery truck (book value $40,000, fair value $45,000) for a similar truck from another carrier. The exchange lacks commercial substance and no cash is involved. How should the acquired asset be recorded?$EXPL$
WHERE id = 2003;

-- ID 12053: Property, Plant and Equipment (16 words)
-- ORIGINAL STEM: Under ASC 410-20, which condition must exist for an entity to recognize an asset retirement obligation?
UPDATE questions SET
  stem = $EXPL$Pacific Energy operates offshore drilling platforms and expects significant decommissioning costs when the platforms are retired. The controller is evaluating whether to record an obligation at inception. Under ASC 410-20, which condition must exist for an entity to recognize an asset retirement obligation?$EXPL$
WHERE id = 12053;

-- ============================================================
-- PUBLIC COMPANY REPORTING (1 questions)
-- ============================================================

-- ID 7653: Public Company Reporting (14 words)
-- ORIGINAL STEM: What is the purpose of using weighted-average common shares outstanding in the EPS calculation?
UPDATE questions SET
  stem = $EXPL$Dalton Corp., a public company, issued 200,000 additional common shares on July 1, 2025. The controller is computing basic earnings per share for the annual report. What is the purpose of using weighted-average common shares outstanding in the EPS calculation?$EXPL$
WHERE id = 7653;

-- ============================================================
-- REVENUE RECOGNITION (1 questions)
-- ============================================================

-- ID 1945: Revenue Recognition (17 words)
-- ORIGINAL STEM: Under ASC 606, a contract between an entity and a customer contains a significant financing component when:
UPDATE questions SET
  stem = $EXPL$Atlas Equipment sells industrial machinery to a customer for $1.2 million, with payment due in three years and no interim installments. The controller evaluates whether the arrangement contains a financing element. Under ASC 606, a significant financing component exists when what condition is met?$EXPL$
WHERE id = 1945;

-- ============================================================
-- SPECIAL PURPOSE FRAMEWORKS (3 questions)
-- ============================================================

-- ID 11497: Special Purpose Frameworks (15 words)
-- ORIGINAL STEM: What does "substantial support" mean in the context of the modified cash basis of accounting?
UPDATE questions SET
  stem = $EXPL$A small professional services firm prepares its financial statements on the modified cash basis and records depreciation and accrued payroll taxes. The auditor is evaluating whether these modifications have substantial support. What does this term mean in the context of the modified cash basis?$EXPL$
WHERE id = 11497;

-- ID 2372: Special Purpose Frameworks (16 words)
-- ORIGINAL STEM: Which of the following notes is required in financial statements prepared under a special purpose framework?
UPDATE questions SET
  stem = $EXPL$Thornton & Associates, a regional accounting firm, prepares its financial statements using the income tax basis. The engagement partner is reviewing the note disclosures for completeness. Which note is required in financial statements prepared under a special purpose framework?$EXPL$
WHERE id = 2372;

-- ID 11513: Special Purpose Frameworks (16 words)
-- ORIGINAL STEM: What is the primary reason small and mid-sized entities use special purpose frameworks instead of GAAP?
UPDATE questions SET
  stem = $EXPL$A family-owned distribution company with $8 million in revenue is deciding whether to prepare GAAP or income tax basis financial statements. The owners ask their CPA for guidance. What is the primary reason small and mid-sized entities use special purpose frameworks instead of GAAP?$EXPL$
WHERE id = 11513;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT (6 questions)
-- ============================================================

-- ID 5352: State and Local Government (14 words)
-- ORIGINAL STEM: Under GASB 54, what are the five categories of fund balance in governmental funds?
UPDATE questions SET
  stem = $EXPL$The finance director of Cedar County is preparing the governmental funds balance sheet and needs to present fund balance under the current classification framework. Under GASB 54, what are the five categories of fund balance in governmental funds?$EXPL$
WHERE id = 5352;

-- ID 5402: State and Local Government (14 words)
-- ORIGINAL STEM: Under GASB Statement No. 34, which fund is always reported as a major fund?
UPDATE questions SET
  stem = $EXPL$The City of Brookhaven is determining which funds to present as major funds in its comprehensive annual financial report. Under GASB Statement No. 34, which fund is always reported as a major fund regardless of size criteria?$EXPL$
WHERE id = 5402;

-- ID 4768: State and Local Government (15 words)
-- ORIGINAL STEM: Which of the following is a proprietary fund type used by state and local governments?
UPDATE questions SET
  stem = $EXPL$Elm County operates a water and sewer utility that charges user fees to cover operating costs. The auditor is verifying the correct fund classification. Which of the following is a proprietary fund type used by state and local governments?$EXPL$
WHERE id = 4768;

-- ID 5399: State and Local Government (15 words)
-- ORIGINAL STEM: Under GASB Statement No. 54, which of the following describes the nonspendable fund balance classification?
UPDATE questions SET
  stem = $EXPL$Lakewood County reports a $1.3 million prepaid insurance balance and a $500,000 permanent fund corpus in its general fund. The finance director classifies both as nonspendable. Under GASB 54, which best describes this fund balance classification?$EXPL$
WHERE id = 5399;

-- ID 5419: State and Local Government (15 words)
-- ORIGINAL STEM: Under GASB Statement No. 34, which net position category includes resources constrained by external parties?
UPDATE questions SET
  stem = $EXPL$The City of Maplewood receives a $3 million state grant restricted to road improvements. The finance director is classifying this amount on the government-wide statement of net position. Under GASB 34, which net position category includes resources constrained by external parties?$EXPL$
WHERE id = 5419;

-- ID 5440: State and Local Government (15 words)
-- ORIGINAL STEM: Under GASB 34, where is management's discussion and analysis presented in a government's financial report?
UPDATE questions SET
  stem = $EXPL$The external auditor reviewing Carlton County''s CAFR notes that management''s discussion and analysis is included but questions its placement. Under GASB 34, where is management''s discussion and analysis presented in a government''s financial report?$EXPL$
WHERE id = 5440;

-- ============================================================
-- STATEMENT OF CASH FLOWS (3 questions)
-- ============================================================

-- ID 12308: Statement of Cash Flows (16 words)
-- ORIGINAL STEM: Under the indirect method, how is amortization of a patent treated in the operating activities section?
UPDATE questions SET
  stem = $EXPL$Vertex Pharmaceuticals reports net income of $4.6 million for 2025 and recorded $320,000 in patent amortization expense during the year. The controller is preparing the statement of cash flows using the indirect method. How is patent amortization treated in the operating activities section?$EXPL$
WHERE id = 12308;

-- ID 1882: Statement of Cash Flows (17 words)
-- ORIGINAL STEM: How does a nonfinancial company classify interest paid on the statement of cash flows under U.S. GAAP?
UPDATE questions SET
  stem = $EXPL$Sable Industries, a manufacturing company, paid $1.8 million in interest on its long-term debt during 2025. The controller is classifying this payment on the statement of cash flows. Under U.S. GAAP, how does a nonfinancial company classify interest paid?$EXPL$
WHERE id = 1882;

-- ID 1894: Statement of Cash Flows (17 words)
-- ORIGINAL STEM: Under the indirect method, an increase in deferred revenue from $30,000 to $45,000 during the year is:
UPDATE questions SET
  stem = $EXPL$Beacon Software reports net income of $920,000 for 2025. Its deferred revenue balance increased from $30,000 to $45,000 during the year. The controller is preparing the operating activities section using the indirect method. How is this increase in deferred revenue treated?$EXPL$
WHERE id = 1894;

-- ============================================================
-- SUBSEQUENT EVENTS (1 questions)
-- ============================================================

-- ID 15152: Subsequent Events (10 words)
-- ORIGINAL STEM: What action does a Type I (recognized) subsequent event require?
UPDATE questions SET
  stem = $EXPL$Ashford Corp. closes its books on December 31, 2025. On February 8, 2026, before the financial statements are issued, the company settles a lawsuit that was pending at year-end. This settlement is classified as a Type I subsequent event. What action does this type of event require?$EXPL$
WHERE id = 15152;

-- ============================================================
-- TRADE RECEIVABLES (1 questions)
-- ============================================================

-- ID 2248: Trade Receivables (14 words)
-- ORIGINAL STEM: Under CECL, on the date a trade receivable is first recognized, the entity must:
UPDATE questions SET
  stem = $EXPL$Whitfield Distributors ships $250,000 of product to a new customer on December 15, 2025, creating a trade receivable. The controller is implementing the CECL model under ASC 326. On the date this receivable is first recognized, what must Whitfield do?$EXPL$
WHERE id = 2248;


