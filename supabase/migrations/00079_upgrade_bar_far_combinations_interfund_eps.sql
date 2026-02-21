-- Migration: Upgrade 2 Business Combinations + 3 Interfund Transactions + 1 Earnings Per Share
-- Fixes: short-stem, length-cuing, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- === Business Combinations (2 questions) ===

-- Q5345 [score:6] short-stem(9w) + length-cuing(46/162) → expand stem, balance choices
UPDATE questions SET
  stem = 'After Cascade Holdings acquires 100% of Summit Corp. for $45 million, Summit''s controller asks whether Summit should restate its standalone financial statements to reflect the acquirer''s purchase price allocation. The controller learns that ASC 805-50 permits an election to reflect the acquirer''s basis in the acquiree''s separate books. Under ASC 805-50, push-down accounting, when elected by the acquiree, results in:',
  choices = '["The acquiree restating its assets and liabilities to fair value, with any goodwill recorded on the acquiree''s separate statements","The acquiree continuing to use its historical cost basis in its separate financial statements with no adjustment","The acquirer recording the acquiree''s assets at historical cost on the consolidated statements, ignoring the purchase price","Eliminating the need for consolidation entries because the acquiree''s books already reflect the acquisition basis"]',
  explanation = 'Under ASC 805-50, push-down accounting allows the acquiree to adjust its standalone financial statements to reflect the acquirer''s basis — assets and liabilities are restated to fair value, and any goodwill or bargain purchase gain is recorded in the acquiree''s separate books. This is an election, not a requirement. Choice B is incorrect because the purpose of push-down accounting is specifically to replace historical cost with the acquirer''s fair value basis. Choice D is incorrect because consolidation entries may still be needed for intercompany eliminations and other adjustments.'
WHERE id = 5345;

-- Q5348 [score:6] short-stem(9w) → expand with scenario + cite ASC 805
UPDATE questions SET
  stem = 'On March 15, 2026, Thornfield Industries and Lakeside Manufacturing sign a merger agreement. Regulatory approval is obtained on April 30. Due diligence concludes on May 10. On June 1, Thornfield transfers the agreed consideration and assumes control of Lakeside''s operations. Under ASC 805, the acquisition date is defined as:',
  explanation = 'Under ASC 805-10-25-6, the acquisition date is the date on which the acquirer obtains control of the acquiree — generally the closing date when the acquirer legally transfers consideration, acquires assets, and assumes liabilities. All recognition and measurement (including fair values of identifiable assets and liabilities) is determined as of this date. Choice A is incorrect because the agreement signing date may precede the transfer of control by weeks or months. Choice B is incorrect because regulatory approval is a necessary condition but does not itself establish control.'
WHERE id = 5348;

-- === Interfund Transactions (3 questions) ===

-- Q3327 [score:6] short-stem(6w) → expand with scenario + cite GASB 34
UPDATE questions SET
  stem = 'Lakewood County''s general fund transfers $2.5 million to the capital projects fund to help finance construction of a new fire station. The capital projects fund receives the money with no expectation of repayment, and the general fund receives no goods or services in return. Under GASB 34, an interfund transfer is characterized as:',
  explanation = 'Under GASB 34, an interfund transfer is a one-way movement of resources between funds without a corresponding return flow of assets, services, or repayment. Transfers are reported as other financing sources (in the receiving fund) and other financing uses (in the providing fund) — they are not revenues or expenditures. Choice A is incorrect because a reciprocal exchange describes an interfund service transaction, not a transfer. Choice C is incorrect because a temporary loan between funds is an interfund advance or borrowing, not a transfer.'
WHERE id = 3327;

-- Q3330 [score:6] short-stem(5w) → expand with scenario + cite GASB 34
UPDATE questions SET
  stem = 'Pinecrest County''s parks department (special revenue fund) accidentally charges $35,000 in office supply costs to the general fund. When the error is discovered, the general fund requests reimbursement from the special revenue fund. Under GASB 34, interfund reimbursements are reported as:',
  explanation = 'Under GASB 34, an interfund reimbursement occurs when one fund pays for a cost that properly belongs to another fund. The reimbursement is recorded as a reduction of expenditures/expenses in the fund initially charged (general fund) and an expenditure/expense in the fund that should properly bear the cost (special revenue fund). This corrects the original misclassification. Choice A is incorrect because reimbursements are not revenue — they are cost corrections. Choice B is incorrect because "other financing sources" applies to transfers, not reimbursements.'
WHERE id = 3330;

-- Q3415 [score:6] length-cuing(18/56) → balance choices, add scenario
UPDATE questions SET
  stem = 'Cascade County''s general fund lends $500,000 to its enterprise fund (water utility) to cover a temporary cash shortfall. The enterprise fund expects to repay the loan within 90 days using customer payments already billed. The county''s finance director must determine the proper balance sheet classification for this short-term interfund loan. Under GASB standards, interfund balances expected to be liquidated with expendable available financial resources be reported as:',
  choices = '["Due to/due from other funds — the standard classification for current interfund receivables and payables","Long-term advances to/from other funds — the classification for all interfund lending regardless of term","Notes receivable/payable — following the same presentation as third-party borrowing arrangements","Deferred inflows/outflows of resources — because the cash flow occurs in a future period"]',
  explanation = 'Under GASB standards, short-term interfund balances expected to be repaid from currently available resources are reported as "due to other funds" and "due from other funds" on the fund balance sheet. Choice B is incorrect because long-term advances are used only when repayment is not expected from current available resources — this loan will be repaid within 90 days. Choice C is incorrect because interfund balances use specialized governmental terminology (due to/from), not the notes receivable/payable format used for third-party transactions.'
WHERE id = 3415;

-- === Earnings Per Share (1 question) ===

-- Q1909 [score:6] short-stem(10w) → expand with scenario + cite ASC 260
UPDATE questions SET
  stem = 'Ashford Corp. has 100,000 stock options outstanding with an exercise price of $25 per share. The average market price of Ashford''s common stock during 2025 was $40 per share. The controller is calculating diluted EPS and must determine whether these options are dilutive. Under ASC 260, using the treasury stock method, stock options are dilutive when:',
  explanation = 'Under ASC 260-10-45-22, stock options are dilutive when the average market price exceeds the exercise price (the options are "in the money"). Under the treasury stock method, proceeds from assumed exercise ($25 × 100,000 = $2,500,000) are used to buy back shares at the average market price ($40), resulting in 62,500 repurchased shares. The net increase of 37,500 shares (100,000 − 62,500) dilutes EPS. Choice A is incorrect because when the exercise price exceeds the market price, the options are "out of the money" and are antidilutive — they would increase EPS rather than decrease it.'
WHERE id = 1909;
