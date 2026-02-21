-- Migration: Upgrade 9 moderate-scoring Misstatements and Control Deficiencies questions
-- Fixes: short-stem, length-cuing, absolute-assurance
-- Target: all questions score 7+ after this migration

-- Q5110 [score:5] short-stem(7w) → expand stem
UPDATE questions SET
  stem = 'During the audit of Willow Creek Manufacturing, the engagement team identifies a $15,000 error where accounts payable was understated due to an unrecorded vendor invoice. Under auditing standards, a factual misstatement is best described as:'
WHERE id = 5110;

-- Q5111 [score:4] short-stem(5w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'An auditor tests a sample of 50 inventory items from a population of 2,000 and finds pricing errors totaling $8,000 in the sample. Under auditing standards, a projected misstatement arises when:',
  choices = '["Management projects future earnings based on current operating trends","The auditor extrapolates misstatements found in a sample to the entire population","The auditor estimates the financial effect of a going concern uncertainty","Management develops an accounting estimate for a contingent liability"]'
WHERE id = 5111;

-- Q5112 [score:4] short-stem(9w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'During the audit of Oakridge Financial Services, the auditor identifies a control deficiency in the accounts receivable confirmation process. Under AU-C 265, a significant deficiency in internal control is defined as:',
  choices = '["Any deficiency in internal control regardless of its potential magnitude","A deficiency important enough to merit governance attention but less severe than a material weakness","A deficiency that the auditor considers immaterial to the financial statements","A deficiency that management has already identified and corrected before year-end"]'
WHERE id = 5112;

-- Q5113 [score:4] short-stem(7w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'While evaluating the severity of a control deficiency identified during the audit of Summit Healthcare, the auditor must determine whether the deficiency rises to the level of a material weakness. Under AU-C 265, a material weakness in internal control is:',
  choices = '["Any control deficiency identified during the audit engagement","A deficiency that has been communicated to management in the management letter","A deficiency creating a reasonable possibility that a material misstatement will not be timely prevented or detected","A control deficiency that has already resulted in a confirmed material misstatement"]'
WHERE id = 5113;

-- Q5116 [score:5] short-stem(7w) + length-cuing → expand stem, balance choices
UPDATE questions SET
  stem = 'An auditor disagrees with management''s estimate of the allowance for doubtful accounts, believing it understates expected losses based on historical collection data. Under auditing standards, a judgmental misstatement is best described as:',
  choices = '["A clear mathematical error in the recorded financial statement amounts","A misstatement from unreasonable estimate judgments or inappropriate accounting policy selection","A misstatement discovered through the application of analytical procedures","A misstatement caused by an information technology system processing error"]'
WHERE id = 5116;

-- Q5120 [score:4] short-stem(11w) + absolute-assurance → expand stem, fix distractor
UPDATE questions SET
  stem = 'After completing the audit of Hawthorne Industries, the auditor prepares a written communication about significant deficiencies and material weaknesses for the audit committee. Under AU-C 265, this written communication should include:',
  choices = '["A description of the deficiencies and an explanation of their potential effects","A statement that all internal control deficiencies have been identified","Specific corrective actions that management is required to implement immediately","An evaluation of whether management is sufficiently competent to operate controls"]'
WHERE id = 5120;

-- Q5126 [score:6] absolute-assurance → fix distractor
UPDATE questions SET
  choices = '["A certainty that a misstatement will occur in the period","A probability of occurrence greater than ninety-five percent","A likelihood that exceeds the more-likely-than-not threshold","More than a remote likelihood — the chance is more than slight"]'
WHERE id = 5126;

-- Q5127 [score:6] short-stem(11w) → expand stem
UPDATE questions SET
  stem = 'After identifying significant deficiencies during the audit of Crestview Corporation, the auditor prepares a written communication to those charged with governance. Under AU-C 265, the auditor''s communication of control deficiencies should include a statement that:'
WHERE id = 5127;

-- Q5128 [score:6] length-cuing → balance choices
UPDATE questions SET
  choices = '["It replaces the need for any primary controls in the affected area","It is a control that management has committed to implementing in the future","It automatically eliminates any identified material weakness classification","It may reduce the severity of a deficiency by mitigating the risk of material misstatement"]'
WHERE id = 5128;
