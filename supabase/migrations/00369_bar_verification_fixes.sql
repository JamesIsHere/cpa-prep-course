-- BAR verification fixes: 27 deletes (wrong answer not among choices + duplicates) + 7 updates (correct_index / choice text fixes)
-- Source: full BAR correctness audit (1,080 questions verified, 26 fails, 15 reviews)

BEGIN;

-- ════════════════════════════════════════════════════════════════
-- DELETES: Questions where the correct answer is not among choices
-- or the stem is fundamentally broken. Includes identical duplicates.
-- ════════════════════════════════════════════════════════════════

DELETE FROM questions WHERE id IN (
  -- Unique fails: correct answer not among choices / broken stem
  2940,   -- Inventory turnover 6.0, no choice pairs correct math + correct interpretation
  3129,   -- Telecom SSP: stem fabricates "$240 subsidy", correct allocation $500 not among choices
  3173,   -- Deconsolidation gain is $1M, not among choices (A=$700K, C=$3M keyed wrong)

  -- WACC 9.33% group (4 identical copies): math yields 9.33%, keyed 9.58%, no choice matches
  6083, 8723, 11303, 13883,

  -- WACC 9.87% group (4 identical copies): math yields 9.87%, keyed 10.37%, no choice matches
  6084, 8724, 11304, 13884,

  -- Hamada 1.19 group (3 identical copies): 0.914 × 1.30 = 1.19, keyed 1.12, no choice matches
  6133, 8773, 11353,

  -- Interest coverage 2.90× group (2 identical copies): $4.2M/$1.45M = 2.90×, keyed 2.80×
  8748, 13908,

  -- EPS decline 18.4% group (3 identical copies): Waverly decline is 18.4%, keyed 20.8%
  8753, 11333, 13913,

  -- Review-list duplicates of the above error patterns (identical stems)
  6108,   -- duplicate of Q8748 (interest coverage)
  11328,  -- duplicate of Q8748 (interest coverage)
  6113,   -- duplicate of Q8753 (EPS decline)
  13933,  -- duplicate of Q6133 (Hamada)
  8774,   -- duplicate of Q6134 (FCFE rounding)
  11354,  -- duplicate of Q6134 (FCFE rounding)
  13934   -- duplicate of Q6134 (FCFE rounding)
);

-- ════════════════════════════════════════════════════════════════
-- UPDATES: Questions where the correct answer IS among choices
-- but the wrong one was keyed, or choice text has errors
-- ════════════════════════════════════════════════════════════════

-- Q2992: EFN with 30% payout = $240,000 (choice A), was keyed to C ($160,000)
UPDATE questions
SET correct_index = 0,
    explanation = 'Correct (A). With a 30% payout ratio, retention rises to 70%. EFN = (A/S × ΔS) − (L/S × ΔS) − (PM × S₁ × retention) = (0.60 × $2,000,000) − (0.20 × $2,000,000) − (0.08 × $10,000,000 × 0.70) = $1,200,000 − $400,000 − $560,000 = $240,000. Increasing retention from 50% to 70% boosts internally generated funds by $160,000, reducing EFN from $400,000 to $240,000. Choice C ($160,000) incorrectly represents the change in EFN rather than the new EFN level, while choice B ($560,000) equals the retained earnings contribution alone.'
WHERE id = 2992;

-- Q3010: Lancaster base EPS is $6.10 (not $4.60), decline is ~24.6% (not 29%)
UPDATE questions
SET choices = '["Both companies experience a 20% EPS decline because leverage has no effect on earnings sensitivity", "Lancaster''s EPS drops by less than 20% because interest payments provide a buffer against earnings volatility", "Kensington''s EPS drops 20% (from $4.50 to $3.60) while Lancaster''s EPS drops approximately 24.6% (from $6.10 to $4.60) — the fixed $560,000 interest expense does not decline with EBIT, so the entire $600,000 EBIT reduction falls on Lancaster''s smaller equity base, producing a proportionally larger EPS decline; this amplification is the cost of financial leverage during downturns", "Kensington''s EPS drops by more than Lancaster''s because unlevered firms absorb all business risk without debt cushioning"]'::jsonb,
    explanation = 'Correct (C). Kensington (unlevered): Base EPS = ($3,000,000 × 0.75) / 500,000 = $4.50. After EBIT decline: ($2,400,000 × 0.75) / 500,000 = $3.60. Decline = 20.0%, matching the EBIT decline exactly. Lancaster (levered): Interest = $8,000,000 × 7% = $560,000. Base EPS = (($3,000,000 − $560,000) × 0.75) / 300,000 = $6.10. After decline: (($2,400,000 − $560,000) × 0.75) / 300,000 = $4.60. Decline = ($6.10 − $4.60) / $6.10 = 24.6%. The fixed interest obligation means Lancaster''s equity holders absorb the entire EBIT shortfall, amplifying their percentage loss. DFL = EBIT / (EBIT − I) = $3,000,000 / $2,440,000 ≈ 1.23, so a 20% EBIT decline produces approximately 24.6% EPS decline.'
WHERE id = 3010;

-- Q3020: WACC = 1.0% + 0.8% + 9.8% = 11.60% (choice A), was keyed to B (10.80%)
UPDATE questions
SET correct_index = 0,
    explanation = 'Correct (A). WACC = Σ(weight × cost) for each capital component. Total capital = $2M + $1M + $7M = $10M. WACC = ($2M/$10M × 5%) + ($1M/$10M × 8%) + ($7M/$10M × 14%) = 1.0% + 0.8% + 9.8% = 11.60%. Since the costs are given as-is with no separate tax adjustment indicated, the weighted average yields 11.60%. Choice B (10.80%) would require a lower effective cost of equity or an unstated tax adjustment, while choice C (9.00%) understates the dominant equity contribution.'
WHERE id = 3020;

-- Q3057: Revised EV = $6M × 1.03 / 0.06 = $103M (choice A), was keyed to B ($100M)
UPDATE questions
SET correct_index = 0,
    explanation = 'Correct (A). Using the Gordon Growth Model with FCFF₀ = $6,000,000: Original EV = $6,000,000 × 1.04 / (0.09 − 0.04) = $6,240,000 / 0.05 = $124,800,000. Revised EV = $6,000,000 × 1.03 / (0.09 − 0.03) = $6,180,000 / 0.06 = $103,000,000. The lower growth rate reduces the numerator slightly while widening the denominator from 5% to 6%, causing a $21,800,000 (17.5%) decline in enterprise value — illustrating the high sensitivity of DCF valuations to terminal growth rate assumptions under ASC 820 income approach guidance.'
WHERE id = 3057;

-- Q3233: Total net position is the same in both scenarios (choice A), was keyed to D
UPDATE questions
SET correct_index = 0,
    explanation = 'Correct (A). In Scenario A (bond-financed), the city records a $5M capital asset and $5M liability. Net investment in capital assets = $5M − $5M related debt = $0, and unrestricted net position is unchanged because no existing resources were consumed. In Scenario B (cash-funded), the city records a $5M capital asset and reduces cash by $5M. Net investment in capital assets = $5M, and unrestricted decreases by $5M. Total net position is identical in both scenarios because acquiring an asset funded by debt creates equal offsetting entries (asset and liability), whereas paying cash merely shifts resources between net position components under GASB Statement No. 34. Choice D incorrectly claims total net position differs.'
WHERE id = 3233;

-- Q3325: Net adjustment is +$5M for capital asset (choice B), was keyed to A (zero)
UPDATE questions
SET correct_index = 1,
    explanation = 'Correct (B). The capital grant revenue requires no reconciling adjustment because it is recognized identically in both the fund statements and government-wide statements. However, the $5,000,000 equipment purchase, recorded as an expenditure in governmental funds, must be added back and capitalized as a capital asset in the government-wide statements under GASB Statement No. 34. The net adjustment is therefore +$5,000,000. Choice A (zero) incorrectly assumes the revenue and expenditure offset, but they require separate treatment: revenue needs no adjustment while the capital outlay requires reclassification from expenditure to asset.'
WHERE id = 3325;

-- Q6134: Fix choice B from $83,718,750 to correct $83,687,500
UPDATE questions
SET choices = '["$81,250,000", "$83,687,500", "$59,090,909", "$72,222,222"]'::jsonb,
    explanation = 'Correct (B). Under the single-stage FCFE model consistent with ASC 820-10-35 income approach guidance, equity value = FCFE₁ / (ke − g) = ($6,500,000 × 1.03) / (0.11 − 0.03) = $6,695,000 / 0.08 = $83,687,500. Choice A ($81,250,000) incorrectly uses current-year FCFE without growth ($6,500,000 / 0.08), while choice C ($59,090,909) divides by the full cost of equity ($6,500,000 / 0.11), and choice D ($72,222,222) uses an incorrect discount spread.'
WHERE id = 6134;

COMMIT;
