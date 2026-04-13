-- Rewrite Q15062 (BAR / Pension and Postretirement Benefits) to test ASC 715-30-35-93
-- curtailment mechanics cleanly. The original question included a net actuarial loss which
-- introduced an ambiguity about whether ASC 715 offsets the PBO change against actuarial
-- losses, and the stored explanation attempted to do so with algebraically broken math.
--
-- The rewrite removes the actuarial loss entirely, leaving the PBO decrease and the PSC
-- write-off for eliminated service as the only components. Correct answer is unambiguous
-- at $1,560,000. New distractor $1,440,000 tests the common complement-proportion error
-- (using 60% remaining service instead of 40% eliminated service).
--
-- Flagged 2026-04-11 Phase 2 verification (Q15062 BAR fail — arithmetic/reasoning error).

BEGIN;

UPDATE questions SET
  stem = $EXPL$Noble Corp. eliminates a division, resulting in a plan curtailment that reduces the projected benefit obligation (PBO) by $1,800,000. At the curtailment date, Noble has unrecognized prior service cost of $600,000 remaining in accumulated other comprehensive income, and the proportion of future service eliminated is 40%. Assume there is no unrecognized net actuarial gain or loss. Under ASC 715-30-35-93, what is the net curtailment gain or loss Noble should recognize?$EXPL$,
  choices = '["Net curtailment gain of $1,800,000", "Net curtailment gain of $1,560,000", "Net curtailment gain of $1,440,000", "Net curtailment gain of $1,200,000"]'::jsonb,
  explanation = $EXPL$Correct (B): Under ASC 715-30-35-93, a pension curtailment gain or loss includes two components: (a) any unrecognized prior service cost associated with the years of service no longer expected to be rendered, recognized immediately as a loss, and (b) the increase or decrease in the PBO resulting from the curtailment, offset by any remaining unrecognized net gain or net loss. Because Noble has no unrecognized net actuarial gain or loss, only the PSC write-off and the PBO change remain. Computation: PBO decrease = $1,800,000 gain; PSC write-off = 40% × $600,000 = $240,000 loss. Net curtailment gain = $1,800,000 − $240,000 = $1,560,000.
Wrong (A): This treats the full PBO decrease as the curtailment gain while ignoring the required acceleration of unrecognized prior service cost under ASC 715-30-35-93(a). The PSC tied to the eliminated future service must be recognized as a curtailment loss rather than continuing to amortize.
Wrong (C): This incorrectly uses 60% (the proportion of service remaining) instead of 40% (the proportion eliminated) when calculating the PSC write-off, yielding $1,800,000 − $360,000 = $1,440,000. Under ASC 715-30-35, the loss is proportional to future service lost, not future service retained.
Wrong (D): This recognizes the full $600,000 of unrecognized PSC as a loss rather than only the 40% attributable to eliminated future service. Only the portion tied to curtailed service is accelerated; the remainder continues to amortize over the remaining employees' expected future service.$EXPL$,
  correct_index = 1,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 15062;

COMMIT;
