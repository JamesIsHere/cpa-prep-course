-- Migration: Stem expansion — AUD batch 13 (2 questions)
-- Date: 2026-03-29
-- Purpose: Expand 2 short stems with scenario context for AUD section
-- Affected topics: Professional Skepticism and Judgment, Using the Work of Others

BEGIN;

-- ============================================================
-- PROFESSIONAL SKEPTICISM AND JUDGMENT (1 questions)
-- ============================================================

-- ID 4459: Professional Skepticism and Judgment (20 words)
-- ORIGINAL STEM: An auditor is presented with a complex restructuring transaction. Professional judgment requires the auditor to evaluate whether the accounting treatment:
UPDATE questions SET
  stem = $EXPL$Glenwood Industries recently sold its plastics division to a newly formed entity whose majority owner is Glenwood''s CEO. The transaction was structured as an arm''s-length sale, but the auditor notes the buyer paid no cash at closing and financed the entire purchase through a seller note. In exercising professional judgment over this restructuring, the auditor should evaluate whether the accounting treatment:$EXPL$
WHERE id = 4459;

-- ============================================================
-- USING THE WORK OF OTHERS (1 questions)
-- ============================================================

-- ID 4556: Using the Work of Others (20 words)
-- ORIGINAL STEM: In a group audit, when a component is significant due to its individual financial significance, the group engagement team should:
UPDATE questions SET
  stem = $EXPL$Pryor & Marsh LLP is the group engagement team for the consolidated audit of Beacon Holdings, which has four wholly owned subsidiaries. One subsidiary, Beacon Energy, represents 45% of consolidated revenue and 38% of total assets. Because Beacon Energy is individually significant to the group financial statements, the group engagement team should:$EXPL$
WHERE id = 4556;

COMMIT;
