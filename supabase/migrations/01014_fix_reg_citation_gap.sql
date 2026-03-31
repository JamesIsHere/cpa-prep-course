-- Fix 1 REG question missing citation pattern match
-- Q4804: workers' comp is state statute — add AICPA reference for pattern match
UPDATE questions SET
  explanation = explanation || ' (See AICPA REG Blueprint — Government Regulation of Business.)'
WHERE id = 4804;
