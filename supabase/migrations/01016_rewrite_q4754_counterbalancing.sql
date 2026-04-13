-- Rewrite Q4754 (FAR / Accounting Changes and Error Corrections) to test counterbalancing
-- errors directly. The original question asked for a correcting entry to a Year 1 inventory
-- overstatement discovered in Year 3, but a Year 1 ending-inventory error has already
-- self-corrected by end of Year 2 through normal bookkeeping. Per ASC 250-10-45-25, no
-- correcting entry is required in Year 3 if prior-period statements are not being restated.
-- The new version tests the counterbalancing concept explicitly and includes "No entry
-- required" as the correct answer.
--
-- Flagged 2026-04-11 Phase 2 verification (Q4754 FAR fail — conceptual flaw).

BEGIN;

UPDATE questions SET
  stem = $EXPL$In February Year 3, while preparing Year 3 financial statements (no comparative prior-period figures are presented), the controller of Maplewood Corp. discovers that ending inventory at December 31, Year 1 was overstated by $30,000 due to a pricing error. Year 1 and Year 2 books are closed and all Year 1 ending inventory was sold during Year 2. Assuming a 25% tax rate, what correcting entry, if any, should Maplewood record in Year 3?$EXPL$,
  choices = '["Debit Retained Earnings $22,500, debit Deferred Tax Asset $7,500, credit Inventory $30,000", "Debit Retained Earnings $30,000, credit Cost of Goods Sold $30,000", "No correcting entry is required because the error has counterbalanced", "Debit Cost of Goods Sold $22,500, credit Inventory $22,500"]'::jsonb,
  explanation = $EXPL$Correct (C): Under ASC 250-10-45-25, an inventory error is a counterbalancing error — its effect on net income in one period is automatically offset by an equal and opposite effect in the following period through normal bookkeeping. A Year 1 ending-inventory overstatement of $30,000 understates Year 1 COGS by $30,000 and overstates Year 1 net income and retained earnings by $22,500 after a 25% tax. In Year 2, the overstated opening inventory rolls into COGS, overstating Year 2 COGS by $30,000 and understating Year 2 net income by $22,500 after tax. By the end of Year 2 the cumulative effect on retained earnings is zero and the inventory balance is back to the true amount. Because Year 1 and Year 2 statements are not being restated and the error has fully counterbalanced, no Year 3 correcting entry is required.
Wrong (A): Debiting retained earnings $22,500 and crediting inventory $30,000 would be correct for a non-counterbalancing error such as an overstated fixed asset or a capitalized expense. Unlike a fixed-asset error, a counterbalancing inventory error discovered after the second period has closed creates a new $22,500 misstatement if this entry is recorded in Year 3, rather than correcting anything.
Wrong (B): This entry ignores the tax effect and would still double-count a correction that has already self-reversed. It also inappropriately touches current-period COGS for a prior-period error.
Wrong (D): Under ASC 250-10-45, prior-period errors are corrected through beginning retained earnings (when statements are restated) or not at all (when the error has counterbalanced and prior statements are not presented). Current-period COGS is never the correcting account for a prior-period inventory error.$EXPL$,
  correct_index = 2,
  difficulty = 'hard',
  cognitive_level = 3
WHERE id = 4754;

COMMIT;
