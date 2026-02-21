-- Migration: Bloom's L1 rebalancing — REG batch 2 (45 questions)
-- Date: 2026-02-21
-- Purpose: Rewrite 45 L2 (Application) questions to L1 (Remember/Understand) depth for REG section
-- Affected topics: Circular 230, C Corporations, Like-Kind Exchanges, Individual Taxation: Income, Legal Duties and Responsibilities, Tax-Exempt Organizations

BEGIN;

-- ============================================================
-- CIRCULAR 230 CONTINUED (4 questions)
-- ============================================================

-- ID 2377: Circular 230 — CPA due diligence
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Circular 230, what due diligence standard applies to CPAs preparing tax returns?',
  choices = '["A practitioner must exercise due diligence in preparing and filing tax returns and other documents relating to IRS matters", "A practitioner must guarantee the accuracy of every figure on a tax return", "A practitioner must independently verify all information provided by the client through third-party sources", "A practitioner must obtain written representations from the client for every line item on the return"]'::jsonb,
  explanation = 'Correct (A): Under Treasury Circular 230, Section 10.22, a practitioner must exercise due diligence in preparing, approving, and filing tax returns, documents, affidavits, and other papers relating to IRS matters. This means the practitioner must make reasonable inquiries if information appears incorrect or incomplete. (B) is wrong because due diligence does not require guaranteeing accuracy of every figure. (C) is wrong because practitioners may generally rely on client-provided information without independent verification unless it appears incorrect or incomplete. (D) is wrong because written representations for every line item are not required under Circular 230.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2377;

-- ID 2378: Circular 230 — covered opinion definition
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Circular 230, what is a covered opinion?',
  choices = '["Any oral advice given to a client regarding a tax return position", "Written advice that concerns one or more federal tax issues arising from a listed transaction, tax shelter, or principal purpose transaction", "An internal memorandum prepared by a firm for training purposes on tax compliance", "A letter from the IRS confirming a taxpayer''s filing status"]'::jsonb,
  explanation = 'Correct (B): Under Circular 230, Section 10.35 (prior to 2014 amendments), a covered opinion was written advice concerning one or more federal tax issues arising from a listed transaction, a principal purpose of tax avoidance or evasion, or a significant purpose transaction meeting certain conditions. After the 2014 amendments, the covered opinion rules were replaced with general standards for written advice under Section 10.37, but the concept remains testable. (A) is wrong because covered opinions specifically involve written advice, not oral advice. (C) is wrong because internal training memoranda are not covered opinions. (D) is wrong because IRS correspondence is not a practitioner''s opinion.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2378;

-- ID 2379: Circular 230 — written tax advice standards
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Circular 230, what requirements apply to written tax advice?',
  choices = '["Written tax advice must always be reviewed by a second practitioner before delivery to the client", "Written tax advice must include a disclaimer that the IRS may disagree with the position taken", "Written tax advice must be based on reasonable factual and legal assumptions, must reasonably consider all relevant facts, and must not rely on unreasonable assumptions", "Written tax advice must be filed with the IRS Office of Professional Responsibility within 30 days of issuance"]'::jsonb,
  explanation = 'Correct (C): Under Circular 230, Section 10.37, a practitioner must base written advice on reasonable factual and legal assumptions, reasonably consider all relevant facts that the practitioner knows or reasonably should know, and not rely upon representations or assumptions that the practitioner knows or reasonably should know are incorrect, incomplete, or inconsistent. (A) is wrong because there is no requirement for peer review of written tax advice. (B) is wrong because a general disclaimer about potential IRS disagreement is not required. (D) is wrong because practitioners do not file their written advice with the OPR.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2379;

-- ID 2380: Circular 230 — best practices
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Circular 230, what are best practices for tax practitioners?',
  choices = '["Practitioners should guarantee the most favorable tax outcome for clients", "Practitioners should advise clients to claim every possible deduction regardless of substantiation", "Practitioners should always recommend the most aggressive tax position available", "Practitioners should communicate clearly with clients, establish facts, relate applicable law, and advise clients of the consequences of the advice given"]'::jsonb,
  explanation = 'Correct (D): Under Circular 230, Section 10.33, best practices for tax advisors include communicating clearly with clients regarding engagement terms, establishing the relevant facts, evaluating the reasonableness of assumptions and representations, relating applicable law to the facts, and advising clients regarding the import of the conclusions reached. (A) is wrong because practitioners cannot guarantee outcomes. (B) is wrong because recommending deductions without substantiation violates due diligence. (C) is wrong because recommending the most aggressive position is not a best practice; practitioners should advise on proper application of the law.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2380;

-- ============================================================
-- C CORPORATIONS (11 questions)
-- ============================================================

-- ID 574: C Corporations — UBTI definition
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 512, what is unrelated business taxable income (UBTI)?',
  choices = '["Income from a trade or business regularly carried on by a tax-exempt organization that is not substantially related to its exempt purpose", "All income earned by a tax-exempt organization from any source", "Investment income such as dividends and interest earned by a tax-exempt organization", "Donations and contributions received by a tax-exempt organization from corporate sponsors"]'::jsonb,
  explanation = 'Correct (A): Under Section 512, unrelated business taxable income (UBTI) is gross income derived from any unrelated trade or business regularly carried on by the organization, less directly connected deductions. An unrelated trade or business is one not substantially related to the organization''s exempt purpose. (B) is wrong because not all income is UBTI; income related to the exempt purpose is excluded. (C) is wrong because investment income such as dividends, interest, and certain royalties is generally excluded from UBTI under Section 512(b). (D) is wrong because donations and contributions are not trade or business income.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 574;

-- ID 577: C Corporations — NOL limitation post-2017
-- correct_index = 1
UPDATE questions SET
  stem = 'Under the TCJA, how are C corporation NOLs generated after 2017 treated?',
  choices = '["They may be carried back two years and carried forward twenty years without limitation", "They may be carried forward indefinitely but are limited to 80% of taxable income in any carryforward year", "They may offset 100% of taxable income in any future year but expire after five years", "They may only be used against income from the same trade or business that generated the loss"]'::jsonb,
  explanation = 'Correct (B): Under the Tax Cuts and Jobs Act amendments to Section 172, net operating losses generated after December 31, 2017, may be carried forward indefinitely but may only offset up to 80% of taxable income in any carryforward year. The two-year carryback was generally eliminated for most taxpayers. (A) is wrong because post-2017 NOLs generally cannot be carried back, and the 80% limitation applies. (C) is wrong because post-2017 NOLs do not expire but are limited to 80%, not 100%. (D) is wrong because the NOL limitation applies to overall taxable income, not on a business-by-business basis.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 577;

-- ID 2780: C Corporations — Section 351 formation
-- correct_index = 2
UPDATE questions SET
  stem = 'What are the requirements for a tax-free incorporation under Section 351?',
  choices = '["The transferor must contribute only cash to the corporation and receive at least 50% of the voting stock", "The transferor must be an individual, not a partnership or corporation, to qualify for nonrecognition", "One or more persons must transfer property to a corporation solely in exchange for stock, and the transferors must control the corporation immediately after the exchange", "The corporation must be newly formed and have no prior operations to qualify for Section 351 treatment"]'::jsonb,
  explanation = 'Correct (C): Under Section 351(a), no gain or loss is recognized when one or more persons transfer property to a corporation solely in exchange for stock of that corporation, and immediately after the exchange the transferors are in control of the corporation. Control is defined under Section 368(c) as ownership of at least 80% of total combined voting power and 80% of each class of nonvoting stock. (A) is wrong because property other than cash may be contributed, and the control threshold is 80%, not 50%. (B) is wrong because partnerships and corporations may also be transferors under Section 351. (D) is wrong because Section 351 applies to transfers to both newly formed and existing corporations.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2780;

-- ID 2782: C Corporations — DRD 65% for 25% shareholder
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 243, what dividends received deduction applies to a 25% corporate shareholder?',
  choices = '["A 50% deduction because the ownership is below the 80% threshold", "A 100% deduction because any ownership above 20% qualifies for the full exclusion", "A 70% deduction because the 65% rate was repealed by the TCJA", "A 65% deduction for dividends received from a corporation in which the recipient owns 20% or more but less than 80%"]'::jsonb,
  explanation = 'Correct (D): Under Section 243(c), a corporation that owns 20% or more (but less than 80%) of the stock of another corporation by vote and value is entitled to a 65% dividends received deduction. A 25% corporate shareholder falls within this ownership range and therefore qualifies for the 65% DRD. (A) is wrong because the 50% deduction applies to ownership below 20%, not below 80%. (B) is wrong because the 100% DRD requires 80% or more ownership. (C) is wrong because the 65% rate was not repealed; it remains in effect for the 20%-to-less-than-80% ownership tier.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2782;

-- ID 2783: C Corporations — E&P distribution ordering
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 316, what is the ordering rule for corporate distributions?',
  choices = '["Distributions are treated first as dividends to the extent of current E&P, then accumulated E&P, then return of capital, then capital gain", "Distributions are treated as return of capital first, then as dividends from accumulated E&P, then capital gain", "Distributions are treated as capital gain first until basis is recovered, then as dividends from E&P", "Distributions are always treated as ordinary dividends regardless of the corporation''s E&P balance"]'::jsonb,
  explanation = 'Correct (A): Under Section 316 and Section 301(c), corporate distributions are treated first as dividends to the extent of current earnings and profits (E&P), then to the extent of accumulated E&P. Any distribution in excess of E&P is treated as a tax-free return of capital to the extent of the shareholder''s stock basis under Section 301(c)(2), and any remaining amount is treated as gain from the sale or exchange of property under Section 301(c)(3). (B) is wrong because return of capital does not come first. (C) is wrong because capital gain treatment is the last step, not the first. (D) is wrong because distributions exceeding E&P are not treated as dividends.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2783;

-- ID 2785: C Corporations — charitable deduction limit
-- correct_index = 1
UPDATE questions SET
  stem = 'What is the limitation on a C corporation''s charitable contribution deduction?',
  choices = '["C corporations may deduct charitable contributions without limitation", "C corporations may deduct charitable contributions up to 10% of taxable income computed before certain deductions", "C corporations may deduct charitable contributions up to 60% of adjusted gross income", "C corporations may deduct charitable contributions only to the extent they exceed 2% of taxable income"]'::jsonb,
  explanation = 'Correct (B): Under Section 170(b)(2), a C corporation''s charitable contribution deduction is limited to 10% of taxable income, computed before the charitable contribution deduction, the dividends received deduction, any NOL carryback, and any capital loss carryback. Excess contributions may be carried forward five years. (A) is wrong because the deduction is not unlimited. (C) is wrong because the 60% AGI limitation applies to individual taxpayers, not corporations. (D) is wrong because there is no 2% floor for corporate charitable deductions.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2785;

-- ID 2786: C Corporations — Section 351 with boot
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 351, what is the tax effect when a transferor receives boot?',
  choices = '["The entire exchange becomes fully taxable when any boot is received", "No gain is recognized on boot received as long as the transferor maintains 80% control", "The transferor recognizes gain to the extent of the lesser of the boot received or the realized gain on the exchange", "Boot received is always treated as a tax-free return of capital"]'::jsonb,
  explanation = 'Correct (C): Under Section 351(b), if a transferor receives boot (money or other property in addition to stock), gain is recognized to the extent of the lesser of the fair market value of the boot received or the realized gain on the transfer. The exchange does not become fully taxable; only the boot triggers gain recognition. No loss is recognized under Section 351(b)(2). (A) is wrong because receiving boot does not cause the entire exchange to be taxable. (B) is wrong because boot triggers gain recognition regardless of the control percentage. (D) is wrong because boot received in a Section 351 exchange is not treated as a return of capital.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2786;

-- ID 2787: C Corporations — DRD for less-than-20% ownership
-- correct_index = 3
UPDATE questions SET
  stem = 'What dividends received deduction percentage applies to a corporation owning less than 20% of another corporation?',
  choices = '["65% of dividends received", "80% of dividends received", "100% of dividends received", "50% of dividends received"]'::jsonb,
  explanation = 'Correct (D): Under Section 243(a), a corporation that owns less than 20% of the stock of the distributing corporation by vote and value is entitled to a 50% dividends received deduction. This is the lowest tier of the DRD. (A) is wrong because the 65% DRD applies to ownership of 20% or more but less than 80%. (B) is wrong because 80% is not a DRD percentage tier. (C) is wrong because the 100% DRD requires ownership of 80% or more.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2787;

-- ID 2788: C Corporations — negative current E&P with accumulated E&P
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 316, how are distributions treated when current E&P is negative but accumulated E&P is positive?',
  choices = '["Current and accumulated E&P are netted at the date of distribution; if the combined amount is positive, the distribution is a dividend to that extent", "The distribution is treated entirely as a return of capital because current E&P is negative", "The distribution is treated as a dividend only to the extent of accumulated E&P without considering current E&P", "The distribution is always nontaxable when current E&P is negative"]'::jsonb,
  explanation = 'Correct (A): Under Section 316 and IRS guidance, when current E&P is negative (a deficit), the deficit is prorated to the date of distribution and netted against accumulated E&P. If accumulated E&P exceeds the prorated current-year deficit as of the distribution date, the distribution is a dividend to the extent of the net positive balance. (B) is wrong because a negative current E&P does not automatically make the entire distribution a return of capital. (C) is wrong because current E&P must be considered; the deficit reduces accumulated E&P on a prorated basis. (D) is wrong because distributions can still be taxable dividends if accumulated E&P is sufficient.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2788;

-- ID 2789: C Corporations — Section 351 control requirement
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 351, what control threshold must the transferor group meet?',
  choices = '["The transferor group must own at least 50% of the total voting power of the corporation immediately after the exchange", "The transferor group must own at least 80% of the total combined voting power and 80% of each class of nonvoting stock immediately after the exchange", "The transferor group must own at least 90% of all outstanding stock immediately after the exchange", "The transferor group must own 100% of the corporation for the first year following the exchange"]'::jsonb,
  explanation = 'Correct (B): Under Section 351(a) and Section 368(c), control means ownership of stock possessing at least 80% of the total combined voting power of all classes of stock entitled to vote and at least 80% of the total number of shares of all other classes of stock. This must be met immediately after the exchange. (A) is wrong because 50% is insufficient; the threshold is 80%. (C) is wrong because the threshold is 80%, not 90%. (D) is wrong because 100% ownership is not required, and there is no one-year holding requirement.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2789;

-- ID 2790: C Corporations — DRD for 80%+ ownership
-- correct_index = 2
UPDATE questions SET
  stem = 'What dividends received deduction applies to a corporation owning 80% or more of another corporation?',
  choices = '["50% of dividends received", "65% of dividends received", "100% of dividends received", "No deduction is available because dividends from 80%-owned subsidiaries are eliminated in consolidation"]'::jsonb,
  explanation = 'Correct (C): Under Section 243(a)(3) and Section 243(b), a corporation that owns 80% or more of the stock of the distributing corporation by vote and value is entitled to a 100% dividends received deduction, effectively eliminating the tax on intercorporate dividends. This applies if the affiliated group files a consolidated return election or meets the requirements of Section 243(b). (A) is wrong because 50% applies to less-than-20% ownership. (B) is wrong because 65% applies to 20%-to-less-than-80% ownership. (D) is wrong because the 100% DRD is available whether or not a consolidated return is filed.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2790;

-- ============================================================
-- LIKE-KIND EXCHANGES (10 questions)
-- ============================================================

-- ID 536: Like-Kind Exchanges — home sale exclusion
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 121, what is the home sale exclusion for individuals?',
  choices = '["An exclusion of up to $100,000 of gain for single filers and $200,000 for married filing jointly", "An exclusion available only to taxpayers age 55 or older who sell their principal residence", "An exclusion that applies only to the first home sale in a taxpayer''s lifetime", "An exclusion of up to $250,000 of gain for single filers and $500,000 for married filing jointly on the sale of a principal residence"]'::jsonb,
  explanation = 'Correct (D): Under Section 121, an individual may exclude up to $250,000 of gain ($500,000 for married filing jointly) on the sale of a principal residence if the taxpayer owned and used the home as a principal residence for at least two of the five years preceding the sale. The exclusion may generally be used once every two years. (A) is wrong because the exclusion amounts are $250,000/$500,000, not $100,000/$200,000. (B) is wrong because the age-55 requirement was eliminated by the Taxpayer Relief Act of 1997. (C) is wrong because the exclusion is not limited to a once-in-a-lifetime use.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 536;

-- ID 2594: Like-Kind Exchanges — TCJA limitation
-- correct_index = 0
UPDATE questions SET
  stem = 'After the TCJA, what property qualifies for Section 1031 like-kind exchange treatment?',
  choices = '["Only real property held for productive use in a trade or business or for investment", "Both real property and personal property held for business or investment", "Any property including inventory, stocks, and partnership interests", "Only residential rental property and commercial real estate"]'::jsonb,
  explanation = 'Correct (A): After the Tax Cuts and Jobs Act of 2017, Section 1031 like-kind exchange treatment is limited to real property held for productive use in a trade or business or for investment. The TCJA eliminated like-kind exchange treatment for personal property, such as equipment, vehicles, and machinery. (B) is wrong because personal property no longer qualifies after 2017. (C) is wrong because inventory, stocks, bonds, and partnership interests have always been excluded from Section 1031. (D) is wrong because all types of real property held for business or investment qualify, not just residential rental and commercial real estate.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2594;

-- ID 2595: Like-Kind Exchanges — 45-day identification rule
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 1031, what is the identification period for replacement property?',
  choices = '["The taxpayer must identify replacement property within 30 days of transferring the relinquished property", "The taxpayer must identify replacement property within 45 days of transferring the relinquished property", "The taxpayer must identify replacement property within 90 days of transferring the relinquished property", "The taxpayer must identify replacement property within 180 days of transferring the relinquished property"]'::jsonb,
  explanation = 'Correct (B): Under Section 1031(a)(3)(A) and Treasury Regulation 1.1031(k)-1(b), the taxpayer must identify potential replacement property within 45 days after the date of transfer of the relinquished property. The identification must be in writing, signed, and delivered to a person involved in the exchange. (A) is wrong because the period is 45 days, not 30 days. (C) is wrong because 90 days is not the identification period. (D) is wrong because 180 days is the exchange period for closing, not the identification period.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2595;

-- ID 2596: Like-Kind Exchanges — 180-day exchange period
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 1031, what is the exchange period for completing a like-kind exchange?',
  choices = '["The exchange must be completed within 45 days of transferring the relinquished property", "The exchange must be completed within 90 days of transferring the relinquished property", "The exchange must be completed within 180 days of transferring the relinquished property or the due date of the tax return, whichever is earlier", "The exchange must be completed within one calendar year of transferring the relinquished property"]'::jsonb,
  explanation = 'Correct (C): Under Section 1031(a)(3)(B), the taxpayer must receive the replacement property by the earlier of 180 days after the transfer of the relinquished property or the due date (including extensions) of the tax return for the year of the transfer. (A) is wrong because 45 days is the identification period, not the exchange period. (B) is wrong because 90 days is not the applicable period. (D) is wrong because the period is 180 days or the return due date, not one calendar year.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2596;

-- ID 2597: Like-Kind Exchanges — qualified intermediary role
-- correct_index = 3
UPDATE questions SET
  stem = 'What is the role of a qualified intermediary in a Section 1031 exchange?',
  choices = '["To appraise both the relinquished and replacement properties for fair market value", "To provide tax advice and determine whether the exchange qualifies under Section 1031", "To act as the IRS''s representative in verifying compliance with exchange requirements", "To facilitate the exchange by holding sale proceeds and acquiring replacement property on behalf of the taxpayer"]'::jsonb,
  explanation = 'Correct (D): Under Treasury Regulation 1.1031(k)-1(g)(4), a qualified intermediary facilitates a deferred like-kind exchange by acquiring the relinquished property from the taxpayer, transferring it to the buyer, holding the sale proceeds, and using those proceeds to acquire the replacement property for the taxpayer. The QI prevents the taxpayer from having actual or constructive receipt of the funds. (A) is wrong because appraisal is not the QI''s role. (B) is wrong because providing tax advice is the role of a tax advisor, not the QI. (C) is wrong because the QI is a private facilitator, not an IRS representative.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2597;

-- ID 2598: Like-Kind Exchanges — boot received
-- correct_index = 0
UPDATE questions SET
  stem = 'In a Section 1031 exchange, how is boot received taxed?',
  choices = '["The taxpayer recognizes gain to the extent of the boot received, but not in excess of the realized gain", "Boot received is always tax-free as part of the like-kind exchange", "Boot received is taxed as ordinary income regardless of the character of the underlying property", "The taxpayer recognizes gain equal to the full fair market value of the replacement property plus the boot"]'::jsonb,
  explanation = 'Correct (A): Under Section 1031(b), if a taxpayer receives boot (money or non-like-kind property) in addition to like-kind property, gain is recognized to the extent of the boot received, but not in excess of the total realized gain on the exchange. If the boot exceeds the realized gain, only the realized gain is recognized. (B) is wrong because boot triggers gain recognition. (C) is wrong because the character of the gain depends on the nature of the property exchanged (e.g., Section 1231 gain), not automatically ordinary income. (D) is wrong because recognized gain is limited to the boot received, not the full FMV of the replacement property.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2598;

-- ID 2599: Like-Kind Exchanges — replacement property basis
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 1031, what is the basis of replacement property received in a like-kind exchange?',
  choices = '["The fair market value of the replacement property at the date of the exchange", "The adjusted basis of the relinquished property, decreased by boot received, increased by gain recognized, and adjusted for liabilities", "The original cost of the relinquished property without any adjustments", "Zero basis, because the exchange is entirely tax-deferred"]'::jsonb,
  explanation = 'Correct (B): Under Section 1031(d), the basis of the replacement property is the adjusted basis of the relinquished property, decreased by money or boot received, increased by gain recognized, and adjusted for any liabilities assumed or relieved. This substituted basis preserves the deferred gain or loss for future recognition. (A) is wrong because FMV basis applies to taxable acquisitions, not like-kind exchanges. (C) is wrong because adjustments to basis are required. (D) is wrong because the replacement property does not take a zero basis.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2599;

-- ID 2600: Like-Kind Exchanges — mortgage relief
-- correct_index = 2
UPDATE questions SET
  stem = 'In a Section 1031 exchange, how is mortgage relief treated?',
  choices = '["Mortgage relief is ignored for purposes of computing gain in a like-kind exchange", "Mortgage relief reduces the basis of the replacement property but does not trigger gain recognition", "Mortgage relief is treated as boot received by the taxpayer, potentially triggering gain recognition", "Mortgage relief is deductible as an expense in the year of the exchange"]'::jsonb,
  explanation = 'Correct (C): In a Section 1031 exchange, if the taxpayer is relieved of a mortgage on the relinquished property, the mortgage relief is treated as boot received under Treasury Regulation 1.1031(b)-1(c). This boot may trigger gain recognition to the extent of the lesser of the net boot received or the realized gain. Mortgage relief can be offset by mortgage assumed on the replacement property. (A) is wrong because mortgage relief is not ignored. (B) is wrong because mortgage relief can trigger gain, not just a basis adjustment. (D) is wrong because mortgage relief is not a deductible expense.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2600;

-- ID 2601: Like-Kind Exchanges — boot given
-- correct_index = 3
UPDATE questions SET
  stem = 'In a Section 1031 exchange, what is the effect of giving boot?',
  choices = '["Giving boot causes the entire exchange to become fully taxable", "Giving boot triggers gain recognition equal to the amount of boot given", "Giving boot converts the character of the gain from capital to ordinary income", "Giving boot does not trigger gain recognition but increases the basis of the replacement property by the amount of boot given"]'::jsonb,
  explanation = 'Correct (D): Under Section 1031, when a taxpayer gives boot (cash or non-like-kind property) in a like-kind exchange, no gain is recognized on the like-kind property received. The boot given increases the basis of the replacement property because the taxpayer has additional investment in the exchange. (A) is wrong because giving boot does not cause the entire exchange to be taxable. (B) is wrong because giving boot does not trigger gain; receiving boot may trigger gain. (C) is wrong because giving boot does not change the character of any gain.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2601;

-- ID 2602: Like-Kind Exchanges — depreciation recapture
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 1031, how does depreciation recapture interact with like-kind exchange treatment?',
  choices = '["Depreciation recapture under Section 1245 or 1250 is recognized first before applying like-kind exchange deferral to any remaining gain", "Depreciation recapture is fully deferred in a like-kind exchange just like all other gain", "Depreciation recapture converts the entire gain on the exchange to ordinary income", "Depreciation recapture applies only if the taxpayer fails to identify replacement property within 45 days"]'::jsonb,
  explanation = 'Correct (A): Under Treasury Regulation 1.1031(j)-1, depreciation recapture under Section 1245 or Section 1250 is recognized first, to the extent of any gain recognized on the exchange. The recapture amount is treated as ordinary income and is not eligible for deferral. Any remaining gain in excess of the recapture amount may be deferred under Section 1031. (B) is wrong because depreciation recapture is not deferred; it is recognized even in an otherwise qualifying exchange. (C) is wrong because recapture applies only to the depreciation previously claimed, not the entire gain. (D) is wrong because recapture is triggered by the gain recognition rules, not the identification deadline.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2602;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (10 questions)
-- ============================================================

-- ID 540: Individual Taxation — rental loss allowance
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 469, what is the rental activity loss allowance for active participants?',
  choices = '["Active participants may deduct up to $50,000 of rental losses against nonpassive income", "Active participants may deduct up to $25,000 of rental losses against nonpassive income, subject to a phaseout beginning at $100,000 AGI", "Active participants may deduct unlimited rental losses as long as they materially participate in the rental activity", "Active participants may deduct rental losses only against other passive income without any special allowance"]'::jsonb,
  explanation = 'Correct (B): Under Section 469(i), individuals who actively participate in rental real estate activities may deduct up to $25,000 of rental losses against nonpassive income. This allowance phases out at the rate of $0.50 for each $1 of adjusted gross income above $100,000, fully phasing out at $150,000 AGI. (A) is wrong because the allowance is $25,000, not $50,000. (C) is wrong because the allowance is capped at $25,000 and subject to AGI phaseout, not unlimited. (D) is wrong because the $25,000 special allowance specifically permits offsetting nonpassive income.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 540;

-- ID 547: Individual Taxation — S corporation loss limitation
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 1366, what limits a shareholder''s deduction of S corporation losses?',
  choices = '["Losses are limited to the shareholder''s proportionate share of the corporation''s gross revenue", "Losses are limited to the fair market value of the shareholder''s stock at year-end", "Losses are limited to the shareholder''s adjusted basis in stock and any direct loans to the corporation", "Losses are deductible without limitation as long as the shareholder materially participates in the business"]'::jsonb,
  explanation = 'Correct (C): Under Section 1366(d), a shareholder''s deduction for S corporation losses and deductions is limited to the sum of the shareholder''s adjusted basis in the S corporation stock plus the shareholder''s adjusted basis in any indebtedness of the corporation directly to the shareholder. Losses exceeding this basis limitation are suspended and carried forward indefinitely. (A) is wrong because the limitation is based on stock and debt basis, not gross revenue. (B) is wrong because the limitation uses adjusted basis, not fair market value. (D) is wrong because even with material participation, the basis limitation applies.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 547;

-- ID 596: Individual Taxation — suspended passive losses at disposition
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 469, what happens to suspended passive losses when the activity is disposed of?',
  choices = '["Suspended passive losses are permanently disallowed upon disposition of the activity", "Suspended passive losses are converted to capital losses in the year of disposition", "Suspended passive losses may only offset passive income from other activities in the year of disposition", "Suspended passive losses are fully deductible against any income in the year of a fully taxable disposition to an unrelated party"]'::jsonb,
  explanation = 'Correct (D): Under Section 469(g), when a taxpayer disposes of an entire interest in a passive activity in a fully taxable transaction to an unrelated party, all suspended passive losses from that activity become fully deductible against any type of income, including wages, portfolio income, and active business income. (A) is wrong because suspended losses are not permanently disallowed. (B) is wrong because the losses retain their original character and are not converted to capital losses. (C) is wrong because the full deduction is available against all income, not just passive income, upon a qualifying disposition.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 596;

-- ID 1291: Individual Taxation — H.R. 1 tip income
-- correct_index = 0
UPDATE questions SET
  stem = 'Under H.R. 1, what is the tax treatment of tip income?',
  choices = '["Tips received by an employee are generally included in gross income and subject to income tax and FICA tax", "Tips under $600 per year are excluded from gross income", "Tips are classified as gifts and are therefore nontaxable to the recipient", "Tips are taxable only if reported by the employer on Form W-2"]'::jsonb,
  explanation = 'Correct (A): Under Section 61 and Section 3121, tips received by an employee in the course of employment are included in gross income and are subject to federal income tax and FICA (Social Security and Medicare) taxes. Employees are required to report tips of $20 or more per month to their employer. (B) is wrong because there is no $600 annual exclusion for tip income. (C) is wrong because tips are compensation for services, not gifts, under tax law. (D) is wrong because tips are taxable regardless of whether the employer includes them on the W-2; the employee has an independent reporting obligation.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1291;

-- ID 2616: Individual Taxation — gross income inclusions
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 61, which of the following is included in gross income?',
  choices = '["Gifts received from family members", "Alimony received under a pre-2019 divorce agreement", "Qualified scholarships used for tuition at an eligible educational institution", "Life insurance proceeds received by a beneficiary due to the death of the insured"]'::jsonb,
  explanation = 'Correct (B): Under Section 61 and Section 71 (for agreements executed before 2019), alimony received under a divorce or separation agreement executed before January 1, 2019, is included in the recipient''s gross income. The TCJA changed this rule for agreements executed after 2018. (A) is wrong because gifts are excluded from gross income under Section 102. (C) is wrong because qualified scholarships used for tuition are excluded under Section 117. (D) is wrong because life insurance proceeds paid by reason of death are generally excluded under Section 101(a).',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2616;

-- ID 2618: Individual Taxation — tax-exempt interest
-- correct_index = 2
UPDATE questions SET
  stem = 'Which types of interest income are excluded from gross income?',
  choices = '["Interest on corporate bonds issued by publicly traded companies", "Interest on U.S. Treasury bonds and savings bonds", "Interest on bonds issued by state and local governments under Section 103", "Interest on certificates of deposit held at federally insured banks"]'::jsonb,
  explanation = 'Correct (C): Under Section 103, interest on obligations of state and local governments (municipal bonds) is generally excluded from gross income for federal tax purposes. This exclusion applies to bonds issued by states, cities, counties, and their political subdivisions. (A) is wrong because interest on corporate bonds is fully taxable. (B) is wrong because interest on U.S. Treasury bonds is subject to federal income tax (though exempt from state and local tax). (D) is wrong because interest on CDs is fully taxable as ordinary income.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2618;

-- ID 2619: Individual Taxation — qualified dividend tax rate
-- correct_index = 3
UPDATE questions SET
  stem = 'What tax rate applies to qualified dividends?',
  choices = '["Qualified dividends are taxed at ordinary income rates", "Qualified dividends are taxed at a flat rate of 28%", "Qualified dividends are entirely excluded from gross income", "Qualified dividends are taxed at the same preferential rates as long-term capital gains"]'::jsonb,
  explanation = 'Correct (D): Under Section 1(h)(11), qualified dividends are taxed at the same preferential rates applicable to net long-term capital gains: 0%, 15%, or 20% depending on the taxpayer''s taxable income. This rate is lower than the ordinary income tax rates that apply to nonqualified (ordinary) dividends. (A) is wrong because qualified dividends receive preferential rates, not ordinary income rates. (B) is wrong because there is no flat 28% rate for qualified dividends. (C) is wrong because qualified dividends are included in gross income but taxed at reduced rates.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2619;

-- ID 2620: Individual Taxation — qualified dividend holding period
-- correct_index = 0
UPDATE questions SET
  stem = 'What holding period must be met for dividends to qualify for preferential tax rates?',
  choices = '["The shareholder must hold the stock for more than 60 days during the 121-day period beginning 60 days before the ex-dividend date", "The shareholder must hold the stock for at least one year before the dividend payment date", "The shareholder must hold the stock for at least 30 days before and after the record date", "The shareholder must hold the stock continuously from the declaration date through the payment date"]'::jsonb,
  explanation = 'Correct (A): Under Section 1(h)(11)(B)(iii) and Section 246(c), to qualify for the preferential tax rate, the shareholder must hold the stock for more than 60 days during the 121-day period that begins 60 days before the ex-dividend date. For preferred stock dividends attributable to periods greater than 366 days, the holding period is more than 90 days during a 181-day period. (B) is wrong because the holding period is 60 days, not one year. (C) is wrong because the period is measured around the ex-dividend date, not the record date, and is 60 days, not 30. (D) is wrong because continuous holding from declaration to payment is not the test.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2620;

-- ID 2621: Individual Taxation — vacation home rental rules
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 280A, what is the personal use test for rental vacation homes?',
  choices = '["A vacation home is subject to rental limitation rules if personal use exceeds 7 days during the year", "A vacation home is subject to rental limitation rules if personal use exceeds the greater of 14 days or 10% of the days the property is rented at fair rental value", "A vacation home is subject to rental limitation rules if any personal use occurs during the rental period", "A vacation home is treated as a rental property only if it is rented for the entire calendar year"]'::jsonb,
  explanation = 'Correct (B): Under Section 280A(d)(1), a dwelling unit is treated as used as a residence (triggering rental limitation rules) if the taxpayer uses it for personal purposes for more than the greater of 14 days or 10% of the number of days during the year for which the unit is rented at a fair rental value. When this test is met, rental deductions are limited to rental income. (A) is wrong because the threshold is the greater of 14 days or 10% of rental days, not simply 7 days. (C) is wrong because some personal use is permitted before the limitation rules apply. (D) is wrong because vacation homes may be rented for part of the year.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2621;

-- ID 2622: Individual Taxation — Social Security taxation threshold
-- correct_index = 2
UPDATE questions SET
  stem = 'At what income level do Social Security benefits become partially taxable?',
  choices = '["Social Security benefits are never subject to federal income tax regardless of income level", "Social Security benefits become taxable when the recipient''s total income exceeds $50,000 for single filers", "Social Security benefits become partially taxable when provisional income exceeds $25,000 for single filers or $32,000 for married filing jointly", "Social Security benefits are fully taxable for all recipients at ordinary income rates"]'::jsonb,
  explanation = 'Correct (C): Under Section 86, Social Security benefits become partially taxable when the taxpayer''s provisional income (AGI + nontaxable interest + 50% of Social Security benefits) exceeds $25,000 for single filers or $32,000 for married filing jointly. Up to 50% of benefits may be taxable at the first threshold, and up to 85% may be taxable at higher income levels ($34,000 single/$44,000 MFJ). (A) is wrong because Social Security benefits can be taxable. (B) is wrong because the threshold is $25,000 for single filers using provisional income, not $50,000 of total income. (D) is wrong because benefits are only partially taxable and only above certain income thresholds.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2622;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (9 questions)
-- ============================================================

-- ID 1166: Legal Duties — substantial understatement penalty
-- correct_index = 3
UPDATE questions SET
  stem = 'Under Section 6662, what is the penalty for a substantial understatement of income tax?',
  choices = '["A penalty equal to 10% of the underpayment attributable to the understatement", "A penalty equal to 50% of the underpayment attributable to the understatement", "A penalty equal to 75% of the underpayment attributable to the understatement", "A penalty equal to 20% of the underpayment attributable to the understatement"]'::jsonb,
  explanation = 'Correct (D): Under Section 6662(a), the accuracy-related penalty for a substantial understatement of income tax is 20% of the portion of the underpayment attributable to the understatement. A substantial understatement exists when the understatement exceeds the greater of 10% of the tax required to be shown on the return or $5,000 ($10,000 for corporations). (A) is wrong because the rate is 20%, not 10%. (B) is wrong because 50% is not the applicable rate. (C) is wrong because the 75% penalty applies to civil fraud under Section 6663, not accuracy-related penalties.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1166;

-- ID 1167: Legal Duties — preparer penalty for unreasonable position
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 6694, what standard must a preparer meet to avoid penalty?',
  choices = '["The preparer must have substantial authority for the position, or the position must be disclosed and have a reasonable basis", "The preparer must have a more-likely-than-not belief that the position will be sustained on its merits", "The preparer must obtain a written opinion from independent counsel supporting the position", "The preparer must verify all client-provided information through independent third-party sources"]'::jsonb,
  explanation = 'Correct (A): Under Section 6694(a), a tax return preparer is subject to penalty for an understatement of liability due to an unreasonable position unless the position has substantial authority, or if adequately disclosed, has a reasonable basis. For tax shelter or reportable transaction positions, the standard is that the preparer must reasonably believe the position would more likely than not be sustained on its merits. (B) is wrong because the more-likely-than-not standard applies to tax shelters, not all positions. (C) is wrong because an independent opinion is not required. (D) is wrong because independent verification of all information is not the standard.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1167;

-- ID 1170: Legal Duties — willful preparer penalty
-- correct_index = 1
UPDATE questions SET
  stem = 'Under Section 6694(b), what is the penalty for willful or reckless understatement?',
  choices = '["A penalty of $1,000 per return or claim for refund", "The greater of $5,000 or 75% of the income derived by the preparer with respect to the return or claim", "A penalty of $500 per return plus mandatory referral to the Office of Professional Responsibility", "A flat penalty of 20% of the understatement amount attributable to the preparer''s conduct"]'::jsonb,
  explanation = 'Correct (B): Under Section 6694(b), if any part of an understatement of liability is due to a willful attempt to understate the liability or reckless or intentional disregard of rules or regulations, the preparer is subject to a penalty equal to the greater of $5,000 or 75% of the income derived (or to be derived) by the preparer with respect to the return or claim. (A) is wrong because $1,000 is the penalty amount under Section 6694(a) for unreasonable positions, not willful conduct. (C) is wrong because the penalty is not $500 and does not automatically include OPR referral. (D) is wrong because the penalty is based on preparer income, not a flat 20% of the understatement.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1170;

-- ID 1172: Legal Duties — Section 6695 administrative penalties
-- correct_index = 2
UPDATE questions SET
  stem = 'Under Section 6695, which preparer actions trigger administrative penalties?',
  choices = '["Only failing to sign a tax return triggers a Section 6695 penalty", "Only failing to provide a copy of the return to the taxpayer triggers a Section 6695 penalty", "Failing to sign a return, failing to provide a copy to the taxpayer, failing to furnish a PTIN, and failing to retain copies or maintain a list of returns prepared", "Only failing to e-file a return when required triggers a Section 6695 penalty"]'::jsonb,
  explanation = 'Correct (C): Under Section 6695, administrative penalties apply to several preparer actions: failure to furnish a copy of the return to the taxpayer (6695(a)), failure to sign the return (6695(b)), failure to furnish an identifying number or PTIN (6695(c)), and failure to retain copies or maintain a list of returns prepared (6695(d)). Each violation carries a separate penalty. (A) is wrong because multiple actions trigger penalties, not just failure to sign. (B) is wrong because it names only one of several triggering actions. (D) is wrong because Section 6695 covers multiple compliance failures beyond e-filing.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1172;

-- ID 2861: Legal Duties — CPA common law duty of care
-- correct_index = 3
UPDATE questions SET
  stem = 'Under common law, what standard of care does a CPA owe to a client?',
  choices = '["A CPA must guarantee the accuracy of all work performed for the client", "A CPA must achieve the best possible outcome for the client in all engagements", "A CPA must meet the standard of care of the most experienced practitioners in the field", "A CPA must exercise the skill and care that a reasonably competent CPA would exercise under similar circumstances"]'::jsonb,
  explanation = 'Correct (D): Under common law, a CPA owes a duty to exercise the skill and care that a reasonably competent practitioner would exercise under the same or similar circumstances. This is an objective standard based on the profession''s norms, not perfection. (A) is wrong because CPAs do not guarantee accuracy; they are held to a reasonable competence standard. (B) is wrong because the duty is reasonable care, not the best possible outcome. (C) is wrong because the standard is a reasonably competent CPA, not the most experienced in the field.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2861;

-- ID 2862: Legal Duties — CPA negligence elements
-- correct_index = 0
UPDATE questions SET
  stem = 'What must a plaintiff prove to establish CPA negligence under common law?',
  choices = '["The plaintiff must prove a duty of care existed, the CPA breached that duty, the breach caused damages, and the plaintiff suffered actual damages", "The plaintiff must prove only that the CPA made an error on the engagement", "The plaintiff must prove the CPA intentionally caused harm to the client", "The plaintiff must prove the CPA lacked proper licensing at the time of the engagement"]'::jsonb,
  explanation = 'Correct (A): To establish negligence under common law, the plaintiff must prove four elements: (1) a duty of care existed between the CPA and the plaintiff, (2) the CPA breached that duty by failing to meet the standard of care, (3) the breach was the proximate cause of the plaintiff''s damages, and (4) the plaintiff suffered actual damages. All four elements must be proven. (B) is wrong because an error alone is insufficient without establishing all four elements. (C) is wrong because intentional harm is fraud, not negligence. (D) is wrong because licensing status is a regulatory issue, not the basis for a negligence claim.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2862;

-- ID 2863: Legal Duties — Ultramares privity doctrine
-- correct_index = 1
UPDATE questions SET
  stem = 'Under the Ultramares doctrine, to whom does an accountant owe a duty of care for negligence?',
  choices = '["To all foreseeable users of the financial statements", "Only to parties in privity of contract and intended third-party beneficiaries of the engagement", "To any person who relies on the accountant''s work product for any purpose", "To the SEC and all investors in publicly traded securities"]'::jsonb,
  explanation = 'Correct (B): Under the Ultramares doctrine (Ultramares Corp. v. Touche, 1931), an accountant''s liability for negligence is limited to those in privity of contract with the accountant and intended third-party beneficiaries of the engagement. This is the most restrictive standard of third-party liability. (A) is wrong because the foreseeable user standard is a broader approach adopted by some jurisdictions but is not the Ultramares rule. (C) is wrong because Ultramares specifically limits the scope of liability beyond all relying parties. (D) is wrong because the Ultramares doctrine is a common law rule, not tied specifically to SEC or publicly traded securities.',
  correct_index = 1,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2863;

-- ID 2864: Legal Duties — Restatement approach
-- correct_index = 2
UPDATE questions SET
  stem = 'Under the Restatement approach, to whom may an accountant be liable for negligence?',
  choices = '["Only to the client who directly engaged the accountant", "Only to parties in privity of contract, with no exceptions", "To persons or a limited group of persons whom the accountant knows will rely on the work, even without direct privity", "To all members of the general public who may foreseeably be harmed by the accountant''s negligence"]'::jsonb,
  explanation = 'Correct (C): Under the Restatement (Second) of Torts, Section 552, an accountant may be liable for negligent misrepresentation to a limited group of persons whom the accountant knows will rely on the information, or to persons within a class that the accountant intends to reach with the information. This is a middle ground between the restrictive Ultramares privity doctrine and the broad foreseeability standard. (A) is wrong because the Restatement extends liability beyond the direct client. (B) is wrong because the Restatement approach goes beyond strict privity. (D) is wrong because the Restatement limits liability to a known or intended group, not the entire general public.',
  correct_index = 2,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2864;

-- ID 2865: Legal Duties — actual fraud elements
-- correct_index = 3
UPDATE questions SET
  stem = 'What elements must be proven to establish actual fraud against a CPA?',
  choices = '["Only that the CPA made a material error on the financial statements", "Only that the CPA failed to follow generally accepted auditing standards", "Only that the plaintiff suffered financial harm after relying on the CPA''s work", "A material misrepresentation of fact, knowledge of its falsity or reckless disregard for truth, intent to induce reliance, justifiable reliance by the plaintiff, and resulting damages"]'::jsonb,
  explanation = 'Correct (D): To establish actual fraud (common law fraud or deceit) against a CPA, the plaintiff must prove: (1) a material misrepresentation of fact, (2) the CPA''s knowledge of the falsity (scienter) or reckless disregard for the truth, (3) intent to induce reliance, (4) justifiable reliance by the plaintiff on the misrepresentation, and (5) resulting damages. All five elements must be established. (A) is wrong because a material error alone does not establish fraud without scienter and intent. (B) is wrong because failure to follow GAAS may be negligence, not necessarily fraud. (C) is wrong because financial harm alone is insufficient without proving the other elements of fraud.',
  correct_index = 3,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 2865;

-- ============================================================
-- TAX-EXEMPT ORGANIZATIONS (1 question)
-- ============================================================

-- ID 1271: Tax-Exempt Organizations — failure to file penalty
-- correct_index = 0
UPDATE questions SET
  stem = 'Under Section 6033, what happens if a tax-exempt organization fails to file Form 990 for three consecutive years?',
  choices = '["The organization''s tax-exempt status is automatically revoked", "The organization receives a warning letter but retains its exempt status", "The organization is subject to a penalty of $250 per day but maintains its exempt status", "The organization must reapply for exemption within 30 days or lose its exempt status permanently"]'::jsonb,
  explanation = 'Correct (A): Under Section 6033(j), a tax-exempt organization that fails to file a required annual return (Form 990, 990-EZ, or 990-N) for three consecutive years will have its tax-exempt status automatically revoked. The revocation is effective as of the filing due date of the third missed return. The organization must then reapply for exemption under Section 6033(j)(3). (B) is wrong because automatic revocation occurs, not merely a warning. (C) is wrong because while per-day penalties may apply to late filing, three consecutive years of non-filing triggers automatic revocation. (D) is wrong because the revocation is automatic, not conditional on a 30-day reapplication window.',
  correct_index = 0,
  difficulty = 'easy',
  cognitive_level = 1
WHERE id = 1271;

COMMIT;