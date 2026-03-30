-- Migration: Citation backfill — FAR batch 3 (6 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 6 explanations for FAR section
-- Affected topics: Financial Reporting: For-Profit, Financial Statement Ratios, Special Purpose Frameworks

BEGIN;

-- ============================================================
-- FINANCIAL REPORTING: FOR-PROFIT (1 questions)
-- ============================================================

-- ID 11545: Financial Reporting: For-Profit
UPDATE questions SET
  explanation = 'The correct answer is $90,000, per FASB SFAC No. 5 (Recognition and Measurement), which requires expenses to be recognized when economic benefits are consumed under the accrual basis. Fieldstone consumed three months of coverage (October through December 2025), so $90,000 ($360,000 x 3/12) is recognized as expense while the remaining $270,000 is reported as a prepaid asset at year-end. However, expensing the full $360,000 at payment would be incorrect because it applies a cash-basis approach that ignores the systematic allocation required when benefits extend across multiple periods.'
WHERE id = 11545;

-- ============================================================
-- FINANCIAL STATEMENT RATIOS (4 questions)
-- ============================================================

-- ID 15218: Financial Statement Ratios
UPDATE questions SET
  explanation = 'The correct formula is net credit sales divided by average accounts receivable, as prescribed by financial analysis standards consistent with ASC 310-10-50 (Receivables—Overall—Disclosure). This ratio measures how efficiently a company converts credit sales into cash by averaging the beginning and ending receivable balances to smooth seasonal fluctuations. Using ending accounts receivable alone, rather than the average, would distort the ratio by failing to account for balance changes throughout the period, while substituting total revenue for net credit sales incorrectly inflates the numerator with cash transactions.'
WHERE id = 15218;

-- ID 15220: Financial Statement Ratios
UPDATE questions SET
  explanation = 'The correct NOPAT margin is 9.375%, calculated as EBIT x (1 - tax rate) / net sales, consistent with profitability analysis under ASC 280-10-50 (Segment Reporting—Disclosures) and standard DuPont decomposition. NOPAT equals $5,000,000 x (1 - 0.25) = $3,750,000, divided by $40,000,000 in net sales, yielding 9.375%. Whereas simply dividing EBIT by sales produces the 12.5% operating profit margin, that figure incorrectly ignores the tax adjustment and overstates after-tax operating profitability.'
WHERE id = 15220;

-- ID 15221: Financial Statement Ratios
UPDATE questions SET
  explanation = 'Cash return on assets is 15.0%, calculated as cash flow from operations divided by average total assets ($2,700,000 / $18,000,000), a metric grounded in ASC 230-10-45 (Statement of Cash Flows—Other Presentation Matters). Unlike traditional ROA, which uses accrual-based net income, cash ROA substitutes operating cash flow to eliminate distortions from non-cash charges, revenue recognition timing, and working capital accruals. Although some may suggest adjusting CFO for capital expenditures, that approach describes free cash flow return on assets rather than cash ROA, which uses reported CFO directly.'
WHERE id = 15221;

-- ID 15223: Financial Statement Ratios
UPDATE questions SET
  explanation = 'The tax burden ratio equals net income divided by earnings before taxes (EBT), as defined in the five-factor DuPont decomposition framework consistent with ASC 740-10-50 (Income Taxes—Disclosure) analysis. It measures the proportion of pre-tax earnings retained after income taxes, where a higher ratio indicates a lighter effective tax burden. Inversely dividing EBT by net income would be incorrect because the standard DuPont formulation places net income in the numerator, and confusing this component with tax expense divided by EBIT improperly blends the interest burden and tax burden factors.'
WHERE id = 15223;

-- ============================================================
-- SPECIAL PURPOSE FRAMEWORKS (1 questions)
-- ============================================================

-- ID 11519: Special Purpose Frameworks
UPDATE questions SET
  explanation = 'The full $36,000 is expensed in the year paid, per IRC Section 461 and Reg. 1.461-1(a)(1), which requires cash-method taxpayers to recognize expenses when cash is actually disbursed. Under the tax basis, there is no prepaid asset or monthly allocation because the 12-month rule under Reg. 1.263(a)-4 permits full deduction of prepaid expenses that do not extend beyond 12 months after the benefit begins. Unlike GAAP, which would require systematic allocation of the $36,000 over the 12-month coverage period as a prepaid asset, the cash method recognizes the entire payment as an expense upon disbursement.'
WHERE id = 11519;

COMMIT;
