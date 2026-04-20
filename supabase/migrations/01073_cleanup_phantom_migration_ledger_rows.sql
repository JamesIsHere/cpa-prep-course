-- Queue #9: clean up 5 phantom rows in applied_migrations that reference
-- files no longer on disk.
--
-- Context (from commit d6da50c "Fix stale migrations + add orchestrator
-- guardrails" on 2026-03-28):
--
-- 1. 00252_generate_aud_batch58.sql
--    00279_generate_tcp_batch8.sql
--    00281_generate_isc_batch8.sql
--    These three were unfilled scaffold migrations that were applied to
--    the DB before being filled in. They contained no actual work (just
--    placeholder comments). Commit d6da50c deleted them from disk. The
--    applied_migrations rows were left in place.
--
-- 2. 00571_far_delete_employee_benefit_plans.sql
--    00578_far_delete_employee_benefit_plans_round2.sql
--    These two were renumbered in commit d6da50c to avoid collision with
--    other migrations at the same numbers. The files now live as
--    00583_far_delete_employee_benefit_plans.sql and
--    00584_far_delete_employee_benefit_plans_round2.sql, which are also
--    tracked in applied_migrations. The old 00571/00578 rows are duplicate
--    ledger entries for work already tracked under the new numbers.
--
-- The applied work exists in the DB — we are only cleaning the ledger to
-- match what is actually on disk. After this migration, `migrate:status`
-- will report matched counts (on-disk = applied).

BEGIN;

DELETE FROM applied_migrations
WHERE filename IN (
  '00252_generate_aud_batch58.sql',
  '00279_generate_tcp_batch8.sql',
  '00281_generate_isc_batch8.sql',
  '00571_far_delete_employee_benefit_plans.sql',
  '00578_far_delete_employee_benefit_plans_round2.sql'
);

-- Sanity: the DELETE should have affected exactly 5 rows.

COMMIT;
