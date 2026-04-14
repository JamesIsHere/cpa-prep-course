-- Delete 5 off-blueprint questions from BAR "Risk Management and Economics"
-- surfaced by the audit against the newly-authored
-- bar-risk-management-and-economics topic spec (commit 0393889).
--
-- The Slayer topic combines two AICPA topics:
--   BAR/I/B/4  "Risk management"              (7 representative tasks)
--   BAR/I/B/5  "Economic and market influences" (6 representative tasks)
--
-- None of these 13 tasks call for formal macroeconomic modeling
-- (Phillips curve, IS-LM framework, Taylor rule) or quantitative risk
-- models at a formal depth (VaR parametric derivation, expected
-- shortfall). Those are graduate economics and CFA/FRM curricula.
--
-- All 5 flagged questions test graduate content:
--
--   Q3088  (medium L2)  Parametric VaR + Conditional VaR (CVaR) mechanics
--   Q3097  (medium L1)  Phillips curve inflation-unemployment tradeoff
--   Q14044 (medium L3)  IS-LM framework equilibrium shift
--   Q14759 (hard L4)    Taylor rule central-bank policy rule derivation
--   Q14775 (easy L1)    Phillips curve concept recall
--
-- Audit drift rate: 5/130 = 3.8% — the cleanest of the four topics
-- audited so far under the pilot (vs 87% International Tax, 37% S
-- Corporations, 5.7% Capital Structure, now 3.8% Risk Management).
-- Post-delete, the topic drops from 130 to 125 questions.
--
-- Full audit report: docs/topic-audits/bar-risk-management-audit.md
-- Spec:              src/lib/topic-specs/bar-risk-management-and-economics.ts

BEGIN;

DELETE FROM questions WHERE id IN (
  3088,   -- VaR + CVaR quantitative risk model
  3097,   -- Phillips curve (macro)
  14044,  -- IS-LM framework (macro)
  14759,  -- Taylor rule (monetary policy)
  14775   -- Phillips curve (macro, second recall question)
);

COMMIT;
