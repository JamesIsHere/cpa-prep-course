-- Spec cleanup for AUD Materiality (AUD/II/D)
-- Post-audit cleanup after authoring aud-materiality (25th registered
-- spec, eighth of Stage 3).
--
-- Census v2 flagged 5/64 questions at 8% (3 on `tolerable misstatement`,
-- 2 on `component auditor`). Spec authoring whitelisted all 3
-- `tolerable misstatement` hits (that term IS this topic's core as a
-- materiality-allocation concept). Audit surfaced 4 flags across two
-- drift surfaces:
--
--   DELETE (3) — off-topic
--     Q4521  — group audit / AU-C 600 component materiality. Pure
--              Using the Work of Others territory.
--     Q13042 — group audit / component auditor insubordination. Pure
--              Using the Work of Others territory.
--     Q15833 — AU-C 530 sample evaluation (upper limit of misstatement
--              vs tolerable misstatement). Pure Audit Sampling
--              territory; uses tolerable misstatement as a sampling
--              variable rather than a materiality-allocation concept.
--
--   REWRITE (1) — legitimate materiality question with a banned
--   distractor reference
--     Q15827 — excellent AU-C 450 qualitative-factor question
--              (reversing loss to income makes quantitatively
--              immaterial misstatement material). Distractor D
--              references SAB 99; rewrite removes the regulator
--              citation and keeps the GAAS/PCAOB parallel.
--
-- Net: 64 → 61.

BEGIN;

-- ============================================================
-- Q15827 — REWRITE: drop SAB 99 distractor reference
-- ============================================================
UPDATE questions
SET choices = $EXPL$["Disregard the misstatement because it falls well below the quantitative materiality threshold","Evaluate the misstatement as potentially material because it reverses the direction of the earnings trend","Reclassify the misstatement as clearly trivial since it is less than 10% of overall materiality","Propose an adjustment only if the entity is a public SEC filer rather than a private company"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (B): Under AU-C 450, qualitative factors may cause a quantitatively immaterial misstatement to be material. A misstatement that changes a loss into income, or vice versa, affects the earnings trend and could reasonably influence user decisions — the direction-of-earnings reversal is a classic qualitative indicator identified by audit standards.
Wrong (A): Quantitative immateriality alone does not settle the evaluation when qualitative factors are present, whereas a purely size-based approach would miss the trend-reversal effect.
Wrong (C): Clearly trivial is a low threshold unrelated to the 10%-of-materiality rule; the qualitative significance overrides the dollar size rather than being overridden by it.
Wrong (D): The qualitative evaluation applies under both GAAS (AU-C 450) and PCAOB standards, rather than being limited to SEC-registrant filings.$EXPL$
WHERE id = 15827;

-- ============================================================
-- DELETES — 3 off-topic (group audit + sampling evaluation)
-- ============================================================
DELETE FROM questions WHERE id IN (4521, 13042, 15833);

COMMIT;
