-- Migration: Upgrade 4 moderate-scoring Responding to Assessed Risks questions
-- Fixes: short-stem, length-cuing, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- Q5032 [score:5] short-stem(8w) + length-cuing(25/143) → expand stem, balance choices
UPDATE questions SET
  stem = 'During the planning meeting for the audit of Ridgemont Logistics, the engagement partner at Mercer & Associates discusses how the team will respond to assessed risks by adjusting the nature, timing, and extent of further audit procedures. A staff auditor asks what "nature" means in this context. Under AU-C 330, the nature of further audit procedures refers to:',
  choices = '["When the procedures are performed — at an interim date or at period end","The quantity of procedures performed, such as the sample size or number of observations","The type and purpose of the procedures, such as inspection, observation, inquiry, or confirmation","The cost-benefit analysis used to determine whether procedures are worth performing"]'
WHERE id = 5032;

-- Q5034 [score:6] short-stem(8w) → expand with scenario + cite AU-C 330
UPDATE questions SET
  stem = 'The engagement team at Whitfield & Associates is planning the audit of Oakridge Manufacturing for the year ended December 31, 2025. The senior auditor proposes performing inventory observation and accounts receivable confirmations at September 30 rather than at year-end, then applying roll-forward procedures for the remaining period. Under AU-C 330, the timing of further audit procedures refers to:',
  explanation = 'Under AU-C 330.12, the timing of audit procedures refers to when they are performed — at an interim date before period end or at or after the period end. Testing at an interim date may be efficient but creates a risk that misstatements arising in the remaining period are not detected. The auditor must consider whether interim testing, combined with additional procedures covering the remaining period, provides sufficient evidence. Choice A is incorrect because the audit budget is an administrative matter, not a dimension of audit procedure design. Choice C describes the nature, not the timing, of procedures.'
WHERE id = 5034;

-- Q5036 [score:6] short-stem(8w) → expand with scenario + cite AU-C 330
UPDATE questions SET
  stem = 'While designing the audit approach for Thornfield Industries, the engagement partner at Calloway & Partners determines that revenue recognition carries a higher risk of material misstatement. The partner instructs the team to increase the sample size for revenue testing from 40 to 75 transactions and to add two additional locations for inventory observation. Under AU-C 330, the extent of further audit procedures refers to:',
  explanation = 'Under AU-C 330.A20, the extent of audit procedures refers to how much of a specific procedure is performed — for example, the sample size for substantive testing, the number of control observations, or the number of locations visited. Greater extent of procedures is appropriate when assessed risk is higher, because the auditor needs more evidence to support conclusions. Choice B incorrectly describes the variety of different procedures, which relates to the nature dimension. Choice C describes timing, not extent.'
WHERE id = 5036;

-- Q5039 [score:5] short-stem(9w) + length-cuing(19/105) → expand stem, balance choices
UPDATE questions SET
  stem = 'During the fraud risk discussion for the audit of Ashford Distribution, the engagement partner at Glenview & Associates stresses that the team should vary its procedures in ways the client would not anticipate. For example, the partner suggests performing surprise inventory counts, testing journal entries at unexpected dates, and visiting locations not tested in prior years. Under AU-C 240, incorporating unpredictability into audit procedures is important because it:',
  choices = '["Reduces the overall cost of the audit by eliminating redundant procedures from prior years","Improves audit efficiency by standardizing the timing and selection of test items each year","Helps detect fraud by preventing management from anticipating and preparing for specific audit procedures","Satisfies regulatory reporting requirements for publicly traded entities under PCAOB standards"]'
WHERE id = 5039;
