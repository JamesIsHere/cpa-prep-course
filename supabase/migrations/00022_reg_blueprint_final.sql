-- =============================================================================
-- REG Blueprint Final: Filing Status & Dependents, Tax-Exempt Organizations
-- (2 lessons, 20 questions — completes 100% REG blueprint coverage)
-- =============================================================================

-- Insert new REG lessons (section_id=3)
insert into lessons (section_id, title, slug, content_path, display_order, is_free) values
  (3, 'Filing Status and Dependents', '17-filing-status-dependents', 'reg/17-filing-status-dependents', 17, false),
  (3, 'Tax-Exempt Organizations', '18-tax-exempt-organizations', 'reg/18-tax-exempt-organizations', 18, false);

-- =============================================================================
-- Filing Status and Dependents (10 questions: 3 easy, 4 medium, 3 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(3, 'Individual Taxation: Filing/Credits',
 'Which of the following filing statuses provides the LARGEST standard deduction for 2025?',
 '["Single", "Head of Household", "Married Filing Jointly", "Married Filing Separately"]'::jsonb,
 2,
 'For 2025, the standard deduction amounts are: Single $15,000, HOH $22,500, MFJ $30,000, and MFS $15,000. Married Filing Jointly provides the largest standard deduction at $30,000. Qualifying Surviving Spouse also receives $30,000.',
 'easy'),

(3, 'Individual Taxation: Filing/Credits',
 'On what date is a taxpayer''s filing status determined?',
 '["January 1 of the tax year", "The date the return is filed", "December 31 of the tax year", "The date of the last significant life event"]'::jsonb,
 2,
 'Filing status is determined as of December 31 (the last day) of the tax year. If a taxpayer marries on December 31, they are considered married for the entire year. Similarly, if a taxpayer obtains a final decree of divorce on December 31, they are unmarried for the full year.',
 'easy'),

(3, 'Individual Taxation: Filing/Credits',
 'To claim a person as a qualifying child, which of the following tests does NOT need to be met?',
 '["Age test", "Residency test", "Gross income test", "Relationship test"]'::jsonb,
 2,
 'A qualifying child must meet the relationship (close relative), age, residency, and support (no self-support) tests. There is NO gross income test for a qualifying child — that test applies only to qualifying relatives. A qualifying child can earn any amount and still be claimed, provided the child did not provide more than half of their own support.',
 'easy'),

(3, 'Individual Taxation: Filing/Credits',
 'Sarah is unmarried and maintains a home where she lives with her 14-year-old daughter all year. Sarah pays all household expenses. Her daughter has $3,000 of part-time job income and does not provide more than half of her own support. What is Sarah''s most advantageous filing status?',
 '["Single", "Married Filing Separately", "Head of Household", "Qualifying Surviving Spouse"]'::jsonb,
 2,
 'Sarah qualifies for Head of Household: (1) she is unmarried on December 31, (2) she paid more than half the cost of maintaining the home, and (3) her daughter is a qualifying person (qualifying child under 19 who lived with her all year). HOH provides a $22,500 standard deduction and wider tax brackets than Single ($15,000).',
 'medium'),

(3, 'Individual Taxation: Filing/Credits',
 'Tom''s wife died in March 2024. Tom has not remarried and maintains a home for his 8-year-old dependent son for all of 2025. What is Tom''s filing status for 2025?',
 '["Single", "Head of Household", "Qualifying Surviving Spouse", "Married Filing Jointly"]'::jsonb,
 2,
 'Tom qualifies as a Qualifying Surviving Spouse for 2025. His wife died in 2024 (within the prior two years), he has not remarried, and he maintains a home as the principal residence of his dependent child for the entire year. QSS status is available for the two tax years following the year of death (2025 and 2026). In the year of death (2024), Tom would file MFJ.',
 'medium'),

(3, 'Individual Taxation: Filing/Credits',
 'Both Alex (AGI $55,000) and his mother Beth (AGI $80,000) live with Alex''s 7-year-old son Ethan all year. Both meet the qualifying child requirements for Ethan. Under the tiebreaker rules, who claims Ethan?',
 '["Beth, because she has the higher AGI", "Alex, because the parent takes priority over a non-parent", "The one who provides more than half of Ethan''s support", "Either one, at their choice"]'::jsonb,
 1,
 'Under the tiebreaker rules, when a parent and non-parent are both eligible to claim the same qualifying child, the parent has priority. Alex is Ethan''s parent, so Alex claims Ethan regardless of AGI. Beth (the grandmother) can only claim Ethan if Alex does not claim him.',
 'medium'),

(3, 'Individual Taxation: Filing/Credits',
 'Janet is married but lived apart from her spouse for the entire last 7 months of the year. She maintains a home for her qualifying child and files a separate return. Which of the following is true?',
 '["Janet must file as Married Filing Separately", "Janet may file as Head of Household under the considered-unmarried rule", "Janet must file as Single because she lived apart from her spouse", "Janet may file as Qualifying Surviving Spouse"]'::jsonb,
 1,
 'A married taxpayer may be considered unmarried for HOH purposes if: (1) they lived apart from their spouse for the last 6 months of the year, (2) they paid more than half the cost of maintaining a home, (3) a qualifying child lived in the home for more than half the year, and (4) they file a separate return. Janet meets all these conditions (7 months apart > 6 months required).',
 'medium'),

(3, 'Individual Taxation: Filing/Credits',
 'Karen, age 20 and a full-time college student, earned $18,000 from a summer job. She lives with her parents for 9 months of the year and does not provide more than half of her own support. Her parents'' AGI is $120,000. Can Karen''s parents claim her as a qualifying child?',
 '["No, because Karen''s income exceeds the gross income threshold of $5,050", "No, because Karen is over age 19", "Yes, because there is no gross income test for a qualifying child and she is under 24 as a full-time student", "Yes, but only if she earned less than the standard deduction amount"]'::jsonb,
 2,
 'Karen meets all qualifying child tests: (1) Relationship — she is their daughter, (2) Age — under 24 and a full-time student, (3) Residency — lived with parents more than half the year, (4) Support — did not provide more than half her own support. There is NO gross income test for a qualifying child, so her $18,000 income is irrelevant. The gross income test ($5,050) applies only to qualifying relatives.',
 'hard'),

(3, 'Individual Taxation: Filing/Credits',
 'George and his two siblings each contribute 25% of their elderly mother''s support. Their mother''s gross income is $3,000 and she does not live with any of them. A fourth sibling contributes the remaining 25%. Which of the following correctly describes how one of them may claim the mother as a dependent?',
 '["None can claim her because no one provides more than 50% of her support", "Any one of them can claim her outright since they are all related", "One sibling may claim her under a multiple support agreement if each other eligible sibling signs a waiver", "The sibling with the highest AGI automatically claims her"]'::jsonb,
 2,
 'When no single taxpayer provides more than 50% of a person''s support but a group collectively provides more than 50%, a multiple support agreement (Form 2120) allows one member of the group to claim the dependent. The claiming taxpayer must: (1) be eligible except for the 50% support test, (2) provide more than 10% of support, and (3) obtain written waivers from all other eligible group members. Each sibling provides 25% (>10%) and is related, so any one of them may claim the mother with the others'' consent.',
 'hard'),

(3, 'Individual Taxation: Filing/Credits',
 'David, who is unmarried, provides 100% of the financial support for his elderly mother who lives in a separate nursing home. His mother''s gross income is $4,500 and she is a U.S. citizen. David also maintains a separate home for himself. Can David claim Head of Household status?',
 '["No, because his mother does not live with him", "No, because his mother''s gross income exceeds the dependency threshold", "Yes, because a dependent parent does not need to live with the taxpayer for HOH purposes", "Yes, but only if his mother is permanently disabled"]'::jsonb,
 2,
 'Special exception for HOH: a dependent parent does NOT need to live with the taxpayer. David can claim HOH if he: (1) is unmarried, (2) pays more than half the cost of maintaining a home for his parent (including a separate home like a nursing home), and (3) can claim the parent as a dependent. His mother is a qualifying relative: support >50% (yes), gross income <$5,050 (yes, $4,500), relationship (yes), and not a qualifying child of anyone. David qualifies for HOH.',
 'hard');

-- =============================================================================
-- Tax-Exempt Organizations (10 questions: 3 easy, 4 medium, 3 hard)
-- =============================================================================

insert into questions (section_id, topic, stem, choices, correct_index, explanation, difficulty) values

(3, 'Tax-Exempt Organizations',
 'Which of the following activities is ABSOLUTELY PROHIBITED for a Section 501(c)(3) organization?',
 '["Lobbying on legislation related to its exempt purpose", "Paying reasonable salaries to its officers", "Participating in a political campaign for a candidate", "Investing in publicly traded securities"]'::jsonb,
 2,
 'Section 501(c)(3) organizations face an absolute prohibition on participating or intervening in any political campaign on behalf of or in opposition to any candidate for public office. Any political campaign activity can result in loss of exempt status. Lobbying is permitted if not a substantial part of activities. Paying reasonable compensation and investing are both allowed.',
 'easy'),

(3, 'Tax-Exempt Organizations',
 'Under the UBIT rules, which of the following types of income is generally EXCLUDED from unrelated business income?',
 '["Income from a commercial parking lot operated by a university", "Revenue from a hospital cafeteria open to the general public", "Dividend and interest income from investment securities", "Fees from consulting services unrelated to exempt purpose"]'::jsonb,
 2,
 'Passive investment income — including dividends, interest, annuities, royalties, and certain rents from real property — is specifically excluded from UBIT. The other options describe active business operations that would likely meet the three-part UBIT test (trade or business, regularly carried on, not substantially related).',
 'easy'),

(3, 'Tax-Exempt Organizations',
 'What is the SPECIFIC deduction amount allowed against unrelated business taxable income?',
 '["$500", "$1,000", "$5,000", "$12,000"]'::jsonb,
 1,
 'Section 512(b)(12) allows a specific deduction of $1,000 against unrelated business taxable income. This effectively exempts the first $1,000 of net UBI from tax. Organizations must file Form 990-T if gross UBI is $1,000 or more.',
 'easy'),

(3, 'Tax-Exempt Organizations',
 'A private foundation purchases a building from its founder at fair market value. Under Section 4941, what is the tax consequence?',
 '["No tax consequence because the transaction was at fair market value", "A 10% initial excise tax on the self-dealer and 5% on any knowing foundation manager", "A 1.39% tax on the foundation''s net investment income", "A 30% tax on the undistributed income of the foundation"]'::jsonb,
 1,
 'Self-dealing under Section 4941 is determined by the nature of the transaction, not whether the price is fair. Any sale, exchange, or leasing of property between a private foundation and a disqualified person (including the founder) is a prohibited act of self-dealing regardless of the terms. The initial tax is 10% of the amount involved on the self-dealer and 5% on any foundation manager who knowingly participated.',
 'medium'),

(3, 'Tax-Exempt Organizations',
 'A 501(c)(3) museum operates a gift shop that sells art books, prints, and educational materials related to its current exhibits. The shop is open to the public and generates $200,000 in annual revenue. Is this income subject to UBIT?',
 '["Yes, because the shop is regularly carried on and open to the public", "Yes, because the revenue exceeds $1,000", "No, because selling items related to the museum''s exempt educational purpose is a substantially related activity", "No, because all retail activity by exempt organizations is excluded from UBIT"]'::jsonb,
 2,
 'The key UBIT question is whether the activity is substantially related to the exempt purpose. A museum gift shop selling art books, prints, and educational materials related to current exhibits contributes importantly to the museum''s educational mission. The activity fails the third prong of the UBIT test (not substantially related), so the income is not subject to UBIT. If the shop primarily sold unrelated souvenirs, the analysis would differ.',
 'medium'),

(3, 'Tax-Exempt Organizations',
 'How many consecutive years of failure to file Form 990 (or 990-EZ or 990-N) results in automatic revocation of tax-exempt status?',
 '["One year", "Two consecutive years", "Three consecutive years", "Five consecutive years"]'::jsonb,
 2,
 'Under Section 6033(j), if an organization fails to file the required Form 990, 990-EZ, or 990-N for three consecutive years, its tax-exempt status is automatically revoked. The organization must then reapply for exemption. This automatic revocation provision was enacted by the Pension Protection Act of 2006.',
 'medium'),

(3, 'Tax-Exempt Organizations',
 'A private foundation has non-charitable-use assets valued at $10,000,000 at the end of the year. What is the MINIMUM amount the foundation must distribute for charitable purposes to avoid the Section 4942 excise tax?',
 '["$139,000 (1.39% of assets)", "$250,000 (2.5% of assets)", "$500,000 (5% of assets)", "$1,000,000 (10% of assets)"]'::jsonb,
 2,
 'Section 4942 requires private foundations to distribute at least 5% of the fair market value of their non-charitable-use assets annually for charitable purposes. For a foundation with $10,000,000 in non-charitable-use assets, the minimum distribution is $500,000. Failure to distribute the minimum amount triggers a 30% excise tax on the undistributed amount.',
 'medium'),

(3, 'Tax-Exempt Organizations',
 'A tax-exempt university owns a rental property that it purchased with a mortgage. The average acquisition indebtedness is $600,000 and the average adjusted basis of the property is $1,000,000. The property generates $80,000 in net rental income. How much of the rental income is subject to UBIT?',
 '["$0 — all rental income from real property is excluded", "$48,000", "$80,000", "$32,000"]'::jsonb,
 1,
 'While rents from real property are generally excluded from UBIT, the debt-financed property rules override this exclusion. The taxable percentage equals average acquisition indebtedness divided by average adjusted basis: $600,000 / $1,000,000 = 60%. The amount subject to UBIT is 60% x $80,000 = $48,000. The remaining $32,000 is excluded as real property rental income.',
 'hard'),

(3, 'Tax-Exempt Organizations',
 'A Section 501(c)(3) organization pays its CEO total compensation of $2,500,000 when comparable organizations pay $800,000 for similar positions. The board did not obtain independent compensation data before approving the package. Under Section 4958, what is the initial excise tax on the CEO?',
 '["10% of the excess benefit ($170,000)", "25% of the excess benefit ($425,000)", "25% of the total compensation ($625,000)", "No tax — intermediate sanctions only apply to private foundations"]'::jsonb,
 1,
 'Under Section 4958 intermediate sanctions, an excess benefit transaction between a 501(c)(3) and a disqualified person triggers excise taxes. The excess benefit is $2,500,000 − $800,000 = $1,700,000. The initial tax on the disqualified person (the CEO) is 25% of the excess benefit: 25% x $1,700,000 = $425,000. If the excess benefit is not corrected, an additional 200% tax applies. Section 4958 applies to 501(c)(3) and 501(c)(4) organizations, not just private foundations.',
 'hard'),

(3, 'Tax-Exempt Organizations',
 'An exempt organization operates a thrift store where 90% of the merchandise is donated by the public and the remaining 10% is purchased at wholesale. Substantially all of the labor is performed by paid employees. Which statement is correct regarding UBIT?',
 '["All thrift store income is excluded from UBIT because the goods are donated", "The income from the 90% donated goods is excluded but the 10% purchased goods income is subject to UBIT", "All income is subject to UBIT because the labor is not volunteer", "The donated goods exclusion applies because substantially all merchandise was donated — the income is excluded from UBIT"]'::jsonb,
 3,
 'The donated goods exclusion from UBIT applies when substantially all of the merchandise sold has been received as gifts or contributions. Since 90% of merchandise is donated, this threshold is met, and the entire thrift store income qualifies for the exclusion. The volunteer labor exclusion is a separate exclusion (substantially all work by volunteers); the donated goods exclusion does not require volunteer labor. The two exclusions are independent — meeting either one is sufficient.',
 'hard');
