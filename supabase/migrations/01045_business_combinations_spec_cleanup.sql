-- Spec cleanup for BAR Business Combinations (BAR/II/F/0)
-- Post-audit cleanup for 6 banned-term hits flagged after the spec was
-- authored.
--
-- Rewrites: 1 (Q14405) — concept-level goodwill impairment reference that
--           trips the "reporting unit" ban. The core point (goodwill is
--           not amortized but tested for impairment annually) is in scope.
-- Deletes:  5 (Q4831, Q4832, Q4835, Q4841, Q4843) — step acquisition
--           mechanics, IPR&D subsequent accounting, reverse acquisitions,
--           push-down accounting. All explicitly out of scope per the spec.

BEGIN;

-- Q14405 — Goodwill subsequent accounting (concept-level, in scope)
-- Drop "at the reporting unit level" phrase from explanation; preserve the
-- core point that goodwill is tested for impairment annually.
UPDATE questions
SET explanation = $EXPL$Correct (D): ASC 350-20-35-1. For public business entities, goodwill is not amortized. Instead, it is tested for impairment at least annually and whenever events indicate impairment may exist. Wrong (A): The 10-year straight-line method is not required under current U.S. GAAP for goodwill. Wrong (B): The 40-year amortization limit applied under the superseded APB Opinion No. 17, not current standards. Wrong (C): Goodwill is retained on the balance sheet indefinitely unless impaired; it is not written off immediately.$EXPL$
WHERE id = 14405;

-- Deletes
DELETE FROM questions WHERE id = 4831;  -- step acquisition remeasurement gain
DELETE FROM questions WHERE id = 4832;  -- IPR&D subsequent accounting
DELETE FROM questions WHERE id = 4835;  -- reverse acquisition
DELETE FROM questions WHERE id = 4841;  -- push-down accounting
DELETE FROM questions WHERE id = 4843;  -- reverse acquisition consolidated FS

COMMIT;
