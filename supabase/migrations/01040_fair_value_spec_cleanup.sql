-- Spec cleanup for FAR Fair Value (FAR/III/E/0)
-- Post-audit cleanup for the 4 banned-term hits flagged by
-- audit-topic-content.ts after the FAR Fair Value spec was authored.
-- All 4 are rewrites-in-place; no deletes. The core in-scope content of each
-- question is preserved.
--
-- Q2239  - FV option mechanics with CECL reference in a distractor (rewrite
--          the "not-this-framework" contrast to use amortized-cost phrasing)
-- Q11735 - MPEEM classification question with quantitative mechanics
--          scaffolding (strip the scaffolding, keep the classification core)
-- Q11740 - Monte Carlo classification question with simulation mechanics
--          scaffolding (strip the scaffolding, keep the classification core)
-- Q11753 - Market-participant principle taught through a numerical DCF with
--          WACC (drop the DCF computation frame, reframe choices conceptually
--          to center the market-participant-vs-entity-specific point)

BEGIN;

-- Q2239 -- FV option, loan receivable (explanation-only fix)
UPDATE questions
SET explanation = $EXPL$Correct (C): Under ASC 825-10-25, when the fair value option is elected, subsequent changes in fair value are recognized in net income. The $20,000 decrease ($500,000 − $480,000) is reported as a fair value loss in earnings. The fair value option, once elected, is irrevocable for that instrument.
Wrong (A): Impairment loss treatment applies when instruments are measured at amortized cost, not when the fair value option is elected.
Wrong (B): Unrealized gains and losses go to OCI for available-for-sale debt securities under ASC 320, but the fair value option under ASC 825 requires recognition in net income instead.
Wrong (D): Deferring recognition until settlement contradicts the fair value option, which requires mark-to-market each reporting period.$EXPL$
WHERE id = 2239;

-- Q11735 -- MPEEM classification (strip quantitative scaffolding from stem)
UPDATE questions
SET stem = $EXPL$AcquireCo uses the multi-period excess earnings method (MPEEM) to value a customer relationship intangible acquired in a business combination. Under ASC 820, how is this valuation technique classified among the three valuation approaches?$EXPL$
WHERE id = 11735;

-- Q11740 -- Monte Carlo classification (strip simulation-mechanics from stem)
UPDATE questions
SET stem = $EXPL$Garland Corp. values a contingent consideration obligation arising from a business combination using a Monte Carlo simulation. Under ASC 820, how is this valuation technique classified among the three valuation approaches?$EXPL$
WHERE id = 11740;

-- Q11753 -- Market-participant vs entity-specific (reframe to remove WACC and
-- the numerical DCF computation; keep the in-scope principle as the subject)
UPDATE questions
SET stem = $EXPL$Silverline Corp. is measuring the fair value of an intangible asset under ASC 820. Silverline's management intends to use a 9% discount rate based on its own internal cost of capital. Market participant analysis indicates that comparable intangible assets are typically discounted at 14%, reflecting the higher risk market participants perceive in these cash flows. Which rate must Silverline use, and why?$EXPL$,
    choices = $EXPL$["9%, because an entity should use its own internal cost of capital when measuring the fair value of its own assets", "The average of 9% and 14% (11.5%), because ASC 820 requires a blending of entity-specific and market-based inputs", "A risk-free rate, because fair value measurements must exclude all risk premiums", "14%, because ASC 820 requires fair value to reflect the assumptions market participants would use rather than entity-specific inputs"]$EXPL$::jsonb,
    correct_index = 3,
    explanation = $EXPL$Correct (D): ASC 820-10-35-9 requires fair value measurements to reflect the assumptions that market participants would use when pricing the asset, not the entity's own intentions or internal cost of capital. The 14% market-participant rate is the required input because it represents the return a market participant would demand for comparable intangible cash flows. The entity's own financing cost is irrelevant to an exit-price measurement, even though it may be relevant for internal capital-budgeting decisions.
Wrong (A): Using the entity's own internal cost of capital violates ASC 820's market-participant principle by substituting entity-specific assumptions for market-based inputs. Fair value is an exit price from the perspective of the market, not the reporting entity.
Wrong (B): ASC 820 does not permit blending entity-specific and market-participant assumptions. When a market-participant assumption is available, it must be used on its own.
Wrong (C): A risk-free rate would ignore the risk premium that market participants demand for intangible cash flows; ASC 820 requires the measurement to reflect the risks market participants would expect to be compensated for.$EXPL$
WHERE id = 11753;

COMMIT;
