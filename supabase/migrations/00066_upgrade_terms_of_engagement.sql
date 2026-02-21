-- Migration: Upgrade 5 moderate-scoring Terms of Engagement questions
-- Fixes: absolute-assurance traps, short-stem, length-cuing, missing citations
-- Target: all questions score 7+ after this migration

-- Q4970 [score:6] absolute-assurance → replace distractor, expand stem + cite AU-C 210
UPDATE questions SET
  stem = 'Waverly & Associates is preparing the engagement letter for the first-year audit of Thornfield Retail Corp. for the year ended December 31, 2025. The engagement partner drafts the letter and reviews the required elements with the team before sending it to the client''s board. Under AU-C 210, which of the following is a required element of an audit engagement letter?',
  choices = '["The identification of the applicable financial reporting framework and management''s responsibility for the financial statements","The names of all staff members who will work on the engagement and their individual billing rates","A description of each specific audit procedure the auditor plans to perform during fieldwork","The projected timeline for completing each phase of the audit, including interim and final fieldwork dates"]',
  explanation = 'Under AU-C 210.10, the engagement letter must include the objective and scope of the audit, the auditor''s responsibilities, management''s responsibilities (including preparation of financial statements under the applicable framework), and identification of that framework. Choice B is incorrect because staffing details are an internal matter, not a required engagement letter element. Choice C is incorrect because the auditor has discretion over specific procedures and is not required to list them in the letter.'
WHERE id = 4970;

-- Q4974 [score:6] absolute-assurance → replace distractor, expand explanation
UPDATE questions SET
  stem = 'The engagement letter for the audit of Kensington Distribution by Prescott & Associates includes a reference to the expected form and content of reports the auditor will issue. The controller asks why this language is necessary. Under AU-C 210, including a reference to expected report form and content in the engagement letter exists primarily to:',
  choices = '["Establish the client''s expectations regarding the nature and limitations of the audit engagement","Provide the client with a draft copy of the final audit report before fieldwork begins","Limit the auditor''s legal liability in the event of a post-audit professional negligence claim","Specify the exact wording that will appear in the opinion paragraph of the auditor''s report"]',
  explanation = 'Under AU-C 210.10, referencing the expected form and content of reports in the engagement letter helps manage the client''s expectations regarding what the audit will and will not accomplish. It clarifies the nature and limitations of the engagement and ensures both parties have a mutual understanding. Choice C is incorrect because the engagement letter is not primarily a liability-limitation instrument — its purpose is to document the agreed-upon terms. Choice D is incorrect because the exact opinion wording depends on audit findings and cannot be predetermined.'
WHERE id = 4974;

-- Q4984 [score:5] short-stem(7w) + length-cuing(16/118) → expand stem, balance choices
UPDATE questions SET
  stem = 'The engagement partner at Birchwood & Associates has finalized the terms of the audit of Ridgemont Manufacturing for the year ended December 31, 2025. Before sending the engagement letter, the partner confirms who must sign it to make it binding. Under AU-C 210, the engagement letter should be signed by:',
  choices = '["Only the auditor — the engagement partner on behalf of the audit firm","The auditor and the client''s external legal counsel as an independent witness","Appropriate representatives of both the auditor and the entity, typically management or those charged with governance","The auditor, management, the audit committee chair, and the client''s general counsel"]'
WHERE id = 4984;

-- Q4987 [score:6] absolute-assurance → replace distractor, cite AU-C 210/220
UPDATE questions SET
  stem = 'Mercer & Associates is considering whether to accept a first-year audit engagement with Cascade Logistics, a privately held freight company. Before agreeing to the terms, the engagement partner must complete certain acceptance procedures. Under AU-C 210 and AU-C 220, during the engagement acceptance process for a first-year audit, the auditor is required to:',
  choices = '["Accept the client before performing any due diligence procedures to secure the engagement","Require the client to change its accounting policies to match the auditor''s preferred framework","Communicate with the predecessor auditor to obtain information relevant to acceptance of the engagement","Evaluate compliance with ethical requirements, including independence, and perform client acceptance procedures"]',
  explanation = 'Under AU-C 210.06 and AU-C 220.12, the auditor must evaluate compliance with relevant ethical requirements (including independence), perform client acceptance procedures (including evaluating management integrity and the firm''s ability to perform the engagement), and establish that preconditions for the audit exist. Choice C describes a recommended step (AU-C 210.13 — predecessor auditor communication) but is not the complete acceptance requirement. Choice A is incorrect because due diligence must precede acceptance.'
WHERE id = 4987;

-- Q4988 [score:6] absolute-assurance → replace distractor, expand explanation
UPDATE questions SET
  stem = 'While drafting the engagement letter for Ashford Electronics, the engagement partner at Glenview & Associates includes language about the auditor''s responsibility for fraud detection. A staff auditor asks why this language is important. Under AU-C 210, the engagement letter should address the auditor''s fraud responsibility by stating that:',
  choices = '["The auditor will only investigate fraud if management or the audit committee specifically requests it","Fraud detection is solely management''s responsibility and the auditor has no obligation to consider fraud","The auditor assumes full liability for any fraud that occurs during the period under audit","The audit is designed to provide reasonable assurance of detecting material misstatements, whether caused by fraud or error"]',
  explanation = 'Under AU-C 210.10 and AU-C 240, the engagement letter should clarify that the audit is designed to provide reasonable assurance about whether the financial statements are free from material misstatement, whether caused by fraud or error. This sets appropriate expectations without overstating the auditor''s role. Choice A is incorrect because the auditor has an inherent responsibility under AU-C 240 to consider fraud risks regardless of whether the client requests it. Choice B is incorrect because while management has primary responsibility for fraud prevention and detection, the auditor also has responsibilities under auditing standards.'
WHERE id = 4988;
