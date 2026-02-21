-- Migration: Upgrade 7 moderate-scoring Analytical Procedures questions
-- Fixes: short-stem, length-cuing, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- Q5090 [score:6] short-stem(10w) → expand with scenario + cite AU-C 520
UPDATE questions SET
  stem = 'A newly hired staff auditor at Calloway & Partners asks the engagement senior during which phases of the audit analytical procedures are mandatory versus optional. The senior explains that auditing standards require their use at certain points but leave them discretionary at others. Under AU-C 520, analytical procedures are required during which phases of the audit?',
  explanation = 'Under AU-C 520.05-.06, analytical procedures are required during two phases: (1) the planning phase (AU-C 315), to assist in understanding the entity and identifying areas of potential misstatement, and (2) the overall review phase near the end of the audit, to assess whether the financial statements are consistent with the auditor''s understanding. Substantive analytical procedures during fieldwork are optional but commonly used. Choice B is incorrect because substantive testing is not a required phase for analytical procedures — it is discretionary.'
WHERE id = 5090;

-- Q5091 [score:6] short-stem(10w) → expand with scenario + cite AU-C 315
UPDATE questions SET
  stem = 'The engagement team at Mercer & Associates is beginning the planning phase for the audit of Ashford Electronics, a consumer technology distributor. Before designing detailed audit procedures, the team performs analytical procedures by comparing current-period revenue trends to prior years and industry benchmarks. Under AU-C 315, during the planning phase, analytical procedures are used primarily to:',
  explanation = 'Under AU-C 315.06, planning-phase analytical procedures help the auditor identify unusual or unexpected relationships, trends, or fluctuations that may indicate areas of increased risk of material misstatement. These procedures assist in understanding the entity''s business environment and help focus audit resources on higher-risk areas. Choice A is incorrect because substantive evidence about account balances is the purpose of substantive analytical procedures during fieldwork, not planning-phase procedures. Choice D confuses analytical procedures with tests of controls.'
WHERE id = 5091;

-- Q5097 [score:6] short-stem(3w) → expand with scenario + cite AU-C 520
UPDATE questions SET
  stem = 'While auditing Pinecrest Manufacturing, the engagement team at Whitfield & Associates compares the client''s quarterly revenue, gross margin, and operating expenses over the past five years to identify patterns and unusual fluctuations. The team notes that Q3 revenue spiked 35% year-over-year despite flat unit sales. Under AU-C 520, this type of analytical procedure — known as trend analysis — involves:',
  explanation = 'Under AU-C 520, trend analysis is an analytical procedure that compares financial data across multiple periods to identify patterns, trends, or unusual fluctuations. It helps the auditor understand the entity''s performance trajectory and may reveal unexpected changes warranting investigation. Choice B is incorrect because confirming account balances with third parties is a substantive procedure under AU-C 505, not an analytical procedure. Choice D confuses analytical procedures with tests of controls.'
WHERE id = 5097;

-- Q5098 [score:6] short-stem(10w) → expand with scenario
UPDATE questions SET
  stem = 'The audit team at Birchwood & Associates is evaluating Thornton Retail''s current ratio, inventory turnover, and gross margin percentage for the year ended December 31, 2025. The team compares these ratios to Thornton''s prior-year results, the industry averages published by RMA, and management''s budgeted figures. Under AU-C 520, ratio analysis as an analytical procedure is most useful when:',
  explanation = 'Under AU-C 520.A5, ratio analysis provides the most value when the calculated ratios are compared to meaningful benchmarks — industry averages, prior-period ratios, budgeted amounts, or non-financial data — to identify deviations from expected relationships. Without comparative benchmarks, a ratio in isolation provides limited insight. Choice A is too narrow because comparison to only the entity''s own prior-year ratios misses external context that could reveal industry-wide shifts. Choice D undermines reliability because management-provided data without independent verification lacks the objectivity needed for a meaningful comparison.'
WHERE id = 5098;

-- Q5100 [score:5] short-stem(9w) → expand with scenario + balance choices
UPDATE questions SET
  stem = 'The engagement team at Glenview & Associates is auditing Cascade Energy Corp., a regulated utility. To develop a precise expectation for monthly revenue, the senior auditor proposes using customer count, average kilowatt-hours consumed, and rate schedules as independent variables in a statistical model. Under AU-C 520, this technique — a regression analysis used as an analytical procedure — involves:',
  choices = '["Simply comparing current-year account balances to prior-year balances and noting the dollar change","Interviewing management about expected financial results and comparing those expectations to recorded amounts","A statistical technique that uses one or more independent variables to predict a dependent variable and measure significance","Testing a sample of transactions for proper authorization and correct recording in the general ledger"]'
WHERE id = 5100;

-- Q5102 [score:6] length-cuing(35/108) → balance choices, expand explanation
UPDATE questions SET
  stem = 'While performing substantive analytical procedures on Kensington Retail''s revenue, the audit team at Prescott & Associates breaks down total sales by store location, product category, and month rather than analyzing the annual total in aggregate. The team finds that one store''s electronics category shows a 60% revenue spike in October with no corresponding increase in foot traffic. Under AU-C 520, disaggregation of data in substantive analytical procedures refers to:',
  choices = '["Combining all data into a single total to simplify the comparison against prior-year aggregate figures","Using only prior-year data to establish the baseline expectation for the current year''s account balances","Performing analytical procedures exclusively on year-end balances without considering interim period results","Breaking down data into smaller, more homogeneous components to improve the precision of the expectation"]'
WHERE id = 5102;

-- Q5104 [score:6] short-stem(10w) → expand with scenario + cite AU-C 520
UPDATE questions SET
  stem = 'The engagement team at Waverly & Associates is performing substantive analytical procedures on Sycamore Corp.''s payroll expense. The team considers using internal management reports, externally published industry data, and headcount records that have been tested during the audit. The engagement senior evaluates which data sources will produce the most reliable expectation. Under AU-C 520, the reliability of data used for analytical procedures increases when:',
  explanation = 'Under AU-C 520.A12, the reliability of data for analytical procedures is enhanced when it comes from independent sources external to the entity, has been subject to audit testing, was developed under effective internal controls, or was obtained from multiple sources that corroborate each other. Choice A is incorrect because management-prepared data without verification carries a higher risk of bias or error. Choice C is incorrect because summary-level data reduces precision — more detailed, disaggregated data generally produces more reliable expectations.'
WHERE id = 5104;
