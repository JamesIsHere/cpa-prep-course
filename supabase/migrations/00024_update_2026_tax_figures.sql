-- =============================================================================
-- Migration 00024: Update 2025 tax figures to 2026 across quiz questions
-- Follows pattern from 00015_fix_2025_tax_figures.sql
-- 2026 figures based on IRS inflation indexing projections:
--   - Annual gift exclusion: $19,000 (unchanged)
--   - Lifetime exemption: ~$14.50M (H.R. 1 extends elevated exemption)
--   - Excess business loss: $322K/$644K
--   - Standard deduction: Single $15,375, HOH $23,100, MFJ $30,750
--   - 401(k) deferral: $24,000; catch-up $7,500; total $31,500
--   - Defined benefit plan: $285,000
--   - SIMPLE IRA: $17,000
--   - Defined contribution total: $71,000
--   - Roth IRA phase-out (MFJ): $243,000-$253,000
--   - Dependency gross income test: $5,200
--   - Kiddie tax tiers: ~$1,350 / $2,700 combined
-- NOTE: Verify against final IRS Revenue Procedure when published
-- =============================================================================

-- =============================================================================
-- Fix 1: Annual gift exclusion — year only (amount unchanged at $19,000)
-- =============================================================================
UPDATE questions
SET
  stem = 'For 2026, what is the annual gift tax exclusion amount per donee?'
WHERE stem = 'For 2025, what is the annual gift tax exclusion amount per donee?';

-- =============================================================================
-- Fix 2: $50,000 gift explanation — year reference
-- =============================================================================
UPDATE questions
SET
  explanation = 'A transfer of $50,000 to a friend exceeds the annual exclusion and is a taxable gift (the excess over $19,000). Charitable gifts are deductible, and direct payments of tuition or medical expenses to the provider are specifically excluded from gift tax under Section 2503(e) regardless of amount. Only the transfer to the friend creates a gift tax event.'
WHERE stem = 'Which of the following transfers is subject to gift tax?';

-- =============================================================================
-- Fix 3: Estate tax exemption $13.99M → ~$14.50M
-- =============================================================================
UPDATE questions
SET
  stem = 'A decedent dies in 2026 with a gross estate of $15 million. The unified credit exemption amount for 2026 is approximately $14.50 million. Assuming no deductions, what is the taxable estate?',
  choices = '["$0", "$500,000", "$15,000,000", "$14,500,000"]'::jsonb,
  correct_index = 1,
  explanation = 'The taxable estate = gross estate - deductions - exemption. With no deductions, the estate tax applies to $15,000,000 - $14,500,000 = $500,000. The unified credit exemption shelters the first ~$14.50 million from estate tax. The excess is taxed at the estate tax rate of 40%.'
WHERE stem = 'A decedent dies in 2025 with a gross estate of $15 million. The unified credit exemption amount for 2025 is $13.99 million. Assuming no deductions, what is the taxable estate?';

-- =============================================================================
-- Fix 4: Gift splitting $100K — year only (exclusion unchanged)
-- =============================================================================
UPDATE questions
SET
  stem = 'A married couple wishes to give $100,000 to their grandchild. Using gift splitting, what is the maximum they can give without using any of their lifetime exemption in 2026?',
  explanation = 'With gift splitting under Section 2513, each spouse is treated as making half the gift. The annual exclusion for 2026 is $19,000 per donor per donee. With gift splitting: $19,000 × 2 spouses = $38,000 excluded from taxable gifts. The remaining $62,000 ($100,000 - $38,000) would require using their lifetime exemption or incurring gift tax.'
WHERE stem = 'A married couple wishes to give $100,000 to their grandchild. Using gift splitting, what is the maximum they can give without using any of their lifetime exemption in 2025?';

-- =============================================================================
-- Fix 5: GSTT exemption explanation ~$13.99M → ~$14.50M
-- =============================================================================
UPDATE questions
SET
  explanation = 'The GSTT imposes an additional tax on transfers that skip a generation (e.g., grandparent to grandchild), preventing families from avoiding one layer of estate/gift tax. The GSTT applies to direct skips, taxable distributions from trusts, and taxable terminations. Each person has a GSTT exemption (equal to the estate tax exemption, approximately $14.50 million for 2026).'
WHERE stem = 'The generation-skipping transfer tax (GSTT) is designed to prevent taxpayers from:';

-- =============================================================================
-- Fix 6: Taxable gift $25K — year only (exclusion unchanged)
-- =============================================================================
UPDATE questions
SET
  stem = 'A taxpayer makes a present interest gift of $25,000 to a friend in 2026. What is the taxable gift amount (before applying the lifetime exemption)?',
  explanation = 'The taxable gift equals the total gift minus the annual exclusion. For 2026, the annual exclusion is $19,000. Taxable gift = $25,000 - $19,000 = $6,000. This $6,000 reduces the taxpayer''s lifetime exemption (~$14.50 million for 2026). No gift tax is actually owed unless the cumulative taxable gifts exceed the lifetime exemption.'
WHERE stem = 'A taxpayer makes a present interest gift of $25,000 to a friend in 2025. What is the taxable gift amount (before applying the lifetime exemption)?';

-- =============================================================================
-- Fix 7: Four-tier loss limitation — $313K/$626K → $322K/$644K
-- =============================================================================
UPDATE questions
SET
  explanation = 'The four-tier loss limitation is applied in order: (1) basis limitation (stock + direct loan basis), (2) at-risk limitation (Section 465), (3) passive activity limitation (Section 469), and (4) excess business loss limitation (Section 461(l), $322,000 single / $644,000 MFJ for 2026). Losses that pass one tier must still satisfy the next. Suspended losses at each tier carry forward separately.'
WHERE stem = 'The four-tier loss limitation for S corporation shareholders is applied in which order?';

-- =============================================================================
-- Fix 8: Gifts of $20K to five — year only (exclusion unchanged)
-- =============================================================================
UPDATE questions
SET
  stem = 'In 2026, a taxpayer makes gifts of $20,000 each to five individuals. The annual exclusion is $19,000 per donee. What is the total amount of taxable gifts?',
  explanation = 'Each gift exceeds the $19,000 annual exclusion by $1,000. Taxable gifts per donee = $20,000 - $19,000 = $1,000. Total taxable gifts = $1,000 x 5 = $5,000.'
WHERE stem = 'In 2025, a taxpayer makes gifts of $20,000 each to five individuals. The annual exclusion is $19,000 per donee. What is the total amount of taxable gifts?';

-- =============================================================================
-- Fix 9: Gift splitting $50K — year only (exclusion unchanged)
-- =============================================================================
UPDATE questions
SET
  stem = 'A married couple elects gift splitting on a $50,000 gift to their niece. The annual exclusion is $19,000 per donor per donee. What is the total taxable gift?',
  explanation = 'With gift splitting, each spouse is treated as giving $25,000. Each spouse applies the $19,000 annual exclusion: $25,000 - $19,000 = $6,000 taxable per spouse. Total taxable = $6,000 x 2 = $12,000.'
WHERE stem = 'A married couple elects gift splitting on a $50,000 gift to their niece. The annual exclusion is $19,000 per donor per donee. What is the total taxable gift?';

-- =============================================================================
-- Fix 10: Unified credit $13,990,000 → $14,500,000
-- =============================================================================
UPDATE questions
SET
  stem = 'A donor makes a $5,018,000 taxable gift in Year 1 and a $6,000,000 taxable gift in Year 2 (after the annual exclusion). The unified credit shelters $14,500,000 of cumulative transfers. What is the gift tax owed in Year 2?',
  explanation = 'Cumulative taxable gifts = $5,018,000 + $6,000,000 = $11,018,000. This is below the $14,500,000 exemption. No gift tax is owed because the unified credit fully shelters both gifts.'
WHERE stem = 'A donor makes a $5,018,000 taxable gift in Year 1 and a $6,000,000 taxable gift in Year 2 (after the annual exclusion). The unified credit shelters $13,990,000 of cumulative transfers. What is the gift tax owed in Year 2?';

-- =============================================================================
-- Fix 11: ILIT Crummey powers — exclusion unchanged, explanation consistent
-- =============================================================================
UPDATE questions
SET
  explanation = 'Crummey withdrawal powers convert the premium payment to a present interest gift, qualifying for the annual exclusion. With 4 beneficiaries, the exclusion covers 4 x $19,000 = $76,000. Since the premium is $40,000 (less than $76,000), the entire gift is excluded.'
WHERE stem = 'An irrevocable life insurance trust (ILIT) owns a $3,000,000 policy on the grantor. Annual premiums are $40,000 paid by the grantor. The trust has 4 beneficiaries. With Crummey powers, the gift tax consequence is:';

-- =============================================================================
-- Fix 12: 401(k) elective deferral $23,500 → $24,000
-- =============================================================================
UPDATE questions
SET
  stem = 'In 2026, an employee under age 50 contributes the maximum to her 401(k). What is the maximum employee elective deferral?',
  choices = '["$23,500", "$24,000", "$31,500", "$71,000"]'::jsonb,
  correct_index = 1,
  explanation = 'The 2026 maximum 401(k) employee elective deferral for participants under age 50 is $24,000. The $31,500 amount is the total for those age 50+ ($24,000 + $7,500 catch-up contribution).'
WHERE stem = 'In 2025, an employee under age 50 contributes the maximum to her 401(k). What is the maximum employee elective deferral?';

-- =============================================================================
-- Fix 13: Defined benefit plan limit $280,000 → $285,000
-- =============================================================================
UPDATE questions
SET
  stem = 'An employer sponsors a defined benefit pension plan. The maximum annual benefit payable to a participant at normal retirement age in 2026 is:',
  choices = '["$285,000", "$330,000", "$71,000", "$24,000"]'::jsonb,
  correct_index = 0,
  explanation = 'Section 415(b) limits the annual benefit from a defined benefit plan to the lesser of 100% of average compensation for the highest 3 consecutive years or $285,000 (2026 limit). The $71,000 and $24,000 limits apply to defined contribution plans.'
WHERE stem = 'An employer sponsors a defined benefit pension plan. The maximum annual benefit payable to a participant at normal retirement age in 2025 is:';

-- =============================================================================
-- Fix 14: SIMPLE IRA $16,500 → $17,000
-- =============================================================================
UPDATE questions
SET
  stem = 'An employer establishes a SIMPLE IRA. The maximum employee salary reduction contribution for a participant under age 50 in 2026 is:',
  choices = '["$17,000", "$24,000", "$7,000", "$71,000"]'::jsonb,
  correct_index = 0,
  explanation = 'The 2026 SIMPLE IRA employee contribution limit for participants under age 50 is $17,000. The employer must either match up to 3% of compensation or make a 2% nonelective contribution.'
WHERE stem = 'An employer establishes a SIMPLE IRA. The maximum employee salary reduction contribution for a participant under age 50 in 2025 is:';

-- =============================================================================
-- Fix 15: Roth IRA phase-out MFJ $236K-$246K → $243K-$253K
-- Adjust MAGI from $240K to $245K to keep within phase-out range
-- =============================================================================
UPDATE questions
SET
  stem = 'A married couple filing jointly has MAGI of $245,000 in 2026. They want to contribute to a Roth IRA. What is the maximum contribution?',
  explanation = 'The 2026 Roth IRA income phase-out for MFJ is $243,000 - $253,000. At $245,000 MAGI, they are within the phase-out range and can make a reduced contribution. They cannot contribute the full $7,000 each.'
WHERE stem = 'A married couple filing jointly has MAGI of $240,000 in 2025. They want to contribute to a Roth IRA. What is the maximum contribution?';

-- =============================================================================
-- Fix 16: Standard deduction amounts for 2026
-- =============================================================================
UPDATE questions
SET
  stem = 'Which of the following filing statuses provides the LARGEST standard deduction for 2026?',
  explanation = 'For 2026, the standard deduction amounts are: Single $15,375, HOH $23,100, MFJ $30,750, and MFS $15,375. Married Filing Jointly provides the largest standard deduction at $30,750. Qualifying Surviving Spouse also receives $30,750.'
WHERE stem = 'Which of the following filing statuses provides the LARGEST standard deduction for 2025?';

-- =============================================================================
-- Fix 17: HOH standard deduction in filing status explanation
-- =============================================================================
UPDATE questions
SET
  explanation = 'Sarah qualifies for Head of Household: (1) she is unmarried on December 31, (2) she paid more than half the cost of maintaining the home, and (3) her daughter is a qualifying person (qualifying child under 19 who lived with her all year). HOH provides a $23,100 standard deduction and wider tax brackets than Single ($15,375).'
WHERE stem = 'Sarah is unmarried and maintains a home where she lives with her 14-year-old daughter all year. Sarah pays all household expenses. Her daughter has $3,000 of part-time job income and does not provide more than half of her own support. What is Sarah''s most advantageous filing status?';

-- =============================================================================
-- Fix 18: Qualifying Surviving Spouse year reference
-- =============================================================================
UPDATE questions
SET
  stem = 'Tom''s wife died in March 2025. Tom has not remarried and maintains a home for his 8-year-old dependent son for all of 2026. What is Tom''s filing status for 2026?',
  explanation = 'Tom qualifies as a Qualifying Surviving Spouse for 2026. His wife died in 2025 (within the prior two years), he has not remarried, and he maintains a home as the principal residence of his dependent child for the entire year. QSS status is available for the two tax years following the year of death (2026 and 2027). In the year of death (2025), Tom would file MFJ.'
WHERE stem = 'Tom''s wife died in March 2024. Tom has not remarried and maintains a home for his 8-year-old dependent son for all of 2025. What is Tom''s filing status for 2025?';

-- =============================================================================
-- Fix 19: Dependency gross income test $5,050 → $5,200
-- =============================================================================
UPDATE questions
SET
  choices = '["No, because Karen''s income exceeds the gross income threshold of $5,200", "No, because Karen is over age 19", "Yes, because there is no gross income test for a qualifying child and she is under 24 as a full-time student", "Yes, but only if she earned less than the standard deduction amount"]'::jsonb,
  explanation = 'Karen meets all qualifying child tests: (1) Relationship — she is their daughter, (2) Age — under 24 and a full-time student, (3) Residency — lived with parents more than half the year, (4) Support — did not provide more than half her own support. There is NO gross income test for a qualifying child, so her $18,000 income is irrelevant. The gross income test ($5,200) applies only to qualifying relatives.'
WHERE stem LIKE 'Karen, age 20 and a full-time college student%';

-- =============================================================================
-- Fix 20: HOH dependent parent — gross income test $5,050 → $5,200
-- =============================================================================
UPDATE questions
SET
  explanation = 'Special exception for HOH: a dependent parent does NOT need to live with the taxpayer. David can claim HOH if he: (1) is unmarried, (2) pays more than half the cost of maintaining a home for his parent (including a separate home like a nursing home), and (3) can claim the parent as a dependent. His mother is a qualifying relative: support >50% (yes), gross income <$5,200 (yes, $4,500), relationship (yes), and not a qualifying child of anyone. David qualifies for HOH.'
WHERE stem LIKE 'David, who is unmarried, provides 100% of the financial support%';

-- =============================================================================
-- Fix 21: Kiddie tax tiers $1,300 → $1,350 and $2,600 → $2,700
-- =============================================================================
UPDATE questions
SET
  explanation = 'Under the kiddie tax rules, the child''s unearned income is divided into tiers. The first portion (equal to the standard deduction for a dependent with only unearned income, approximately $1,350 for 2026) is tax-free. The next portion (another $1,350 approximately) is taxed at the child''s rate. Unearned income above the combined threshold ($2,700 approximately) is taxed at the parents'' marginal rate.'
WHERE stem LIKE '%Which of the following statements about the kiddie tax%';

-- =============================================================================
-- Fix 22: Kiddie tax computation $1,300/$2,600 → $1,350/$2,700
-- =============================================================================
UPDATE questions
SET
  choices = '["$5,000", "$2,300 (amount exceeding the kiddie tax threshold)", "$1,350", "$0"]'::jsonb,
  explanation = 'Under the kiddie tax, the first $1,350 (approximately) of unearned income is offset by the child''s standard deduction (tax-free). The next $1,350 is taxed at the child''s rate. Unearned income above $2,700 is taxed at the parents'' marginal rate. So $5,000 - $2,700 = $2,300 is taxed at the parents'' rate. The exact thresholds are indexed annually.'
WHERE stem LIKE '%16-year-old dependent child has $5,000 of unearned income%';

-- =============================================================================
-- Grand total: 22 question updates across gift tax, estate tax, retirement plans,
-- standard deductions, filing status, dependency tests, and kiddie tax
-- =============================================================================
