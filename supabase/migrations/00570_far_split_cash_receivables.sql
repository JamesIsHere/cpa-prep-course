-- FAR: Split "Cash and Receivables" into two AICPA-aligned topics
-- Step 2 of 5: "Cash and Receivables" (53 questions) → "Cash and Cash Equivalents" (16) + "Trade Receivables" (37)
--
-- Classification based on question stem content:
--   Cash: bank reconciliations, compensating balances, petty cash, restricted cash,
--         cash equivalents, overdrafts, line of credit, deposits in transit, stale checks
--   Receivables: CECL/ASC 326, factoring, pledging, assignment, notes receivable,
--                allowances, aging, trade discounts, credit card receivables

BEGIN;

-- Cash and Cash Equivalents (16 questions)
UPDATE questions
  SET topic = 'Cash and Cash Equivalents'
  WHERE id IN (1102, 2244, 2246, 2259, 2260, 2264, 2268, 11973, 11974, 11976, 11977, 11984, 11988, 11994, 11996, 11999);

-- Trade Receivables (37 questions)
UPDATE questions
  SET topic = 'Trade Receivables'
  WHERE id IN (1098, 1101, 1103, 1104, 1105, 2248, 2249, 2250, 2251, 2252, 2253, 2254, 2255, 2256, 2258, 2261, 2262, 2263, 2265, 2269, 11970, 11971, 11972, 11978, 11980, 11981, 11982, 11983, 11986, 11987, 11990, 11991, 11992, 11993, 11995, 11997, 11998);

-- Verify no "Cash and Receivables" remain
DO $CHECK$
DECLARE
  remaining INT;
BEGIN
  SELECT count(*) INTO remaining FROM questions WHERE topic = 'Cash and Receivables';
  IF remaining > 0 THEN
    RAISE EXCEPTION 'Still % questions with old topic "Cash and Receivables"', remaining;
  END IF;
  RAISE NOTICE 'Split complete: 0 questions remain with old topic';
END;
$CHECK$;

COMMIT;
