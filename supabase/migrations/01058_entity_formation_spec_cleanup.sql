-- Spec cleanup for TCP Entity Formation and Liquidation (TCP/II/A/2)
-- Post-audit cleanup after authoring tcp-entity-formation-and-
-- liquidation (28th registered spec, eleventh of Stage 3).
--
-- Census v2 rank #7 flagged 14/105 questions at 13%. Full audit
-- after authoring surfaced 20 flags (19%). All 20 are partnership-
-- depth content mis-tagged into a C corp formation/liquidation
-- topic during generation, plus one C corp question with a §531
-- accumulated earnings tax distractor reference.
--
-- Triage:
--
-- REWRITE (1) — legitimate C corp liquidation question
--   Q1027 — deceased-shareholder §1014 stepped-up basis timing
--           analysis. Distractor B referenced §531 AET; rewrite
--           replaces with a concept-level distinguishing distractor
--           without the specific section citation.
--
-- DELETE (19) — pure partnership content that belongs to
-- Partnerships (REG) and Advanced Basis Calculations (TCP)
--   Q4220  — partnership inventory contribution (§721)
--   Q4227  — partnership cash liquidation (§731)
--   Q4229  — §736(a) unrealized receivables and goodwill
--   Q4234  — partnership service contribution
--   Q4238  — §731 nonliquidating distribution
--   Q4239  — §731 complete liquidation loss
--   Q4243  — §736(b) retirement for tangible property
--   Q4244  — partner basis with liability under §752
--   Q13262 — §721(b) investment company exception
--   Q13268 — §736 goodwill payments classification
--   Q13271 — partnership liquidation loss recognition
--   Q13278 — entity choice comparison (C corp vs partnership with
--            liability) — content belongs to Entity Choice and
--            Planning rather than a formation-mechanics topic
--   Q14518 — §704(c) pre-contribution built-in gain allocation
--   Q14520 — §737 mixing-bowl distribution of marketable securities
--   Q14521 — §735 inventory distribution character rule
--   Q14524 — §752 recourse liability on partner basis
--   Q14532 — §721 nonrecognition (no 80% control rule for partnerships)
--   Q14534 — §752 nonrecourse liability on partner basis
--   Q15994 — §721(b) investment company (diversification)
--
-- Net: 105 → 86. Entity Formation and Liquidation is now focused on
-- C corporation §351 / §331-§337 / §311(b) / §381 mechanics. Regen
-- queue for partnership content is already covered by Partnerships
-- (REG) and Advanced Basis Calculations (TCP) specs.

BEGIN;

-- ============================================================
-- Q1027 — REWRITE: drop §531 AET reference in distractor B
-- ============================================================
UPDATE questions
SET choices = $EXPL$["Delay liquidation until after Prescott''s death so his estate receives a stepped-up stock basis, eliminating his $800,000 built-in gain","Liquidate immediately because delaying creates corporate-level gain recognition exposure that exceeds the basis step-up benefit","Liquidate now because Section 1014 does not apply to corporate stock and the stepped-up basis benefit for Prescott''s estate is illusory","Timing is irrelevant because all shareholders pay the same total tax whether the corporation liquidates before or after Prescott''s death"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (A): Evaluating the timing requires comparing total tax under each scenario. If the corporation liquidates now, all three shareholders recognize gain under IRC §331: Prescott recognizes $800,000 ($1,000,000 FMV share minus $200,000 basis), whereas the other two each recognize $500,000 ($1,000,000 minus $500,000). If liquidation is delayed until after Prescott's death, his estate receives a stepped-up basis of $1,000,000 under §1014, eliminating Prescott's $800,000 gain entirely. The other two shareholders' gains remain $500,000 each regardless of timing. The corporation-level gain on distributing appreciated assets under §336 ($1,200,000) occurs in either scenario and is unaffected by timing, so the net benefit of delay is the tax saved on Prescott's $800,000 gain.
Wrong (B): The corporate-level gain on distribution under §336 occurs in either scenario rather than being triggered by delay, so delay does not create new entity-level exposure.
Wrong (C): §1014 applies to the stock itself — the estate receives a stepped-up basis in the corporate stock, which reduces gain on the §331 liquidating distribution, rather than being inapplicable to corporate stock.
Wrong (D): The timing change eliminates Prescott's shareholder-level gain through the §1014 step-up, whereas the "same total tax" answer ignores the basis step-up entirely.$EXPL$
WHERE id = 1027;

-- ============================================================
-- DELETES — 19 pure partnership content mis-tags
-- ============================================================
DELETE FROM questions WHERE id IN (
  4220, 4227, 4229, 4234, 4238, 4239, 4243, 4244,
  13262, 13268, 13271, 13278,
  14518, 14520, 14521, 14524, 14532, 14534,
  15994
);

COMMIT;
