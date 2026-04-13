-- Fix Q15202 (FAR / Financial Statement Ratios). The original question had two functionally
-- equivalent correct answers (A and D): A stated the precise EBIT impact ($2,400,000) while
-- D identified the mechanism (depreciation vs full expense). The stored explanation admitted
-- in its Wrong (D) rebuttal that D "identifies the correct direction" and only marked D wrong
-- because A was more precise. A student picking D understood the concept and was unfairly
-- penalized.
--
-- This rewrite keeps the stem, choice A (correct), and choices B/C (real wrong answers)
-- unchanged. Only choice D and its rebuttal change: D becomes a plausible numerical error
-- that tests whether students remember Year 1 depreciation must still be deducted from EBIT
-- under the capitalized approach. Keyed index stays at 0 (A).
--
-- Flagged 2026-04-11 Phase 2 verification (Q15202 FAR review — weak distractor).

BEGIN;

UPDATE questions SET
  stem = $EXPL$Glenmore Corp. spends $3,000,000 on a major equipment overhaul. Under one approach, the cost is capitalized and depreciated over 5 years. Under the alternative, the entire cost is expensed immediately. Interest expense is $500,000 in both scenarios. In Year 1, how does capitalizing the cost (versus expensing) affect Glenmore's times interest earned ratio?$EXPL$,
  choices = '["TIE is higher under capitalizing because EBIT increases by $2,400,000", "TIE is unchanged because total cash outflow is identical under both approaches", "TIE is lower under capitalizing because total assets increase, reducing efficiency", "TIE is higher under capitalizing because EBIT increases by the full $3,000,000, since the equipment cost is removed entirely from the Year 1 income statement"]'::jsonb,
  explanation = $EXPL$Correct (A): Per ASC 360-10, capitalizing the $3,000,000 cost and depreciating it straight-line over 5 years creates $600,000 of annual depreciation. Year 1 EBIT is therefore reduced by $600,000 under the capitalized approach rather than the full $3,000,000 under the expensed approach, a net EBIT improvement of $3,000,000 − $600,000 = $2,400,000. Because TIE = EBIT / interest expense and interest expense is $500,000 in both scenarios, the $2,400,000 EBIT improvement translates directly into a materially higher TIE ratio under capitalizing.
Wrong (B): While total cash outflow is identical under both approaches, accrual-based ratios like TIE use EBIT, not cash flows. The accounting distinction between capitalizing and expensing changes EBIT materially in Year 1 even though the underlying economics are identical.
Wrong (C): Higher total assets may reduce asset turnover and return on assets ratios, but TIE is computed from EBIT and interest expense and does not depend on total assets at all. This answer confuses a balance sheet effect with an income statement effect.
Wrong (D): This overstates the EBIT improvement by $600,000. Capitalizing does defer the bulk of the cost, but $600,000 of depreciation still hits Year 1 EBIT under the 5-year straight-line schedule rather than disappearing entirely. The net Year 1 EBIT difference is $2,400,000, not $3,000,000 — a common error when students forget that capitalized assets still generate a first-year depreciation charge.$EXPL$,
  correct_index = 0,
  difficulty = 'medium',
  cognitive_level = 3
WHERE id = 15202;

COMMIT;
