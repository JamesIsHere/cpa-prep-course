-- Spec cleanup for TCP Entity Tax Compliance: NOLs and Consolidated
-- Returns (TCP/II/A/1). Post-audit cleanup after authoring the 35th
-- spec (18th of Stage 3).
--
-- Census v3 flagged 14/100 questions at 14%. Spec authoring
-- whitelisted 12 (all `long-term tax-exempt rate` hits — pure
-- rightful-owner for §382 depth). Audit surfaced 2 residual flags,
-- both mis-tagged content belonging to other topics:
--
--   Q961   — §461(l) individual excess business loss. Individual
--            Taxation: Deductions (REG) territory. DELETE.
--   Q13769 — §1503(d) dual consolidated loss. International Tax
--            (TCP) territory. DELETE.
--
-- Net: 100 → 98.

BEGIN;
DELETE FROM questions WHERE id IN (961, 13769);
COMMIT;
