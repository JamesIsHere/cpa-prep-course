-- Migration: Upgrade 10 moderate-scoring Internal Controls questions
-- Fixes: short-stem, length-cuing
-- Target: all questions score 7+ after this migration

-- Q282 [score:5] short-stem(10w) → expand stem with scenario
UPDATE questions SET
  stem = 'A CPA is evaluating the IT environment at Harmon Manufacturing during an integrated audit. The CPA needs to assess whether the company''s IT general controls (ITGCs) adequately support the reliability of application controls. ITGCs include which of the following categories?'
WHERE id = 282;

-- Q291 [score:6] short-stem(8w) → expand stem with scenario
UPDATE questions SET
  stem = 'During the audit of Pinecrest Financial Services, the engagement team needs to analyze a large accounts receivable file containing over 50,000 records to identify duplicates, test for gaps in sequence numbers, and select a statistical sample. Generalized audit software (GAS) allows the auditor to:'
WHERE id = 291;

-- Q1276 [score:6] short-stem(11w) → expand stem with scenario
UPDATE questions SET
  stem = 'An audit supervisor at Kessler & Associates is training a new staff auditor on the distinction between entity-level controls and process-level controls within the COSO framework. Which of the following is an example of an entity-level control?'
WHERE id = 1276;

-- Q1536 [score:4] short-stem(8w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'A senior auditor at Whitfield & Co. is documenting the IT control environment at a client that processes all transactions through an integrated ERP system. The auditor needs to identify the broad categories of IT general controls. ITGCs typically include controls over:',
  choices = '["Physical inventory counting procedures and cycle count schedules","Customer credit approval workflows and payment terms authorization","Access security, program changes, computer operations, and program development","Individual transaction processing edits and validation checks"]'
WHERE id = 1536;

-- Q1538 [score:6] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'During a walkthrough of cash handling procedures at Northgate Retail, the audit team observes several types of controls. The team identifies one control that restricts physical access to assets. Which of the following is an example of a physical control?',
  choices = '["Requiring management approval for all journal entries exceeding $10,000","Using locked safes and restricted-access vaults to store blank check stock","Performing monthly bank reconciliations to detect errors and irregularities","Running automated exception reports that flag unusual transaction patterns"]'
WHERE id = 1538;

-- Q1539 [score:6] short-stem(10w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'An auditor at Brookfield & Associates is classifying the client''s controls by level of operation — distinguishing those that affect the entire organization from those that operate within specific processes. An entity-level control is best described as a control that:',
  choices = '["Operates at a broad level across the organization and affects multiple processes","Operates at the transaction level within a specific account or business process","Applies exclusively to IT systems and automated application controls","Is performed by a single employee with no supervisory oversight or review"]'
WHERE id = 1539;

-- Q1540 [score:5] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'An audit manager at Caldwell & Partners is evaluating how well the client''s organization identifies, captures, and distributes financial and operational data to the people who need it. The information and communication component of COSO internal control requires that:',
  choices = '["Communication flows only from top management downward to operating staff","Only financial information is communicated to employees and external parties","Relevant information is captured and communicated in a form and timeframe that enables people to carry out their responsibilities","All internal communications must be documented in writing and retained"]'
WHERE id = 1540;

-- Q1547 [score:4] short-stem(5w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'During the audit of Ridgeway Corp., the engagement team identifies a situation where the design of a particular control does not allow staff to prevent or detect errors in a timely manner. Under AU-C 265, a control deficiency exists when:',
  choices = '["The design or operation of a control does not allow timely prevention or detection of misstatements","The entity has not implemented every control recommended by external auditors","Any error of any dollar amount is discovered during audit fieldwork procedures","The entity has chosen not to establish a formal internal audit function"]'
WHERE id = 1547;

-- Q1551 [score:6] short-stem(10w) → expand stem with scenario
UPDATE questions SET
  stem = 'A newly hired audit associate at Garrison & Co. asks why internal control can provide only reasonable assurance rather than absolute assurance about the reliability of financial reporting. Which of the following is a limitation of internal control?'
WHERE id = 1551;

-- Q1567 [score:4] short-stem(11w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'During the audit of Copperfield Industries, the engagement team identifies two internal control weaknesses and must determine whether each is a significant deficiency or a material weakness for communication purposes. A significant deficiency is distinguished from a material weakness based on:',
  choices = '["Whether the deficiency was caused by management decisions or employee errors","The severity — a material weakness involves a reasonable possibility of material misstatement, while a significant deficiency is less severe but warrants governance attention","Whether the deficiency has already been reported to federal or state regulators","The estimated cost of remediating the deficiency relative to total audit fees"]'
WHERE id = 1567;
