-- Migration: Bloom's L1 rebalancing — REG batch 4 (32 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 32 L2 (Application) questions to L1 (Remember/Understand) depth for REG section
-- Affected topics: Individual Taxation: Credits, Agency and Regulation, Individual Taxation: Credits/AMT, Tax Procedures, Federal Tax Procedures, Debtor-Creditor Relationships, Alternative Minimum Tax, Business Structures, Government Regulation of Business, Property Transactions: Basis continued

BEGIN;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (6 questions)
-- ============================================================

-- ID 553: Individual Taxation: Credits — American Opportunity Credit
-- correct_index = 0
UPDATE questions SET
  stem = 'What is the American Opportunity Tax Credit?',
  choices = '["A partially refundable credit of up to $2,500 per eligible student for qualified education expenses during the first four years of postsecondary education", "A nonrefundable credit of up to $2,000 per taxpayer for any level of postsecondary education including graduate school", "A refundable credit of up to $4,000 per household for tuition and fees at accredited colleges and universities", "A deduction of up to $2,500 for education expenses that reduces adjusted gross income rather than tax liability"]'::jsonb,
  explanation = 'Correct (A): Under Section 25A(i), the American Opportunity Tax Credit provides a maximum credit of $2,500 per eligible student (100% of the first $2,000 plus 25% of the next $2,000 of qualified education expenses). It is available for the first four years of postsecondary education and is 40% refundable (up to $1,000). (B) is wrong because the AOTC maximum is $2,500, it is per student not per taxpayer, and it is limited to the first four years, not all levels of education. (C) is wrong because the credit is only 40% refundable and caps at $2,500, not $4,000. (D) is wrong because the AOTC is a tax credit, not a deduction.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 553;

-- ID 554: Individual Taxation: Credits — Foreign tax credit purpose
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 901, what is the purpose of the foreign tax credit?',
  choices = '["To exempt all foreign-source income from U.S. taxation", "To prevent double taxation by allowing U.S. taxpayers to credit income taxes paid to foreign governments against their U.S. tax liability", "To provide a deduction for foreign taxes paid that reduces adjusted gross income", "To allow foreign nationals working in the U.S. to offset their home country tax obligations"]'::jsonb,
  explanation = 'Correct (B): Under Section 901, the foreign tax credit allows U.S. taxpayers to claim a dollar-for-dollar credit against their U.S. income tax liability for income taxes paid or accrued to foreign countries or U.S. possessions. The purpose is to mitigate double taxation of income that is taxed by both the U.S. and a foreign jurisdiction. (A) is wrong because foreign-source income is still included in U.S. taxable income; the credit only offsets the tax, not the income inclusion. (C) is wrong because the foreign tax credit is a credit against tax, not a deduction from income (though taxpayers may elect to deduct instead under Section 164). (D) is wrong because the credit is for U.S. taxpayers paying foreign taxes, not for foreign nationals.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 554;

-- ID 555: Individual Taxation: Credits — AMT preference items
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 56, what are AMT adjustment items?',
  choices = '["Credits that reduce the regular tax liability but are disallowed for AMT purposes", "Income items that are excluded from both regular tax and AMT calculations", "Items that must be recalculated differently for AMT purposes, such as depreciation, passive activity losses, and net operating losses", "Deductions that are allowed at the same amount for both regular tax and AMT purposes"]'::jsonb,
  explanation = 'Correct (C): Under Section 56, AMT adjustment items are items of income, deduction, or loss that must be recomputed under alternative rules for AMT purposes. Common adjustments include depreciation (MACRS must be recomputed using the AMT system), passive activity losses (recomputed using AMT income and deductions), and net operating losses (limited to 90% of AMTI). (A) is wrong because credits are handled separately under Section 53, not as adjustment items. (B) is wrong because AMT adjustments are items that are treated differently, not excluded from both systems. (D) is wrong because the defining characteristic of an adjustment item is that it is calculated differently for AMT than for regular tax.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 555;

-- ID 557: Individual Taxation: Credits — AMT adjustments
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 56, which of the following is an adjustment for AMT purposes?',
  choices = '["Charitable contribution deductions", "Standard deduction amounts", "Personal casualty loss deductions", "Depreciation on tangible personal property placed in service after 1986"]'::jsonb,
  explanation = 'Correct (D): Under Section 56(a)(1), depreciation on tangible personal property placed in service after 1986 must be recomputed for AMT purposes using the 150% declining balance method over the asset''s AMT class life instead of the regular MACRS method. This difference between regular and AMT depreciation is an adjustment item. (A) is wrong because charitable contributions are generally allowed in full for AMT purposes. (B) is wrong because the standard deduction is a preference item disallowed under Section 56(b)(1)(E), not an adjustment. (C) is wrong because personal casualty losses are allowed for AMT if they meet the general requirements of Section 165.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 557;

-- ID 559: Individual Taxation: Credits — AMT exemption amount
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 55, what is the AMT exemption amount?',
  choices = '["A fixed dollar amount subtracted from alternative minimum taxable income before applying AMT rates, which varies by filing status", "A percentage of adjusted gross income that is excluded from the AMT calculation", "A credit applied against the tentative minimum tax after all AMT adjustments", "The amount of regular tax liability that is excluded from comparison with the tentative minimum tax"]'::jsonb,
  explanation = 'Correct (A): Under Section 55(d), the AMT exemption amount is a fixed dollar amount that is subtracted from alternative minimum taxable income (AMTI) before the AMT rates are applied. The exemption varies by filing status: for example, married filing jointly receive a higher exemption than single filers. The exemption phases out at higher income levels at a rate of 25 cents per dollar of AMTI above the threshold. (B) is wrong because the exemption is a flat dollar amount, not a percentage of AGI. (C) is wrong because the exemption reduces AMTI before computing tentative minimum tax, not after. (D) is wrong because the exemption relates to AMTI, not to regular tax liability.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 559;

-- ID 561: Individual Taxation: Credits — Kiddie tax
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 1(g), what is the kiddie tax?',
  choices = '["A reduced tax rate applied to all income earned by children under age 18", "A provision that taxes a child''s unearned income above a threshold at the parent''s marginal tax rate", "A surtax imposed on parents who claim dependents with earned income", "A penalty tax assessed when a child fails to file a separate tax return"]'::jsonb,
  explanation = 'Correct (B): Under Section 1(g), the kiddie tax applies to the net unearned income of certain children. Unearned income (such as interest, dividends, and capital gains) above a specified threshold is taxed at the parent''s marginal tax rate rather than the child''s lower rate. The provision applies to children under age 19 (or under age 24 if a full-time student) who have unearned income above the threshold. (A) is wrong because the kiddie tax does not reduce rates; it increases the rate on unearned income to the parent''s rate. (C) is wrong because the kiddie tax is imposed on the child''s unearned income, not as a surtax on the parent. (D) is wrong because the kiddie tax is not a filing penalty.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 561;

-- ============================================================
-- AGENCY AND REGULATION (4 questions)
-- ============================================================

-- ID 500: Agency and Regulation — Securities Act Section 11 liability
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 11 of the Securities Act of 1933, who may be liable to purchasers?',
  choices = '["Only the issuer of the securities", "Only the underwriters who sold the securities to the public", "Every person who signed the registration statement, directors, named experts (including accountants), and underwriters", "Only persons who made oral misrepresentations during the sale of securities"]'::jsonb,
  explanation = 'Correct (C): Under Section 11 of the Securities Act of 1933, liability extends to every person who signed the registration statement, every director of the issuer, every person named as being or about to become a director, every accountant or other expert who certified any part of the registration statement, and every underwriter. These parties may be liable to any person acquiring the security if the registration statement contained an untrue statement of a material fact or omitted a material fact. (A) is wrong because Section 11 extends liability beyond the issuer to other parties. (B) is wrong because underwriters are liable, but so are signers, directors, and named experts. (D) is wrong because Section 11 concerns written misstatements in the registration statement, not oral misrepresentations.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 500;

-- ID 502: Agency and Regulation — Securities Act exemptions
-- correct_index = 3
UPDATE questions SET
  stem = 'Under the Securities Act of 1933, which securities are exempt from registration?',
  choices = '["All securities sold by publicly traded companies on national exchanges", "Securities sold exclusively through broker-dealers licensed by the SEC", "Securities backed by personal guarantees of the company''s officers and directors", "Government securities, bank securities, and short-term commercial paper with maturities of nine months or less"]'::jsonb,
  explanation = 'Correct (D): Under Section 3 of the Securities Act of 1933, certain classes of securities are exempt from registration requirements. These include securities issued or guaranteed by the U.S. government or any state, securities issued by banks, and short-term commercial paper or banker''s acceptances with maturities not exceeding nine months. (A) is wrong because publicly traded securities on national exchanges are registered, not exempt from registration. (B) is wrong because the method of sale through broker-dealers does not create an exemption. (C) is wrong because personal guarantees do not create a registration exemption.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 502;

-- ID 503: Agency and Regulation — Ultramares doctrine
-- correct_index = 0
UPDATE questions SET
  stem = 'Under the Ultramares doctrine, to whom is an accountant liable for ordinary negligence?',
  choices = '["Only to the client with whom the accountant has privity of contract", "To any person who foreseeably relies on the accountant''s work product", "To all third parties who suffer financial loss from the accountant''s error", "To regulatory agencies that oversee the accountant''s professional conduct"]'::jsonb,
  explanation = 'Correct (A): Under the Ultramares doctrine established in Ultramares Corp. v. Touche (1931), an accountant is liable for ordinary negligence only to those with whom the accountant is in privity of contract (the client) or near privity. The court held that extending liability for negligence to an unlimited class of third parties would impose an indeterminate liability to an indeterminate class. (B) is wrong because the foreseeability standard is the broadest approach (adopted by some jurisdictions) and is not the Ultramares rule. (C) is wrong because Ultramares specifically rejected liability to all third parties for ordinary negligence. (D) is wrong because Ultramares addresses civil liability to private parties, not regulatory oversight.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 503;

-- ID 504: Agency and Regulation — 1934 Act reporting
-- correct_index = 1
UPDATE questions SET
  stem = 'Under the Securities Exchange Act of 1934, what triggers periodic reporting requirements?',
  choices = '["Having annual revenue exceeding $1 million from securities-related activities", "Having securities listed on a national exchange or having total assets exceeding $10 million and a class of equity securities held by 2,000 or more persons", "Selling securities to more than 50 investors in a single calendar year", "Being organized as a corporation under the laws of any U.S. state"]'::jsonb,
  explanation = 'Correct (B): Under Section 12 of the Securities Exchange Act of 1934, an issuer must register a class of securities and comply with periodic reporting requirements (10-K, 10-Q, 8-K filings) if its securities are listed on a national securities exchange or if the issuer has total assets exceeding $10 million and a class of equity securities held of record by 2,000 or more persons (or 500 or more persons who are not accredited investors). (A) is wrong because the trigger is based on assets and shareholder count, not revenue from securities activities. (C) is wrong because the threshold is based on holders of record, not the number of investors in a single transaction. (D) is wrong because mere incorporation does not trigger reporting obligations.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 504;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (4 questions)
-- ============================================================

-- ID 81: Individual Taxation: Credits/AMT — Lifetime Learning Credit
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 25A, what is the Lifetime Learning Credit?',
  choices = '["A refundable credit of up to $2,500 per student for the first four years of postsecondary education", "A deduction for qualified tuition and fees that reduces adjusted gross income", "A nonrefundable credit equal to 20% of up to $10,000 in qualified tuition and fees, available for an unlimited number of years", "A credit of up to $1,000 per dependent child enrolled in an accredited educational institution"]'::jsonb,
  explanation = 'Correct (C): Under Section 25A(c), the Lifetime Learning Credit equals 20% of qualified tuition and related expenses, up to a maximum of $10,000 in expenses per return ($2,000 maximum credit). Unlike the American Opportunity Credit, the Lifetime Learning Credit is available for an unlimited number of tax years and covers undergraduate, graduate, and professional degree courses. It is nonrefundable. (A) is wrong because the $2,500 refundable credit describes the American Opportunity Tax Credit, not the Lifetime Learning Credit. (B) is wrong because the Lifetime Learning Credit is a credit against tax liability, not a deduction. (D) is wrong because the credit is per return (not per child) and the maximum is $2,000.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 81;

-- ID 2704: Individual Taxation: Credits/AMT — AMT tax rates
-- correct_index = 3
UPDATE questions SET
  stem = 'What tax rates are used to compute the alternative minimum tax?',
  choices = '["A single flat rate of 20% applied to all alternative minimum taxable income", "Graduated rates ranging from 10% to 37% matching the regular tax brackets", "A flat rate of 15% on the first $100,000 and 28% on the excess", "A two-tier rate structure of 26% on the first portion and 28% on the amount exceeding the threshold"]'::jsonb,
  explanation = 'Correct (D): Under Section 55(b)(1), the alternative minimum tax uses a two-tier rate structure. The first portion of alternative minimum taxable income (AMTI) in excess of the exemption amount is taxed at 26%, and amounts exceeding the breakpoint threshold are taxed at 28%. For long-term capital gains and qualified dividends, the preferential capital gains rates apply under the AMT as well. (A) is wrong because the AMT uses two rates (26% and 28%), not a single 20% rate. (B) is wrong because the AMT has its own rate structure separate from the regular graduated brackets. (C) is wrong because the AMT rates are 26% and 28%, not 15% and 28%.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2704;

-- ID 2705: Individual Taxation: Credits/AMT — AMT preference items
-- correct_index = 0
UPDATE questions SET
  stem = 'Which of the following is an AMT preference item?',
  choices = '["Tax-exempt interest on private activity bonds issued after August 7, 1986", "Mortgage interest on a primary residence", "Employer-provided health insurance premiums", "State and local income taxes paid during the tax year"]'::jsonb,
  explanation = 'Correct (A): Under Section 57(a)(5), tax-exempt interest on specified private activity bonds issued after August 7, 1986, is a preference item that must be added back to taxable income when computing alternative minimum taxable income (AMTI). This is one of the most commonly tested AMT preference items. (B) is wrong because mortgage interest on a primary residence (acquisition indebtedness) is allowed for both regular tax and AMT purposes. (C) is wrong because employer-provided health insurance premiums are excluded from income for both regular and AMT purposes. (D) is wrong because state and local income taxes are an adjustment item (disallowed for AMT under Section 56(b)(1)(A)), not a preference item under Section 57.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2705;

-- ID 2706: Individual Taxation: Credits/AMT — ISO exercise and AMT
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 56, how does the exercise of incentive stock options (ISOs) affect the AMT?',
  choices = '["The exercise of ISOs creates a deduction that reduces alternative minimum taxable income", "The excess of fair market value over the exercise price at the time of exercise is an AMT adjustment that increases AMTI", "The exercise of ISOs is excluded from both regular tax and AMT calculations", "ISO exercises are taxed as ordinary income for AMT purposes at the 28% rate"]'::jsonb,
  explanation = 'Correct (B): Under Section 56(b)(3), when incentive stock options are exercised, the excess of the stock''s fair market value over the exercise price (the bargain element) is an adjustment item for AMT purposes. While this spread is not recognized for regular tax purposes at exercise (under Section 421(a)), it must be included in AMTI. (A) is wrong because ISO exercises increase AMTI rather than creating a deduction. (C) is wrong because while ISOs are excluded from regular tax at exercise, they are included as an AMT adjustment. (D) is wrong because the ISO adjustment increases AMTI and is then taxed at the applicable AMT rates (26%/28%), not as a separate ordinary income item at a flat rate.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2706;

-- ============================================================
-- TAX PROCEDURES (3 questions)
-- ============================================================

-- ID 245: Tax Procedures — Fraud penalty
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 6663, what is the penalty for a fraudulent tax return?',
  choices = '["A penalty of 20% of the underpayment attributable to negligence", "A penalty of 25% of the tax due, assessed in addition to interest on the deficiency", "A penalty of 75% of the portion of the underpayment attributable to fraud", "A flat penalty of $5,000 for each fraudulent return filed"]'::jsonb,
  explanation = 'Correct (C): Under Section 6663, if any part of an underpayment of tax is due to fraud, a penalty of 75% of the portion of the underpayment attributable to fraud is imposed. The IRS bears the burden of proving fraud by clear and convincing evidence. Once fraud is established for any portion, the entire underpayment is treated as attributable to fraud unless the taxpayer proves otherwise. (A) is wrong because the 20% penalty under Section 6662 applies to negligence, not fraud. (B) is wrong because the fraud penalty is 75% of the underpayment attributable to fraud, not 25% of tax due. (D) is wrong because the fraud penalty is a percentage of the underpayment, not a flat dollar amount.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 245;

-- ID 2431: Tax Procedures — 90-day letter
-- correct_index = 3
UPDATE questions SET
  stem = 'What is the purpose of a statutory notice of deficiency (90-day letter)?',
  choices = '["To inform the taxpayer that an audit has been initiated and request supporting documentation", "To notify the taxpayer that a refund claim has been denied and no further administrative review is available", "To demand immediate payment of the assessed tax deficiency plus penalties and interest", "To notify the taxpayer of a proposed tax deficiency and provide 90 days to petition the Tax Court before assessment"]'::jsonb,
  explanation = 'Correct (D): Under Section 6212, the IRS must issue a statutory notice of deficiency (commonly called a 90-day letter) before assessing additional tax. The notice informs the taxpayer of the proposed deficiency and gives the taxpayer 90 days (150 days if addressed outside the U.S.) to file a petition with the U.S. Tax Court. If the taxpayer does not petition within the statutory period, the IRS may assess the deficiency. (A) is wrong because audit initiation is communicated through different correspondence, not the statutory notice. (B) is wrong because refund claim denials are communicated through a notice of claim disallowance. (C) is wrong because the 90-day letter proposes a deficiency; assessment and collection cannot occur until the petition period expires.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2431;

-- ID 2432: Tax Procedures — Appeals process
-- correct_index = 0
UPDATE questions SET
  stem = 'How does a taxpayer appeal the results of an IRS examination?',
  choices = '["By requesting a conference with the IRS Office of Appeals, which provides an independent review of the disputed issues", "By filing a complaint directly with the U.S. Supreme Court within 30 days of the examination report", "By submitting a written protest to the examining agent who conducted the audit", "By contacting their congressional representative to intervene on their behalf with the IRS"]'::jsonb,
  explanation = 'Correct (A): After an IRS examination, a taxpayer who disagrees with the findings may request an appeal with the IRS Office of Appeals (now called the Independent Office of Appeals under the Taxpayer First Act). The Appeals Office provides an independent review of the case and has settlement authority. For deficiencies exceeding $25,000, a formal written protest is required. (B) is wrong because taxpayers cannot bypass lower courts to file directly with the U.S. Supreme Court. (C) is wrong because the protest is submitted to the Appeals Office, not back to the examining agent. (D) is wrong because congressional intervention is not a formal part of the tax appeals process.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2432;

-- ============================================================
-- FEDERAL TAX PROCEDURES (3 questions)
-- ============================================================

-- ID 1157: Federal Tax Procedures — Field audit definition
-- correct_index = 1
UPDATE questions SET
  stem = 'What type of IRS audit is conducted at the taxpayer''s place of business?',
  choices = '["A correspondence audit conducted entirely through written communication", "A field audit conducted by a revenue agent at the taxpayer''s business or accountant''s office", "An office audit conducted at the local IRS district office", "A random compliance audit selected by the IRS computer system"]'::jsonb,
  explanation = 'Correct (B): A field audit is an IRS examination conducted by a revenue agent at the taxpayer''s place of business, home, or accountant''s office. Field audits are typically used for more complex returns involving business income, multiple entities, or large dollar amounts. (A) is wrong because correspondence audits are conducted through the mail, not at a physical location. (C) is wrong because office audits are conducted at an IRS office, not at the taxpayer''s location. (D) is wrong because random compliance audits describe a selection method, not a type of audit location.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1157;

-- ID 1159: Federal Tax Procedures — 6-year statute of limitations
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 6501(e), when does the six-year statute of limitations apply?',
  choices = '["When the taxpayer files a fraudulent return with intent to evade tax", "When the taxpayer fails to file a required tax return for the year", "When the taxpayer omits gross income exceeding 25% of the gross income reported on the return", "When the IRS issues a statutory notice of deficiency within three years of filing"]'::jsonb,
  explanation = 'Correct (C): Under Section 6501(e)(1)(A), the statute of limitations for assessment is extended from three years to six years if the taxpayer omits from gross income an amount that exceeds 25% of the gross income stated on the return. This provision applies to substantial omissions of income, not to overstatement of deductions. (A) is wrong because fraud results in no statute of limitations under Section 6501(c)(1), not a six-year period. (B) is wrong because failure to file results in no statute of limitations under Section 6501(c)(3). (D) is wrong because the issuance of a notice of deficiency within three years is the general rule, not the trigger for the six-year period.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1159;

-- ID 1160: Federal Tax Procedures — Late filing penalty
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 6651, what is the penalty for failure to file a tax return?',
  choices = '["A flat penalty of $500 for each month the return is late", "A penalty of 0.5% of the unpaid tax per month, up to a maximum of 25%", "A penalty of 20% of the total tax due if the return is filed more than 60 days late", "A penalty of 5% of the unpaid tax for each month the return is late, up to a maximum of 25%"]'::jsonb,
  explanation = 'Correct (D): Under Section 6651(a)(1), the failure-to-file penalty is 5% of the net amount of tax due for each month (or fraction thereof) that the return is late, up to a maximum of 25%. If the return is filed more than 60 days late, the minimum penalty is the lesser of $485 (adjusted for inflation) or 100% of the tax due. (A) is wrong because the penalty is a percentage of unpaid tax, not a flat dollar amount. (B) is wrong because 0.5% per month is the failure-to-pay penalty under Section 6651(a)(2), not the failure-to-file penalty. (C) is wrong because the penalty accrues monthly at 5%, not as a single 20% assessment.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1160;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (3 questions)
-- ============================================================

-- ID 1180: Debtor-Creditor Relationships — Security interest perfection
-- correct_index = 0
UPDATE questions SET
  stem = 'Under UCC Article 9, how is a security interest perfected?',
  choices = '["By filing a financing statement with the appropriate state filing office, by taking possession of the collateral, or by control", "By obtaining a court order confirming the creditor''s priority over other claimants", "By recording the security agreement in the county recorder''s office where the debtor resides", "By notifying all other creditors of the debtor that a security interest has been created"]'::jsonb,
  explanation = 'Correct (A): Under UCC Article 9, a security interest is perfected by filing a financing statement (UCC-1) with the appropriate state filing office, by the secured party taking possession of the collateral, or by control (for deposit accounts, investment property, and certain other types of collateral). Perfection establishes the secured party''s priority against other creditors and third parties. (B) is wrong because perfection is accomplished through filing, possession, or control, not by court order. (C) is wrong because UCC financing statements are filed with the state (typically the Secretary of State), not the county recorder''s office. (D) is wrong because notifying other creditors is not a method of perfection under Article 9.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1180;

-- ID 1183: Debtor-Creditor Relationships — Priority of perfected security interests
-- correct_index = 1
UPDATE questions SET
  stem = 'Under UCC Article 9, what determines priority among perfected security interests?',
  choices = '["The date the security agreement was signed by the debtor", "The date of filing or perfection, whichever is earlier — first in time has priority", "The dollar amount of the secured obligation, with the largest claim having priority", "The type of collateral, with real property interests always having priority over personal property interests"]'::jsonb,
  explanation = 'Correct (B): Under UCC Section 9-322(a)(1), conflicting perfected security interests rank according to priority in time of filing or perfection, whichever is earlier. The first secured party to file a financing statement or perfect its interest has priority, regardless of when the security interest actually attached. This is known as the first-to-file-or-perfect rule. (A) is wrong because the signing date of the security agreement determines attachment, not priority among perfected interests. (C) is wrong because the dollar amount of the obligation has no bearing on priority. (D) is wrong because Article 9 governs personal property; real property interests are governed by real estate recording statutes.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1183;

-- ID 2883: Debtor-Creditor Relationships — Attachment requirements
-- correct_index = 2
UPDATE questions SET
  stem = 'Under UCC Article 9, what three elements are required for a security interest to attach?',
  choices = '["Filing a financing statement, obtaining a court order, and delivering the collateral to a bonded warehouse", "Recording the lien with the county clerk, providing notice to the debtor, and obtaining insurance on the collateral", "Value must be given by the secured party, the debtor must have rights in the collateral, and the debtor must authenticate a security agreement describing the collateral", "The debtor must sign a promissory note, the creditor must record a UCC-1, and the collateral must be appraised by a licensed professional"]'::jsonb,
  explanation = 'Correct (C): Under UCC Section 9-203(b), a security interest attaches to collateral when three conditions are met: (1) value has been given by the secured party (such as extending credit), (2) the debtor has rights in the collateral or the power to transfer rights, and (3) the debtor has authenticated a security agreement that provides a description of the collateral (or the secured party has possession or control). Attachment makes the security interest enforceable against the debtor. (A) is wrong because filing is for perfection, not attachment, and court orders and bonded warehouses are not attachment requirements. (B) is wrong because county recording, notice, and insurance are not the elements of attachment. (D) is wrong because a promissory note, UCC-1 filing, and appraisal are not the statutory requirements for attachment.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2883;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (3 questions)
-- ============================================================

-- ID 5312: Alternative Minimum Tax — AMT calculation
-- correct_index = 3
UPDATE questions SET
  stem = 'How is the alternative minimum tax (AMT) calculated?',
  choices = '["By applying a flat 28% rate to all taxable income above the standard deduction", "By adding preference items to adjusted gross income and applying regular tax rates", "By subtracting the AMT exemption from adjusted gross income and comparing the result to regular tax", "By computing taxable income, adding adjustments and preferences, subtracting the AMT exemption, applying AMT rates, and comparing the tentative minimum tax to regular tax"]'::jsonb,
  explanation = 'Correct (D): Under Section 55, the AMT is calculated by starting with taxable income, adding back AMT adjustment items under Section 56 and preference items under Section 57 to arrive at alternative minimum taxable income (AMTI), subtracting the AMT exemption under Section 55(d), applying the AMT rates (26%/28%), and comparing the resulting tentative minimum tax to the regular tax. The AMT equals the excess of tentative minimum tax over regular tax. (A) is wrong because the AMT uses a two-tier rate of 26%/28%, not a flat 28%. (B) is wrong because AMT uses its own rate structure, not regular tax rates. (C) is wrong because the calculation starts with taxable income (not AGI) and includes adjustments and preferences.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5312;

-- ID 5315: Alternative Minimum Tax — AMT exemption phaseout
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 55, at what rate does the AMT exemption phase out?',
  choices = '["The exemption is reduced by 25 cents for each dollar of AMTI above the applicable phaseout threshold", "The exemption is reduced by 50 cents for each dollar of AMTI above the applicable phaseout threshold", "The exemption is reduced by 10% for each $10,000 of AMTI above the phaseout threshold", "The exemption is eliminated entirely once AMTI exceeds twice the exemption amount"]'::jsonb,
  explanation = 'Correct (A): Under Section 55(d)(3), the AMT exemption amount is reduced by an amount equal to 25% of the amount by which AMTI exceeds the applicable phaseout threshold. This means for every dollar of AMTI above the threshold, the exemption is reduced by 25 cents. The exemption is fully phased out when AMTI exceeds the threshold by four times the exemption amount. (B) is wrong because the phaseout rate is 25%, not 50%. (C) is wrong because the phaseout is a continuous 25-cent-per-dollar reduction, not a stepped 10% reduction. (D) is wrong because the exemption phases out gradually, not as an immediate elimination at a fixed multiple.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5315;

-- ID 5316: Alternative Minimum Tax — AMT disallowed deductions
-- correct_index = 1
UPDATE questions SET
  stem = 'Which deductions allowed for regular tax are disallowed for AMT purposes?',
  choices = '["Charitable contributions and mortgage interest on acquisition indebtedness", "State and local income taxes, miscellaneous itemized deductions, and the standard deduction", "Alimony payments and contributions to qualified retirement plans", "Medical expenses exceeding 7.5% of AGI and casualty losses in federally declared disaster areas"]'::jsonb,
  explanation = 'Correct (B): Under Section 56(b)(1), several deductions allowed for regular tax purposes are disallowed when computing AMTI. These include the deduction for state and local taxes (Section 56(b)(1)(A)), miscellaneous itemized deductions subject to the 2% floor (Section 56(b)(1)(A)), and the standard deduction (Section 56(b)(1)(E)). (A) is wrong because charitable contributions are allowed for AMT purposes, and mortgage interest on acquisition indebtedness is also generally allowed. (C) is wrong because alimony (for pre-2019 agreements) and retirement contributions are treated the same for regular and AMT purposes. (D) is wrong because medical expenses are allowed for AMT purposes (subject to the same 7.5% threshold after TCJA), and qualified disaster casualty losses are also allowed.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5316;

-- ============================================================
-- BUSINESS STRUCTURES (2 questions)
-- ============================================================

-- ID 209: Business Structures — Limited partnership characteristics
-- correct_index = 2
UPDATE questions SET
  stem = 'What are the characteristics of a limited partnership?',
  choices = '["All partners share equally in management and have unlimited personal liability", "A limited partnership requires at least two limited partners and no general partners", "A limited partnership has at least one general partner with unlimited liability and one or more limited partners whose liability is limited to their investment", "Limited partnerships are formed by oral agreement and do not require a state filing"]'::jsonb,
  explanation = 'Correct (C): A limited partnership is formed under state law (typically the Revised Uniform Limited Partnership Act) and consists of at least one general partner who manages the business and has unlimited personal liability, and one or more limited partners whose liability is limited to their capital contributions. Limited partners generally do not participate in management. (A) is wrong because limited partners have limited liability and generally do not share in management. (B) is wrong because a limited partnership requires at least one general partner. (D) is wrong because limited partnerships must file a certificate of limited partnership with the state; they cannot be formed by oral agreement alone.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 209;

-- ID 508: Business Structures — Chapter 11 debtor-in-possession
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Chapter 11 bankruptcy, what is the debtor-in-possession concept?',
  choices = '["The debtor must surrender all assets to a court-appointed trustee for liquidation", "The debtor is placed under the direct supervision of a federal bankruptcy judge who makes all business decisions", "The debtor forfeits management control to the largest secured creditor during reorganization", "The debtor continues to operate the business and manage its affairs while reorganizing under court protection"]'::jsonb,
  explanation = 'Correct (D): Under Chapter 11 of the Bankruptcy Code (11 U.S.C. Section 1107), the debtor-in-possession concept allows the debtor to remain in control of business operations during the reorganization process. The debtor-in-possession has the rights and powers of a trustee, including the ability to operate the business, use property, and propose a plan of reorganization. A separate trustee is appointed only for cause, such as fraud or gross mismanagement. (A) is wrong because Chapter 11 is reorganization, not liquidation; asset surrender describes Chapter 7. (B) is wrong because the bankruptcy judge oversees the case but does not make day-to-day business decisions. (C) is wrong because creditors do not take over management in a standard Chapter 11 case.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 508;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (1 question)
-- ============================================================

-- ID 5291: Government Regulation of Business — Securities Act exemptions
-- correct_index = 0
UPDATE questions SET
  stem = 'Under the Securities Act of 1933, which exemption allows a small offering to accredited investors?',
  choices = '["Regulation D, which provides exemptions under Rules 504, 506(b), and 506(c) for limited and private offerings", "Regulation A, which allows public offerings of up to $75 million with simplified SEC review", "Section 4(a)(2), which exempts all transactions not involving a public offering regardless of investor sophistication", "Rule 144, which permits resale of restricted and control securities after a holding period"]'::jsonb,
  explanation = 'Correct (A): Regulation D under the Securities Act of 1933 provides a series of exemptions for small and private offerings. Rule 504 allows offerings up to $10 million, Rule 506(b) allows unlimited offerings to up to 35 non-accredited investors and unlimited accredited investors without general solicitation, and Rule 506(c) allows unlimited offerings exclusively to accredited investors with general solicitation permitted. These exemptions are specifically designed for offerings to accredited investors and small private placements. (B) is wrong because Regulation A is a separate exemption for smaller public offerings with SEC qualification, not specifically for accredited investors. (C) is wrong because Section 4(a)(2) is a statutory exemption for non-public offerings, but Regulation D provides the specific safe harbor rules for small offerings to accredited investors. (D) is wrong because Rule 144 governs resale of restricted securities, not primary offerings.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 5291;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS CONTINUED (3 questions)
-- ============================================================

-- ID 2546: Property Transactions: Basis — Converted property basis (loss)
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 165, what is the basis for determining loss on property converted from personal to business use?',
  choices = '["The original cost of the property at the time of purchase", "The lower of the adjusted basis or the fair market value at the date of conversion", "The fair market value at the date of conversion regardless of original cost", "The original cost plus any capital improvements made before conversion"]'::jsonb,
  explanation = 'Correct (B): When property is converted from personal to business use, the basis for determining a loss is the lower of the adjusted basis or the fair market value at the date of conversion, per Treasury Regulation 1.165-9(b)(2). This rule prevents taxpayers from recognizing losses attributable to personal-use decline in value. If the FMV at conversion is lower than adjusted basis, the loss basis is limited to FMV. (A) is wrong because the original cost may exceed the FMV at conversion, and the lower value must be used for loss purposes. (C) is wrong because FMV is used only if it is lower than the adjusted basis. (D) is wrong because improvements increase the adjusted basis, but the loss basis is still limited to the lower of adjusted basis or FMV at conversion.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2546;

-- ID 2547: Property Transactions: Basis — Converted property basis (gain)
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 1015, what is the basis for determining gain on property converted from personal to business use?',
  choices = '["The fair market value at the date of conversion", "The lower of the adjusted basis or the fair market value at the date of conversion", "The adjusted basis of the property at the date of conversion (original cost plus improvements, less any allowable depreciation)", "The average of the original cost and the fair market value at the date of conversion"]'::jsonb,
  explanation = 'Correct (C): When property is converted from personal to business use, the basis for determining gain is the adjusted basis at the date of conversion — that is, the original cost plus capital improvements, reduced by any depreciation allowable since conversion. The FMV at conversion is irrelevant for gain purposes; the taxpayer''s cost basis carries over. (A) is wrong because FMV at conversion is used only for loss purposes, not gain. (B) is wrong because the lower-of rule applies only to determine loss basis, not gain basis. (D) is wrong because there is no averaging method for determining basis of converted property.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2547;

-- ID 2548: Property Transactions: Basis — Inherited property basis
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 1014, what basis does a beneficiary take in inherited property?',
  choices = '["The decedent''s original cost basis carries over to the beneficiary", "The lower of the decedent''s adjusted basis or the fair market value at the date of death", "The decedent''s adjusted basis plus any estate taxes paid on the property", "The fair market value of the property at the date of the decedent''s death (or the alternate valuation date if elected)"]'::jsonb,
  explanation = 'Correct (D): Under Section 1014(a), the basis of property acquired from a decedent is the fair market value of the property at the date of the decedent''s death. If the executor elects the alternate valuation date under Section 2032, the basis is the fair market value six months after death (or the date of disposition if earlier). This stepped-up (or stepped-down) basis eliminates unrealized gains or losses that accrued during the decedent''s lifetime. (A) is wrong because inherited property receives a stepped-up basis to FMV, not a carryover of the decedent''s cost basis (carryover basis applies to gifts under Section 1015). (B) is wrong because the lower-of rule applies to converted property, not inherited property. (C) is wrong because estate taxes paid do not increase the basis of inherited property under current law.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2548;

COMMIT;