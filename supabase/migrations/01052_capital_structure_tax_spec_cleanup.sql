-- Spec cleanup for TCP Capital Structure Tax Planning (TCP/III/B)
-- Post-audit cleanup after authoring tcp-capital-structure-tax-planning
-- (22nd registered spec, fifth of Stage 3).
--
-- Census v2 flagged 26/52 questions at 50.0% — all on `Section 163(j)`.
-- All 26 whitelisted on authoring alone (clean rightful-owner — §163(j)
-- IS the core of this topic). The cleanup tail is 5 flags from a
-- different drift surface than the census predicted:
--
--   Q1235  — REWRITE: drop §163(d) investment interest cross-citation
--            (distinguishing distractor), keep concept at IRC-level.
--   Q4326  — DELETE : pure OID mechanics under §1272(a) constant-yield
--            method; off-topic (bond tax accounting, not capital
--            structure tax planning).
--   Q4334  — REWRITE: drop §7872 explicit citation, keep below-market
--            shareholder loan imputed-interest concept (in scope).
--   Q4335  — DELETE : detachable warrant OID allocation under
--            §1273(c)(2); pure OID mechanics, off-topic.
--   Q14677 — REWRITE: drop §7872 distractor reference that distinguishes
--            §385 from below-market loan rules.
--
-- Net: 52 → 50 questions (2 deletes, 3 rewrites).
-- Spec also loosened: the `Section 382 limitation` phrase pattern was
-- over-strict because the phrase is the concept-level name, not a depth
-- indicator. Replaced with depth-only indicators (long-term tax-exempt
-- rate, 5-percent shareholder, testing period, built-in gain), which
-- cleared Q14679 (a legitimate §163(j) × §382 carryforward interaction
-- question at concept level).

BEGIN;

-- ============================================================
-- Q1235 — Partner-level §163(j) carryforward
-- Drop the §163(d) investment interest citation from distractor B
-- and from the Wrong (B) explanation. Keep the §163(j) vs investment
-- interest distinction at concept level.
-- ============================================================
UPDATE questions
SET choices = $EXPL$["The partnership carries forward the full $200,000 at the entity level","Partner A can deduct the $80,000 as investment interest expense at the partner level","The disallowed interest is permanently lost","Partner A carries forward $80,000 at the partner level, subject to 163(j) in future years"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (D): Under IRC §163(j)(4), disallowed business interest from a partnership is allocated to each partner based on their distributive share and carried forward at the partner level. Partner A carries forward 40% of $200,000, or $80,000, subject to the §163(j) limitation in future tax years.
Wrong (A): The partnership does not carry the disallowance forward at the entity level; partnerships allocate excess business interest expense to partners for individual carryforward, whereas C corporations and S corporations track the carryforward at the entity level.
Wrong (B): The disallowed business interest retains its character as business interest expense under §163(j), whereas investment interest expense is a separate category that cannot absorb §163(j) carryforwards.
Wrong (C): The disallowed interest carries forward indefinitely rather than being permanently lost, and is treated as business interest paid or accrued in the succeeding year subject to the limitation again.$EXPL$
WHERE id = 1235;

-- ============================================================
-- Q4334 — Below-market shareholder loan imputed interest
-- Drop explicit §7872 citations. Keep the below-market loan concept
-- and the imputed-interest consequence, which is in scope at concept
-- level for capital structure planning.
-- ============================================================
UPDATE questions
SET stem = $EXPL$A shareholder loans $300,000 to a closely held corporation at 0% interest. Under the IRC below-market loan rules, the IRS will impute interest at the applicable federal rate (AFR). What is the tax consequence?$EXPL$,
    explanation = $EXPL$Correct (B): Under the IRC below-market loan imputed-interest rules, a 0% interest shareholder loan is treated as if interest were charged at the AFR. The corporation is deemed to pay interest at the AFR (potentially deductible subject to §163(j)), whereas the shareholder is deemed to receive taxable interest income.
Wrong (A): A 0% interest loan between a shareholder and corporation is a below-market loan subject to mandatory imputed interest under the IRC rather than a no-consequence shareholder transaction.
Wrong (C): The loan is not automatically recharacterized as a capital contribution; the IRC below-market loan rules impute interest rather than reclassifying the principal as equity.
Wrong (D): Gift tax treatment applies to below-market loans between individual family members, whereas corporation-shareholder below-market loans are treated as compensation or constructive distributions paired with imputed interest.$EXPL$
WHERE id = 4334;

-- ============================================================
-- Q14677 — §385 $50M threshold exemption
-- Drop §7872 reference in Wrong (C). The main question and correct
-- answer are squarely in scope (§385 recharacterization threshold);
-- only the distinguishing distractor needed cleanup.
-- ============================================================
UPDATE questions
SET explanation = $EXPL$Correct (A): Reg. §1.385-3 provides a $50 million threshold exemption. Expanded group members with total related-party debt below $50 million are exempt from the automatic recharacterization rules, even when the debt is issued in connection with a distribution or affiliate stock acquisition.
Wrong (B): While debt issued as a distribution is normally subject to recharacterization under §385, the $50 million threshold exemption overrides this rule whenever total expanded-group related-party debt is below the threshold.
Wrong (C): The interest rate relative to AFR is relevant for the IRC below-market loan rules rather than for the §385 recharacterization threshold, which is based on total related-party debt.
Wrong (D): No specific 4:1 ratio trigger exists in the §385 recharacterization rules; the exemption is based on total related-party debt rather than on the debt-to-equity ratio.$EXPL$
WHERE id = 14677;

-- ============================================================
-- DELETES — off-topic OID mechanics
-- Q4326 — $50k OID amortization over bond life under §1272(a)
--          constant yield method. Pure bond tax accounting.
-- Q4335 — Detachable warrant allocation under §1273(c)(2) creating
--          OID on the bonds. Pure OID mechanics.
-- ============================================================
DELETE FROM questions WHERE id IN (4326, 4335);

COMMIT;
