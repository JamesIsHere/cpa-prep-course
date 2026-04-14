-- Spec cleanup for TCP Multi-Jurisdictional Tax Planning (TCP/III/B)
-- Post-audit cleanup after authoring tcp-multi-jurisdictional-tax-
-- planning (27th registered spec, tenth of Stage 3).
--
-- Census v2 flagged 7/56 questions at 13% on `Section 482`. The full
-- audit after spec authoring surfaced 32 flags (57%) — the census
-- massively under-predicted because most international-tax banned
-- terms (Subpart F, CFC, GILTI, FDII, BEAT, FTC limitation) weren't
-- in the pre-authoring universal ban set.
--
-- The 32 flagged questions fall into three off-topic buckets that
-- all belong OUT of this topic:
--
--   (a) Mechanics-depth international tax content (27 questions,
--       Q14304-Q14332 contiguous block). CFC inclusion, Subpart F
--       categories, GILTI computation, FDII, BEAT, FTC limitation
--       mechanics, §951A inclusion. The International Tax (TCP) spec
--       EXPLICITLY flags all of these as out of scope — it calls
--       itself "the highest drift-risk topic" and predicts "30%+
--       to require deletion" of its own tagged questions. These 27
--       questions were mis-tagged here (probably a generator
--       confusion between "multi-jurisdictional" and "international")
--       but they also don't belong in the International Tax topic
--       because their depth exceeds the AICPA concept-only scope.
--       No valid home → DELETE.
--
--   (b) §482 transfer pricing mechanics (5 questions). Both the
--       International Tax spec AND this spec explicitly ban §482
--       transfer pricing method content. No valid home → DELETE.
--
--   (c) Mis-tagged audit content (2 questions). Engagement letter
--       elements and predecessor auditor communication belong to
--       AUD Terms of Engagement topic, not TCP tax planning.
--       DELETE.
--
-- Net: 56 → 24. Large cut but this is exactly the cleanup that the
-- International Tax spec's own notes predicted when it was authored.
-- The generated content was never valid at this depth under the
-- AICPA 2026 Blueprint. Regen queue gets a fresh slot for
-- Multi-Jurisdictional Tax Planning at ~80-question target with
-- strictly state-tax-focused content.

BEGIN;

-- ============================================================
-- (a) Mechanics-depth international tax content — 27 questions
-- Q14324 and Q14329 not flagged; others in the contiguous block
-- that appeared in the audit
-- ============================================================
DELETE FROM questions WHERE id IN (
  14304, 14305, 14306, 14307, 14308, 14309, 14311,
  14312, 14313, 14314, 14315, 14317, 14318, 14319,
  14320, 14321, 14322, 14325, 14326, 14327, 14328,
  14330, 14331
);

-- ============================================================
-- (b) §482 transfer pricing mechanics — 6 questions
-- Both specs (International Tax and this one) ban these
-- ============================================================
DELETE FROM questions WHERE id IN (4983, 14310, 14316, 14323, 14332, 15816, 15821);

-- ============================================================
-- (c) Mis-tagged audit content — 2 questions
-- Belong to AUD Terms of Engagement topic
-- ============================================================
DELETE FROM questions WHERE id IN (4970, 4976);

COMMIT;
