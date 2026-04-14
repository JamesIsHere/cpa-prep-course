-- Spec cleanup for REG Individual Taxation: Deductions (REG/IV/C)
-- Post-audit cleanup after authoring reg-individual-taxation-deductions
-- (24th registered spec, seventh of Stage 3).
--
-- Census v2 flagged 8/64 questions at 13% on `qualified business
-- income` / `Section 199A`. Spec authoring whitelisted ALL 8 (pure
-- rightful-owner — this spec is the designated home for §199A
-- computation depth per AICPA REG/IV/C task 3). Audit surfaced a
-- single unrelated hit:
--
--   Q2656 — REWRITE: student loan interest deduction question with
--           `American Opportunity Credit` mentioned in a wrong
--           distractor. Rewrite removes the AOTC cross-reference
--           (AOTC is the Individual Taxation Credits topic) without
--           changing the correct answer or pedagogical value.
--
-- Net: 64 → 64 (no deletes, one rewrite).

BEGIN;

-- ============================================================
-- Q2656 — REWRITE: student loan interest deduction
-- Drop AOTC reference from distractor C; keep the distinguishing
-- idea that student loan interest is above-the-line rather than
-- itemized. Fix the run-on stem punctuation while we're here.
-- ============================================================
UPDATE questions
SET stem = $EXPL$In 2026, Kevin paid $3,200 in interest on qualified student loans from his undergraduate education. He files as single with an AGI of $70,000. What is the student loan interest deduction?$EXPL$,
    choices = $EXPL$["A deduction for all interest paid on any education-related loan, with no dollar limit","An above-the-line deduction for interest paid on qualified education loans, subject to an annual dollar limit and income phase-out","An itemized deduction available only to taxpayers who itemize rather than taking the standard deduction","A deduction available only for interest paid on federal student loans, rather than on private loans"]$EXPL$::jsonb,
    explanation = $EXPL$Correct (B): Under IRC §221, taxpayers may deduct interest paid on qualified education loans as an above-the-line adjustment to gross income, up to an annual maximum of $2,500, subject to income-based phase-outs on modified AGI. A qualified education loan is one incurred solely to pay qualified higher education expenses.
Wrong (A): There is an annual dollar cap ($2,500), rather than unlimited deduction for any education loan interest.
Wrong (C): The student loan interest deduction is an above-the-line adjustment claimed regardless of whether the taxpayer itemizes or takes the standard deduction, unlike an itemized deduction that would be available only to itemizers.
Wrong (D): The §221 deduction applies to interest on any qualified education loan (including private loans that meet the definition), rather than being limited to federal student loans.$EXPL$
WHERE id = 2656;

COMMIT;
