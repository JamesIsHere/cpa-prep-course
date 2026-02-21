-- Migration: Upgrade 9 moderate-scoring Audit Sampling questions
-- Fixes: short-stem, absolute-assurance, length-cuing
-- Target: all questions score 7+ after this migration

-- Q16 [score:6] absolute-assurance → fix banned distractor
UPDATE questions SET
  choices = '["It automatically stratifies the population by dollar amount, giving larger items a higher probability of selection","It requires no statistical knowledge to apply","It eliminates the need for an understanding of the client''s business","It produces results identical to a 100% examination of the population"]'
WHERE id = 16;

-- Q116 [score:6] short-stem(10w) → expand stem with scenario
UPDATE questions SET
  stem = 'An audit team at Sterling & Associates is debating whether to use statistical or nonstatistical sampling for testing accounts receivable confirmations. What is the primary difference between statistical and nonstatistical sampling?'
WHERE id = 116;

-- Q306 [score:6] short-stem(11w) → expand stem with scenario
UPDATE questions SET
  stem = 'An auditor at Whitfield & Co. is designing a monetary-unit sampling test for a client''s inventory account with a recorded balance of $4,500,000. The auditor determines that a sample of 45 items is appropriate. When using monetary-unit sampling, the sampling interval is calculated as:'
WHERE id = 306;

-- Q307 [score:6] short-stem(8w) → expand stem with scenario
UPDATE questions SET
  stem = 'During a MUS test of accounts receivable, an auditor at Caldwell & Partners finds that a selected item has a recorded value of $10,000 but an audited value of $7,000. The auditor needs to project the misstatement to the population. In MUS, a tainting percentage is used to:'
WHERE id = 307;

-- Q312 [score:6] short-stem(10w) → expand stem with scenario
UPDATE questions SET
  stem = 'A new staff auditor at Garrison & Co. asks why the firm uses professional judgment rather than statistical formulas to determine sample sizes for certain substantive tests. Nonstatistical sampling differs from statistical sampling in that nonstatistical sampling:'
WHERE id = 312;

-- Q313 [score:6] short-stem(10w) → expand stem with scenario
UPDATE questions SET
  stem = 'An audit manager at Brookfield & Associates reviews a staff auditor''s sampling plan and notices that the auditor selected all disbursements from the month of June to test the operating effectiveness of purchase approval controls. Block selection is generally discouraged as a sampling method because:'
WHERE id = 313;

-- Q1636 [score:6] short-stem(10w) → expand stem with scenario
UPDATE questions SET
  stem = 'A CPA candidate studying AU-C 530 is reviewing the two approaches to audit sampling recognized by professional standards. What is the primary distinction between statistical and nonstatistical sampling?'
WHERE id = 1636;

-- Q1640 [score:6] short-stem(10w) → expand stem with scenario
UPDATE questions SET
  stem = 'An audit senior at Ashford & Partners is considering using monetary-unit sampling to test the completeness assertion for accounts payable. A colleague warns that MUS has a known limitation for this type of testing. A disadvantage of monetary unit sampling (MUS) is that it:'
WHERE id = 1640;

-- Q1667 [score:5] short-stem(9w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'During a substantive test of property additions, an auditor discovers that one sampled item was misclassified due to a one-time data migration error that has since been corrected and cannot recur. The auditor considers whether this misstatement can be excluded from the projected misstatement calculation. An anomalous misstatement is one that the auditor determines:',
  choices = '["Is the largest misstatement discovered in the entire sample population","Affects a transaction involving a related party or affiliated entity","Is not representative of the population because it arose from a demonstrably isolated event","Exceeds the tolerable misstatement threshold by more than 50% of materiality"]'
WHERE id = 1667;
