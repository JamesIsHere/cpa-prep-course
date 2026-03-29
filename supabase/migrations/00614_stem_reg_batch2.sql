-- Migration: Stem expansion — REG batch 2 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Estate and Gift Tax, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Partnerships, Professional Ethics in Tax, Property Transactions: Basis, Property Transactions: Gains/Losses, S Corporations, Tax Procedures, Tax-Exempt Organizations

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (2 questions)
-- ============================================================

-- ID 502: Agency and Regulation (12 words)
-- ORIGINAL STEM: Under the Securities Act of 1933, which securities are exempt from registration?
UPDATE questions SET
  stem = $EXPL$Vanguard Municipal Trust is preparing to issue new debt instruments to fund infrastructure projects for a state government. The trust''s counsel is reviewing whether the offering must be registered with the SEC. Under the Securities Act of 1933, which securities are exempt from registration?$EXPL$
WHERE id = 502;

-- ID 504: Agency and Regulation (12 words)
-- ORIGINAL STEM: Under the Securities Exchange Act of 1934, what triggers periodic reporting requirements?
UPDATE questions SET
  stem = $EXPL$NovaTech Inc. recently completed its initial public offering and its shares now trade on the NYSE. The CFO asks the company''s outside counsel what ongoing SEC filing obligations the company faces. Under the Securities Exchange Act of 1934, what triggers periodic reporting requirements?$EXPL$
WHERE id = 504;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (2 questions)
-- ============================================================

-- ID 10911: Alternative Minimum Tax (13 words)
-- ORIGINAL STEM: Under IRC Section 55, when does a taxpayer owe the alternative minimum tax?
UPDATE questions SET
  stem = $EXPL$Marcus, a single taxpayer, exercised incentive stock options in 2026 and claimed a large state income tax deduction. His CPA is computing both regular tax and tentative minimum tax. Under IRC Section 55, when does a taxpayer owe the alternative minimum tax?$EXPL$
WHERE id = 10911;

-- ID 11317: Alternative Minimum Tax (13 words)
-- ORIGINAL STEM: What is the approximate AMT exemption amount for estates and trusts in 2026?
UPDATE questions SET
  stem = $EXPL$The trustee of the Henderson Family Trust is computing the trust''s 2026 AMT liability. Before applying the AMT rates, the trustee needs to determine the applicable exemption. What is the approximate AMT exemption amount for estates and trusts in 2026?$EXPL$
WHERE id = 11317;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (2 questions)
-- ============================================================

-- ID 595: Business Law: Contracts (8 words)
-- ORIGINAL STEM: Under the UCC, what is an express warranty?
UPDATE questions SET
  stem = $EXPL$Pacific Equipment Co. sold a commercial generator to Baxter Industries. The sales brochure stated the generator ''produces 500 kW of continuous output.'' Baxter later discovered the unit produces only 350 kW. Under the UCC, what is an express warranty?$EXPL$
WHERE id = 595;

-- ID 11197: Business Law: Contracts (8 words)
-- ORIGINAL STEM: What is an illusory promise in contract law?
UPDATE questions SET
  stem = $EXPL$Dawson Corp. signed a supply agreement with Rivera Materials stating Dawson would purchase ''such quantities as Dawson may desire'' over the next year. Rivera later claimed no enforceable contract existed. What is an illusory promise in contract law?$EXPL$
WHERE id = 11197;

-- ============================================================
-- BUSINESS STRUCTURES (3 questions)
-- ============================================================

-- ID 11230: Business Structures (11 words)
-- ORIGINAL STEM: What is the primary governing document of a limited liability company?
UPDATE questions SET
  stem = $EXPL$Three entrepreneurs are forming Pinnacle Ventures LLC in Delaware and need to draft the document that will govern member rights, profit sharing, and management authority. What is the primary governing document of a limited liability company?$EXPL$
WHERE id = 11230;

-- ID 11235: Business Structures (11 words)
-- ORIGINAL STEM: Which ownership restriction applies specifically to S corporations under the IRC?
UPDATE questions SET
  stem = $EXPL$Greenfield Consulting, currently a C corporation, is evaluating whether to elect S corporation status. The CFO is reviewing the eligibility requirements under Subchapter S. Which ownership restriction applies specifically to S corporations under the IRC?$EXPL$
WHERE id = 11235;

-- ID 11236: Business Structures (11 words)
-- ORIGINAL STEM: How is a single-member LLC taxed by default under IRS rules?
UPDATE questions SET
  stem = $EXPL$Rachel Chen formed a single-member LLC in 2026 to operate her consulting practice. She did not file a Form 8832 entity classification election. How is a single-member LLC taxed by default under IRS rules?$EXPL$
WHERE id = 11236;

-- ============================================================
-- C CORPORATIONS (2 questions)
-- ============================================================

-- ID 10732: C Corporations (11 words)
-- ORIGINAL STEM: How are net long-term capital gains taxed for a C corporation?
UPDATE questions SET
  stem = $EXPL$Sterling Industries, a C corporation, sold investment land in 2026 for a $200,000 net long-term capital gain. The controller is determining the tax rate that applies to this gain on the corporate return. How are net long-term capital gains taxed for a C corporation?$EXPL$
WHERE id = 10732;

-- ID 10712: C Corporations (12 words)
-- ORIGINAL STEM: What is a constructive dividend in the context of C corporation taxation?
UPDATE questions SET
  stem = $EXPL$Omega Corp., a closely held C corporation, paid the personal vacation expenses of its sole shareholder, Davis, totaling $18,000. The IRS examiner reclassified the payment during an audit. What is a constructive dividend in the context of C corporation taxation?$EXPL$
WHERE id = 10712;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 594: Circular 230 (10 words)
-- ORIGINAL STEM: Under Section 6501(e), what triggers the six-year statute of limitations?
UPDATE questions SET
  stem = $EXPL$The IRS is examining Harper''s 2022 individual return filed on April 15, 2023. The agent believes Harper understated gross receipts from her sole proprietorship by more than 25%. Under Section 6501(e), what triggers the six-year statute of limitations?$EXPL$
WHERE id = 594;

-- ID 2376: Circular 230 (10 words)
-- ORIGINAL STEM: What authority does an enrolled agent have under Circular 230?
UPDATE questions SET
  stem = $EXPL$A taxpayer''s enrolled agent received a letter from the IRS proposing adjustments following a field audit. The taxpayer asks whether the enrolled agent can represent them at the Appeals conference. What authority does an enrolled agent have under Circular 230?$EXPL$
WHERE id = 2376;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (2 questions)
-- ============================================================

-- ID 1183: Debtor-Creditor Relationships (11 words)
-- ORIGINAL STEM: Under UCC Article 9, what determines priority among perfected security interests?
UPDATE questions SET
  stem = $EXPL$First National Bank filed a UCC-1 financing statement on March 1 covering all of Kline Manufacturing''s equipment. Metro Credit Union filed a competing UCC-1 on the same collateral on April 15. Under UCC Article 9, what determines priority among perfected security interests?$EXPL$
WHERE id = 1183;

-- ID 11263: Debtor-Creditor Relationships (11 words)
-- ORIGINAL STEM: What does property of the bankruptcy estate include under Section 541?
UPDATE questions SET
  stem = $EXPL$Whitfield Industries filed a Chapter 7 bankruptcy petition on June 1, 2026. The trustee is identifying all assets that belong to the bankruptcy estate. What does property of the bankruptcy estate include under Section 541?$EXPL$
WHERE id = 11263;

-- ============================================================
-- ESTATE AND GIFT TAX (2 questions)
-- ============================================================

-- ID 5499: Estate and Gift Tax (10 words)
-- ORIGINAL STEM: What is the applicable exclusion amount under IRC Section 2010?
UPDATE questions SET
  stem = $EXPL$Margaret Collins passed away in 2026 with a gross estate of $14 million. Her executor is computing the unified credit to determine whether any federal estate tax is owed. What is the applicable exclusion amount under IRC Section 2010?$EXPL$
WHERE id = 5499;

-- ID 5166: Estate and Gift Tax (13 words)
-- ORIGINAL STEM: When is the federal estate tax return (Form 706) and payment generally due?
UPDATE questions SET
  stem = $EXPL$Robert Langford died on March 15, 2026, leaving a taxable estate. His executor is determining the deadline for filing the estate tax return and remitting any tax due. When is the federal estate tax return (Form 706) and payment generally due?$EXPL$
WHERE id = 5166;

-- ============================================================
-- FEDERAL TAX PROCEDURES (1 questions)
-- ============================================================

-- ID 12705: Federal Tax Procedures (9 words)
-- ORIGINAL STEM: Which statement about interest on tax underpayments is correct?
UPDATE questions SET
  stem = $EXPL$After an IRS audit, Jensen was assessed an additional $25,000 in tax for 2023. Jensen''s CPA is advising him on the interest charges that will accrue on the underpayment. Which statement about interest on tax underpayments is correct?$EXPL$
WHERE id = 12705;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (2 questions)
-- ============================================================

-- ID 11282: Government Regulation of Business (12 words)
-- ORIGINAL STEM: Under the Sarbanes-Oxley Act, Section 806 provides whistleblower protection to which group?
UPDATE questions SET
  stem = $EXPL$An accountant at a publicly traded company discovered potential financial statement fraud and reported it to the SEC. When the company retaliated by terminating her, she filed a complaint. Under the Sarbanes-Oxley Act, Section 806 provides whistleblower protection to which group?$EXPL$
WHERE id = 11282;

-- ID 4803: Government Regulation of Business (15 words)
-- ORIGINAL STEM: Under the Clayton Act, which of the following activities is specifically addressed as potentially anticompetitive?
UPDATE questions SET
  stem = $EXPL$Apex Manufacturing, a dominant player in the industrial pump market, is proposing to acquire its largest competitor. The FTC is reviewing the transaction for antitrust concerns. Under the Clayton Act, which of the following activities is specifically addressed as potentially anticompetitive?$EXPL$
WHERE id = 4803;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (3 questions)
-- ============================================================

-- ID 10939: Individual Taxation: Credits (10 words)
-- ORIGINAL STEM: Is the adoption credit under Section 23 refundable or nonrefundable?
UPDATE questions SET
  stem = $EXPL$In 2026, David and Lisa Porter finalized the adoption of a child and incurred $16,000 in qualified adoption expenses. Their CPA is determining whether any unused credit can generate a refund. Is the adoption credit under Section 23 refundable or nonrefundable?$EXPL$
WHERE id = 10939;

-- ID 10930: Individual Taxation: Credits (11 words)
-- ORIGINAL STEM: What are the quarterly due dates for individual estimated tax payments?
UPDATE questions SET
  stem = $EXPL$Sandra, a self-employed graphic designer, expects to owe $20,000 in federal tax for 2026. Her accountant advises her to make quarterly estimated payments to avoid an underpayment penalty. What are the quarterly due dates for individual estimated tax payments?$EXPL$
WHERE id = 10930;

-- ID 11356: Individual Taxation: Credits (11 words)
-- ORIGINAL STEM: Under Section 25A(i), how is the American Opportunity Tax Credit calculated?
UPDATE questions SET
  stem = $EXPL$In 2026, Tyler paid $4,500 in tuition and required course materials for his sophomore year at State University. His parents are claiming the AOTC on their joint return. Under Section 25A(i), how is the American Opportunity Tax Credit calculated?$EXPL$
WHERE id = 11356;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (2 questions)
-- ============================================================

-- ID 10969: Individual Taxation: Credits/AMT (10 words)
-- ORIGINAL STEM: Which of the following correctly describes the Lifetime Learning Credit?
UPDATE questions SET
  stem = $EXPL$Priya, age 35, is enrolled in a graduate accounting program at night while working full-time. She paid $8,000 in tuition for 2026 and is evaluating which education credit to claim. Which of the following correctly describes the Lifetime Learning Credit?$EXPL$
WHERE id = 10969;

-- ID 2704: Individual Taxation: Credits/AMT (11 words)
-- ORIGINAL STEM: What tax rates are used to compute the alternative minimum tax?
UPDATE questions SET
  stem = $EXPL$After computing her alternative minimum taxable income and subtracting the exemption amount, a single taxpayer''s CPA must apply the AMT rate structure to determine the tentative minimum tax. What tax rates are used to compute the alternative minimum tax?$EXPL$
WHERE id = 2704;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (2 questions)
-- ============================================================

-- ID 2656: Individual Taxation: Deductions (10 words)
-- ORIGINAL STEM: Under Section 221, what is the student loan interest deduction?
UPDATE questions SET
  stem = $EXPL$In 2026, Kevin paid $3,200 in interest on qualified student loans from his undergraduate education. He files as single with an AGI of $70,000. Under Section 221, what is the student loan interest deduction?$EXPL$
WHERE id = 2656;

-- ID 2658: Individual Taxation: Deductions (10 words)
-- ORIGINAL STEM: Under H.R. 1, which deductions are available for individual taxpayers?
UPDATE questions SET
  stem = $EXPL$A tax advisor is reviewing 2026 changes enacted by H.R. 1 (the One Big Beautiful Bill Act) to advise a client on newly available above-the-line deductions. Under H.R. 1, which deductions are available for individual taxpayers?$EXPL$
WHERE id = 2658;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (3 questions)
-- ============================================================

-- ID 11019: Individual Taxation: Filing/Credits (11 words)
-- ORIGINAL STEM: Which IRS form is used to document a multiple support agreement?
UPDATE questions SET
  stem = $EXPL$Four siblings each contribute between 15% and 30% of their elderly mother''s total support, but none provides more than half. They agree that the oldest sibling will claim the mother as a dependent. Which IRS form is used to document a multiple support agreement?$EXPL$
WHERE id = 11019;

-- ID 2727: Individual Taxation: Filing/Credits (12 words)
-- ORIGINAL STEM: Under what circumstances may a married taxpayer file as head of household?
UPDATE questions SET
  stem = $EXPL$Angela has been married to Tom for ten years but they have lived apart since January. Angela maintains a home for their eight-year-old son and plans to file a separate return. Under what circumstances may a married taxpayer file as head of household?$EXPL$
WHERE id = 2727;

-- ID 2723: Individual Taxation: Filing/Credits (13 words)
-- ORIGINAL STEM: Which of the following filing statuses generally provides the most favorable tax rates?
UPDATE questions SET
  stem = $EXPL$A recently married couple is comparing the tax brackets and standard deduction amounts available under each filing status to minimize their combined tax liability. Which of the following filing statuses generally provides the most favorable tax rates?$EXPL$
WHERE id = 2723;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (4 questions)
-- ============================================================

-- ID 2644: Individual Taxation: Income (11 words)
-- ORIGINAL STEM: Which of the following items is specifically EXCLUDED from gross income?
UPDATE questions SET
  stem = $EXPL$In 2026, Laura received a $150,000 settlement from a personal injury lawsuit arising from a car accident that caused physical injuries. She is determining how to report the proceeds on her Form 1040. Which of the following items is specifically excluded from gross income?$EXPL$
WHERE id = 2644;

-- ID 11052: Individual Taxation: Income (11 words)
-- ORIGINAL STEM: How is the student loan interest deduction classified under Section 221?
UPDATE questions SET
  stem = $EXPL$Mitchell paid $2,100 in student loan interest during 2026. He is unsure whether this deduction reduces gross income to arrive at AGI or is claimed as an itemized deduction on Schedule A. How is the student loan interest deduction classified under Section 221?$EXPL$
WHERE id = 11052;

-- ID 547: Individual Taxation: Income (12 words)
-- ORIGINAL STEM: Under Section 1366, what limits a shareholder's deduction of S corporation losses?
UPDATE questions SET
  stem = $EXPL$Nguyen owns 40% of Ridgeview LLC, an S corporation. In 2026, the company reported a $200,000 ordinary loss, and Nguyen''s share is $80,000. Her stock basis is $50,000 with no direct loans to the company. Under Section 1366, what limits a shareholder''s deduction of S corporation losses?$EXPL$
WHERE id = 547;

-- ID 2616: Individual Taxation: Income (12 words)
-- ORIGINAL STEM: Under Section 61, which of the following is included in gross income?
UPDATE questions SET
  stem = $EXPL$During 2026, Jordan received $5,000 in jury duty pay, $2,000 in gambling winnings, and a $500 gift from a family member. He is determining which items must be reported on his tax return. Under Section 61, which of the following is included in gross income?$EXPL$
WHERE id = 2616;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 1170: Legal Duties and Responsibilities (12 words)
-- ORIGINAL STEM: Under Section 6694(b), what is the penalty for willful or reckless understatement?
UPDATE questions SET
  stem = $EXPL$A tax preparer intentionally disregarded IRS regulations when claiming inflated deductions on a client''s return, earning a $4,000 preparation fee. The IRS discovered the understatement during an examination. Under Section 6694(b), what is the penalty for willful or reckless understatement?$EXPL$
WHERE id = 1170;

-- ID 2862: Legal Duties and Responsibilities (12 words)
-- ORIGINAL STEM: What must a plaintiff prove to establish CPA negligence under common law?
UPDATE questions SET
  stem = $EXPL$Westbrook Industries suffered a $300,000 loss after relying on audited financial statements prepared by Drake & Associates CPAs. Westbrook filed suit alleging the firm failed to detect a material misstatement. What must a plaintiff prove to establish CPA negligence under common law?$EXPL$
WHERE id = 2862;

-- ============================================================
-- LIKE-KIND EXCHANGES (2 questions)
-- ============================================================

-- ID 536: Like-Kind Exchanges (11 words)
-- ORIGINAL STEM: Under Section 121, what is the home sale exclusion for individuals?
UPDATE questions SET
  stem = $EXPL$In August 2026, Patricia sold her primary residence for a $400,000 gain. She had owned and lived in the home for seven years and is filing as single. Under Section 121, what is the home sale exclusion for individuals?$EXPL$
WHERE id = 536;

-- ID 2595: Like-Kind Exchanges (11 words)
-- ORIGINAL STEM: Under Section 1031, what is the identification period for replacement property?
UPDATE questions SET
  stem = $EXPL$On May 1, 2026, Redstone Properties transferred a rental warehouse to a qualified intermediary as part of a deferred like-kind exchange. The company needs to identify potential replacement properties within the required timeframe. Under Section 1031, what is the identification period for replacement property?$EXPL$
WHERE id = 2595;

-- ============================================================
-- PARTNERSHIPS (2 questions)
-- ============================================================

-- ID 10832: Partnerships (9 words)
-- ORIGINAL STEM: In partnership taxation, what is a partner's capital account?
UPDATE questions SET
  stem = $EXPL$When forming Birch & Elm Partners, each partner contributed cash and property. The partnership maintains individual records tracking each partner''s equity in the entity. In partnership taxation, what is a partner''s capital account?$EXPL$
WHERE id = 10832;

-- ID 241: Partnerships (10 words)
-- ORIGINAL STEM: Under Section 751, what are hot assets in a partnership?
UPDATE questions SET
  stem = $EXPL$Carter is selling her 25% partnership interest in Delta Services LP. The partnership holds significant accounts receivable and inventory on its balance sheet. Her CPA warns that a portion of the sale proceeds may be taxed as ordinary income. Under Section 751, what are hot assets in a partnership?$EXPL$
WHERE id = 241;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (1 questions)
-- ============================================================

-- ID 2405: Professional Ethics in Tax (13 words)
-- ORIGINAL STEM: Under Circular 230, what is a practitioner's obligation upon learning of client noncompliance?
UPDATE questions SET
  stem = $EXPL$While preparing a client''s 2026 return, CPA Navarro discovered that the client failed to report $40,000 of consulting income on the prior year''s return. Navarro must determine her professional responsibilities. Under Circular 230, what is a practitioner''s obligation upon learning of client noncompliance?$EXPL$
WHERE id = 2405;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (2 questions)
-- ============================================================

-- ID 2534: Property Transactions: Basis (11 words)
-- ORIGINAL STEM: How does claiming depreciation affect the adjusted basis of a building?
UPDATE questions SET
  stem = $EXPL$Franklin purchased a rental building in 2020 for $400,000 and has claimed $60,000 of straight-line depreciation through 2026. He is calculating the property''s current adjusted basis for purposes of determining gain on a potential sale. How does claiming depreciation affect the adjusted basis of a building?$EXPL$
WHERE id = 2534;

-- ID 2535: Property Transactions: Basis (11 words)
-- ORIGINAL STEM: Under Section 1016, what is the allowed or allowable depreciation rule?
UPDATE questions SET
  stem = $EXPL$A taxpayer owned rental property for five years but never claimed any depreciation deductions on her returns. She is now selling the property and her CPA is computing the adjusted basis. Under Section 1016, what is the allowed or allowable depreciation rule?$EXPL$
WHERE id = 2535;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (2 questions)
-- ============================================================

-- ID 2565: Property Transactions: Gains/Losses (9 words)
-- ORIGINAL STEM: What is the purpose of Section 1245 depreciation recapture?
UPDATE questions SET
  stem = $EXPL$Oakmont Manufacturing sold production equipment for $120,000 that had an original cost of $180,000 and accumulated depreciation of $90,000. The controller is determining how the gain will be characterized on the tax return. What is the purpose of Section 1245 depreciation recapture?$EXPL$
WHERE id = 2565;

-- ID 526: Property Transactions: Gains/Losses (10 words)
-- ORIGINAL STEM: What is the order for netting capital gains and losses?
UPDATE questions SET
  stem = $EXPL$During 2026, Ellis had a $12,000 short-term capital loss, a $5,000 short-term capital gain, an $18,000 long-term capital gain, and a $3,000 long-term capital loss. His CPA is preparing the Schedule D. What is the order for netting capital gains and losses?$EXPL$
WHERE id = 526;

-- ============================================================
-- S CORPORATIONS (2 questions)
-- ============================================================

-- ID 10860: S Corporations (11 words)
-- ORIGINAL STEM: What is the post-termination transition period (PTTP) for an S corporation?
UPDATE questions SET
  stem = $EXPL$Keystone Corp.''s S election was revoked effective January 1, 2026. A shareholder with suspended losses from the S corporation years wants to know the deadline for utilizing those losses against distributions. What is the post-termination transition period (PTTP) for an S corporation?$EXPL$
WHERE id = 10860;

-- ID 10889: S Corporations (11 words)
-- ORIGINAL STEM: Which C corporation penalty tax does NOT apply to S corporations?
UPDATE questions SET
  stem = $EXPL$Linden Corp. elected S corporation status five years ago. The president asks the tax advisor whether the company is still exposed to the penalty taxes that applied when it was a C corporation. Which C corporation penalty tax does NOT apply to S corporations?$EXPL$
WHERE id = 10889;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 2432: Tax Procedures (11 words)
-- ORIGINAL STEM: How does a taxpayer appeal the results of an IRS examination?
UPDATE questions SET
  stem = $EXPL$After receiving a 30-day letter proposing a $45,000 deficiency, Thompson disagrees with the IRS examiner''s findings and wants to contest the assessment without going to court. How does a taxpayer appeal the results of an IRS examination?$EXPL$
WHERE id = 2432;

-- ID 245: Tax Procedures (12 words)
-- ORIGINAL STEM: Under Section 6663, what is the penalty for a fraudulent tax return?
UPDATE questions SET
  stem = $EXPL$The IRS determined that a taxpayer intentionally understated income by $100,000 and presented clear and convincing evidence of fraud. The examiner is computing the applicable civil penalty. Under Section 6663, what is the penalty for a fraudulent tax return?$EXPL$
WHERE id = 245;

-- ============================================================
-- TAX-EXEMPT ORGANIZATIONS (1 questions)
-- ============================================================

-- ID 2910: Tax-Exempt Organizations (11 words)
-- ORIGINAL STEM: Under Section 501(c)(3), what is the rule regarding political campaign activity?
UPDATE questions SET
  stem = $EXPL$The board of a Section 501(c)(3) educational foundation is considering endorsing a candidate in an upcoming congressional election. The organization''s legal counsel warns that this could jeopardize its tax-exempt status. Under Section 501(c)(3), what is the rule regarding political campaign activity?$EXPL$
WHERE id = 2910;

COMMIT;
