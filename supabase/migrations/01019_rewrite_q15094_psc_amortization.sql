-- Rewrite Q15094 (BAR / Pension and Postretirement Benefits). The original stem used
-- employee counts (20/25/15 with horizons 5/10/15 years) whose weighted average remaining
-- service period is 575/60 = 9.583 years, producing a correct amortization of ~$93,945 —
-- which was not among the four offered choices. The stored explanation acknowledged this
-- and then arbitrarily switched to a simple unweighted mean of (5+10+15)/3 = 10 to justify
-- the $90,000 keyed answer, which is not the ASC 715-30-35-11 method.
--
-- The rewrite picks employee counts (40/40/20) that give a clean weighted average of
-- exactly 9 years, making the correct answer an unambiguous $100,000. The distractors
-- exercise the common student errors: simple unweighted mean, longest-remaining only,
-- and shortest-remaining only.
--
-- Flagged 2026-04-11 Phase 2 verification (Q15094 BAR review — wrong calculation method).

BEGIN;

UPDATE questions SET
  stem = $EXPL$Foxworth Manufacturing amends its defined benefit pension plan, creating $900,000 of prior service cost. The remaining future service of the 100 active plan participants is distributed as follows: 40 employees have 5 years remaining, 40 employees have 10 years remaining, and 20 employees have 15 years remaining. Using the alternative straight-line amortization method under ASC 715-30-35-11, what is the annual amortization of prior service cost?$EXPL$,
  choices = '["$60,000", "$100,000", "$90,000", "$180,000"]'::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 715-30-35-11, an entity may amortize prior service cost on a straight-line basis over the average remaining service period of active plan participants expected to receive benefits. The average must be weighted by the number of employees in each service-year group rather than a simple arithmetic mean of the group horizons. Computation: total employee future service years = (40 × 5) + (40 × 10) + (20 × 15) = 200 + 400 + 300 = 900 employee-years. Weighted average remaining service period = 900 employee-years / 100 employees = 9 years. Annual amortization = $900,000 / 9 = $100,000.
Wrong (A): Dividing $900,000 by the longest remaining service period (15 years) yields $60,000 and understates amortization, because the majority of employees will retire well before 15 years and their share of prior service cost must be expensed over their shorter remaining service rather than the longest horizon in the group.
Wrong (C): Dividing $900,000 by the simple arithmetic mean of the group horizons — (5 + 10 + 15) / 3 = 10 — yields $90,000 and is a common error rather than the weighted calculation ASC 715 requires. The correct denominator weights each horizon by headcount, which here is 9 years, not 10, because more employees are concentrated in the 5- and 10-year groups than in the 15-year group.
Wrong (D): Dividing $900,000 by the shortest remaining service period (5 years) yields $180,000 and front-loads all amortization as if every employee were retiring within five years. Only the 40 employees in the shortest group will do so; the other 60 remain in service longer.$EXPL$,
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 2
WHERE id = 15094;

COMMIT;
