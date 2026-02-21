-- Migration: Upgrade 7 moderate-scoring Tests of Controls questions
-- Fixes: short-stem, length-cuing, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- Q5070 [score:6] short-stem(11w) → expand with scenario + cite AU-C 330
UPDATE questions SET
  stem = 'During the audit of Glendale Manufacturing, the engagement team plans to rely on the client''s purchase authorization controls to reduce substantive testing of accounts payable. Before relying on these controls, the team must test their operating effectiveness. Under AU-C 330, the purpose of testing the operating effectiveness of controls is to:',
  explanation = 'Under AU-C 330.08, the auditor tests controls to obtain evidence about whether controls operated effectively throughout the period of intended reliance. Operating effectiveness means the control was applied consistently and as designed by personnel with appropriate authority and competence. Choice B is incorrect because compliance with laws and regulations is addressed through separate procedures under AU-C 250, not through tests of controls. Choice C confuses audit fees — a practice management matter — with audit evidence objectives.'
WHERE id = 5070;

-- Q5073 [score:4] short-stem(7w) + length-cuing(41/153) → expand stem, balance choices
UPDATE questions SET
  stem = 'While planning the audit of Kensington Retail Corp., the senior auditor proposes performing a single procedure that will simultaneously evaluate whether purchase order approvals are operating effectively and whether recorded purchases are accurate. The engagement partner confirms this is an efficient approach known as a dual-purpose test. Under AU-C 330, a dual-purpose test is a procedure that:',
  choices = '["Tests two different controls over the same transaction class in a single walkthrough","Tests both the operating effectiveness of a control and provides substantive evidence about an account balance in one procedure","Tests the same control at two separate interim dates to cover the full audit period","Tests controls over two related accounts, such as revenue and receivables, using shared documentation"]'
WHERE id = 5073;

-- Q5075 [score:6] short-stem(11w) → expand with scenario + cite AU-C 330
UPDATE questions SET
  stem = 'An audit intern at Mercer & Associates is preparing a list of procedures for testing internal controls over cash disbursements at Ridgemont Logistics. The intern includes inquiry, observation, inspection, reperformance, and confirmation of accounts receivable. The supervising senior reviews the list and removes one item. Under AU-C 330, which of the following is NOT a method of testing controls?',
  explanation = 'Under AU-C 330.10, methods for testing controls include inquiry of entity personnel, observation of control operation, inspection of documents showing evidence of control performance, and reperformance of the control by the auditor. Confirmation of accounts receivable is a substantive procedure used to verify account balances under AU-C 505, not a method for testing the operating effectiveness of controls. Choice A (inquiry) is a valid control testing method, though it alone is insufficient.'
WHERE id = 5075;

-- Q5076 [score:6] short-stem(7w) → expand with scenario + balance choices
UPDATE questions SET
  stem = 'The audit team at Calloway & Partners is testing whether Thornfield Industries'' bank reconciliation control operates effectively. Rather than simply observing a staff accountant perform the reconciliation, the senior auditor decides to independently execute the reconciliation procedure to verify it produces correct results. Under AU-C 330, this technique is known as reperformance. Reperformance as a test of controls involves:',
  choices = '["The auditor observing management perform the control and documenting the steps taken","The auditor independently executing the control procedure to verify it produces the expected result","Management repeating the control at the auditor''s request while the auditor observes the process","The auditor recalculating financial statement balances to verify mathematical accuracy of line items"]'
WHERE id = 5076;

-- Q5077 [score:5] short-stem(10w) + length-cuing(46/139) → expand stem, balance choices
UPDATE questions SET
  stem = 'Prescott Electronics relies on an automated three-way matching control that compares purchase orders, receiving reports, and vendor invoices before approving payment. The control is embedded in the ERP system and has not been modified since implementation. The audit team at Waverly & Co. is determining the appropriate extent of testing for this automated control. Under AU-C 330, when testing automated IT controls, the auditor typically needs to:',
  choices = '["Test the control once or a few times, combined with testing IT general controls that ensure continued functioning","Test every transaction processed by the automated system throughout the audit period to confirm accuracy","Test the automated control the same number of times as a comparable manual control using statistical sampling","Limit testing to inquiry of IT personnel about the system design, since automated controls do not require direct testing"]'
WHERE id = 5077;

-- Q5080 [score:5] short-stem(6w) + length-cuing(31/119) → expand stem, balance choices
UPDATE questions SET
  stem = 'During the planning phase of the audit of Ashford Distribution, the engagement partner decides the team should test the operating effectiveness of the client''s revenue recognition controls rather than relying solely on substantive procedures. The partner explains that effective controls allow the team to adjust the audit approach. Under AU-C 330, the auditor tests controls primarily to:',
  choices = '["Support a lower assessed level of control risk, which allows reduced substantive procedures","Evaluate whether the entity''s accounting policies comply with the applicable financial framework","Confirm that management''s internal control certification is accurate for regulatory filings","Determine whether the entity''s information system can produce reliable reports for external users"]'
WHERE id = 5080;

-- Q5088 [score:5] short-stem(10w) + length-cuing(36/114) → expand stem, balance choices
UPDATE questions SET
  stem = 'The audit team at Birchwood & Associates is testing controls over credit approval at Lakeside Distributors. A staff auditor examines a sample of sales orders and looks for the credit manager''s initials, date stamps, and credit limit notations as evidence that approvals occurred. Under AU-C 330, inspection of documents as a test of controls involves examining:',
  choices = '["Financial statements for proper classification and presentation of account balances","Evidence that the control was performed, such as approvals, signatures, or exception reports","Customer correspondence for complaints about billing errors or disputed charges","Bank statements for unusual deposits that may indicate unauthorized cash receipts"]'
WHERE id = 5088;
