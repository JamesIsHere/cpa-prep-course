-- Migration 00014: Fix TCP retirement plan limit errors
-- Issues:
--   1. Defined benefit question states $275,000 for 2025 — correct 2025 limit is $280,000
--   2. 401(k) explanation cites $7,000 catch-up and $30,500 total — correct 2025 values are $7,500 and $31,000

-- Fix 1: Defined benefit plan limit ($275K -> $280K for 2025)
UPDATE questions
SET
  choices = '["$280,000", "$330,000", "$69,000", "$23,500"]'::jsonb,
  explanation = 'Section 415(b) limits the annual benefit from a defined benefit plan to the lesser of 100% of average compensation for the highest 3 consecutive years or $280,000 (2025 limit). The $69,000 and $23,500 limits apply to defined contribution plans.'
WHERE stem = 'An employer sponsors a defined benefit pension plan. The maximum annual benefit payable to a participant at normal retirement age in 2025 is:';

-- Fix 2: 401(k) catch-up explanation ($7,000 -> $7,500 catch-up, $30,500 -> $31,000 total)
UPDATE questions
SET
  explanation = 'The 2025 maximum 401(k) employee elective deferral for participants under age 50 is $23,500. The $31,000 amount is the total for those age 50+ ($23,500 + $7,500 catch-up contribution).'
WHERE stem = 'In 2025, an employee under age 50 contributes the maximum to her 401(k). What is the maximum employee elective deferral?';
