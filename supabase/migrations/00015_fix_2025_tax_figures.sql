-- Migration 00015: Fix incorrect 2025 tax figures across quiz questions
-- Several questions labeled as 2025 were using 2024 figures for:
--   - Annual gift exclusion: $18,000 → $19,000
--   - Lifetime exemption: $13.61M → $13.99M
--   - Excess business loss: $305K/$610K → $313K/$626K
-- Source: IRS Revenue Procedure 2024-40

-- =============================================================================
-- Fix 1: Annual gift exclusion question (00005)
-- =============================================================================
UPDATE questions
SET
  choices = '["$16,000", "$17,000", "$18,000", "$19,000"]'::jsonb,
  explanation = 'The annual gift tax exclusion for 2025 is $19,000 per donee ($38,000 for married couples electing gift splitting). This means a taxpayer can give up to $19,000 to any number of individuals without incurring gift tax or using any of their lifetime exemption. The exclusion applies to present interest gifts only.'
WHERE stem = 'For 2025, what is the annual gift tax exclusion amount per donee?';

-- =============================================================================
-- Fix 2: $50,000 gift explanation references $18,000 exclusion (00005)
-- =============================================================================
UPDATE questions
SET
  explanation = 'A transfer of $50,000 to a friend exceeds the annual exclusion and is a taxable gift (the excess over $19,000). Charitable gifts are deductible, and direct payments of tuition or medical expenses to the provider are specifically excluded from gift tax under Section 2503(e) regardless of amount. Only the transfer to the friend creates a gift tax event.'
WHERE stem = 'Which of the following transfers is subject to gift tax?';

-- =============================================================================
-- Fix 3: Estate tax exemption $13.61M → $13.99M (00005)
-- =============================================================================
UPDATE questions
SET
  stem = 'A decedent dies in 2025 with a gross estate of $15 million. The unified credit exemption amount for 2025 is $13.99 million. Assuming no deductions, what is the taxable estate?',
  choices = '["$0", "$1,010,000", "$15,000,000", "$13,990,000"]'::jsonb,
  explanation = 'The taxable estate = gross estate - deductions - exemption. With no deductions, the estate tax applies to $15,000,000 - $13,990,000 = $1,010,000. The unified credit exemption shelters the first $13.99 million from estate tax. The excess is taxed at the estate tax rate of 40%.'
WHERE stem = 'A decedent dies in 2025 with a gross estate of $15 million. The unified credit exemption amount for 2025 is $13.61 million. Assuming no deductions, what is the taxable estate?';

-- =============================================================================
-- Fix 4: Gift splitting $100K — exclusion $18K → $19K (00009)
-- =============================================================================
UPDATE questions
SET
  choices = '["$19,000", "$38,000", "$100,000", "$50,000"]'::jsonb,
  explanation = 'With gift splitting under Section 2513, each spouse is treated as making half the gift. The annual exclusion for 2025 is $19,000 per donor per donee. With gift splitting: $19,000 × 2 spouses = $38,000 excluded from taxable gifts. The remaining $62,000 ($100,000 - $38,000) would require using their lifetime exemption or incurring gift tax.'
WHERE stem = 'A married couple wishes to give $100,000 to their grandchild. Using gift splitting, what is the maximum they can give without using any of their lifetime exemption in 2025?';

-- =============================================================================
-- Fix 5: GSTT exemption $13.61M → $13.99M (00009)
-- =============================================================================
UPDATE questions
SET
  explanation = 'The GSTT imposes an additional tax on transfers that skip a generation (e.g., grandparent to grandchild), preventing families from avoiding one layer of estate/gift tax. The GSTT applies to direct skips, taxable distributions from trusts, and taxable terminations. Each person has a GSTT exemption (equal to the estate tax exemption, approximately $13.99 million for 2025).'
WHERE stem = 'The generation-skipping transfer tax (GSTT) is designed to prevent taxpayers from:';

-- =============================================================================
-- Fix 6: Taxable gift $25K — exclusion $18K → $19K (00009)
-- =============================================================================
UPDATE questions
SET
  choices = '["$25,000", "$6,000", "$0", "$19,000"]'::jsonb,
  explanation = 'The taxable gift equals the total gift minus the annual exclusion. For 2025, the annual exclusion is $19,000. Taxable gift = $25,000 - $19,000 = $6,000. This $6,000 reduces the taxpayer''s lifetime exemption ($13.99 million for 2025). No gift tax is actually owed unless the cumulative taxable gifts exceed the lifetime exemption.'
WHERE stem = 'A taxpayer makes a present interest gift of $25,000 to a friend in 2025. What is the taxable gift amount (before applying the lifetime exemption)?';

-- =============================================================================
-- Fix 7: Four-tier loss limitation — $305K/$610K → $313K/$626K (00009)
-- =============================================================================
UPDATE questions
SET
  explanation = 'The four-tier loss limitation is applied in order: (1) basis limitation (stock + direct loan basis), (2) at-risk limitation (Section 465), (3) passive activity limitation (Section 469), and (4) excess business loss limitation (Section 461(l), $313,000 single / $626,000 MFJ for 2025). Losses that pass one tier must still satisfy the next. Suspended losses at each tier carry forward separately.'
WHERE stem = 'The four-tier loss limitation for S corporation shareholders is applied in which order?';

-- =============================================================================
-- Fix 8: Gifts of $20K to five — exclusion $18K → $19K (00012)
-- =============================================================================
UPDATE questions
SET
  stem = 'In 2025, a taxpayer makes gifts of $20,000 each to five individuals. The annual exclusion is $19,000 per donee. What is the total amount of taxable gifts?',
  choices = '["$0", "$5,000", "$100,000", "$95,000"]'::jsonb,
  explanation = 'Each gift exceeds the $19,000 annual exclusion by $1,000. Taxable gifts per donee = $20,000 - $19,000 = $1,000. Total taxable gifts = $1,000 x 5 = $5,000.'
WHERE stem = 'In 2025, a taxpayer makes gifts of $20,000 each to five individuals. The annual exclusion is $18,000 per donee. What is the total amount of taxable gifts?';

-- =============================================================================
-- Fix 9: Gift splitting $50K — exclusion $18K → $19K (00012)
-- =============================================================================
UPDATE questions
SET
  stem = 'A married couple elects gift splitting on a $50,000 gift to their niece. The annual exclusion is $19,000 per donor per donee. What is the total taxable gift?',
  choices = '["$12,000", "$31,000", "$50,000", "$0"]'::jsonb,
  explanation = 'With gift splitting, each spouse is treated as giving $25,000. Each spouse applies the $19,000 annual exclusion: $25,000 - $19,000 = $6,000 taxable per spouse. Total taxable = $6,000 x 2 = $12,000.'
WHERE stem = 'A married couple elects gift splitting on a $50,000 gift to their niece. The annual exclusion is $18,000 per donor per donee. What is the total taxable gift?';

-- =============================================================================
-- Fix 10: Unified credit $13,610,000 → $13,990,000 (00012)
-- =============================================================================
UPDATE questions
SET
  stem = 'A donor makes a $5,018,000 taxable gift in Year 1 and a $6,000,000 taxable gift in Year 2 (after the annual exclusion). The unified credit shelters $13,990,000 of cumulative transfers. What is the gift tax owed in Year 2?',
  explanation = 'Cumulative taxable gifts = $5,018,000 + $6,000,000 = $11,018,000. This is below the $13,990,000 exemption. No gift tax is owed because the unified credit fully shelters both gifts.'
WHERE stem = 'A donor makes a $5,018,000 taxable gift in Year 1 and a $6,000,000 taxable gift in Year 2 (after the annual exclusion). The unified credit shelters $13,610,000 of cumulative transfers. What is the gift tax owed in Year 2?';

-- =============================================================================
-- Fix 11: ILIT Crummey powers — exclusion $18K → $19K (00012)
-- =============================================================================
UPDATE questions
SET
  choices = '["$40,000 taxable gift", "$0 because Crummey powers convert the gift to present interest", "Only the amount exceeding $19,000 is taxable", "The entire $3,000,000 is a taxable gift"]'::jsonb,
  explanation = 'Crummey withdrawal powers convert the premium payment to a present interest gift, qualifying for the annual exclusion. With 4 beneficiaries, the exclusion covers 4 x $19,000 = $76,000. Since the premium is $40,000 (less than $76,000), the entire gift is excluded.'
WHERE stem = 'An irrevocable life insurance trust (ILIT) owns a $3,000,000 policy on the grantor. Annual premiums are $40,000 paid by the grantor. The trust has 4 beneficiaries. With Crummey powers, the gift tax consequence is:';
