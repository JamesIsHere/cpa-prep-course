-- Migration: Upgrade 7 moderate-scoring Cash and Receivables questions
-- Fixes: short-stem, short-expl, length-cuing, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- Q1097 [score:6] short-stem(9w) → expand with scenario
UPDATE questions SET
  stem = 'The accounting staff at Thornfield Manufacturing is preparing the December 31, 2025 bank reconciliation. The bank statement shows a balance of $84,500. The staff identifies three checks totaling $12,300 that were issued and recorded in the company''s books in late December but have not yet cleared the bank. In a bank reconciliation, an outstanding check should be:',
  explanation = 'Outstanding checks have been recorded by the company (reducing the book balance) but have not yet been processed by the bank, so the bank balance remains overstated by those amounts. To reconcile, outstanding checks are subtracted from the bank balance to arrive at the true cash balance. Choice A is incorrect because adding outstanding checks to the bank balance would double-count them. Choice C is incorrect because outstanding checks have already been recorded in the books — no further book adjustment is needed.'
WHERE id = 1097;

-- Q1099 [score:6] short-expl(16w) → expand explanation with wrong-answer analysis
UPDATE questions SET
  explanation = 'The adjusted bank balance is calculated by starting with the bank statement balance and adjusting for timing differences: $56,000 + $4,200 (deposits in transit, recorded by the company but not yet credited by the bank) − $7,800 (outstanding checks, recorded by the company but not yet cleared by the bank) = $52,400. Choice B ($56,000) is incorrect because it ignores both timing adjustments. Choice C ($60,200) incorrectly adds both the deposits in transit and outstanding checks to the bank balance, rather than subtracting the outstanding checks.'
WHERE id = 1099;

-- Q1100 [score:6] short-expl(26w) → expand explanation with citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under ASC 326 (CECL), the credit loss expense equals the amount needed to adjust the allowance to the required ending balance. Beginning allowance of $15,000 minus $10,000 in write-offs plus $2,000 in recoveries yields a pre-provision balance of $7,000. Since the required ending allowance is $18,000, the credit loss expense is $18,000 − $7,000 = $11,000. Choice B ($18,000) incorrectly treats the entire ending allowance as current-period expense without considering the existing balance. Choice D ($3,000) appears to calculate only the net write-offs ($10,000 − $2,000 = $8,000) minus something, which has no basis in the CECL methodology.'
WHERE id = 1100;

-- Q1102 [score:5] short-expl(25w) → expand explanation with citation + wrong-answer analysis
UPDATE questions SET
  stem = 'Ashford Industries maintains a $500,000 compensating balance at its bank as required under a 5-year term loan agreement. The balance is legally restricted and cannot be withdrawn during the loan term. The controller must determine the proper balance sheet classification. A compensating balance that is legally restricted and relates to a long-term borrowing arrangement should be classified on the balance sheet as:',
  explanation = 'Under SEC Staff Accounting Bulletin guidance and ASC 210-10-45, a legally restricted compensating balance related to a long-term borrowing is classified as a noncurrent asset because the restriction matches the term of the underlying debt. The restricted cash is not available for current operations and will remain restricted until the loan matures. Choice A is incorrect because legally restricted cash does not meet the definition of cash and cash equivalents, which must be readily available for use. Choice D is incorrect because compensating balances are assets of the depositor, not reductions of the related liability.'
WHERE id = 1102;

-- Q1104 [score:6] short-expl(27w) → expand explanation with citation + wrong-answer analysis
UPDATE questions SET
  explanation = 'Under ASC 860-20, when a transfer of receivables with recourse qualifies as a sale, the loss equals the factoring fee plus the fair value of the recourse obligation. Factoring fee: $250,000 × 3% = $7,500. Recourse obligation fair value: $6,000. Total loss: $7,500 + $6,000 = $13,500. The holdback of $25,000 ($250,000 × 10%) is recorded as a receivable from the factor and is not a loss — it will be returned after the receivables are collected. Choice A ($7,500) ignores the recourse obligation. Choice C ($32,500) incorrectly includes the holdback as part of the loss rather than treating it as a receivable.'
WHERE id = 1104;

-- Q1105 [score:5] short-expl(28w) + length-cuing(2/10) → expand explanation, balance choices
UPDATE questions SET
  choices = '["$1,000,000 — the full amortized cost of the portfolio before any credit adjustments","$940,000 — the present value of expected cash flows discounted at the effective interest rate","$60,000 — the difference between amortized cost and the present value of expected cash flows","$0 — no allowance is needed because the portfolio has a positive present value of expected cash flows"]',
  explanation = 'Under ASC 326-20-30-4, when using the discounted cash flow method under CECL, the allowance for credit losses equals the difference between the amortized cost basis and the present value of expected cash flows discounted at the financial asset''s effective interest rate: $1,000,000 − $940,000 = $60,000. This difference represents the expected credit losses over the remaining life of the portfolio. Choice A incorrectly treats the full amortized cost as the allowance. Choice B incorrectly uses the present value amount as the allowance rather than the difference.'
WHERE id = 1105;

-- Q2253 [score:6] short-stem(11w) → expand with scenario + cite ASC 860
UPDATE questions SET
  stem = 'Kensington Retail pledges $3.2 million of its accounts receivable as collateral for a $2.5 million revolving line of credit with First National Bank. The receivables continue to be collected by Kensington in the ordinary course of business, and title to the receivables does not transfer to the bank. Under ASC 860, when receivables are pledged as collateral for a loan, the receivables:',
  explanation = 'Under ASC 860-30, pledging receivables as collateral does not constitute a transfer of ownership or control. The receivables remain on the borrower''s balance sheet, and the loan proceeds are recorded as a liability. Disclosure of the pledge is required in the notes so that financial statement users understand that these receivables are encumbered. Choice A is incorrect because derecognition requires a transfer of control, not merely a pledge of collateral. Choice C is incorrect because the lender does not gain ownership of the receivables — it holds a security interest.'
WHERE id = 2253;
