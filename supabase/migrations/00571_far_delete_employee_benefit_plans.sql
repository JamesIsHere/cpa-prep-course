-- FAR: Delete "Employee Benefit Plans" questions — not on AICPA 2026 FAR blueprint
-- Step 4 of 5: Remove 80 questions that test content not on the exam
-- These cover ASC 715 (private-sector pensions/OPEB) which is not a FAR blueprint group.
-- Note: Government pensions (GASB 68/75) remain under "State and Local Government" topic.

BEGIN;

DO $DEL$
DECLARE
  far_id INT;
  deleted INT;
BEGIN
  SELECT id INTO far_id FROM sections WHERE code = 'far';

  DELETE FROM questions
    WHERE section_id = far_id
      AND topic = 'Employee Benefit Plans';

  GET DIAGNOSTICS deleted = ROW_COUNT;
  RAISE NOTICE 'Deleted % Employee Benefit Plans questions from FAR', deleted;
END;
$DEL$;

COMMIT;
