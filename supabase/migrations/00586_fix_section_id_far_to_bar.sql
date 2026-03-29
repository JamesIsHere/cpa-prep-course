-- Fix 150 questions with wrong section_id: topics belong to BAR per AICPA 2026
-- Blueprint but were generated under FAR section_id before the realignment.
--
-- Affected topics:
--   - Pension and Postretirement Benefits (90 questions)
--   - Financial Statement Analysis (60 questions)

UPDATE questions
SET section_id = (SELECT id FROM sections WHERE code = 'bar')
WHERE section_id = (SELECT id FROM sections WHERE code = 'far')
  AND topic IN (
    'Pension and Postretirement Benefits',
    'Financial Statement Analysis'
  );
