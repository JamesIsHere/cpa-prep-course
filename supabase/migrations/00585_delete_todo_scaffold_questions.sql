-- Delete 12 TODO scaffold questions that were committed by unfilled orchestrator batches
-- These came from migrations 00252 (AUD batch 58), 00279 (TCP batch 8), 00281 (ISC batch 8)
-- which contained only placeholder text ("TODO: write L2 stem for medium question", etc.)
-- The migration files have been deleted from the repo.

BEGIN;

DELETE FROM questions WHERE stem LIKE 'TODO:%';

COMMIT;
