-- Migration 00040: Fix defined benefit plan limit for 2026
-- Migration 00030 inserted a question with $280,000 for 2026, but 00024 established $285,000 as the 2026 limit.

UPDATE questions
SET
  choices = '["$70,000", "$175,000", "$275,000", "The lesser of 100% of average compensation for the highest 3 consecutive years or the annual dollar limit ($285,000)"]'::jsonb,
  correct_index = 3,
  explanation = 'Under Section 415(b), the maximum annual benefit payable from a defined benefit plan is the lesser of 100% of the participant''s average compensation for the highest 3 consecutive years of service or the annual dollar limit ($285,000 for 2026, indexed for inflation). Benefits beginning before age 62 are actuarially reduced, and benefits beginning after age 65 may be actuarially increased.'
WHERE stem = 'A defined benefit plan participant can receive a maximum annual benefit of how much in 2026 under the Section 415 limitation?';
