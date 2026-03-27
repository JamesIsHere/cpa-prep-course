-- FAR question topic renames to align with AICPA 2026 Blueprint group names
-- Step 1 of 5: Straightforward renames (no splits, no new questions)
--
-- Mapping:
--   "Financial Statements"                → "Financial Reporting: For-Profit"  (I.A topics 1-4,7)
--   "Conceptual Framework and Standards"  → "Financial Reporting: For-Profit"  (I.A — fold in)
--   "Earnings Per Share"                  → "Public Company Reporting"         (I.D)
--   "Fixed Assets"                        → "Property, Plant and Equipment"    (II.D)
--   "Bonds and Debt"                      → "Debt"                            (II.H)
--   "Governmental Accounting"             → "State and Local Government"       (I.C)
--   "Governmental Accounting Fundamentals"→ "State and Local Government"       (I.C — merge)

BEGIN;

-- Get the FAR section ID
DO $RENAME$
DECLARE
  far_id INT;
BEGIN
  SELECT id INTO far_id FROM sections WHERE code = 'far';

  -- I.A: Merge "Financial Statements" + "Conceptual Framework and Standards" → "Financial Reporting: For-Profit"
  UPDATE questions
    SET topic = 'Financial Reporting: For-Profit'
    WHERE section_id = far_id
      AND topic IN ('Financial Statements', 'Conceptual Framework and Standards');

  -- I.D: "Earnings Per Share" → "Public Company Reporting"
  UPDATE questions
    SET topic = 'Public Company Reporting'
    WHERE section_id = far_id
      AND topic = 'Earnings Per Share';

  -- II.D: "Fixed Assets" → "Property, Plant and Equipment"
  UPDATE questions
    SET topic = 'Property, Plant and Equipment'
    WHERE section_id = far_id
      AND topic = 'Fixed Assets';

  -- II.H: "Bonds and Debt" → "Debt"
  UPDATE questions
    SET topic = 'Debt'
    WHERE section_id = far_id
      AND topic = 'Bonds and Debt';

  -- I.C: Merge "Governmental Accounting" + "Governmental Accounting Fundamentals" → "State and Local Government"
  UPDATE questions
    SET topic = 'State and Local Government'
    WHERE section_id = far_id
      AND topic IN ('Governmental Accounting', 'Governmental Accounting Fundamentals');

  RAISE NOTICE 'FAR topic renames complete';
END;
$RENAME$;

COMMIT;
