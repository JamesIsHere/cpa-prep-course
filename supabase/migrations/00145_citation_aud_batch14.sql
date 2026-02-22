-- Migration: Citation backfill — AUD batch 14 (1 questions)
-- Date: 2026-02-22
-- Purpose: Add standard citations to 1 explanations for AUD section
-- Affected topics: Internal Controls

BEGIN;

-- ============================================================
-- INTERNAL CONTROLS (1 questions)
-- ============================================================

-- ID 110: Internal Controls
UPDATE questions SET
  explanation = 'Under AU-C Section 315.A128, IT general controls (ITGCs) are policies and procedures that relate to many applications and support the effective functioning of application controls, including controls over program changes, access to programs and data, and computer operations. Password requirements and user access management qualify as ITGCs because they govern access across multiple systems rather than within a single transaction process. However, controls that validate completeness or accuracy within a specific application are classified as application controls, not ITGCs.'
WHERE id = 110;

COMMIT;
