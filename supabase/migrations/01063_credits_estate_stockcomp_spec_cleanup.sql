-- Spec cleanup for REG Individual Taxation: Credits, Estate and Gift
-- Tax, and BAR Stock Compensation and Business Combinations. Post-
-- audit cleanup after authoring specs #41-43 (twenty-fourth through
-- twenty-sixth of Stage 3).
--
-- Results:
--   - Estate and Gift Tax: 0/78 flagged — PURE rightful-owner, all 5
--     census §7872 flags whitelisted on authoring alone. No cleanup.
--   - Individual Taxation: Credits: 14 flagged — mostly AMT and FTC
--     mechanics-depth content mis-tagged into Credits during
--     generation. The separate Individual Taxation AMT topic is the
--     rightful home for AMT content.
--   - Stock Compensation and Business Combinations: 4 flagged — all
--     on step acquisition and pushdown accounting (FAR Consolidations
--     territory).
--
-- REWRITES (1):
--   Q554 — FTC purpose question. Rewrite explanation to remove
--          `Section 901` citation while keeping the concept.
--
-- DELETES (17):
--   Q555, Q559 — AMT exemption and adjustment items (AMT topic)
--   Q562, Q563 — FTC baskets and ISO AMT (depth)
--   Q10920, Q10925, Q10932, Q10933, Q10949 — AMT/FTC depth
--   Q11345, Q11350, Q11354, Q11357 — AMT/FTC depth
--   Q3151, Q3152, Q3366, Q3421 — BAR: step acquisition and pushdown
--                                accounting (FAR Consolidations)
--
-- Net: REG Credits 67 → 53, BAR Stock Comp 52 → 48.

BEGIN;

-- ============================================================
-- Q554 — REWRITE: drop §901 citation from explanation
-- ============================================================
UPDATE questions
SET explanation = $EXPL$Correct (B): Under the IRC foreign tax credit provisions, a U.S. taxpayer may claim a dollar-for-dollar credit against their U.S. income tax liability for income taxes paid or accrued to foreign countries or U.S. possessions. The purpose is to mitigate double taxation of income that is taxed by both the U.S. and a foreign jurisdiction, whereas the alternative of deducting foreign taxes would provide less benefit at typical marginal rates.
Wrong (A): Foreign-source income is still included in U.S. taxable income; the credit only offsets the tax, rather than excluding the income itself.
Wrong (C): The foreign tax credit is a credit against tax rather than a deduction from income, although taxpayers may elect to deduct foreign taxes as an itemized deduction in lieu of claiming the credit.
Wrong (D): The credit is for U.S. taxpayers paying foreign taxes, rather than for foreign nationals working in the U.S. offsetting their home-country obligations.$EXPL$
WHERE id = 554;

-- ============================================================
-- DELETES — 13 AMT/FTC-depth content from REG Credits
-- ============================================================
DELETE FROM questions WHERE id IN (
  555, 559, 562, 563,
  10920, 10925, 10932, 10933, 10949,
  11345, 11350, 11354, 11357
);

-- ============================================================
-- DELETES — 4 FAR Consolidations content from BAR Stock Comp
-- ============================================================
DELETE FROM questions WHERE id IN (3151, 3152, 3366, 3421);

COMMIT;
