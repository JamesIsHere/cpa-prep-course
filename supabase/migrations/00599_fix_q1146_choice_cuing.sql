-- Migration: Fix Q1146 + Q2127 — review-flagged issues
-- Date: 2026-03-29
-- Purpose: Q1146 choice length cuing + difficulty mislabel; Q2127 difficulty mislabel (hard/L1 → easy/L1)



UPDATE questions SET
  stem = $EXPL$Clearwater Corp. acquires a specialized manufacturing machine for $850,000 (entry price) in an arm''s-length transaction. On the same date, an identical machine could be sold in the principal market for $790,000 (exit price) due to installation costs, dealer margins, and market conditions. Under ASC 820, what amount should the controller report as fair value for disclosure purposes?$EXPL$,
  choices = $EXPL$["Fair value is $850,000 because the arm''s-length acquisition cost is the most reliable evidence of value", "Fair value is $820,000 because ASC 820 requires averaging the entry and exit prices", "Fair value is $790,000 because ASC 820 defines fair value as an exit price, and the $60,000 difference reflects market frictions rather than impairment", "Fair value is $790,000 and the $60,000 difference must be recognized as a day-one impairment loss"]$EXPL$::jsonb,
  explanation = $EXPL$Correct (C): ASC 820-10-20 defines fair value as the price that would be received to sell an asset (exit price), not the price paid to acquire it (entry price). The exit price of $790,000 is fair value for disclosure purposes. The $60,000 difference between cost and fair value typically reflects transaction costs, installation costs, or market frictions — not an economic loss. The asset is recorded at cost ($850,000) under ASC 360, so no day-one impairment is triggered. Wrong (A): The transaction price is an entry price, which is not the ASC 820 definition of fair value. Wrong (B): ASC 820 does not use an averaging approach between entry and exit prices — fair value is strictly the exit price. Wrong (D): The cost-fair value gap does not trigger impairment — impairment testing follows a separate framework under ASC 360 and requires indicators of impairment beyond a day-one pricing difference.$EXPL$,
  correct_index = 2,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 1146;

-- Q2127: Quasi-reorganization — tagged hard/L1 but is pure definitional recall → easy/L1
UPDATE questions SET
  difficulty = 'easy'
WHERE id = 2127;

-- Q2014: Held-for-sale reclassification — tagged hard but is direct single-rule application → medium
UPDATE questions SET
  difficulty = 'medium'
WHERE id = 2014;

-- Q1125: Contractual basis SPF — tagged hard but is definitional recall with scenario context → medium
UPDATE questions SET
  difficulty = 'medium'
WHERE id = 1125;


