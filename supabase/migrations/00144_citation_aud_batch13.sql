-- Migration: Citation backfill — AUD batch 13 (1 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 1 explanations for AUD section
-- Affected topics: Internal Controls

BEGIN;

-- ============================================================
-- INTERNAL CONTROLS (1 questions)
-- ============================================================

-- ID 107: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C 315.14, the control environment encompasses management''s commitment to integrity and ethical values, and a pattern of management override of established controls is one of the strongest indicators that the tone at the top does not support effective internal control. Override undermines every other component of internal control because it signals that policies exist in form but not in substance. Although operating in a highly competitive industry may increase business risk, it does not by itself indicate a weak control environment — external pressures are distinct from the entity''s governance and oversight culture.'
WHERE id = 107;

COMMIT;
