-- Spec cleanup for TCP Entity Choice and Planning (TCP/III/A)
-- Post-audit cleanup after authoring tcp-entity-choice-and-planning
-- (23rd registered spec, sixth of Stage 3).
--
-- Census v2 flagged 15/56 questions at 27%. Spec authoring whitelisted
-- the QBI-at-comparison-level subset via `qualified business income`
-- (concept-level use is in scope) but the full audit shows 13 flags
-- because the spec strictly bans §199A computation depth (UBIA, W-2
-- wage formula) and §704(b) substantial economic effect.
--
-- Triage (13 flags → 5 rewrites + 8 deletes):
--
-- REWRITES (5) — legitimate entity-comparison questions that cite
-- banned terms only as cross-references. Strip the §704(b)/§199A
-- citations, keep the concept at entity-choice level.
--   Q1045   — LLC vs S corp loss allocation flexibility
--   Q4284   — Partnership vs S corp structural advantages
--   Q4296   — 3 investors choose entity for flexible allocations
--   Q4306   — Partnership special allocation requirement (rewritten
--             as entity-type comparison without §704(b) mechanics)
--   Q15797  — SSTB complete phase-out at upper threshold (distractor
--             UBIA reference removed)
--
-- DELETES (8) — pure S corp internal mechanics or §199A computation
-- that drifted into the Entity Choice tag during generation. The
-- canonical home for these is S Corporations (REG) and Individual
-- Taxation: Deductions. Deleting is cleaner than re-tagging because
-- the content is duplicated in the rightful-owner topics.
--   Q4287   — §1368(b) distribution with no E&P (S corp mechanics)
--   Q4294   — §1374 5-year recognition period (S corp mechanics)
--   Q4299   — §1368(c) layered AAA→E&P→basis ordering (S corp mech)
--   Q4305   — §1374 BIG tax $31,500 computation (S corp mechanics)
--   Q15790  — §1363(d) LIFO recapture on S conversion (S corp mech)
--   Q15791  — §199A(b)(2) W-2 wage/UBIA formula computation (§199A)
--   Q15793  — §1375 passive investment income penalty (S corp mech)
--   Q15795  — §1371(e) PTTP distribution ordering (S corp mechanics)
--
-- Net: 56 → 48 (adds to Stage 4 regen queue — generation target ~80).

BEGIN;

-- ============================================================
-- Q1045 — REWRITE: LLC vs S corp loss allocation comparison
-- Strip §704(b) / substantial economic effect / §1366 citations;
-- keep the comparison concept.
-- ============================================================
UPDATE questions
SET explanation = $EXPL$Correct (B): S corporations must allocate income and losses on a strict per-share, per-day basis under subchapter S — each equal owner receives $100,000. LLCs taxed as partnerships, by contrast, may use special allocations that differ from ownership percentages if the allocations reflect the partners' economic arrangement under the IRC partnership allocation rules, whereas S corps have no such flexibility.
Wrong (A): Equal allocation is required for S corporations but not for LLCs taxed as partnerships, which allow flexible allocations rather than mandatory pro-rata splits.
Wrong (C): This reverses the rules — S corporations must allocate pro rata, whereas LLCs taxed as partnerships permit special allocations under the IRC partnership regime.
Wrong (D): Both entities allocate losses to owners; the difference is in the flexibility of those allocations rather than their availability.$EXPL$
WHERE id = 1045;

-- ============================================================
-- Q4284 — REWRITE: Partnership vs S corp structural advantages
-- ============================================================
UPDATE questions
SET explanation = $EXPL$Correct (D): Under the IRC partnership regime, partnerships may make special allocations of income, gain, loss, deduction, and credit among partners that differ from ownership percentages, provided the allocations reflect the partners' economic arrangement. S corporations, by contrast, must allocate pro rata based on stock ownership — they cannot make special allocations and are limited to one class of stock.
Wrong (A): General partnerships do not provide limited liability for all partners; only limited partnerships and LLCs offer that protection, whereas S corporations also provide limited liability through the corporate form.
Wrong (B): Partnerships allow flexible economic rights through the partnership agreement, whereas S corporations are limited to one class of stock — but this answer overstates the advantage since both can have some variation in economic rights.
Wrong (C): Partnerships often result in HIGHER self-employment taxes for general partners rather than lower, because general partners pay SE tax on distributive share of ordinary income, whereas S corp shareholder-employees pay FICA only on wages and can limit exposure through reasonable compensation planning.$EXPL$
WHERE id = 4284;

-- ============================================================
-- Q4296 — REWRITE: Three investors choosing for flexible allocation
-- ============================================================
UPDATE questions
SET explanation = $EXPL$Correct (C): Under the IRC partnership regime, partnerships and LLCs taxed as partnerships allow special allocations of income, deductions, and credits that differ from ownership percentages, provided the allocations reflect the partners' economic arrangement. This flexibility is a distinguishing feature of the partnership form, whereas corporations are locked into pro-rata allocations.
Wrong (A): C corporations must allocate income based on stock ownership and cannot make disproportionate allocations to shareholders, unlike partnerships.
Wrong (B): S corporations are limited to a single class of stock under the IRC, requiring pro-rata allocations based on share ownership rather than allowing flexible special allocations.
Wrong (D): A sole proprietorship has only one owner and cannot accommodate three investors, whereas a partnership easily does so.$EXPL$
WHERE id = 4296;

-- ============================================================
-- Q4306 — REWRITE: Partnership special allocation validity
-- Rewrite stem + explanation to remove §704(b)/substantial economic
-- effect at mechanics depth; keep the entity-comparison concept that
-- partnerships allow flexible allocations that must reflect the
-- partners' economic arrangement.
-- ============================================================
UPDATE questions
SET stem = $EXPL$A partnership has three partners: A (40%), B (40%), and C (20%). The partnership agreement allocates 60% of depreciation deductions to Partner A, a ratio that differs from the ownership percentages. For this special allocation to be respected for tax purposes under the IRC partnership regime, it must:$EXPL$,
    choices = $EXPL$["Reflect the partners' underlying economic arrangement and affect their capital accounts","Be approved by the IRS in advance","Be proportionate to capital contributions","Reduce A's distributive share of income by the same amount"]$EXPL$::jsonb,
    correct_index = 0,
    explanation = $EXPL$Correct (A): Under the IRC partnership allocation rules, special allocations that differ from ownership percentages are respected only when they reflect the partners' underlying economic arrangement — which the regulations implement primarily through capital-account maintenance and liquidation provisions. Partnerships get this flexibility; corporations do not, which is a key entity-choice variable.
Wrong (B): The IRS does not require advance approval of special allocations. Compliance is determined at audit based on whether the allocation reflects the partners' economic arrangement, rather than on pre-clearance.
Wrong (C): Allocations need not be proportionate to capital contributions. The partnership regime permits any allocation ratio as long as it reflects the partners' economic arrangement, unlike the corporate pro-rata rule.
Wrong (D): There is no mechanical requirement that depreciation allocations be offset by an equal income reduction. Whether the allocation reflects the partners' economic arrangement governs, rather than a paired-income rule.$EXPL$
WHERE id = 4306;

-- ============================================================
-- Q15797 — REWRITE: SSTB phase-out (remove UBIA in distractor D)
-- ============================================================
UPDATE questions
SET choices = $EXPL$["$100,000 — the full 20% of QBI applies","$0 — the deduction is completely phased out for SSTBs above the upper threshold","$50,000 — the deduction is reduced by 50% for being an SSTB","$80,000 — limited to a W-2 wage and qualified property calculation"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (B): Under IRC §199A, specified service trades or businesses (including medical practices) are completely excluded from the QBI deduction once the taxpayer's taxable income exceeds the upper phase-in threshold ($247,300 for single filers in 2025). Dr. Patel's $300,000 exceeds this threshold, whereas a non-SSTB owner at the same income level could still claim a limited deduction under the W-2-wage-and-property tests.
Wrong (A): The full 20% deduction is available only below the lower threshold for SSTBs, rather than at all income levels.
Wrong (C): There is no flat 50% reduction; the SSTB phase-out occurs ratably between the lower and upper thresholds, and above the upper threshold the deduction is eliminated entirely.
Wrong (D): The W-2-wage-and-property limitation is irrelevant for SSTBs above the upper threshold, whereas it would govern a non-SSTB taxpayer in the same income range — SSTBs simply receive no deduction at all.$EXPL$
WHERE id = 15797;

-- ============================================================
-- DELETES — 8 off-topic S corp mechanics / §199A computation
-- ============================================================
DELETE FROM questions WHERE id IN (4287, 4294, 4299, 4305, 15790, 15791, 15793, 15795);

COMMIT;
