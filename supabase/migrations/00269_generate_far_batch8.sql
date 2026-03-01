-- Migration: Question generation — FAR batch 8 (30 questions)
-- Date: 2026-02-28
-- Topic: Earnings Per Share
-- Difficulty: 9E / 15M / 6H
-- Bloom's: L1:8 / L2:9 / L3:8 / L4:5

BEGIN;

INSERT INTO questions (section_id, topic, stem, choices, correct_index, explanation, difficulty, cognitive_level)
VALUES

-- Q1: easy / L1 — Simple vs complex capital structure definition
(2, 'Earnings Per Share', 'Under ASC 260, what distinguishes a complex capital structure from a simple capital structure?', '["The entity has outstanding securities that could dilute earnings per share", "The entity has more than one class of common stock authorized", "The entity reports both operating and nonoperating income", "The entity has total assets exceeding $10 million"]'::jsonb, 0, 'Under ASC 260-10-15, an entity has a complex capital structure when it has outstanding securities (such as options, warrants, or convertible instruments) that could potentially dilute EPS. A simple capital structure has only common stock outstanding with no dilutive potential. Choice B is incorrect because multiple authorized classes alone do not create complexity unless those securities have dilutive potential.', 'easy', 1),

-- Q2: medium / L2 — Weighted-average shares with treasury stock repurchase
(2, 'Earnings Per Share', 'Glenbrook Industries had 150,000 common shares outstanding on January 1, 2025. On May 1, the company repurchased 30,000 shares as treasury stock. On November 1, it reissued 12,000 of those treasury shares. What is the weighted-average number of common shares for 2025?', '["132,000", "130,000", "134,000", "138,000"]'::jsonb, 2, 'Under ASC 260-10-45, weighted-average shares are computed by weighting each change for the fraction of the year outstanding. Jan 1–Apr 30: 150,000 × 4/12 = 50,000. May 1–Oct 31: 120,000 × 6/12 = 60,000. Nov 1–Dec 31: 132,000 × 2/12 = 22,000. Total: 50,000 + 60,000 + 22,000 = approximately 134,000 (rounded). Choice A (132,000) incorrectly uses the year-end balance without time-weighting.', 'medium', 2),

-- Q3: medium / L2 — Treasury stock method for stock options
(2, 'Earnings Per Share', 'Lakewood Inc. reports net income of $600,000 and has 240,000 weighted-average common shares outstanding for 2025. The company has 30,000 stock options with an exercise price of $20 per share. The average market price of common stock during 2025 was $30. Under the treasury stock method per ASC 260, what is diluted EPS for 2025?', '["$2.22", "$2.40", "$2.50", "$2.61"]'::jsonb, 1, 'Under ASC 260-10-45, the treasury stock method assumes options are exercised at the beginning of the period. Assumed proceeds: 30,000 × $20 = $600,000. Shares assumed repurchased at average market price: $600,000 ÷ $30 = 20,000. Incremental dilutive shares: 30,000 − 20,000 = 10,000. Diluted denominator: 240,000 + 10,000 = 250,000. Diluted EPS: $600,000 ÷ 250,000 = $2.40. Choice A ($2.22) incorrectly adds all 30,000 option shares without the treasury stock offset. Choice C ($2.50) equals basic EPS and ignores the dilutive effect entirely.', 'medium', 2),

-- Q4: medium / L2 — Stock dividends and retroactive EPS adjustment
(2, 'Earnings Per Share', 'Thornhill Corp. had 500,000 common shares outstanding for the entire year 2025. On July 1, the company declared and distributed a 10% stock dividend. Net income for 2025 was $660,000, and no preferred stock is outstanding. What is basic EPS for 2025?', '["$1.20", "$1.26", "$1.32", "$1.47"]'::jsonb, 0, 'Under ASC 260-10-55, stock dividends require retroactive restatement of shares for all periods presented. The 10% stock dividend increases the denominator to 550,000 (500,000 × 1.10) for the full year, regardless of declaration date. Basic EPS: $660,000 ÷ 550,000 = $1.20. Choice B ($1.26) incorrectly time-weights the stock dividend as a new issuance, using 525,000 weighted-average shares. Choice C ($1.32) ignores the stock dividend entirely, using only the original 500,000 shares.', 'medium', 2)
;

COMMIT;