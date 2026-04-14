-- Follow-up: Q12928 choices array still contained the banned "economic
-- risk of loss" phrase after 01049 rewrote stem + explanation. Strip the
-- phrase from the final distractor.

BEGIN;

UPDATE questions
SET choices = $EXPL$["$450,000 — prior basis plus the full additional $200,000 guarantee", "$250,000 — guarantees do not affect partnership liability allocations", "$400,000 — prior basis plus the increase in Quinn's share of liabilities from $150,000 to $350,000", "$350,000 — reset to equal the total recourse liability amount"]$EXPL$::jsonb
WHERE id = 12928;

COMMIT;
