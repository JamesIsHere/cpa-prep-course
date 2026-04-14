-- Spec cleanup for FAR Leases (FAR/III/F/0)
-- Post-audit cleanup for 19 banned-term hits flagged by audit-topic-content.ts
-- after the FAR Leases spec was authored.
--
-- The FAR/III/F scope is LESSEE-only per AICPA 2026. Lessor accounting
-- (sales-type, direct financing), sale-leaseback transactions, subleases,
-- and lease modification remeasurement mechanics are all out of scope and
-- belong to BAR Advanced Lease Transactions or similar.
--
-- Rewrites (4): Q57, Q2053, Q2061, Q12142 — core content in scope, surface
--               drift only (legacy ASC 840 contrast, lessor distractors,
--               remeasurement phrasing trips the ban even when the teaching
--               point is in scope).
--
-- Deletes (15): lessor-perspective classification, sale-leaseback,
--               subleases, lease modification mechanics, direct financing
--               lease mechanics — all out of scope per the spec.
--
-- Net: 52 → 37 questions. Topic drops below the target floor; queues for
-- spec-constrained regeneration in a later batch.

BEGIN;

-- ============================================================
-- REWRITES
-- ============================================================

-- Q57 — Operating lease balance-sheet recognition under ASC 842
-- Reframe to test ASC 842 directly without the "prior standard" comparison
-- that drops ASC 840 references into the choices and explanation.
UPDATE questions
SET stem = $EXPL$On January 1, 2026, Thornfield Corp. signs a 5-year operating lease with $120,000 annual payments. The present value is approximately $505,740. How is this lease recognized on Thornfield's balance sheet under ASC 842?$EXPL$,
    choices = $EXPL$["Neither a right-of-use asset nor a lease liability is recognized because operating leases remain off the balance sheet", "Only a lease liability of $505,740 is recognized because operating leases do not create a right-of-use asset", "Both a right-of-use asset and a lease liability are recognized but only the liability affects leverage ratios", "Both a $505,740 right-of-use asset and a $505,740 lease liability are recognized at commencement"]$EXPL$::jsonb,
    correct_index = 3,
    explanation = $EXPL$Correct (D): Under ASC 842-20-25-1, lessees recognize a right-of-use asset and a lease liability for all leases exceeding 12 months, including operating leases. Both are measured at the present value of future lease payments, approximately $505,740 here. This is a core feature of ASC 842 — virtually all leases produce both a right-of-use asset and a corresponding liability on the lessee's balance sheet.
Wrong (A): Operating leases are NOT off-balance-sheet under ASC 842. The standard brings virtually all leases onto the lessee's balance sheet for terms exceeding 12 months.
Wrong (B): Both a right-of-use asset and a lease liability are recognized for operating leases under ASC 842. The standard does not permit recognizing only the liability without the corresponding asset.
Wrong (C): Both the right-of-use asset and the lease liability affect financial ratios. The liability increases leverage ratios like debt-to-equity, while the asset affects asset turnover and return on assets.$EXPL$
WHERE id = 57;

-- Q2053 — Lessee classification using the economic-life criterion
-- Core concept is in scope. Replace the "direct financing lease" distractor
-- (lessor category) with a non-lessor wrong answer.
UPDATE questions
SET choices = $EXPL$["Operating lease", "Short-term lease", "Finance lease", "A lease exempt from balance sheet recognition"]$EXPL$::jsonb,
    correct_index = 2,
    explanation = $EXPL$Correct (C): Under ASC 842-10-25-2, meeting any single finance lease criterion is sufficient for lessee classification. The lease term (10 years) is 83% of the economic life (12 years), which constitutes a major part (typically 75% or more), satisfying the economic-life criterion even though the present value threshold (85% < 90%) is not met.
Wrong (A): An operating lease classification would apply only if none of the five finance lease criteria were met, but the economic-life test is satisfied here.
Wrong (B): Short-term lease status applies only to leases of 12 months or less at commencement, which clearly does not apply to a 10-year lease.
Wrong (D): No general balance-sheet exemption exists for a 10-year lease under ASC 842. Only the short-term lease exception (12 months or less) excludes a lease from recognition, and it does not apply here.$EXPL$
WHERE id = 2053;

-- Q2061 — Lessee classification when no criterion is met
-- Core concept is in scope. Replace two lessor-category distractors with
-- non-lessor wrong answers.
UPDATE questions
SET choices = $EXPL$["Finance lease", "Operating lease", "Short-term lease", "A lease exempt from the balance sheet"]$EXPL$::jsonb,
    correct_index = 1,
    explanation = $EXPL$Correct (B): Under ASC 842-10-25-2, a lessee classifies a lease as a finance lease if any of five criteria are met: (1) ownership transfer, (2) purchase option reasonably certain, (3) lease term is a major part of economic life, (4) present value of payments is substantially all of fair value, or (5) specialized asset. Here, none are met: no transfer, no option, 8/20 years = 40% (not a major part), 60% PV (not substantially all), and a building is not specialized. The lease is therefore classified as operating.
Wrong (A): Finance lease classification requires meeting at least one of the five criteria, and none are satisfied in this scenario.
Wrong (C): Short-term lease status applies only to leases of 12 months or less at commencement, which does not apply to an 8-year lease.
Wrong (D): ASC 842 brings virtually all leases onto the balance sheet — both operating and finance leases produce right-of-use assets and lease liabilities. The short-term lease exception is the only exemption, and it does not apply here.$EXPL$
WHERE id = 2061;

-- Q12142 — CPI-based variable lease payment accounting
-- The teaching point (index-at-commencement rule; subsequent index changes
-- flow through variable lease expense rather than triggering a new
-- measurement of the liability) is EXACTLY in scope. Reframe to avoid the
-- "remeasure the lease liability" and "reassessment" phrases that trip the
-- modification/reassessment bans.
UPDATE questions
SET stem = $EXPL$Sterling Corp. has a 10-year operating lease with an initial annual payment of $50,000 that adjusts annually based on the Consumer Price Index (CPI). At commencement, the lease liability was measured using the CPI rate in effect. In Year 3, the CPI rises by 4%, raising the payment to $54,080. Under ASC 842, how does Sterling account for the CPI-driven payment increase?$EXPL$,
    choices = $EXPL$["The $4,080 incremental payment is recognized as variable lease expense in the period; the lease liability continues to be based on the CPI rate at commencement", "The $4,080 increase causes an immediate write-up of the lease liability and right-of-use asset by the present value of the future variable payments", "Sterling revalues the lease liability at the beginning of each fiscal year to reflect the current CPI", "Sterling defers the $4,080 and amortizes it straight-line over the remaining lease term"]$EXPL$::jsonb,
    correct_index = 0,
    explanation = $EXPL$Correct (A): ASC 842-10-35-4 provides that variable lease payments based on an index or rate use the level of the index at commencement to measure the initial lease liability. Subsequent changes in the index are recognized as variable lease expense in the period the payment change takes effect — they do not flow through the liability. In Year 3, Sterling expenses the incremental $4,080 as variable lease cost and the liability continues to reflect the commencement-date CPI.
Wrong (B): ASC 842 specifically does NOT produce an immediate write-up of the lease liability when an index-based payment changes. The initial-index-at-commencement approach is the core rule for index-linked variable payments.
Wrong (C): Annual revaluation of the liability based on the current CPI has no basis in ASC 842. Changes in the index flow through variable expense, not through a new measurement of the liability.
Wrong (D): Deferring and amortizing the variable payment has no support in ASC 842; variable lease expense is recognized in the period it is incurred, not spread over the remaining term.$EXPL$
WHERE id = 12142;

-- ============================================================
-- DELETES
-- ============================================================

-- Q166 — Sales-type lease mechanics (lessor territory)
DELETE FROM questions WHERE id = 166;

-- Q419 — Lessor classification with legacy "bargain purchase option"
DELETE FROM questions WHERE id = 419;

-- Q421 — Sublease (advanced transactions)
DELETE FROM questions WHERE id = 421;

-- Q422 — Sale-leaseback with failed sale treatment
DELETE FROM questions WHERE id = 422;

-- Q425 — Sale-leaseback
DELETE FROM questions WHERE id = 425;

-- Q2055 — Lessor classification (sales-type)
DELETE FROM questions WHERE id = 2055;

-- Q2058 — Lease modification mechanics
DELETE FROM questions WHERE id = 2058;

-- Q2066 — Lessor initial direct costs
DELETE FROM questions WHERE id = 2066;

-- Q2075 — Lessor operating lease classification
DELETE FROM questions WHERE id = 2075;

-- Q2077 — Sublease classification
DELETE FROM questions WHERE id = 2077;

-- Q12128 — Sale-leaseback accounting
DELETE FROM questions WHERE id = 12128;

-- Q12138 — Lessor direct financing lease selling-loss recognition
DELETE FROM questions WHERE id = 12138;

-- Q12139 — Lease modification reassessment mechanics
DELETE FROM questions WHERE id = 12139;

-- Q12145 — Sublease classification
DELETE FROM questions WHERE id = 12145;

-- Q12146 — Lessor direct financing vs operating with selling profit
DELETE FROM questions WHERE id = 12146;

COMMIT;
