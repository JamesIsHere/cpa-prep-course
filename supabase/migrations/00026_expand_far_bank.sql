-- =============================================================================
-- Migration: Expand FAR Question Bank
-- Section: FAR — Financial Accounting and Reporting (section_id = 2)
-- New questions: ~527
-- Difficulty: 30% easy, 50% medium, 20% hard
-- =============================================================================
-- FAR Chunk 1: Financial Statements, Cash Flows, EPS, Revenue Recognition, Inventory

-- =============================================================================
-- Financial Statements — 30 questions (9 easy, 15 medium, 6 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company reports total assets of $500,000, total liabilities of $200,000, and retained earnings of $180,000. What is the balance of contributed capital?',
 '["$120,000", "$300,000", "$180,000", "$500,000"]'::jsonb,
 0,
 'The accounting equation states Assets = Liabilities + Equity. Equity = $500,000 - $200,000 = $300,000. Contributed capital = Total equity - Retained earnings = $300,000 - $180,000 = $120,000.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'Which of the following items is classified as a current liability on the balance sheet?',
 '["A 10-year mortgage payable", "Unearned revenue to be earned within 8 months", "A bond payable due in 3 years", "An operating lease liability — noncurrent portion"]'::jsonb,
 1,
 'Unearned revenue expected to be earned within the next 12 months is a current liability because it represents an obligation to deliver goods or services in the near term. The mortgage, bond, and noncurrent lease liability are all long-term obligations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'On a multi-step income statement, gross profit is calculated as:',
 '["Net sales minus cost of goods sold", "Net sales minus operating expenses", "Net income plus income tax expense", "Revenue minus all expenses"]'::jsonb,
 0,
 'Gross profit equals net sales minus cost of goods sold. This is the first profitability subtotal on a multi-step income statement and measures the margin earned on products before operating expenses, interest, and taxes are deducted.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company has net sales of $800,000, cost of goods sold of $480,000, operating expenses of $150,000, and interest expense of $20,000. Using a multi-step format, what is operating income?',
 '["$320,000", "$150,000", "$170,000", "$300,000"]'::jsonb,
 2,
 'Operating income = Net sales - COGS - Operating expenses = $800,000 - $480,000 - $150,000 = $170,000. Interest expense is a non-operating item and is deducted below operating income on the multi-step income statement.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'Which of the following is reported as a component of other comprehensive income (OCI)?',
 '["Depreciation expense on equipment", "Gain on sale of a subsidiary", "Unrealized holding gain on available-for-sale debt securities", "Bad debt expense"]'::jsonb,
 2,
 'Unrealized holding gains and losses on available-for-sale (AFS) debt securities are reported in OCI under ASC 320. Depreciation, gains on sales of subsidiaries, and bad debt expense are all reported in net income, not OCI.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company has the following OCI components: unrealized gain on AFS securities of $12,000, foreign currency translation loss of $8,000, and a pension prior service cost of $5,000. What is total other comprehensive income?',
 '["$12,000", "($1,000)", "$9,000", "$25,000"]'::jsonb,
 1,
 'Total OCI = $12,000 gain - $8,000 loss - $5,000 cost = ($1,000). All three items are legitimate OCI components. They are combined to determine total OCI, which is then added to net income to arrive at comprehensive income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'Net income is $250,000 and total other comprehensive income is ($15,000). What is comprehensive income?',
 '["$250,000", "$265,000", "$235,000", "$15,000"]'::jsonb,
 2,
 'Comprehensive income = Net income + OCI = $250,000 + ($15,000) = $235,000. Comprehensive income captures all changes in equity from non-owner sources, combining net income with other comprehensive income items.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'On a single-step income statement, which of the following is true?',
 '["Gross profit is separately displayed", "Extraordinary items are presented below income from continuing operations", "Operating and non-operating items are presented in separate sections", "All revenues are grouped together and all expenses are grouped together"]'::jsonb,
 3,
 'A single-step income statement groups all revenues together and all expenses together, with one step to arrive at net income. It does not separately display gross profit or distinguish between operating and non-operating items. Extraordinary items are no longer permitted under U.S. GAAP.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company reclassifies a $50,000 note payable from noncurrent to current because it matures in 10 months. How does this reclassification affect the balance sheet?',
 '["Total liabilities increase by $50,000", "Working capital decreases by $50,000", "Total equity decreases by $50,000", "Total assets decrease by $50,000"]'::jsonb,
 1,
 'Reclassifying a liability from noncurrent to current increases current liabilities by $50,000 without changing current assets, so working capital (current assets minus current liabilities) decreases by $50,000. Total liabilities, total equity, and total assets remain unchanged.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'Which of the following pension-related items is reported in other comprehensive income?',
 '["Service cost for the current period", "Interest cost on the projected benefit obligation", "Amortization of prior service cost into net periodic pension cost", "Net actuarial loss arising during the period"]'::jsonb,
 3,
 'Net actuarial gains and losses arising during the period are initially recognized in OCI under ASC 715. Service cost and interest cost are components of net periodic pension cost reported in net income. Amortization of prior service cost is a reclassification from AOCI into net income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company changes its depreciation method from double-declining balance to straight-line. Under U.S. GAAP, this change is treated as:',
 '["A change in accounting principle requiring retrospective application", "A change in accounting estimate effected by a change in principle, applied prospectively", "An error correction requiring restatement", "A change requiring footnote disclosure only"]'::jsonb,
 1,
 'Under ASC 250, a change in depreciation method is treated as a change in accounting estimate effected by a change in accounting principle. It is applied prospectively — the new method is used from the date of change going forward. No retrospective restatement is required.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company discovers that it failed to record $30,000 of depreciation expense in the prior year. The correction of this error requires:',
 '["Prospective adjustment only", "Recording the $30,000 as current year expense", "Disclosure in the footnotes with no adjustment", "Retrospective restatement of prior period financial statements"]'::jsonb,
 3,
 'Under ASC 250, prior period errors are corrected through retrospective restatement. The prior year financial statements are restated to include the omitted $30,000 depreciation, and retained earnings is adjusted. This is not a change in estimate — it is a correction of an error.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company changes from FIFO to LIFO for inventory valuation. Under U.S. GAAP, how is this change in accounting principle applied?',
 '["Retrospectively with restatement of all prior periods", "Only disclosed in the footnotes with no financial statement adjustment", "Retrospectively with a cumulative-effect adjustment to retained earnings", "Prospectively from the beginning of the year of change"]'::jsonb,
 3,
 'A change from FIFO to LIFO is a special exception under ASC 250. Because it is generally impracticable to determine the cumulative effect of the change retrospectively, it is applied prospectively — the LIFO method is applied from the beginning of the year of change, using the opening inventory as the base-year layer.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company changes from the completed-contract method to percentage-of-completion for long-term construction contracts. This is a change in accounting principle that requires:',
 '["Prospective application", "No adjustment, only footnote disclosure", "A cumulative catch-up adjustment in the current period only", "Retrospective application with restatement of prior periods"]'::jsonb,
 3,
 'Under ASC 250, voluntary changes in accounting principle are applied retrospectively unless impracticable. The company must restate prior period financial statements as if the new principle had always been used, and disclose the nature and reason for the change.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company estimates its warranty liability at 3% of sales. In the current year, it revises the estimate to 4% based on recent claims experience. Under ASC 250, this change is:',
 '["A change in accounting principle applied retrospectively", "A change in accounting estimate applied prospectively", "An error correction requiring restatement", "A change requiring cumulative catch-up adjustment"]'::jsonb,
 1,
 'Revising the warranty liability percentage is a change in accounting estimate under ASC 250. Changes in estimates are applied prospectively — the new 4% rate is used for the current and future periods. No retroactive adjustment is made to prior periods.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'Current assets total $320,000 and current liabilities total $200,000. The company pays off a $40,000 current liability with cash. What is the current ratio after payment?',
 '["1.40", "1.60", "1.75", "1.56"]'::jsonb,
 0,
 'After payment: Current assets = $320,000 - $40,000 = $280,000. Current liabilities = $200,000 - $40,000 = $160,000. Current ratio = $280,000 / $160,000 = 1.75. Paying off a current liability with cash reduces both current assets and current liabilities by the same amount.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'Which of the following would be classified as a noncurrent asset on the balance sheet?',
 '["Prepaid insurance for the next 6 months", "Accounts receivable due in 60 days", "A patent with a remaining useful life of 8 years", "Inventory expected to be sold within 3 months"]'::jsonb,
 2,
 'A patent with an 8-year remaining useful life is an intangible noncurrent asset. Prepaid insurance (6 months), accounts receivable (60 days), and inventory (3 months) are all expected to be realized within one year and are classified as current assets.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company reports net income of $400,000, OCI of ($25,000), dividends declared of $60,000, and stock issued for $100,000. What is the change in total stockholders'' equity?',
 '["$415,000", "$375,000", "$340,000", "$475,000"]'::jsonb,
 0,
 'Change in equity = Net income + OCI - Dividends + Stock issued = $400,000 + ($25,000) - $60,000 + $100,000 = $415,000. All four items affect equity: net income and OCI through comprehensive income, dividends as distributions, and stock issuance as contributed capital.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'Under U.S. GAAP, which of the following subsequent events requires adjustment to the financial statements?',
 '["A fire destroys a warehouse two months after the balance sheet date", "Settlement of litigation for an amount that confirms a year-end loss estimate", "A major customer declares bankruptcy one month after year end due to events arising after year end", "Issuance of new debt after the balance sheet date"]'::jsonb,
 1,
 'A settlement that confirms the amount of a loss contingency existing at the balance sheet date is a Type I (recognized) subsequent event requiring adjustment under ASC 855. The conditions leading to the settlement existed at year end. The fire, new bankruptcy, and debt issuance are Type II events requiring disclosure only.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A foreign subsidiary''s functional currency is the euro. When translating its financial statements into the U.S. dollar reporting currency, which exchange rate is used for revenues and expenses?',
 '["Historical rate at the date of each transaction", "Weighted-average rate for the period", "Current rate at the balance sheet date", "A fixed contractual rate"]'::jsonb,
 1,
 'Under ASC 830 (current rate method), revenues and expenses of a foreign subsidiary are translated at the weighted-average exchange rate for the period. Assets and liabilities are translated at the current rate. The resulting translation adjustment is reported in OCI.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company has $50,000 in accumulated other comprehensive income (AOCI) at the beginning of the year. During the year, OCI is ($18,000) and $7,000 is reclassified out of AOCI into net income. What is the ending AOCI balance?',
 '["$25,000", "$32,000", "$39,000", "$57,000"]'::jsonb,
 0,
 'Ending AOCI = Beginning AOCI + Current OCI - Reclassifications out = $50,000 + ($18,000) - $7,000 = $25,000. Reclassification adjustments remove amounts from AOCI when they are realized and recognized in net income, reducing the AOCI balance.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company reports the following: beginning retained earnings $600,000, net income $150,000, dividends declared $40,000, and a prior period error correction that reduces retained earnings by $25,000. What is ending retained earnings?',
 '["$685,000", "$710,000", "$735,000", "$660,000"]'::jsonb,
 0,
 'Ending retained earnings = Beginning RE + Net income - Dividends - Error correction = $600,000 + $150,000 - $40,000 - $25,000 = $685,000. The prior period error correction is a direct adjustment to beginning retained earnings, reducing the balance before current period activity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'Which of the following errors, if discovered in the current year, would require restatement of prior period financial statements?',
 '["Overestimation of useful life of equipment in the prior year", "Revision of the estimated percentage of uncollectible accounts", "A change in the estimated residual value of a building", "Failure to record accrued salaries payable at the prior year end"]'::jsonb,
 3,
 'Failure to record accrued salaries payable is an error — an omission that must be corrected by restating prior period financial statements under ASC 250. The other items are changes in estimates, which are applied prospectively and do not require restatement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company has total assets of $1,200,000 and a debt-to-equity ratio of 1.5. What is total stockholders'' equity?',
 '["$480,000", "$720,000", "$500,000", "$800,000"]'::jsonb,
 0,
 'Debt-to-equity = Liabilities / Equity = 1.5, so Liabilities = 1.5 × Equity. Since Assets = Liabilities + Equity: $1,200,000 = 1.5E + E = 2.5E. Therefore E = $1,200,000 / 2.5 = $480,000. Total liabilities would be $720,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'Under U.S. GAAP, a company that presents a classified balance sheet must classify all of the following as current assets EXCEPT:',
 '["Cash equivalents with maturities of 90 days or less", "Prepaid rent for the next 18 months", "Trade receivables due in 45 days", "Marketable equity securities classified as trading"]'::jsonb,
 1,
 'Prepaid rent for 18 months extends beyond the one-year operating cycle and must be split: 12 months as current and 6 months as noncurrent. Cash equivalents (≤90 days), short-term receivables, and trading securities are all properly classified as current assets.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company has a $500,000 note payable due in 6 months. The company has the intent and ability to refinance it with a 5-year loan. Under U.S. GAAP, how should the note be classified at the balance sheet date?',
 '["Current liability because it is due within 12 months", "Noncurrent liability if refinancing is completed before the financial statements are issued", "Noncurrent liability regardless of whether refinancing occurs", "Half current and half noncurrent"]'::jsonb,
 1,
 'Under ASC 470-10, a short-term obligation can be classified as noncurrent if the company has both the intent and demonstrated ability to refinance on a long-term basis. The ability is demonstrated by either completing the refinancing or entering into a financing agreement before the statements are issued.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company voluntarily changes its inventory method from weighted-average to FIFO. Which disclosure is NOT required under ASC 250?',
 '["The nature of and reason for the change", "The method of applying the change", "The effect of the change on future periods'' income", "The cumulative effect of the change on retained earnings"]'::jsonb,
 2,
 'ASC 250 requires disclosure of the nature and reason for the change, the method of application, and the cumulative effect on retained earnings. It does not require disclosure of the effect on future periods'' income, as that effect is inherently uncertain and forward-looking.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company reports comprehensive income using two separate statements. In this approach, the first statement ends with:',
 '["Comprehensive income", "Net income", "Total other comprehensive income", "Retained earnings"]'::jsonb,
 1,
 'When using the two-statement approach, the first statement is the income statement, which ends with net income. The second statement begins with net income and adds OCI components to arrive at comprehensive income. This is one of two presentation options allowed under ASC 220.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'Which of the following is a retrospective change in accounting principle under ASC 250?',
 '["Changing from LIFO to FIFO for inventory valuation", "Changing the estimated useful life of machinery", "Adopting a new accounting standard with a prospective transition provision", "Changing the depreciation method from straight-line to units-of-production"]'::jsonb,
 0,
 'Changing from LIFO to FIFO is a change in accounting principle applied retrospectively under ASC 250. The financial statements of prior periods are restated as if FIFO had always been used. Changes in useful life and depreciation method are estimate changes applied prospectively.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Financial Statements',
 'A company with a December 31 year-end issues financial statements on March 15. On February 20, a major earthquake destroys one of its factories. How should this event be reported?',
 '["Adjust the December 31 financial statements to record the loss", "Record a contingent liability on the balance sheet", "No reporting is required since it occurred after year end", "Disclose the event in the notes to the financial statements"]'::jsonb,
 3,
 'The earthquake is a Type II (nonrecognized) subsequent event under ASC 855 because the condition did not exist at the balance sheet date. Type II events are disclosed in the notes but do not result in adjustments to the financial statements. The loss is recognized in the period it occurs.',
 'medium');

-- =============================================================================
-- Statement of Cash Flows — 25 questions (7 easy, 13 medium, 5 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'Under the indirect method, which of the following adjustments is made to net income to arrive at cash from operating activities?',
 '["Add depreciation expense", "Subtract depreciation expense", "Add purchases of equipment", "Subtract dividends paid"]'::jsonb,
 0,
 'Depreciation is a noncash expense that reduced net income but did not use cash. Under the indirect method, it is added back to net income to reconcile to cash from operations. Equipment purchases are investing activities and dividends paid are financing activities.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'A company reports net income of $200,000, depreciation of $30,000, an increase in accounts receivable of $15,000, and a decrease in accounts payable of $10,000. What is cash from operating activities under the indirect method?',
 '["$205,000", "$245,000", "$195,000", "$255,000"]'::jsonb,
 0,
 'Cash from operations = Net income + Depreciation - Increase in AR - Decrease in AP = $200,000 + $30,000 - $15,000 - $10,000 = $205,000. An increase in receivables means less cash collected than revenue earned, and a decrease in payables means more cash paid than expense recognized.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'Which of the following is classified as an investing activity on the statement of cash flows?',
 '["Payment of dividends to stockholders", "Proceeds from issuing common stock", "Purchase of a patent for $75,000", "Payment of interest on bonds payable"]'::jsonb,
 2,
 'Purchasing a patent is an investing activity because it involves acquiring a long-term intangible asset. Dividend payments and interest payments are financing and operating activities respectively. Issuing stock is a financing activity.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'A company sells equipment with a book value of $40,000 for $55,000 cash. How is this reported on the statement of cash flows under the indirect method?',
 '["$55,000 investing inflow only", "$55,000 investing inflow and subtract $15,000 gain from operating activities", "$40,000 investing inflow and $15,000 operating inflow", "$15,000 gain added to operating activities only"]'::jsonb,
 1,
 'The full $55,000 cash received is an investing inflow. Under the indirect method, the $15,000 gain (already included in net income) must be subtracted from operating activities to avoid double-counting. This ensures the gain is properly classified as investing, not operating.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'Under U.S. GAAP, interest paid by a nonfinancial company is classified on the statement of cash flows as:',
 '["Operating activity", "Investing activity", "Financing activity", "Either operating or financing at the company''s election"]'::jsonb,
 0,
 'Under U.S. GAAP (ASC 230), interest paid is classified as an operating activity for nonfinancial companies. This differs from IFRS, which allows companies to classify interest paid as either operating or financing. Dividends paid are a financing activity under U.S. GAAP.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'A company acquires a building by issuing a $500,000 mortgage note directly to the seller. How is this reported on the statement of cash flows?',
 '["$500,000 investing outflow and $500,000 financing inflow", "$500,000 investing outflow only", "No cash flow impact — disclosed as a noncash investing and financing activity", "$500,000 financing inflow only"]'::jsonb,
 2,
 'Acquiring an asset by issuing debt is a noncash transaction that involves both investing (acquiring the building) and financing (issuing the note). Under ASC 230, noncash investing and financing activities are disclosed in a supplemental schedule, not reported on the statement of cash flows.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'Under the direct method of presenting operating activities, which of the following is reported?',
 '["Net income adjusted for noncash items", "Changes in working capital accounts", "Depreciation expense added back to net income", "Cash collected from customers"]'::jsonb,
 3,
 'The direct method reports major classes of gross cash receipts and payments, such as cash collected from customers, cash paid to suppliers, and cash paid to employees. The indirect method starts with net income and adjusts for noncash items and working capital changes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'Sales revenue is $600,000. Beginning accounts receivable is $45,000 and ending accounts receivable is $60,000. Under the direct method, what is cash collected from customers?',
 '["$600,000", "$585,000", "$615,000", "$645,000"]'::jsonb,
 1,
 'Cash collected = Sales revenue - Increase in accounts receivable = $600,000 - ($60,000 - $45,000) = $600,000 - $15,000 = $585,000. The increase in receivables means $15,000 of sales was earned but not yet collected in cash.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'Cost of goods sold is $350,000. Beginning inventory is $80,000, ending inventory is $95,000, beginning accounts payable is $40,000, and ending accounts payable is $50,000. What is cash paid to suppliers?',
 '["$355,000", "$365,000", "$345,000", "$375,000"]'::jsonb,
 0,
 'Purchases = COGS + Ending inventory - Beginning inventory = $350,000 + $95,000 - $80,000 = $365,000. Cash paid = Purchases - Increase in AP = $365,000 - ($50,000 - $40,000) = $365,000 - $10,000 = $355,000. The payable increase means $10,000 of purchases were not yet paid.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'A company reports a $20,000 loss on sale of investments in net income. Under the indirect method, this loss is:',
 '["Subtracted from net income in operating activities", "Ignored because it is already in net income", "Reported as an investing activity only", "Added to net income in operating activities"]'::jsonb,
 3,
 'A loss on sale of investments reduced net income but is not an operating cash flow — it relates to investing activities. Under the indirect method, the loss is added back to net income to remove its effect from operating activities. The actual cash proceeds are reported as an investing inflow.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'Which of the following is classified as a financing activity?',
 '["Cash received from customers", "Cash paid for inventory", "Purchase of trading securities", "Repayment of a long-term bank loan"]'::jsonb,
 3,
 'Repaying a long-term bank loan is a financing activity because it involves returning capital to creditors. Cash from customers and cash paid for inventory are operating activities. Purchasing trading securities is classified as operating (not investing) because trading securities are held for short-term profit.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'A company has net income of $180,000, depreciation of $25,000, amortization of a bond premium of $3,000, and a decrease in inventory of $12,000. What is cash from operating activities?',
 '["$214,000", "$220,000", "$208,000", "$196,000"]'::jsonb,
 0,
 'Cash from operations = $180,000 + $25,000 - $3,000 + $12,000 = $214,000. Depreciation is added back. Bond premium amortization reduced interest expense below cash interest paid, so it is subtracted. A decrease in inventory means less cash was spent on inventory than COGS recognized.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'Under U.S. GAAP, dividends received by an investor from an equity-method investee are classified on the statement of cash flows as:',
 '["Operating activity", "Investing activity", "Financing activity", "Either operating or investing at the investor''s discretion"]'::jsonb,
 0,
 'Under ASC 230, dividends received from equity-method investees are classified as operating activities, consistent with the general GAAP treatment of dividend and interest income as operating. This is a commonly tested distinction since the equity method investment itself is an investing item.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'A company issues $300,000 of common stock in exchange for land valued at $300,000. How does this affect the statement of cash flows?',
 '["$300,000 financing inflow and $300,000 investing outflow", "Reported as a $300,000 investing outflow only", "$300,000 net zero effect within financing activities", "No effect on the statement — disclosed as a noncash investing and financing activity"]'::jsonb,
 3,
 'Exchanging stock for land is a noncash transaction involving both financing (stock issuance) and investing (land acquisition). ASC 230 requires noncash investing and financing activities to be disclosed separately, either in a supplemental schedule or in the notes, not within the cash flow statement.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'A company reports net income of $100,000. During the year, accounts receivable decreased by $8,000, prepaid expenses increased by $3,000, accrued liabilities increased by $5,000, and depreciation was $15,000. What is cash from operating activities?',
 '["$125,000", "$111,000", "$128,000", "$118,000"]'::jsonb,
 0,
 'Cash from operations = $100,000 + $15,000 (depreciation) + $8,000 (decrease in AR) - $3,000 (increase in prepaids) + $5,000 (increase in accrued liabilities) = $125,000. Decreases in current assets and increases in current liabilities are added; increases in current assets and decreases in current liabilities are subtracted.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'A company converts $200,000 of convertible bonds into 10,000 shares of common stock. How is this reported on the statement of cash flows?',
 '["$200,000 financing outflow for bond retirement", "$200,000 financing inflow for stock issuance", "Disclosed as a noncash financing activity", "$200,000 net zero within financing activities"]'::jsonb,
 2,
 'Converting bonds to stock is a noncash financing activity — no cash changes hands. Under ASC 230, this must be disclosed in a supplemental schedule or notes to the financial statements. It is not reported within the financing section of the cash flow statement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'Under the indirect method, an increase in deferred revenue from $30,000 to $45,000 during the year is:',
 '["Subtracted from net income", "Added to net income", "Reported as a financing inflow", "Ignored in the cash flow statement"]'::jsonb,
 1,
 'An increase in deferred revenue (a current liability) of $15,000 means the company collected $15,000 more cash than it recognized as revenue. Under the indirect method, increases in current liabilities are added to net income because they represent cash collected but not yet recognized in earnings.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'A company purchased equipment for $120,000, paying $80,000 in cash and signing a $40,000 note payable. How is this reported on the statement of cash flows?',
 '["$120,000 investing outflow", "$80,000 investing outflow and $40,000 noncash disclosure", "$80,000 investing outflow and $40,000 financing inflow", "$120,000 investing outflow and $40,000 financing inflow"]'::jsonb,
 1,
 'The $80,000 cash payment is reported as an investing outflow. The $40,000 financed portion is a noncash investing and financing activity disclosed in a supplemental schedule. Only the cash portion flows through the statement; the noncash portion is separately disclosed.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'Under U.S. GAAP, income taxes paid are classified on the statement of cash flows as:',
 '["Operating activities", "Allocated among operating, investing, and financing based on the nature of the underlying transaction", "Financing activities", "Presented as a separate category"]'::jsonb,
 0,
 'Under ASC 230, income taxes paid are generally classified as operating activities unless they can be specifically identified with financing or investing activities. In practice, most companies classify all income tax payments as operating because allocation is complex and rarely required.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'A company has restricted cash of $50,000 included in its cash and cash equivalents balance. Under ASC 230, which of the following is required?',
 '["Restricted cash must be excluded from cash and cash equivalents", "Restricted cash is included in cash and cash equivalents with changes explained in the reconciliation", "Restricted cash is reported as an investing activity", "Restricted cash must be reported as a financing activity"]'::jsonb,
 1,
 'ASU 2016-18 requires that restricted cash and restricted cash equivalents be included in the beginning and ending cash balances on the statement of cash flows. Changes between restricted and unrestricted cash are not reported as operating, investing, or financing activities.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'Operating expenses are $200,000. Beginning accrued liabilities are $25,000 and ending accrued liabilities are $18,000. Beginning prepaid expenses are $10,000 and ending prepaid expenses are $14,000. Under the direct method, what is cash paid for operating expenses?',
 '["$211,000", "$189,000", "$207,000", "$193,000"]'::jsonb,
 0,
 'Cash paid = Operating expenses + Decrease in accrued liabilities + Increase in prepaid expenses = $200,000 + ($25,000 - $18,000) + ($14,000 - $10,000) = $200,000 + $7,000 + $4,000 = $211,000. The decrease in accrued liabilities and increase in prepaids both mean more cash was paid than expense recorded.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'Which of the following is NOT disclosed as a noncash investing and financing activity?',
 '["Conversion of preferred stock to common stock", "Stock dividend distributed to shareholders", "Capital lease obligation incurred for equipment", "Purchase of investments with cash"]'::jsonb,
 3,
 'Purchasing investments with cash is a cash investing activity reported on the statement of cash flows, not a noncash disclosure. The conversion of preferred to common stock, stock dividends, and capital lease obligations are all noncash transactions requiring supplemental disclosure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'A company reports a $10,000 unrealized gain on trading securities in net income. Under the indirect method, this gain is:',
 '["Added to net income", "Subtracted from net income", "Reported as an investing activity", "No adjustment needed"]'::jsonb,
 1,
 'An unrealized gain on trading securities increased net income but generated no cash. Under the indirect method, it is subtracted from net income to adjust for the noncash income. When the securities are eventually sold, the actual cash received will be reported as an operating activity (since trading securities are operating).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'Under U.S. GAAP, cash paid for dividends by a nonfinancial company is classified as:',
 '["Operating activity", "Investing activity", "Financing activity", "Either operating or financing at management''s discretion"]'::jsonb,
 2,
 'Under ASC 230, dividends paid are classified as financing activities because they represent distributions to owners. This differs from IFRS, which permits classification as either operating or financing. Interest paid, by contrast, is classified as operating under U.S. GAAP.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Statement of Cash Flows',
 'A company reports net income of $90,000. Amortization of a bond discount was $4,000. Stock-based compensation expense was $12,000. Accounts payable increased by $6,000. What is cash from operating activities?',
 '["$112,000", "$104,000", "$96,000", "$108,000"]'::jsonb,
 0,
 'Cash from operations = $90,000 + $4,000 (amortization of bond discount — noncash interest) + $12,000 (stock-based compensation — noncash expense) + $6,000 (increase in AP — more purchased on credit than paid) = $112,000. All three adjustments add back noncash charges or reflect additional cash retained.',
 'hard');

-- =============================================================================
-- Earnings Per Share — 20 questions (6 easy, 10 medium, 4 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has net income of $500,000 and 100,000 shares of common stock outstanding for the entire year. There are no preferred dividends. What is basic earnings per share?',
 '["$5.00", "$4.00", "$50.00", "$0.50"]'::jsonb,
 0,
 'Basic EPS = (Net income - Preferred dividends) / Weighted-average common shares outstanding = ($500,000 - $0) / 100,000 = $5.00. With no preferred dividends and shares outstanding for the full year, the calculation is straightforward.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has net income of $360,000, 80,000 shares outstanding at the start of the year, and issued 20,000 additional shares on July 1. What is basic EPS?',
 '["$4.00", "$3.60", "$4.50", "$3.00"]'::jsonb,
 0,
 'Weighted-average shares = 80,000 × 12/12 + 20,000 × 6/12 = 80,000 + 10,000 = 90,000. Basic EPS = $360,000 / 90,000 = $4.00. The new shares are weighted for the portion of the year they were outstanding.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has 100,000 shares outstanding and declares a 10% stock dividend on October 1. For EPS purposes, the weighted-average shares for the year are:',
 '["100,000", "110,000", "102,500", "107,500"]'::jsonb,
 1,
 'Stock dividends are treated as if they occurred at the beginning of the earliest period presented. Therefore, the weighted-average shares are 100,000 × 1.10 = 110,000 for the entire year, regardless of the actual declaration date.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has 50,000 shares outstanding on January 1 and performs a 2-for-1 stock split on September 1. What is the weighted-average number of shares for the year?',
 '["50,000", "75,000", "100,000", "66,667"]'::jsonb,
 2,
 'Like stock dividends, stock splits are applied retroactively to the beginning of the earliest period presented. The weighted-average shares = 50,000 × 2 = 100,000 for the entire year. The split is not time-weighted because it does not change the company''s resources.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has net income of $800,000, 200,000 common shares outstanding, and 10,000 shares of $100 par, 6% cumulative preferred stock. The preferred dividends were not declared. What is basic EPS?',
 '["$4.00", "$3.00", "$3.40", "$3.70"]'::jsonb,
 3,
 'For cumulative preferred, dividends are deducted from net income in the EPS calculation regardless of whether declared. Preferred dividends = 10,000 × $100 × 6% = $60,000. Basic EPS = ($800,000 - $60,000) / 200,000 = $740,000 / 200,000 = $3.70.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has net income of $600,000, 150,000 common shares outstanding, and 10,000 shares of noncumulative preferred stock with a $5 annual dividend. No dividends were declared during the year. What is basic EPS?',
 '["$3.67", "$4.00", "$3.50", "$3.33"]'::jsonb,
 1,
 'For noncumulative preferred stock, dividends are subtracted from net income only if declared. Since no dividends were declared, the full $600,000 is available to common shareholders. Basic EPS = $600,000 / 150,000 = $4.00.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'Under the treasury stock method, stock options are dilutive when:',
 '["The exercise price exceeds the average market price", "The exercise price equals the average market price", "The average market price exceeds the exercise price", "The options have been outstanding for more than one year"]'::jsonb,
 2,
 'Stock options are dilutive when the average market price exceeds the exercise price (the options are in the money). Under the treasury stock method, proceeds from assumed exercise are used to buy back shares at the average market price, resulting in a net increase in shares that dilutes EPS.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has 200,000 shares outstanding and 10,000 stock options with an exercise price of $20. The average market price is $50. Using the treasury stock method, how many incremental shares are added for diluted EPS?',
 '["10,000", "4,000", "6,000", "8,000"]'::jsonb,
 2,
 'Treasury stock method: Proceeds = 10,000 × $20 = $200,000. Shares repurchased = $200,000 / $50 = 4,000. Incremental shares = 10,000 exercised - 4,000 repurchased = 6,000. These 6,000 shares are added to the denominator for diluted EPS.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has net income of $400,000, 100,000 common shares, and 5,000 shares of $100 par, 8% convertible preferred stock. Each preferred share converts into 4 common shares. What is diluted EPS?',
 '["$3.33", "$3.60", "$4.00", "$3.00"]'::jsonb,
 0,
 'If-converted method: Add back preferred dividends to numerator = $400,000 (no subtraction needed since assumed converted). Additional shares = 5,000 × 4 = 20,000. Diluted EPS = $400,000 / (100,000 + 20,000) = $400,000 / 120,000 = $3.33. Basic EPS = ($400,000 - $40,000) / 100,000 = $3.60, so the conversion is dilutive.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has net income of $300,000, 50,000 common shares, and $200,000 of 6% convertible bonds convertible into 10,000 shares. The tax rate is 25%. What is diluted EPS using the if-converted method?',
 '["$5.16", "$6.00", "$4.85", "$5.00"]'::jsonb,
 0,
 'If-converted method: After-tax interest savings = $200,000 x 6% x (1 - 0.25) = $9,000. Adjusted income = $300,000 + $9,000 = $309,000. Adjusted shares = 50,000 + 10,000 = 60,000. Diluted EPS = $309,000 / 60,000 = $5.15, rounded to $5.16. Basic EPS = $300,000 / 50,000 = $6.00, so the bonds are dilutive and included.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has basic EPS of $4.00. It has stock options that would add 5,000 incremental shares and convertible bonds that would add $15,000 to the numerator and 10,000 shares to the denominator. Which securities should be included in diluted EPS?',
 '["Options only", "Bonds only", "Both options and bonds", "Neither — both are antidilutive"]'::jsonb,
 2,
 'Options add shares with no numerator effect, so they are dilutive if EPS decreases (which it will since the denominator increases). Bonds have a per-share effect of $15,000 / 10,000 = $1.50, which is less than basic EPS of $4.00, so they are also dilutive. Both securities are included in diluted EPS.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'Stock options with an exercise price of $60 are outstanding when the average market price is $45. For diluted EPS purposes, these options are:',
 '["Dilutive and included in the calculation", "Included at the exercise price", "Antidilutive and excluded from the calculation", "Included using the if-converted method"]'::jsonb,
 2,
 'Options are antidilutive when the exercise price exceeds the average market price (out of the money). Under the treasury stock method, exercising would generate more shares repurchased than shares issued, decreasing the denominator and increasing EPS. Antidilutive securities are excluded from diluted EPS.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has 120,000 shares outstanding on January 1. On April 1, it issues 30,000 shares. On October 1, it repurchases 15,000 shares. What is the weighted-average number of shares for the year?',
 '["135,000", "141,250", "138,750", "131,250"]'::jsonb,
 2,
 'Weighted-average = (120,000 × 3/12) + (150,000 × 6/12) + (135,000 × 3/12) = 30,000 + 75,000 + 33,750 = 138,750. Each share count is weighted by the fraction of the year it was outstanding.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has 200,000 common shares and 20,000 contingently issuable shares that vest when annual revenue exceeds $10 million. Current year revenue is $12 million. How are the contingent shares treated for basic EPS?',
 '["Excluded from both basic and diluted EPS", "Included in basic EPS because the contingency is met", "Included in diluted EPS only", "Included at 50% in basic EPS"]'::jsonb,
 1,
 'Contingently issuable shares are included in basic EPS if all necessary conditions have been satisfied as of the end of the reporting period. Since revenue of $12 million exceeds the $10 million threshold, the contingency is met and the 20,000 shares are included in the basic EPS denominator.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company reports a net loss of $200,000 with 100,000 shares outstanding. It has 5,000 dilutive stock options. What is diluted EPS?',
 '["($2.00)", "($1.90)", "($1.80)", "Cannot compute — all potentially dilutive securities are antidilutive when there is a net loss"]'::jsonb,
 0,
 'When a company reports a net loss, all potentially dilutive securities are antidilutive because adding shares to the denominator would reduce the loss per share (make it less negative). Therefore, diluted EPS equals basic EPS: ($200,000) / 100,000 = ($2.00).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has net income of $500,000, 100,000 weighted-average shares, and 20,000 stock options with an exercise price of $30 and an average market price of $40. What is diluted EPS?',
 '["$4.76", "$5.00", "$4.55", "$4.35"]'::jsonb,
 0,
 'Treasury stock method: Proceeds = 20,000 × $30 = $600,000. Shares repurchased = $600,000 / $40 = 15,000. Incremental shares = 20,000 - 15,000 = 5,000. Diluted EPS = $500,000 / (100,000 + 5,000) = $500,000 / 105,000 = $4.76.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'On March 1, a company with 60,000 shares outstanding declares a 3-for-1 stock split. On July 1, it issues 15,000 new shares for cash. What is the weighted-average number of shares for the year?',
 '["180,000", "172,500", "195,000", "187,500"]'::jsonb,
 3,
 'The stock split is applied retroactively: 60,000 × 3 = 180,000 for the full year. The July 1 issuance adds 15,000 × 6/12 = 7,500 weighted shares. Total weighted-average = 180,000 + 7,500 = 187,500. Stock splits are not time-weighted; new issuances are.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has 50,000 common shares outstanding and $500,000 of 10% convertible bonds, each $1,000 bond convertible into 25 shares. The tax rate is 25%. The per-share impact of the convertible bonds for diluted EPS is:',
 '["$3.00", "$2.50", "$4.00", "$1.50"]'::jsonb,
 0,
 'Number of bonds = $500,000 / $1,000 = 500. Additional shares = 500 × 25 = 12,500. Interest savings = $500,000 × 10% = $50,000. After-tax interest = $50,000 × (1 - 0.25) = $37,500. Per-share impact = $37,500 / 12,500 = $3.00. This value is compared to basic EPS to determine if the bonds are dilutive.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'Which of the following is true about the presentation of EPS on the income statement under U.S. GAAP?',
 '["Only basic EPS is required to be presented", "Both basic and diluted EPS must be presented on the face of the income statement for public companies", "EPS may be disclosed in the notes instead of the income statement", "EPS presentation is optional for all companies"]'::jsonb,
 1,
 'ASC 260 requires public companies to present both basic and diluted EPS on the face of the income statement for income from continuing operations and net income. EPS must be shown for each class of common stock and cannot be relegated to the footnotes.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Earnings Per Share',
 'A company has basic EPS of $6.00. Convertible preferred stock would add back $30,000 in dividends and add 6,000 shares if converted. Should the preferred stock be included in diluted EPS?',
 '["Yes, because the per-share effect of $5.00 is less than basic EPS of $6.00", "No, because convertible preferred is always antidilutive", "Yes, but only if the preferred stock was issued during the current year", "No, because the per-share effect exceeds $4.00"]'::jsonb,
 0,
 'The per-share effect of the convertible preferred = $30,000 / 6,000 = $5.00. Since $5.00 is less than basic EPS of $6.00, converting the preferred would reduce (dilute) EPS. Therefore, the preferred stock is dilutive and must be included in the diluted EPS calculation.',
 'medium');

-- =============================================================================
-- Revenue Recognition — 35 questions (11 easy, 17 medium, 7 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'Under ASC 606, what is the first step in the five-step revenue recognition model?',
 '["Determine the transaction price", "Identify the performance obligations", "Identify the contract with a customer", "Recognize revenue when performance obligations are satisfied"]'::jsonb,
 2,
 'The five steps of ASC 606 are: (1) Identify the contract with a customer, (2) Identify the performance obligations, (3) Determine the transaction price, (4) Allocate the transaction price, and (5) Recognize revenue when (or as) performance obligations are satisfied.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'Under ASC 606, a performance obligation is a promise to transfer to the customer:',
 '["Any item listed in the contract", "Only tangible goods, not services", "A distinct good or service, or a series of distinct goods or services that are substantially the same", "The entire bundle of goods and services in the contract as a single unit"]'::jsonb,
 2,
 'A performance obligation under ASC 606 is a promise to transfer a distinct good or service (or a series of distinct goods or services that are substantially the same and have the same pattern of transfer). Not every promised item is a separate performance obligation — only distinct ones.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A software company sells a license and one year of post-contract support (PCS) for $120,000. The standalone selling prices are $100,000 for the license and $40,000 for PCS. How much revenue is allocated to the license?',
 '["$120,000", "$85,714", "$100,000", "$80,000"]'::jsonb,
 1,
 'Under ASC 606, the transaction price is allocated based on relative standalone selling prices. License allocation = ($100,000 / $140,000) x $120,000 = $85,714. PCS allocation = ($40,000 / $140,000) x $120,000 = $34,286. The total equals the $120,000 transaction price.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company enters a contract to sell 1,000 units at $50 each, with a 5% volume discount if the customer purchases more than 800 units. The company estimates it is highly probable the customer will purchase all 1,000 units. Using the most likely amount method, what is the transaction price?',
 '["$50,000", "$52,500", "$40,000", "$47,500"]'::jsonb,
 3,
 'The most likely amount is 1,000 units (highly probable). With the 5% volume discount triggered: $50 x 1,000 x 0.95 = $47,500. Under ASC 606, variable consideration is estimated using either the expected value or most likely amount method, and included to the extent it is probable a significant reversal will not occur.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'Under ASC 606, the transaction price includes variable consideration. Which of the following is an example of variable consideration?',
 '["A fixed fee of $10,000 for consulting services", "A performance bonus of $5,000 payable if the project is completed early", "The standalone selling price of a distinct good", "A noncash consideration measured at fair value"]'::jsonb,
 1,
 'A performance bonus contingent on early completion is variable consideration because the amount depends on a future event. ASC 606 defines variable consideration as amounts that vary due to discounts, rebates, refunds, credits, incentives, penalties, or similar items.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A construction company has a $2,000,000 fixed-price contract. At year end, costs incurred are $600,000, estimated total costs are $1,500,000, and the company recognizes revenue over time using the cost-to-cost method. How much revenue should be recognized?',
 '["$600,000", "$1,200,000", "$2,000,000", "$800,000"]'::jsonb,
 3,
 'Percentage complete = $600,000 / $1,500,000 = 40%. Revenue recognized = 40% x $2,000,000 = $800,000. The cost-to-cost method measures progress toward completion based on costs incurred relative to total estimated costs.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'Under ASC 606, revenue is recognized over time if one of the following criteria is met EXCEPT:',
 '["The customer simultaneously receives and consumes benefits as the entity performs", "The entity''s performance creates or enhances an asset the customer controls as it is created", "The entity''s performance does not create an asset with alternative use and the entity has an enforceable right to payment for performance completed to date", "The entity has transferred physical possession of the good to the customer"]'::jsonb,
 3,
 'ASC 606 provides three criteria for over-time recognition. Transferring physical possession relates to point-in-time indicators, not over-time criteria. The three over-time criteria involve simultaneous receipt/consumption, customer-controlled asset creation, and no alternative use with right to payment.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A retailer sells a product for $500 with a 30-day right of return. Based on historical data, the retailer estimates 5% of sales will be returned. Under ASC 606, how much revenue should be recognized at the point of sale?',
 '["$500", "$475", "$0", "$25"]'::jsonb,
 1,
 'Under ASC 606, revenue is recognized net of expected returns. Revenue = $500 x 95% = $475. The $25 expected refund is recorded as a refund liability. The company also records a right-of-return asset for the expected cost of inventory to be returned.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'Under ASC 606, which method is used to estimate variable consideration when there are only two possible outcomes?',
 '["Expected value method", "Adjusted market assessment approach", "Residual approach", "Most likely amount method"]'::jsonb,
 3,
 'The most likely amount method is appropriate when variable consideration has only two possible outcomes (e.g., a bonus is either earned or not). The expected value method is more appropriate when there is a range of possible outcomes. The residual approach is for estimating standalone selling prices, not variable consideration.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company sells equipment for $100,000 and provides a 2-year service-type warranty. The standalone selling prices are $95,000 for the equipment and $10,000 for the warranty. How much revenue is recognized when the equipment is delivered?',
 '["$100,000", "$95,000", "$90,476", "$85,000"]'::jsonb,
 2,
 'The warranty is a service-type warranty (separate performance obligation). Allocate by relative standalone selling price: Equipment = ($95,000 / $105,000) x $100,000 = $90,476. Warranty = ($10,000 / $105,000) x $100,000 = $9,524. Equipment revenue is recognized at delivery; warranty revenue over the 2-year period.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company enters a contract to deliver Product A for $60,000 and Product B for $40,000. The contract is later modified to add Product C for $25,000, which reflects its standalone selling price. Under ASC 606, how is the modification treated?',
 '["As a cumulative catch-up adjustment to the original contract", "By restating all prior revenue from the original contract", "Prospectively by combining with the original contract", "As a separate contract"]'::jsonb,
 3,
 'Under ASC 606, a contract modification is treated as a separate contract when the additional goods or services are distinct AND the price reflects their standalone selling price. Since Product C is priced at its standalone selling price of $25,000, the modification is accounted for as a separate contract.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company modifies a contract by adding services that are not distinct from those already provided. The modification should be treated as:',
 '["A separate contract", "An adjustment recognized only in future periods", "A cumulative catch-up adjustment as if the original contract was terminated and a new one created", "A gain or loss in the current period"]'::jsonb,
 2,
 'When a modification adds goods or services that are not distinct from those already transferred, it is treated as part of the existing contract. The entity makes a cumulative catch-up adjustment to revenue as of the modification date, reflecting the updated transaction price and measure of progress.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'Under ASC 606, a good or service is distinct if:',
 '["It is separately identifiable from other promises in the contract and the customer can benefit from it on its own or with readily available resources", "It is the most expensive item in the contract", "It has been sold separately by the entity in the past", "It requires specialized installation by the entity"]'::jsonb,
 0,
 'A good or service is distinct under ASC 606 if it meets two criteria: (1) the customer can benefit from it on its own or together with readily available resources (capable of being distinct), and (2) it is separately identifiable from other promises in the contract (distinct within the context of the contract).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company sells a $1,200 annual subscription on October 1. The subscription provides equal monthly access to a digital platform. How much revenue should be recognized in the year ended December 31?',
 '["$1,200", "$400", "$900", "$300"]'::jsonb,
 3,
 'The subscription provides equal monthly benefits, so revenue is recognized ratably over the 12-month term. Monthly revenue = $1,200 / 12 = $100. Three months from October through December = $100 x 3 = $300. The remaining $900 is deferred revenue at December 31.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'An entity acts as an agent in a transaction. Under ASC 606, the entity should recognize revenue:',
 '["At the gross amount of consideration received", "At the net amount — the fee or commission earned", "At the gross amount less estimated returns", "At the standalone selling price of the goods sold"]'::jsonb,
 1,
 'When an entity is an agent (does not control the good or service before it is transferred to the customer), it recognizes revenue at the net amount — the fee or commission it earns for arranging the transaction. Only a principal recognizes gross revenue.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'An online marketplace facilitates sales between buyers and sellers. It collects $10,000 from buyers and remits $8,500 to sellers. Which indicator most strongly suggests the marketplace is an agent?',
 '["The marketplace sets the selling price", "The marketplace bears inventory risk", "The seller is primarily responsible for fulfilling the order", "The marketplace provides a warranty on the goods"]'::jsonb,
 2,
 'Under ASC 606, a key indicator that an entity is an agent is that another party (the seller) is primarily responsible for fulfilling the promise to the customer. Setting prices, bearing inventory risk, and providing warranties are indicators of being a principal.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company enters a $500,000 contract with an expected cost of $400,000. Midway through the project, estimated total costs increase to $550,000. Under ASC 606 for over-time recognition, how is the expected loss treated?',
 '["The loss is deferred until the contract is complete", "No loss is recognized until costs actually exceed revenue", "Only the loss incurred to date is recognized", "The entire expected loss of $50,000 is recognized immediately"]'::jsonb,
 3,
 'Under ASC 606, when a contract becomes onerous (total estimated costs exceed the transaction price), the entire expected loss must be recognized immediately as a contract loss. The $50,000 loss ($500,000 revenue - $550,000 estimated costs) is recognized in the period the loss is first identified.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'Under ASC 606, which of the following is a method for estimating standalone selling prices when not directly observable?',
 '["Treasury stock method", "Residual approach", "Percentage of completion method", "Equity method"]'::jsonb,
 1,
 'ASC 606 allows three methods for estimating standalone selling prices: (1) adjusted market assessment approach, (2) expected cost plus a margin approach, and (3) residual approach (allowed only in limited circumstances). The treasury stock, percentage of completion, and equity methods are unrelated to standalone selling price estimation.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company sells 500 units at $100 each with payment terms of 2/10, net 30. The company estimates all customers will take the discount. What is the transaction price under ASC 606?',
 '["$50,000", "$49,000", "$48,000", "$51,000"]'::jsonb,
 1,
 'The 2% early payment discount is variable consideration. If the company estimates all customers will take the discount: Transaction price = 500 x $100 x (1 - 0.02) = $49,000. The expected discount reduces the transaction price because it is a form of variable consideration under ASC 606.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A construction company has a $3,000,000 contract. At December 31 of Year 1, costs incurred to date are $900,000, estimated remaining costs are $1,500,000, and progress billings are $1,000,000. Using the cost-to-cost method, what is the contract asset or liability at year end?',
 '["Contract asset of $125,000", "Contract liability of $125,000", "Contract asset of $1,000,000", "Contract liability of $100,000"]'::jsonb,
 0,
 'Total estimated costs = $900,000 + $1,500,000 = $2,400,000. Percent complete = $900,000 / $2,400,000 = 37.5%. Revenue to date = 37.5% x $3,000,000 = $1,125,000. Contract asset = Revenue recognized - Billings = $1,125,000 - $1,000,000 = $125,000. A contract asset exists when revenue recognized exceeds billings.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'Under ASC 606, incremental costs of obtaining a contract (such as sales commissions) should be:',
 '["Expensed immediately in all cases", "Capitalized as an asset and amortized over the contract period if the amortization period exceeds one year", "Included in the transaction price", "Deducted from revenue recognized"]'::jsonb,
 1,
 'ASC 606 requires incremental costs of obtaining a contract to be capitalized if the entity expects to recover them. These costs are amortized on a systematic basis consistent with the transfer of goods or services. A practical expedient allows expensing when the amortization period is one year or less.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A franchisor grants a franchise license and provides initial training, ongoing support, and use of the brand name. Under ASC 606, the franchise fee for the license is likely recognized:',
 '["Entirely at the point the franchise opens", "At the date the franchise agreement is signed", "When cash is collected from the franchisee", "Over the life of the franchise agreement"]'::jsonb,
 3,
 'A franchise license typically provides a right to access the franchisor''s intellectual property over the license period (the franchisor continues to support and develop the brand). This is recognized over time under ASC 606 because the customer simultaneously receives and consumes the benefits of the franchisor''s ongoing activities.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'Under ASC 606, a significant financing component exists when:',
 '["The timing of payments provides a significant benefit of financing to either party", "Payment is due within 30 days", "The contract includes a volume discount", "The customer pays in advance for convenience"]'::jsonb,
 0,
 'A significant financing component exists when the timing of payments agreed by the parties provides the customer or entity with a significant benefit of financing. The entity must adjust the transaction price for the time value of money. A practical expedient allows ignoring the financing component when the period is one year or less.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company sells a machine for $200,000 with payment due in 3 years. The company''s incremental borrowing rate is 6%. Under ASC 606, the transaction price is closest to:',
 '["$200,000", "$167,924", "$188,000", "$176,000"]'::jsonb,
 1,
 'A significant financing component exists because payment is due in 3 years. The transaction price is the present value of $200,000 discounted at 6% for 3 years: $200,000 / (1.06)^3 = $200,000 / 1.191016 = $167,924. The difference of $32,076 is recognized as interest income over the 3 years.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A software company licenses its product to a customer. The license provides a right to use the software as it exists at the point the license is granted. Under ASC 606, revenue from this license is recognized:',
 '["Over the license period", "At the point in time when the license is transferred", "When the customer first uses the software", "When the contract is signed"]'::jsonb,
 1,
 'A right-to-use license (functional IP) provides the customer with a right to use the entity''s intellectual property as it exists at the point the license is granted. Revenue is recognized at the point in time when control of the license transfers. This contrasts with a right-to-access license, which is recognized over time.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A music streaming company grants a license that provides customers with access to its constantly updated library. Under ASC 606, this license represents:',
 '["A right to use the IP (point-in-time recognition)", "A financing arrangement", "A sale of intellectual property", "A right to access the IP (over-time recognition)"]'::jsonb,
 3,
 'A license that provides access to the entity''s IP as it exists throughout the license period is a right-to-access license (symbolic IP). The entity has ongoing activities that significantly affect the IP. Revenue is recognized over time because the customer simultaneously receives and consumes the benefits.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company has a contract to deliver 10,000 units over 10 months at $10 per unit. After delivering 4,000 units, the contract is modified to deliver 3,000 additional units at $9.50 each (reflecting standalone selling price). How is the modification treated?',
 '["Cumulative catch-up adjustment to the original contract", "Prospectively as a blended rate for remaining deliveries", "As a separate contract for the 3,000 additional units", "Revenue is deferred until all units are delivered"]'::jsonb,
 2,
 'The additional 3,000 units are distinct from those already delivered, and the $9.50 price reflects their standalone selling price. Under ASC 606, this modification is treated as a separate contract. The original contract continues unchanged for the remaining 6,000 units at $10 each.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'Under ASC 606, the constraint on variable consideration requires that variable amounts be included in the transaction price only to the extent that:',
 '["The customer has agreed to pay the amount", "The variable consideration exceeds 10% of the fixed price", "The entity has historical data for at least 3 years", "It is probable that a significant reversal of cumulative revenue will not occur when the uncertainty is resolved"]'::jsonb,
 3,
 'The constraint on variable consideration under ASC 606 requires that variable amounts be included in the transaction price only to the extent it is probable that a significant reversal of cumulative revenue recognized will not occur when the uncertainty is subsequently resolved.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company offers customers loyalty points worth $1 each redeemable on future purchases. A customer buys $500 of goods and earns 50 points. Standalone selling prices are $500 for goods and $40 for points (adjusted for breakage). How much revenue is allocated to the goods?',
 '["$500.00", "$462.96", "$480.00", "$450.00"]'::jsonb,
 1,
 'The loyalty points are a material right — a separate performance obligation. Allocate by relative standalone selling prices: Goods = ($500 / $540) x $500 = $462.96. Points = ($40 / $540) x $500 = $37.04. Revenue for points is deferred until redeemed or expired.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company bills a customer $50,000 for the first phase of a project but has only satisfied $35,000 of performance obligations. Under ASC 606, the company reports:',
 '["Revenue of $50,000", "Deferred revenue of $50,000", "Revenue of $35,000 and accounts receivable of $15,000", "Revenue of $35,000 and a contract liability of $15,000"]'::jsonb,
 3,
 'Revenue is recognized based on performance obligation satisfaction, not billings. The company recognizes $35,000 revenue for work performed. The $15,000 excess billing over revenue recognized is a contract liability (deferred revenue), representing an obligation to transfer goods or services in the future.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company sells a product bundled with free installation. The standalone selling prices are $8,000 for the product and $2,000 for installation. The bundle price is $9,000. How much revenue is recognized when the product is delivered (before installation)?',
 '["$9,000", "$8,000", "$7,200", "$7,000"]'::jsonb,
 2,
 'Allocate by relative standalone selling prices: Product = ($8,000 / $10,000) x $9,000 = $7,200. Installation = ($2,000 / $10,000) x $9,000 = $1,800. Revenue of $7,200 is recognized when the product is delivered. The remaining $1,800 is recognized when installation is complete.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'Under ASC 606, costs to fulfill a contract that are not within the scope of other standards are capitalized if:',
 '["The costs exceed $10,000", "They relate directly to a contract, generate or enhance resources used to satisfy performance obligations, and are expected to be recovered", "They are incurred before the contract is signed", "They relate to general and administrative activities"]'::jsonb,
 1,
 'ASC 606 requires capitalization of contract fulfillment costs that meet three criteria: (1) directly relate to an existing or anticipated contract, (2) generate or enhance resources used to satisfy performance obligations, and (3) are expected to be recovered. G&A costs are always expensed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company enters a contract to build specialized equipment for $800,000. The equipment has no alternative use, and the company has an enforceable right to payment for performance completed to date. Under ASC 606, revenue is recognized:',
 '["When cash is collected from the customer", "At the point in time when the equipment is delivered", "Over time as the company builds the equipment", "At the date the contract is signed"]'::jsonb,
 0,
 'Two conditions for over-time recognition are met: (1) the asset has no alternative use to the entity, and (2) the entity has an enforceable right to payment for performance completed to date. Under ASC 606, these criteria require over-time recognition, typically measured by an input or output method.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company receives $60,000 in advance for a 2-year service contract beginning July 1. At December 31 of Year 1, how much revenue has been recognized and what is the contract liability?',
 '["Revenue $15,000; Contract liability $45,000", "Revenue $30,000; Contract liability $30,000", "Revenue $60,000; Contract liability $0", "Revenue $0; Contract liability $60,000"]'::jsonb,
 0,
 'The service is provided ratably over 24 months. Monthly revenue = $60,000 / 24 = $2,500. From July 1 to December 31 = 6 months. Revenue recognized = $2,500 x 6 = $15,000. Contract liability = $60,000 - $15,000 = $45,000, representing the unearned portion.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Revenue Recognition',
 'A company has a $1,000,000 construction contract. At the end of Year 2, cumulative costs are $750,000, estimated total costs are $1,000,000 (75% complete), and cumulative revenue recognized through Year 1 was $400,000. What is the revenue recognized in Year 2?',
 '["$350,000", "$750,000", "$300,000", "$250,000"]'::jsonb,
 0,
 'Cumulative revenue at 75% complete = 75% x $1,000,000 = $750,000. Revenue recognized in Year 2 = Cumulative revenue to date - Revenue recognized in prior periods = $750,000 - $400,000 = $350,000. The cumulative catch-up approach ensures total revenue matches the percentage of completion.',
 'hard');

-- =============================================================================
-- Inventory — 30 questions (9 easy, 15 medium, 6 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company uses FIFO and has the following purchases: 100 units at $10, then 150 units at $12. It sells 120 units. What is the cost of goods sold?',
 '["$1,200", "$1,240", "$1,440", "$1,340"]'::jsonb,
 1,
 'Under FIFO, the oldest units are sold first. COGS = (100 x $10) + (20 x $12) = $1,000 + $240 = $1,240. The first 100 units at $10 are sold, then 20 of the 150 units purchased at $12.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company uses LIFO and has the following purchases: 100 units at $10, then 150 units at $12. It sells 120 units. What is the cost of goods sold?',
 '["$1,240", "$1,440", "$1,380", "$1,200"]'::jsonb,
 1,
 'Under LIFO, the newest units are sold first. COGS = (120 x $12) = $1,440. Wait — only 150 units at $12 are available, so all 120 come from the most recent layer. Actually: COGS = 120 x $12 = $1,440. The ending inventory = (100 x $10) + (30 x $12) = $1,360.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company has the following inventory data: beginning inventory 200 units at $8, purchases of 300 units at $10. Using weighted-average (periodic), what is the cost per unit?',
 '["$9.00", "$10.00", "$8.80", "$9.20"]'::jsonb,
 3,
 'Weighted-average cost = Total cost / Total units = (200 x $8 + 300 x $10) / (200 + 300) = ($1,600 + $3,000) / 500 = $4,600 / 500 = $9.20. This single unit cost is applied to both COGS and ending inventory under the periodic weighted-average method.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'Under ASC 330, inventory should be reported at:',
 '["Historical cost", "Lower of cost or net realizable value", "Net realizable value", "Fair value less costs to sell"]'::jsonb,
 1,
 'ASC 330 requires inventory to be measured at the lower of cost or net realizable value (LCNRV). Net realizable value is estimated selling price less reasonably predictable costs of completion, disposal, and transportation. This replaces the older lower of cost or market rule for non-LIFO inventory.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company has inventory with a cost of $50,000 and a net realizable value of $42,000. Under ASC 330, what is the carrying value of inventory?',
 '["$50,000", "$8,000", "$46,000", "$42,000"]'::jsonb,
 3,
 'Under the LCNRV rule, inventory is written down to $42,000 because NRV is lower than cost. The $8,000 write-down ($50,000 - $42,000) is recognized as a loss in the period. Inventory cannot be carried above its net realizable value.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'Under the periodic inventory system, cost of goods sold is calculated as:',
 '["Beginning inventory + Purchases - Ending inventory", "Sales revenue - Gross profit", "Purchases - Ending inventory", "Beginning inventory + Ending inventory - Purchases"]'::jsonb,
 0,
 'In a periodic system, COGS = Beginning inventory + Net purchases - Ending inventory. The cost of goods available for sale (beginning + purchases) minus what remains at year end (ending inventory) equals what was sold. A physical count determines ending inventory.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'In a perpetual inventory system using LIFO, the timing of sales during the period:',
 '["Does not affect the cost assigned to units sold", "Can result in different COGS than periodic LIFO", "Always produces the same COGS as periodic LIFO", "Requires a year-end adjustment to match periodic LIFO"]'::jsonb,
 1,
 'Under perpetual LIFO, each sale is costed using the most recent purchase at the time of sale. Under periodic LIFO, all sales are costed at year end using the most recent purchases for the entire period. These can produce different COGS figures because the layers available differ at each sale date versus year end.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company using FIFO and the perpetual system will compute the same COGS and ending inventory as FIFO under the periodic system:',
 '["Always", "Only when prices are rising", "Only when prices are falling", "Never"]'::jsonb,
 0,
 'FIFO produces the same results under both perpetual and periodic systems because the oldest costs are always assigned to COGS regardless of when the sale is recorded. The order of cost flow (first in, first out) is the same whether computed at each sale or at period end.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company has a LIFO reserve of $45,000. Beginning inventory under LIFO is $200,000. What would beginning inventory be under FIFO?',
 '["$200,000", "$155,000", "$245,000", "$225,000"]'::jsonb,
 2,
 'The LIFO reserve is the difference between FIFO inventory and LIFO inventory: LIFO Reserve = FIFO Inventory - LIFO Inventory. Therefore, FIFO Inventory = LIFO Inventory + LIFO Reserve = $200,000 + $45,000 = $245,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company''s LIFO reserve increased from $30,000 to $38,000 during the year. By how much is LIFO COGS higher than FIFO COGS?',
 '["$8,000", "$38,000", "$30,000", "$68,000"]'::jsonb,
 0,
 'The change in the LIFO reserve equals the difference between LIFO and FIFO COGS for the period. Increase = $38,000 - $30,000 = $8,000. LIFO COGS exceeds FIFO COGS by $8,000 because rising prices cause LIFO to assign higher recent costs to COGS.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'Under the gross profit method, a company has the following: beginning inventory $60,000, net purchases $240,000, net sales $350,000, and a historical gross profit rate of 40%. Estimated ending inventory is:',
 '["$90,000", "$120,000", "$150,000", "$60,000"]'::jsonb,
 0,
 'Estimated COGS = Net sales x (1 - Gross profit rate) = $350,000 x 60% = $210,000. Goods available for sale = $60,000 + $240,000 = $300,000. Estimated ending inventory = $300,000 - $210,000 = $90,000. The gross profit method estimates inventory without a physical count.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'The gross profit method is most commonly used for:',
 '["Annual financial statement preparation", "Auditing ending inventory balances", "Tax return preparation", "Interim financial reporting and estimating inventory losses from casualties"]'::jsonb,
 3,
 'The gross profit method provides an estimate of inventory and is most commonly used for interim financial reporting (when a physical count is impractical) and for estimating inventory losses from fires, floods, or theft. It is not precise enough for annual GAAP reporting.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'Under the retail inventory method, a company has the following at cost and retail: beginning inventory $40,000/$60,000, purchases $160,000/$240,000, and net sales of $220,000. Using the average cost retail method, what is estimated ending inventory at cost?',
 '["$53,333", "$80,000", "$60,000", "$48,000"]'::jsonb,
 0,
 'Cost-to-retail ratio = ($40,000 + $160,000) / ($60,000 + $240,000) = $200,000 / $300,000 = 66.67%. Ending inventory at retail = $300,000 - $220,000 = $80,000. Ending inventory at cost = $80,000 x 66.67% = $53,333.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'Which of the following inventory cost flow methods is NOT permitted under IFRS?',
 '["FIFO", "Specific identification", "Weighted average", "LIFO"]'::jsonb,
 3,
 'LIFO is prohibited under IFRS (IAS 2) because it often does not reflect the actual physical flow of goods and can result in outdated inventory values on the balance sheet. FIFO, weighted average, and specific identification are permitted under both GAAP and IFRS.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company has a purchase commitment to buy 5,000 units at $20 each. The market price at year end has dropped to $15 per unit. Under U.S. GAAP, the company should:',
 '["Ignore the decline since the purchase has not occurred", "Cancel the purchase commitment", "Record the inventory at $15 per unit", "Recognize a loss of $25,000 and disclose the commitment"]'::jsonb,
 3,
 'When the contracted price exceeds the current market price for a noncancelable purchase commitment, a loss must be recognized. Loss = 5,000 x ($20 - $15) = $25,000. The commitment must also be disclosed in the notes. This is similar to the LCNRV write-down concept.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'Under dollar-value LIFO, the base-year cost of ending inventory is $110,000 and the base-year cost of beginning inventory is $100,000. The current-year price index is 1.08. What is the dollar-value LIFO ending inventory?',
 '["$110,000", "$110,800", "$108,000", "$118,800"]'::jsonb,
 1,
 'The $10,000 increment (at base-year cost) is the new LIFO layer. This layer is restated to current-year dollars: $10,000 x 1.08 = $10,800. Dollar-value LIFO ending inventory = Base layer ($100,000) + New layer ($10,800) = $110,800.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company has beginning inventory of $80,000 (at base-year cost) under dollar-value LIFO. Ending inventory at current-year cost is $99,000 and the price index is 1.10. Has a new LIFO layer been added?',
 '["No, because the increase is only due to price changes", "Yes, because ending inventory at current cost exceeds beginning inventory", "Yes, because ending inventory at base-year cost ($90,000) exceeds beginning inventory ($80,000)", "No, because there is a LIFO liquidation"]'::jsonb,
 0,
 'Convert ending inventory to base-year cost: $99,000 / 1.10 = $90,000. Since $90,000 > $80,000, a new layer of $10,000 (at base-year cost) has been added. The new layer is then inflated by the current price index: $10,000 x 1.10 = $11,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'During a period of rising prices, which inventory method will result in the highest net income?',
 '["LIFO", "FIFO", "Weighted average", "All methods produce the same net income"]'::jsonb,
 1,
 'During rising prices, FIFO assigns the oldest (lowest) costs to COGS, resulting in the lowest COGS and highest gross profit and net income. LIFO assigns the newest (highest) costs to COGS, resulting in the highest COGS and lowest net income. Weighted average falls between the two.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company using LIFO sells inventory from an old LIFO layer that was acquired at significantly lower costs. This is known as:',
 '["LIFO adoption", "LIFO reserve adjustment", "LIFO liquidation", "LIFO conformity"]'::jsonb,
 2,
 'A LIFO liquidation occurs when quantities sold exceed quantities purchased, causing older, lower-cost LIFO layers to be matched against current revenues. This artificially inflates gross profit and net income because old costs are matched with current selling prices.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'Which of the following costs should be included in the cost of inventory under U.S. GAAP?',
 '["Freight-in on purchased goods", "Storage costs for finished goods awaiting sale", "Abnormal spoilage costs", "Selling and distribution costs"]'::jsonb,
 0,
 'Freight-in (transportation costs to bring inventory to its present location) is an inventoriable cost under U.S. GAAP. Storage costs for finished goods, abnormal spoilage, and selling/distribution costs are period expenses that are expensed as incurred, not capitalized to inventory.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company uses the LCNRV rule. Inventory cost is $100,000, replacement cost is $85,000, estimated selling price is $110,000, and costs to complete and sell are $18,000. What is the inventory carrying value?',
 '["$85,000", "$92,000", "$100,000", "$110,000"]'::jsonb,
 1,
 'Net realizable value = Estimated selling price - Costs to complete and sell = $110,000 - $18,000 = $92,000. Compare cost ($100,000) to NRV ($92,000). Since NRV is lower, inventory is written down to $92,000. Replacement cost is not used under the simplified LCNRV rule for non-LIFO inventory.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company writes down inventory by $15,000 under LCNRV. In the subsequent period, the NRV recovers by $10,000. Under U.S. GAAP, the company:',
 '["Reverses the write-down by $10,000", "Cannot reverse the write-down — the reduced amount becomes the new cost basis", "Reverses the write-down but only up to the original cost", "Records a gain of $10,000 in OCI"]'::jsonb,
 1,
 'Under U.S. GAAP, once inventory is written down under LCNRV, the write-down establishes a new cost basis. Subsequent recoveries in value are not recognized — the write-down is permanent. This differs from IFRS, which permits reversal of inventory write-downs up to original cost.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'Under the conventional retail method (lower of average cost or market), markdowns are:',
 '["Included in the numerator only", "Included in both the numerator and denominator of the cost-to-retail ratio", "Excluded from the cost-to-retail ratio calculation", "Added to purchases at cost"]'::jsonb,
 0,
 'Under the conventional retail method, net markdowns are excluded from the cost-to-retail ratio (denominator is not reduced by markdowns). This produces a lower cost-to-retail percentage, which approximates the lower of average cost or market. Markups are included in the ratio.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company using FIFO has 300 units in ending inventory. The most recent purchases were 200 units at $15 and 400 units at $13 (before that). What is the ending inventory value?',
 '["$3,900", "$4,500", "$3,000", "$4,300"]'::jsonb,
 3,
 'Under FIFO, ending inventory consists of the most recent purchases. Ending inventory = (200 x $15) + (100 x $13) = $3,000 + $1,300 = $4,300. The 200 most recent units at $15 are in ending inventory, plus 100 of the 400 units purchased at $13.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company has goods in transit, shipped FOB shipping point, that cost $25,000. At year end, the goods have not yet arrived. The inventory should be:',
 '["Included in the buyer''s inventory", "Included in the seller''s inventory", "Not included in either party''s inventory until delivered", "Split between buyer and seller"]'::jsonb,
 0,
 'FOB shipping point means title transfers to the buyer when goods are shipped. Even though the goods have not arrived, they belong to the buyer and should be included in the buyer''s ending inventory. The buyer also bears the risk of loss during transit.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company has goods on consignment at a retailer''s location. The goods cost $30,000. For inventory purposes, these goods should be reported as:',
 '["Inventory of the retailer (consignee)", "A sale by the consignor", "Inventory of the consignor", "Accounts receivable of the consignor"]'::jsonb,
 2,
 'Consigned goods remain the inventory of the consignor until they are sold by the consignee to a third party. Title does not transfer to the consignee merely by placing goods at their location. The consignor reports the $30,000 as inventory on its balance sheet.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A manufacturing company has the following costs: raw materials used $80,000, direct labor $60,000, manufacturing overhead $40,000, and selling expenses $30,000. What is the total inventoriable cost?',
 '["$180,000", "$210,000", "$140,000", "$200,000"]'::jsonb,
 0,
 'Inventoriable (product) costs include raw materials, direct labor, and manufacturing overhead: $80,000 + $60,000 + $40,000 = $180,000. Selling expenses are period costs expensed as incurred and are not included in inventory.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'Under the retail inventory method, which of the following is treated as a reduction of the retail value of goods available for sale?',
 '["Freight-in", "Employee discounts", "Net markups", "Purchase returns at retail"]'::jsonb,
 3,
 'Purchase returns at retail reduce the retail value of goods available for sale because the returned goods are no longer available for sale. Freight-in is a cost addition only (no retail component). Employee discounts are deducted from sales. Net markups increase the retail value.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company that uses LIFO for tax purposes must also use LIFO for financial reporting. This requirement is known as the:',
 '["Matching principle", "LIFO reserve requirement", "Revenue recognition principle", "LIFO conformity rule"]'::jsonb,
 3,
 'The LIFO conformity rule (IRC Section 472) requires that a company using LIFO for tax purposes must also use LIFO as its primary inventory method for financial reporting. This is one of the few instances where tax rules dictate financial reporting method choices.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Inventory',
 'A company has the following data for a specific inventory item: cost $20, replacement cost $17, selling price $25, normal profit margin $5, and costs to sell $3. Using the lower of cost or market rule for LIFO inventory, what is the designated market value?',
 '["$17", "$22", "$17 (bounded between floor and ceiling)", "$20"]'::jsonb,
 2,
 'For LIFO inventory, the three-step market test applies. Ceiling (NRV) = $25 - $3 = $22. Floor = NRV - Normal profit = $22 - $5 = $17. Replacement cost = $17. Market = middle value of RC, ceiling, floor. Since RC ($17) = Floor ($17), market = $17. Compare to cost ($20): LCM = $17.',
 'hard');-- FAR Chunk 2: Fixed Assets, Intangible Assets, Leases, Bonds and Debt, Equity

-- =============================================================================
-- Topic 1: Fixed Assets (30 questions)
-- Difficulty: 9 easy, 15 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Bartley Corp. purchased equipment for $120,000, paid $8,000 for shipping, $5,000 for installation, and $3,000 for a maintenance contract covering the first year. What amount should be capitalized as the cost of the equipment?',
 '["$120,000", "$128,000", "$133,000", "$136,000"]'::jsonb,
 2,
 'Under ASC 360, the cost of equipment includes all expenditures necessary to acquire the asset and prepare it for its intended use: purchase price ($120,000) + shipping ($8,000) + installation ($5,000) = $133,000. The first-year maintenance contract of $3,000 is a period expense, not a capitalizable cost, because it does not extend the asset''s useful life or enhance its productivity.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'A machine with a cost of $200,000, salvage value of $20,000, and useful life of 5 years is depreciated using the straight-line method. What is the annual depreciation expense?',
 '["$36,000", "$40,000", "$44,000", "$32,000"]'::jsonb,
 0,
 'Straight-line depreciation = (Cost - Salvage value) / Useful life = ($200,000 - $20,000) / 5 = $36,000 per year. This method allocates an equal amount of depreciation to each year of the asset''s useful life.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Equipment costing $100,000 with a salvage value of $10,000 and a 4-year useful life is depreciated using the double-declining-balance method. What is the depreciation expense in Year 2?',
 '["$25,000", "$12,500", "$22,500", "$50,000"]'::jsonb,
 0,
 'DDB rate = (1/4) x 2 = 50%. Year 1 depreciation = $100,000 x 50% = $50,000, leaving a book value of $50,000. Year 2 depreciation = $50,000 x 50% = $25,000. Under DDB, depreciation is applied to the declining book value without deducting salvage value, but the asset cannot be depreciated below its salvage value.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'An asset costing $90,000 with no salvage value and a 5-year useful life is depreciated using the sum-of-the-years''-digits method. What is the depreciation expense in Year 1?',
 '["$18,000", "$30,000", "$36,000", "$27,000"]'::jsonb,
 1,
 'SYD = 5+4+3+2+1 = 15. Year 1 fraction = 5/15 = 1/3. Depreciation = $90,000 x (5/15) = $30,000. The SYD method is an accelerated method that applies a decreasing fraction to the depreciable base each year, resulting in higher depreciation in early years.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Crane Co. owns a delivery truck expected to travel 200,000 miles over its useful life. The truck cost $80,000 with a $5,000 salvage value. In Year 1, the truck traveled 35,000 miles. What is Year 1 depreciation under the units-of-production method?',
 '["$14,000", "$13,125", "$12,250", "$15,750"]'::jsonb,
 1,
 'Depreciable base = $80,000 - $5,000 = $75,000. Rate per mile = $75,000 / 200,000 = $0.375. Year 1 depreciation = 35,000 miles x $0.375 = $13,125. The units-of-production method ties depreciation to actual usage rather than the passage of time.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Harper Inc. replaces the roof on its factory building at a cost of $250,000. The old roof had a net book value of $40,000. Under the component depreciation approach, how should Harper account for this transaction?',
 '["Expense $250,000 as a repair", "Capitalize $250,000 and continue depreciating the old roof", "Capitalize $250,000 and write off the $40,000 net book value of the old roof", "Capitalize only the incremental cost of $210,000"]'::jsonb,
 2,
 'Under the component depreciation approach, each significant component of a fixed asset is depreciated separately. When a component is replaced, the old component''s remaining book value ($40,000) is derecognized (written off as a loss), and the new component ($250,000) is capitalized and depreciated over its own useful life.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Finch Corp. has equipment with a carrying amount of $500,000. Due to declining market conditions, Finch estimates the undiscounted future cash flows from the equipment at $480,000 and the fair value at $420,000. Under ASC 360, what impairment loss should Finch recognize?',
 '["$0", "$20,000", "$80,000", "$60,000"]'::jsonb,
 2,
 'Under ASC 360, the recoverability test compares the carrying amount ($500,000) to the undiscounted future cash flows ($480,000). Since $480,000 < $500,000, the asset fails the recoverability test and is impaired. The impairment loss is measured as the difference between carrying amount and fair value: $500,000 - $420,000 = $80,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Lennox Co. has a machine with a carrying amount of $300,000. Undiscounted expected future cash flows are $320,000, and the fair value is $260,000. What impairment loss, if any, should Lennox record under ASC 360?',
 '["$40,000", "$60,000", "$20,000", "$0"]'::jsonb,
 3,
 'Under ASC 360, the first step is the recoverability test: compare the carrying amount ($300,000) to undiscounted future cash flows ($320,000). Since $320,000 > $300,000, the asset passes the recoverability test and no impairment is recognized, regardless of fair value. The two-step process prevents premature impairment recognition.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Which of the following expenditures should be capitalized rather than expensed?',
 '["Ordinary repairs that maintain an asset''s condition", "Repainting the exterior of a building", "Annual maintenance costs", "Replacement of a major component that extends the asset''s useful life"]'::jsonb,
 3,
 'Capital expenditures increase an asset''s future economic benefits by extending its useful life, increasing its capacity, or improving its efficiency. Replacing a major component extends useful life and therefore should be capitalized. Ordinary repairs, routine maintenance, and repainting merely maintain the asset in its current condition and are period expenses.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Pelton Corp. sold equipment with a cost of $150,000 and accumulated depreciation of $90,000 for $75,000 cash. What gain or loss should Pelton recognize on the disposal?',
 '["$15,000 gain", "$75,000 gain", "$15,000 loss", "$25,000 loss"]'::jsonb,
 0,
 'Book value = Cost - Accumulated depreciation = $150,000 - $90,000 = $60,000. Gain on disposal = Sale proceeds - Book value = $75,000 - $60,000 = $15,000 gain. The gain is recognized in the income statement in the period of disposal.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Westin Inc. incurs the following costs for a self-constructed asset: materials $400,000, direct labor $200,000, variable overhead $80,000, and allocated fixed overhead $60,000. What total amount should be capitalized?',
 '["$600,000", "$680,000", "$740,000", "$660,000"]'::jsonb,
 2,
 'For self-constructed assets under U.S. GAAP, all costs directly attributable to construction are capitalized, including materials ($400,000), direct labor ($200,000), variable overhead ($80,000), and a reasonable allocation of fixed overhead ($60,000). Total capitalized cost = $400,000 + $200,000 + $80,000 + $60,000 = $740,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Under ASC 410-20, an asset retirement obligation (ARO) should be initially measured at:',
 '["The undiscounted estimated cost to settle the obligation", "The fair value of the obligation, typically using expected present value techniques", "The replacement cost of the asset", "The carrying amount of the related fixed asset"]'::jsonb,
 1,
 'Under ASC 410-20, an ARO is initially recognized at fair value when a legal obligation exists and a reasonable estimate can be made. Fair value is typically measured using expected present value techniques, discounting the expected future settlement cost at a credit-adjusted risk-free rate. The corresponding amount is added to the carrying amount of the related long-lived asset.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Rucker Corp. recognized an ARO of $500,000 at a credit-adjusted risk-free rate of 6%. What is the accretion expense for Year 1?',
 '["$30,000", "$50,000", "$25,000", "$35,000"]'::jsonb,
 0,
 'Accretion expense increases the ARO liability over time to reflect the passage of time and the time value of money. Year 1 accretion = $500,000 x 6% = $30,000. This expense is classified as an operating expense, not interest expense, on the income statement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Quincy Inc. revises the estimated future cost to settle an ARO upward by $200,000. The current credit-adjusted risk-free rate at the time of revision is 5%. How should this upward revision be accounted for?',
 '["Recognize $200,000 as a current period expense", "Increase the ARO liability by $200,000 undiscounted and debit the asset", "Discount the $200,000 increase at the current 5% rate, increase the ARO liability and the related asset", "Record the $200,000 adjustment in other comprehensive income"]'::jsonb,
 2,
 'Under ASC 410-20, upward revisions to ARO estimates are treated as new layers of obligation. The increase is discounted at the current credit-adjusted risk-free rate (5%), and the present value of the increase is added to both the ARO liability and the carrying amount of the related asset. Downward revisions use the original discount rate.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Oakley Corp. exchanges old equipment (cost $80,000, accumulated depreciation $50,000, fair value $35,000) plus $10,000 cash for new equipment with a fair value of $45,000. The exchange has commercial substance. At what amount should Oakley record the new equipment?',
 '["$40,000", "$35,000", "$45,000", "$30,000"]'::jsonb,
 2,
 'When a nonmonetary exchange has commercial substance, the new asset is recorded at its fair value ($45,000). Oakley also recognizes a gain or loss: Book value of old asset = $80,000 - $50,000 = $30,000. Total consideration given = $30,000 + $10,000 cash = $40,000. Gain = $45,000 - $40,000 = $5,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'In a nonmonetary exchange that lacks commercial substance, how should the acquired asset be recorded?',
 '["At fair value of the asset received", "At fair value of the asset given up", "At the book value of the asset given up plus any cash paid", "At the lower of cost or fair value"]'::jsonb,
 2,
 'When a nonmonetary exchange lacks commercial substance, no gain is recognized. The acquired asset is recorded at the book value of the asset given up, plus any cash paid (or minus any cash received). This treatment defers gain recognition because the earning process is not considered complete when the exchange lacks commercial substance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'An asset costing $180,000 with a salvage value of $0 and a 6-year useful life is depreciated using the sum-of-the-years''-digits method. What is the depreciation expense in Year 3?',
 '["$34,286", "$25,714", "$30,000", "$42,857"]'::jsonb,
 0,
 'SYD = 6+5+4+3+2+1 = 21. Year 3 fraction = 4/21. Depreciation = $180,000 x (4/21) = $34,286 (rounded). In Year 3 of a 6-year life, the numerator is 6 - 3 + 1 = 4. The SYD method produces decreasing depreciation each year.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Mercer Inc. purchased land and a building together for $900,000. An independent appraisal values the land at $300,000 and the building at $700,000. At what amount should Mercer record the building?',
 '["$700,000", "$630,000", "$600,000", "$675,000"]'::jsonb,
 1,
 'When multiple assets are acquired in a lump-sum purchase, the total cost is allocated based on relative fair values. Total appraised value = $300,000 + $700,000 = $1,000,000. Building allocation = ($700,000 / $1,000,000) x $900,000 = $630,000. The land would be recorded at $270,000.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Equipment costing $240,000 with a salvage value of $40,000 and a 5-year useful life is depreciated using the double-declining-balance method. What is the depreciation expense in Year 3?',
 '["$34,560", "$38,400", "$24,000", "$57,600"]'::jsonb,
 0,
 'DDB rate = 2/5 = 40%. Year 1: $240,000 x 40% = $96,000 (BV = $144,000). Year 2: $144,000 x 40% = $57,600 (BV = $86,400). Year 3: $86,400 x 40% = $34,560 (BV = $51,840). Since $51,840 > salvage value of $40,000, the full $34,560 is recognized.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'A company with a fiscal year ending December 31 purchases equipment on April 1 for $72,000 with no salvage value and a 6-year useful life. Using straight-line depreciation, what is the depreciation expense for the first calendar year?',
 '["$12,000", "$9,000", "$6,000", "$10,000"]'::jsonb,
 1,
 'Annual depreciation = $72,000 / 6 = $12,000. Since the asset was purchased on April 1, only 9 months of depreciation are recorded in the first year: $12,000 x (9/12) = $9,000. Partial-year depreciation is required when an asset is acquired mid-year.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Greystone Corp. owns a factory building classified as held and used. The building has a carrying amount of $2,000,000 and expected undiscounted future cash flows of $1,800,000. The building''s fair value is $1,500,000 and its value in use (present value of future cash flows) is $1,600,000. Under ASC 360, what is the impairment loss?',
 '["$200,000", "$400,000", "$500,000", "$300,000"]'::jsonb,
 2,
 'Step 1 (recoverability test): Carrying amount ($2,000,000) > undiscounted cash flows ($1,800,000), so the asset is impaired. Step 2 (measurement): Impairment loss = Carrying amount - Fair value = $2,000,000 - $1,500,000 = $500,000. Under ASC 360, impairment is measured using fair value, not value in use. After impairment, the new carrying amount becomes $1,500,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'After recognizing an impairment loss on a long-lived asset under ASC 360, is subsequent reversal of the impairment permitted?',
 '["Yes, if the fair value increases above the original cost", "Yes, if the fair value increases above the written-down amount", "No, restoration of previously recognized impairment losses is prohibited under U.S. GAAP", "Yes, but only for assets held for sale"]'::jsonb,
 2,
 'Under U.S. GAAP (ASC 360), once an impairment loss is recognized on a long-lived asset held and used, it cannot be reversed, even if the asset''s fair value subsequently increases. This differs from IFRS, which permits reversal of impairment (except for goodwill). The written-down amount becomes the new cost basis for future depreciation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'A company has an asset group with a carrying amount of $1,200,000. The asset group generates identifiable cash flows. Expected undiscounted cash flows total $1,350,000 and the fair value of the group is $1,050,000. What impairment loss should be recognized under ASC 360?',
 '["$0", "$150,000", "$300,000", "$1,050,000"]'::jsonb,
 0,
 'Under ASC 360, the recoverability test for an asset group compares the carrying amount ($1,200,000) to undiscounted future cash flows ($1,350,000). Since $1,350,000 exceeds $1,200,000, the asset group passes the recoverability test and no impairment is recorded. The fair value is only relevant if the recoverability test fails.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Doyle Corp. capitalizes an ARO of $180,000 associated with a natural gas well. The well has an estimated useful life of 15 years. How should the asset retirement cost added to the well''s carrying amount be depreciated?',
 '["The ARO asset cost is not depreciated", "Over the remaining useful life of the well using a systematic and rational method", "Expensed immediately in the period the ARO is recognized", "Over 40 years using straight-line"]'::jsonb,
 1,
 'When an ARO is initially recognized, the corresponding asset retirement cost is added to the carrying amount of the related long-lived asset. This additional cost is depreciated over the remaining useful life of the asset using a systematic and rational method, consistent with the depreciation policy for the underlying asset.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Pratt Inc. exchanges a truck (cost $60,000, accumulated depreciation $40,000, fair value $25,000) for a different truck with a fair value of $25,000. The exchange has commercial substance. What gain or loss should Pratt recognize?',
 '["$5,000 gain", "$5,000 loss", "$15,000 gain", "$0"]'::jsonb,
 0,
 'Book value of old truck = $60,000 - $40,000 = $20,000. Fair value of old truck = $25,000. Since the exchange has commercial substance, gain = Fair value - Book value = $25,000 - $20,000 = $5,000 gain. When commercial substance exists, gains and losses are fully recognized on nonmonetary exchanges.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Benton Corp. incurs $50,000 to add a new wing to its office building, extending the building''s useful life by 10 years. How should this expenditure be classified?',
 '["Revenue expenditure — expense immediately", "Capital expenditure — capitalize and depreciate", "Deferred charge — amortize over the original useful life", "Contingent liability — disclose only"]'::jsonb,
 1,
 'Expenditures that extend an asset''s useful life, increase its capacity, or improve its efficiency are capital expenditures that should be capitalized and depreciated over the remaining (now extended) useful life. A building addition that extends useful life by 10 years clearly meets the capitalization criteria and is not merely a maintenance expense.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Atlas Corp. reclassifies equipment from held-and-used to held-for-sale. The equipment has a carrying amount of $400,000 and a fair value less costs to sell of $350,000. What accounting treatment is required at the reclassification date?',
 '["Continue depreciating the asset and disclose the held-for-sale classification", "Reverse any previously recognized depreciation", "Record no adjustment until the asset is sold", "Write down to $350,000, recognize a $50,000 loss, and cease depreciation"]'::jsonb,
 3,
 'Under ASC 360-10-45, when an asset is reclassified to held-for-sale, it is measured at the lower of its carrying amount or fair value less costs to sell. Since $350,000 < $400,000, a $50,000 loss is recognized. Depreciation ceases once an asset is classified as held-for-sale because it is no longer being used in operations.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Which of the following conditions must be met for an asset to be classified as held-for-sale under ASC 360?',
 '["The asset must be fully depreciated", "Management must commit to a plan to sell and the sale must be probable within one year", "A binding purchase agreement must exist", "The asset must be impaired"]'::jsonb,
 1,
 'Under ASC 360-10-45, held-for-sale classification requires that management has committed to a plan to sell the asset, the asset is available for immediate sale in its present condition, an active program to locate a buyer has been initiated, the sale is probable within one year, and the asset is being actively marketed at a reasonable price. A binding agreement is not required.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'Milton Inc. owns a manufacturing plant with a carrying amount of $5,000,000. Undiscounted future cash flows are $4,200,000 and the fair value is $3,800,000. Milton recognizes an impairment loss. Two years later, the plant''s fair value has increased to $4,500,000. What is the carrying amount after the fair value increase?',
 '["$3,800,000 (unchanged, plus subsequent depreciation adjustments)", "$4,500,000", "$5,000,000", "$4,200,000"]'::jsonb,
 0,
 'Under ASC 360, once an impairment is recognized, the new carrying amount ($3,800,000) becomes the new cost basis. Subsequent recovery of value is prohibited under U.S. GAAP for assets held and used. The carrying amount would be $3,800,000 less any depreciation taken since the impairment date, never adjusted upward for fair value recovery.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fixed Assets',
 'A machine has a cost of $150,000, salvage value of $10,000, and useful life of 10 years. After 4 years of straight-line depreciation, the company revises the remaining useful life to 4 years (from 6 remaining) and salvage value to $6,000. What is the revised annual depreciation?',
 '["$24,000", "$23,500", "$22,000", "$25,000"]'::jsonb,
 2,
 'After 4 years, accumulated depreciation = 4 x [($150,000 - $10,000) / 10] = 4 x $14,000 = $56,000. Book value = $150,000 - $56,000 = $94,000. Changes in accounting estimates are applied prospectively. Revised annual depreciation = (Book value - New salvage) / New remaining life = ($94,000 - $6,000) / 4 = $88,000 / 4 = $22,000.',
 'hard');

-- =============================================================================
-- Topic 2: Intangible Assets (28 questions)
-- Difficulty: 8 easy, 14 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Waverly Corp. acquires a patent from an unrelated party for $280,000. The patent has a remaining legal life of 14 years and an estimated useful life of 10 years. What is the annual amortization expense?',
 '["$20,000", "$28,000", "$14,000", "$40,000"]'::jsonb,
 1,
 'A finite-lived intangible asset is amortized over its useful life or legal life, whichever is shorter. Since the estimated useful life (10 years) is shorter than the legal life (14 years), amortization = $280,000 / 10 = $28,000 per year using the straight-line method.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Which of the following intangible assets is considered to have an indefinite useful life and should NOT be amortized?',
 '["A patent with 15 years remaining", "A franchise agreement for 20 years", "A trademark that can be renewed indefinitely at minimal cost", "A customer list with a 5-year attrition rate"]'::jsonb,
 2,
 'Under ASC 350, an intangible asset has an indefinite useful life when there is no foreseeable limit to the period over which it is expected to generate cash flows. A trademark that can be renewed indefinitely at minimal cost meets this criterion. It is not amortized but is tested for impairment at least annually. Patents, finite franchises, and customer lists all have finite lives.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Under ASC 350, how is goodwill tested for impairment?',
 '["By comparing the carrying amount of the reporting unit (including goodwill) to its fair value", "By comparing the carrying amount of goodwill to the undiscounted future cash flows it generates", "By amortizing goodwill over 10 years and testing for recoverability annually", "By comparing the book value of goodwill to its replacement cost"]'::jsonb,
 0,
 'Under ASC 350, the quantitative goodwill impairment test compares the fair value of the reporting unit to its carrying amount (including goodwill). If the carrying amount exceeds fair value, an impairment loss is recognized equal to the excess, limited to the amount of goodwill allocated to that reporting unit. Goodwill is not amortized under GAAP for public companies.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Hartley Inc. has a reporting unit with a carrying amount of $8,000,000 (including goodwill of $2,500,000). The fair value of the reporting unit is $6,200,000. What goodwill impairment loss should Hartley recognize?',
 '["$1,800,000", "$2,500,000", "$800,000", "$0"]'::jsonb,
 0,
 'Under ASC 350, impairment loss = Carrying amount - Fair value = $8,000,000 - $6,200,000 = $1,800,000. This amount does not exceed the goodwill balance of $2,500,000, so the full $1,800,000 is recognized as the impairment loss. After the impairment, goodwill is reduced to $700,000 ($2,500,000 - $1,800,000).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'A reporting unit has a carrying amount of $5,000,000 including goodwill of $1,200,000. The fair value of the reporting unit is $3,500,000. What goodwill impairment loss should be recognized?',
 '["$1,500,000", "$1,200,000", "$300,000", "$3,500,000"]'::jsonb,
 1,
 'Carrying amount ($5,000,000) exceeds fair value ($3,500,000) by $1,500,000. However, the impairment loss on goodwill is capped at the goodwill balance of $1,200,000. The remaining $300,000 excess would need to be evaluated under ASC 360 for potential impairment of the reporting unit''s other long-lived assets.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Under ASC 350, a company may elect to perform a qualitative assessment before the quantitative goodwill impairment test. What is the purpose of this qualitative assessment?',
 '["To determine whether goodwill should be amortized", "To assess whether it is more likely than not that the fair value of the reporting unit is less than its carrying amount", "To calculate the exact impairment loss", "To determine the appropriate discount rate for valuation"]'::jsonb,
 1,
 'The qualitative assessment (Step 0) allows a company to evaluate qualitative factors to determine whether it is more likely than not (>50% likelihood) that the fair value of a reporting unit is less than its carrying amount. If it is not more likely than not, the quantitative test can be skipped, reducing the cost and effort of impairment testing.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Nexgen Corp. incurs the following research and development costs: materials consumed $120,000, salaries of R&D personnel $200,000, depreciation on R&D equipment (no alternative future use) $45,000, and allocated overhead $30,000. Under ASC 730, what amount should be expensed as R&D?',
 '["$320,000", "$365,000", "$395,000", "$350,000"]'::jsonb,
 2,
 'Under ASC 730, all research and development costs are expensed as incurred. This includes materials ($120,000), personnel costs ($200,000), depreciation on equipment with no alternative future use ($45,000), and a reasonable allocation of overhead ($30,000). Total R&D expense = $120,000 + $200,000 + $45,000 + $30,000 = $395,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'A software company incurs $500,000 in costs before establishing technological feasibility and $300,000 after establishing technological feasibility but before the product is available for general release. Under ASC 985-20, what amount should be capitalized?',
 '["$800,000", "$500,000", "$300,000", "$0"]'::jsonb,
 2,
 'Under ASC 985-20, costs of developing computer software to be sold or leased are expensed as R&D until technological feasibility is established. After technological feasibility, costs are capitalized until the product is available for general release. Therefore, the $500,000 pre-feasibility costs are expensed and the $300,000 post-feasibility costs are capitalized.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Which of the following costs should be capitalized as an intangible asset?',
 '["Costs incurred to internally develop a brand name", "Research costs for a new product", "Advertising costs to promote a new trademark", "Legal fees to successfully defend a patent"]'::jsonb,
 3,
 'Legal fees incurred to successfully defend a patent are capitalized because they protect the future economic benefits of the patent. Internally developed brand names, advertising costs, and research costs must all be expensed as incurred under U.S. GAAP. Only externally acquired intangibles and certain legal costs related to protecting existing intangibles are capitalized.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Cascade Inc. acquires a customer list for $180,000. The list is expected to generate economic benefits for 6 years. After 3 years, the remaining expected useful life is reassessed to be 2 years (from 3 remaining). What is the revised annual amortization?',
 '["$30,000", "$45,000", "$60,000", "$90,000"]'::jsonb,
 1,
 'After 3 years, accumulated amortization = 3 x ($180,000 / 6) = $90,000. Remaining book value = $180,000 - $90,000 = $90,000. The change in useful life is a change in estimate applied prospectively. Revised amortization = $90,000 / 2 remaining years = $45,000 per year.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Under U.S. GAAP, which of the following is the correct treatment of internally generated goodwill?',
 '["Capitalize and amortize over 40 years", "Capitalize and test for impairment annually", "Expense as incurred — internally generated goodwill cannot be recognized as an asset", "Capitalize only if it exceeds a materiality threshold"]'::jsonb,
 2,
 'Internally generated goodwill is not recognized as an asset under U.S. GAAP because it cannot be reliably measured and does not arise from a specific transaction. Only goodwill acquired in a business combination is recognized. The costs associated with internally building goodwill (advertising, training, customer relations) are expensed as incurred.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Davenport Corp. acquires a company in a business combination and identifies the following intangible assets: customer relationships ($400,000, 8-year life), trade name ($250,000, indefinite life), and assembled workforce ($150,000). Under ASC 805, how should the assembled workforce be treated?',
 '["Capitalize and test for impairment annually", "Amortize over the employees'' expected tenure", "Include in goodwill — assembled workforce is not separately recognizable in a business combination", "Expense immediately upon acquisition"]'::jsonb,
 0,
 'Under ASC 805, an assembled workforce does not meet the criteria for separate recognition as an intangible asset in a business combination because it is not separable and does not arise from contractual or legal rights. The value of the assembled workforce is subsumed into goodwill. Customer relationships and trade names do meet the recognition criteria.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'A finite-lived intangible asset with a carrying amount of $350,000 has estimated undiscounted future cash flows of $300,000 and a fair value of $240,000. What impairment loss should be recognized?',
 '["$50,000", "$60,000", "$0", "$110,000"]'::jsonb,
 3,
 'Finite-lived intangible assets are tested for impairment under ASC 360, using the same two-step process as other long-lived assets. Step 1: Carrying amount ($350,000) > undiscounted cash flows ($300,000), so the asset is impaired. Step 2: Impairment loss = Carrying amount - Fair value = $350,000 - $240,000 = $110,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Phelps Inc. acquires a franchise agreement for $600,000. The franchise has a 15-year term with no renewal option. Using straight-line amortization, what is the carrying amount after 5 years?',
 '["$400,000", "$200,000", "$500,000", "$300,000"]'::jsonb,
 0,
 'Annual amortization = $600,000 / 15 years = $40,000. After 5 years, accumulated amortization = 5 x $40,000 = $200,000. Carrying amount = $600,000 - $200,000 = $400,000. The franchise is a finite-lived intangible amortized over its contractual term.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Under ASC 730, which of the following costs should be capitalized rather than expensed as research and development?',
 '["Salaries of scientists conducting basic research", "Materials consumed in R&D experiments", "Equipment acquired for R&D that has alternative future use in other projects", "Costs of operating an R&D facility dedicated solely to a single project"]'::jsonb,
 2,
 'Under ASC 730, equipment acquired for R&D that has alternative future use beyond the current project is capitalized as a fixed asset and depreciated over its useful life — the depreciation is then allocated to R&D expense. Equipment with no alternative future use is expensed immediately. All other listed costs are expensed as incurred.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Wellington Corp. develops software for internal use. The company spent $80,000 during the preliminary project stage, $350,000 during the application development stage, and $40,000 during the post-implementation stage. Under ASC 350-40, what amount should be capitalized?',
 '["$470,000", "$350,000", "$430,000", "$80,000"]'::jsonb,
 1,
 'Under ASC 350-40 (internal-use software), costs incurred during the preliminary project stage ($80,000) and post-implementation stage ($40,000) are expensed as incurred. Only costs incurred during the application development stage ($350,000) are capitalized, including coding, testing, and installation. This results in $350,000 capitalized.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'After recognizing a goodwill impairment loss, can the impairment be reversed in a subsequent period under U.S. GAAP?',
 '["Yes, if the fair value of the reporting unit recovers", "Yes, but only up to the original goodwill amount", "No, reversal of goodwill impairment is prohibited under U.S. GAAP", "Yes, if a new qualitative assessment indicates recovery"]'::jsonb,
 2,
 'Under ASC 350, once a goodwill impairment loss is recognized, it cannot be reversed in subsequent periods, even if the fair value of the reporting unit later recovers. This prohibition exists because any recovery in value would be considered internally generated goodwill, which is not recognized under U.S. GAAP. IFRS also prohibits reversal of goodwill impairment.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'In a business combination, Sinclair Corp. acquires an in-process research and development project valued at $2,000,000. The project has not yet reached technological feasibility. Under ASC 805, how should Sinclair account for this?',
 '["Expense $2,000,000 immediately upon acquisition", "Record as goodwill", "Capitalize and amortize over 10 years", "Capitalize as an indefinite-lived intangible asset until the project is completed or abandoned"]'::jsonb,
 3,
 'Under ASC 805, in-process research and development (IPR&D) acquired in a business combination is recognized as an intangible asset at fair value. It is classified as an indefinite-lived intangible until the project is either completed (at which point it becomes finite-lived and is amortized) or abandoned (at which point it is written off). This differs from pre-ASC 805 treatment that required immediate expensing.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Langford Corp. acquires a copyright for $120,000. The copyright has a remaining legal life of 50 years but an expected useful life of 8 years. How should Langford amortize the copyright?',
 '["Over 50 years (the legal life)", "Over 8 years (the useful life)", "Over 29 years (the average of legal and useful life)", "No amortization — copyrights have indefinite lives"]'::jsonb,
 1,
 'Finite-lived intangible assets are amortized over the shorter of their legal life or estimated useful life. Since the expected useful life of 8 years is shorter than the remaining legal life of 50 years, the copyright should be amortized over 8 years. Annual amortization = $120,000 / 8 = $15,000.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Richfield Corp. has a reporting unit with a carrying amount of $12,000,000 including goodwill of $3,000,000. The fair value of the reporting unit is $13,500,000. What goodwill impairment loss should be recognized?',
 '["$0", "$1,500,000", "$3,000,000", "$500,000"]'::jsonb,
 0,
 'Since the fair value of the reporting unit ($13,500,000) exceeds its carrying amount ($12,000,000), goodwill is not impaired. No impairment loss is recognized. Under ASC 350, an impairment loss is only recognized when the carrying amount of the reporting unit exceeds its fair value.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Under ASC 985-20, technological feasibility for a software product is established when:',
 '["The first unit of the product has been sold", "A product design has been completed", "All planning, designing, coding, and testing activities necessary to establish that the product can be produced to meet its design specifications have been completed", "The product concept has been evaluated for technical and financial viability"]'::jsonb,
 0,
 'Under ASC 985-20, technological feasibility is established when all planning, designing, coding, and testing activities necessary to demonstrate that the product can be produced to meet its design specifications are complete. This includes either completion of a detail program design or a working model. Costs prior to this point are R&D; costs after this point are capitalized.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'A company acquires a broadcast license for $900,000 in a business combination. The license has a 5-year term and is expected to be renewed indefinitely at minimal cost. How should the license be accounted for?',
 '["Amortize over 5 years", "Amortize over 40 years", "Classify as indefinite-lived and test for impairment annually", "Expense immediately"]'::jsonb,
 2,
 'Under ASC 350, an intangible asset with a finite contractual term is classified as indefinite-lived if renewal is expected and can be accomplished at minimal cost without material modifications. Since the broadcast license is expected to be renewed indefinitely at minimal cost, it is classified as indefinite-lived, not amortized, and tested for impairment annually.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Fenwick Corp. holds an indefinite-lived trade name with a carrying amount of $500,000. Its fair value has declined to $380,000. What impairment loss should Fenwick recognize?',
 '["$0", "$120,000", "$380,000", "$500,000"]'::jsonb,
 1,
 'Indefinite-lived intangible assets other than goodwill are tested for impairment by comparing the carrying amount to fair value (a one-step test). Since the carrying amount ($500,000) exceeds fair value ($380,000), an impairment loss of $120,000 is recognized. Unlike the two-step test for finite-lived assets, there is no recoverability test for indefinite-lived intangibles.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Morton Inc. acquires all the assets of a competitor for $10,000,000. The fair value of identifiable net assets acquired is $7,200,000. What amount of goodwill should Morton recognize?',
 '["$2,800,000", "$10,000,000", "$7,200,000", "$0"]'::jsonb,
 0,
 'Goodwill in a business combination = Purchase price - Fair value of identifiable net assets = $10,000,000 - $7,200,000 = $2,800,000. Goodwill represents the excess of the purchase price over the fair value of net identifiable assets and is an asset that represents future economic benefits from synergies and other factors not individually identified.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Rayburn Corp. spent $2,400,000 developing a new pharmaceutical compound. The costs include $1,600,000 before FDA approval and $800,000 after FDA approval for production ramp-up and packaging design. Under ASC 730, how much should be expensed as R&D?',
 '["$2,400,000", "$1,600,000", "$800,000", "$0"]'::jsonb,
 0,
 'Under ASC 730, R&D costs are expensed as incurred regardless of whether regulatory approval has been obtained. All $2,400,000 is R&D expense. FDA approval does not serve as a capitalization trigger for pharmaceutical development costs under U.S. GAAP. Post-approval production and packaging design costs are also considered part of the R&D process until commercial production begins.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Under U.S. GAAP, how should a company account for website development costs?',
 '["Expense all website costs as incurred", "Capitalize all website costs", "Apply ASC 350-50: expense planning stage costs, capitalize application and infrastructure development costs, expense post-launch operating costs", "Apply ASC 730 and expense as R&D"]'::jsonb,
 2,
 'ASC 350-50 provides guidance for website development costs, following a model similar to internal-use software (ASC 350-40). Planning stage costs are expensed. Application and infrastructure development costs (coding, graphics, content input) are capitalized. Operating stage costs (training, administration, maintenance) are expensed as incurred.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'A company acquires a non-compete agreement for $240,000 as part of a business combination. The agreement has a 3-year term. After 1 year, the former competitor dies. What accounting entry is required?',
 '["Continue amortizing over the remaining 2 years", "Write off the remaining carrying amount of $160,000 as a loss", "Reclassify the remaining balance to goodwill", "No entry is needed"]'::jsonb,
 1,
 'The non-compete agreement has lost its economic value because the competitor''s death eliminates the restriction''s purpose. The remaining carrying amount ($240,000 - $80,000 amortization = $160,000) should be written off as a loss. When events indicate that an intangible asset no longer has future economic benefit, the carrying amount is removed from the balance sheet.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Intangible Assets',
 'Graham Corp. capitalizes $450,000 of software development costs after technological feasibility under ASC 985-20. The software product has estimated total revenue of $3,000,000 over its economic life. In Year 1, revenue was $900,000. The remaining economic life is 4 years. What is the amortization for Year 1?',
 '["$135,000", "$112,500", "$90,000", "$150,000"]'::jsonb,
 0,
 'Under ASC 985-20, capitalized software costs are amortized using the greater of: (1) the ratio of current revenue to total expected revenue, or (2) straight-line over the remaining economic life. Revenue ratio: ($900,000 / $3,000,000) x $450,000 = $135,000. Straight-line: $450,000 / 4 years = $112,500. The greater amount is $135,000, so Year 1 amortization is $135,000.',
 'hard');

-- =============================================================================
-- Topic 3: Leases (32 questions)
-- Difficulty: 10 easy, 16 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Under ASC 842, which of the following criteria, if met, would classify a lease as a finance lease for the lessee?',
 '["The lease term is for 50% or more of the asset''s remaining economic life", "The present value of lease payments equals or exceeds 90% of the asset''s fair value", "The lease requires variable payments based on an index", "The lease includes a renewal option"]'::jsonb,
 1,
 'Under ASC 842, a lease is classified as a finance lease if any one of five criteria is met: (1) transfer of ownership, (2) purchase option reasonably certain to be exercised, (3) lease term is a major part (typically 75%+) of economic life, (4) PV of payments equals or exceeds substantially all (typically 90%+) of fair value, or (5) the asset is specialized with no alternative use to the lessor.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Kessler Corp. enters into a 5-year lease for equipment with annual payments of $50,000 due at the beginning of each year. The lessee''s incremental borrowing rate is 6%. The present value of an annuity due of 1 at 6% for 5 periods is 4.4651. What is the initial right-of-use asset?',
 '["$250,000", "$223,256", "$223,255", "$210,618"]'::jsonb,
 1,
 'Since payments are due at the beginning of each year, this is an annuity due. ROU asset = Annual payment x PV annuity due factor = $50,000 x 4.4651 = $223,255 (rounded to $223,256). The ROU asset initially equals the lease liability, adjusted for any prepaid payments, lease incentives, or initial direct costs.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Under ASC 842, a lessee with an operating lease recognizes lease expense on what basis?',
 '["Accelerated — higher expense in early years", "Based on the effective interest method", "Straight-line over the lease term", "Variable — based on actual usage"]'::jsonb,
 2,
 'For operating leases under ASC 842, the lessee recognizes a single lease cost on a straight-line basis over the lease term, regardless of the payment pattern. This differs from finance leases, where the lessee recognizes amortization of the ROU asset and interest on the lease liability separately, resulting in a front-loaded expense pattern.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Delaney Inc. enters a 4-year finance lease with annual payments of $80,000 at year-end. The implicit rate is 8%. The PV of an ordinary annuity at 8% for 4 years is 3.3121. What is the interest expense in Year 1?',
 '["$21,197", "$26,497", "$20,000", "$6,400"]'::jsonb,
 0,
 'Lease liability = $80,000 x 3.3121 = $264,968 (rounded). Year 1 interest expense = $264,968 x 8% = $21,197 (rounded). For finance leases, interest expense is calculated using the effective interest method applied to the outstanding lease liability balance. The remaining payment ($80,000 - $21,197 = $58,803) reduces the liability.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Under ASC 842, when should a lessee use its incremental borrowing rate (IBR) to measure the lease liability?',
 '["Always, regardless of whether the implicit rate is known", "Only when the lease is classified as operating", "When the rate implicit in the lease is not readily determinable", "Only for leases shorter than 12 months"]'::jsonb,
 2,
 'Under ASC 842, the lessee should use the rate implicit in the lease to discount lease payments. However, if the implicit rate is not readily determinable (which is common because it requires knowledge of the lessor''s residual value estimate), the lessee uses its incremental borrowing rate — the rate at which it could borrow on a collateralized basis over a similar term.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Porter Corp. leases office space for 3 years with monthly payments of $5,000. The lease qualifies for the short-term lease exemption under ASC 842. How should Porter account for this lease?',
 '["Recognize a ROU asset and lease liability", "Recognize lease expense on a straight-line basis without recording a ROU asset or lease liability", "Capitalize the total lease payments as a prepaid asset", "This lease does not qualify for the short-term exemption because it exceeds 12 months"]'::jsonb,
 3,
 'The short-term lease exemption under ASC 842 applies only to leases with a term of 12 months or less (at commencement, after considering renewal options reasonably certain to be exercised). A 3-year lease does not qualify. Porter must recognize a ROU asset and lease liability. The exemption eliminates balance sheet recognition only for qualifying short-term leases.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Under ASC 842, which of the following is included in the measurement of the lease liability?',
 '["Variable lease payments that depend on an index or rate", "Variable payments based on usage or performance", "Executory costs such as insurance paid directly by the lessee", "Initial direct costs incurred by the lessee"]'::jsonb,
 0,
 'Under ASC 842, the lease liability includes fixed payments, variable payments based on an index or rate (measured using the index at commencement), amounts probable under residual value guarantees, and purchase option exercise prices if reasonably certain. Variable payments based on usage/performance are expensed as incurred. Insurance and initial direct costs are not included in the liability.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Bennett Corp. enters a 10-year equipment lease. The equipment has a 12-year economic life. The lease does not transfer ownership and has no purchase option. The PV of lease payments is 85% of the equipment''s fair value. Under ASC 842, how should this lease be classified by the lessee?',
 '["Operating lease", "Short-term lease", "Finance lease", "Direct financing lease"]'::jsonb,
 2,
 'The lease term (10 years) is 83% of the economic life (12 years), which constitutes a "major part" (typically 75%+) of the remaining economic life. This meets one of the five finance lease classification criteria under ASC 842. Even though the PV of payments (85%) does not meet the 90% threshold, meeting any single criterion is sufficient for finance lease classification.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Under a finance lease, the lessee''s total expense in Year 1 consists of:',
 '["Only the lease payment amount", "Straight-line lease expense", "Amortization of the ROU asset plus interest on the lease liability", "Interest expense only"]'::jsonb,
 2,
 'For a finance lease, the lessee recognizes two separate expense components: (1) amortization of the ROU asset, typically on a straight-line basis, and (2) interest expense on the lease liability using the effective interest method. This front-loads total expense compared to an operating lease, because interest is higher in early years when the outstanding liability is larger.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'A lessor enters a lease that transfers ownership to the lessee at the end of the term. Under ASC 842, how should the lessor classify this lease?',
 '["Sales-type lease", "Operating lease", "Direct financing lease", "Leveraged lease"]'::jsonb,
 0,
 'Under ASC 842, a lessor classifies a lease as sales-type if any of the five criteria are met (same as lessee finance lease criteria). Transfer of ownership at the end of the lease term is the first criterion. In a sales-type lease, the lessor derecognizes the asset, recognizes a net investment, and records selling profit or loss at commencement.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Under ASC 842, when does a lessor classify a lease as a direct financing lease?',
 '["When the lease meets one of the five classification criteria and the lessor earns a selling profit", "When none of the five classification criteria are met", "When the lease meets one of the five criteria, there is no selling profit, and the lessor''s residual asset is guaranteed", "When the lease term is less than 12 months"]'::jsonb,
 2,
 'A direct financing lease exists when the lease meets at least one of the five classification criteria (otherwise it would be operating), but the fair value of the asset equals its carrying amount (no selling profit) and the lessor has guaranteed its residual value investment (or the unguaranteed residual is not significant). If there is a selling profit, it is sales-type.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Thornton Corp. enters a 6-year operating lease as lessee with the following annual payments: Years 1-2, $40,000; Years 3-6, $60,000. What is the annual straight-line lease expense?',
 '["$40,000", "$50,000", "$53,333", "$60,000"]'::jsonb,
 2,
 'Total lease payments = (2 x $40,000) + (4 x $60,000) = $80,000 + $240,000 = $320,000. Straight-line expense = $320,000 / 6 years = $53,333 per year. Under ASC 842, operating lease expense is recognized on a straight-line basis regardless of the payment schedule, with the difference between the payment and expense adjusting the ROU asset.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Norwood Inc. modifies a 5-year operating lease in Year 3 by extending the lease term by 2 years and increasing annual payments from $30,000 to $35,000. Under ASC 842, how should the modification be accounted for?',
 '["Treat as a new lease from the modification date", "Remeasure the lease liability and adjust the ROU asset as of the modification date", "Continue with the original lease terms and recognize the modification at the end of the original term", "Expense the additional payments as incurred"]'::jsonb,
 1,
 'Under ASC 842, a lease modification that does not grant a right to use an additional asset is accounted for by remeasuring the lease liability at the modification date using the revised payments, revised term, and a revised discount rate. The corresponding adjustment is made to the ROU asset. This is a prospective treatment from the modification date.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Under ASC 842, which of the following is a required disclosure for a lessee?',
 '["The lessor''s implicit rate used in the lease", "A maturity analysis of lease liabilities showing undiscounted cash flows", "The lessor''s cost basis in the leased asset", "The fair value of the leased asset at lease commencement"]'::jsonb,
 1,
 'ASC 842 requires lessees to disclose a maturity analysis of lease liabilities showing undiscounted future lease payments for each of the first five years and a total for remaining years, reconciled to the lease liabilities on the balance sheet. Lessees are not required to disclose the lessor''s implicit rate, cost basis, or fair value of the leased asset.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'A lessee enters a 3-year lease with annual payments of $24,000, paid at year-end. The lessee also receives a $6,000 lease incentive from the lessor at commencement. The lessee''s IBR is 5%, and the PV of an ordinary annuity at 5% for 3 periods is 2.7232. What is the initial ROU asset?',
 '["$72,000", "$65,357", "$59,357", "$71,357"]'::jsonb,
 2,
 'Lease liability = $24,000 x 2.7232 = $65,357 (rounded). The ROU asset = Lease liability - Lease incentives received = $65,357 - $6,000 = $59,357. Under ASC 842, lease incentives received reduce the initial measurement of the ROU asset. They do not reduce the lease liability.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Madison Corp. leases a building for 8 years with annual payments of $100,000 at year-end. The building has a remaining economic life of 20 years. The PV of lease payments is 60% of the building''s fair value. The lease does not transfer ownership and has no purchase option. Under ASC 842, how is this lease classified?',
 '["Finance lease", "Operating lease", "Sales-type lease", "Direct financing lease"]'::jsonb,
 1,
 'None of the five finance lease criteria are met: (1) no ownership transfer, (2) no purchase option, (3) lease term (8 years) is only 40% of economic life (20 years) — not a major part, (4) PV of payments is 60% of fair value — does not meet 90% threshold, (5) the building is not specialized. Since no criterion is met, this is an operating lease.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Under a sales-type lease, the lessor recognizes which of the following at lease commencement?',
 '["Only lease revenue on a straight-line basis over the lease term", "Depreciation expense on the leased asset and interest income", "A net investment in the lease, selling profit (or loss), and derecognition of the underlying asset", "Only a receivable equal to the total undiscounted lease payments"]'::jsonb,
 2,
 'At commencement of a sales-type lease, the lessor derecognizes the underlying asset from its balance sheet, recognizes a net investment in the lease (lease receivable + unguaranteed residual asset), and records any selling profit or loss (difference between the fair value and carrying amount of the asset). Interest income is recognized over the lease term.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Crawford Corp. enters into a 5-year finance lease for a machine. The lease liability at commencement is $400,000 and the discount rate is 7%. Annual payments of $97,560 are due at year-end. What is the lease liability balance at the end of Year 1?',
 '["$330,440", "$302,440", "$400,000", "$325,560"]'::jsonb,
 0,
 'Year 1 interest = $400,000 x 7% = $28,000. Year 1 payment = $97,560. Principal reduction = $97,560 - $28,000 = $69,560. Ending lease liability = $400,000 - $69,560 = $330,440. Under the effective interest method, each payment is split between interest expense and reduction of the lease liability.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Under ASC 842, how is a lessee''s ROU asset for a finance lease amortized?',
 '["Using the effective interest method", "On a straight-line basis over the shorter of the lease term or the asset''s useful life", "Using units of production", "ROU assets are not amortized under finance leases"]'::jsonb,
 1,
 'For a finance lease, the lessee amortizes the ROU asset on a straight-line basis (unless another systematic basis is more representative) over the shorter of the lease term or the useful life of the underlying asset. If the lease transfers ownership or the lessee is reasonably certain to exercise a purchase option, amortization is over the asset''s useful life.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'A lessee enters a 4-year equipment lease. The annual payment is $30,000, payable at the beginning of each year. The lessee incurs $4,000 in initial direct costs. The IBR is 6%, and the PV of an annuity due at 6% for 4 periods is 3.6730. What is the initial ROU asset?',
 '["$110,190", "$120,000", "$114,190", "$116,190"]'::jsonb,
 2,
 'Lease liability = $30,000 x 3.6730 = $110,190. Under ASC 842, the ROU asset = Lease liability + Initial direct costs = $110,190 + $4,000 = $114,190. Initial direct costs are added to the ROU asset and amortized over the lease term. They are not included in the lease liability measurement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Garrison Inc. is a lessor that enters a 6-year operating lease for a building with an annual rent of $120,000. Garrison incurs $18,000 in initial direct costs. Under ASC 842, how should Garrison recognize the initial direct costs?',
 '["Expense immediately", "Defer and amortize on a straight-line basis over the 6-year lease term", "Add to the carrying amount of the building and depreciate", "Recognize as a reduction in lease revenue in Year 1"]'::jsonb,
 1,
 'Under ASC 842, initial direct costs incurred by a lessor in an operating lease are deferred and recognized as expense on the same basis as the lease income (straight-line over the lease term). Annual amortization = $18,000 / 6 = $3,000 per year. This treatment matches the cost recognition with the related revenue.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Under ASC 842, which of the following is NOT considered a lease?',
 '["A contract to use specific office space for 3 years", "A contract for warehouse space where the customer controls access and usage", "A contract for exclusive use of a vehicle for 2 years", "A contract for dedicated server capacity where the supplier can substitute the server at any time without the customer''s approval"]'::jsonb,
 3,
 'Under ASC 842, a lease requires an identified asset that the customer controls. If the supplier has a substantive right to substitute the asset throughout the period of use (the substitution is practical and the supplier benefits economically), the asset is not considered identified, and the contract is a service arrangement, not a lease.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Palmer Corp. enters a 5-year operating lease on January 1, Year 1, with rent-free periods for the first 6 months. Annual payments are $0 for the first 6 months and $60,000 per year for Years 1.5 through 5. Total payments over the lease are $210,000. What is the annual lease expense?',
 '["$42,000", "$60,000", "$46,667", "$35,000"]'::jsonb,
 0,
 'Under ASC 842, operating lease expense is recognized on a straight-line basis over the entire lease term, including rent-free periods. Total lease payments = $210,000. Straight-line annual expense = $210,000 / 5 years = $42,000 per year. The rent-free period does not eliminate expense recognition — it is spread evenly across the full term.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Under ASC 842, a lease modification that grants the lessee a right to use an additional asset not included in the original lease, at a price commensurate with its standalone price, should be accounted for as:',
 '["A modification to the existing lease", "An impairment of the ROU asset", "A termination of the old lease and commencement of a new lease", "A separate new lease"]'::jsonb,
 3,
 'Under ASC 842, a lease modification that grants the lessee the right to use an additional asset and the increase in consideration is commensurate with the standalone price of the additional right of use (adjusted for the contract circumstances) is accounted for as a separate new lease. The original lease is unaffected by this modification.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Harris Inc. has a 7-year finance lease with a ROU asset initially recorded at $560,000. The lease does not transfer ownership, and there is no purchase option. The underlying asset has a 10-year useful life. What is the annual amortization of the ROU asset?',
 '["$56,000", "$80,000", "$93,333", "$70,000"]'::jsonb,
 1,
 'Since the lease does not transfer ownership and there is no purchase option, the ROU asset is amortized over the lease term (7 years), not the asset''s useful life (10 years). Annual amortization = $560,000 / 7 = $80,000. If ownership transferred or a purchase option were reasonably certain, amortization would be over the 10-year useful life.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'A lessee enters a 5-year lease with a guaranteed residual value of $15,000. Annual payments are $40,000 at year-end. The IBR is 8%, and the PV of an ordinary annuity at 8% for 5 periods is 3.9927. The PV of $1 at 8% for 5 periods is 0.6806. What is the initial lease liability?',
 '["$200,000", "$169,917", "$159,708", "$170,117"]'::jsonb,
 1,
 'The lease liability includes the PV of lease payments plus the PV of the guaranteed residual value. PV of payments = $40,000 x 3.9927 = $159,708. PV of guaranteed residual = $15,000 x 0.6806 = $10,209. Total lease liability = $159,708 + $10,209 = $169,917. Guaranteed residual values are included because they represent a probable obligation of the lessee.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Fielding Corp. has a 10-month lease for a copier with monthly payments of $500. Fielding elects the short-term lease exemption under ASC 842. How should the lease be accounted for?',
 '["Recognize a ROU asset and lease liability of $5,000", "Recognize lease expense of $500 per month on a straight-line basis without recording a ROU asset or lease liability", "Capitalize the $5,000 as equipment", "Record a prepaid expense of $5,000"]'::jsonb,
 1,
 'The lease qualifies for the short-term lease exemption because the term is 12 months or less and there is no purchase option the lessee is reasonably certain to exercise. When the exemption is elected, the lessee recognizes lease expense on a straight-line basis (or another systematic basis) over the lease term without recording a ROU asset or lease liability on the balance sheet.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Under ASC 842, how are variable lease payments that are based on changes in the Consumer Price Index (CPI) treated at lease commencement?',
 '["Excluded from the lease liability — expensed as incurred", "Recognized as a separate financial instrument", "Included in the lease liability using projected future CPI estimates", "Included in the lease liability using the CPI at commencement"]'::jsonb,
 3,
 'Variable lease payments based on an index or rate (such as CPI) are included in the initial measurement of the lease liability using the index or rate as of the lease commencement date. They are not projected forward. Subsequent changes in the index or rate trigger remeasurement of the lease liability. Variable payments based on usage or performance are excluded.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'In a direct financing lease, how does the lessor recognize income over the lease term?',
 '["On a straight-line basis", "Using the effective interest method applied to the net investment in the lease", "Based on actual cash receipts", "By recognizing all income at lease commencement"]'::jsonb,
 1,
 'In a direct financing lease, the lessor recognizes interest income over the lease term using the effective interest method applied to the net investment in the lease. The selling profit, if any, is deferred at commencement and recognized over the lease term as part of the interest income pattern. This results in a declining income pattern as the net investment decreases.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Quinn Corp. is a lessor entering a 5-year lease for equipment with an annual rental of $70,000. The equipment has a carrying amount of $250,000 and a fair value of $250,000. The lease does not meet any of the five classification criteria. Under ASC 842, how should Quinn classify and account for this lease?',
 '["Sales-type lease — derecognize the asset", "Direct financing lease — record a net investment", "Operating lease — retain the asset and recognize rental income on a straight-line basis", "Finance lease — record a ROU asset"]'::jsonb,
 2,
 'Since none of the five classification criteria are met, the lessor classifies this as an operating lease. The lessor retains the underlying asset on its balance sheet, continues to depreciate it, and recognizes rental income on a straight-line basis over the lease term. The asset is presented as a fixed asset, not a net investment.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Lawson Inc. enters a 6-year finance lease as lessee. The initial ROU asset is $480,000 and the initial lease liability is $480,000. The discount rate is 5%, and annual payments of $94,694 are due at year-end. What is the total lease expense (amortization + interest) in Year 1?',
 '["$94,694", "$104,000", "$80,000", "$24,000"]'::jsonb,
 1,
 'ROU asset amortization (straight-line) = $480,000 / 6 = $80,000. Interest expense = $480,000 x 5% = $24,000. Total finance lease expense in Year 1 = $80,000 + $24,000 = $104,000. This exceeds the cash payment of $94,694 because finance lease expense is front-loaded — interest is higher in early years.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Leases',
 'Which of the following statements about subleases under ASC 842 is correct?',
 '["The original lessee always classifies the sublease as an operating lease", "The original lessee (intermediate lessor) classifies the sublease with reference to the underlying asset, not the ROU asset", "The original lessee classifies the sublease with reference to the ROU asset arising from the head lease", "Subleases are not addressed by ASC 842"]'::jsonb,
 2,
 'Under ASC 842, when a lessee subleases an asset, the intermediate lessor (original lessee) classifies the sublease with reference to the ROU asset arising from the head lease, not the underlying asset. The head lease remains on the intermediate lessor''s books. This is a change from ASC 840, which required reference to the underlying asset.',
 'hard');

-- =============================================================================
-- Topic 4: Bonds and Debt (30 questions)
-- Difficulty: 9 easy, 15 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Wellington Corp. issues $1,000,000 of 10-year, 8% bonds at 103. What are the total proceeds from the bond issuance?',
 '["$1,000,000", "$1,030,000", "$1,080,000", "$970,000"]'::jsonb,
 1,
 'When bonds are issued at 103, they are sold at 103% of par value. Proceeds = $1,000,000 x 1.03 = $1,030,000. The $30,000 premium represents the excess of proceeds over par and arises because the stated rate (8%) exceeds the market rate at issuance. The premium is amortized over the bond term, reducing interest expense.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Aldrich Inc. issues $500,000 of 5-year, 6% bonds when the market rate is 8%. The present value of $1 at 8% for 5 periods is 0.6806, and the PV of an ordinary annuity at 8% for 5 periods is 3.9927. What is the issue price of the bonds?',
 '["$500,000", "$460,081", "$480,000", "$340,300"]'::jsonb,
 1,
 'PV of principal = $500,000 x 0.6806 = $340,300. Annual interest = $500,000 x 6% = $30,000. PV of interest payments = $30,000 x 3.9927 = $119,781. Total issue price = $340,300 + $119,781 = $460,081. The bonds are issued at a discount because the stated rate (6%) is below the market rate (8%), making them less attractive at par.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'When bonds are issued at a premium, what happens to the carrying amount of the bonds over time?',
 '["It increases until maturity", "It fluctuates based on market interest rates", "It remains constant at the issue price", "It decreases until it equals the face amount at maturity"]'::jsonb,
 3,
 'When bonds are issued at a premium, the carrying amount (face value + unamortized premium) decreases over time as the premium is amortized. At maturity, the carrying amount equals the face amount because the entire premium has been amortized. Premium amortization reduces interest expense below the cash interest paid each period.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Chambers Corp. has bonds outstanding with a face value of $800,000, carrying amount of $780,000, and a stated rate of 7%. The market rate at issuance was 8%. Using the effective interest method, what is the interest expense for the first period?',
 '["$64,000", "$56,000", "$62,400", "$54,600"]'::jsonb,
 0,
 'Under the effective interest method, interest expense = Carrying amount x Market rate = $780,000 x 8% = $62,400. The cash interest paid = $800,000 x 7% = $56,000. The difference of $6,400 is the discount amortization, which increases the carrying amount. The effective interest method produces a constant rate of interest on the outstanding balance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Under the straight-line method of bond discount amortization, a $60,000 discount on a 10-year bond results in what annual amortization amount?',
 '["$3,000", "$60,000", "$12,000", "$6,000"]'::jsonb,
 3,
 'Under the straight-line method, the total discount is divided evenly over the bond''s life. Annual amortization = $60,000 / 10 years = $6,000. Each period, $6,000 of the discount is amortized, increasing the carrying amount and increasing interest expense above the cash interest payment. The straight-line method is acceptable when it does not produce materially different results from the effective interest method.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Morrison Corp. issues $2,000,000 of bonds at par and incurs $40,000 in bond issuance costs (underwriting fees, legal costs). Under ASC 835-30, how should the issuance costs be reported?',
 '["As an asset — deferred charge amortized over the bond term", "As additional paid-in capital", "As a current period expense", "As a direct deduction from the carrying amount of the bonds"]'::jsonb,
 3,
 'Under ASC 835-30, debt issuance costs are reported as a direct deduction from the face amount of the related debt on the balance sheet, similar to a debt discount. They are amortized over the life of the debt using the effective interest method (or straight-line if not materially different), increasing interest expense each period.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Pemberton Inc. has $1,000,000 of 6% bonds outstanding with a carrying amount of $960,000. Pemberton retires the bonds early by purchasing them on the open market for $975,000. What gain or loss should Pemberton recognize?',
 '["$15,000 gain", "$15,000 loss", "$25,000 loss", "$25,000 gain"]'::jsonb,
 1,
 'Gain or loss on early extinguishment = Carrying amount - Reacquisition price = $960,000 - $975,000 = ($15,000) loss. The carrying amount includes the remaining discount. Since the reacquisition price exceeds the carrying amount, Pemberton recognizes a $15,000 loss. Under ASC 470-50, this is reported in the income statement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Dalton Corp. issues $3,000,000 of 10-year, 5% bonds at 98. The bonds pay interest semi-annually. What is the total discount to be amortized over the bond''s life?',
 '["$30,000", "$150,000", "$90,000", "$60,000"]'::jsonb,
 3,
 'Issue price = $3,000,000 x 0.98 = $2,940,000. Discount = Par value - Issue price = $3,000,000 - $2,940,000 = $60,000. This discount will be amortized over the 10-year (20 semi-annual periods) bond term, increasing interest expense above cash interest paid each period.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Under the effective interest method, bonds issued at a premium will have:',
 '["Interest expense greater than the cash interest payment each period", "Interest expense less than the cash interest payment each period", "Interest expense equal to the cash interest payment each period", "Increasing interest expense each period"]'::jsonb,
 1,
 'When bonds are issued at a premium, the market rate is less than the stated rate. Interest expense (carrying amount x market rate) is less than cash interest paid (face value x stated rate). The difference is premium amortization that reduces the carrying amount. Each period, the carrying amount decreases, causing interest expense to decrease slightly.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Haines Corp. has $5,000,000 of convertible bonds outstanding with a carrying amount of $4,850,000. Each $1,000 bond is convertible into 50 shares of $10 par common stock. All bondholders convert. What is the total credit to common stock and APIC?',
 '["$5,000,000 to common stock", "$2,500,000 to common stock and $2,350,000 to APIC", "$4,850,000 total — allocated between common stock and APIC", "$4,850,000 to common stock only"]'::jsonb,
 2,
 'Under the book value method (ASC 470-20), when convertible bonds are converted, the carrying amount of the bonds ($4,850,000) is transferred to equity. Number of shares = ($5,000,000 / $1,000) x 50 = 250,000 shares. Common stock at par = 250,000 x $10 = $2,500,000. APIC = $4,850,000 - $2,500,000 = $2,350,000. No gain or loss is recognized.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Under ASC 470-20, an induced conversion of convertible debt occurs when the issuer:',
 '["Calls the bonds for redemption at maturity", "Offers additional consideration (a sweetener) to induce bondholders to convert before the original terms require", "Forces conversion through a provision in the original bond agreement", "Repurchases the bonds on the open market"]'::jsonb,
 1,
 'An induced conversion occurs when the issuer offers consideration beyond the original conversion terms (such as additional cash, shares, or other sweeteners) to incentivize bondholders to convert earlier than they otherwise would. The additional consideration is recognized as an expense (debt conversion expense) equal to the fair value of the inducement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Foster Inc. issues $1,000,000 of bonds at par and incurs $25,000 in issuance costs. What is the carrying amount of the bonds immediately after issuance?',
 '["$1,000,000", "$1,025,000", "$975,000", "$997,500"]'::jsonb,
 2,
 'Under ASC 835-30, bond issuance costs are presented as a direct deduction from the carrying amount of the debt. Carrying amount = Par value - Issuance costs = $1,000,000 - $25,000 = $975,000. The issuance costs will be amortized over the bond term, increasing the effective interest expense.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Whitaker Corp. issues $4,000,000 of 10-year, 7% bonds at 105. The premium is amortized using the straight-line method. What is the annual interest expense?',
 '["$280,000", "$300,000", "$260,000", "$320,000"]'::jsonb,
 2,
 'Cash interest = $4,000,000 x 7% = $280,000. Premium = $4,000,000 x 0.05 = $200,000. Annual premium amortization (straight-line) = $200,000 / 10 = $20,000. Interest expense = Cash interest - Premium amortization = $280,000 - $20,000 = $260,000. Premium amortization reduces interest expense because the issuer received more than par.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Brennan Inc. has bonds outstanding with a face value of $2,000,000 and a carrying amount of $2,080,000 (issued at a premium). The company retires the bonds at 101. What gain or loss should be recognized?',
 '["$60,000 gain", "$60,000 loss", "$20,000 gain", "$80,000 gain"]'::jsonb,
 0,
 'Reacquisition price = $2,000,000 x 1.01 = $2,020,000. Gain on extinguishment = Carrying amount - Reacquisition price = $2,080,000 - $2,020,000 = $60,000 gain. The carrying amount includes the unamortized premium. Since the company paid less than the carrying amount, a gain is recognized.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Under the effective interest method, how does interest expense on bonds issued at a discount change over the life of the bonds?',
 '["It remains constant each period", "It decreases each period", "It increases each period", "It alternates between increasing and decreasing"]'::jsonb,
 2,
 'Under the effective interest method for bonds issued at a discount, the carrying amount increases each period as the discount is amortized. Since interest expense = Carrying amount x Market rate, and the carrying amount is increasing, interest expense also increases each period. The effective interest method produces a constant interest rate, but a changing dollar amount.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Langley Corp. issues $600,000 of 5-year, 9% bonds at par on October 1, Year 1. Interest is paid semi-annually on April 1 and October 1. What interest expense should Langley report for the calendar year ended December 31, Year 1?',
 '["$54,000", "$27,000", "$13,500", "$40,500"]'::jsonb,
 2,
 'The bonds were issued on October 1, so only 3 months of interest (October through December) accrues by year-end. Annual interest = $600,000 x 9% = $54,000. Quarterly interest = $54,000 x (3/12) = $13,500. An adjusting entry at December 31 debits interest expense and credits interest payable for $13,500.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Under the fair value option (ASC 825-10), a company elects to measure its bonds payable at fair value. At year-end, the bonds'' fair value has decreased by $50,000 due to an increase in the company''s own credit risk. Where is this $50,000 change reported?',
 '["In net income", "It is not recognized", "As a direct adjustment to retained earnings", "In other comprehensive income (OCI)"]'::jsonb,
 3,
 'Under ASC 825-10, when the fair value option is elected for financial liabilities, changes in fair value attributable to instrument-specific credit risk (the company''s own credit risk) are reported in OCI, not in net income. All other components of the fair value change are reported in net income. This prevents earnings volatility from a company''s own credit deterioration.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Clifton Corp. has a bond outstanding with a carrying amount of $1,500,000 and a fair value of $1,550,000. Clifton has not elected the fair value option. At what amount should the bond be reported on the balance sheet?',
 '["$1,550,000", "$1,500,000", "$1,525,000", "The higher of carrying amount or fair value"]'::jsonb,
 1,
 'Under U.S. GAAP, financial liabilities are measured at amortized cost unless the fair value option has been elected. Since Clifton has not elected the fair value option, the bond is reported at its carrying amount (amortized cost) of $1,500,000. The fair value of $1,550,000 may be disclosed in the notes but does not affect the balance sheet amount.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Newton Inc. issues bonds with a face value of $1,000,000 and detachable stock warrants. The bonds without the warrants would sell for $960,000, and the warrants have a fair value of $80,000. How should Newton allocate the proceeds?',
 '["$1,000,000 to bonds, $0 to warrants", "$960,000 to bonds and $80,000 to warrants", "$923,077 to bonds and $76,923 to warrants", "$920,000 to bonds and $80,000 to warrants"]'::jsonb,
 2,
 'When bonds are issued with detachable stock warrants, the proceeds are allocated between the bonds and warrants based on their relative fair values. Total fair value = $960,000 + $80,000 = $1,040,000. Bonds: ($960,000 / $1,040,000) x $1,000,000 = $923,077. Warrants: ($80,000 / $1,040,000) x $1,000,000 = $76,923. The warrant portion is credited to APIC.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Which of the following is a characteristic of a bond issued at par?',
 '["The stated rate is less than the market rate", "The stated rate equals the market rate at the time of issuance", "The stated rate is greater than the market rate", "The bond has no coupon payments"]'::jsonb,
 1,
 'A bond is issued at par (100% of face value) when the stated (coupon) rate equals the market (effective) rate at the time of issuance. Investors are willing to pay exactly face value because the coupon payments provide a return equal to the market rate. If the stated rate exceeds the market rate, bonds sell at a premium; if below, at a discount.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Stratton Corp. has $10,000,000 of bonds outstanding with a carrying amount of $9,700,000. The bonds have a stated rate of 6%. Using the effective interest method and a market rate of 7%, what is the interest expense for the first semi-annual period?',
 '["$300,000", "$291,000", "$350,000", "$339,500"]'::jsonb,
 3,
 'Semi-annual interest expense = Carrying amount x (Market rate / 2) = $9,700,000 x (7% / 2) = $9,700,000 x 3.5% = $339,500. Cash interest = $10,000,000 x (6% / 2) = $300,000. The difference of $39,500 is the discount amortization for the semi-annual period.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'A company issues zero-coupon bonds with a face value of $5,000,000 due in 10 years. The bonds are issued at $2,313,775 (market rate of 8%). What is the interest expense in Year 1?',
 '["$0", "$400,000", "$185,102", "$500,000"]'::jsonb,
 2,
 'Zero-coupon bonds pay no periodic interest, but interest expense is still recognized using the effective interest method. Year 1 interest expense = Carrying amount x Market rate = $2,313,775 x 8% = $185,102. This amount is added to the carrying amount (discount amortization), increasing the bond''s book value toward face value at maturity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Hartman Corp. issues $2,000,000 of convertible bonds at 106. Under ASC 470-20 (if no beneficial conversion feature exists), how should the $120,000 premium be accounted for?',
 '["Allocated between debt and equity components", "Recorded entirely as a liability premium and amortized over the bond term", "Credited to APIC for the conversion feature", "Recognized as revenue at issuance"]'::jsonb,
 1,
 'Under ASC 470-20, traditional convertible debt (without a beneficial conversion feature and when no separate equity component is identified) is recorded entirely as a liability. The $120,000 premium ($2,000,000 x 0.06) is recorded as a bond premium and amortized over the term of the bonds, reducing interest expense. No amount is allocated to equity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Garner Inc. issues $3,000,000 of 8% bonds at 97 on January 1, Year 1. The bonds mature in 5 years and pay interest annually. Using the straight-line method, what is the interest expense for Year 1?',
 '["$240,000", "$258,000", "$270,000", "$222,000"]'::jsonb,
 1,
 'Cash interest = $3,000,000 x 8% = $240,000. Discount = $3,000,000 x 0.03 = $90,000. Annual discount amortization (straight-line) = $90,000 / 5 = $18,000. Interest expense = Cash interest + Discount amortization = $240,000 + $18,000 = $258,000. Discount amortization increases interest expense above the cash paid.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Under U.S. GAAP, what types of debt covenants must be disclosed in the financial statements?',
 '["Only covenants that have been violated", "All significant debt covenants, including key terms and any violations", "Only affirmative covenants requiring specific actions", "Covenants are only disclosed if the debt is classified as current"]'::jsonb,
 1,
 'U.S. GAAP requires disclosure of significant debt covenants in the notes to the financial statements, including the key terms of the covenants, any violations during the period, and whether violations have been waived. Disclosure is required regardless of whether covenants have been violated, as users need this information to assess credit risk and liquidity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Osborne Corp. has a $5,000,000 loan that violates a debt covenant at the balance sheet date. The lender has not waived the violation. Under ASC 470-10, how should the loan be classified?',
 '["Long-term liability because the original maturity exceeds one year", "Reclassified to equity", "Contingent liability disclosed in the notes only", "Current liability because the violation gives the lender the right to demand repayment"]'::jsonb,
 3,
 'Under ASC 470-10, when a debtor violates a covenant at the balance sheet date and the violation gives the lender the right to demand repayment within one year, the debt must be classified as a current liability — unless the lender waives the violation for a period of at least one year (or the debtor cures the violation after the balance sheet date but before financial statement issuance).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Knox Corp. issues $1,000,000 of bonds at par on March 1, Year 1. The bonds carry a 6% stated rate with interest payable on September 1 and March 1. How much accrued interest should Knox report on its December 31, Year 1, balance sheet?',
 '["$60,000", "$30,000", "$20,000", "$40,000"]'::jsonb,
 2,
 'Interest was last paid on September 1. From September 1 to December 31 is 4 months. Accrued interest = $1,000,000 x 6% x (4/12) = $20,000. This is recorded as interest payable (current liability) with a corresponding debit to interest expense at the December 31 adjusting entry.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Dunn Corp. refinances a $2,000,000 short-term note payable with a 5-year long-term note on February 15, Year 2. The financial statements for Year 1 are issued on March 1, Year 2. Under ASC 470-10, how should the original short-term note be classified on the December 31, Year 1, balance sheet?',
 '["Current liability — the refinancing occurred after the balance sheet date", "Long-term liability — the refinancing was completed before the financial statements were issued", "Current liability — post-balance-sheet refinancings never affect classification", "Contingent liability"]'::jsonb,
 1,
 'Under ASC 470-10, a short-term obligation may be excluded from current liabilities and classified as long-term if the entity has the intent to refinance on a long-term basis and demonstrates the ability to do so — either through an actual refinancing completed before the financial statements are issued or through a binding financing agreement. Dunn completed the refinancing before issuance.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Emerson Corp. issues $800,000 of 10-year, 5% bonds at 94. Bond issuance costs are $12,000. What is the initial carrying amount of the bonds on the balance sheet?',
 '["$752,000", "$740,000", "$788,000", "$800,000"]'::jsonb,
 1,
 'Issue price = $800,000 x 0.94 = $752,000. Under ASC 835-30, bond issuance costs ($12,000) are presented as a direct deduction from the carrying amount. Initial carrying amount = $752,000 - $12,000 = $740,000. Both the discount and issuance costs will be amortized over the bond term, increasing interest expense.',
 'medium');

-- =============================================================================
-- Topic 5: Equity (30 questions)
-- Difficulty: 9 easy, 15 medium, 6 hard
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Barton Corp. issues 10,000 shares of $5 par value common stock for $12 per share. What is the total credit to additional paid-in capital (APIC)?',
 '["$50,000", "$0", "$120,000", "$70,000"]'::jsonb,
 3,
 'Total proceeds = 10,000 shares x $12 = $120,000. Common stock at par = 10,000 x $5 = $50,000. APIC = Proceeds - Par value = $120,000 - $50,000 = $70,000. When stock is issued above par, the excess over par is credited to APIC, which represents the amount paid by shareholders in excess of the stock''s legal capital.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Millbrook Inc. issues 5,000 shares of no-par common stock with a stated value of $8 per share for $15 per share. How should the issuance be recorded?',
 '["Debit cash $75,000; credit common stock $75,000", "Debit cash $40,000; credit common stock $40,000", "Debit cash $75,000; credit common stock $8,000 and APIC $67,000", "Debit cash $75,000; credit common stock $40,000 and APIC $35,000"]'::jsonb,
 3,
 'Total cash = 5,000 x $15 = $75,000. Common stock (at stated value) = 5,000 x $8 = $40,000. APIC = $75,000 - $40,000 = $35,000. When no-par stock has a stated value, the stated value functions like par value — amounts received in excess of stated value are credited to APIC.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Which of the following is a characteristic of cumulative preferred stock?',
 '["Preferred shareholders can convert their shares to common stock", "Preferred shareholders participate in profits beyond the stated dividend rate", "Preferred shareholders vote on all corporate matters", "Unpaid dividends from prior years must be paid before common dividends"]'::jsonb,
 3,
 'Cumulative preferred stock requires that all dividends in arrears (unpaid dividends from prior years) must be paid before any dividends can be paid to common shareholders. If dividends are skipped in a year, they accumulate as dividends in arrears. This feature protects preferred shareholders'' income priority over common shareholders.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Ashton Corp. has 20,000 shares of $100 par, 6% cumulative preferred stock and 100,000 shares of $10 par common stock outstanding. No dividends were paid in Year 1 or Year 2. In Year 3, Ashton declares $500,000 in total dividends. How much goes to preferred shareholders?',
 '["$120,000", "$360,000", "$500,000", "$240,000"]'::jsonb,
 1,
 'Annual preferred dividend = 20,000 x $100 x 6% = $120,000. Dividends in arrears: Year 1 ($120,000) + Year 2 ($120,000) = $240,000. Year 3 current dividend = $120,000. Total preferred claim = $240,000 + $120,000 = $360,000. Since $500,000 > $360,000, preferred receives $360,000 and common receives $140,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Glendale Inc. purchases 3,000 shares of its own common stock at $20 per share to be held as treasury stock using the cost method. What is the journal entry?',
 '["Debit treasury stock $60,000; credit cash $60,000", "Debit common stock $60,000; credit cash $60,000", "Debit retained earnings $60,000; credit cash $60,000", "Debit APIC $60,000; credit cash $60,000"]'::jsonb,
 0,
 'Under the cost method, treasury stock is debited at the total cost of the shares acquired. Treasury stock = 3,000 x $20 = $60,000. Treasury stock is a contra-equity account that reduces total shareholders'' equity. The par value and APIC of the original issuance are not affected when using the cost method.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Glendale Inc. (from the previous question) reissues 1,000 of its treasury shares (acquired at $20 per share) for $25 per share. Using the cost method, what is the journal entry?',
 '["Debit cash $25,000; credit treasury stock $20,000 and APIC-treasury stock $5,000", "Debit cash $25,000; credit treasury stock $25,000", "Debit cash $25,000; credit common stock $25,000", "Debit cash $25,000; credit retained earnings $5,000 and treasury stock $20,000"]'::jsonb,
 0,
 'Under the cost method, treasury stock is credited at cost ($20 per share x 1,000 = $20,000). The excess received ($25,000 - $20,000 = $5,000) is credited to APIC from treasury stock transactions. Treasury stock reissuances above cost increase APIC; they never create revenue or gain on the income statement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Glendale Inc. reissues another 1,000 treasury shares (acquired at $20 per share) for $17 per share. APIC from treasury stock transactions has a balance of $5,000. Using the cost method, what is the journal entry?',
 '["Debit cash $17,000 and APIC-treasury stock $3,000; credit treasury stock $20,000", "Debit cash $17,000 and retained earnings $3,000; credit treasury stock $20,000", "Debit cash $17,000; credit treasury stock $17,000", "Debit cash $17,000 and loss on treasury stock $3,000; credit treasury stock $20,000"]'::jsonb,
 0,
 'Under the cost method, treasury stock is credited at cost ($20,000). The shortfall ($20,000 - $17,000 = $3,000) is first debited against APIC from treasury stock transactions (available balance $5,000 > $3,000 needed). No retained earnings debit is required since APIC from treasury transactions is sufficient to absorb the deficiency.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Fenwick Corp. declares a 10% stock dividend when 100,000 shares of $5 par common stock are outstanding and the market price is $30 per share. This is a small stock dividend. What is the journal entry?',
 '["Debit retained earnings $300,000; credit common stock $50,000 and APIC $250,000", "Debit retained earnings $50,000; credit common stock $50,000", "Debit retained earnings $150,000; credit common stock $50,000 and APIC $100,000", "Debit APIC $300,000; credit common stock $300,000"]'::jsonb,
 0,
 'A small stock dividend (less than 20-25% of outstanding shares) is recorded at the fair market value of the shares distributed. Shares issued = 100,000 x 10% = 10,000. Retained earnings debit = 10,000 x $30 = $300,000. Common stock credit (par) = 10,000 x $5 = $50,000. APIC credit = $300,000 - $50,000 = $250,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'When a company declares a large stock dividend (greater than 20-25% of outstanding shares), how is it recorded?',
 '["At the fair market value of the shares issued", "At the par value of the shares issued", "No journal entry is required — only a memo entry", "At the average cost of outstanding shares"]'::jsonb,
 1,
 'A large stock dividend (typically greater than 20-25% of outstanding shares) is recorded at par value. Retained earnings is debited and common stock is credited for the par value of the shares issued. No amount is credited to APIC. The rationale is that large distributions are expected to decrease the market price proportionally, making fair value capitalization inappropriate.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Kensington Corp. has 200,000 shares of $10 par common stock outstanding. The company declares a 2-for-1 stock split. After the split, what are the total shares outstanding and the par value per share?',
 '["400,000 shares at $10 par", "200,000 shares at $5 par", "400,000 shares at $5 par", "100,000 shares at $20 par"]'::jsonb,
 2,
 'In a 2-for-1 stock split, the number of shares doubles and the par value per share is halved. New shares = 200,000 x 2 = 400,000. New par = $10 / 2 = $5. Total par value of common stock remains the same ($2,000,000). A stock split requires no journal entry — only a memo entry noting the new shares and par value.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Which of the following transactions increases total shareholders'' equity?',
 '["Declaration of a cash dividend", "Purchase of treasury stock", "Issuance of common stock above par", "Declaration of a stock dividend"]'::jsonb,
 2,
 'Issuing common stock above par increases equity: cash is debited, and common stock plus APIC are credited. Cash dividend declarations decrease equity (debit retained earnings, credit dividends payable). Treasury stock purchases decrease equity (debit contra-equity account). Stock dividends reclassify within equity (retained earnings to common stock/APIC) but do not change total equity.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'What is the effect of a stock dividend on retained earnings, total equity, and earnings per share (EPS)?',
 '["Retained earnings decrease; total equity decreases; EPS decreases", "Retained earnings decrease; total equity unchanged; EPS increases", "Retained earnings unchanged; total equity unchanged; EPS unchanged", "Retained earnings decrease; total equity unchanged; EPS decreases"]'::jsonb,
 3,
 'A stock dividend transfers an amount from retained earnings to paid-in capital (common stock and APIC), so retained earnings decreases. Total equity is unchanged because it is a reclassification within equity. EPS decreases because the number of shares outstanding increases while net income remains the same.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Prescott Corp. has 50,000 shares of $100 par, 8% noncumulative preferred stock and 500,000 shares of common stock outstanding. In Year 1, no dividends were paid. In Year 2, total dividends declared are $600,000. How much is paid to preferred shareholders?',
 '["$400,000", "$800,000", "$600,000", "$200,000"]'::jsonb,
 0,
 'Annual preferred dividend = 50,000 x $100 x 8% = $400,000. Since the preferred stock is noncumulative, Year 1 unpaid dividends do not carry forward as dividends in arrears. In Year 2, preferred shareholders receive only the current year dividend of $400,000. The remaining $200,000 goes to common shareholders.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Bradford Inc. has 10,000 shares of $50 par, 5% fully participating preferred stock and 40,000 shares of $10 par common stock outstanding. Total dividends declared are $100,000. How much is allocated to preferred shareholders?',
 '["$25,000", "$75,000", "$50,000", "$55,556"]'::jsonb,
 3,
 'Step 1: Preferred basic dividend = 10,000 x $50 x 5% = $25,000. Step 2: Common matching rate = 40,000 x $10 x 5% = $20,000. Step 3: Remaining $55,000 ($100,000 - $25,000 - $20,000) is allocated by relative total par values. Preferred par = $500,000; Common par = $400,000; Total = $900,000. Preferred participation = $55,000 x ($500,000/$900,000) = $30,556. Total to preferred = $25,000 + $30,556 = $55,556.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Under the par value method of accounting for treasury stock, when shares originally issued at $25 (par value $10) are reacquired at $30, what is the entry?',
 '["Debit treasury stock $10 and APIC $20; credit cash $30", "Debit treasury stock $30; credit cash $30", "Debit treasury stock $10, APIC $15, retained earnings $5; credit cash $30", "Debit treasury stock $25; credit cash $25 and gain on treasury stock $5"]'::jsonb,
 0,
 'Under the par value method, treasury stock is debited at par ($10). The original APIC is removed ($25 - $10 = $15 debited to APIC). The excess of reacquisition cost over original issue price ($30 - $25 = $5) is debited to retained earnings. Cash is credited for $30. This method effectively reverses the original issuance entries.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Weston Corp. has $200,000 of retained earnings appropriated for plant expansion. Which of the following is true about appropriated retained earnings?',
 '["The appropriation sets aside cash for plant expansion", "The appropriation reduces total shareholders'' equity", "The appropriation is reported as a liability", "The appropriation restricts the amount available for dividends but does not set aside cash"]'::jsonb,
 3,
 'Appropriated retained earnings restrict the amount of retained earnings available for dividend distribution, but they do not set aside cash or other assets. The appropriation is a disclosure mechanism that shows management''s intention to retain earnings for a specific purpose. It is still part of total equity and does not create a liability or reduce total shareholders'' equity.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Sterling Corp. issues 8,000 shares of $1 par common stock in exchange for land with a fair value of $200,000. The stock is currently trading at $28 per share. At what amount should the land be recorded?',
 '["$8,000", "$224,000", "$200,000", "$28,000"]'::jsonb,
 2,
 'When stock is issued for noncash consideration, the transaction is recorded at the fair value of the consideration received (the land) if it is more clearly determinable. The land''s appraised fair value of $200,000 is used. Common stock is credited at par ($8,000), and APIC receives the excess ($192,000). If the asset''s fair value were not determinable, the stock''s fair value would be used.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Oakdale Corp. has convertible preferred stock. Each share of preferred ($100 par) converts into 4 shares of common stock ($10 par). A shareholder converts 500 shares of preferred. Using the book value method, what are the credits to common stock and APIC?',
 '["Common stock $20,000; APIC $30,000", "Common stock $50,000; APIC $0", "Common stock $20,000; APIC $0", "Common stock $2,000; APIC $48,000"]'::jsonb,
 0,
 'Shares of common issued = 500 x 4 = 2,000. Book value of preferred converted = 500 x $100 = $50,000. Common stock at par = 2,000 x $10 = $20,000. APIC = $50,000 - $20,000 = $30,000. Under the book value method, the carrying amount of preferred is transferred to common stock and APIC with no gain or loss recognized.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Calloway Corp. issues 15,000 shares of $20 par common stock at $35 per share. Stock issuance costs are $18,000. What amount is credited to APIC?',
 '["$225,000", "$207,000", "$243,000", "$210,000"]'::jsonb,
 1,
 'Total proceeds = 15,000 x $35 = $525,000. Common stock at par = 15,000 x $20 = $300,000. Gross APIC = $525,000 - $300,000 = $225,000. Stock issuance costs reduce APIC (not expensed). Net APIC = $225,000 - $18,000 = $207,000. Issuance costs are treated as a reduction of the proceeds from the stock sale.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Which of the following describes callable preferred stock?',
 '["The shareholder can demand the company repurchase the shares", "The shares can be traded on a secondary market", "The shares automatically convert to common stock at a predetermined date", "The issuing corporation has the right to redeem the shares at a specified price"]'::jsonb,
 3,
 'Callable preferred stock gives the issuing corporation the right (but not the obligation) to redeem (repurchase) the preferred shares at a specified call price, typically at a premium over par. This gives the issuer flexibility to retire expensive equity when market conditions are favorable. The shareholder cannot demand repurchase — that feature is called redeemable or puttable preferred stock.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'A quasi-reorganization is used to:',
 '["Restructure debt obligations with creditors", "Liquidate the corporation and distribute remaining assets", "Convert preferred stock to common stock", "Eliminate a deficit in retained earnings by restating assets to fair value and offsetting the deficit against paid-in capital"]'::jsonb,
 3,
 'A quasi-reorganization allows a company with a retained earnings deficit to get a "fresh start" without going through formal legal reorganization. Assets are restated to fair value (which may create additional losses), and the accumulated deficit is eliminated against APIC (or other paid-in capital). The retained earnings account starts at zero, and financial statements must be dated to show the reorganization.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'After a quasi-reorganization, how is the retained earnings balance reported?',
 '["The balance is shown as negative but with a fresh start disclosure", "Retained earnings is dated to show it has been reset (e.g., \"retained earnings since quasi-reorganization of January 1, Year X\")", "Retained earnings is eliminated from the balance sheet entirely", "A new APIC account replaces retained earnings"]'::jsonb,
 1,
 'After a quasi-reorganization, retained earnings starts at zero and must be dated for a reasonable period (typically 3-10 years) to disclose that the account was reset. The dating alerts users that the retained earnings balance does not represent the entire history of the company''s earnings. Eventually, the dating is removed when it is no longer deemed informative.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Henderson Corp. has the following equity accounts: common stock ($10 par) $500,000; APIC $300,000; retained earnings $400,000; treasury stock (cost method) $80,000. What is total shareholders'' equity?',
 '["$1,120,000", "$1,200,000", "$1,280,000", "$1,180,000"]'::jsonb,
 0,
 'Total shareholders'' equity = Common stock + APIC + Retained earnings - Treasury stock = $500,000 + $300,000 + $400,000 - $80,000 = $1,120,000. Treasury stock is a contra-equity account that reduces total equity. It represents shares repurchased by the company and not yet retired or reissued.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Ridgefield Inc. retires 2,000 shares of treasury stock that were originally issued at $15 per share ($5 par) and reacquired at $18 per share using the cost method. What is the journal entry to retire the shares?',
 '["Debit common stock $10,000 and APIC $20,000; credit treasury stock $36,000 and gain $6,000", "Debit retained earnings $36,000; credit treasury stock $36,000", "Debit common stock $36,000; credit treasury stock $36,000", "Debit common stock $10,000, APIC $20,000, and retained earnings $6,000; credit treasury stock $36,000"]'::jsonb,
 3,
 'When retiring treasury stock under the cost method: debit common stock at par (2,000 x $5 = $10,000), debit APIC for the original excess over par (2,000 x ($15-$5) = $20,000), and the remaining difference between treasury stock cost and the par + APIC amounts ($36,000 - $10,000 - $20,000 = $6,000) is debited to retained earnings. Credit treasury stock at cost ($36,000).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Donovan Corp. has 100,000 shares of common stock outstanding with a market price of $60 per share. The company declares a 5% stock dividend. What is the effect on total equity?',
 '["Increase of $300,000", "Decrease of $300,000", "No change — total equity is unchanged", "Decrease of $25,000"]'::jsonb,
 2,
 'Stock dividends reclassify amounts within shareholders'' equity — retained earnings is debited and common stock (and APIC for small stock dividends) are credited. Total equity is unchanged because no assets leave the company. The 5,000 new shares (100,000 x 5%) are distributed to existing shareholders proportionally, diluting the per-share value but not total equity.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Thornhill Corp. issues 20,000 shares of no-par common stock (no stated value) at $22 per share. What is the journal entry?',
 '["Debit cash $440,000; credit common stock $440,000", "Debit cash $440,000; credit common stock $200,000 and APIC $240,000", "Debit cash $440,000; credit common stock $20,000 and APIC $420,000", "Debit cash $440,000; credit APIC $440,000"]'::jsonb,
 0,
 'When no-par stock has no stated value, the entire proceeds are credited to the common stock account. No APIC is created because there is no par or stated value to create a dividing line. The common stock account is credited for the full $440,000 (20,000 x $22). This simplifies equity accounting by having a single equity account for the stock issuance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Halstead Inc. has cumulative preferred stock with dividends in arrears of $150,000. How are dividends in arrears reported in the financial statements?',
 '["As a current liability on the balance sheet", "As a long-term liability on the balance sheet", "As a reduction of retained earnings on the balance sheet", "Disclosed in the notes to the financial statements but not recorded as a liability"]'::jsonb,
 3,
 'Dividends in arrears on cumulative preferred stock are not recognized as a liability until they are formally declared by the board of directors. Until declaration, they are disclosed in the notes to the financial statements. A corporation has no legal obligation to pay dividends until they are declared, even on cumulative preferred stock.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Westfield Corp. declares a property dividend, distributing investment securities with a carrying amount of $200,000 and a fair value of $280,000. What is the effect on retained earnings?',
 '["Decrease of $200,000", "No effect — property dividends do not affect retained earnings", "Decrease of $80,000", "Decrease of $280,000"]'::jsonb,
 3,
 'A property dividend is recorded at the fair value of the assets distributed. Before distribution, the asset is revalued to fair value, and a gain of $80,000 ($280,000 - $200,000) is recognized in net income. The dividend is then recorded at fair value: debit retained earnings $280,000, credit dividends payable $280,000. Net effect on retained earnings is a $280,000 decrease (offset partially by the $80,000 gain in net income).',
 'hard');

-- Additional Bonds and Debt question (30 of 30)

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Bonds and Debt',
 'Caldwell Corp. issues $4,000,000 of 6% bonds at par on April 1, Year 1. Interest is payable semi-annually on October 1 and April 1. On June 30, Year 1, Caldwell prepares interim financial statements. What amount of interest expense and interest payable should be reported?',
 '["Interest expense $60,000; interest payable $60,000", "Interest expense $120,000; interest payable $120,000", "Interest expense $240,000; interest payable $240,000", "Interest expense $80,000; interest payable $80,000"]'::jsonb,
 0,
 'Interest accrues from the issue date (April 1) to the interim date (June 30), which is 3 months. Interest expense = $4,000,000 x 6% x (3/12) = $60,000. This same amount is recorded as interest payable since no cash interest has been paid yet. The first cash payment of $120,000 occurs on October 1 (covering April 1 to October 1).',
 'medium');

-- Additional Equity questions (29-30 of 30)

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Norris Corp. has 60,000 shares of $15 par common stock outstanding. The board declares a 40% stock dividend when the market price is $45 per share. What is the journal entry?',
 '["Debit retained earnings $1,080,000; credit common stock $360,000 and APIC $720,000", "Debit retained earnings $900,000; credit common stock $360,000 and APIC $540,000", "Debit retained earnings $360,000; credit common stock $360,000", "Debit APIC $360,000; credit common stock $360,000"]'::jsonb,
 2,
 'A 40% stock dividend is a large stock dividend (greater than 20-25%). Large stock dividends are recorded at par value, not market value. New shares = 60,000 x 40% = 24,000. Retained earnings debit = 24,000 x $15 par = $360,000. Common stock credit = $360,000. No APIC is recognized for large stock dividends because the market price is expected to decline proportionally.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Equity',
 'Sutherland Inc. has the following equity components: common stock ($5 par, 200,000 shares) $1,000,000; APIC $600,000; retained earnings $850,000; accumulated other comprehensive loss ($75,000); treasury stock (10,000 shares at cost) ($180,000). What is the book value per share of outstanding common stock?',
 '["$11.55", "$12.25", "$10.95", "$12.75"]'::jsonb,
 0,
 'Total equity = $1,000,000 + $600,000 + $850,000 - $75,000 - $180,000 = $2,195,000. Shares outstanding = 200,000 issued - 10,000 treasury = 190,000 shares. Book value per share = $2,195,000 / 190,000 = $11.55 (rounded). All components of equity, including AOCI and treasury stock, are included in the calculation.',
 'medium');
-- FAR Chunk 3: Contingencies, Income Taxes, Consolidations, Fair Value, Cash and Receivables

-- =============================================================================
-- Topic 1: Contingencies (22 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Under ASC 450, a loss contingency should be accrued (recorded as a liability) when the loss is:',
 '["Remote and the amount can be reasonably estimated", "Reasonably possible and the amount can be reasonably estimated", "Probable and the amount can be reasonably estimated", "Probable regardless of whether the amount can be estimated"]'::jsonb,
 2,
 'ASC 450-20 requires accrual of a loss contingency when two conditions are met: the loss is probable and the amount can be reasonably estimated. If only one condition is met, disclosure in the notes is required instead of accrual.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Drake Corp. is a defendant in a lawsuit. Legal counsel advises that the loss is probable and estimates the range of loss to be between $200,000 and $500,000, with no amount in that range more likely than any other. What amount should Drake accrue?',
 '["$0", "$200,000", "$350,000", "$500,000"]'::jsonb,
 1,
 'When a range of loss is estimated and no amount within the range is a better estimate than any other, ASC 450-20-30-1 requires accrual of the minimum amount in the range. Drake should accrue $200,000 and disclose the potential for additional loss up to $500,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'A company is involved in litigation where the likelihood of loss is determined to be reasonably possible. The estimated loss is $300,000. What is the proper accounting treatment?',
 '["Accrue $300,000 as a liability", "Record a contingent asset of $300,000", "No accrual and no disclosure is required", "Disclose the contingency in the notes to the financial statements"]'::jsonb,
 3,
 'When a loss contingency is reasonably possible (more than remote but less than probable), ASC 450 does not require accrual. However, disclosure of the nature and estimated amount of the contingency in the notes is required to inform financial statement users.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Wilton Inc. has a pending lawsuit where the likelihood of loss is assessed as remote. The potential loss is $1,000,000. What is the correct accounting treatment under ASC 450?',
 '["Accrue $1,000,000", "Disclose in notes only", "No accrual and no disclosure required", "Accrue 50% of the estimated loss"]'::jsonb,
 2,
 'When the likelihood of a loss contingency is remote, ASC 450 generally requires neither accrual nor disclosure. The only exception is for guarantees of the indebtedness of others, which require disclosure even if the likelihood of loss is remote.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Bentley Corp. guarantees the $400,000 debt of its subsidiary. The subsidiary is financially healthy and the likelihood of Bentley having to perform under the guarantee is remote. Under ASC 460, what is required?',
 '["No accrual or disclosure is necessary", "Record a receivable from the subsidiary for $400,000", "Accrue $400,000 as a liability", "Disclose the guarantee in the notes to the financial statements"]'::jsonb,
 3,
 'Under ASC 460, guarantees of indebtedness of others must be disclosed in the notes even when the likelihood of loss is remote. This is an exception to the general ASC 450 rule that remote contingencies require no disclosure. The guarantor must also recognize the fair value of the guarantee obligation at inception.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Perry Inc. has a gain contingency from a pending lawsuit where it is the plaintiff. The gain is considered probable and the amount is reasonably estimable at $750,000. How should Perry account for this?',
 '["Accrue the $750,000 gain", "Record $750,000 as deferred revenue", "No accrual and no disclosure", "Disclose the contingency in the notes but do not accrue"]'::jsonb,
 3,
 'Under ASC 450-30, gain contingencies are never accrued, regardless of probability, to avoid recognizing revenue before it is realized. Adequate disclosure in the notes is appropriate when a gain contingency is probable, but the disclosure should avoid misleading implications about the likelihood of realization.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Sigma Corp. estimates that warranty claims on products sold during the year will cost between $120,000 and $180,000, with $150,000 being the most likely amount. What amount should Sigma accrue as a warranty liability?',
 '["$120,000", "$150,000", "$180,000", "$135,000"]'::jsonb,
 1,
 'When a range of loss is estimated and a specific amount within the range appears to be a better estimate than any other amount, that amount ($150,000) should be accrued. The minimum-of-the-range rule applies only when no amount in the range is more likely than another.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Martin Corp. is a defendant in a patent infringement case. Legal counsel believes the loss is probable and estimates the loss at $2,000,000. The case will likely be settled in 3 years. Martin''s incremental borrowing rate is 6%. Should Martin discount the accrued liability?',
 '["Yes, discount to present value at 6%", "Yes, discount to present value using the risk-free rate", "No, ASC 450 does not permit discounting of loss contingencies", "Yes, but only if the timing of payments is fixed"]'::jsonb,
 2,
 'ASC 450 generally prohibits discounting of loss contingencies to present value. The full estimated amount of $2,000,000 should be accrued. Discounting is only permitted in limited circumstances where the amount and timing of payments are fixed or reliably determinable and discounting is supported by a specific authoritative standard.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'On December 15, Year 1, a company became aware of an environmental contamination at one of its sites. By December 31, Year 1, the company determined that remediation is probable and estimated the cost at $800,000. The financial statements are issued on March 15, Year 2. What amount should be accrued at December 31, Year 1?',
 '["$0 because remediation has not begun", "$800,000", "$400,000", "Disclosure only, no accrual"]'::jsonb,
 1,
 'The contamination was discovered before year-end, the loss is probable, and the amount is reasonably estimable at $800,000. Both conditions for accrual under ASC 450 are met as of the balance sheet date. The full $800,000 should be accrued regardless of whether remediation work has started.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'After the balance sheet date but before issuance of the financial statements, a company learns that a lawsuit filed against it in the prior year has been settled for $500,000. At year-end, the loss was considered reasonably possible. How should this be treated?',
 '["Accrue $500,000 in the current year financial statements", "Disclose as a subsequent event only", "No adjustment or disclosure is needed", "Accrue $250,000 as a compromise"]'::jsonb,
 0,
 'The lawsuit existed at the balance sheet date, making the settlement a recognized (Type I) subsequent event under ASC 855. The settlement provides additional evidence about conditions that existed at year-end, so the financial statements should be adjusted to accrue the $500,000 loss.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Under ASC 450, which of the following best describes a ''commitment'' as distinguished from a ''contingency''?',
 '["An existing obligation whose outcome depends on future events", "A contractual obligation to perform in the future that does not depend on uncertain future events", "A probable future outflow of resources", "A claim against the entity by an outside party"]'::jsonb,
 1,
 'A commitment is a binding agreement to perform in the future, such as a noncancelable purchase order or operating lease. Unlike a contingency, the obligation is not uncertain — only the future performance remains. Commitments are disclosed in the notes, particularly noncancelable purchase commitments at amounts above market.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Falcon Corp. enters into a noncancelable purchase commitment to buy $600,000 of raw materials in 6 months. By year-end, the market price of those materials has dropped to $450,000. What amount of loss should Falcon recognize?',
 '["$0", "$150,000", "$600,000", "$450,000"]'::jsonb,
 1,
 'When the market price falls below the committed purchase price, the decline of $150,000 ($600,000 - $450,000) should be recognized as a loss in the current period. This follows the principle that losses on firm, noncancelable purchase commitments are recognized when market value declines below the commitment price.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'A company has a self-insured workers'' compensation program. Historical data indicates probable claims of $350,000 for the current year. The company has also purchased an insurance policy with a $100,000 deductible. What amount should be accrued?',
 '["$100,000", "$250,000", "$350,000", "$450,000"]'::jsonb,
 2,
 'The company should accrue the full $350,000 of estimated probable claims under its self-insurance program. The deductible on the insurance policy does not reduce the accrual because the company is responsible for costs up to the deductible and the total estimated probable claims from self-insurance should be recognized.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Which of the following loss contingencies would most likely require accrual under ASC 450?',
 '["A pending lawsuit where the outcome is uncertain", "An unasserted claim that counsel believes is frivolous", "A guarantee on a subsidiary''s debt where loss is remote", "Collectibility risk on accounts receivable"]'::jsonb,
 3,
 'Credit losses on accounts receivable represent a loss contingency that is typically probable and estimable, requiring accrual under ASC 450 (and further specified by ASC 326 under the CECL model). Uncertain lawsuits, remote guarantees, and frivolous unasserted claims do not meet the accrual criteria.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Redstone Inc. has been notified by the EPA that it is a potentially responsible party (PRP) for contamination at a Superfund site. Remediation costs for all PRPs are estimated at $10,000,000 and Redstone''s allocated share is 15%. The loss is considered probable. What amount should Redstone accrue?',
 '["$0", "$10,000,000", "$5,000,000", "$1,500,000"]'::jsonb,
 3,
 'Redstone should accrue its allocated share of the probable remediation costs: $10,000,000 x 15% = $1,500,000. Under ASC 450 and related environmental guidance, each PRP accrues its estimated share of remediation costs when the loss is probable and the amount is reasonably estimable.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Under ASC 460, at inception of a guarantee, the guarantor must recognize a liability at:',
 '["The maximum potential amount of the guarantee", "The fair value of the guarantee obligation", "The expected value of future payments", "Zero, with disclosure only"]'::jsonb,
 1,
 'ASC 460-10-25 requires the guarantor to recognize a liability at the inception of a guarantee at its fair value. This represents the stand-ready obligation. The maximum potential amount is disclosed but not necessarily accrued; the initial measurement is the fair value of the guarantee itself.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Clay Corp. has an unasserted claim related to a product sold in the prior year. Management assesses that assertion of the claim is probable, and if asserted, the loss would be probable with an estimated amount of $250,000. What should Clay do?',
 '["No action is required since the claim is unasserted", "Disclose the contingency but do not accrue", "Accrue $250,000 as a liability", "Accrue $125,000 as a conservative estimate"]'::jsonb,
 2,
 'Under ASC 450, if it is probable that an unasserted claim will be asserted and, upon assertion, a loss is probable and reasonably estimable, the entity must accrue the estimated loss. Since both conditions are met for Clay — probable assertion and probable loss of $250,000 — the full amount should be accrued.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Apex Corp. sold products with a 2-year warranty. In Year 1, Apex sold $5,000,000 of products and estimates warranty costs at 3% of sales. During Year 1, actual warranty claims paid were $40,000. What is the warranty liability at December 31, Year 1?',
 '["$40,000", "$110,000", "$150,000", "$190,000"]'::jsonb,
 1,
 'Warranty expense accrual = $5,000,000 x 3% = $150,000. Actual claims paid reduce the liability by $40,000. The ending warranty liability = $150,000 - $40,000 = $110,000. This assurance-type warranty creates a loss contingency that is probable and estimable.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'A company is the plaintiff in a lawsuit and expects to receive a settlement of $2,000,000 that is virtually certain. Under ASC 450, the company should:',
 '["Accrue the $2,000,000 gain", "Disclose the gain contingency in the notes", "Record a receivable for $2,000,000", "Neither accrue nor disclose until cash is received"]'::jsonb,
 1,
 'Even when a gain contingency is virtually certain, ASC 450-30 prohibits accrual of gain contingencies. The appropriate treatment is disclosure in the notes to the financial statements. Gain contingencies are only recognized when realized — typically when cash is received or a legally binding settlement is finalized.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Which of the following represents a key difference between a loss contingency under ASC 450 and a provision under IAS 37?',
 '["IAS 37 uses the term ''more likely than not'' (>50%) as the recognition threshold, while ASC 450 uses ''probable'' (~75-80%)", "IAS 37 requires discounting to present value, while ASC 450 prohibits it", "Both A and B are key differences", "There are no meaningful differences between the two standards"]'::jsonb,
 2,
 'Both differences are correct. IAS 37 uses a lower recognition threshold (''more likely than not,'' meaning greater than 50%) compared to ASC 450''s ''probable'' (generally interpreted as 75-80%). Additionally, IAS 37 requires provisions to be measured at present value when the time value of money is material, while ASC 450 generally prohibits discounting.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Nova Corp. determines that a lawsuit loss is probable. The best estimate of the loss is $400,000 but the range extends from $250,000 to $600,000. What amount should Nova accrue?',
 '["$250,000", "$600,000", "$425,000", "$400,000"]'::jsonb,
 3,
 'When a specific amount within the range represents the best estimate of the probable loss, that amount should be accrued. The $400,000 best estimate takes precedence over the minimum-of-the-range rule, which only applies when no amount in the range is more likely than any other.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Contingencies',
 'Zenith Corp. is jointly and severally liable with two other defendants in a $9,000,000 environmental lawsuit. All three defendants are financially viable. The loss is probable. What is the minimum amount Zenith should accrue?',
 '["$3,000,000", "$4,500,000", "$9,000,000", "$0 until the court allocates shares"]'::jsonb,
 0,
 'When a company is jointly and severally liable but other defendants are financially viable, the company should accrue its estimated share. With three financially viable defendants and no specific allocation, Zenith would estimate its proportionate share at $3,000,000 ($9,000,000 / 3). If other defendants were insolvent, Zenith could be responsible for the full amount.',
 'medium');

-- =============================================================================
-- Topic 2: Income Taxes (30 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Under ASC 740, a deferred tax liability is created when:',
 '["A temporary difference results in taxable amounts in future years", "A permanent difference results in taxable amounts in future years", "Tax expense exceeds the income tax payable for the current year", "A net operating loss carryforward exists"]'::jsonb,
 0,
 'A deferred tax liability arises from temporary differences that will result in taxable amounts in future periods — meaning the entity will pay more tax in the future. Permanent differences never reverse and do not create deferred taxes. NOL carryforwards create deferred tax assets, not liabilities.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Which of the following is a permanent difference that does not give rise to a deferred tax asset or liability?',
 '["Depreciation differences between book and tax", "Unearned revenue recognized for tax but deferred for book", "Warranty expense accrual", "Municipal bond interest income"]'::jsonb,
 3,
 'Municipal bond interest is exempt from federal taxation and is never taxed — it is a permanent difference. Depreciation timing differences, warranty accruals, and unearned revenue timing are all temporary differences that reverse over time and create deferred tax assets or liabilities.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Carlton Corp. has pretax financial income of $800,000. Included in this amount is $50,000 of municipal bond interest and $30,000 of nondeductible fines. The enacted tax rate is 21%. What is Carlton''s current income tax expense?',
 '["$163,800", "$168,000", "$151,200", "$173,460"]'::jsonb,
 0,
 'Taxable income = $800,000 - $50,000 (municipal interest excluded) + $30,000 (fines not deductible) = $780,000. Current tax expense = $780,000 x 21% = $163,800. Both items are permanent differences that affect the current tax computation but do not create deferred taxes.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'A company purchases equipment for $500,000. For book purposes, it uses straight-line depreciation over 10 years ($50,000/year). For tax, it uses MACRS with Year 1 depreciation of $100,000. The tax rate is 21%. What deferred tax liability arises in Year 1?',
 '["$10,500", "$21,000", "$50,000", "$100,000"]'::jsonb,
 0,
 'The temporary difference in Year 1 = $100,000 (tax depreciation) - $50,000 (book depreciation) = $50,000. This creates a deferred tax liability of $50,000 x 21% = $10,500 because taxable income will be higher in future years when the excess tax depreciation reverses.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Under ASC 740, a valuation allowance is required for a deferred tax asset when:',
 '["Any uncertainty exists about realization", "The entity has a net operating loss carryforward", "The deferred tax asset exceeds $1,000,000", "It is more likely than not that some or all of the DTA will not be realized"]'::jsonb,
 3,
 'ASC 740-10-30-5 requires a valuation allowance when it is more likely than not (greater than 50% likelihood) that some portion or all of the deferred tax asset will not be realized. The assessment considers all available positive and negative evidence, including future taxable income projections, tax planning strategies, and existing taxable temporary differences.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Harper Corp. has a deferred tax asset of $210,000 arising from net operating loss carryforwards. After evaluating all available evidence, management determines it is more likely than not that $80,000 of the DTA will not be realized. What is the net deferred tax asset reported on the balance sheet?',
 '["$80,000", "$130,000", "$210,000", "$290,000"]'::jsonb,
 1,
 'The deferred tax asset of $210,000 is reduced by a valuation allowance of $80,000, resulting in a net DTA of $130,000 ($210,000 - $80,000). The valuation allowance is a contra account that reduces the DTA to the amount that is more likely than not to be realized.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Trent Corp. has the following temporary differences at December 31: excess tax depreciation of $200,000 (future taxable) and warranty accrual of $60,000 (future deductible). The enacted tax rate is 21%. What net deferred tax amount should be reported?',
 '["Deferred tax liability of $29,400", "Deferred tax asset of $29,400", "Deferred tax liability of $42,000", "Deferred tax asset of $12,600"]'::jsonb,
 0,
 'DTL from depreciation = $200,000 x 21% = $42,000. DTA from warranty = $60,000 x 21% = $12,600. Net = $42,000 - $12,600 = $29,400 net deferred tax liability. Under ASC 740, deferred tax assets and liabilities from the same tax jurisdiction are presented net on the balance sheet.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Under ASC 740, which of the following is the proper classification of deferred tax assets and liabilities on the balance sheet?',
 '["Always classified as current", "Current portion separated from noncurrent portion", "Classified based on the related asset or liability classification", "Always classified as noncurrent"]'::jsonb,
 3,
 'ASU 2015-17 simplified the presentation by requiring all deferred tax assets and liabilities to be classified as noncurrent on the balance sheet. The previous requirement to separate current and noncurrent portions based on the underlying asset or liability was eliminated.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'In Year 1, a company accrues a $300,000 litigation liability for book purposes. The deduction is not allowed for tax until Year 3 when the case is settled. The tax rate is 21% in both years. In Year 1, the company should record:',
 '["A deferred tax liability of $63,000", "A deferred tax asset of $63,000", "No deferred tax effect", "A deferred tax asset of $300,000"]'::jsonb,
 1,
 'The $300,000 accrual creates a deductible temporary difference — the expense is recognized for book purposes in Year 1 but deducted for tax purposes in Year 3. This creates a DTA of $300,000 x 21% = $63,000 because the future tax deduction will reduce future taxable income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Keller Corp. has pretax book income of $1,000,000 and taxable income of $900,000. The $100,000 difference consists of $60,000 in municipal bond interest and a $40,000 excess of tax depreciation over book depreciation. The tax rate is 21%. What is total income tax expense?',
 '["$189,000", "$180,600", "$210,000", "$197,400"]'::jsonb,
 3,
 'Current tax expense = $900,000 x 21% = $189,000. Deferred tax expense from the $40,000 temporary depreciation difference = $40,000 x 21% = $8,400 (DTL increase). Total income tax expense = $189,000 + $8,400 = $197,400. The $60,000 municipal bond interest is a permanent difference with no deferred effect.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'What is the effect on deferred taxes when the enacted tax rate increases from 21% to 25% and a company has a net deferred tax liability of $420,000 (computed at 21%)?',
 '["The DTL increases, and the adjustment is reported in income tax expense", "The DTL decreases, and the adjustment is reported in income tax expense", "No adjustment is needed until the rate change takes effect", "The DTL increases, and the adjustment is reported in OCI"]'::jsonb,
 0,
 'Under ASC 740, deferred taxes are adjusted in the period of enactment using the newly enacted rate. The DTL recalculated at 25% = ($420,000 / 0.21) x 0.25 = $500,000, an increase of $80,000. This adjustment is recognized as additional income tax expense in the period the rate change is enacted.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Under ASC 740, intraperiod tax allocation requires income tax expense to be allocated to which of the following?',
 '["Continuing operations only", "Continuing operations, discontinued operations, OCI, and prior period adjustments", "Continuing operations and discontinued operations only", "Each line item on the income statement"]'::jsonb,
 1,
 'Intraperiod tax allocation under ASC 740-20 requires that income tax expense (or benefit) be allocated to continuing operations, discontinued operations, other comprehensive income, and items charged or credited directly to equity (including prior period adjustments). This ensures each component reflects its own tax effect.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Ames Corp. has $500,000 of income from continuing operations and a $200,000 loss from discontinued operations. The tax rate is 21%. Using intraperiod tax allocation, what is the tax expense allocated to continuing operations?',
 '["$63,000", "$105,000", "$42,000", "$150,000"]'::jsonb,
 1,
 'Under intraperiod allocation, continuing operations is taxed on its own income: $500,000 x 21% = $105,000. The discontinued operations loss generates a tax benefit of $200,000 x 21% = $42,000. Each component carries its own tax effect; the overall tax is $63,000 ($105,000 - $42,000).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Under ASC 740-10 (uncertain tax positions), a tax position must first meet what threshold before any benefit can be measured?',
 '["Probable (75-80% likelihood)", "More likely than not (>50% likelihood)", "Virtually certain (95%+ likelihood)", "Reasonably possible (25-50% likelihood)"]'::jsonb,
 1,
 'ASC 740-10-25 uses a two-step process for uncertain tax positions. Step 1 (recognition) requires that the position be evaluated to determine if it is more likely than not (greater than 50%) that the position will be sustained upon examination. Only if this threshold is met does the entity proceed to Step 2 (measurement).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Pacific Corp. takes an uncertain tax position claiming a $500,000 deduction. There is a 60% likelihood the position will be sustained. If sustained, the cumulative probabilities of the amounts that could be realized are: $500,000 (40%), $400,000 (55%), $300,000 (70%), $200,000 (85%). What benefit should Pacific recognize?',
 '["$500,000", "$200,000", "$300,000", "$400,000"]'::jsonb,
 3,
 'Step 1: The position meets the more-likely-than-not threshold (60% > 50%). Step 2: The benefit is measured as the largest amount that has a greater than 50% cumulative likelihood of being realized. At $400,000, the cumulative probability is 55%, which exceeds 50%. At $500,000, it is only 40%. Therefore, $400,000 is recognized.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Which of the following creates a temporary difference that results in a deferred tax asset?',
 '["Using accelerated depreciation for tax and straight-line for book", "Recognizing rent revenue for tax when cash is received, but for book when earned", "Accruing bad debt expense for book using the allowance method while deducting actual write-offs for tax", "Installment method gain recognition for tax with full accrual for book"]'::jsonb,
 2,
 'The bad debt accrual creates a deductible temporary difference — book expense is recognized before the tax deduction. This means taxable income is currently higher than book income, but the future tax deduction will reduce future taxable income, creating a DTA. The other options create DTLs because they defer taxable income to the future.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Grant Corp. has a net operating loss carryforward of $2,000,000 available indefinitely. The enacted tax rate is 21%. The NOL can only offset 80% of taxable income in any future year. Management expects sufficient future taxable income to fully utilize the NOL. What deferred tax asset should Grant record?',
 '["$336,000", "$420,000", "$168,000", "$400,000"]'::jsonb,
 1,
 'The DTA for the NOL carryforward is calculated on the full NOL amount: $2,000,000 x 21% = $420,000. The 80% limitation affects the timing of utilization (how much can be used per year) but does not reduce the total benefit. Since management expects full realization, no valuation allowance is needed.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Which of the following is NOT considered positive evidence when assessing the need for a valuation allowance on a deferred tax asset?',
 '["Existing contracts that will generate future taxable income", "Strong history of operating profitability", "Brief carryforward periods", "Appreciated asset values in excess of tax basis"]'::jsonb,
 2,
 'Brief carryforward periods are negative evidence because they limit the time available to generate sufficient taxable income to realize the DTA. Positive evidence includes existing contracts for future income, strong profitability history, and appreciated assets that could generate taxable gains if sold.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'A company has the following differences between book and taxable income: (1) $50,000 meals and entertainment expense (50% nondeductible), (2) $80,000 excess tax depreciation, (3) $30,000 municipal bond interest. What is the total amount of temporary differences?',
 '["$160,000", "$80,000", "$55,000", "$110,000"]'::jsonb,
 1,
 'Only the $80,000 excess tax depreciation is a temporary difference — it will reverse in future years. The nondeductible meals expense (50% portion = $25,000) and municipal bond interest ($30,000) are both permanent differences that never reverse and do not create deferred taxes.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Under ASC 740, deferred tax assets and liabilities are measured using:',
 '["The tax rate in effect when the temporary difference originated", "The statutory rate with no adjustment for rate changes", "The average of the current and future enacted rates", "The currently enacted tax rate expected to apply when the difference reverses"]'::jsonb,
 3,
 'ASC 740-10-25-2 requires deferred tax assets and liabilities to be measured using the enacted tax rate expected to apply in the period(s) when the temporary difference is expected to reverse. If rates are scheduled to change in future years, the rate for the specific reversal year is used.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Maxwell Corp. has a cumulative book-tax difference of $600,000 related to depreciation. The current enacted rate is 21%, but legislation has been enacted that changes the rate to 28% effective next year, when the differences will begin to reverse. What amount should the deferred tax liability be reported at?',
 '["$126,000", "$168,000", "$147,000", "$600,000"]'::jsonb,
 1,
 'Since the temporary differences will reverse when the 28% rate is in effect, the DTL is measured at the enacted future rate: $600,000 x 28% = $168,000. The adjustment from the old rate ($126,000) to the new amount is recognized as income tax expense in the period the rate change is enacted.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Oliver Corp.''s effective tax rate is 26%, while the statutory rate is 21%. Which of the following could explain the difference?',
 '["Significant municipal bond interest income", "Significant research and development tax credits", "Large excess tax depreciation", "Significant nondeductible expenses such as fines and penalties"]'::jsonb,
 3,
 'Nondeductible expenses (fines, penalties, certain lobbying costs) increase the effective rate above the statutory rate because they are expenses for book but not deductible for tax, increasing taxable income. Municipal bond interest and R&D credits would decrease the effective rate. Excess depreciation is a temporary difference that does not create a permanent rate difference.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'A company reports pretax book income of $1,200,000. It has $40,000 of life insurance premiums on key officers (nondeductible) and $100,000 of excess tax depreciation. The tax rate is 21%. What is total income tax expense on the income statement?',
 '["$252,000", "$243,600", "$222,600", "$260,400"]'::jsonb,
 3,
 'Total income tax expense includes the permanent difference but excludes only the nontaxable items. Taxable income = $1,200,000 + $40,000 (nondeductible premiums) - $100,000 (excess tax depreciation) = $1,140,000. Current tax = $1,140,000 x 21% = $239,400. Deferred tax expense = $100,000 x 21% = $21,000. Total tax expense = $239,400 + $21,000 = $260,400. Alternatively: ($1,200,000 + $40,000) x 21% = $260,400.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Barton Corp. has a deferred tax asset of $150,000 related to warranty accruals and a deferred tax liability of $90,000 related to depreciation. Both relate to the same tax jurisdiction. How are these reported on the balance sheet?',
 '["DTA of $150,000 and DTL of $90,000 reported separately as noncurrent", "Net DTL of $60,000 reported as noncurrent", "DTA of $150,000 as current and DTL of $90,000 as noncurrent", "Net DTA of $60,000 reported as noncurrent"]'::jsonb,
 3,
 'Under ASC 740 (as amended by ASU 2015-17), all deferred tax assets and liabilities are classified as noncurrent. Additionally, DTAs and DTLs from the same tax-paying jurisdiction are offset and presented as a single net amount. The net DTA is $150,000 - $90,000 = $60,000 noncurrent.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Yates Corp. acquired an asset in a nontaxable business combination. The fair value assigned is $900,000 and the tax basis is $600,000. The tax rate is 21%. Under ASC 740, the deferred tax treatment for this difference is:',
 '["Record a DTL of $63,000", "No deferred tax is recognized because of the initial recognition exception", "Record a DTL of $63,000 offset by goodwill", "Record a DTA of $63,000"]'::jsonb,
 0,
 'The initial recognition exception in ASC 740-10-25-20 does not apply to differences arising in a business combination. Therefore, the $300,000 difference ($900,000 - $600,000) creates a DTL of $300,000 x 21% = $63,000. Business combinations are explicitly excluded from the initial recognition exception.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Which of the following would NOT create a temporary difference under ASC 740?',
 '["Unrealized gains on available-for-sale debt securities reported in OCI", "Goodwill amortized for tax but not for book purposes", "Interest income on municipal bonds", "Revenue recognized at a point in time for book but on the installment method for tax"]'::jsonb,
 2,
 'Municipal bond interest is a permanent difference — it is included in book income but permanently excluded from taxable income. It never reverses and therefore does not create a deferred tax. Unrealized AFS gains, goodwill book-tax differences, and installment sale timing differences are all temporary differences.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'During Year 1, Sloan Corp. received $180,000 in advance for services to be performed in Year 2. For tax purposes, the $180,000 is taxable when received. For book purposes, it is deferred revenue. The tax rate is 21%. What deferred tax effect should Sloan record in Year 1?',
 '["DTA of $37,800", "DTL of $37,800", "No deferred tax effect", "DTA of $180,000"]'::jsonb,
 0,
 'The $180,000 is taxed in Year 1 but recognized as book revenue in Year 2. This creates a deductible temporary difference — taxable income exceeds book income in Year 1, and book income will exceed taxable income in Year 2. A DTA of $180,000 x 21% = $37,800 is recorded because Sloan has prepaid taxes on income not yet recognized for book purposes.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Pine Corp. has pretax book income of $2,500,000. Tax depreciation exceeds book depreciation by $300,000. Pine received $100,000 in tax-exempt interest. Pine also accrued $150,000 in warranty expense that is not yet deductible for tax. The tax rate is 21%. What is Pine''s current income tax payable?',
 '["$483,000", "$504,000", "$451,500", "$535,500"]'::jsonb,
 0,
 'Taxable income = $2,500,000 - $100,000 (tax-exempt interest) - $300,000 (excess tax depreciation) + $150,000 (warranty not yet deductible) = $2,300,000. Current income tax payable = $2,300,000 x 21% = $483,000. The tax-exempt interest is a permanent difference; depreciation and warranty are temporary differences.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Under ASC 740-10-50, which reconciliation is required in the notes to the financial statements for public entities?',
 '["Reconciliation of the statutory rate to the effective rate", "Reconciliation of GAAP income to taxable income", "Reconciliation of beginning and ending cash balances", "Reconciliation of book depreciation to tax depreciation"]'::jsonb,
 0,
 'Public entities must disclose a reconciliation of the statutory federal income tax rate to the effective tax rate (rate reconciliation), or alternatively, a reconciliation of the expected tax expense to the actual tax expense (amount reconciliation). This disclosure explains why the effective rate differs from the statutory 21% rate.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Income Taxes',
 'Rogers Corp. has cumulative losses over the last three years totaling $2,000,000 and a deferred tax asset of $420,000. Despite the losses, Rogers has significant scheduled reversals of taxable temporary differences in future years totaling $1,500,000 and tax planning strategies that could generate $800,000 of additional taxable income. What is the maximum DTA that can be reported without a valuation allowance?',
 '["$0", "$315,000", "$420,000", "$483,000"]'::jsonb,
 2,
 'Even with cumulative losses (negative evidence), the $1,500,000 in scheduled reversals of taxable temporary differences plus $800,000 from tax planning strategies ($2,300,000 total) exceed the $2,000,000 DTA basis ($420,000 / 0.21). All positive and negative evidence must be weighed. Here the positive evidence (scheduled reversals and strategies) is sufficient to support the full $420,000 DTA.',
 'hard');

-- =============================================================================
-- Topic 3: Consolidations (30 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Under ASC 805, the acquisition method requires the acquirer to recognize identifiable assets acquired and liabilities assumed at:',
 '["Historical cost", "Book value as reported by the acquiree", "Fair value at the acquisition date", "The lower of cost or fair value"]'::jsonb,
 2,
 'ASC 805-20-30-1 requires the acquirer to measure identifiable assets acquired and liabilities assumed at their acquisition-date fair values. This applies regardless of the acquiree''s historical cost or book value. The fair value measurement establishes the new cost basis in a business combination.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Parker Inc. acquires 100% of Stone Corp. for $5,000,000 in cash. At the acquisition date, Stone''s identifiable net assets have a fair value of $4,200,000. What amount of goodwill should Parker recognize?',
 '["$800,000", "$5,000,000", "$4,200,000", "$0"]'::jsonb,
 0,
 'Goodwill = Consideration transferred - Fair value of identifiable net assets = $5,000,000 - $4,200,000 = $800,000. Goodwill represents the premium paid over the fair value of identifiable net assets and is attributed to factors such as expected synergies, assembled workforce, and going-concern value.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Atlas Corp. acquires 100% of Beta Corp. for $3,000,000. The fair value of Beta''s identifiable net assets is $3,500,000. Under ASC 805, how should Atlas account for the $500,000 difference?',
 '["Record goodwill of $500,000", "Record a gain on bargain purchase of $500,000", "Reduce the values of noncurrent assets by $500,000", "Record a deferred credit of $500,000"]'::jsonb,
 1,
 'When the fair value of identifiable net assets exceeds the consideration transferred, a bargain purchase exists. Under ASC 805-30-25-2, the acquirer must first reassess whether all assets and liabilities have been correctly identified and measured. If the excess remains, it is recognized immediately as a gain in earnings — not as negative goodwill or a deferred credit.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'In a business combination, the measurement period during which the acquirer can adjust provisional amounts cannot exceed:',
 '["6 months from the acquisition date", "2 years from the acquisition date", "The end of the fiscal year in which the acquisition occurred", "1 year from the acquisition date"]'::jsonb,
 3,
 'ASC 805-10-25-15 limits the measurement period to one year from the acquisition date. During this period, the acquirer may adjust the provisional amounts recognized at the acquisition date as new information is obtained about facts and circumstances that existed at the acquisition date. Any adjustments beyond one year are recognized in earnings.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Foster Corp. acquires 80% of Grand Corp. for $4,800,000. The fair value of Grand''s identifiable net assets is $5,000,000. The fair value of the 20% noncontrolling interest is $1,200,000. What amount of goodwill is recognized under the fair value method for NCI?',
 '["$800,000", "$0", "$200,000", "$1,000,000"]'::jsonb,
 3,
 'Under the fair value method for NCI: Goodwill = (Consideration + NCI fair value) - Fair value of net assets = ($4,800,000 + $1,200,000) - $5,000,000 = $1,000,000. This method attributes goodwill to both the controlling and noncontrolling interests.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Using the same facts as above (Foster acquires 80% of Grand for $4,800,000, net assets FV = $5,000,000), what goodwill amount would be recognized under the proportionate share method for NCI?',
 '["$800,000", "$1,000,000", "$200,000", "$600,000"]'::jsonb,
 0,
 'Under the proportionate share method: NCI = 20% x $5,000,000 = $1,000,000. Goodwill = Consideration - Parent''s share of net assets = $4,800,000 - (80% x $5,000,000) = $4,800,000 - $4,000,000 = $800,000. This method only recognizes goodwill attributable to the parent, not the NCI.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Which of the following intercompany transactions requires elimination in preparing consolidated financial statements?',
 '["A parent company''s dividend to minority shareholders", "Interest on bonds payable to unrelated third parties", "Management fees charged by the parent to its subsidiary", "A subsidiary''s purchase of inventory from an unrelated supplier"]'::jsonb,
 2,
 'Management fees between a parent and its subsidiary are intercompany transactions that must be eliminated in consolidation because they represent revenue to one entity and expense to the other within the consolidated group. Transactions with unrelated third parties (dividend payments to minority holders, third-party bonds, and external inventory purchases) are not eliminated.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'A parent company sold inventory to its subsidiary for $400,000 during the year. The inventory cost the parent $280,000. At year-end, 25% of this inventory remains unsold by the subsidiary. What amount of unrealized intercompany profit must be eliminated in consolidation?',
 '["$30,000", "$70,000", "$100,000", "$120,000"]'::jsonb,
 0,
 'Total intercompany profit = $400,000 - $280,000 = $120,000. Only the portion still in the subsidiary''s ending inventory is unrealized: 25% x $120,000 = $30,000. The 75% that was sold to outside parties is realized and does not need elimination. The consolidation entry reduces inventory and cost of goods sold by $30,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'In a downstream sale (parent sells to subsidiary), the unrealized intercompany profit is eliminated against:',
 '["The noncontrolling interest only", "Retained earnings of the subsidiary", "Both the parent''s and NCI''s share of income proportionally", "The parent''s share of income only"]'::jsonb,
 3,
 'In a downstream sale, the parent is the seller and earns the intercompany profit. Therefore, the entire unrealized profit is eliminated against the parent''s income. The NCI is not affected because the subsidiary did not generate the profit — it merely purchased the inventory from the parent.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'In an upstream sale (subsidiary sells to parent), how is the elimination of unrealized intercompany profit allocated when a 20% noncontrolling interest exists?',
 '["100% to the parent", "100% to the NCI", "80% to the parent and 20% to the NCI", "Entirely to consolidated retained earnings"]'::jsonb,
 2,
 'In an upstream sale, the subsidiary is the seller. Since the NCI shares in the subsidiary''s income, the unrealized profit elimination is allocated proportionally: 80% to the controlling interest and 20% to the NCI. This reflects that both groups share in the subsidiary''s earnings and losses.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'A subsidiary has a $500,000 note payable to its parent company. In the consolidation workpaper, the elimination entry includes:',
 '["Debit Note Payable $500,000; Credit Cash $500,000", "Debit Note Payable $500,000; Credit Note Receivable $500,000", "Debit Note Receivable $500,000; Credit Note Payable $500,000", "No entry is needed since the amounts cancel automatically"]'::jsonb,
 1,
 'Intercompany receivables and payables must be eliminated in consolidation because the consolidated entity cannot owe money to itself. The entry debits the subsidiary''s Note Payable and credits the parent''s Note Receivable for $500,000, removing both balances from the consolidated balance sheet.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Horizon Corp. owns 40% of Vertex Inc. and exercises significant influence. During the year, Vertex reported net income of $800,000 and paid dividends of $200,000. Under the equity method, what is Horizon''s investment income?',
 '["$80,000", "$240,000", "$320,000", "$400,000"]'::jsonb,
 2,
 'Under the equity method, Horizon recognizes its share of the investee''s net income: 40% x $800,000 = $320,000. Dividends received ($200,000 x 40% = $80,000) reduce the investment account but are not recognized as income. The equity method recognizes income based on earnings, not cash distributions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'When preparing consolidated financial statements, the subsidiary''s stockholders'' equity accounts are eliminated because:',
 '["The subsidiary is legally dissolved upon acquisition", "The parent''s investment account replaces the subsidiary''s equity", "The subsidiary''s equity is represented by the parent''s investment account and must not be double-counted", "The subsidiary''s equity has no value after acquisition"]'::jsonb,
 2,
 'In consolidation, the parent''s Investment in Subsidiary account and the subsidiary''s stockholders'' equity represent the same underlying net assets. Both must be eliminated to prevent double-counting. The elimination entry debits the subsidiary''s equity accounts, credits the investment account, and recognizes any goodwill or NCI.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Mega Corp. acquired 70% of Small Corp. on January 1. Small Corp.''s net income for the year was $600,000 and it declared dividends of $100,000. What is the noncontrolling interest''s share of Small''s income reported on the consolidated income statement?',
 '["$30,000", "$150,000", "$180,000", "$420,000"]'::jsonb,
 2,
 'The NCI owns 30% of Small Corp. NCI''s share of income = 30% x $600,000 = $180,000. This amount is reported on the consolidated income statement as a separate line item deducted from consolidated net income to arrive at net income attributable to the parent. Dividends reduce the NCI balance sheet amount, not income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'A parent sold equipment with a book value of $300,000 to its subsidiary for $450,000. The subsidiary depreciates the equipment over 5 years. What consolidation adjustment is needed in Year 1?',
 '["Eliminate $150,000 gain and reduce depreciation expense by $30,000", "Eliminate $150,000 gain only", "Eliminate $450,000 of equipment", "Reduce equipment by $300,000"]'::jsonb,
 0,
 'The $150,000 intercompany gain ($450,000 - $300,000) must be eliminated. The subsidiary records depreciation on the $450,000 transfer price, but consolidated depreciation should be based on the original $300,000 cost. The excess depreciation of $150,000 / 5 = $30,000 per year must be reversed, effectively realizing the gain over the asset''s remaining life.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Under ASC 805, which of the following costs incurred in a business combination is expensed as incurred?',
 '["Costs of registering and issuing equity securities", "All of the above", "Costs of issuing debt securities", "Finder''s fees and advisory fees"]'::jsonb,
 3,
 'Acquisition-related costs such as finder''s fees, advisory fees, legal fees, and due diligence costs are expensed as incurred under ASC 805-10-25-23. Costs of issuing equity securities reduce additional paid-in capital, and costs of issuing debt securities are accounted for under ASC 470. Only the advisory/transaction costs are expensed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Apex Corp. acquires 100% of Beacon Inc. Beacon has a customer list with a fair value of $200,000 and no book value. In the acquisition, Apex should:',
 '["Not recognize the customer list since it has no book value", "Recognize the customer list at $200,000 as a separate intangible asset", "Include the $200,000 as part of goodwill", "Record the customer list at $1 as a nominal amount"]'::jsonb,
 1,
 'Under ASC 805, identifiable intangible assets meeting the contractual-legal criterion or separability criterion must be recognized separately from goodwill at fair value, even if the acquiree had not previously recognized them. A customer list meets the separability criterion and is recorded at its $200,000 fair value.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Delta Corp. owns 60% of Echo Corp. During the year, Echo sold $1,200,000 of inventory to Delta at a 30% gross margin. At year-end, $300,000 of this inventory remains in Delta''s warehouse. What is the unrealized profit to be eliminated, and how is it allocated?',
 '["$90,000: 60% to parent, 40% to NCI", "$360,000: 60% to parent, 40% to NCI", "$90,000: 100% to parent", "$360,000: 100% to parent"]'::jsonb,
 0,
 'Total intercompany profit = $1,200,000 x 30% = $360,000. Unrealized portion (still in inventory) = $300,000 x 30% = $90,000. Since this is an upstream sale (subsidiary sold to parent), the elimination is allocated based on ownership: 60% to the controlling interest ($54,000) and 40% to the NCI ($36,000).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Which of the following is the primary criterion for determining whether a parent must consolidate a variable interest entity (VIE)?',
 '["Ownership of more than 50% of voting stock", "The entity has a majority of seats on the VIE''s board", "The entity provides more than 50% of the VIE''s financing", "The entity is the primary beneficiary, having the power to direct activities and the obligation to absorb losses or right to receive benefits"]'::jsonb,
 3,
 'Under ASC 810-10-25, consolidation of a VIE is required for the entity identified as the primary beneficiary. The primary beneficiary has both (1) the power to direct the VIE''s most significant activities and (2) the obligation to absorb losses or the right to receive benefits that could be significant to the VIE. Voting interest percentage alone does not determine VIE consolidation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'On June 1, Year 1, Parent Corp. acquires 100% of Sub Corp. for $2,000,000. Sub''s revenues and expenses from January 1 to December 31 are $3,600,000 and $3,000,000, respectively. In the Year 1 consolidated income statement, what amount of Sub''s revenue is included?',
 '["$3,600,000", "$2,100,000", "$1,800,000", "$1,500,000"]'::jsonb,
 1,
 'Only the acquiree''s revenues and expenses from the acquisition date forward are included in consolidated income. From June 1 through December 31 (7 months out of 12), Sub''s revenue = $3,600,000 x 7/12 = $2,100,000. Pre-acquisition results belong to the prior owners and are not consolidated.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Goodwill recognized in a business combination is:',
 '["Amortized over 10 years under U.S. GAAP", "Amortized over its useful life under U.S. GAAP", "Not amortized but tested for impairment annually under U.S. GAAP", "Written off immediately against retained earnings"]'::jsonb,
 2,
 'Under ASC 350-20-35-1, goodwill is not amortized but is tested for impairment at least annually, or more frequently if indicators of impairment exist. Private companies may elect to amortize goodwill over 10 years under ASU 2014-02, but the default GAAP treatment for public entities is impairment testing only.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'A reporting unit has a carrying amount of $8,000,000 including goodwill of $2,000,000. Its fair value is determined to be $7,200,000. Under the current goodwill impairment test, what impairment loss is recognized?',
 '["$0", "$1,200,000", "$2,000,000", "$800,000"]'::jsonb,
 3,
 'Under ASU 2017-04 (simplified one-step test), goodwill impairment = carrying amount of reporting unit minus fair value = $8,000,000 - $7,200,000 = $800,000. The impairment loss is limited to the carrying amount of goodwill ($2,000,000), so the full $800,000 is recognized. The old two-step test comparing implied goodwill fair value has been eliminated.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Parent Corp. owns 80% of Sub Corp. and uses the equity method on its separate books. Sub reported net income of $500,000 and declared dividends of $120,000. What is the balance in Parent''s Investment in Sub account at year-end if the beginning balance was $3,200,000?',
 '["$3,504,000", "$3,600,000", "$3,304,000", "$3,080,000"]'::jsonb,
 0,
 'Under the equity method: Beginning balance $3,200,000 + Share of income (80% x $500,000 = $400,000) - Share of dividends (80% x $120,000 = $96,000) = $3,504,000. The equity method increases the investment for the parent''s share of income and decreases it for dividends received.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Which of the following is NOT eliminated in the preparation of consolidated financial statements?',
 '["Intercompany sales and cost of goods sold", "Intercompany dividends from subsidiary to parent", "Dividends paid by the parent to its own shareholders", "Intercompany interest revenue and interest expense"]'::jsonb,
 2,
 'Dividends paid by the parent company to its own external shareholders are transactions with parties outside the consolidated group and are not eliminated. All intercompany transactions — including sales, dividends from subsidiary to parent, and interest between affiliates — must be eliminated because they do not represent transactions with external parties.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Rio Corp. acquires 100% of Sol Corp. Sol has a contingent liability related to pending litigation with a fair value of $350,000 at the acquisition date. Under ASC 805, how should Rio account for this contingent liability?',
 '["Ignore it until the litigation is resolved", "Record it at $350,000 if it meets the ASC 450 probable and estimable criteria", "Record it at $350,000 fair value regardless of probability assessment", "Record it only if the litigation loss is virtually certain"]'::jsonb,
 2,
 'ASC 805-20-25-19 requires the acquirer to recognize contingent liabilities assumed in a business combination at their acquisition-date fair value if the fair value can be determined during the measurement period. This is a lower threshold than ASC 450''s ''probable and estimable'' criteria, which applies to contingencies outside of business combinations.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Omega Corp. acquires 100% of Theta Inc. The consideration transferred includes cash of $3,000,000 and contingent consideration with an acquisition-date fair value of $400,000 that depends on future earnings. Total fair value of net assets is $2,800,000. What is goodwill?',
 '["$200,000", "$600,000", "$1,000,000", "$400,000"]'::jsonb,
 1,
 'Total consideration = $3,000,000 cash + $400,000 contingent consideration fair value = $3,400,000. Goodwill = $3,400,000 - $2,800,000 = $600,000. Under ASC 805, contingent consideration is measured at fair value at the acquisition date and included in the consideration transferred, regardless of whether the contingency is ultimately paid.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Luna Corp. holds a 30% equity method investment in Mars Corp. Luna decides to acquire an additional 40% of Mars, obtaining control. Under ASC 805, how does Luna account for the previously held 30% interest?',
 '["Continue carrying the 30% at its equity method book value", "Remeasure the 30% to fair value at the acquisition date and recognize any gain or loss in earnings", "Write off the 30% investment and start fresh", "Combine the 30% historical cost with the new 40% cost"]'::jsonb,
 1,
 'Under ASC 805-10-25-10, when control is achieved in stages (a step acquisition), the acquirer remeasures its previously held equity interest at acquisition-date fair value and recognizes any resulting gain or loss in earnings. This ensures that the entire subsidiary is reflected at fair value on the acquisition date.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'In which of the following situations would the equity method of accounting be most appropriate?',
 '["An investor owns 15% of the investee and has no significant influence", "An investor owns 100% of the investee", "An investor owns 35% of the investee and has significant influence", "An investor owns 5% of the investee with no board representation"]'::jsonb,
 2,
 'The equity method is appropriate when an investor has significant influence, typically presumed at 20-50% ownership. A 35% interest with significant influence clearly qualifies. A 100% interest requires consolidation. Interests of 15% and 5% without significant influence are accounted for at fair value or using the measurement alternative.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Consolidated total assets will generally be:',
 '["Equal to the sum of the parent''s and subsidiary''s total assets", "Greater than the parent''s total assets by exactly the subsidiary''s total assets", "Less than the sum of the parent''s and subsidiary''s total assets due to intercompany eliminations", "Equal to the parent''s total assets only"]'::jsonb,
 2,
 'Consolidated total assets are typically less than the simple sum of parent and subsidiary assets because intercompany balances (receivables, payables, investments) are eliminated. Additionally, unrealized intercompany profits in inventory or fixed assets reduce the consolidated amounts. However, goodwill and fair value adjustments may partially offset these reductions.',
 'medium');

-- =============================================================================
-- Topic 4: Fair Value (25 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Under ASC 820, fair value is defined as:',
 '["The amount an entity would pay to acquire an asset in an orderly transaction", "The replacement cost of an asset", "The price that would be received to sell an asset or paid to transfer a liability in an orderly transaction between market participants at the measurement date", "The present value of expected future cash flows"]'::jsonb,
 2,
 'ASC 820-10-20 defines fair value as an exit price — the price that would be received to sell an asset or paid to transfer a liability in an orderly transaction between market participants at the measurement date. It is not an entry price (what you would pay to acquire), replacement cost, or necessarily the present value of cash flows.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'A company holds publicly traded equity securities. The stock trades on the NYSE at $45 per share. Under ASC 820, this measurement is classified as:',
 '["Level 1 — quoted prices in active markets for identical assets", "Level 2 — observable inputs other than Level 1 prices", "Level 3 — unobservable inputs", "Either Level 1 or Level 2 depending on trading volume"]'::jsonb,
 0,
 'Quoted prices in active markets (such as the NYSE) for identical assets represent Level 1 inputs, which are the most reliable. No adjustments are made to Level 1 prices. If the stock were traded in a less active market or required adjustment, it could be Level 2.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Which of the following is an example of a Level 2 input under the ASC 820 fair value hierarchy?',
 '["A quoted stock price on the NYSE", "An interest rate swap valued using the LIBOR/SOFR yield curve", "A discounted cash flow model using management''s proprietary assumptions", "A price derived from a model with no observable market data"]'::jsonb,
 1,
 'Level 2 inputs are observable inputs other than quoted prices for identical assets in active markets. An interest rate swap priced using the LIBOR/SOFR yield curve uses observable market interest rates as inputs, making it Level 2. Quoted stock prices are Level 1. Proprietary models without observable data are Level 3.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Clearwater Corp. values an investment property using a discounted cash flow model based entirely on management''s own assumptions about future rental income and discount rates that are not corroborated by market data. This measurement is classified as:',
 '["Level 1", "Level 2", "Level 3", "Not within the fair value hierarchy"]'::jsonb,
 2,
 'Level 3 inputs are unobservable inputs reflecting the reporting entity''s own assumptions about what market participants would use. Management''s proprietary cash flow projections and discount rates that are not based on or corroborated by observable market data represent Level 3 inputs — the least reliable in the hierarchy.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Under ASC 820, the fair value measurement of a nonfinancial asset (such as real estate) is based on:',
 '["The asset''s value in its current use by the reporting entity", "The asset''s highest and best use from a market participant''s perspective", "The lower of current use value or highest and best use", "Historical cost adjusted for depreciation"]'::jsonb,
 1,
 'ASC 820-10-35-10 requires nonfinancial assets to be measured based on their highest and best use from the perspective of market participants, not the entity''s intended use. Highest and best use considers what is physically possible, legally permissible, and financially feasible.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'A company values a corporate bond using quoted prices for similar bonds in active markets, adjusted for differences in credit quality and maturity. Under ASC 820, this valuation technique is:',
 '["A Level 1 measurement", "Not a valid fair value technique", "A Level 3 measurement", "A Level 2 measurement using the market approach"]'::jsonb,
 3,
 'Using quoted prices for similar (not identical) assets with adjustments for observable differences (credit quality, maturity) represents a Level 2 measurement using the market approach. Level 1 requires identical assets with no adjustments. The market approach uses prices and other relevant information from market transactions involving comparable assets.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Which of the following valuation techniques is most commonly associated with Level 3 fair value measurements?',
 '["Quoted market prices for identical assets", "Matrix pricing based on benchmark yields", "Income approach using a discounted cash flow model with entity-specific assumptions", "Market approach using comparable transaction multiples"]'::jsonb,
 2,
 'Level 3 measurements typically use the income approach (discounted cash flow) with significant unobservable inputs such as entity-specific projections, growth rates, and discount rates. Quoted prices are Level 1, matrix pricing with benchmarks is typically Level 2, and comparable transactions using observable data are Level 2.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Pinnacle Corp. holds 100,000 shares of a publicly traded stock with a quoted price of $50 per share. Due to the large position size, Pinnacle believes the price would be impacted if the entire block were sold at once. Under ASC 820, at what value should the position be measured?',
 '["$5,000,000 (100,000 x $50) with no blockage discount", "$4,500,000 reflecting a 10% blockage discount", "$4,750,000 reflecting a 5% blockage discount", "The amount a willing buyer would pay for the entire block"]'::jsonb,
 0,
 'ASC 820-10-35-36B explicitly prohibits blockage factors (discounts for large position sizes) for Level 1 measurements. The fair value is the quoted price per unit multiplied by the quantity held: 100,000 x $50 = $5,000,000. The unit of account is the individual security, not the block.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Under ASC 820, which of the following is NOT one of the three valuation approaches?',
 '["Market approach", "Income approach", "Cost approach", "Residual approach"]'::jsonb,
 3,
 'ASC 820-10-35-24 identifies three valuation approaches: the market approach (using prices from market transactions for comparable assets), the income approach (converting future amounts such as cash flows to a present value), and the cost approach (current replacement cost). The residual approach is not a recognized valuation approach under ASC 820.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Oakley Corp. measures the fair value of a building using three approaches and obtains the following values: market approach $2,800,000; income approach $3,100,000; cost approach $2,600,000. Under ASC 820, which value should Oakley use?',
 '["The average of the three: $2,833,333", "The market approach value of $2,800,000 because it is always most reliable", "The value from the approach most representative of fair value in the circumstances", "The lowest value under conservatism"]'::jsonb,
 2,
 'ASC 820 does not prescribe a hierarchy among valuation approaches. The entity should use the approach (or combination) that is most representative of fair value in the circumstances, considering the availability and quality of inputs. Professional judgment is required to determine which technique best represents fair value.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Which of the following fair value measurements is classified as recurring?',
 '["Goodwill impairment testing", "Long-lived assets written down to fair value due to impairment", "Available-for-sale debt securities measured at fair value each reporting period", "Assets acquired in a business combination measured at acquisition-date fair value"]'::jsonb,
 2,
 'Recurring fair value measurements are those required in the balance sheet at the end of each reporting period, such as available-for-sale debt securities. Goodwill impairment testing, long-lived asset impairment write-downs, and acquisition-date measurements are nonrecurring — they occur only when specific events or circumstances trigger the measurement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Under ASC 820, the principal market for an asset is defined as:',
 '["The market where the entity usually sells the asset", "The market closest to the entity''s geographic location", "The market that maximizes the amount received for the asset", "The market with the greatest volume and level of activity for the asset"]'::jsonb,
 3,
 'The principal market is the market with the greatest volume and level of activity for the asset or liability. If a principal market exists, the fair value measurement represents the price in that market, even if a more advantageous price exists in a different market. Only in the absence of a principal market does the entity use the most advantageous market.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Lyric Corp. holds a liability that has no active market. The identical liability is traded as an asset by other parties at a quoted price of $950,000. Under ASC 820, what is the fair value of the liability?',
 '["$0 because liabilities cannot have fair value", "Cannot be determined without Level 3 inputs", "$950,000", "The present value of future cash flows only"]'::jsonb,
 2,
 'ASC 820-10-35-16B provides that when a quoted price for the transfer of an identical liability is not available, but the identical item is held by another party as an asset, the entity uses the quoted price of the asset from the holder''s perspective. The liability fair value is $950,000, assuming no adjustments are needed.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Under ASC 820, a Level 3 fair value measurement requires which of the following disclosures that are NOT required for Level 1 or Level 2?',
 '["The valuation technique used", "The classification within the hierarchy", "The fair value amount at the reporting date", "A reconciliation of beginning and ending balances (rollforward)"]'::jsonb,
 3,
 'ASC 820-10-50-2 requires entities with Level 3 measurements to provide a rollforward (reconciliation of beginning and ending balances) showing purchases, sales, issuances, settlements, total gains/losses, and transfers. This additional disclosure is required because Level 3 inputs are unobservable and require more transparency.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Ridge Corp. values a patent using a discounted cash flow model. The discount rate of 12% is derived from market data, but the projected cash flows of $500,000 per year are based entirely on management''s estimates. The overall measurement is classified as:',
 '["Level 1", "Level 2", "Level 3", "Level 2 for the discount rate and Level 3 for the cash flows"]'::jsonb,
 2,
 'The overall classification of a fair value measurement is determined by the lowest level input that is significant to the entire measurement. Although the discount rate is observable (Level 2), the projected cash flows are unobservable (Level 3) and are significant to the measurement. Therefore, the entire measurement is classified as Level 3.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Under ASC 820, the cost approach to fair value measurement reflects:',
 '["Historical acquisition cost less accumulated depreciation", "The liquidation value of the asset", "The net realizable value of the asset", "The amount that currently would be required to replace the service capacity of an asset"]'::jsonb,
 3,
 'The cost approach under ASC 820 reflects the current replacement cost — the amount that would currently be required to replace the service capacity of an asset (often referred to as current replacement cost). This is adjusted for obsolescence (physical, functional, and economic) and is not the same as historical cost or net realizable value.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Beacon Corp. transfers a fair value measurement from Level 2 to Level 3 during the reporting period. Under ASC 820, Beacon must disclose:',
 '["Nothing, as transfers between levels need not be disclosed", "Only the reason for the transfer", "Only the amounts transferred", "The reason for the transfer and the amounts involved"]'::jsonb,
 3,
 'ASC 820-10-50-2 requires disclosure of transfers between levels of the fair value hierarchy, including the reasons for the transfer and the amounts involved. Transfers between Level 2 and Level 3 are particularly important because they indicate a change in the observability of inputs used in the measurement.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'An entity measures a liability at fair value. There is no active market for transferring the identical liability, and it is not held as an asset by other parties. Under ASC 820, the entity should:',
 '["Not measure the liability at fair value", "Use a valuation technique such as the income approach from the counterparty''s perspective", "Use the historical issuance price", "Record the liability at par value"]'::jsonb,
 1,
 'When there is no quoted price for the transfer of an identical or similar liability and the identical item is not held as an asset by another party, the entity measures the fair value using a valuation technique (such as the income approach) from the perspective of a market participant who holds the liability. The technique should reflect the price a counterparty would demand to assume the obligation.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Under ASC 820, an orderly transaction is one that:',
 '["Occurs within a single business day", "Involves a distressed seller", "Assumes exposure to the market for a period prior to the measurement date to allow for normal marketing activities", "Requires government approval"]'::jsonb,
 2,
 'An orderly transaction assumes the asset or liability has been exposed to the market for a period before the measurement date sufficient for normal marketing activities. It is not a forced liquidation or distress sale. The concept ensures fair value reflects market conditions under normal, not unusual, circumstances.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Summit Corp. has a building with a current use as a warehouse. Market participants would value the property most highly as a retail center. Under ASC 820, the fair value measurement should:',
 '["Reflect the warehouse use since that is the entity''s current use", "Use the average of warehouse and retail center values", "Use the lower of warehouse or retail center value", "Reflect the retail center use as the highest and best use"]'::jsonb,
 3,
 'For nonfinancial assets, ASC 820 requires fair value to be measured based on the highest and best use from the perspective of market participants. If the highest and best use is as a retail center, that value must be used even though Summit currently uses the building as a warehouse.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'A company elects the fair value option under ASC 825 for a loan receivable. At year-end, the fair value of the loan is $480,000 and the amortized cost is $500,000. How is the $20,000 difference reported?',
 '["As an impairment loss in net income", "As an unrealized loss in other comprehensive income", "As a fair value loss in net income", "No recognition until the loan is settled"]'::jsonb,
 2,
 'When the fair value option is elected under ASC 825, subsequent changes in fair value are recognized in net income (not OCI). The $20,000 decrease ($500,000 - $480,000) is reported as a fair value loss in earnings. The fair value option, once elected, is irrevocable for that instrument.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Which of the following statements about the fair value hierarchy is correct?',
 '["Level 1 inputs can be adjusted for differences in the specific asset", "Level 2 inputs include quoted prices for similar assets in active markets", "Level 3 inputs are always preferred because they are entity-specific", "The hierarchy ranks inputs from least to most reliable"]'::jsonb,
 1,
 'Level 2 inputs include quoted prices for similar (not identical) assets or liabilities in active markets, quoted prices for identical assets in inactive markets, and other observable inputs. Level 1 inputs cannot be adjusted. Level 3 inputs are least reliable, not preferred. The hierarchy ranks inputs from most reliable (Level 1) to least reliable (Level 3).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Keystone Corp. holds a derivative financial instrument. The identical instrument is quoted on an exchange at $120,000, but Keystone believes the instrument could be sold to a dealer for $125,000. Under ASC 820, the fair value is:',
 '["$120,000 — the quoted price in the principal market", "$125,000 — the most advantageous price", "$122,500 — the average of both prices", "Whichever market the entity decides is the principal market"]'::jsonb,
 0,
 'If the exchange is the principal market (greatest volume and activity), the fair value is the quoted price in that market ($120,000) even if a more advantageous price exists elsewhere. ASC 820-10-35-5 states that the principal market price prevails. The entity does not choose — the principal market is determined objectively based on volume and activity.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'Under ASC 820, transaction costs are:',
 '["Included in the fair value measurement of all assets", "Excluded from fair value measurement but considered in determining the most advantageous market", "Added to fair value for assets and subtracted for liabilities", "Always ignored in fair value measurements"]'::jsonb,
 1,
 'Transaction costs are not a characteristic of the asset or liability and are therefore excluded from fair value measurement. However, transaction costs are considered when determining which market is the most advantageous (the market that maximizes the net amount received for an asset or minimizes the net amount paid for a liability, after transaction costs).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Fair Value',
 'An entity classifies a fair value measurement within the hierarchy based on:',
 '["The highest-level input that is significant to the measurement", "The average level of all inputs used", "The lowest-level input that is significant to the entire measurement", "The level of the most frequently used input"]'::jsonb,
 2,
 'ASC 820-10-35-37 states that the level within the fair value hierarchy is determined by the lowest-level input that is significant to the entire measurement. For example, if a measurement uses Level 2 and Level 3 inputs, and the Level 3 input is significant, the entire measurement is classified as Level 3.',
 'medium');

-- =============================================================================
-- Topic 5: Cash and Receivables (25 questions)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'A company''s bank statement shows a balance of $85,000. Outstanding checks total $12,000 and deposits in transit total $8,000. What is the adjusted bank balance?',
 '["$81,000", "$85,000", "$93,000", "$73,000"]'::jsonb,
 0,
 'Adjusted bank balance = Bank statement balance - Outstanding checks + Deposits in transit = $85,000 - $12,000 + $8,000 = $81,000. Outstanding checks reduce the bank balance because they have been issued but not yet cleared. Deposits in transit increase it because they have been sent but not yet recorded by the bank.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'During a bank reconciliation, a company discovers that the bank charged a $500 NSF check and a $25 service fee. These items require:',
 '["An adjustment to the bank balance", "An adjustment to the book (company) balance", "No adjustment — they are timing differences", "Reclassification from cash to accounts receivable only"]'::jsonb,
 1,
 'NSF checks and bank service fees are items that appear on the bank statement but are not yet recorded in the company''s books. They require adjustments to the book (company) balance. The company must reduce its cash balance by $525 ($500 NSF + $25 service fee) and make corresponding journal entries.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Mercury Corp.''s bank reconciliation reveals the following: book balance $42,000; outstanding checks $6,500; deposits in transit $3,200; bank service charge $150; note collected by bank $5,000 (including $200 interest); NSF check from customer $800. What is Mercury''s adjusted book balance?',
 '["$46,050", "$43,850", "$42,000", "$45,250"]'::jsonb,
 0,
 'Adjusted book balance = $42,000 + $5,000 (note collected) + $200 (interest earned) - $150 (service charge) - $800 (NSF) - $200 (wait, interest is included in the $5,000). Recalculating: $42,000 + $5,000 (note + interest collected by bank) - $150 (service charge) - $800 (NSF check) = $46,050. Outstanding checks and deposits in transit adjust the bank balance, not the book balance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Under the CECL model (ASC 326), the allowance for credit losses on trade receivables is based on:',
 '["Incurred losses only — losses that have already occurred", "Expected credit losses over the remaining life of the receivable, based on historical experience adjusted for current conditions and reasonable forecasts", "Probable and estimable losses under ASC 450", "Losses identified on a specific receivable-by-receivable basis only"]'::jsonb,
 1,
 'ASC 326 (CECL) requires entities to estimate expected credit losses over the contractual life of the asset, considering historical loss experience, current conditions, and reasonable and supportable forecasts. This replaced the incurred loss model, which delayed recognition until a loss event had occurred.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Under CECL, on the date a trade receivable is first recognized, the entity must:',
 '["Wait until payment is past due before recording any allowance", "Not record any allowance until a trigger event occurs", "Record the receivable net of expected losses", "Immediately record an allowance for expected credit losses"]'::jsonb,
 3,
 'A key change under CECL is day-one recognition of expected credit losses. On initial recognition of a financial asset measured at amortized cost, the entity must establish an allowance for expected credit losses. This forward-looking model ensures losses are recognized earlier than the previous incurred loss model.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Dalton Corp. has gross accounts receivable of $2,000,000 and estimates expected credit losses at 4% using the CECL model. The existing allowance balance is $50,000 (credit). What is the bad debt expense for the period?',
 '["$80,000", "$30,000", "$50,000", "$130,000"]'::jsonb,
 1,
 'Required allowance = $2,000,000 x 4% = $80,000. The existing allowance is $50,000. Bad debt expense = Required allowance - Existing allowance = $80,000 - $50,000 = $30,000. Under CECL, the allowance is maintained at the level of expected losses, and the expense adjusts the allowance to that target.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Arrow Corp. sells $500,000 of accounts receivable to a factor without recourse. The factor charges a 3% fee and withholds 5% as a holdback. What cash does Arrow receive?',
 '["$460,000", "$470,000", "$475,000", "$485,000"]'::jsonb,
 0,
 'Factor fee = $500,000 x 3% = $15,000. Holdback = $500,000 x 5% = $25,000 (recorded as a receivable from factor). Cash received = $500,000 - $15,000 - $25,000 = $460,000. The fee is a financing expense, and the holdback is returned after collections are complete.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'When accounts receivable are factored without recourse, the transaction is accounted for as:',
 '["A secured borrowing", "A sale of receivables", "An assignment of receivables", "A pledge of receivables"]'::jsonb,
 1,
 'Factoring without recourse transfers the credit risk to the factor. Since the seller has no obligation if customers fail to pay, the transaction meets the criteria for a sale under ASC 860. The receivables are removed from the seller''s balance sheet. Factoring with recourse may be treated as a secured borrowing if sale criteria are not met.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Blake Corp. factors $800,000 of receivables with recourse. The factor charges a 4% fee, withholds 10% as a holdback, and Blake estimates a recourse liability of $20,000. Assuming the transaction qualifies as a sale, what loss does Blake record?',
 '["$32,000", "$52,000", "$112,000", "$20,000"]'::jsonb,
 1,
 'Carrying amount of receivables: $800,000. Proceeds: Cash = $800,000 - $32,000 (fee) - $80,000 (holdback) = $688,000; Receivable from factor (holdback) = $80,000. Total assets received = $768,000. Less recourse liability = $20,000. Net = $768,000 - $20,000 = $748,000. Loss = $800,000 - $748,000 = $52,000 (the $32,000 fee plus the $20,000 recourse obligation).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'When receivables are pledged as collateral for a loan, the receivables:',
 '["Are removed from the borrower''s balance sheet", "Remain on the borrower''s balance sheet with disclosure of the pledge", "Are transferred to the lender''s balance sheet", "Are reduced to their net realizable value"]'::jsonb,
 1,
 'Pledging receivables as collateral is not a transfer of ownership. The receivables remain on the borrower''s balance sheet, and the loan proceeds are recorded as a liability. Disclosure of the pledge (the fact that receivables are serving as collateral) is required in the notes to the financial statements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Jasper Corp. assigns $400,000 of specific accounts receivable to a finance company and receives a loan of $320,000 (80% of assigned receivables) at 9% annual interest. What journal entry does Jasper record at the inception of the assignment?',
 '["Debit Cash $320,000; Credit Notes Payable $320,000 and disclose the assignment", "Debit Cash $400,000; Credit Accounts Receivable $400,000", "Debit Cash $320,000; Credit Accounts Receivable $320,000", "Debit Cash $320,000; Credit Accounts Receivable $400,000, Credit Gain $80,000"]'::jsonb,
 0,
 'Assignment is a secured borrowing, not a sale. Jasper records Cash (debit) $320,000 and Notes Payable (credit) $320,000. The $400,000 of assigned receivables remain on Jasper''s balance sheet but are reclassified and disclosed as assigned. Collections on the receivables are used to repay the loan.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Grant Inc. accepts a $100,000, 6-month, 8% note receivable from a customer on July 1. What is the interest receivable at December 31?',
 '["$8,000", "$2,000", "$4,000", "$100,000"]'::jsonb,
 0,
 'Interest = Principal x Rate x Time = $100,000 x 8% x 6/12 = $4,000. Since the note is for 6 months from July 1 to December 31, the full 6 months of interest ($4,000) is accrued at year-end. The note matures on December 31, so all interest has been earned.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Phoenix Corp. sells goods for $50,000 and accepts a 2-year, noninterest-bearing note. The market rate for similar notes is 10%. What amount should Phoenix record as sales revenue?',
 '["$50,000", "$45,455", "$41,322", "$40,000"]'::jsonb,
 2,
 'A noninterest-bearing note must be recorded at present value using the market rate. PV = $50,000 / (1.10)^2 = $50,000 / 1.21 = $41,322 (rounded). Sales revenue is $41,322. The $8,678 difference ($50,000 - $41,322) represents imputed interest recognized over the 2-year term using the effective interest method.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Under the CECL model, which of the following is NOT a valid method for estimating expected credit losses on trade receivables?',
 '["Aging schedule method", "Loss-rate method based on historical experience", "Discounted cash flow method", "Waiting for specific identification of uncollectible accounts before recording any allowance"]'::jsonb,
 3,
 'CECL requires forward-looking estimates of expected losses, not reactive identification of specific bad accounts. The aging method, loss-rate method, and discounted cash flow method are all acceptable approaches under ASC 326. Waiting for specific identification contradicts the CECL principle of recognizing expected losses at inception.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Copper Corp. has the following receivables aging at December 31: Current ($500,000, 1% expected loss), 31-60 days ($200,000, 3% expected loss), 61-90 days ($80,000, 8% expected loss), Over 90 days ($40,000, 25% expected loss). What is the required allowance for credit losses?',
 '["$21,400", "$27,400", "$32,400", "$41,000"]'::jsonb,
 1,
 'Current: $500,000 x 1% = $5,000. 31-60 days: $200,000 x 3% = $6,000. 61-90 days: $80,000 x 8% = $6,400. Over 90 days: $40,000 x 25% = $10,000. Total required allowance = $5,000 + $6,000 + $6,400 + $10,000 = $27,400. The aging schedule method is one of the most common approaches under CECL for trade receivables.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'A bank reconciliation reveals that the bank incorrectly charged Company A''s account $2,000 for a check written by Company B. This error requires:',
 '["An adjustment to Company A''s book balance", "No adjustment since the bank will correct it automatically", "An adjustment to Company B''s book balance", "An adjustment to the bank balance (add $2,000)"]'::jsonb,
 3,
 'A bank error is adjusted on the bank side of the reconciliation. Since the bank incorrectly deducted $2,000, the bank balance is understated by $2,000 and must be increased. Company A should notify the bank to correct the error, but the reconciling item is shown as an addition to the bank balance.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Sterling Corp. has a $1,000,000 line of credit with $400,000 drawn. The undrawn portion of $600,000 represents:',
 '["A cash equivalent on the balance sheet", "A note payable of $600,000", "An off-balance-sheet commitment disclosed in the notes", "Accounts receivable of $600,000"]'::jsonb,
 2,
 'The undrawn portion of a line of credit is an off-balance-sheet item. Only the $400,000 drawn is recorded as a liability. The $600,000 available commitment is disclosed in the notes as a financial commitment. It is not a cash equivalent, not a payable, and not a receivable.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Under ASC 326 (CECL), when a company writes off a specific receivable, the entry is:',
 '["Debit Bad Debt Expense; Credit Accounts Receivable", "Debit Allowance for Credit Losses; Credit Accounts Receivable", "Debit Accounts Receivable; Credit Allowance for Credit Losses", "Debit Bad Debt Expense; Credit Allowance for Credit Losses"]'::jsonb,
 1,
 'Under CECL, the write-off of a specific uncollectible account is debited to the Allowance for Credit Losses and credited to Accounts Receivable. The expense was already recognized when the allowance was established. The write-off reduces both the receivable and the allowance, with no impact on net income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Volt Corp. accepts a $200,000, 1-year, 5% note receivable on March 1. On December 31, Volt''s adjusting entry for accrued interest is:',
 '["Debit Interest Receivable $10,000; Credit Interest Revenue $10,000", "Debit Interest Receivable $8,333; Credit Interest Revenue $8,333", "Debit Interest Receivable $5,000; Credit Interest Revenue $5,000", "Debit Cash $8,333; Credit Interest Revenue $8,333"]'::jsonb,
 1,
 'Interest accrued = $200,000 x 5% x 10/12 = $8,333. From March 1 to December 31 is 10 months. The adjusting entry debits Interest Receivable and credits Interest Revenue for $8,333. Cash is not debited because the interest has been earned but not yet received.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Ridge Corp. has $3,000,000 in gross receivables and uses the CECL model. Historical loss data adjusted for current economic conditions indicates expected losses of 5%. During the period, actual write-offs were $120,000 and recoveries of previously written-off accounts were $15,000. What is the bad debt expense if the beginning allowance balance was $130,000?',
 '["$150,000", "$45,000", "$105,000", "$125,000"]'::jsonb,
 3,
 'Required ending allowance = $3,000,000 x 5% = $150,000. Beginning allowance: $130,000. Write-offs reduce allowance: -$120,000. Recoveries increase allowance: +$15,000. Allowance before adjustment = $130,000 - $120,000 + $15,000 = $25,000. Bad debt expense = $150,000 - $25,000 = $125,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Which of the following items would NOT be classified as cash or cash equivalents on the balance sheet?',
 '["Money market funds", "Treasury bills maturing in 60 days", "A certificate of deposit maturing in 6 months", "Petty cash"]'::jsonb,
 2,
 'Cash equivalents must be highly liquid investments with original maturities of three months or less. A CD maturing in 6 months exceeds this threshold and is classified as a short-term investment, not a cash equivalent. Money market funds, T-bills maturing in 60 days, and petty cash all qualify as cash or cash equivalents.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Titan Corp. factors $1,200,000 of receivables without recourse. The factor charges a 5% fee and retains 8% as a holdback. The receivables have a carrying amount of $1,200,000 (no prior allowance). What is the loss on sale?',
 '["$60,000", "$96,000", "$156,000", "$0"]'::jsonb,
 0,
 'Cash received = $1,200,000 - $60,000 (5% fee) - $96,000 (8% holdback) = $1,044,000. Receivable from factor (holdback) = $96,000. Total consideration = $1,044,000 + $96,000 = $1,140,000. Loss on sale = $1,200,000 - $1,140,000 = $60,000. The loss equals the factor''s fee since there is no recourse obligation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Under the CECL model, an entity must consider which of the following when estimating expected credit losses?',
 '["Only past events and current conditions", "Only reasonable and supportable forecasts of future conditions", "Past events, current conditions, and reasonable and supportable forecasts", "Only losses that have been specifically identified"]'::jsonb,
 2,
 'ASC 326-20-30-7 requires consideration of all three: historical experience (past events), current conditions, and reasonable and supportable forecasts of future economic conditions. For periods beyond which reasonable forecasts can be made, the entity reverts to historical loss rates. This three-pronged approach is central to CECL.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Consolidations',
 'Pinnacle Corp. owns 75% of Summit Inc. At year-end, the consolidated balance sheet reports noncontrolling interest of $600,000. During the next year, Summit reports net income of $400,000 and declares dividends of $80,000. What is the NCI balance at the end of the next year?',
 '["$680,000", "$700,000", "$720,000", "$520,000"]'::jsonb,
 0,
 'NCI''s share of net income = 25% x $400,000 = $100,000 (increases NCI). NCI''s share of dividends = 25% x $80,000 = $20,000 (decreases NCI). Ending NCI = $600,000 + $100,000 - $20,000 = $680,000. The NCI balance changes each period based on the NCI''s proportionate share of the subsidiary''s income, dividends, and other comprehensive income.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'A company has restricted cash of $250,000 held in escrow for a building purchase expected to close in 18 months. How should this be classified on the balance sheet?',
 '["Current asset — cash and cash equivalents", "Current asset — restricted cash", "Noncurrent asset — restricted cash", "Not reported on the balance sheet"]'::jsonb,
 2,
 'Restricted cash is classified based on the nature and expected timing of the restriction. Since the restriction extends beyond 12 months (18 months), the $250,000 is classified as a noncurrent asset. Under ASU 2016-18, restricted cash is included in the beginning and ending cash balances on the statement of cash flows but must be separately disclosed.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Cash and Receivables',
 'Under CECL, how should a company account for a previously written-off receivable that is subsequently collected?',
 '["Credit Bad Debt Expense", "Credit Allowance for Credit Losses and debit Cash", "Credit Revenue", "Credit Gain on Recovery"]'::jsonb,
 1,
 'When a previously written-off receivable is recovered, the entry reverses the write-off by debiting Accounts Receivable and crediting the Allowance for Credit Losses, then recording the cash collection normally (debit Cash, credit Accounts Receivable). The net effect is debit Cash, credit Allowance — restoring the allowance, not directly affecting income.',
 'medium');
-- FAR Chunk 4: Not-for-Profit, Governmental Accounting, Employee Benefit Plans, Special Purpose Frameworks

-- =============================================================================
-- Not-for-Profit Accounting — 28 questions
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A donor contributes $500,000 to a not-for-profit organization and stipulates that the principal must be maintained in perpetuity, with only the investment income available for program activities. How should the NFP classify this contribution at the time of receipt?',
 '["Net assets without donor restrictions", "Net assets with donor restrictions", "Revenue without donor restrictions", "Deferred revenue"]'::jsonb,
 1,
 'Under ASC 958, contributions where the donor stipulates that the principal be maintained in perpetuity are classified as net assets with donor restrictions. The two-category model (with and without donor restrictions) replaced the former three-category model. Since the donor imposed a perpetual restriction, the contribution increases net assets with donor restrictions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit organization receives a $200,000 grant with a stipulation that funds may only be used for youth literacy programs. During the year, the NFP spends $140,000 on qualifying literacy activities. What is the effect on the statement of activities for the year?',
 '["$200,000 increase in revenue without donor restrictions and $140,000 in program expenses", "$200,000 increase in revenue with donor restrictions and no reclassification until fully spent", "$140,000 increase in revenue without donor restrictions only", "$200,000 increase in revenue with donor restrictions and $140,000 reclassification to without donor restrictions"]'::jsonb,
 3,
 'The full $200,000 is recognized as revenue with donor restrictions when received because the donor specified a purpose restriction. As the NFP spends $140,000 on qualifying activities, $140,000 is reclassified from net assets with donor restrictions to net assets without donor restrictions as a satisfaction of purpose restriction. The remaining $60,000 stays in net assets with donor restrictions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A wealthy individual promises to donate $1,000,000 to a hospital if the hospital raises a matching $1,000,000 from other sources within 18 months. The hospital has raised $300,000 so far. How should the hospital account for this pledge?',
 '["Recognize $1,000,000 as contribution revenue with donor restrictions", "Recognize $300,000 as contribution revenue based on progress toward the condition", "Disclose the conditional promise in the notes but do not recognize revenue", "Recognize $1,000,000 as deferred revenue"]'::jsonb,
 2,
 'This is a conditional promise to give because it includes a barrier (raising matching funds) and a right of return/release. Under ASC 958-605, conditional promises to give are not recognized as revenue until the conditions are substantially met. Since only $300,000 of the required $1,000,000 match has been raised, the condition is not substantially met and the promise is disclosed in the notes only.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit organization receives an unconditional pledge of $750,000 to be paid over three years: $250,000 per year. The appropriate discount rate is 5%. How should the NFP initially recognize this pledge?',
 '["At $750,000 with no discount", "At $250,000 representing the first year''s payment only", "At $750,000 less an allowance for uncollectible pledges", "At the present value of $750,000 using a 5% discount rate"]'::jsonb,
 3,
 'Under ASC 958-605, unconditional promises to give that will be received in future periods are measured at fair value, which is typically the present value of estimated future cash flows using an appropriate discount rate. The full $750,000 is not used; rather, the NPV is calculated. The discount amortization is recognized as contribution revenue in subsequent periods.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'An attorney donates 80 hours of legal services to a not-for-profit at her normal billing rate of $350 per hour. The services relate to drafting contracts essential to the NFP''s operations. Under what condition should the NFP recognize contributed services?',
 '["Contributed services are never recognized by NFPs", "Only if the donor provides a written acknowledgment of the fair value", "Only if the services exceed $10,000 in value", "Only if the services create or enhance a nonfinancial asset or require specialized skills that the NFP would otherwise purchase"]'::jsonb,
 3,
 'Under ASC 958-605-25, contributed services are recognized if they (a) create or enhance a nonfinancial asset, or (b) require specialized skills, are provided by individuals possessing those skills, and would typically need to be purchased if not donated. Legal services are specialized, and drafting essential contracts meets the criteria. The NFP would recognize $28,000 (80 hours x $350) as both revenue and expense.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A group of parent volunteers spends 500 hours painting classrooms at a not-for-profit school. A professional painter would charge $45 per hour for comparable work. Should the NFP recognize these contributed services?',
 '["Yes, at $22,500 because the services have a measurable fair value", "Yes, because the services enhance a nonfinancial asset (the building)", "No, because painting does not require specialized skills and the volunteers do not possess specialized skills", "No, because volunteer services are never recognized"]'::jsonb,
 2,
 'Although the painting enhances a nonfinancial asset (the building), the question is whether the work creates or enhances the asset in a way that meets the recognition criteria. Under ASC 958-605-25, contributed services that enhance nonfinancial assets are recognized. However, painting by volunteers who are not professional painters does not require specialized skills. If the services do not require specialized skills AND do not create/enhance a nonfinancial asset in a capitalizable way, they are not recognized. The improvement must be capitalizable; routine maintenance painting by non-specialists typically is not.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit received donated pharmaceutical supplies with a donor-estimated fair value of $2,000,000. The NFP determined that the supplies have a fair value of $800,000 based on exit prices in the principal market. What amount should the NFP recognize as contributed nonfinancial assets?',
 '["$800,000 based on the NFP''s fair value determination", "$2,000,000 as stated by the donor", "$1,400,000 as the average of both estimates", "$0 because in-kind gifts of supplies are not recognized"]'::jsonb,
 0,
 'Under ASU 2020-07 and ASC 958, contributed nonfinancial assets are measured at fair value at the date of receipt. Fair value is determined by the reporting entity using ASC 820 principles (exit price in the principal market), not by the donor''s estimate. The NFP''s independently determined fair value of $800,000 is the appropriate amount to recognize.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'Under ASU 2020-07, which of the following disclosures is required for contributed nonfinancial assets?',
 '["Only the aggregate fair value of all contributed nonfinancial assets", "No specific disclosures are required beyond the statement of activities presentation", "Only whether the assets were used or sold", "Disaggregation by category, the valuation techniques used, and any donor restrictions"]'::jsonb,
 3,
 'ASU 2020-07 requires NFPs to present contributed nonfinancial assets as a separate line item in the statement of activities and disclose: (1) disaggregation by category, (2) qualitative information about whether the assets were monetized or utilized, (3) the valuation techniques and inputs used, (4) any donor-imposed restrictions, and (5) the NFP''s policies for monetizing vs. utilizing the assets.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit organization has donor-restricted net assets of $3,000,000 related to a time restriction that expires on December 31 of the current year. On that date, what journal entry is required?',
 '["Debit net assets with donor restrictions, credit net assets without donor restrictions for $3,000,000", "Debit contribution revenue with donor restrictions, credit contribution revenue without donor restrictions", "No entry is needed until the funds are actually spent", "Debit cash, credit net assets without donor restrictions"]'::jsonb,
 0,
 'When a time restriction expires, the NFP reclassifies the net assets from with donor restrictions to without donor restrictions. This is reported on the statement of activities as net assets released from restrictions. The reclassification entry debits net assets with donor restrictions and credits net assets without donor restrictions. No new revenue is created; this is a reclassification.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit''s endowment fund has original gift corpus of $5,000,000 and accumulated unspent investment returns of $1,200,000. State law (UPMIFA) permits the NFP to spend a prudent amount of appreciation. The board adopts a 4% spending policy. What is the maximum amount the NFP can appropriate for expenditure this year?',
 '["$200,000 (4% of corpus only)", "$0 because endowment principal cannot be spent", "$1,200,000 (all accumulated returns)", "$248,000 (4% of total endowment value)"]'::jsonb,
 3,
 'Under UPMIFA (adopted by most states) and ASC 958-205, a not-for-profit may spend from an endowment fund an amount it considers prudent, considering factors such as the fund''s purpose, economic conditions, and purchasing power preservation. The board''s 4% spending rate applied to the total endowment value ($5,000,000 + $1,200,000 = $6,200,000) yields $248,000. UPMIFA generally allows spending of both original gift and appreciation, subject to prudence.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit has an endowment with an original gift value of $2,000,000. Due to investment losses, the endowment''s fair value has declined to $1,850,000. Under UPMIFA, how should the NFP report the endowment?',
 '["The NFP must restore the endowment to $2,000,000 using unrestricted funds", "The $150,000 decline is reported as a loss in net assets without donor restrictions", "The endowment is written off as impaired", "The endowment is reported at $1,850,000 within net assets with donor restrictions, with disclosures about the underwater amount"]'::jsonb,
 3,
 'Under ASC 958-205, when an endowment''s fair value falls below the original gift amount (an ''underwater'' endowment), the entire amount remains in net assets with donor restrictions. The NFP must disclose the aggregate fair value of underwater endowments, the original gift amounts, and the aggregate deficiency. UPMIFA does not require restoration from unrestricted funds, nor is the endowment written off.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A donor establishes a charitable remainder trust naming a not-for-profit as the remainder beneficiary. The trust holds $4,000,000 in assets, and the present value of the remainder interest is estimated at $2,600,000. How does the NFP account for this split-interest agreement?',
 '["Do not recognize until the trust terminates and assets are received", "Recognize $4,000,000 as contribution revenue", "Recognize $2,600,000 as deferred revenue", "Recognize $2,600,000 as contribution revenue with donor restrictions and a corresponding receivable"]'::jsonb,
 3,
 'Under ASC 958-30, when a not-for-profit is the remainder beneficiary of a charitable remainder trust, it recognizes a receivable and contribution revenue equal to the present value of its expected future benefit ($2,600,000). The revenue is classified as with donor restrictions (time-restricted at minimum, since the benefit is not available until the trust terminates). The receivable is remeasured each period.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit organization reports the following on its statement of financial position: total assets $8,500,000; total liabilities $2,200,000; net assets with donor restrictions $3,100,000. What is the amount of net assets without donor restrictions?',
 '["$3,200,000", "$5,400,000", "$6,300,000", "$8,500,000"]'::jsonb,
 0,
 'The statement of financial position equation for NFPs is: Total Assets minus Total Liabilities equals Total Net Assets. Total net assets = $8,500,000 - $2,200,000 = $6,300,000. Net assets without donor restrictions = $6,300,000 - $3,100,000 (with donor restrictions) = $3,200,000. The two-category net asset model requires that total net assets equal the sum of with and without donor restrictions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'Which of the following statements about a not-for-profit''s statement of activities is correct?',
 '["It must report changes in each of the two categories of net assets and total net assets", "It must present expenses by both natural and functional classification on the face of the statement", "It is only required if the NFP has donor-restricted net assets", "It must present revenues and expenses in a multi-step format identical to for-profit entities"]'::jsonb,
 0,
 'Under ASC 958-205, the statement of activities must report the change in net assets for the period, showing changes in net assets with donor restrictions, without donor restrictions, and total. It must also report revenues, expenses, gains, and losses, as well as reclassifications between net asset categories. Expenses by functional and natural classification may be shown on a separate statement.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit incurred total expenses of $6,000,000 for the year: $3,600,000 for program services, $1,500,000 for management and general, and $900,000 for fundraising. On the statement of functional expenses, which classification represents the largest program efficiency ratio?',
 '["60%", "75%", "85%", "25%"]'::jsonb,
 0,
 'The program efficiency ratio measures the proportion of total expenses spent on program services: $3,600,000 / $6,000,000 = 60%. This ratio is a key metric used by donors, grantors, and watchdog organizations to evaluate how effectively an NFP uses its resources for its mission. Management and general represents 25% and fundraising represents 15%.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'Under ASC 958, which of the following expenses must be reported by a not-for-profit in an analysis of expenses by both function and nature?',
 '["Only program service expenses", "Only fundraising expenses exceeding 15% of total expenses", "All expenses must be analyzed by function (program, management, fundraising) and by nature (salaries, rent, depreciation, etc.)", "Only expenses funded by donor-restricted contributions"]'::jsonb,
 2,
 'ASU 2016-14 requires all not-for-profits to present an analysis of expenses by both functional classification (program services, management and general, fundraising) and natural classification (salaries, benefits, supplies, occupancy, depreciation, etc.). This can be presented on the face of the statement of activities, in a separate statement, or in the notes. All expenses are included, not just specific categories.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit receives a conditional grant of $800,000 from a foundation. The condition requires the NFP to hire a certified addiction counselor within 6 months. Two months later, the NFP hires the counselor. When should revenue be recognized?',
 '["At the date the grant agreement is signed", "Ratably over the 6-month condition period", "At the end of the fiscal year", "At the date the counselor is hired, when the condition is met"]'::jsonb,
 3,
 'Conditional contributions are recognized when the barrier is overcome and the right of return/release no longer exists. The barrier here is hiring the certified counselor. Once the NFP hires the counselor, the condition is substantially met and the $800,000 should be recognized as contribution revenue. Any purpose restrictions on how the funds are spent would then determine whether the revenue is classified as with or without donor restrictions.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit museum receives a collection of paintings valued at $12,000,000. The museum''s policy is to not capitalize collections. Which of the following is correct regarding this gift?',
 '["The museum must capitalize the collection at $12,000,000 regardless of policy", "The museum must recognize $12,000,000 in revenue but not as an asset", "Not capitalizing collections is never permitted under GAAP", "If the museum does not capitalize, it must still disclose the nature and description of the collection"]'::jsonb,
 3,
 'Under ASC 958-360, NFPs may choose not to capitalize collections if items are held for public exhibition, education, or research; are protected and preserved; and proceeds from any sales are used to acquire other collection items. If a museum elects this policy, it must consistently apply it and disclose a description of the collection, its stewardship, and why items are not capitalized.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit healthcare entity receives $350,000 in patient service revenue from insured patients. Contractual adjustments total $95,000 and bad debt expense is estimated at $20,000. Under ASC 954, what amount of net patient service revenue should the entity report?',
 '["$255,000", "$350,000", "$235,000", "$330,000"]'::jsonb,
 0,
 'Net patient service revenue for a not-for-profit healthcare entity is calculated as gross patient service revenue less contractual adjustments: $350,000 - $95,000 = $255,000. Under ASU 2014-09 (ASC 606), the provision for bad debts is no longer presented as a deduction from net revenue but is classified as an operating expense. Therefore, the $20,000 bad debt is reported separately as an expense.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A donor contributes $100,000 to a not-for-profit and specifies that the funds must be used to purchase computer equipment. The NFP purchases $100,000 of equipment during the same fiscal year. If the NFP has a policy of implying a time restriction over the useful life of long-lived assets, how is the contribution reported?',
 '["$100,000 is recognized as net assets without donor restrictions at the time of receipt", "$100,000 is recognized as deferred revenue", "$100,000 released from restriction immediately upon purchase", "$100,000 remains in net assets with donor restrictions and is released over the equipment''s useful life"]'::jsonb,
 3,
 'When an NFP receives a contribution restricted for the acquisition of long-lived assets and has a policy of implying a time restriction over the asset''s useful life, the contribution remains in net assets with donor restrictions even after the asset is purchased. It is released from restriction over the useful life as the asset depreciates. This is an accounting policy choice; alternatively, the NFP could release the restriction when the asset is placed in service.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit receives an unconditional promise to give $600,000, collectible in equal annual installments over 3 years starting next year. The discount rate is 6%. The present value of the pledge is approximately $535,000. In the second year, what amount of contribution revenue is recognized from the discount amortization?',
 '["$0 because revenue was fully recognized in year one", "$200,000 representing the cash collected", "$21,667 (straight-line over 3 years)", "$32,100 (6% of beginning-of-year-2 carrying amount)"]'::jsonb,
 3,
 'Multi-year unconditional pledges are initially recorded at present value. Each year, the discount amortization (interest accretion) is recognized as additional contribution revenue. In year 2, this equals the discount rate times the carrying amount of the receivable at the beginning of year 2. Assuming the beginning balance is approximately $535,000 adjusted for year 1 amortization and collections, the amortization is approximately $32,100.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit organization makes a grant of $150,000 to another NFP with a condition that the recipient must provide quarterly progress reports and use the funds exclusively for clean water projects. Which of the following is true regarding the grantor NFP?',
 '["The grantor recognizes $150,000 as expense immediately upon disbursement", "The grantor defers the expense until the clean water project is complete", "The grantor recognizes $37,500 per quarter as each report is submitted", "The grantor recognizes the expense only when the conditions are met by the recipient"]'::jsonb,
 3,
 'Under ASC 958-605, from the grantor''s perspective, a conditional grant is not recognized as expense until the recipient substantially meets the conditions (barriers). As the recipient submits quarterly reports and uses funds for the specified purpose, the conditions are progressively met and the grantor recognizes expense accordingly. This mirrors the revenue recognition by the recipient.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit organization presents a statement of cash flows. Under ASC 958, donor-restricted contributions received for the acquisition of long-lived assets are classified in which section of the statement of cash flows?',
 '["Operating activities", "Investing activities", "Financing activities", "Supplemental disclosures only"]'::jsonb,
 2,
 'Under ASC 958-230, donor-restricted contributions and investment income that are restricted for long-term purposes (such as acquiring long-lived assets or endowment) are classified as financing activities on the statement of cash flows. This differs from for-profit entities and reflects the unique nature of donor-restricted inflows for NFPs.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A charity holds a special fundraising gala. Tickets are sold for $500 each, and the fair value of meals and entertainment provided to each attendee is $120. The charity sells 200 tickets. How much contribution revenue and exchange revenue should the charity recognize?',
 '["$100,000 contribution revenue and $0 exchange revenue", "$76,000 contribution revenue and $24,000 exchange revenue", "$0 contribution revenue and $100,000 exchange revenue", "$50,000 contribution revenue and $50,000 exchange revenue"]'::jsonb,
 1,
 'Under ASC 958-605, special events with both exchange and contribution elements require bifurcation. The exchange element equals the fair value of benefits provided: 200 x $120 = $24,000. The contribution element equals total proceeds minus the exchange component: (200 x $500) - $24,000 = $100,000 - $24,000 = $76,000. The $76,000 is contribution revenue and the $24,000 is exchange transaction revenue.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'Under ASC 958, a not-for-profit is required to provide information about the nature and amounts of which of the following in its financial statements?',
 '["Board-designated net assets within net assets without donor restrictions", "Only net assets with perpetual donor restrictions", "Only temporarily restricted net assets as previously defined under legacy standards", "Unrestricted net assets by department"]'::jsonb,
 0,
 'Although the two-category net asset model eliminated the former three categories, ASC 958-210 requires NFPs to disclose the amount of board-designated net assets within net assets without donor restrictions. Board designations are internal and can be reversed by the board, so they remain classified as without donor restrictions but must be disclosed to inform financial statement users of management''s intentions.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit university receives a federal grant of $2,000,000 that requires the university to provide matching funds of $500,000 and submit an annual compliance report. At year-end, the university has provided the matching funds but has not yet submitted the compliance report. How should the grant be recognized?',
 '["$2,000,000 as revenue because matching funds were provided", "$0 because the compliance report has not been submitted", "$2,000,000 as revenue if the compliance report is a routine administrative requirement, not a barrier", "$1,500,000 representing the grant minus the match"]'::jsonb,
 2,
 'Under ASC 958-605, the analysis requires determining whether each stipulation is a barrier. The matching fund requirement is a barrier that has been met. The compliance report must be evaluated: if it is a routine administrative requirement rather than a substantive barrier, it does not prevent recognition. If the report is merely administrative, the grant conditions are substantially met and $2,000,000 is recognized as revenue.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit receives a contribution of publicly traded stock valued at $180,000 on the date of receipt, with no donor restrictions. The stock was purchased by the donor for $90,000. At what amount does the NFP recognize contribution revenue?',
 '["$90,000, the donor''s cost basis", "$180,000, the fair value on the date of receipt", "$135,000, the average of cost and fair value", "$0, because stock contributions are not recognized until sold"]'::jsonb,
 1,
 'Under ASC 958-605, contributions of assets other than cash are recognized at fair value on the date of receipt. The donor''s cost basis is irrelevant to the NFP. The NFP recognizes $180,000 as contribution revenue without donor restrictions and records the investment at $180,000. If and when the stock is sold, any difference between the sale price and $180,000 is a gain or loss.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Not-for-Profit Accounting',
 'A not-for-profit organization enters into a charitable lead annuity trust where the NFP receives annual payments of $50,000 for 10 years, after which the remaining assets revert to the donor''s heirs. The present value of the annuity stream is $386,000. How should the NFP account for this split-interest agreement at inception?',
 '["Recognize $50,000 of revenue each year as payments are received", "Do not recognize until all payments have been received", "Recognize a receivable and contribution revenue of $500,000", "Recognize a receivable and contribution revenue of $386,000"]'::jsonb,
 3,
 'Under ASC 958-30, a charitable lead trust where the NFP is the lead (income) beneficiary is a split-interest agreement. At inception, the NFP recognizes a receivable and contribution revenue equal to the present value of its expected future cash flows, which is $386,000. The difference between total payments ($500,000) and the present value ($386,000) is recognized as contribution revenue through discount amortization over the 10-year term.',
 'hard');

-- =============================================================================
-- Governmental Accounting — 28 questions
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A city levies $10,000,000 in property taxes for the current fiscal year. Historical data indicates that 3% will be uncollectible. Of the remaining amount, $9,200,000 is expected to be collected within 60 days of year-end, with the balance collected in the following 4 months. Under modified accrual accounting, what amount of property tax revenue should the city recognize in the General Fund?',
 '["$9,700,000", "$9,409,000", "$10,000,000", "$9,200,000"]'::jsonb,
 3,
 'Under modified accrual accounting (GASB standards), revenue is recognized when it is both measurable and available. Available means collectible within the current period or soon enough thereafter to pay current-period liabilities (typically 60 days). The levy net of uncollectibles is $9,700,000, but only $9,200,000 is expected within 60 days. The remaining $500,000 is deferred inflow of resources.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'Which of the following is the measurement focus used by governmental funds under GASB standards?',
 '["Cash basis measurement focus", "Full accrual measurement focus", "Economic resources measurement focus", "Current financial resources measurement focus"]'::jsonb,
 3,
 'Governmental funds (general, special revenue, capital projects, debt service, and permanent funds) use the current financial resources measurement focus. This means they measure and report only current financial assets and liabilities (those expected to be received or paid in the near term) rather than all economic resources. Long-term assets and long-term liabilities are excluded from governmental fund balance sheets.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A state government issues $50,000,000 in general obligation bonds to finance construction of a new highway. In which governmental fund type should the bond proceeds and construction expenditures be recorded?',
 '["General Fund", "Special Revenue Fund", "Capital Projects Fund", "Debt Service Fund"]'::jsonb,
 2,
 'Capital projects funds are used to account for financial resources restricted, committed, or assigned for the acquisition or construction of major capital facilities (other than those financed by proprietary or fiduciary funds). Bond proceeds for highway construction and the related expenditures are reported in a capital projects fund. The debt service fund handles principal and interest payments, not construction.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A county government records the following in its General Fund: approved budget of $40,000,000 in estimated revenues and $38,000,000 in appropriations. What is the budgetary journal entry at the beginning of the fiscal year?',
 '["Debit Estimated Revenues $40,000,000; Credit Appropriations $38,000,000; Credit Budgetary Fund Balance $2,000,000", "Debit Appropriations $38,000,000; Credit Estimated Revenues $40,000,000; Credit Cash $2,000,000", "Debit Cash $40,000,000; Credit Revenue $40,000,000", "No entry is required; the budget is disclosed in notes only"]'::jsonb,
 0,
 'Governmental funds record the legally adopted budget through budgetary entries. Estimated Revenues (a budgetary asset) is debited for $40,000,000, Appropriations (a budgetary liability) is credited for $38,000,000, and Budgetary Fund Balance is credited for the $2,000,000 surplus. These nominal accounts are reversed at year-end and facilitate comparison of actual results to budget.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A city issues purchase orders totaling $1,200,000 for police vehicles. At year-end, the vehicles have not been received. What is the appropriate accounting treatment in the General Fund?',
 '["No accounting entry is needed until the vehicles are received", "Record $1,200,000 as a prepaid asset", "Record $1,200,000 as an expenditure and a liability", "Record an encumbrance of $1,200,000 by debiting Encumbrances and crediting Budgetary Fund Balance Reserved for Encumbrances"]'::jsonb,
 3,
 'Encumbrance accounting is used in governmental funds to track commitments for future expenditures. When purchase orders are issued, an encumbrance entry reserves budget authority: Debit Encumbrances, Credit Budgetary Fund Balance Reserved for Encumbrances. This is a budgetary control mechanism, not an expenditure. The actual expenditure is recorded when the goods are received and the liability is established.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A government''s General Fund receives a state grant of $3,000,000 that is restricted for public safety programs. In which fund type should this grant be accounted for?',
 '["General Fund because all tax-supported activities belong there", "Special Revenue Fund because the revenue source is restricted for a specific purpose", "Capital Projects Fund because the grant is from an external source", "Either the General Fund or a Special Revenue Fund, depending on the government''s policy"]'::jsonb,
 3,
 'Under GASB 54, special revenue funds are used for revenues that are restricted or committed for purposes other than debt service or capital projects. However, a government has discretion in whether to use a special revenue fund or include restricted grants in the General Fund with appropriate fund balance classification. GASB requires at minimum one governmental fund (the General Fund) but permits flexibility in the use of special revenue funds.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'Under GASB 34, which financial statements are included in government-wide financial statements?',
 '["Statement of net position and statement of activities", "Balance sheet and statement of revenues, expenditures, and changes in fund balance", "Statement of cash flows and statement of changes in fiduciary net position", "Budget-to-actual comparison and statement of net position"]'::jsonb,
 0,
 'Government-wide financial statements include the statement of net position (similar to a balance sheet) and the statement of activities (which reports revenues and expenses using the economic resources measurement focus and accrual basis). These statements present governmental and business-type activities in separate columns. Fund financial statements use different formats, and the budget comparison is a required supplementary information item.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A government reports the following in its government-wide statement of net position: total assets $250,000,000; deferred outflows of resources $8,000,000; total liabilities $160,000,000; deferred inflows of resources $12,000,000. Of the net position, $45,000,000 is invested in capital assets net of related debt and $15,000,000 is restricted. What is the unrestricted net position?',
 '["$86,000,000", "$41,000,000", "$26,000,000", "$98,000,000"]'::jsonb,
 2,
 'Net position = (Total Assets + Deferred Outflows) - (Total Liabilities + Deferred Inflows) = ($250,000,000 + $8,000,000) - ($160,000,000 + $12,000,000) = $86,000,000. The three categories of net position are: net investment in capital assets ($45,000,000), restricted ($15,000,000), and unrestricted. Unrestricted = $86,000,000 - $45,000,000 - $15,000,000 = $26,000,000.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'Which of the following revenue sources is recognized under modified accrual accounting when the underlying exchange transaction occurs, provided the revenue is available?',
 '["Property taxes", "Fines and forfeitures", "Federal grants for reimbursable expenditures", "Sales taxes"]'::jsonb,
 3,
 'Sales taxes are exchange-like derived tax revenues that are recognized when the underlying exchange (the sale) occurs, provided the revenue is available (collected within the availability period). Property taxes are imposed nonexchange revenues recognized in the period for which levied. Federal grants for reimbursable expenditures are recognized when qualifying expenditures are incurred. Each type has different recognition criteria under GASB 33.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A city operates a municipal water utility. Under GASB standards, which fund type should be used to account for the water utility?',
 '["General Fund", "Special Revenue Fund", "Enterprise Fund", "Internal Service Fund"]'::jsonb,
 2,
 'Enterprise funds are proprietary funds used to account for activities where the government provides goods or services to the general public for a fee. A municipal water utility charges customers for water service, making it appropriate for an enterprise fund. Enterprise funds use the economic resources measurement focus and accrual basis, similar to private-sector accounting. Internal service funds serve other government departments, not the public.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A government''s internal service fund provides printing services to other departments. During the year, the fund billed departments $2,400,000 and incurred costs of $2,100,000. For the government-wide financial statements, how are internal service fund activities typically reported?',
 '["In a separate internal service activities column", "Internal service fund activities are eliminated entirely", "As a business-type activity", "As a governmental activity because the predominant customers are governmental funds"]'::jsonb,
 3,
 'Under GASB 34, internal service funds are proprietary funds, but their activities are typically reported within governmental activities in the government-wide statements when governmental funds are the predominant participants. The rationale is that internal service funds primarily serve governmental activities, so including them as business-type activities would distort the presentation. Charges between funds are eliminated to avoid double-counting.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'Under GASB standards, which of the following is classified as a fiduciary fund?',
 '["A fund used to account for employee pension benefits held in trust", "A fund used to account for the construction of a new school", "A fund used to pay general obligation bond principal and interest", "A fund used to account for the government''s motor pool fleet"]'::jsonb,
 0,
 'Fiduciary funds account for resources held in trust or as agent for parties outside the government. A pension trust fund for employee pension benefits is a fiduciary fund because the government holds and administers these resources for the benefit of plan participants. Capital projects, debt service, and internal service activities are accounted for in governmental or proprietary funds.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'Under GASB 84, which of the following activities should be reported in a custodial fund?',
 '["Special assessments collected by the county on behalf of a special district", "Payroll taxes withheld from employees and remitted to the IRS within the same period", "Property taxes levied for the county''s own operations", "Bond proceeds restricted for capital construction"]'::jsonb,
 0,
 'Under GASB 84, custodial funds replaced the former agency fund classification and are used when a government holds assets for other organizations or individuals. Special assessments collected on behalf of another government entity are custodial in nature. Payroll tax withholdings remitted in the same period are typically recorded through the General Fund. Property taxes for own operations go to governmental funds, and bond proceeds to capital projects funds.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A government receives a $5,000,000 donation with the stipulation that the principal be permanently invested and only the earnings may be used for park maintenance. Which fund type is appropriate?',
 '["Special Revenue Fund", "Permanent Fund", "General Fund with restricted fund balance", "Private-Purpose Trust Fund"]'::jsonb,
 1,
 'A permanent fund is used to account for resources that are legally restricted so that only earnings, not principal, may be used to support government programs (in this case, park maintenance that benefits the government''s citizens). A private-purpose trust fund would be used only if the earnings benefit individuals, private organizations, or other governments rather than the reporting government''s own programs.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'On the government-wide statement of activities, a city reports expenses of $80,000,000 for public safety and program revenues (charges for services and grants) of $22,000,000 for public safety. What is the net expense for public safety?',
 '["$80,000,000", "$102,000,000", "$22,000,000", "$58,000,000"]'::jsonb,
 3,
 'The statement of activities uses a net cost format where program revenues are deducted from program expenses to show the net cost that must be financed by general revenues (taxes, unrestricted grants, etc.). Net expense for public safety = $80,000,000 - $22,000,000 = $58,000,000. This format highlights the burden each function places on general taxpayers after accounting for direct program revenues.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A government acquires a fire truck for $650,000 using General Fund appropriations. How is this transaction reported in the General Fund versus the government-wide financial statements?',
 '["Both report a $650,000 expenditure", "General Fund reports a capital asset; government-wide reports an expenditure", "Both report a $650,000 capital asset", "General Fund reports a $650,000 expenditure; government-wide reports a $650,000 capital asset"]'::jsonb,
 3,
 'In the General Fund (modified accrual, current financial resources focus), the purchase is an expenditure of $650,000 since it uses current financial resources. In the government-wide statements (accrual basis, economic resources focus), the fire truck is capitalized as a capital asset of $650,000 and depreciated over its useful life. This is a key reconciling item between fund and government-wide statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A government''s General Fund reports $2,000,000 of expenditures for debt service principal payments on general long-term debt. In the government-wide statement of activities, how is this principal payment treated?',
 '["As a deferred outflow of resources", "As a financing activity only disclosed in the notes", "As an expense of $2,000,000", "As a reduction of long-term liabilities, not an expense"]'::jsonb,
 3,
 'In the General Fund, principal payments on long-term debt are reported as expenditures because they consume current financial resources. However, in the government-wide statements (accrual basis), principal payments reduce the outstanding bond liability and are not reported as expenses. Only interest accrued is an expense. This is another key reconciling item between fund-level and government-wide statements.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'Under GASB 54, which of the following fund balance classifications represents the most restrictive constraint on resources?',
 '["Committed", "Assigned", "Restricted", "Unassigned"]'::jsonb,
 2,
 'GASB 54 establishes a hierarchy of fund balance classifications from most to least restrictive: nonspendable, restricted, committed, assigned, and unassigned. Restricted fund balance has constraints imposed by external parties (creditors, grantors, other governments) or by law, making it more restrictive than committed (imposed by the government''s highest decision-making authority) or assigned (intended use established by the governing body or designated official).',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A government''s General Fund has $500,000 of prepaid insurance and $1,200,000 of inventory at year-end. Under GASB 54, how should these items be classified in the fund balance?',
 '["Restricted fund balance", "Committed fund balance", "Nonspendable fund balance", "Assigned fund balance"]'::jsonb,
 2,
 'Under GASB 54, nonspendable fund balance includes amounts that are not in spendable form (such as inventory, prepaid items, and long-term receivables) or are legally or contractually required to be maintained intact. Prepaid insurance ($500,000) and inventory ($1,200,000) are not in spendable form, so $1,700,000 is classified as nonspendable fund balance.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A government reports the following in its Debt Service Fund: beginning fund balance $800,000; property tax revenue $5,000,000; interest income $120,000; bond principal expenditure $3,500,000; bond interest expenditure $1,800,000; operating transfer in from General Fund $600,000. What is the ending fund balance?',
 '["$1,220,000", "$620,000", "$1,520,000", "$220,000"]'::jsonb,
 0,
 'Ending fund balance = Beginning fund balance + Revenues + Other financing sources - Expenditures. = $800,000 + ($5,000,000 + $120,000) + $600,000 - ($3,500,000 + $1,800,000) = $800,000 + $5,120,000 + $600,000 - $5,300,000 = $1,220,000. The transfer in is an other financing source, not revenue, but it increases fund balance.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'Under modified accrual accounting, at what point should a government recognize expenditures for compensated absences (vacation pay) in a governmental fund?',
 '["When the liability is incurred (employees earn the leave)", "When the employee uses the leave", "When the compensated absences are expected to be liquidated with available current financial resources", "At the end of the fiscal year for all accumulated leave"]'::jsonb,
 2,
 'Under modified accrual accounting in governmental funds, expenditures for compensated absences are recognized only to the extent they are expected to be liquidated with expendable available financial resources. Typically, only the current portion due (amounts expected to be paid with current resources) is recorded as a fund expenditure. The remaining long-term liability is reported only in the government-wide statements.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A government converts its fund financial statements to government-wide financial statements. Which of the following adjustments is required in the reconciliation?',
 '["Adding capital asset purchases that were recorded as expenditures in governmental funds", "Removing all proprietary fund activities", "Eliminating all interfund transfers", "Converting the cash basis to modified accrual"]'::jsonb,
 0,
 'The reconciliation between governmental fund financial statements and government-wide governmental activities requires adding capital assets that were expensed in governmental funds (since government-wide uses accrual basis and capitalizes long-lived assets). Other reconciling items include adding long-term liabilities, removing bond proceeds (reported as other financing sources in funds), and adjusting for differences in revenue recognition timing.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A school district receives state aid based on student enrollment. The state allocates $8,000 per student. The district has 5,000 students and has received $35,000,000 as of year-end, with the remaining $5,000,000 to be received 90 days after year-end. The district''s availability period is 60 days. How much state aid revenue should the General Fund recognize?',
 '["$37,500,000", "$40,000,000", "$5,000,000", "$35,000,000"]'::jsonb,
 3,
 'Total state aid earned is 5,000 x $8,000 = $40,000,000. Under modified accrual, revenue must be both measurable and available. The $35,000,000 received by year-end is available. The remaining $5,000,000, expected 90 days after year-end, exceeds the 60-day availability period and must be reported as deferred inflow of resources, not revenue. Therefore, only $35,000,000 is recognized.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'Under GASB 68, a government participates in a cost-sharing multiple-employer defined benefit pension plan. On the government-wide financial statements, the government should report:',
 '["Only the annual pension contributions as expense", "Its proportionate share of the net pension liability and pension expense", "The total plan liability as if it were a single-employer plan", "No pension liability because it is a cost-sharing plan"]'::jsonb,
 1,
 'Under GASB 68, governments participating in cost-sharing plans must report their proportionate share of the collective net pension liability and pension expense in their government-wide financial statements. The proportionate share is typically based on the government''s contributions relative to total employer contributions. Deferred outflows and inflows related to pensions are also reported proportionately.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A government''s enterprise fund reports operating revenues of $15,000,000 and operating expenses of $12,000,000, including $2,000,000 of depreciation. Nonoperating items include interest expense of $800,000 and an investment gain of $200,000. Capital contributions from developers total $1,500,000. What is the change in net position?',
 '["$3,000,000", "$3,200,000", "$2,400,000", "$3,900,000"]'::jsonb,
 3,
 'Change in net position = Operating income + Nonoperating revenues/expenses + Capital contributions. Operating income = $15,000,000 - $12,000,000 = $3,000,000. Nonoperating = -$800,000 + $200,000 = -$600,000. Capital contributions = $1,500,000. Total change = $3,000,000 - $600,000 + $1,500,000 = $3,900,000. Capital contributions are reported separately below nonoperating items.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A county collects $2,500,000 in property taxes on behalf of an independent fire district. The county retains 2% as a collection fee. Under GASB standards, how should the county report this transaction?',
 '["Revenue of $2,500,000 in a special revenue fund", "Revenue of $50,000 (the collection fee) and an agency/custodial liability for the $2,450,000", "Revenue of $2,500,000 and expenditure of $2,450,000", "No entry because the county is merely an intermediary"]'::jsonb,
 1,
 'The county acts as an agent/custodian collecting taxes on behalf of the fire district. The $2,450,000 passed through to the fire district is not the county''s revenue; it is recorded as a custodial liability (or in a custodial fund). The 2% collection fee of $50,000 is the county''s revenue for services rendered. Pass-through amounts should not be grossed up as both revenue and expenditure.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A government''s General Fund transfers $3,000,000 to a Capital Projects Fund and $1,000,000 to an Enterprise Fund. How are these transactions reported in the General Fund?',
 '["Other financing uses of $3,000,000 (to Capital Projects) and expenditures of $1,000,000 (to Enterprise)", "Expenditures of $4,000,000", "Other financing uses of $3,000,000 (to Capital Projects) and transfers out of $1,000,000 (to Enterprise)", "Other financing uses of $4,000,000"]'::jsonb,
 3,
 'Under GASB standards, interfund transfers are reported as other financing sources/uses in governmental funds, not as revenues or expenditures. Both the transfer to the Capital Projects Fund and the transfer to the Enterprise Fund are reported as other financing uses in the General Fund. The total is $4,000,000 reported as other financing uses. Transfers are reciprocal and are reported equally by both the sending and receiving funds.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Governmental Accounting',
 'A city issues $20,000,000 of general obligation bonds at 102 (a 2% premium). In the Capital Projects Fund, how are the proceeds reported?',
 '["Revenue of $20,400,000", "Other financing source of $20,400,000", "Other financing source of $20,000,000 with the $400,000 premium transferred to the Debt Service Fund", "Other financing source of $20,000,000 for bond proceeds and $400,000 as premium on bonds"]'::jsonb,
 3,
 'Under GASB standards, bond proceeds are reported as other financing sources in governmental funds. The face value ($20,000,000) and the premium ($400,000) are reported separately: the face value as ''bond proceeds'' and the premium as ''premium on bonds issued,'' both classified as other financing sources. The premium may subsequently be transferred to the Debt Service Fund per the bond resolution, but that is a separate interfund transaction.',
 'hard');

-- =============================================================================
-- Employee Benefit Plans — 25 questions
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'At December 31, a company''s defined benefit pension plan reports the following: projected benefit obligation (PBO) $8,000,000; plan assets at fair value $6,500,000. What is the funded status and how is it reported on the balance sheet?',
 '["$1,500,000 net pension asset", "$6,500,000 pension asset", "$8,000,000 pension liability", "$1,500,000 net pension liability"]'::jsonb,
 3,
 'Under ASC 715, the funded status of a defined benefit plan is measured as the difference between the PBO and the fair value of plan assets. PBO $8,000,000 minus plan assets $6,500,000 equals an underfunded status of $1,500,000, reported as a net pension liability on the balance sheet. If plan assets exceeded the PBO, a net pension asset would be reported.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company''s defined benefit plan has the following data for the year: service cost $400,000; interest cost $320,000; expected return on plan assets $280,000; amortization of prior service cost $50,000; amortization of net actuarial loss $30,000. What is the net periodic pension cost?',
 '["$520,000", "$720,000", "$470,000", "$400,000"]'::jsonb,
 0,
 'Net periodic pension cost = Service cost + Interest cost - Expected return on plan assets + Amortization of prior service cost + Amortization of net loss. = $400,000 + $320,000 - $280,000 + $50,000 + $30,000 = $520,000. Service cost is the only component classified in operating income; all other components are reported below operating income or in other income/expense under ASU 2017-07.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'Under ASU 2017-07, which component of net periodic pension cost is required to be presented within operating income on the income statement?',
 '["Interest cost", "Expected return on plan assets", "Service cost", "Amortization of prior service cost"]'::jsonb,
 2,
 'ASU 2017-07 requires that only the service cost component of net periodic pension cost be presented with other employee compensation costs in operating income. All other components (interest cost, expected return on plan assets, amortization of prior service cost, and amortization of net gains/losses) must be presented outside of operating income, typically in other income/expense.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company''s PBO at the beginning of the year is $5,000,000. The discount rate is 6%, service cost is $350,000, benefits paid to retirees are $420,000, and an actuarial loss of $180,000 arises from a change in mortality assumptions. What is the PBO at year-end?',
 '["$5,410,000", "$5,230,000", "$5,110,000", "$5,590,000"]'::jsonb,
 0,
 'Ending PBO = Beginning PBO + Service cost + Interest cost - Benefits paid + Actuarial losses (or - actuarial gains). Interest cost = $5,000,000 x 6% = $300,000. Ending PBO = $5,000,000 + $350,000 + $300,000 - $420,000 + $180,000 = $5,410,000. Benefits paid reduce the PBO because the obligation to those retirees has been settled. Actuarial losses increase the PBO.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company''s plan assets have a fair value of $4,000,000 at the beginning of the year. During the year, the company contributes $500,000, benefits paid are $350,000, and the actual return on plan assets is $360,000. What is the fair value of plan assets at year-end?',
 '["$4,510,000", "$4,150,000", "$4,860,000", "$4,010,000"]'::jsonb,
 0,
 'Ending plan assets = Beginning plan assets + Actual return on plan assets + Employer contributions - Benefits paid. = $4,000,000 + $360,000 + $500,000 - $350,000 = $4,510,000. Note that the actual return (not expected return) is used when reconciling plan assets. The difference between actual and expected return creates an asset gain or loss recognized in OCI.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'The expected return on plan assets for the year is $300,000 and the actual return is $220,000. What is the effect of this difference?',
 '["An asset gain of $80,000 recognized immediately in pension expense", "An asset loss of $80,000 recognized in other comprehensive income", "An asset gain of $80,000 recognized in other comprehensive income", "No effect because expected return is used for all purposes"]'::jsonb,
 1,
 'When actual return ($220,000) is less than expected return ($300,000), an asset loss of $80,000 results. This loss is recognized in other comprehensive income (OCI) and accumulated in AOCI. It will be amortized into pension expense in future periods only if the cumulative unrecognized net gain or loss exceeds the corridor threshold. The expected return of $300,000 is used in computing net periodic pension cost.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'Under the corridor approach for amortizing unrecognized net gains and losses, the corridor is defined as:',
 '["15% of the PBO", "10% of net periodic pension cost", "10% of the greater of the PBO or the market-related value of plan assets", "5% of the PBO or 5% of plan assets, whichever is greater"]'::jsonb,
 2,
 'The corridor is 10% of the greater of the PBO or the market-related value of plan assets at the beginning of the year. Only the cumulative unrecognized net gain or loss that exceeds this corridor threshold is subject to amortization. The excess is amortized over the average remaining service period of active employees. This approach smooths the impact of volatile actuarial and investment experience on pension expense.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company has a cumulative unrecognized net loss of $900,000 at the beginning of the year. The PBO is $7,000,000 and the market-related value of plan assets is $6,200,000. The average remaining service period is 10 years. What amount of net loss amortization is included in pension expense?',
 '["$90,000", "$20,000", "$62,000", "$0"]'::jsonb,
 1,
 'Corridor = 10% x greater of PBO ($7,000,000) or market-related value ($6,200,000) = 10% x $7,000,000 = $700,000. Excess = $900,000 - $700,000 = $200,000. Amortization = $200,000 / 10 years = $20,000. Only the amount exceeding the corridor is amortized, and it is spread over the average remaining service period of active employees.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company amends its pension plan to grant additional benefits for past service, creating prior service cost of $600,000. How is this initially recognized?',
 '["As an immediate expense of $600,000", "As a component of net periodic pension cost amortized over the remaining service period", "In other comprehensive income with subsequent amortization into pension expense", "As a direct reduction of retained earnings"]'::jsonb,
 2,
 'Under ASC 715, prior service cost from plan amendments is recognized in other comprehensive income (OCI) in the period of the amendment. It is then amortized from AOCI into net periodic pension cost over the remaining service period of the employees expected to benefit from the amendment. The full $600,000 goes to OCI initially, not directly to expense or retained earnings.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'What is the difference between the projected benefit obligation (PBO) and the accumulated benefit obligation (ABO)?',
 '["The PBO includes the effect of future salary increases while the ABO is based on current salary levels", "The ABO includes future salary increases while the PBO uses current salaries", "The PBO uses the expected return on assets while the ABO uses the actual return", "There is no difference; they are synonymous terms"]'::jsonb,
 0,
 'The projected benefit obligation (PBO) measures the present value of all benefits earned to date using projected future salary levels, while the accumulated benefit obligation (ABO) measures the same using current salary levels. The PBO is generally larger because it incorporates expected salary growth. ASC 715 requires the funded status based on the PBO to be reported on the balance sheet.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company settles a portion of its defined benefit pension obligation by purchasing annuity contracts from an insurance company for $3,200,000. The PBO settled is $3,000,000 and the fair value of plan assets allocated to the settlement is $2,800,000. What is the settlement gain or loss?',
 '["$200,000 loss", "$0", "$200,000 gain", "$400,000 loss"]'::jsonb,
 3,
 'A pension settlement removes both the PBO and plan assets related to the settled obligation. The settlement cost is the price paid for the annuities ($3,200,000). The gain or loss on settlement considers: PBO eliminated ($3,000,000) minus assets used ($2,800,000) = $200,000 net obligation; actual cost to settle = $3,200,000 minus assets used ($2,800,000) = $400,000 net cost. The settlement results in a loss of $400,000 ($3,200,000 cost - $2,800,000 assets = $400,000 excess cost, which is a loss).',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company curtails its defined benefit pension plan by closing a division, significantly reducing expected future service years. The plan has unrecognized prior service cost of $240,000. How is the curtailment accounted for?',
 '["No accounting is required until the plan is terminated", "The unrecognized prior service cost associated with eliminated future service is recognized as a curtailment loss", "The $240,000 is reversed against OCI with no income statement effect", "A curtailment only affects the PBO, not prior service cost"]'::jsonb,
 1,
 'Under ASC 715-30, a curtailment occurs when an event significantly reduces future service or eliminates the accrual of defined benefits for a significant number of employees. In a curtailment, any unrecognized prior service cost associated with years of service no longer expected to be rendered is recognized as a loss. The $240,000 (or the portion related to eliminated service) accelerates from AOCI into income as a curtailment loss.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company sponsors a defined contribution plan (401(k)) and matches 50% of employee contributions up to 6% of salary. An employee earns $120,000 and contributes 6% of salary. What is the company''s pension expense for this employee?',
 '["$6,000", "$7,200", "$1,800", "$3,600"]'::jsonb,
 3,
 'In a defined contribution plan, the employer''s expense equals the contribution made. The employee contributes 6% x $120,000 = $7,200. The company matches 50% of the employee''s contribution: 50% x $7,200 = $3,600. Defined contribution plans have straightforward expense recognition — the employer expense is simply the amount contributed each period. There is no PBO, funded status, or complex actuarial calculations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company changes the discount rate used to measure its PBO from 5.5% to 4.8% due to declining market interest rates. What is the effect on the PBO and where is the adjustment recorded?',
 '["The PBO increases and the adjustment is immediately recognized in pension expense", "The PBO is unchanged because discount rate changes are prospective only", "The PBO increases and the adjustment is recognized in other comprehensive income as an actuarial loss", "The PBO decreases and the adjustment is in pension expense"]'::jsonb,
 2,
 'A lower discount rate increases the present value of future benefit payments, so the PBO increases. This change is an actuarial loss (an increase in obligation due to assumption changes). Under ASC 715, actuarial gains and losses from assumption changes are recognized in other comprehensive income and accumulated in AOCI. They are amortized into pension expense in future periods only if the cumulative amount exceeds the corridor.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company reports the following pension-related amounts in AOCI: net actuarial loss $450,000; prior service cost $180,000. During the year, $25,000 of net loss and $40,000 of prior service cost are amortized. What is the total reclassification adjustment from AOCI to pension expense?',
 '["$65,000", "$25,000", "$40,000", "$630,000"]'::jsonb,
 0,
 'The reclassification adjustment from AOCI to pension expense is the total amount amortized from AOCI during the period: $25,000 (net loss amortization) + $40,000 (prior service cost amortization) = $65,000. These amounts are removed from AOCI and included in net periodic pension cost on the income statement. The remaining balances in AOCI ($425,000 net loss and $140,000 prior service cost) will be amortized in future periods.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'Under ASC 715, which of the following statements about other postretirement employee benefits (OPEB) is correct?',
 '["The accumulated postretirement benefit obligation (APBO) is measured using expected future cost trends, including healthcare cost trend rates", "OPEB obligations are not required to be recognized on the balance sheet", "OPEB plans never require an employer contribution", "OPEB expense is calculated using the same components as pension expense except there is no service cost"]'::jsonb,
 0,
 'The accumulated postretirement benefit obligation (APBO) for OPEB (primarily retiree healthcare) is measured similarly to the PBO for pensions, but incorporates healthcare cost trend rates that project future medical cost increases. Under ASC 715-60, the APBO must be recognized on the balance sheet, and OPEB expense includes service cost, interest cost, expected return on plan assets (if funded), and amortization components.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company''s defined benefit plan has a PBO of $12,000,000 and plan assets of $13,500,000. The plan is:',
 '["Overfunded by $1,500,000 but no asset can be reported under GAAP", "In balance and no net amount is reported", "Underfunded by $1,500,000 and a liability is reported", "Overfunded by $1,500,000 and an asset is reported"]'::jsonb,
 3,
 'When plan assets exceed the PBO, the plan is overfunded. Under ASC 715, the funded status ($13,500,000 - $12,000,000 = $1,500,000 overfunded) is reported on the balance sheet as a net pension asset (noncurrent asset). The asset ceiling test under IFRS may limit recognition, but under U.S. GAAP, the full overfunded amount is recognized as a noncurrent asset.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company contributes $800,000 to its defined benefit pension plan during the year. How does this contribution affect the pension-related accounts?',
 '["Increases plan assets by $800,000 and decreases cash by $800,000; no effect on pension expense", "Increases pension expense by $800,000", "Decreases the PBO by $800,000", "Increases plan assets by $800,000, decreases the net pension liability, and decreases cash"]'::jsonb,
 3,
 'Employer contributions increase plan assets and reduce cash. Since the funded status equals plan assets minus PBO, an increase in plan assets reduces the net pension liability (or increases the net pension asset). Contributions do not affect the PBO (which is driven by benefits earned and actuarial assumptions) and do not directly affect pension expense (which is based on service cost, interest, returns, and amortizations).',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company adopts a new defined benefit pension plan on January 1. The plan grants credit for 10 years of past service, creating a prior service cost of $500,000. The expected average remaining service period of employees is 8 years. What is the amortization of prior service cost for the first year?',
 '["$500,000", "$41,667", "$62,500", "$50,000"]'::jsonb,
 2,
 'Prior service cost is amortized over the average remaining service period of active employees expected to receive benefits. Amortization = $500,000 / 8 years = $62,500 per year. This amount is reclassified from AOCI to net periodic pension cost each year. The 10-year past service credit period is used to calculate the total prior service cost, not the amortization period.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'At year-end, a company measures its OPEB obligation and determines the APBO is $4,200,000 and the fair value of plan assets is $1,800,000. The company also has unrecognized transition obligation of $0. What amount appears on the balance sheet?',
 '["$4,200,000 liability", "$1,800,000 asset", "$2,400,000 net liability", "$6,000,000 total obligation"]'::jsonb,
 2,
 'Under ASC 715-60, the funded status of the OPEB plan is recognized on the balance sheet. Funded status = Plan assets - APBO = $1,800,000 - $4,200,000 = -$2,400,000 (underfunded). A net postretirement benefit liability of $2,400,000 is reported. The full funded status is always reported on the balance sheet; any remaining AOCI items are reported in stockholders'' equity, not as adjustments to the liability.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company''s pension plan has a beginning PBO of $6,000,000 and beginning plan assets of $5,400,000. During the year: service cost $350,000, interest cost $300,000, actual return on plan assets $450,000, employer contributions $500,000, benefits paid $200,000, and an actuarial gain on PBO of $120,000. What is the ending funded status?',
 '["Underfunded by $600,000", "Underfunded by $480,000", "Underfunded by $180,000", "Overfunded by $120,000"]'::jsonb,
 2,
 'Ending PBO = $6,000,000 + $350,000 (service cost) + $300,000 (interest cost) - $200,000 (benefits paid) - $120,000 (actuarial gain) = $6,330,000. Ending plan assets = $5,400,000 + $450,000 (actual return) + $500,000 (contributions) - $200,000 (benefits paid) = $6,150,000. Funded status = $6,150,000 - $6,330,000 = underfunded by $180,000. The beginning underfunded amount was $600,000. The PBO increased by $330,000 while plan assets increased by $750,000, improving the funded status by $420,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company''s pension plan has a beginning PBO of $9,000,000 and beginning plan assets of $7,800,000. During the year: service cost $450,000, interest cost $360,000, actual return on plan assets $500,000, employer contributions $600,000, and benefits paid $300,000. No actuarial gains or losses arose. What is the ending funded status?',
 '["Underfunded by $610,000", "Underfunded by $1,510,000", "Underfunded by $910,000", "Underfunded by $1,200,000"]'::jsonb,
 2,
 'Ending PBO = $9,000,000 + $450,000 (service cost) + $360,000 (interest cost) - $300,000 (benefits paid) = $9,510,000. Ending plan assets = $7,800,000 + $500,000 (actual return) + $600,000 (contributions) - $300,000 (benefits paid) = $8,600,000. Funded status = $8,600,000 - $9,510,000 = underfunded by $910,000. The beginning underfunded amount was $1,200,000. The PBO increased by $510,000 while plan assets increased by $800,000, improving the funded status by $290,000.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'Which of the following is true about the expected return on plan assets component of net periodic pension cost?',
 '["It is always equal to the actual return on plan assets", "It is only recognized when plan assets exceed the PBO", "It increases pension expense", "It decreases pension expense and is based on the expected long-term rate of return applied to the market-related value of plan assets"]'::jsonb,
 3,
 'The expected return on plan assets reduces net periodic pension cost and is computed by multiplying the expected long-term rate of return by the market-related value of plan assets (which may be fair value or a calculated value that smooths market fluctuations over up to 5 years). The difference between actual and expected return is an asset gain or loss recognized in OCI.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company increases the healthcare cost trend rate assumption for its OPEB plan from 6.5% to 7.0%. What is the most likely effect?',
 '["Only the interest cost component is affected", "There is no effect because trend rates do not affect the APBO", "The APBO increases and both the service cost and interest cost components of OPEB expense increase", "The APBO decreases and OPEB expense decreases"]'::jsonb,
 2,
 'An increase in the healthcare cost trend rate means future healthcare costs are expected to be higher, which increases the present value of expected future benefit payments (APBO). This in turn increases the service cost (present value of benefits attributed to current-year service) and interest cost (discount rate applied to a larger APBO). Healthcare cost trend rates are a critical assumption unique to OPEB plans.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Employee Benefit Plans',
 'A company has a defined benefit pension plan with a PBO of $15,000,000, plan assets of $11,000,000, accumulated OCI losses of $2,800,000, and prior service cost in AOCI of $600,000. The company decides to terminate the plan and settle all obligations by purchasing annuity contracts. Which of the following must be recognized immediately upon settlement?',
 '["Only the prior service cost of $600,000", "No immediate recognition is required; amounts in AOCI continue to be amortized", "Only the difference between PBO and plan assets", "The full $2,800,000 of AOCI losses and the $600,000 of prior service cost must be recognized in income, along with any gain or loss on the settlement transaction"]'::jsonb,
 3,
 'Under ASC 715-30, when a pension plan is fully settled, all amounts remaining in accumulated other comprehensive income related to the plan must be recognized immediately in income. This includes the $2,800,000 of unrecognized net actuarial losses and the $600,000 of prior service cost, plus any gain or loss from the difference between the settlement cost and the fair value of assets used. Complete settlement accelerates all deferred items.',
 'hard');

-- =============================================================================
-- Special Purpose Frameworks — 24 questions
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A small business prepares its financial statements on the cash basis of accounting. Which of the following transactions would be recorded under the pure cash basis?',
 '["Receipt of $50,000 cash from a customer for services performed", "Depreciation of equipment purchased three years ago", "Accrual of $12,000 in wages payable at year-end", "Recording a $30,000 accounts receivable for services rendered"]'::jsonb,
 0,
 'Under the pure cash basis, transactions are recorded only when cash is received or disbursed. The $50,000 cash receipt would be recorded as revenue. Depreciation, wage accruals, and accounts receivable are accrual-basis concepts that would not appear in pure cash-basis financial statements. The cash basis recognizes no receivables, payables, or non-cash allocations.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'Under the modified cash basis of accounting, which of the following modifications to the pure cash basis is generally considered acceptable?',
 '["Recording all accruals identical to GAAP", "Capitalizing and depreciating long-lived assets", "Recording revenue on a percentage-of-completion basis", "Using mark-to-market accounting for investments"]'::jsonb,
 1,
 'The modified cash basis permits modifications that have substantial support, such as capitalizing and depreciating long-lived assets, recording income taxes, and recording long-term debt. However, the modifications should not result in financial statements that are essentially the same as GAAP statements. Recording all GAAP accruals, percentage-of-completion, or mark-to-market would go beyond acceptable modifications.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A company prepares financial statements on the income tax basis. Under this framework, revenue is generally recognized when:',
 '["The revenue is included in taxable income under the Internal Revenue Code", "The performance obligation is satisfied under ASC 606", "Cash is received", "An invoice is issued to the customer"]'::jsonb,
 0,
 'Under the income tax basis, revenue recognition follows the timing rules of the Internal Revenue Code rather than GAAP. Revenue is recognized when it is included in (or required to be included in) taxable income. This may differ from both cash basis (which recognizes on receipt) and accrual GAAP (which follows ASC 606 performance obligations). Tax basis follows specific IRC provisions for each type of income.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A company uses the income tax basis and has the following: book depreciation of $200,000 and tax depreciation (MACRS) of $350,000 for the current year. Equipment cost was $1,000,000. What depreciation amount appears in the tax-basis financial statements?',
 '["$350,000", "$200,000", "$275,000", "$150,000"]'::jsonb,
 0,
 'Under the income tax basis, depreciation follows the IRC rules, which typically means MACRS depreciation. The $350,000 MACRS amount is reported because tax-basis financial statements use the same methods as the entity''s income tax return. The $200,000 book depreciation (perhaps straight-line under GAAP) is irrelevant for tax-basis reporting. This often results in higher early-year depreciation due to accelerated methods.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'Which of the following is a key difference between tax-basis financial statements and GAAP financial statements regarding inventory?',
 '["Tax basis may permit the use of the UNICAP rules for inventory capitalization, which differ from GAAP capitalization requirements under ASC 330", "Tax basis always requires FIFO; GAAP allows LIFO", "Tax basis does not permit any inventory method", "There is no difference in inventory treatment"]'::jsonb,
 0,
 'Under the income tax basis, inventory capitalization follows IRC Section 263A (UNICAP), which requires capitalization of certain direct and indirect costs that may differ from GAAP. For example, UNICAP has specific cost allocation methods and exceptions (e.g., the small business exception). Additionally, the tax basis may allow methods like the simplified production method that have no GAAP equivalent.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A company prepares tax-basis financial statements and has $500,000 of tax-exempt municipal bond interest income. How is this reported?',
 '["As revenue of $500,000 on the tax-basis income statement", "Excluded from the financial statements entirely", "As a note disclosure only", "As a reconciling item between book and tax income"]'::jsonb,
 0,
 'Tax-exempt interest income is still economic income of the entity even though it is excluded from taxable income. Under the tax basis, the income statement typically presents all items as they appear on the tax return, and tax-exempt income is disclosed separately or shown as a line item. The AICPA guidance indicates that tax-basis statements should include all tax return items, even those excluded from taxable income, with appropriate presentation.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A regulatory body requires an insurance company to prepare financial statements using statutory accounting principles (SAP). This is an example of which special purpose framework?',
 '["Cash basis framework", "Tax basis framework", "Regulatory basis framework", "Contractual basis framework"]'::jsonb,
 2,
 'A regulatory basis framework is one prescribed by a regulatory agency for filing requirements. Insurance companies often must prepare statutory basis financial statements under SAP as prescribed by state insurance departments. SAP differs from GAAP in areas such as revenue recognition, asset valuation, and reserve calculations. The regulatory basis is tailored to the needs of the specific regulatory body.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A loan agreement requires the borrower to prepare financial statements using a specific set of measurement and recognition principles outlined in the agreement. This is an example of which special purpose framework?',
 '["Cash basis framework", "Tax basis framework", "Regulatory basis framework", "Contractual basis framework"]'::jsonb,
 3,
 'A contractual basis framework uses accounting principles specified in a contract, such as a loan agreement, bond indenture, or partnership agreement. The financial statements are prepared using the measurement, recognition, and disclosure provisions defined by the contractual terms, which may differ from GAAP. This framework is only for the use of the parties to the contract.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'Under the AICPA''s Financial Reporting Framework for Small- and Medium-Sized Entities (FRF for SMEs), which of the following is true?',
 '["It is mandatory for all entities with less than $50 million in revenue", "It is the same as IFRS for SMEs", "It is a self-contained special purpose framework designed as a cost-effective alternative to GAAP for private companies", "It is considered GAAP for all purposes"]'::jsonb,
 2,
 'The FRF for SMEs is a self-contained, non-GAAP framework developed by the AICPA as a simplified alternative for owner-managed businesses and small-to-medium-sized private companies. It draws from traditional accounting methods (historical cost, matching principle) and avoids complex GAAP topics like fair value measurements and impairment testing. It is optional, not mandatory, and is distinct from IFRS for SMEs.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A company prepares cash-basis financial statements and purchases equipment for $240,000 cash. How is this transaction reported?',
 '["As a $240,000 capital asset on the balance sheet, depreciated over its useful life", "As a $240,000 prepaid asset amortized over the equipment''s useful life", "The equipment is not recorded because cash-basis does not recognize assets", "As a $240,000 disbursement (expense) in the period of purchase"]'::jsonb,
 3,
 'Under the pure cash basis, the $240,000 cash payment is recorded as a disbursement (expense) in the period of purchase. There is no capitalization or depreciation. The cash-basis statement of assets and liabilities would not include the equipment. This is a major departure from GAAP, where the equipment would be capitalized and depreciated. Modified cash basis might capitalize and depreciate the asset.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'When an auditor reports on financial statements prepared under a special purpose framework, which of the following is required in the auditor''s report?',
 '["No modification to the standard GAAP audit report", "A disclaimer of opinion because the framework is not authoritative", "A paragraph that describes the special purpose framework and refers the reader to the relevant note in the financial statements", "An adverse opinion because the statements are not GAAP"]'::jsonb,
 2,
 'Under AU-C 800, when reporting on SPF financial statements, the auditor''s report must include an emphasis-of-matter paragraph (or its equivalent) that indicates the financial statements are prepared in accordance with the applicable special purpose framework, refers to the note that describes the framework, and states that the framework is a basis of accounting other than GAAP. An unmodified opinion can still be issued.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'Under the modified cash basis, a company records long-term debt when borrowed. At year-end, the company owes $5,000,000 on a term loan. The company also has $180,000 in accrued interest payable. How should these be reported?',
 '["Both the $5,000,000 loan and $180,000 accrued interest are reported as liabilities", "Only the $5,000,000 loan is reported; accrued interest is not recognized until paid", "Neither is reported because modified cash basis does not recognize liabilities", "Only the $180,000 accrued interest is reported"]'::jsonb,
 0,
 'Under the modified cash basis, acceptable modifications include recording long-term debt and related interest accruals. Recording the $5,000,000 term loan and the $180,000 accrued interest payable are both consistent with the modified cash basis because they represent modifications with substantial support. The key principle is that modifications should be logical and consistently applied.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A partnership prepares tax-basis financial statements. The partnership has three partners and reports the following: total tax-basis income $900,000; guaranteed payments to partners $300,000; tax-exempt interest $45,000. What is the total income reported on the tax-basis income statement?',
 '["$900,000", "$600,000", "$945,000", "$555,000"]'::jsonb,
 2,
 'On a tax-basis income statement for a partnership, total income includes all economic income items: taxable income ($900,000) plus tax-exempt income ($45,000) = $945,000. Guaranteed payments to partners are deducted in arriving at the $900,000 taxable income figure and represent a distribution of partnership income to partners for services, not an adjustment to total income. The $945,000 reflects total economic results.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'Which of the following titles is appropriate for the income statement equivalent when financial statements are prepared on the cash basis?',
 '["Income Statement", "Statement of Revenues and Expenses", "Statement of Cash Receipts and Disbursements", "Statement of Operations"]'::jsonb,
 2,
 'When financial statements are prepared on the cash basis, the titles should clearly indicate the basis of accounting and avoid implying GAAP compliance. The appropriate title is ''Statement of Cash Receipts and Disbursements'' (or similar wording). Titles like ''Income Statement'' or ''Statement of Operations'' imply GAAP and should not be used for cash-basis financial statements.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A company prepares tax-basis financial statements and has $200,000 of meals and entertainment expenses, of which only 50% ($100,000) is deductible for tax purposes. How is this reported on the tax-basis income statement?',
 '["$200,000 as an expense with a note about the disallowed portion", "$100,000 as an expense (deductible portion only)", "$200,000 as an expense with no additional disclosure needed", "Either approach is acceptable with appropriate disclosure"]'::jsonb,
 3,
 'Practice varies on this point. Some preparers show the full $200,000 expense with disclosure of the nondeductible portion, while others show only the $100,000 deductible amount. The AICPA guidance permits either approach as long as the method is disclosed and consistently applied. The key is that the financial statements clearly communicate the economic activity and its tax implications.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A company on the cash basis receives a $60,000 advance payment from a customer in December for services to be performed in January. Under the pure cash basis, how is this reported in December?',
 '["As a liability of $60,000", "Not recorded until January when services are performed", "As deferred revenue of $60,000", "As revenue of $60,000"]'::jsonb,
 3,
 'Under the pure cash basis, revenue is recognized when cash is received, regardless of when the service is performed. The $60,000 advance payment is recorded as revenue in December when the cash is received. There is no concept of deferred revenue or matching under the pure cash basis. This is a fundamental difference from GAAP, which would defer the revenue until the performance obligation is satisfied.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'An auditor is engaged to audit financial statements prepared on the regulatory basis of accounting required by a state insurance commission. The regulatory basis results in financial statements that differ materially from GAAP. Which of the following audit opinions is appropriate if the statements fairly present in accordance with the regulatory basis?',
 '["Unmodified opinion with an emphasis paragraph describing the regulatory basis", "Adverse opinion because of GAAP departures", "Qualified opinion for the GAAP departures", "Disclaimer of opinion"]'::jsonb,
 0,
 'When financial statements are prepared under a regulatory basis (a special purpose framework), the auditor evaluates fair presentation in accordance with that framework, not GAAP. If the statements are fairly presented under the regulatory basis, an unmodified opinion is appropriate with an emphasis-of-matter paragraph that describes the basis and refers to the note. The GAAP differences are expected and do not result in a qualification or adverse opinion.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A company prepares modified cash-basis financial statements. Which of the following modifications would generally NOT be considered to have substantial support?',
 '["Recording depreciation of fixed assets", "Accruing income taxes payable", "Recording all accounts receivable and accounts payable (full accrual of short-term items)", "Recording long-term debt at inception"]'::jsonb,
 2,
 'Recording all accounts receivable and payable would essentially convert the statements to the accrual basis for short-term items, making them substantially similar to GAAP. This goes beyond an acceptable modification of the cash basis because it fundamentally changes the measurement focus. Depreciation, income tax accruals, and long-term debt recording are commonly accepted modifications with substantial support.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A not-for-profit prepares its financial statements on the cash basis. Total cash received during the year is $2,400,000 (including $800,000 from a restricted grant) and total cash disbursed is $2,100,000. What is the increase in net assets on a cash basis?',
 '["$300,000", "$2,400,000", "$1,600,000", "$2,100,000"]'::jsonb,
 0,
 'Under the pure cash basis, the increase in net assets equals cash received minus cash disbursed: $2,400,000 - $2,100,000 = $300,000. The restricted nature of the $800,000 grant does not create a deferral under the cash basis; cash is recognized when received. However, the entity may still disclose the restriction in notes. Net asset classifications (with/without donor restrictions) may still be presented if the entity chooses.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'Under the tax basis of accounting, how are operating leases (previously classified as such under ASC 840) typically reported?',
 '["No lease expense is recognized until the lease terminates", "A liability is always recorded for the total future lease payments", "Identical to GAAP with right-of-use assets and lease liabilities under ASC 842", "Lease payments are recognized as expense when paid or accrued per the tax return"]'::jsonb,
 3,
 'Tax-basis financial statements follow the IRC treatment. For tax purposes, operating lease payments are generally deductible when paid or accrued, and there is no requirement to record right-of-use assets and lease liabilities as required under ASC 842 for GAAP purposes. This is a significant difference between tax-basis and GAAP financial statements, particularly after ASC 842 became effective.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A bank requires a borrower to submit quarterly financial statements prepared under a contractual basis. The contractual basis defines EBITDA differently from the standard calculation and excludes certain non-recurring items. The company''s standard EBITDA is $4,500,000 but the contractual EBITDA is $5,200,000. What should the financial statements report?',
 '["Both figures with a reconciliation", "$4,850,000 as a compromise", "$5,200,000 because the contractual basis definition governs", "$4,500,000 because standard EBITDA is more widely accepted"]'::jsonb,
 2,
 'Under a contractual basis framework, the specific measurement and recognition principles in the contract govern the preparation of the financial statements. Since the loan agreement defines EBITDA to exclude certain non-recurring items, the contractual EBITDA of $5,200,000 is the correct amount. The purpose of the contractual basis is to meet the specific information needs of the parties to the contract.',
 'medium');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'Which of the following notes is required in financial statements prepared under a special purpose framework?',
 '["A note reconciling SPF net income to GAAP net income", "A note describing the significant accounting policies and the framework used", "A note explaining why GAAP was not followed", "No notes are required for SPF financial statements"]'::jsonb,
 1,
 'Financial statements prepared under any special purpose framework must include a note that describes the basis of accounting used and how it differs from GAAP. This is required under AU-C 800 and is essential for users to understand the measurement and recognition principles applied. A full reconciliation to GAAP is not required, though significant differences should be apparent from the disclosures.',
 'easy');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A company on the cash basis borrows $1,000,000 from a bank and receives the proceeds in cash. Under the pure cash basis, how is this transaction reported?',
 '["As revenue of $1,000,000", "As a cash receipt with a corresponding liability of $1,000,000", "Only as a cash receipt; no liability is recorded under pure cash basis", "The transaction is not recorded"]'::jsonb,
 2,
 'Under the pure cash basis, only cash receipts and disbursements are recorded. The $1,000,000 cash received from the loan is recorded as a cash receipt. However, under the pure cash basis, no liability is recorded because liabilities are not recognized. This is a significant limitation of the pure cash basis — the balance sheet equivalent would show the cash but not the obligation. Modified cash basis would typically record the loan liability.',
 'hard');

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values
(2, 'Special Purpose Frameworks',
 'A company uses the income tax basis and elects to expense all equipment purchases under IRC Section 179, taking an immediate $500,000 deduction for new equipment. Under GAAP, the equipment would be depreciated over 7 years. In the tax-basis financial statements for year one, what is the equipment-related expense?',
 '["$71,429 (straight-line over 7 years)", "$500,000", "$250,000 (half-year convention)", "$0 because the asset must be capitalized"]'::jsonb,
 1,
 'Under the income tax basis, the Section 179 election allows the company to deduct the full $500,000 cost in the year of purchase. The tax-basis financial statements follow the tax return treatment, so the entire $500,000 is expensed in year one. Under GAAP, the same equipment would be capitalized and depreciated over 7 years at approximately $71,429 per year (straight-line). This timing difference is a common tax-basis vs. GAAP distinction.',
 'medium');
