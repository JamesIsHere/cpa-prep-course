-- Migration: Upgrade 7 Audit Evidence + 4 Substantive Procedures questions
-- Fixes: short-stem, length-cuing, missing citations, missing wrong-answer analysis
-- Target: all questions score 7+ after this migration

-- === Audit Evidence (7 questions) ===

-- Q114 [score:6] short-stem → expand with scenario + cite AU-C 580
UPDATE questions SET
  stem = 'At the conclusion of the audit of Ridgemont Manufacturing, the engagement partner at Prescott & Associates requests that the CEO and CFO sign a letter confirming specific representations made during fieldwork. A staff auditor asks what purpose this letter serves. Under AU-C 580, a management representation letter obtained at the conclusion of an audit is intended to:',
  explanation = 'Under AU-C 580.06, the management representation letter confirms management''s responsibility for the financial statements and formalizes oral representations made during the audit. It complements other audit evidence but does not replace it. Choice A is incorrect because the letter supplements, rather than replaces, other forms of evidence. Choice B is incorrect because management cannot guarantee accuracy — the letter acknowledges responsibility and confirms representations, not accuracy.'
WHERE id = 114;

-- Q294 [score:6] short-stem → expand with scenario
UPDATE questions SET
  stem = 'The data analytics team at Mercer & Associates applies a statistical technique to all 45,000 vendor payments made by Ashford Distribution during 2025. The technique examines whether the distribution of first digits in payment amounts follows the expected mathematical pattern. Several digit frequencies deviate significantly from predicted values, suggesting possible manipulation. Under AU-C 520, Benford''s Law analysis is a data analytics technique that:',
  explanation = 'Benford''s Law predicts the expected frequency distribution of leading digits in naturally occurring numerical data — the first digit is 1 about 30% of the time, 2 about 18%, and so on. Significant deviations from this expected pattern may indicate manipulation, errors, or fabricated data warranting further investigation. Choice A is incorrect because reconciling account balances to the general ledger is a standard substantive procedure, not a Benford''s Law application. Choice B is incorrect because confirming balances with third parties is a confirmation procedure under AU-C 505.'
WHERE id = 294;

-- Q298 [score:6] short-stem → expand with scenario + cite AU-C 500
UPDATE questions SET
  stem = 'During the audit of Lakeside Manufacturing, the engagement team at Calloway & Partners evaluates the reliability of various forms of evidence gathered during fieldwork. The team compares an external bank confirmation received directly by the auditor, an oral statement from the controller, a signed vendor invoice, and a confirmation from legal counsel. Under AU-C 500, which form of audit evidence is generally considered least reliable?',
  explanation = 'Under AU-C 500.A31, audit evidence is more reliable when obtained from independent external sources, in documentary form, or directly by the auditor. Oral representations from client personnel are the least reliable because they are internal, verbal, and subject to bias or error. Choice A is incorrect because external bank confirmations received directly by the auditor are among the most reliable evidence. Choice C is incorrect because signed vendor invoices are documentary evidence from an external party.'
WHERE id = 298;

-- Q300 [score:6] short-stem → expand with scenario
UPDATE questions SET
  stem = 'The engagement team at Whitfield & Associates uses an automated data analytics tool to compare records from three different systems at Thornfield Industries — purchase orders from procurement, receiving reports from the warehouse, and vendor invoices from accounts payable. The tool identifies 47 exceptions where amounts or quantities do not agree across the three documents. Under AU-C 520, three-way matching as a data analytics technique compares:',
  explanation = 'Three-way matching is an automated comparison of purchase orders (authorization to buy), receiving reports (confirmation that goods were received), and vendor invoices (billing for the goods). This technique identifies discrepancies such as duplicate payments, unauthorized purchases, and differences between what was ordered, received, and billed. Choice B is incorrect because comparing bank statements, cash receipts, and the general ledger is a bank reconciliation procedure. Choice C describes variance analysis, not three-way matching.'
WHERE id = 300;

-- Q302 [score:6] short-stem → expand with scenario + cite AU-C 505
UPDATE questions SET
  stem = 'The engagement team at Glenview & Associates is confirming accounts receivable for Pinecrest Distributors, which has 3,200 customer accounts with an average balance of $850. The assessed risk of material misstatement for receivables is low, and the team expects very few disputed balances. The engagement senior recommends using negative confirmations rather than positive ones. Under AU-C 505, negative confirmations are most appropriate when:',
  explanation = 'Under AU-C 505.16, negative confirmations are appropriate when the risk of material misstatement is assessed as low, the population consists of many small balances, and the auditor expects few exceptions. With negative confirmations, the absence of a reply is treated as agreement, making them less reliable than positive confirmations but efficient for large, low-risk populations. Choice A is incorrect because large balances with high risk warrant positive confirmations, which require explicit responses. Choice D is incorrect because negative confirmations provide less assurance than positive confirmations.'
WHERE id = 302;

-- Q303 [score:6] short-stem → expand with scenario + cite AU-C 580
UPDATE questions SET
  stem = 'The engagement partner at Birchwood & Associates is finalizing the audit of Cascade Logistics and must determine the appropriate date for the management representation letter. The auditor''s report will be dated March 8, 2026. Under AU-C 580, the management representation letter must be dated:',
  explanation = 'Under AU-C 580.15, the management representation letter must be dated as of the date of the auditor''s report because management is making representations about events through that date, including subsequent events and completeness of information provided. Choice A is incorrect because the balance sheet date (December 31) leaves a gap during which management makes no representations about subsequent events. Choice D is incorrect because 30 days after the report release has no basis in auditing standards.'
WHERE id = 303;

-- Q1596 [score:6] short-stem → expand with scenario + cite AU-C 580
UPDATE questions SET
  stem = 'While completing the audit of Ashford Electronics, the engagement partner at Mercer & Associates drafts the management representation letter for the CEO and CFO to sign. A staff auditor asks which specific acknowledgment is required by auditing standards to appear in the letter. Under AU-C 580, which of the following is required to be included in the written representation letter?',
  explanation = 'Under AU-C 580.10, management must acknowledge in writing its responsibility for the preparation and fair presentation of the financial statements in accordance with the applicable framework. This acknowledgment is a fundamental required representation. Choice A is incorrect because management cannot guarantee the absence of fraud — they can represent that they have disclosed all known fraud or suspected fraud. Choice C is incorrect because earnings projections are forward-looking estimates, not required representations about historical financial statements.'
WHERE id = 1596;

-- === Substantive Procedures (4 questions) ===

-- Q318 [score:6] short-stem(7w) → expand with scenario + cite AU-C 570
UPDATE questions SET
  stem = 'The engagement team at Calloway & Partners is evaluating whether Ridgemont Construction can continue as a going concern. The team must determine the appropriate evaluation period — the timeframe over which the entity''s viability is assessed. Under AU-C 570, the going concern evaluation period runs for:',
  explanation = 'Under AU-C 570.03, the going concern evaluation covers a reasonable period of time — defined as one year from the date the financial statements are issued or available to be issued. This is an important distinction from the balance sheet date. Choice A is incorrect because measuring from the balance sheet date would shorten the evaluation period relative to the standard. Choice D is incorrect because six months from the report date is too short and does not match the standard''s requirement.'
WHERE id = 318;

-- Q323 [score:6] short-stem → expand with scenario + cite AU-C 500
UPDATE questions SET
  stem = 'The engagement team at Whitfield & Associates is testing the existence of Thornfield Industries'' accounts receivable. The senior auditor selects 25 recorded receivable balances from the subsidiary ledger and traces each one to supporting shipping documents, customer purchase orders, and signed delivery receipts. Under AU-C 500, the direction of testing for the existence assertion is:',
  explanation = 'Under AU-C 500, testing for existence (or occurrence) starts with the recorded amount and traces to supporting documentation. If an item is recorded but no supporting documentation exists, the auditor has evidence that the recorded amount may not exist or may not have occurred. Choice A is incorrect because tracing from source documents to accounting records tests the completeness assertion — whether all valid transactions were recorded. Choice C describes an internal consistency check, not an existence test.'
WHERE id = 323;

-- Q324 [score:6] short-stem → expand with scenario + cite AU-C 330
UPDATE questions SET
  stem = 'While auditing Lakeside Distributors'' purchases, the engagement team at Prescott & Associates designs a procedure that simultaneously checks whether purchase orders bear an authorized signature (testing a control) and verifies that the recorded dollar amounts agree with vendor invoices (gathering substantive evidence). Under AU-C 330, a dual-purpose test simultaneously tests:',
  explanation = 'Under AU-C 330.A23, a dual-purpose test serves as both a test of controls and a substantive test of details in a single procedure. This approach is efficient because it addresses both control effectiveness and account balance accuracy from the same sample of transactions. Choice A is incorrect because testing two financial statement assertions is not what defines a dual-purpose test — the dual purpose refers to the combination of control testing and substantive testing. Choice C is incorrect because testing two accounting periods describes roll-forward procedures, not dual-purpose tests.'
WHERE id = 324;

-- Q1676 [score:6] short-stem → expand with scenario + cite AU-C 500
UPDATE questions SET
  stem = 'The engagement team at Glenview & Associates is testing the completeness of Ashford Electronics'' revenue for the year ended December 31, 2025. The senior auditor selects a sample of shipping documents from the warehouse log and traces each shipment forward to determine whether it was recorded as revenue in the general ledger. Under AU-C 500, to test the completeness assertion for revenue, the auditor should:',
  explanation = 'Under AU-C 500, testing completeness requires starting from a source independent of the accounting records — such as shipping documents, delivery logs, or warehouse records — and tracing forward to the revenue journal to determine whether each valid shipment was recorded. Choice B is incorrect because starting from recorded transactions and vouching back to supporting documents tests the occurrence assertion, not completeness. Choice C is incorrect because confirming revenue amounts with customers tests existence and accuracy, not whether all revenue was recorded.'
WHERE id = 1676;
