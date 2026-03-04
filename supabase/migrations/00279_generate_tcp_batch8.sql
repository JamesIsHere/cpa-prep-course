-- Migration: Question generation — TCP batch 8 (30 questions)
-- Date: 2026-03-01
-- Topic: Retirement Plans and Education Savings
-- Difficulty: 9E / 15M / 6H
-- Bloom's: L1:6 / L2:10 / L3:9 / L4:5

BEGIN;

INSERT INTO questions (section_id, topic, stem, choices, correct_index, explanation, difficulty, cognitive_level)
VALUES

-- Q1: easy / L1 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L1 stem for easy question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'easy', 1),

-- Q2: easy / L2 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L2 stem for easy question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'easy', 2),

-- Q3: hard / L4 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L4 stem for hard question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'hard', 4),

-- Q4: hard / L4 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L4 stem for hard question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'hard', 4),

-- Q5: medium / L3 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L3 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 3),

-- Q6: hard / L4 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L4 stem for hard question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'hard', 4),

-- Q7: medium / L3 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L3 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 3),

-- Q8: easy / L2 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L2 stem for easy question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'easy', 2),

-- Q9: medium / L2 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L2 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 2),

-- Q10: easy / L1 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L1 stem for easy question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'easy', 1),

-- Q11: medium / L2 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L2 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 2),

-- Q12: medium / L2 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L2 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 2),

-- Q13: medium / L3 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L3 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 3),

-- Q14: easy / L2 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L2 stem for easy question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'easy', 2),

-- Q15: medium / L2 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L2 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 2),

-- Q16: medium / L2 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L2 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 2),

-- Q17: hard / L4 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L4 stem for hard question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'hard', 4),

-- Q18: medium / L3 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L3 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 3),

-- Q19: hard / L4 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L4 stem for hard question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'hard', 4),

-- Q20: medium / L2 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L2 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 2),

-- Q21: easy / L1 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L1 stem for easy question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'easy', 1),

-- Q22: hard / L3 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L3 stem for hard question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'hard', 3),

-- Q23: easy / L1 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L1 stem for easy question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'easy', 1),

-- Q24: easy / L1 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L1 stem for easy question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'easy', 1),

-- Q25: medium / L3 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L3 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 3),

-- Q26: medium / L2 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L2 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 2),

-- Q27: medium / L3 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L3 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 3),

-- Q28: medium / L3 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L3 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 3),

-- Q29: medium / L3 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L3 stem for medium question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'medium', 3),

-- Q30: easy / L1 — TODO: brief concept description
(6, 'Retirement Plans and Education Savings', 'TODO: write L1 stem for easy question', '["TODO: choice A", "TODO: choice B", "TODO: choice C", "TODO: choice D"]'::jsonb, 0, 'TODO: write explanation with citation and contrast', 'easy', 1)
;

COMMIT;
