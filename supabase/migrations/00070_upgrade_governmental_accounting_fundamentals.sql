-- Migration: Upgrade 6 moderate-scoring Governmental Accounting Fundamentals questions
-- Fixes: short-stem, length-cuing, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- Q5270 [score:6] short-stem(10w) → expand with scenario + cite GASB 34
UPDATE questions SET
  stem = 'A staff auditor at Mercer & Associates is preparing for the audit of Lakewood County''s governmental fund financial statements. The engagement senior explains that governmental funds use a different accounting basis than the government-wide statements. Under GASB 34, which accounting basis is used for governmental fund financial statements?',
  explanation = 'Under GASB 34, governmental fund financial statements (general fund, special revenue, capital projects, debt service, and permanent funds) use the modified accrual basis of accounting. Revenues are recognized when measurable and available, and expenditures are recognized when the fund liability is incurred, with certain exceptions for long-term obligations. Choice B is incorrect because full accrual is used for government-wide statements and proprietary/fiduciary funds, not governmental fund statements. Choice C is incorrect because the cash basis does not comply with GAAP for governmental reporting.'
WHERE id = 5270;

-- Q5271 [score:6] short-stem(11w) + length-cuing(16/115) → expand stem, balance choices
UPDATE questions SET
  stem = 'Pinecrest County collects property taxes with an October 1 due date. As of the December 31 year-end, $1.2 million in property taxes remain uncollected. Management expects to collect $950,000 by mid-February and the remaining $250,000 by April. The county''s policy considers amounts collected within 60 days of year-end as available. Under modified accrual accounting (GASB standards), revenue is considered "available" when it is:',
  choices = '["Earned and realizable under the same criteria used by for-profit entities under ASC 606","Collectible within the current period or soon enough thereafter to pay liabilities of the current period","Received in cash during the fiscal year regardless of when the underlying transaction occurred","Appropriated by the governing body through formal budget resolution and approved for spending"]',
  explanation = 'Under GASB standards, revenue is recognized when both measurable and available. "Available" means collectible within the current period or soon enough thereafter to pay liabilities of the current period. GASB defines this availability period as typically not exceeding 60 days after year-end, though some governments use 30 or 90 days. Choice A is incorrect because ASC 606 revenue recognition criteria apply to commercial entities, not governmental funds using modified accrual. Choice D is incorrect because appropriation is a budgetary concept, not a recognition criterion.'
WHERE id = 5271;

-- Q5277 [score:6] short-stem(10w) → expand with scenario + cite GASB 34
UPDATE questions SET
  stem = 'An audit intern at Calloway & Partners notices that Thornfield Township''s governmental fund balance sheet does not include capital assets or long-term bonds payable. The engagement senior explains that this is correct because governmental funds use a different measurement focus than the government-wide statements. Under GASB 34, the measurement focus of governmental fund financial statements is the:',
  explanation = 'Under GASB 34, governmental funds use the current financial resources measurement focus, which measures the flow of current financial resources (cash and items expected to be converted to cash) in and out. This is why governmental funds report expenditures (not expenses) and do not include long-term assets or long-term liabilities on the balance sheet. Choice A is incorrect because the economic resources measurement focus is used in government-wide statements and proprietary funds, where long-term assets and liabilities are reported. Choice B is incorrect because the cash measurement focus does not comply with GAAP — modified accrual captures receivables and payables, not just cash.'
WHERE id = 5277;

-- Q5285 [score:5] short-stem(11w) + length-cuing(39/119) → expand stem, balance choices
UPDATE questions SET
  stem = 'Ridgemont Regional Water Authority operates as an enterprise fund. The engagement team at Whitfield & Associates is determining which financial statements the authority must present. Unlike governmental funds, proprietary funds follow full accrual accounting and require a distinct set of statements. Under GASB 34, which financial statements are required for proprietary funds?',
  choices = '["Statement of net position, statement of revenues expenditures and changes in fund balance, and budgetary comparison","Balance sheet and income statement only, following the same format as commercial entities under GAAP","Statement of net position, statement of revenues expenses and changes in fund net position, and statement of cash flows","Statement of fiduciary net position and statement of changes in fiduciary net position using the trust accounting model"]',
  explanation = 'Under GASB 34, proprietary funds (enterprise and internal service) require three financial statements: (1) statement of net position, (2) statement of revenues, expenses, and changes in fund net position, and (3) statement of cash flows using the direct method. Choice A is incorrect because it uses governmental fund terminology ("expenditures," "fund balance," "budgetary comparison") that does not apply to proprietary funds. Choice D describes the required statements for fiduciary funds, not proprietary funds.'
WHERE id = 5285;

-- Q5286 [score:6] length-cuing(28/88) → balance choices, add citation
UPDATE questions SET
  stem = 'Ashford County maintains a $5 million endowment established by a local benefactor. The endowment principal must remain intact, but the investment earnings fund the county''s public library system. The county''s finance director classifies this endowment as a specific governmental fund type. Under GASB 34, a permanent fund is a governmental fund type used to report resources that are:',
  choices = '["Available to finance general government operations without restriction on principal or earnings","Set aside exclusively for repayment of general obligation bond principal and interest payments","Held in trust for pension beneficiaries under a defined benefit retirement plan for government employees","Legally restricted so that only earnings, not principal, may be used to support government programs"]',
  explanation = 'Under GASB 34, permanent funds report resources that are legally restricted so that only the earnings (not the principal) may be used to support programs benefiting the government or its citizens — such as cemetery perpetual care funds or library endowments. Choice A describes the general fund. Choice B describes a debt service fund. Choice C describes a pension trust fund, which is a fiduciary fund type, not a governmental fund.'
WHERE id = 5286;

-- Q5288 [score:5] short-stem(10w) + length-cuing(25/82) → expand stem, balance choices
UPDATE questions SET
  stem = 'The finance director of Cascade County is preparing the December 31, 2025 general fund balance sheet and must classify fund balance according to GASB 54''s five-category hierarchy. The general fund holds $800,000 in prepaid items, $200,000 in inventory, and $1.5 million in the corpus of a legally restricted endowment. Under GASB 54, "nonspendable" fund balance includes amounts that are:',
  choices = '["Constrained by the government''s highest level of decision-making authority for a specific purpose","Intended by the governing body for a specific purpose but not formally constrained by legislation","Available for any purpose and not subject to any constraints, restrictions, or commitments","Not in spendable form or legally or contractually required to be maintained intact"]',
  explanation = 'Under GASB 54, nonspendable fund balance includes amounts that cannot be spent because they are either (a) not in spendable form (e.g., inventory, prepaid items, long-term receivables) or (b) legally or contractually required to be maintained intact (e.g., the corpus of a permanent fund). Choice A describes the committed classification. Choice B describes the assigned classification. Choice C describes the unassigned classification.'
WHERE id = 5288;
