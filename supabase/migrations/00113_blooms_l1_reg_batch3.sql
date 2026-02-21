-- Migration: Bloom's L1 rebalancing — REG batch 3 (47 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 47 L2 (Application) questions to L1 (Remember/Understand) depth for REG section
-- Affected topics: Tax-Exempt Organizations, Individual Taxation: Filing/Credits, Estate and Gift Tax, Professional Ethics in Tax, Business Law: Contracts, S Corporations, Individual Taxation: Deductions

BEGIN;

-- ============================================================
-- TAX-EXEMPT ORGANIZATIONS CONTINUED (8 questions)
-- ============================================================

-- ID 1273: Tax-Exempt Organizations — debt-financed income
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 514, what is debt-financed income for a tax-exempt organization?',
  choices = '["Income from property held for investment that was acquired or improved with borrowed funds, included in UBTI in proportion to the average acquisition indebtedness", "Any income earned by a tax-exempt organization that has outstanding debt obligations", "Income from property donated to the organization subject to a mortgage, which is always fully excluded from UBTI", "Revenue from fundraising events used to pay down organizational debt"]'::jsonb,
  explanation = 'Correct (A): Under Section 514, debt-financed income is income from debt-financed property — property held for the production of income that was acquired or improved with borrowed funds. The portion of income included in UBTI is based on the ratio of average acquisition indebtedness to the average adjusted basis of the property. (B) is wrong because not all income of an indebted organization is debt-financed income; only income from property acquired or improved with borrowed funds qualifies. (C) is wrong because donated property subject to a mortgage is not automatically excluded; the mortgage may constitute acquisition indebtedness. (D) is wrong because fundraising revenue used for debt repayment is not debt-financed income under Section 514.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1273;

-- ID 1275: Tax-Exempt Organizations — UBTI exclusions
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 513, which activities are excluded from unrelated business taxable income?',
  choices = '["Activities conducted by paid professional staff during regular business hours", "Activities in which substantially all the work is performed by volunteers, activities conducted primarily for the convenience of members, and qualified trade show activities", "Activities that generate less than $10,000 in annual gross revenue regardless of their nature", "Activities that are conducted on the organization''s own premises"]'::jsonb,
  explanation = 'Correct (B): Under Section 513(a), several modifications exclude certain activities from the definition of unrelated trade or business. These include activities in which substantially all the work is performed without compensation (volunteers), activities conducted by a Section 501(c)(3) organization or a state college primarily for the convenience of its members, students, patients, officers, or employees, and qualified public entertainment or trade show activities. (A) is wrong because using paid staff does not create an exclusion. (C) is wrong because there is no blanket $10,000 revenue exclusion from UBTI. (D) is wrong because location on the organization''s premises does not by itself exclude an activity from UBTI.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1275;

-- ID 2905: Tax-Exempt Organizations — Section 501(c)(3) requirements
-- correct_index = 2
UPDATE questions SET
  stem = 'What are the organizational requirements for Section 501(c)(3) status?',
  choices = '["The organization must be formed under state law and have at least three board members who are unrelated to each other", "The organization must have annual gross receipts under $1 million and file articles of incorporation with the IRS", "The organization must be organized and operated exclusively for exempt purposes, with no part of net earnings inuring to any private shareholder or individual", "The organization must be a corporation; trusts and unincorporated associations do not qualify for Section 501(c)(3) status"]'::jsonb,
  explanation = 'Correct (C): Under Section 501(c)(3), an organization must be organized and operated exclusively for religious, charitable, scientific, literary, or educational purposes, or for the prevention of cruelty to children or animals. No part of the net earnings may inure to the benefit of any private shareholder or individual. The organization must also not participate in political campaigns or engage in substantial lobbying. (A) is wrong because while state formation is typical, the specific board composition requirement described is not a Section 501(c)(3) requirement. (B) is wrong because there is no gross receipts limitation for 501(c)(3) status. (D) is wrong because trusts and unincorporated associations may also qualify for Section 501(c)(3) status.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2905;

-- ID 2906: Tax-Exempt Organizations — Form 1023
-- correct_index = 3
UPDATE questions SET
  stem = 'Which IRS form is used to apply for Section 501(c)(3) tax-exempt status?',
  choices = '["Form 990, which serves as both the annual return and the initial application for exempt status", "Form 1024, which is the universal application for all types of tax-exempt organizations", "Form 1120, filed with a special election to be treated as a tax-exempt entity", "Form 1023, Application for Recognition of Exemption Under Section 501(c)(3)"]'::jsonb,
  explanation = 'Correct (D): Form 1023 is the application used by organizations seeking recognition of exemption under Section 501(c)(3). Smaller organizations with gross receipts of $50,000 or less and assets of $250,000 or less may use the streamlined Form 1023-EZ. (A) is wrong because Form 990 is the annual information return for tax-exempt organizations, not the application for exemption. (B) is wrong because Form 1024 is used for organizations seeking exemption under sections other than 501(c)(3), such as 501(c)(4) or 501(c)(6). (C) is wrong because Form 1120 is the corporate income tax return and has no exempt-status election.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2906;

-- ID 2907: Tax-Exempt Organizations — jeopardizing activities
-- correct_index = 0
UPDATE questions SET
  stem = 'Which activities jeopardize an organization''s Section 501(c)(3) status?',
  choices = '["Participating in political campaigns, allowing net earnings to inure to private individuals, and engaging in substantial lobbying activities", "Receiving investment income from stocks, bonds, and mutual funds held in an endowment", "Conducting educational programs and publishing research findings related to the organization''s exempt purpose", "Paying reasonable compensation to officers and employees for services rendered to the organization"]'::jsonb,
  explanation = 'Correct (A): Three primary activities jeopardize Section 501(c)(3) status: (1) participation or intervention in any political campaign on behalf of or in opposition to any candidate for public office, (2) allowing net earnings to inure to the benefit of any private shareholder or individual (private inurement), and (3) engaging in more than an insubstantial amount of lobbying activity. (B) is wrong because receiving passive investment income does not jeopardize exempt status, though it may be subject to UBTI in limited circumstances. (C) is wrong because educational programs and research publication further the exempt purpose. (D) is wrong because paying reasonable compensation is permissible and does not constitute private inurement.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2907;

-- ID 2908: Tax-Exempt Organizations — passive investment income and UBTI
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 512, is passive investment income included in UBTI?',
  choices = '["Yes, all investment income earned by a tax-exempt organization is included in UBTI", "No, passive investment income such as dividends, interest, rents, and royalties is generally excluded from UBTI under Section 512(b)", "Yes, but only if the investment income exceeds 50% of the organization''s total gross receipts", "No, because tax-exempt organizations are prohibited from earning any investment income"]'::jsonb,
  explanation = 'Correct (B): Under Section 512(b), certain types of passive investment income are specifically excluded from UBTI, including dividends, interest, payments with respect to securities loans, annuities, royalties, and rents from real property (with certain exceptions). These exclusions recognize that passive investment activities are not a trade or business. (A) is wrong because the exclusions in Section 512(b) specifically remove most passive income from UBTI. (C) is wrong because there is no 50% gross receipts threshold for including investment income. (D) is wrong because tax-exempt organizations are permitted to earn investment income.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2908;

-- ID 2909: Tax-Exempt Organizations — Form 990 requirement
-- correct_index = 2
UPDATE questions SET
  stem = 'What is the annual information return requirement for tax-exempt organizations?',
  choices = '["Tax-exempt organizations must file Form 1120 annually with the IRS", "Tax-exempt organizations are not required to file any annual returns with the IRS", "Most tax-exempt organizations must file Form 990 (or Form 990-EZ or 990-N) annually, disclosing financial information, governance, and activities", "Tax-exempt organizations must file Form 1040 with a schedule showing their exempt income"]'::jsonb,
  explanation = 'Correct (C): Under Section 6033, most tax-exempt organizations are required to file an annual information return. Form 990 is filed by larger organizations, Form 990-EZ by organizations with gross receipts under $200,000 and assets under $500,000, and Form 990-N (e-postcard) by organizations with gross receipts normally $50,000 or less. These returns disclose the organization''s finances, governance, and program activities. (A) is wrong because Form 1120 is the corporate income tax return for taxable corporations. (B) is wrong because most exempt organizations have an annual filing requirement; failure to file for three consecutive years results in automatic revocation. (D) is wrong because Form 1040 is the individual income tax return.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2909;

-- ID 2910: Tax-Exempt Organizations — political activity prohibition
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 501(c)(3), what is the rule regarding political campaign activity?',
  choices = '["Section 501(c)(3) organizations may engage in political campaign activity as long as it constitutes less than 10% of total expenditures", "Section 501(c)(3) organizations may endorse candidates if the endorsement is nonpartisan and educational in nature", "Section 501(c)(3) organizations may make political contributions if they are funded from a segregated political action committee", "Section 501(c)(3) organizations are absolutely prohibited from participating or intervening in any political campaign on behalf of or in opposition to any candidate for public office"]'::jsonb,
  explanation = 'Correct (D): Under Section 501(c)(3), there is an absolute prohibition on participation or intervention in any political campaign on behalf of or in opposition to any candidate for public office. Unlike the lobbying limitation, which permits an insubstantial amount, the political campaign prohibition is absolute. Violation can result in loss of tax-exempt status and imposition of excise taxes under Section 4955. (A) is wrong because there is no 10% safe harbor; the prohibition is absolute. (B) is wrong because endorsing candidates, even if characterized as nonpartisan, constitutes prohibited political activity. (C) is wrong because Section 501(c)(3) organizations may not establish or fund political action committees.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2910;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (7 questions)
-- ============================================================

-- ID 1261: Individual Taxation — multiple support agreement
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 152, what is a multiple support agreement?',
  choices = '["An agreement among two or more taxpayers who together provide more than 50% of an individual''s support, allowing one qualifying contributor to claim the dependency exemption", "A contract between divorced parents that assigns the dependency exemption to the noncustodial parent", "An IRS form filed by siblings to split the dependency exemption equally among all contributors", "A court order requiring multiple family members to provide equal financial support for an elderly relative"]'::jsonb,
  explanation = 'Correct (A): Under Section 152(d)(3), a multiple support agreement allows one taxpayer to claim a dependent when no single taxpayer provides more than 50% of the individual''s support, but two or more taxpayers together provide more than 50%. The claiming taxpayer must have contributed more than 10% of the support, and each other qualifying contributor must sign a written declaration (Form 2120) agreeing not to claim the individual. (B) is wrong because divorced parent arrangements are governed by Section 152(e), not the multiple support agreement rules. (C) is wrong because the exemption is not split; only one taxpayer claims it. (D) is wrong because a multiple support agreement is a voluntary tax arrangement, not a court order.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1261;

-- ID 1264: Individual Taxation — multiple support agreement percentage
-- correct_index = 1
UPDATE questions SET
  stem = 'What percentage of support must a taxpayer provide to claim a dependent under a multiple support agreement?',
  choices = '["At least 50% of the individual''s total support for the calendar year", "More than 10% of the individual''s total support for the calendar year", "At least 25% of the individual''s total support for the calendar year", "Any amount of support, regardless of the percentage, as long as all other contributors agree"]'::jsonb,
  explanation = 'Correct (B): Under Section 152(d)(3), to claim a dependency exemption under a multiple support agreement, the taxpayer must have contributed more than 10% of the individual''s total support for the calendar year. Additionally, no single contributor may have provided more than 50%, and the group collectively must provide more than 50%. (A) is wrong because if one person provided at least 50%, they would claim the dependent without needing a multiple support agreement. (C) is wrong because the threshold is more than 10%, not 25%. (D) is wrong because a minimum contribution of more than 10% is required.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1264;

-- ID 2724: Individual Taxation — head of household requirements
-- correct_index = 2
UPDATE questions SET
  stem = 'What are the requirements to file as head of household?',
  choices = '["The taxpayer must be married and maintain a home for a qualifying child for the entire year", "The taxpayer must be single or considered unmarried, have no qualifying dependents, and maintain a household alone", "The taxpayer must be unmarried or considered unmarried at the end of the year, pay more than half the cost of maintaining a home, and have a qualifying person living in the home for more than half the year", "The taxpayer must be widowed within the past year and have at least one qualifying child under age 18"]'::jsonb,
  explanation = 'Correct (C): To file as head of household under Section 2(b), the taxpayer must be unmarried or considered unmarried at the end of the tax year, pay more than half the cost of maintaining a home for the year, and have a qualifying person (such as a qualifying child or qualifying relative) live in the home for more than half the year. An exception applies for dependent parents who need not live with the taxpayer. (A) is wrong because a married taxpayer generally cannot file as head of household unless considered unmarried under Section 7703(b). (B) is wrong because a qualifying person is required. (D) is wrong because the requirements are broader than described and the child age limit is not 18 for this purpose.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2724;

-- ID 2725: Individual Taxation — qualifying surviving spouse
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 2, what is the qualifying surviving spouse filing status?',
  choices = '["A filing status available to any surviving spouse regardless of whether they have dependents", "A filing status available to a surviving spouse who remarries within the year of the deceased spouse''s death", "A filing status available only in the year the spouse died, using the same tax rates as married filing jointly", "A filing status available for two years following the year of the spouse''s death, provided the surviving spouse maintains a household for a qualifying dependent child"]'::jsonb,
  explanation = 'Correct (D): Under Section 2(a), the qualifying surviving spouse (formerly qualifying widow or widower) filing status is available for two tax years following the year of the spouse''s death. The surviving spouse must not have remarried, must maintain a household that is the principal place of abode for a dependent child, and must pay more than half the cost of maintaining that household. This status allows use of the married filing jointly tax rates and standard deduction. (A) is wrong because a qualifying dependent child is required. (B) is wrong because remarriage disqualifies the surviving spouse from this status. (C) is wrong because in the year of death, the couple may file a joint return; the qualifying surviving spouse status applies in the two subsequent years.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2725;

-- ID 2726: Individual Taxation — qualifying surviving spouse duration
-- correct_index = 0
UPDATE questions SET
  stem = 'How many years after a spouse''s death can the surviving spouse use qualifying surviving spouse status?',
  choices = '["Two tax years following the year of the spouse''s death", "One tax year following the year of the spouse''s death", "Three tax years following the year of the spouse''s death", "Five tax years following the year of the spouse''s death"]'::jsonb,
  explanation = 'Correct (A): Under Section 2(a), the qualifying surviving spouse filing status is available for two tax years following the year of the spouse''s death, provided the surviving spouse has not remarried and maintains a household for a qualifying dependent child. For example, if a spouse dies in 2025, the surviving spouse may use this status for tax years 2026 and 2027. (B) is wrong because the benefit extends for two years, not one. (C) is wrong because the duration is two years, not three. (D) is wrong because five years exceeds the statutory period.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2726;

-- ID 2727: Individual Taxation — married filing as head of household
-- correct_index = 1
UPDATE questions SET
  stem = 'Under what circumstances may a married taxpayer file as head of household?',
  choices = '["A married taxpayer may never file as head of household under any circumstances", "A married taxpayer may file as head of household if they lived apart from their spouse for the last six months of the year, paid more than half the cost of maintaining a home, and have a qualifying dependent", "A married taxpayer may file as head of household if both spouses agree to the filing status in writing", "A married taxpayer may file as head of household if they earned more income than their spouse during the tax year"]'::jsonb,
  explanation = 'Correct (B): Under Section 7703(b), a married taxpayer is considered unmarried and may file as head of household if they: (1) file a separate return, (2) paid more than half the cost of maintaining a home that was the principal residence of a qualifying child for more than half the year, (3) lived apart from the spouse during the last six months of the tax year, and (4) the home was the taxpayer''s principal place of abode for more than half the year. (A) is wrong because the considered-unmarried rule in Section 7703(b) allows this. (C) is wrong because spousal agreement is not a factor. (D) is wrong because relative income does not determine eligibility.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2727;

-- ID 2728: Individual Taxation — qualifying child tests
-- correct_index = 2
UPDATE questions SET
  stem = 'What tests must be met for a child to qualify as a dependent under Section 152?',
  choices = '["The child must be under age 16, live with the taxpayer, and have no earned income", "The child must be related to the taxpayer by blood and have gross income below the personal exemption amount", "The child must meet the relationship test, age test, residency test, and support test, and must not file a joint return with a spouse", "The child must be a U.S. citizen, have a Social Security number, and be claimed by the parent with the higher adjusted gross income"]'::jsonb,
  explanation = 'Correct (C): Under Section 152(c), a qualifying child must meet four tests: (1) the relationship test — the child must be a son, daughter, stepchild, foster child, sibling, or descendant of any of these; (2) the age test — under age 19, or under 24 if a full-time student, or permanently and totally disabled at any age; (3) the residency test — the child must live with the taxpayer for more than half the year; and (4) the support test — the child must not have provided more than half of their own support. Additionally, the child must not file a joint return with a spouse (except to claim a refund). (A) is wrong because the age limit is 19, not 16, and having earned income does not disqualify a child. (B) is wrong because relationship includes more than blood relatives and the gross income test applies to qualifying relatives, not qualifying children. (D) is wrong because while a Social Security number is needed for the dependency deduction, the tiebreaker rules, not the higher AGI alone, determine which parent claims the child.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2728;

-- ============================================================
-- ESTATE AND GIFT TAX (7 questions)
-- ============================================================

-- ID 565: Estate and Gift Tax — GSTT purpose
-- correct_index = 3
UPDATE questions SET
  stem = 'What is the purpose of the generation-skipping transfer tax (GSTT)?',
  choices = '["To encourage taxpayers to make lifetime gifts rather than bequests at death", "To impose an additional tax on transfers of property between spouses of different generations", "To replace the estate tax for transfers exceeding the unified credit amount", "To prevent taxpayers from avoiding estate and gift taxes by transferring property to grandchildren or more remote descendants, skipping the intermediate generation"]'::jsonb,
  explanation = 'Correct (D): The generation-skipping transfer tax (GSTT) under Chapter 13 of the IRC (Sections 2601-2664) prevents taxpayers from avoiding transfer taxes by skipping one or more generations. Without the GSTT, a grandparent could transfer property directly to a grandchild, bypassing the estate or gift tax that would have been imposed had the property passed through the intermediate (child) generation. The GSTT applies to direct skips, taxable terminations, and taxable distributions. (A) is wrong because the GSTT does not incentivize lifetime gifts; it imposes additional tax on generation-skipping transfers. (B) is wrong because the GSTT applies to generational skipping, not inter-spousal transfers. (C) is wrong because the GSTT supplements rather than replaces the estate tax.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 565;

-- ID 568: Estate and Gift Tax — annual gift exclusion
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 2503(b), what is the annual gift tax exclusion?',
  choices = '["An exclusion that allows a donor to give up to a specified dollar amount per donee per year without incurring gift tax or using any unified credit", "An exclusion that applies only to gifts made to charitable organizations", "An exclusion available only to married donors who elect gift splitting on Form 709", "An exclusion that allows a donor to give an unlimited amount to any individual once per lifetime"]'::jsonb,
  explanation = 'Correct (A): Under Section 2503(b), the annual gift tax exclusion allows a donor to transfer up to a specified dollar amount (indexed for inflation) per donee per calendar year without the transfer being treated as a taxable gift. The exclusion applies per donee, so a donor may give the exclusion amount to any number of donees each year. Only present interest gifts qualify for the annual exclusion. (B) is wrong because the annual exclusion applies to gifts to any donee, not just charitable organizations. Charitable gifts have their own unlimited deduction under Section 2522. (C) is wrong because the annual exclusion is available to any donor; gift splitting under Section 2513 doubles the exclusion for married couples but is not required. (D) is wrong because the exclusion is an annual per-donee limit, not a one-time lifetime amount.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 568;

-- ID 2756: Estate and Gift Tax — unified credit
-- correct_index = 1
UPDATE questions SET
  stem = 'What is the purpose of the unified estate and gift tax credit?',
  choices = '["To provide a dollar-for-dollar reduction in income taxes for taxpayers who make charitable gifts during their lifetime", "To provide a credit that offsets estate and gift taxes on a cumulative amount of transfers, effectively exempting a base amount of transfers from tax", "To eliminate all estate taxes for surviving spouses regardless of the size of the estate", "To provide a deduction from gross income for funeral and estate administration expenses"]'::jsonb,
  explanation = 'Correct (B): The unified credit under Sections 2010 (estate tax) and 2505 (gift tax) provides a credit against transfer taxes that effectively exempts a base amount of cumulative lifetime and testamentary transfers from estate and gift tax. The credit is based on the applicable exclusion amount, which is indexed for inflation. The credit is unified because the same cumulative exclusion applies to both lifetime gifts and transfers at death. (A) is wrong because the unified credit applies to transfer taxes, not income taxes. (C) is wrong because the unlimited marital deduction under Section 2056 is the provision for spouse-to-spouse transfers, not the unified credit. (D) is wrong because estate administration expenses are deductible under Section 2053, not through the unified credit.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2756;

-- ID 2757: Estate and Gift Tax — taxable gift calculation
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 2503, how is the taxable gift calculated?',
  choices = '["Total gifts made during the year minus the unified credit amount", "Total gifts made during the year minus the standard deduction for gift tax purposes", "Total gifts made during the year minus the annual exclusion per donee, the marital deduction, and the charitable deduction", "Total gifts made during the year minus a flat 50% exclusion for gifts to family members"]'::jsonb,
  explanation = 'Correct (C): Taxable gifts are calculated by taking the total value of gifts made during the calendar year and subtracting the annual exclusion under Section 2503(b) for each qualifying donee, the marital deduction under Section 2523 for gifts to a spouse, and the charitable deduction under Section 2522 for gifts to qualifying charitable organizations. The unified credit is then applied against the resulting tax, not as a deduction from the gift amount. (A) is wrong because the unified credit reduces the tax liability, not the taxable gift amount. (B) is wrong because there is no standard deduction for gift tax purposes. (D) is wrong because there is no flat 50% exclusion for family gifts.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2757;

-- ID 2760: Estate and Gift Tax — gift splitting
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 2513, what is gift splitting?',
  choices = '["A requirement that both spouses must each give separate gifts to the same donee to qualify for the annual exclusion", "A provision allowing a donor to divide a single gift among multiple donees to maximize annual exclusions", "A rule requiring that gifts of community property be reported equally by both spouses", "An election allowing married donors to treat a gift made by one spouse as made one-half by each spouse for gift tax purposes"]'::jsonb,
  explanation = 'Correct (D): Under Section 2513, married donors may elect to treat a gift made by one spouse as if each spouse made one-half of the gift. This effectively doubles the annual exclusion amount available for each donee. Both spouses must consent to gift splitting, and if elected, it applies to all gifts made by either spouse during the calendar year. The election is made on Form 709. (A) is wrong because gift splitting applies to a gift made by one spouse, not requiring separate gifts from each. (B) is wrong because gift splitting involves treating one spouse''s gift as made by both spouses, not dividing a gift among donees. (C) is wrong because gift splitting is an elective provision for all married couples, not a community property reporting rule.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2760;

-- ID 2761: Estate and Gift Tax — medical expense exclusion
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 2503(e), which payments are excluded from the gift tax?',
  choices = '["Payments made directly to an educational institution for tuition or directly to a medical care provider for medical expenses on behalf of any individual", "Payments made to any individual for the purpose of covering their educational or medical expenses", "Payments made to a trust established for the benefit of the donee''s education and healthcare needs", "Payments made to an individual''s health insurance company for premiums, but only if the donor is a family member"]'::jsonb,
  explanation = 'Correct (A): Under Section 2503(e), qualified transfers are excluded from the gift tax. These include amounts paid on behalf of an individual directly to an educational organization for tuition and amounts paid directly to a provider of medical care. The payments must be made directly to the institution or provider, not to the individual. There is no relationship requirement and no dollar limit. (B) is wrong because payments must be made directly to the institution or provider, not to the individual. (C) is wrong because payments to a trust do not qualify for the Section 2503(e) exclusion. (D) is wrong because the exclusion applies to amounts paid directly to any medical care provider, not only insurance premiums, and there is no family relationship requirement.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2761;

-- ID 2762: Estate and Gift Tax — gross estate
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 2001, what is included in a decedent''s gross estate?',
  choices = '["Only property physically located in the United States at the time of the decedent''s death", "The fair market value of all property in which the decedent had an interest at the time of death, including real property, personal property, and certain transfers made during life", "Only property that passes through probate; non-probate transfers such as joint tenancy and life insurance are excluded", "Only property titled solely in the decedent''s name, excluding jointly held property and trust assets"]'::jsonb,
  explanation = 'Correct (B): Under Sections 2031-2044, the gross estate includes the fair market value at the date of death (or alternate valuation date under Section 2032) of all property in which the decedent had an interest, including real and personal property, tangible and intangible assets, certain lifetime transfers with retained interests (Section 2036-2038), life insurance proceeds (Section 2042), jointly held property (Section 2040), and property subject to a general power of appointment (Section 2041). (A) is wrong because for U.S. citizens and residents, worldwide property is included. (C) is wrong because non-probate transfers including life insurance and joint tenancy are included in the gross estate. (D) is wrong because jointly held property and trust assets may be included under various Code sections.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2762;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (7 questions)
-- ============================================================

-- ID 253: Professional Ethics — error on prior return
-- correct_index = 2
UPDATE questions SET
  stem = 'Under SSTS No. 6, what is a CPA''s responsibility upon discovering an error in a prior-year return?',
  choices = '["The CPA must immediately file an amended return on behalf of the client without the client''s knowledge or consent", "The CPA must report the error to the IRS within 30 days of discovery", "The CPA should promptly advise the client of the error and recommend corrective action, but the decision to file an amended return is the client''s responsibility", "The CPA must withdraw from the engagement and notify the state board of accountancy"]'::jsonb,
  explanation = 'Correct (C): Under SSTS No. 6 (Knowledge of Error: Return Preparation and Administrative Proceedings), when a CPA becomes aware of an error in a previously filed return or of a client''s failure to file a required return, the CPA should promptly advise the client of the error and recommend the corrective measures to be taken. However, the CPA is not obligated to inform the IRS, and the decision to correct the error or file an amended return remains the client''s responsibility. (A) is wrong because the CPA may not file an amended return without the client''s consent. (B) is wrong because there is no requirement to report the error directly to the IRS. (D) is wrong because discovering an error does not require withdrawal from the engagement or notification to the state board.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 253;

-- ID 2405: Professional Ethics — client noncompliance under Circular 230
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Circular 230, what is a practitioner''s obligation upon learning of client noncompliance?',
  choices = '["The practitioner must immediately notify the IRS Criminal Investigation Division", "The practitioner must terminate the engagement and refuse to represent the client in any future matters", "The practitioner must file corrective returns on behalf of the client within 60 days", "The practitioner must advise the client promptly of the noncompliance, the consequences, and the corrective steps to be taken"]'::jsonb,
  explanation = 'Correct (D): Under Circular 230, when a practitioner learns of client noncompliance with tax obligations, the practitioner must advise the client promptly of the fact of the noncompliance, the consequences of the noncompliance, and the corrective steps to be taken. The practitioner is not required to report the client to the IRS; the client-practitioner relationship and confidentiality are maintained. (A) is wrong because there is no requirement to notify the IRS Criminal Investigation Division. (B) is wrong because the practitioner is not required to terminate the engagement; they must advise the client. (C) is wrong because the practitioner does not file corrective returns without the client''s authorization; the corrective action is the client''s decision.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2405;

-- ID 2407: Professional Ethics — use of estimates
-- correct_index = 0
UPDATE questions SET
  stem = 'Under SSTS No. 4, when is a CPA permitted to use estimates on a tax return?',
  choices = '["When precise data is not readily available and the use of estimates is reasonable based on the facts and circumstances known to the CPA", "Only when the IRS has issued specific guidance authorizing the use of estimates for that particular item", "Only when the estimated amount is less than $500 and is immaterial to the overall tax liability", "Never — SSTS No. 4 requires exact figures for all items reported on a tax return"]'::jsonb,
  explanation = 'Correct (A): Under SSTS No. 4 (Use of Estimates), a CPA may use estimates in preparing a tax return when it is impracticable to obtain exact data and the CPA determines that the estimates are reasonable based on the facts and circumstances known to the CPA. The CPA should not imply greater accuracy than exists by presenting estimates as exact figures. (B) is wrong because IRS authorization is not required for using reasonable estimates. (C) is wrong because there is no $500 materiality threshold for using estimates. (D) is wrong because SSTS No. 4 expressly permits the use of reasonable estimates.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2407;

-- ID 2409: Professional Ethics — unanswered questions
-- correct_index = 1
UPDATE questions SET
  stem = 'Under SSTS No. 2, when may a CPA leave a question unanswered on a tax return?',
  choices = '["A CPA may leave any question unanswered without limitation as long as the overall return is materially correct", "A CPA may leave a question unanswered when the information is not readily available and the answer is not significant in terms of taxable income or loss, or the tax liability", "A CPA may leave a question unanswered only if the client provides a written directive refusing to answer the question", "A CPA may never leave a question unanswered; all questions on a tax return must be completed"]'::jsonb,
  explanation = 'Correct (B): Under SSTS No. 2 (Answers to Questions on Returns), a CPA should make a reasonable effort to obtain information to answer all questions on a return. However, certain questions may be left unanswered when the information is not readily available and the answer is not significant in determining the correct tax liability. The CPA should consider whether the omission may cause the return to be deemed incomplete or create a presumption of negligence. (A) is wrong because leaving questions unanswered is not unlimited; significance must be evaluated. (C) is wrong because a client''s written directive is not the standard; the CPA must evaluate significance. (D) is wrong because SSTS No. 2 permits omissions in appropriate circumstances.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2409;

-- ID 2410: Professional Ethics — software calculation errors
-- correct_index = 2
UPDATE questions SET
  stem = 'Under SSTS No. 3, what is a CPA''s responsibility for software calculation errors?',
  choices = '["The CPA has no responsibility because the software vendor assumes all liability for calculation errors", "The CPA is responsible only if the CPA personally wrote or modified the tax preparation software", "The CPA should review the tax return for reasonableness and accuracy, including certain tax return procedures, and is responsible for the proper use of software in the return preparation process", "The CPA must independently verify every calculation on the return by hand before filing"]'::jsonb,
  explanation = 'Correct (C): Under SSTS No. 3 (Certain Procedural Aspects of Preparing Returns), a CPA has a responsibility to review the return for reasonableness. While a CPA may rely on tax preparation software for mathematical accuracy, the CPA is responsible for the appropriate use of the software, the input of data, and the review of the output for reasonableness. This includes checking that the software applied the correct tax rates, limitations, and phase-outs. (A) is wrong because the CPA retains professional responsibility regardless of the software used. (B) is wrong because responsibility applies regardless of whether the CPA wrote the software. (D) is wrong because manual verification of every calculation is not required; a review for reasonableness is the standard.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2410;

-- ID 2412: Professional Ethics — tax position standard
-- correct_index = 3
UPDATE questions SET
  stem = 'Under SSTS No. 1, what standard must a CPA meet to recommend a tax position?',
  choices = '["The CPA must be certain that the tax position will be sustained if challenged by the IRS", "The CPA must obtain a private letter ruling from the IRS before recommending any aggressive position", "The CPA must ensure the position has at least a 75% probability of being sustained on its merits", "The CPA must have a good-faith belief that the position has a realistic possibility of being sustained on its merits if challenged"]'::jsonb,
  explanation = 'Correct (D): Under SSTS No. 1 (Tax Return Positions), a CPA should not recommend a tax return position or prepare or sign a return taking a position unless the CPA has a good-faith belief that the position has at least a realistic possibility of being sustained administratively or judicially on its merits if challenged. This standard aligns with the realistic possibility standard. (A) is wrong because certainty is not required; a realistic possibility is the threshold. (B) is wrong because obtaining a private letter ruling is not required before recommending a position. (C) is wrong because the standard is realistic possibility, which is generally interpreted as approximately a one-in-three likelihood, not 75%.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2412;

-- ID 2413: Professional Ethics — form and content of advice
-- correct_index = 0
UPDATE questions SET
  stem = 'Under SSTS No. 7, what are the requirements for the form and content of tax advice?',
  choices = '["A CPA should use professional judgment to determine the form of advice appropriate to the situation, considering factors such as the importance of the transaction, the complexity of the issue, and whether there is a need for a written record", "A CPA must always provide tax advice in writing, signed and dated, with copies retained in the client file for at least seven years", "A CPA may provide tax advice orally only for matters involving less than $10,000 in potential tax liability", "A CPA must provide tax advice using standardized IRS-approved templates and formats"]'::jsonb,
  explanation = 'Correct (A): Under SSTS No. 7 (Form and Content of Advice), a CPA may communicate tax advice in any form appropriate to the circumstances. The CPA should use professional judgment to determine whether the advice should be written or oral, considering factors such as the importance of the transaction, the dollar amount involved, the specificity of the client''s request, the complexity of the issue, and the likelihood that the client may be challenged. (B) is wrong because written advice is not always required; the form depends on the circumstances. (C) is wrong because there is no $10,000 threshold determining the required form. (D) is wrong because there are no standardized IRS-approved templates for tax advice.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2413;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (6 questions)
-- ============================================================

-- ID 498: Business Law — UCC buyer remedies
-- correct_index = 1
UPDATE questions SET
  stem = 'Under the UCC, what remedy is available to a buyer when a seller breaches a contract for goods?',
  choices = '["The buyer may only sue for punitive damages to penalize the seller for the breach", "The buyer may cover by purchasing substitute goods in good faith and recover the difference between the cover price and the contract price from the seller", "The buyer must accept the nonconforming goods and negotiate a price reduction with the seller", "The buyer may demand specific performance only if the goods are available from other sources"]'::jsonb,
  explanation = 'Correct (B): Under UCC Section 2-712, when a seller breaches, the buyer may cover by making a reasonable purchase of substitute goods in good faith and without unreasonable delay. The buyer may then recover from the seller the difference between the cost of cover and the contract price, plus incidental and consequential damages, less expenses saved. (A) is wrong because the UCC does not generally provide for punitive damages; remedies are compensatory. (C) is wrong because the buyer is not required to accept nonconforming goods; under the perfect tender rule (UCC 2-601), the buyer may reject. (D) is wrong because specific performance under UCC 2-716 is available when goods are unique or in other proper circumstances, typically when cover is not available.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 498;

-- ID 595: Business Law — express warranty
-- correct_index = 2
UPDATE questions SET
  stem = 'Under the UCC, what is an express warranty?',
  choices = '["A warranty implied by law in every sale of goods, regardless of any statements made by the seller", "A warranty that arises only when the seller provides a separate written guarantee document to the buyer", "A warranty created by the seller''s affirmation of fact, promise, description of goods, or sample or model that becomes part of the basis of the bargain", "A warranty that covers only defects in materials and workmanship for a period of one year from the date of purchase"]'::jsonb,
  explanation = 'Correct (C): Under UCC Section 2-313, an express warranty is created when the seller makes an affirmation of fact or promise relating to the goods, provides a description of the goods, or provides a sample or model, and that representation becomes part of the basis of the bargain. No specific formal words such as warranty or guarantee are required, and the seller need not intend to create a warranty. (A) is wrong because that describes an implied warranty, not an express warranty. (B) is wrong because an express warranty does not require a separate written document; it may arise from oral statements. (D) is wrong because express warranties are not limited to materials and workmanship or to a one-year period.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 595;

-- ID 2452: Business Law — mirror image rule
-- correct_index = 3
UPDATE questions SET
  stem = 'Under common law, what is the mirror image rule for contract acceptance?',
  choices = '["An acceptance is valid as long as it agrees with the material terms of the offer, even if minor terms differ", "An acceptance must be communicated within the same medium as the offer to be valid", "An acceptance may include additional terms that automatically become part of the contract", "An acceptance must match the exact terms of the offer without any modifications; any change in terms constitutes a counteroffer rather than an acceptance"]'::jsonb,
  explanation = 'Correct (D): Under common law, the mirror image rule requires that an acceptance must be an unequivocal assent to the exact terms of the offer. If the purported acceptance changes, adds, or deletes any term of the offer, it is not an acceptance but rather a counteroffer, which the original offeror may then accept or reject. This rule applies to contracts for services and real estate. (A) is wrong because the common law mirror image rule does not distinguish between material and minor terms; any deviation is a counteroffer. (B) is wrong because the medium of communication is not the subject of the mirror image rule. (C) is wrong because under common law, additional terms in an acceptance create a counteroffer; the UCC Section 2-207 modifies this rule for goods.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2452;

-- ID 2453: Business Law — offer termination
-- correct_index = 0
UPDATE questions SET
  stem = 'Under common law, when does an offer terminate?',
  choices = '["An offer terminates upon revocation by the offeror before acceptance, rejection by the offeree, counteroffer by the offeree, lapse of a stated or reasonable time, or death or incapacity of either party", "An offer terminates only when the offeror sends a written notice of revocation to the offeree", "An offer terminates only upon the expiration of a stated time period; if no time is stated, the offer remains open indefinitely", "An offer terminates only when the offeree explicitly communicates a rejection to the offeror"]'::jsonb,
  explanation = 'Correct (A): Under common law, an offer may terminate in several ways: (1) revocation by the offeror communicated to the offeree before acceptance, (2) rejection by the offeree, (3) counteroffer by the offeree (which serves as both a rejection and a new offer), (4) lapse of the time stated in the offer or, if no time is stated, lapse of a reasonable time, and (5) death or legal incapacity of either the offeror or offeree. Additionally, destruction of the subject matter or supervening illegality terminates the offer. (B) is wrong because revocation need not always be written and is not the only method of termination. (C) is wrong because offers without a stated time do not remain open indefinitely; they lapse after a reasonable time. (D) is wrong because termination can occur through methods other than explicit rejection.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2453;

-- ID 2454: Business Law — past consideration
-- correct_index = 1
UPDATE questions SET
  stem = 'Under common law, is past consideration valid to support a contract?',
  choices = '["Yes, past consideration is always valid because any prior benefit conferred creates a binding obligation", "No, past consideration is generally not valid because consideration must be bargained for and given in exchange for the promise at the time of the agreement", "Yes, but only if the past consideration involved a payment of money rather than a service", "No, past consideration is invalid unless it is documented in a written agreement signed by both parties"]'::jsonb,
  explanation = 'Correct (B): Under common law, past consideration is generally not valid to support a contract. Consideration must involve a bargained-for exchange, meaning the promise and the consideration must be exchanged at the time of the agreement. A benefit previously conferred, without any prior request or agreement, cannot serve as consideration for a subsequent promise because it was not given in exchange for that promise. (A) is wrong because past actions are not bargained-for exchanges. (C) is wrong because the form of past consideration (money versus service) does not make it valid. (D) is wrong because the issue is the timing of the consideration relative to the promise, not whether it is documented in writing.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2454;

-- ID 2455: Business Law — promissory estoppel
-- correct_index = 2
UPDATE questions SET
  stem = 'What is the doctrine of promissory estoppel?',
  choices = '["A rule that prevents a party from asserting rights under a contract that has been fully performed by both sides", "A rule that bars a party from denying the existence of a written contract when both parties have signed the agreement", "A doctrine that enforces a promise without consideration when the promisor should reasonably expect the promisee to rely on the promise, the promisee does in fact rely to their detriment, and injustice can be avoided only by enforcing the promise", "A doctrine that prevents a party from making oral promises that contradict the terms of a written contract"]'::jsonb,
  explanation = 'Correct (C): Promissory estoppel, as stated in Restatement (Second) of Contracts Section 90, applies when (1) a promisor makes a promise, (2) the promisor should reasonably expect the promise to induce action or forbearance by the promisee, (3) the promisee in fact relies on the promise to their detriment, and (4) injustice can be avoided only by enforcement of the promise. Promissory estoppel is a substitute for consideration and makes a promise enforceable even without a bargained-for exchange. (A) is wrong because that describes a fully performed contract, not promissory estoppel. (B) is wrong because that describes a different concept related to contract formation. (D) is wrong because that describes the parol evidence rule, not promissory estoppel.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2455;

-- ============================================================
-- S CORPORATIONS (6 questions)
-- ============================================================

-- ID 86: S Corporations — loss allocation
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 1366, how are S corporation losses allocated to shareholders?',
  choices = '["Losses are allocated equally among all shareholders regardless of ownership percentage", "Losses are allocated first to shareholders who materially participate in the business", "Losses are allocated based on each shareholder''s capital contributions during the tax year", "Losses are allocated on a per-share, per-day basis according to each shareholder''s percentage of stock ownership"]'::jsonb,
  explanation = 'Correct (D): Under Section 1366(a), each S corporation shareholder''s pro rata share of the corporation''s items of income, loss, deduction, and credit is determined on a per-share, per-day basis. Each shareholder''s allocation is based on the percentage of outstanding shares owned on each day of the corporation''s tax year. If ownership changes during the year, the allocation is prorated. (A) is wrong because allocation is based on ownership percentage, not equal distribution. (B) is wrong because material participation affects the character of the loss (passive vs. active) but not the allocation. (C) is wrong because allocation is based on stock ownership percentage, not capital contributions.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 86;

-- ID 579: S Corporations — accumulated adjustments account
-- correct_index = 0
UPDATE questions SET
  stem = 'What is the purpose of an S corporation''s accumulated adjustments account (AAA)?',
  choices = '["The AAA tracks the cumulative net income, losses, and distributions of the S corporation during the S election period to determine the tax treatment of distributions to shareholders", "The AAA tracks the total capital contributions made by shareholders since the corporation''s inception", "The AAA records the corporation''s total tax liability for each year of the S election", "The AAA measures the fair market value of the corporation''s assets for purposes of the built-in gains tax"]'::jsonb,
  explanation = 'Correct (A): The accumulated adjustments account (AAA) is a corporate-level account that tracks the cumulative adjustments to S corporation income, losses, deductions, and distributions during the S election period. The AAA is used to determine the tax treatment of distributions to shareholders. Distributions from the AAA are generally tax-free to the extent of the shareholder''s stock basis, while distributions exceeding the AAA may be treated as dividends from accumulated earnings and profits (if the corporation has C corporation E&P). (B) is wrong because capital contributions are tracked through the shareholders'' basis, not the AAA. (C) is wrong because the AAA does not track tax liabilities. (D) is wrong because the built-in gains tax under Section 1374 uses the net unrealized built-in gain, not the AAA.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 579;

-- ID 581: S Corporations — excess net passive income tax
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 1375, when does the excess net passive income tax apply to an S corporation?',
  choices = '["When an S corporation has any amount of passive income, regardless of whether it has accumulated earnings and profits", "When an S corporation has accumulated earnings and profits from its C corporation years and its passive investment income exceeds 25% of gross receipts", "When an S corporation has been in existence for more than five years and has not distributed all of its retained earnings", "When an S corporation''s total income exceeds the corporate tax threshold regardless of the source of income"]'::jsonb,
  explanation = 'Correct (B): Under Section 1375, the excess net passive income tax applies to an S corporation that has accumulated earnings and profits from C corporation years (Subchapter C earnings and profits) and passive investment income exceeding 25% of gross receipts. The tax is imposed at the highest corporate rate on the excess net passive income. If passive investment income exceeds 25% of gross receipts for three consecutive years while the corporation has C corporation E&P, the S election is terminated under Section 1362(d)(3). (A) is wrong because accumulated C corporation earnings and profits must exist for the tax to apply. (C) is wrong because the tax is not based on the corporation''s age or undistributed earnings alone. (D) is wrong because the tax specifically targets passive investment income when C corporation E&P exists.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 581;

-- ID 585: S Corporations — built-in gains tax
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 1374, what is the built-in gains tax for S corporations?',
  choices = '["A tax on all capital gains realized by an S corporation during the first year of the S election", "A tax on gains from the sale of inventory held by the S corporation at the time of conversion", "A tax imposed on the net recognized built-in gain attributable to assets held at the time of conversion from C to S corporation status, recognized within the recognition period", "A tax on gains from the sale of goodwill created during the C corporation years"]'::jsonb,
  explanation = 'Correct (C): Under Section 1374, the built-in gains (BIG) tax is imposed at the corporate level on net recognized built-in gain attributable to assets that had appreciation at the time the corporation converted from C to S status, to the extent the gain is recognized during the recognition period (generally five years under current law). The tax is imposed at the highest corporate tax rate. The purpose is to prevent corporations from converting to S status to avoid corporate-level tax on gains that accrued during C corporation years. (A) is wrong because the tax applies only to built-in gains existing at the time of conversion, not all capital gains. (B) is wrong because the tax applies to all types of appreciated assets, not just inventory. (D) is wrong because goodwill is just one type of asset that may be subject to the built-in gains tax.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 585;

-- ID 2813: S Corporations — election timing
-- correct_index = 3
UPDATE questions SET
  stem = 'By what date must an S election be filed to be effective for the current tax year?',
  choices = '["By the last day of the corporation''s tax year", "By April 15 of the following tax year", "By June 30 of the current tax year", "By the 15th day of the third month of the tax year (March 15 for calendar-year corporations)"]'::jsonb,
  explanation = 'Correct (D): Under Section 1362(b), to be effective for the current tax year, the S election on Form 2553 must be filed no later than two months and 15 days after the beginning of the tax year. For a calendar-year corporation, this deadline is March 15. If the election is filed after this date, it becomes effective for the following tax year. All shareholders must consent to the election. (A) is wrong because filing by the last day of the year would make the election effective for the following year, not the current year. (B) is wrong because April 15 is past the deadline for calendar-year corporations. (C) is wrong because June 30 is past the March 15 deadline for calendar-year corporations.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2813;

-- ID 2814: S Corporations — income allocation
-- correct_index = 0
UPDATE questions SET
  stem = 'How is S corporation income allocated among shareholders?',
  choices = '["Income is allocated on a per-share, per-day basis according to each shareholder''s ownership percentage throughout the tax year", "Income is allocated based on the capital contributions made by each shareholder during the year", "Income is allocated equally among all shareholders regardless of the number of shares owned", "Income is allocated based on each shareholder''s participation in management decisions"]'::jsonb,
  explanation = 'Correct (A): Under Section 1366(a), S corporation income is allocated to shareholders on a per-share, per-day basis. Each shareholder reports their pro rata share of the corporation''s items of income, loss, deduction, and credit based on the percentage of outstanding shares they own on each day of the corporation''s tax year. If ownership changes during the year, the corporation may also elect under Section 1377(a)(2) to treat the year as having two short years. (B) is wrong because allocation is based on share ownership, not capital contributions. (C) is wrong because allocation is proportional to ownership, not equal. (D) is wrong because management participation does not determine income allocation.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2814;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (6 questions)
-- ============================================================

-- ID 2650: Individual Taxation — standard deduction
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 63, what is the standard deduction?',
  choices = '["A deduction equal to 10% of the taxpayer''s adjusted gross income, available to all taxpayers", "A fixed dollar amount that reduces adjusted gross income, available to taxpayers who do not itemize deductions, with the amount varying by filing status", "A deduction for unreimbursed employee expenses available to all wage earners", "A deduction that replaces the personal exemption for taxpayers with dependents"]'::jsonb,
  explanation = 'Correct (B): Under Section 63(c), the standard deduction is a fixed dollar amount (indexed for inflation) that taxpayers may subtract from adjusted gross income instead of itemizing deductions. The amount varies by filing status: separate amounts are specified for single filers, married filing jointly, married filing separately, and head of household. Additional standard deduction amounts are available for taxpayers who are age 65 or older or blind. (A) is wrong because the standard deduction is a fixed dollar amount, not a percentage of AGI. (C) is wrong because unreimbursed employee expenses are an itemized deduction (and largely suspended under the TCJA). (D) is wrong because the standard deduction and the personal exemption are separate provisions.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2650;

-- ID 2653: Individual Taxation — HSA purpose
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 223, what is the purpose of a Health Savings Account (HSA)?',
  choices = '["A tax-exempt account that allows any taxpayer to save for medical expenses regardless of their health insurance coverage", "A flexible spending account established by an employer that must be used within the calendar year or the balance is forfeited", "A tax-advantaged savings account available to individuals enrolled in a high-deductible health plan, used to pay for qualified medical expenses with pre-tax dollars", "A mandatory payroll deduction account for Medicare taxes established under the Affordable Care Act"]'::jsonb,
  explanation = 'Correct (C): Under Section 223, a Health Savings Account (HSA) is a tax-advantaged account available to individuals covered under a high-deductible health plan (HDHP). Contributions are deductible (above-the-line), earnings grow tax-free, and distributions for qualified medical expenses are excluded from income. To be eligible, the individual must be covered by an HDHP and cannot be enrolled in Medicare or claimed as a dependent. (A) is wrong because HSA eligibility requires enrollment in a high-deductible health plan. (B) is wrong because that describes a flexible spending account (FSA), not an HSA; HSA balances roll over indefinitely. (D) is wrong because HSAs are voluntary savings accounts, not mandatory payroll deductions for Medicare.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2653;

-- ID 2654: Individual Taxation — self-employed health insurance
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 162(l), how is the self-employed health insurance deduction treated?',
  choices = '["As an itemized deduction on Schedule A subject to the 7.5% AGI floor", "As a business expense reported on Schedule C that reduces net self-employment income", "As a credit against self-employment tax liability", "As an above-the-line deduction from gross income on the front page of the return, not subject to the AGI floor for medical expenses"]'::jsonb,
  explanation = 'Correct (D): Under Section 162(l), self-employed individuals may deduct the cost of health insurance premiums for themselves, their spouse, their dependents, and their children under age 27 as an above-the-line deduction (adjustment to gross income). This deduction is taken on the front page of the return and reduces AGI. It is not subject to the 7.5% AGI floor that applies to itemized medical expense deductions. (A) is wrong because the deduction is above the line, not an itemized deduction. (B) is wrong because while it relates to self-employment, it is deducted as an adjustment to income, not on Schedule C, and does not reduce self-employment income for SE tax purposes. (C) is wrong because it is a deduction, not a credit.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2654;

-- ID 2655: Individual Taxation — self-employment tax deduction
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 164(f), what deduction is available for self-employment tax?',
  choices = '["A deduction for one-half of the self-employment tax paid, taken as an above-the-line adjustment to gross income", "A deduction for the full amount of self-employment tax paid, taken as an itemized deduction on Schedule A", "A credit equal to 50% of self-employment tax that reduces the taxpayer''s income tax liability dollar for dollar", "A deduction for self-employment tax paid, but only to the extent it exceeds 2% of adjusted gross income"]'::jsonb,
  explanation = 'Correct (A): Under Section 164(f), self-employed individuals are allowed a deduction equal to one-half of the self-employment tax imposed under Section 1401 for the taxable year. This deduction is taken as an above-the-line adjustment to gross income (reducing AGI). The rationale is that employed taxpayers do not include the employer''s share of FICA in income, so self-employed taxpayers receive a corresponding deduction for the equivalent of the employer''s share. (B) is wrong because the deduction is for one-half, not the full amount, and is above the line, not an itemized deduction. (C) is wrong because it is a deduction, not a credit. (D) is wrong because there is no 2% AGI floor for this deduction.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2655;

-- ID 2656: Individual Taxation — student loan interest deduction
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 221, what is the student loan interest deduction?',
  choices = '["A deduction for all interest paid on any education-related loan, with no dollar limit", "An above-the-line deduction for interest paid on qualified education loans, subject to an annual dollar limit and income phase-out", "An itemized deduction available only to taxpayers who also claim the American Opportunity Credit", "A deduction available only for interest paid on federal student loans, not private loans"]'::jsonb,
  explanation = 'Correct (B): Under Section 221, taxpayers may deduct interest paid on qualified education loans as an above-the-line adjustment to gross income, up to an annual maximum (currently $2,500). The deduction is subject to income-based phase-outs based on modified adjusted gross income. A qualified education loan is a loan incurred solely to pay qualified higher education expenses. (A) is wrong because there is an annual dollar cap on the deduction. (C) is wrong because the student loan interest deduction is an above-the-line deduction and may be taken regardless of whether the taxpayer claims education credits, though coordination rules may apply. (D) is wrong because the deduction applies to interest on any qualified education loan, including private loans that meet the definition.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2656;

-- ID 2658: Individual Taxation — H.R. 1 deduction changes
-- correct_index = 2
UPDATE questions SET
  stem = 'Under H.R. 1, which deductions are available for individual taxpayers?',
  choices = '["All deductions available before 2018 remain unchanged, with no modifications from the Tax Cuts and Jobs Act", "The personal exemption was doubled and the standard deduction was reduced to encourage more taxpayers to itemize", "The standard deduction was nearly doubled, the personal exemption was suspended, and the state and local tax (SALT) deduction was capped", "The standard deduction was eliminated and replaced with a universal tax credit available to all filers"]'::jsonb,
  explanation = 'Correct (C): The Tax Cuts and Jobs Act (H.R. 1, enacted in December 2017) made several significant changes to individual deductions: the standard deduction was nearly doubled (to $12,000 single / $24,000 MFJ for 2018, indexed for inflation), the personal exemption under Section 151 was suspended (reduced to zero), and the state and local tax (SALT) deduction under Section 164 was capped at $10,000 ($5,000 for married filing separately). Other changes included suspension of miscellaneous itemized deductions subject to the 2% floor and modifications to the mortgage interest deduction. (A) is wrong because TCJA made substantial changes effective 2018-2025. (B) is wrong because the standard deduction was increased, not reduced, and the personal exemption was suspended, not doubled. (D) is wrong because the standard deduction was not eliminated.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2658;

COMMIT;