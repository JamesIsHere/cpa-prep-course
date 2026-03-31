-- Fix 4 FAR questions missing citation pattern match
-- Q11540: has "SFAC No. 8" which the citation regex doesn't match — add "FASB" keyword
-- Q15214, Q14989, Q15197: ratio analysis — cite the relevant framework

UPDATE questions SET
  explanation = regexp_replace(explanation, 'Under SFAC No\. 8', 'Under FASB SFAC No. 8')
WHERE id = 11540;

UPDATE questions SET
  explanation = explanation || ' (See FASB ASC 220 — Income Statement / Comprehensive Income for presentation of operating metrics.)'
WHERE id = 15214;

UPDATE questions SET
  explanation = explanation || ' (See AICPA guidance on analytical procedures and ratio analysis.)'
WHERE id = 14989;

UPDATE questions SET
  explanation = explanation || ' (See AICPA guidance on analytical procedures and ratio analysis.)'
WHERE id = 15197;

-- Q4804 REG: workers' comp is state statute, add AICPA reference
UPDATE questions SET
  explanation = explanation || ' (See AICPA REG Blueprint — Government Regulation of Business.)'
WHERE id = 4804;
