-- Migration: Stem expansion — FAR batch 4 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for FAR section
-- Affected topics: Accounting Changes and Error Corrections, Consolidations, Contingencies, Debt, Fair Value, Financial Reporting: For-Profit, Financial Statement Ratios, Income Taxes, Intangible Assets, Inventory, Investments, Leases, Not-for-Profit Accounting, Payables and Accrued Liabilities, Property, Plant and Equipment, Revenue Recognition, Special Purpose Frameworks, State and Local Government, Statement of Cash Flows, Subsequent Events

BEGIN;

-- ============================================================
-- ACCOUNTING CHANGES AND ERROR CORRECTIONS (2 questions)
-- ============================================================

-- ID 11666: Accounting Changes and Error Corrections (15 words)
-- ORIGINAL STEM: Under ASC 250, the term "restatement" is specifically reserved for which type of accounting event?
UPDATE questions SET
  stem = $EXPL$During its 2025 annual review, Whitfield Industries discovered that a prior-year journal entry had been recorded incorrectly. The controller is researching the proper terminology under ASC 250. The term ''restatement'' is specifically reserved for which type of accounting event?$EXPL$
WHERE id = 11666;

-- ID 11646: Accounting Changes and Error Corrections (16 words)
-- ORIGINAL STEM: Under ASC 250, the term "prior period adjustment" refers exclusively to which type of accounting event?
UPDATE questions SET
  stem = $EXPL$Redstone Manufacturing''s audit committee identified a misstatement in the 2024 financial statements that required correction of previously issued reports. Under ASC 250, the term ''prior period adjustment'' refers exclusively to which type of accounting event?$EXPL$
WHERE id = 11646;

-- ============================================================
-- CONSOLIDATIONS (2 questions)
-- ============================================================

-- ID 2202: Consolidations (13 words)
-- ORIGINAL STEM: When preparing consolidated financial statements, the subsidiary's stockholders' equity accounts are eliminated because:
UPDATE questions SET
  stem = $EXPL$Atlas Corp. acquired 100% of Beacon Inc. for $4.2 million in January 2025. During the consolidation process, Atlas eliminates Beacon''s stockholders'' equity accounts. These accounts are eliminated because:$EXPL$
WHERE id = 2202;

-- ID 11682: Consolidations (14 words)
-- ORIGINAL STEM: In consolidated financial statements, dividends paid by a subsidiary to its parent company are:
UPDATE questions SET
  stem = $EXPL$Pinnacle Holdings owns 80% of Crescent LLC. During 2025, Crescent declared and paid $300,000 in dividends, of which $240,000 went to Pinnacle. In the consolidated financial statements, these dividends paid by Crescent to Pinnacle are:$EXPL$
WHERE id = 11682;

-- ============================================================
-- CONTINGENCIES (2 questions)
-- ============================================================

-- ID 2151: Contingencies (14 words)
-- ORIGINAL STEM: Which of the following loss contingencies would most likely require accrual under ASC 450?
UPDATE questions SET
  stem = $EXPL$Larkin Manufacturing is reviewing pending legal and operational matters at December 31, 2025, to determine which items require accrual in the financial statements. Under ASC 450, which of the following loss contingencies would most likely require accrual?$EXPL$
WHERE id = 2151;

-- ID 11706: Contingencies (15 words)
-- ORIGINAL STEM: Under ASC 450, what does 'reasonably possible' mean regarding the likelihood of a loss contingency?
UPDATE questions SET
  stem = $EXPL$Harper Corp.''s legal counsel has assessed a pending product liability claim and classified the likelihood of loss as ''reasonably possible'' rather than ''probable'' or ''remote.'' Under ASC 450, what does this classification mean?$EXPL$
WHERE id = 11706;

-- ============================================================
-- DEBT (1 questions)
-- ============================================================

-- ID 11954: Debt (9 words)
-- ORIGINAL STEM: What feature distinguishes a callable bond from other bonds?
UPDATE questions SET
  stem = $EXPL$Grayson Electronics issued $5 million in 10-year callable bonds at par on March 1, 2025. The CFO chose callable bonds specifically for a feature that other bond types lack. What feature distinguishes a callable bond from other bonds?$EXPL$
WHERE id = 11954;

-- ============================================================
-- FAIR VALUE (2 questions)
-- ============================================================

-- ID 1149: Fair Value (13 words)
-- ORIGINAL STEM: Which valuation approach converts expected future cash flows into a single present value?
UPDATE questions SET
  stem = $EXPL$Trident Pharmaceuticals is measuring the fair value of a patent acquired in a business combination. The valuation team projects the patent''s expected royalty cash flows over its remaining life. Which valuation approach converts these expected future cash flows into a single present value?$EXPL$
WHERE id = 1149;

-- ID 2237: Fair Value (13 words)
-- ORIGINAL STEM: Under ASC 820, what characterizes an orderly transaction for fair value measurement purposes?
UPDATE questions SET
  stem = $EXPL$Meridian Capital is determining the fair value of a commercial property under ASC 820 and must assess whether recent comparable sales qualify as orderly transactions. What characterizes an orderly transaction for fair value measurement purposes?$EXPL$
WHERE id = 2237;

-- ============================================================
-- FINANCIAL REPORTING: FOR-PROFIT (8 questions)
-- ============================================================

-- ID 370: Financial Reporting: For-Profit (14 words)
-- ORIGINAL STEM: Under ASC 105, what is the highest level of authority in the GAAP hierarchy?
UPDATE questions SET
  stem = $EXPL$A new staff accountant at Piedmont Industries is researching the proper accounting treatment for an unusual transaction. The senior manager advises starting with the most authoritative source. Under ASC 105, what is the highest level of authority in the GAAP hierarchy?$EXPL$
WHERE id = 370;

-- ID 1876: Financial Reporting: For-Profit (14 words)
-- ORIGINAL STEM: Which of the following is a retrospective change in accounting principle under ASC 250?
UPDATE questions SET
  stem = $EXPL$Oakridge Corp.''s board of directors approved a change in inventory cost flow method beginning January 1, 2025. The controller must determine the proper transition approach under ASC 250. Which of the following is a retrospective change in accounting principle?$EXPL$
WHERE id = 1876;

-- ID 4719: Financial Reporting: For-Profit (14 words)
-- ORIGINAL STEM: In the context of financial reporting, the concept of "substance over form" means that:
UPDATE questions SET
  stem = $EXPL$Sterling Corp. structured a transaction as an operating lease, but the arrangement transfers substantially all risks and rewards of ownership. In financial reporting, the concept of ''substance over form'' means that:$EXPL$
WHERE id = 4719;

-- ID 11547: Financial Reporting: For-Profit (14 words)
-- ORIGINAL STEM: What is the purpose of an Accounting Standards Update (ASU) issued by the FASB?
UPDATE questions SET
  stem = $EXPL$The FASB recently released a new pronouncement that amends guidance on lease modifications. The document is titled as an Accounting Standards Update (ASU). What is the purpose of an ASU issued by the FASB?$EXPL$
WHERE id = 11547;

-- ID 11590: Financial Reporting: For-Profit (14 words)
-- ORIGINAL STEM: In which section of the balance sheet is accumulated other comprehensive income (AOCI) reported?
UPDATE questions SET
  stem = $EXPL$Prescott Corp. reported unrealized losses on available-for-sale debt securities totaling $85,000 at December 31, 2025. The controller is preparing the classified balance sheet. In which section is accumulated other comprehensive income (AOCI) reported?$EXPL$
WHERE id = 11590;

-- ID 1849: Financial Reporting: For-Profit (15 words)
-- ORIGINAL STEM: Which of the following items is classified as a current liability on the balance sheet?
UPDATE questions SET
  stem = $EXPL$Caldwell Enterprises is preparing its December 31, 2025, classified balance sheet and needs to properly classify several obligations. Which of the following items is classified as a current liability?$EXPL$
WHERE id = 1849;

-- ID 1854: Financial Reporting: For-Profit (15 words)
-- ORIGINAL STEM: Net income is $250,000 and total other comprehensive income is ($15,000). What is comprehensive income?
UPDATE questions SET
  stem = $EXPL$Fieldstone Corp. reported net income of $250,000 for the year ended December 31, 2025. The company also recorded unrealized losses on AFS debt securities and foreign currency translation adjustments totaling ($15,000) in other comprehensive income. What is Fieldstone''s comprehensive income?$EXPL$
WHERE id = 1854;

-- ID 1864: Financial Reporting: For-Profit (15 words)
-- ORIGINAL STEM: Which of the following would be classified as a noncurrent asset on the balance sheet?
UPDATE questions SET
  stem = $EXPL$Brighton Inc. is preparing its December 31, 2025, classified balance sheet and must properly distinguish current assets from noncurrent assets. Which of the following would be classified as a noncurrent asset?$EXPL$
WHERE id = 1864;

-- ============================================================
-- FINANCIAL STATEMENT RATIOS (3 questions)
-- ============================================================

-- ID 14990: Financial Statement Ratios (9 words)
-- ORIGINAL STEM: What does the return on assets (ROA) ratio indicate?
UPDATE questions SET
  stem = $EXPL$Crestview Corp.''s board is evaluating management effectiveness by comparing net income to average total assets for 2025. The metric they are reviewing is return on assets (ROA). What does this ratio indicate?$EXPL$
WHERE id = 14990;

-- ID 15000: Financial Statement Ratios (9 words)
-- ORIGINAL STEM: What is the formula for the inventory turnover ratio?
UPDATE questions SET
  stem = $EXPL$Lakeshore Hardware''s controller is analyzing how efficiently the company moves its merchandise by computing the inventory turnover ratio for 2025. What is the correct formula for this ratio?$EXPL$
WHERE id = 15000;

-- ID 15001: Financial Statement Ratios (9 words)
-- ORIGINAL STEM: What does the equity multiplier measure in financial analysis?
UPDATE questions SET
  stem = $EXPL$An analyst at Rayburn Financial is performing a DuPont decomposition of Weston Corp.''s return on equity for 2025. One component of the analysis is the equity multiplier. What does this metric measure?$EXPL$
WHERE id = 15001;

-- ============================================================
-- INCOME TAXES (2 questions)
-- ============================================================

-- ID 175: Income Taxes (14 words)
-- ORIGINAL STEM: Under ASC 740, an uncertain tax position can be recognized only if it is:
UPDATE questions SET
  stem = $EXPL$Verity Corp. claimed a research and development tax credit on its 2024 return. During the 2025 provision process, the tax department is evaluating whether to recognize this uncertain position under ASC 740. A tax benefit can be recognized only if it is:$EXPL$
WHERE id = 175;

-- ID 2164: Income Taxes (14 words)
-- ORIGINAL STEM: Under ASC 740, a valuation allowance is required for a deferred tax asset when:
UPDATE questions SET
  stem = $EXPL$Nordell Industries reported a $2.1 million deferred tax asset at December 31, 2025, related to net operating loss carryforwards. The auditor is assessing whether a valuation allowance is needed. Under ASC 740, a valuation allowance is required when:$EXPL$
WHERE id = 2164;

-- ============================================================
-- INTANGIBLE ASSETS (2 questions)
-- ============================================================

-- ID 12078: Intangible Assets (14 words)
-- ORIGINAL STEM: Under U.S. GAAP, what is the default amortization method for a finite-life intangible asset?
UPDATE questions SET
  stem = $EXPL$Solaris Technologies acquired a customer list valued at $600,000 with an estimated useful life of eight years. The controller is determining the appropriate amortization method. Under U.S. GAAP, what is the default method for a finite-life intangible asset?$EXPL$
WHERE id = 12078;

-- ID 12082: Intangible Assets (15 words)
-- ORIGINAL STEM: Under U.S. GAAP, how should costs of internally developing a brand name be accounted for?
UPDATE questions SET
  stem = $EXPL$Westbrook Apparel spent $1.4 million in 2025 on advertising, market research, and design to build its new ''Summit'' brand name. Under U.S. GAAP, how should these costs of internally developing a brand name be accounted for?$EXPL$
WHERE id = 12082;

-- ============================================================
-- INVENTORY (1 questions)
-- ============================================================

-- ID 1963: Inventory (12 words)
-- ORIGINAL STEM: Under the periodic inventory system, cost of goods sold is calculated as:
UPDATE questions SET
  stem = $EXPL$Harmon''s Building Supply uses a periodic inventory system and counts its inventory at year-end. The bookkeeper needs to determine cost of goods sold for 2025 using the periodic approach. Under this system, cost of goods sold is calculated as:$EXPL$
WHERE id = 1963;

-- ============================================================
-- INVESTMENTS (3 questions)
-- ============================================================

-- ID 15659: Investments (16 words)
-- ORIGINAL STEM: Under ASC 320, which characteristic is required for a debt security to be classified as held-to-maturity?
UPDATE questions SET
  stem = $EXPL$On July 1, 2025, Bridgeway Financial purchased $2 million in corporate bonds and is considering classifying them as held-to-maturity. Under ASC 320, which characteristic is required for this classification?$EXPL$
WHERE id = 15659;

-- ID 15164: Investments (17 words)
-- ORIGINAL STEM: Under ASC 320, which method must be used to amortize premiums and discounts on held-to-maturity debt securities?
UPDATE questions SET
  stem = $EXPL$Canton Corp. purchased held-to-maturity bonds at a premium of $48,000 above face value. The controller must select the proper method for amortizing this premium over the bond''s remaining life. Under ASC 320, which method is required?$EXPL$
WHERE id = 15164;

-- ID 15167: Investments (17 words)
-- ORIGINAL STEM: Under ASC 323, what ownership percentage generally establishes a presumption of significant influence requiring the equity method?
UPDATE questions SET
  stem = $EXPL$Evergreen Corp. acquired a block of Juniper Inc.''s voting common stock in March 2025. Evergreen''s CFO is determining whether the equity method applies based on the level of ownership. Under ASC 323, what ownership percentage generally establishes a presumption of significant influence?$EXPL$
WHERE id = 15167;

-- ============================================================
-- LEASES (1 questions)
-- ============================================================

-- ID 2059: Leases (14 words)
-- ORIGINAL STEM: Under ASC 842, which of the following is a required disclosure for a lessee?
UPDATE questions SET
  stem = $EXPL$Riverbend Logistics leases equipment, vehicles, and office space under multiple arrangements. During the 2025 audit, the auditor is verifying the completeness of Riverbend''s lease disclosures. Under ASC 842, which of the following is a required disclosure for a lessee?$EXPL$
WHERE id = 2059;

-- ============================================================
-- NOT-FOR-PROFIT ACCOUNTING (2 questions)
-- ============================================================

-- ID 470: Not-for-Profit Accounting (15 words)
-- ORIGINAL STEM: When a not-for-profit satisfies a purpose restriction on a donor-restricted contribution, the accounting entry includes:
UPDATE questions SET
  stem = $EXPL$Valley Arts Foundation received a $200,000 grant restricted to purchasing musical instruments. In November 2025, the foundation used the funds for that purpose. When a not-for-profit satisfies a purpose restriction on a donor-restricted contribution, the accounting entry includes:$EXPL$
WHERE id = 470;

-- ID 11824: Not-for-Profit Accounting (15 words)
-- ORIGINAL STEM: Under ASU 2016-14, how should a not-for-profit present investment return on its statement of activities?
UPDATE questions SET
  stem = $EXPL$Clearwater Community Foundation holds a diversified endowment portfolio. The finance director is preparing the 2025 statement of activities and must determine the proper presentation of investment gains, losses, and income. Under ASU 2016-14, how should a not-for-profit present investment return?$EXPL$
WHERE id = 11824;

-- ============================================================
-- PAYABLES AND ACCRUED LIABILITIES (2 questions)
-- ============================================================

-- ID 12160: Payables and Accrued Liabilities (15 words)
-- ORIGINAL STEM: How should a refundable deposit received from a customer be classified on the balance sheet?
UPDATE questions SET
  stem = $EXPL$Summit Equipment Rentals collects a $5,000 refundable security deposit from each new customer at the start of a rental agreement. At December 31, 2025, the company holds $185,000 in such deposits. How should these refundable deposits be classified on the balance sheet?$EXPL$
WHERE id = 12160;

-- ID 12170: Payables and Accrued Liabilities (15 words)
-- ORIGINAL STEM: How should outstanding manufacturer coupons that have been issued but not yet redeemed be reported?
UPDATE questions SET
  stem = $EXPL$Greenleaf Consumer Products distributed 500,000 promotional coupons during Q4 2025 offering $2.00 off per unit. At year-end, a significant number remain outstanding. How should these issued but unredeemed coupons be reported?$EXPL$
WHERE id = 12170;

-- ============================================================
-- PROPERTY, PLANT AND EQUIPMENT (2 questions)
-- ============================================================

-- ID 1999: Property, Plant and Equipment (13 words)
-- ORIGINAL STEM: Under ASC 410-20, an asset retirement obligation (ARO) should be initially measured at:
UPDATE questions SET
  stem = $EXPL$Cascade Mining Corp. opens a new quarry site in 2025 and has a legal obligation to remediate the land upon closure. The controller must record the asset retirement obligation (ARO). Under ASC 410-20, an ARO should be initially measured at:$EXPL$
WHERE id = 1999;

-- ID 404: Property, Plant and Equipment (15 words)
-- ORIGINAL STEM: Under ASC 360-10-35, how should a long-lived asset classified as held for sale be measured?
UPDATE questions SET
  stem = $EXPL$In October 2025, Keystone Manufacturing''s board authorized the sale of an idle production facility and began actively marketing the property. Under ASC 360-10-35, how should this long-lived asset classified as held for sale be measured?$EXPL$
WHERE id = 404;

-- ============================================================
-- REVENUE RECOGNITION (2 questions)
-- ============================================================

-- ID 1929: Revenue Recognition (17 words)
-- ORIGINAL STEM: Under ASC 606, revenue is recognized over time if one of the following criteria is met EXCEPT:
UPDATE questions SET
  stem = $EXPL$Orion Builders entered into a $3.8 million contract to construct a warehouse for a customer. The controller is assessing whether revenue should be recognized over time. Under ASC 606, revenue is recognized over time if one of the following criteria is met EXCEPT:$EXPL$
WHERE id = 1929;

-- ID 1937: Revenue Recognition (17 words)
-- ORIGINAL STEM: An entity acts as an agent in a transaction. Under ASC 606, the entity should recognize revenue:
UPDATE questions SET
  stem = $EXPL$Trailhead Marketplace facilitates sales between third-party vendors and consumers, collecting a 12% commission on each transaction. Trailhead does not take title to the goods and has no inventory risk. Under ASC 606, how should Trailhead recognize revenue?$EXPL$
WHERE id = 1937;

-- ============================================================
-- SPECIAL PURPOSE FRAMEWORKS (3 questions)
-- ============================================================

-- ID 11919: Special Purpose Frameworks (12 words)
-- ORIGINAL STEM: Under the pure cash basis of accounting, how are inventory purchases treated?
UPDATE questions SET
  stem = $EXPL$Dalton''s Craft Supplies prepares its financial statements using the pure cash basis of accounting. During 2025, the company paid $92,000 for merchandise inventory, some of which remained unsold at year-end. Under this framework, how are inventory purchases treated?$EXPL$
WHERE id = 11919;

-- ID 11931: Special Purpose Frameworks (12 words)
-- ORIGINAL STEM: Under the tax basis of accounting, how are estimated warranty reserves treated?
UPDATE questions SET
  stem = $EXPL$Ridgeline Appliances prepares its financial statements on the tax basis of accounting. The company typically offers two-year warranties on its products and estimates future warranty claims each year. Under this framework, how are estimated warranty reserves treated?$EXPL$
WHERE id = 11931;

-- ID 11493: Special Purpose Frameworks (13 words)
-- ORIGINAL STEM: How many types of special purpose frameworks are recognized under AU-C Section 800?
UPDATE questions SET
  stem = $EXPL$A small CPA firm has been engaged to audit a nonprofit that prepares its financial statements on the cash basis. The engagement partner references AU-C Section 800 for applicable guidance. How many types of special purpose frameworks are recognized under this standard?$EXPL$
WHERE id = 11493;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT (6 questions)
-- ============================================================

-- ID 5353: State and Local Government (13 words)
-- ORIGINAL STEM: Under GASB standards, which two types of funds are classified as proprietary funds?
UPDATE questions SET
  stem = $EXPL$The city of Mapleton operates a public utilities department and also provides fleet maintenance services to other municipal departments. The finance director is classifying these activities by fund type. Under GASB standards, which two types of funds are classified as proprietary funds?$EXPL$
WHERE id = 5353;

-- ID 5381: State and Local Government (13 words)
-- ORIGINAL STEM: Under GASB standards, which of the following is classified as required supplementary information?
UPDATE questions SET
  stem = $EXPL$Ashford County''s external auditor is reviewing the placement of information within the annual comprehensive financial report to verify proper classification. Under GASB standards, which of the following is classified as required supplementary information?$EXPL$
WHERE id = 5381;

-- ID 11431: State and Local Government (13 words)
-- ORIGINAL STEM: Under GASB Statement No. 40, what is custodial credit risk for government deposits?
UPDATE questions SET
  stem = $EXPL$The city of Briarwood maintains $14 million in bank deposits and must disclose risks in its annual report. Under GASB Statement No. 40, what is custodial credit risk for government deposits?$EXPL$
WHERE id = 11431;

-- ID 11776: State and Local Government (13 words)
-- ORIGINAL STEM: What is the primary purpose of a debt service fund in governmental accounting?
UPDATE questions SET
  stem = $EXPL$Thorndale County issued $20 million in general obligation bonds to finance a new courthouse and established a separate fund to handle the scheduled principal and interest payments. What is the primary purpose of a debt service fund in governmental accounting?$EXPL$
WHERE id = 11776;

-- ID 4782: State and Local Government (14 words)
-- ORIGINAL STEM: A permanent fund is a governmental fund type used to report resources that are:
UPDATE questions SET
  stem = $EXPL$The city of Elmhurst received a $1.5 million bequest with the stipulation that only the investment earnings may be spent on park maintenance while the principal must remain intact. A permanent fund is a governmental fund type used to report resources that are:$EXPL$
WHERE id = 4782;

-- ID 5270: State and Local Government (14 words)
-- ORIGINAL STEM: Under GASB Statement No. 84, what is the purpose of an investment trust fund?
UPDATE questions SET
  stem = $EXPL$Lakewood County manages a pooled investment program on behalf of several smaller municipalities. The county''s finance department must select the appropriate fiduciary fund type for this activity. Under GASB Statement No. 84, what is the purpose of an investment trust fund?$EXPL$
WHERE id = 5270;

-- ============================================================
-- STATEMENT OF CASH FLOWS (3 questions)
-- ============================================================

-- ID 12317: Statement of Cash Flows (15 words)
-- ORIGINAL STEM: When preparing the operating activities section using the direct method, how is depreciation expense presented?
UPDATE questions SET
  stem = $EXPL$Hayward Corp. recorded $480,000 in depreciation expense for 2025 and is preparing its statement of cash flows using the direct method. When preparing the operating activities section under this method, how is depreciation expense presented?$EXPL$
WHERE id = 12317;

-- ID 12328: Statement of Cash Flows (15 words)
-- ORIGINAL STEM: Under ASC 230, which of the following is most likely classified as a cash equivalent?
UPDATE questions SET
  stem = $EXPL$Westport Inc.''s treasury department holds several short-term instruments and must determine which qualify as cash equivalents for the 2025 statement of cash flows. Under ASC 230, which of the following is most likely classified as a cash equivalent?$EXPL$
WHERE id = 12328;

-- ID 1880: Statement of Cash Flows (16 words)
-- ORIGINAL STEM: Which of the following is classified as an investing activity on the statement of cash flows?
UPDATE questions SET
  stem = $EXPL$During 2025, Pelham Industries purchased new equipment, issued common stock, and repaid a bank loan. The controller is classifying each transaction for the statement of cash flows. Which of the following is classified as an investing activity?$EXPL$
WHERE id = 1880;

-- ============================================================
-- SUBSEQUENT EVENTS (1 questions)
-- ============================================================

-- ID 15141: Subsequent Events (10 words)
-- ORIGINAL STEM: Through what date must an SEC-filing entity evaluate subsequent events?
UPDATE questions SET
  stem = $EXPL$Belmont Corp., an SEC registrant, has a December 31, 2025, year-end. The financial statements were completed on February 20 and filed with the SEC on February 28. Through what date must an SEC-filing entity evaluate subsequent events?$EXPL$
WHERE id = 15141;

COMMIT;
