-- Quick fix for Q10 choice length ratio warning from migration 01061.
-- The COSO components question had an overly long wrong distractor D;
-- shortening to bring the ratio below the 3x validator threshold.

BEGIN;

UPDATE questions
SET choices = $EXPL$["Substantive testing","Analytical procedures","Control environment","Firm-level quality management"]$EXPL$::jsonb
WHERE id = 10;

COMMIT;
