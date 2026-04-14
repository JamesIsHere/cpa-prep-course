-- Spec cleanup for REG C Corporations (REG/V/B)
-- Post-audit cleanup for 13 banned-term hits flagged by audit-topic-content.ts
-- after the REG C Corporations spec was authored.
--
-- Breakdown:
--   Rewrites: 3 (Q232, Q10811, Q11087) — core content in-scope, surface drift
--                                         only. Rewrites preserve the concept
--                                         and drop the out-of-scope references.
--   Deletes:  10 (Q2801, Q10735, Q10816, Q10821, Q11073, Q11074, Q11076,
--                 Q11086, Q11094, Q11095) — graduate / adjacent-topic material
--                                            that does not belong in foundational
--                                            REG C Corporations per the AICPA
--                                            2026 Blueprint REG/V/B scope.
--
-- Net: 81 → 71 questions. The topic drops below the ~80 question floor and
-- should be queued for spec-constrained regeneration in a later batch.
--
-- Drift categories removed:
--   - PHC mechanics beyond the concept (AOGI, 60% income test depth)
--   - AET mechanics beyond the concept (accumulated earnings credit, Sec 535)
--   - CAMT mechanics beyond the concept (AFSI computation, Sec 55 detail)
--   - QSBS gain exclusion mechanics (Sec 1202 — TCP wealth planning)
--   - Sec 269 anti-abuse acquisitions to evade tax (graduate corporate tax)
--   - Sec 163(j) business interest limitation mechanics (separate topic)
--   - Step transaction doctrine / Sec 382 / Sec 482 cross-references

BEGIN;

-- ============================================================
-- REWRITES
-- ============================================================

-- Q232 — PHC classification requirements (concept-level rewrite)
-- Strip "adjusted ordinary gross income" from the explanation and reframe the
-- correct answer at concept level. The two-test structure (stock ownership +
-- income composition) is in scope per the spec's common misconceptions.
UPDATE questions
SET choices = $EXPL$["More than 50% of stock is owned by 5 or fewer individuals, AND a majority of income comes from passive sources such as dividends, interest, and rents", "The corporation must have fewer than 100 shareholders and file an annual information return with the IRS", "The corporation must be publicly traded on a national exchange and registered with the SEC", "The corporation must have no employees other than the shareholders and their immediate family members"]$EXPL$::jsonb,
    correct_index = 0,
    explanation = $EXPL$Correct (A): Personal holding company classification requires BOTH tests to be met: (1) the stock ownership test — more than 50% of the corporation's stock is owned, directly or indirectly, by 5 or fewer individuals during the last half of the tax year, and (2) the income test — a majority of the corporation's income consists of passive PHC income such as dividends, interest, rents, and royalties. Both tests must be satisfied for PHC classification and the penalty tax to apply.
Wrong (B): The 100-shareholder limit is an S corporation eligibility requirement under IRC Section 1361, not a PHC test.
Wrong (C): PHC status applies to closely held corporations. Publicly traded companies are explicitly excluded from PHC classification.
Wrong (D): PHCs may have non-shareholder employees; there is no such staffing restriction in the classification tests.$EXPL$
WHERE id = 232;

-- Q10811 — DRD qualification for foreign dividends (explanation-only fix)
-- The core point (DRD is available only for dividends from domestic
-- corporations) is in scope. Drop the Section 245A cross-reference from the
-- correct-answer explanation; keep the foreign-tax-credit concept reference.
UPDATE questions
SET explanation = $EXPL$Correct (D): Under IRC Section 243, the dividends received deduction applies only to dividends received from domestic corporations. Dividends from foreign corporations do not qualify for the DRD, though they may be eligible for a foreign tax credit under the general international tax regime.
Wrong (A): Dividends from domestic corporations with less than 20% ownership do qualify for the DRD at the 50% rate. They are not excluded.
Wrong (B): Dividends from domestic corporations with 20%-80% ownership qualify for the DRD at the 65% rate.
Wrong (C): Dividends from affiliated group members with 80% or greater ownership qualify for the 100% DRD under Section 243(a)(3).$EXPL$
WHERE id = 10811;

-- Q11087 — PHC stock ownership test threshold
-- Fix the broken stem (currently starts with a bare ", what"). The concept
-- being tested (50% stock ownership by 5 or fewer individuals is the PHC
-- stock ownership test) is in scope at the concept level. Drop the Sec 368(c)
-- cross-reference from distractor B's explanation; keep the Sec 351 80%
-- control test reference (which is in scope for C Corporations).
UPDATE questions
SET stem = $EXPL$For a C corporation to meet the personal holding company stock ownership test, what percentage of outstanding stock must be owned by five or fewer individuals?$EXPL$,
    explanation = $EXPL$Correct (A): A corporation meets the PHC stock ownership test if more than 50% of the value of its outstanding stock is owned, directly or indirectly, by five or fewer individuals at any time during the last half of the tax year. This closely-held-ownership requirement is one of the two tests for PHC classification; the other is the income composition test.
Wrong (B): The 80% threshold applies to the Section 351 control test for tax-free corporate formation, not the PHC ownership test.
Wrong (C): A 20% threshold is not the standard for PHC classification and would capture far too many corporations.
Wrong (D): 35% is not a recognized threshold for personal holding company stock ownership.$EXPL$
WHERE id = 11087;

-- ============================================================
-- DELETES
-- ============================================================
-- Each deletion targets a question that teaches out-of-scope material per the
-- REG C Corporations topic spec. See the spec's outOfScope list for the full
-- rationale. Deletes are done in dependency order — quiz_attempts references
-- are nulled / handled by ON DELETE CASCADE on the referencing tables.

-- Q2801 — PHC income classification with AOGI framing (mechanics)
DELETE FROM questions WHERE id = 2801;

-- Q10735 — Sec 163(j) business interest expense limitation (out of scope)
DELETE FROM questions WHERE id = 10735;

-- Q10816 — Sec 269 anti-abuse NOL challenge (out of scope)
DELETE FROM questions WHERE id = 10816;

-- Q10821 — 60% AOGI PHC income threshold (mechanics)
DELETE FROM questions WHERE id = 10821;

-- Q11073 — AET taxable income computation with accumulated earnings credit
DELETE FROM questions WHERE id = 11073;

-- Q11074 — QSBS 100% exclusion rate (out of scope — TCP territory)
DELETE FROM questions WHERE id = 11074;

-- Q11076 — CAMT computation with AFSI (mechanics)
DELETE FROM questions WHERE id = 11076;

-- Q11086 — Multi-drift anti-abuse question (Sec 269 + 382 + step doctrine + 482)
DELETE FROM questions WHERE id = 11086;

-- Q11094 — QSBS maximum exclusion calculation (out of scope)
DELETE FROM questions WHERE id = 11094;

-- Q11095 — AOGI rental income PHC exclusion test (mechanics)
DELETE FROM questions WHERE id = 11095;

COMMIT;
