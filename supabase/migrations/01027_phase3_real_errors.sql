-- Phase 3 adversarial re-solve sample (Mode B) found 13 disagreements out of 400
-- sampled questions. After human adjudication: 3 real bank errors, 7 verifier-side
-- mistakes (no action), 3 ambiguous (lean keyed-correct, kept).
--
-- True bank error rate from the Phase 3 sample: 3 / 400 = 0.75%
-- 95% Wilson CI: 0.16% — 2.18%
--
-- This migration fixes the 3 confirmed real errors.

BEGIN;

-- Q4442 (AUD / Independence): honorary director on NFP audit client board
-- Stem describes: senior manager invited to serve on board of Lakeshore Community Hospital
-- (NFP audit client). Position is purely honorary, no compensation, no decision-making
-- authority. AICPA ET §1.295.060 explicitly carves out an honorary director exception for
-- not-for-profit organizations when the position is purely honorary, identified as honorary
-- in all communications, no decision participation, and no other independence impairment.
-- All four conditions are stated in the stem. The keyed answer (A — "impairs because board
-- membership is a management role regardless of authority") ignores the honorary exception.
-- Choice C ("does not impair because the role is honorary") matches the rule.
--   from=0 (A) → to=2 (C)
UPDATE questions SET correct_index = 2 WHERE id = 4442;

-- Q4037 (TCP / Retirement Plans): SECURE 2.0 RMD age for taxpayer born 1962
-- SECURE 2.0 §107 has a two-stage age increase: born 1951-1959 -> RMD age 73; born 1960
-- or later -> RMD age 75 (effective for those who attain age 74 after Dec 31, 2032).
-- Miriam (born 1962) attains age 74 in 2036, after the cutoff, so the age-75 rule applies
-- to her. The stored explanation incorrectly places born-1962 in the age-73 bucket. Choice
-- D ("Age 75") is correct.
--   from=2 (C) → to=3 (D)
UPDATE questions SET correct_index = 3 WHERE id = 4037;

-- Q15053 (BAR / Pension and Postretirement Benefits): negative plan amendment netting
-- Delta Corp. negative plan amendment reduces PBO by $500,000. Existing unamortized prior
-- service cost in AOCI is $180,000. ASC 715-30-35-15 requires that a reduction in PBO
-- from a negative amendment be FIRST applied to reduce any existing prior service cost
-- in AOCI; only the excess ($320,000) is recognized as a new prior service credit and
-- amortized over the average remaining service period. The keyed answer (B — "recognize
-- $500K credit in OCI and continue amortizing $180K separately") contradicts the netting
-- rule. Choice D ("reduce $180K first, then recognize remaining $320K credit and amortize
-- over 8 years") matches ASC 715-30-35-15.
--   from=1 (B) → to=3 (D)
UPDATE questions SET correct_index = 3 WHERE id = 15053;

COMMIT;
