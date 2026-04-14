-- Delete 7 off-blueprint questions from BAR "Capital Structure and Valuation"
-- surfaced by the audit against the newly-authored
-- bar-capital-structure-and-valuation topic spec (commit d762505).
--
-- The AICPA 2026 BAR Blueprint BAR/I/B/2 "Capital structure" has 4
-- representative tasks, all Application/Analysis level:
--   - Calculate the cost of capital for a given financial scenario.
--   - Determine the impact of changes in an entity's capital structure on
--     cost of capital, loan covenants, liquidity and leverage.
--   - Compare the strategies for financing new business initiatives and
--     operations within the context of an optimal capital structure.
--   - Interpret the impact of various capital structures on financial
--     statements and key performance measures.
--
-- None of these call for MM Proposition proofs, APV framework derivations,
-- pecking order theory at the academic-model level, or Jensen-Meckling
-- agency cost formalism — those are graduate corporate finance.
--
-- All 7 flagged questions test graduate-theory content:
--
--   Q5224 (hard L3)  APV framework vs. WACC as separate valuation approach
--   Q5613 (easy L1)  MM Proposition I under perfect-market assumptions
--   Q5643 (hard L4)  MM Proposition II and the cost-of-equity leverage formula
--   Q5662 (easy L1)  pecking order theory as a financing hierarchy model
--   Q5664 (hard L4)  agency cost of debt via Jensen-Meckling framework
--   Q5727 (hard L4)  APV tax-shield valuation mechanics
--   Q5736 (hard L4)  APV vs. FTE method comparison
--
-- The audit flagged 7/122 (5.7%), a dramatically lower drift rate than the
-- International Tax (87%) and S Corporations (37%) cleanups. The BAR topic
-- is fundamentally healthier — the bank is mostly testing CAPM, WACC,
-- leverage ratios, and financing decisions at the correct depth. The 7
-- deletes are surgical removals of questions that ventured into academic
-- corporate finance. Post-delete, the topic drops from 122 to 115 questions.
--
-- Full audit report: docs/topic-audits/bar-capital-structure-audit.md
-- Spec:              src/lib/topic-specs/bar-capital-structure-and-valuation.ts

BEGIN;

DELETE FROM questions WHERE id IN (
  5224,  -- APV framework
  5613,  -- MM Prop I
  5643,  -- MM Prop II cost-of-equity formula
  5662,  -- pecking order theory
  5664,  -- agency cost of debt / Jensen-Meckling
  5727,  -- APV tax-shield valuation
  5736   -- APV vs FTE comparison
);

COMMIT;
