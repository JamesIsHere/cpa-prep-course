-- Migration: Stem expansion — FAR batch 1 (2 questions)
-- Date: 2026-03-29
-- Purpose: Expand 2 short stems with scenario context for FAR section
-- Affected topics: Financial Reporting: For-Profit, State and Local Government

BEGIN;

-- ============================================================
-- FINANCIAL REPORTING: FOR-PROFIT (1 questions)
-- ============================================================

-- ID 4714: Financial Reporting: For-Profit (9 words)
-- ORIGINAL STEM: The going concern assumption in financial reporting presumes that:
UPDATE questions SET
  stem = 'TODO: expand stem with 2-4 sentence business scenario (target 25-50 words)'
WHERE id = 4714;

-- ============================================================
-- STATE AND LOCAL GOVERNMENT (1 questions)
-- ============================================================

-- ID 5453: State and Local Government (9 words)
-- ORIGINAL STEM: Under GASB 54, what does assigned fund balance represent?
UPDATE questions SET
  stem = 'TODO: expand stem with 2-4 sentence business scenario (target 25-50 words)'
WHERE id = 5453;

COMMIT;
