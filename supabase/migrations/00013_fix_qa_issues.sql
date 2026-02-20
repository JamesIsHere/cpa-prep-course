-- =============================================================================
-- Fix 6 critical question issues found during content QA spot-check
-- =============================================================================

-- 1. AUD: Fix prospective financial statements explanation (compilations ARE permitted)
UPDATE questions
SET explanation = 'Under AICPA standards (AT-C Section 305), practitioners may perform examinations, compilations, and agreed-upon procedures on prospective financial statements. Reviews of prospective financial statements are NOT permitted because the limited inquiry and analytical procedures of a review do not provide a sufficient basis for conclusions about forward-looking information.'
WHERE section_id = 1
  AND stem = 'Which of the following is NOT an acceptable engagement type for prospective financial statements?';

-- 2. REG: Fix bonus depreciation question (2025 rate is 40%, not 100%)
UPDATE questions
SET stem = 'A taxpayer purchases new manufacturing equipment for $500,000 in 2025. Under the TCJA phase-down schedule, what is the first-year bonus depreciation deduction (ignoring Section 179 and regular MACRS)?',
    choices = '["$100,000", "$200,000", "$500,000", "$300,000"]'::jsonb,
    correct_index = 1,
    explanation = 'Under the TCJA, bonus depreciation phases down by 20% per year: 100% (2022), 80% (2023), 60% (2024), 40% (2025), 20% (2026), and 0% after 2026. For equipment placed in service in 2025, the bonus depreciation deduction is 40% x $500,000 = $200,000. The taxpayer would also claim regular MACRS depreciation on the remaining $300,000 basis.'
WHERE section_id = 3
  AND stem LIKE '%purchases new manufacturing equipment for $500,000%'
  AND stem LIKE '%bonus depreciation%';

-- 3. REG: Fix AMT phase-out question (correct_index and choices for MFJ)
UPDATE questions
SET choices = '["$200,000", "$578,150 (approximately)", "$1,218,700 (approximately)", "The exemption never phases out"]'::jsonb,
    correct_index = 2,
    explanation = 'The AMT exemption phases out at 25 cents for each dollar of AMTI above the phase-out threshold. For 2025 MFJ, the phase-out begins at approximately $1,218,700 (indexed annually for inflation). The $578,150 figure is the MFS phase-out threshold, not MFJ. The exemption is fully phased out when AMTI exceeds the threshold plus four times the exemption amount ($1,218,700 + 4 x $133,300 = $1,751,900).'
WHERE section_id = 3
  AND stem LIKE '%AMT exemption amount for married filing jointly%'
  AND stem LIKE '%phase out%';

-- 4. BAR: Fix DuPont question (only one answer should equal 18%)
UPDATE questions
SET choices = '["Net profit margin 6%, asset turnover 1.2, equity multiplier 2.0", "Net profit margin 9%, asset turnover 1.0, equity multiplier 2.0", "Net profit margin 3%, asset turnover 2.0, equity multiplier 2.5", "Net profit margin 5%, asset turnover 1.5, equity multiplier 2.0"]'::jsonb,
    correct_index = 1,
    explanation = 'ROE = Profit margin x Asset turnover x Equity multiplier. Option B: 9% x 1.0 x 2.0 = 18%. Option A: 6% x 1.2 x 2.0 = 14.4%. Option C: 3% x 2.0 x 2.5 = 15%. Option D: 5% x 1.5 x 2.0 = 15%. Only option B yields exactly 18%.'
WHERE section_id = 4
  AND stem = 'Using DuPont analysis, which combination of factors results in a return on equity of 18%?';

-- 5. BAR: Fix current ratio question (declining inventory, not building)
UPDATE questions
SET correct_index = 1,
    explanation = 'The current ratio includes all current assets (including inventory), while the quick ratio excludes inventory. If the current ratio declines but the quick ratio remains stable, the difference — inventory — must be decreasing. Declining inventory reduces total current assets without affecting quick assets, causing the current ratio to fall while the quick ratio holds steady.'
WHERE section_id = 4
  AND stem = 'A declining current ratio combined with a stable quick ratio most likely indicates:';

-- 6. ISC: Fix malformed JSON (remove empty 5th choice)
UPDATE questions
SET choices = '["Full interruption test that shuts down production systems", "Tabletop exercise where team members walk through a simulated scenario", "Immediately deploying the plan during the next real incident", "Hiring an external red team to launch actual attacks against production"]'::jsonb
WHERE section_id = 5
  AND stem LIKE '%test its incident response plan without disrupting production%';
