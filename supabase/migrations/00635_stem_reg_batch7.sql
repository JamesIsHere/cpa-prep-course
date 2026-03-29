-- Migration: Stem expansion — REG batch 7 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Estate and Gift Tax, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Partnerships, Professional Ethics in Tax, Property Transactions: Basis, Property Transactions: Gains/Losses, S Corporations, Tax Procedures, Tax-Exempt Organizations

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (2 questions)
-- ============================================================

-- ID 205: Agency and Regulation (16 words)
-- ORIGINAL STEM: An agent who acts beyond the scope of their authority may still bind the principal if:
UPDATE questions SET
  stem = $EXPL$Dawson, a sales representative, signed a $40,000 supply contract with Beacon Industries despite having no written authorization from his employer, Crestline Corp. Crestline''s VP had previously introduced Dawson to Beacon as "our purchasing lead." An agent who acts beyond the scope of actual authority may still bind the principal if:$EXPL$
WHERE id = 205;

-- ID 2485: Agency and Regulation (16 words)
-- ORIGINAL STEM: A gratuitous agent — one who receives no compensation — owes which duties to the principal?
UPDATE questions SET
  stem = $EXPL$Torres, a retired accountant, volunteers to review financial records for her neighbor''s small business without any fee arrangement. As a gratuitous agent receiving no compensation, which duties does Torres owe to the principal?$EXPL$
WHERE id = 2485;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (2 questions)
-- ============================================================

-- ID 10903: Alternative Minimum Tax (17 words)
-- ORIGINAL STEM: Under IRC Section 53, for how long may an individual carry forward an unused minimum tax credit?
UPDATE questions SET
  stem = $EXPL$In 2025, Hayden paid $18,000 in AMT due to a large incentive stock option exercise. In 2026, his regular tax exceeds the tentative minimum tax, generating an unused minimum tax credit. Under IRC Section 53, for how long may Hayden carry forward this credit?$EXPL$
WHERE id = 10903;

-- ID 11314: Alternative Minimum Tax (17 words)
-- ORIGINAL STEM: Which IRC section specifies the adjustments used to convert regular taxable income into alternative minimum taxable income?
UPDATE questions SET
  stem = $EXPL$Chen, a CPA, is computing a client''s alternative minimum taxable income for 2026 and needs to identify the statutory authority for the required adjustments. Which IRC section specifies the adjustments used to convert regular taxable income into AMTI?$EXPL$
WHERE id = 11314;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (2 questions)
-- ============================================================

-- ID 2450: Business Law: Contracts (15 words)
-- ORIGINAL STEM: Which of the following is required for a valid offer under common law contract principles?
UPDATE questions SET
  stem = $EXPL$Garrett sends a letter to Simmons proposing to sell his lakefront cabin "for a reasonable price to be determined later." Simmons immediately responds with a written acceptance. Which of the following is required for a valid offer under common law contract principles?$EXPL$
WHERE id = 2450;

-- ID 204: Business Law: Contracts (16 words)
-- ORIGINAL STEM: A minor enters into a contract to purchase a car. Which of the following is true?
UPDATE questions SET
  stem = $EXPL$Ethan, age 16, signs a contract to purchase a used car from Valley Motors for $8,500 and drives it for three months. Ethan now wants to cancel the agreement. Which of the following is true regarding this contract?$EXPL$
WHERE id = 204;

-- ============================================================
-- BUSINESS STRUCTURES (2 questions)
-- ============================================================

-- ID 2516: Business Structures (17 words)
-- ORIGINAL STEM: When forming a corporation, which document must be filed with the state to legally create the entity?
UPDATE questions SET
  stem = $EXPL$Blake and Rivera plan to launch a technology consulting business as a corporation in Delaware. Their attorney is preparing the necessary formation documents. Which document must be filed with the state to legally create the corporate entity?$EXPL$
WHERE id = 2516;

-- ID 2522: Business Structures (17 words)
-- ORIGINAL STEM: Which of the following is a key difference between a corporation's bylaws and its articles of incorporation?
UPDATE questions SET
  stem = $EXPL$Pinnacle Corp recently filed its articles of incorporation with the state and is now drafting internal governance rules. The board wants to understand the legal distinction between these two documents. Which of the following is a key difference between bylaws and articles of incorporation?$EXPL$
WHERE id = 2522;

-- ============================================================
-- C CORPORATIONS (2 questions)
-- ============================================================

-- ID 11084: C Corporations (16 words)
-- ORIGINAL STEM: Which of the following expenses is nondeductible for a C corporation under the Internal Revenue Code?
UPDATE questions SET
  stem = $EXPL$Meridian Corp, a C corporation, is reviewing its 2026 expense records before filing Form 1120. The controller wants to confirm which items reduce taxable income. Which of the following expenses is nondeductible for a C corporation under the Internal Revenue Code?$EXPL$
WHERE id = 11084;

-- ID 11085: C Corporations (17 words)
-- ORIGINAL STEM: What is the federal income tax rate for C corporations under the Tax Cuts and Jobs Act?
UPDATE questions SET
  stem = $EXPL$Orion Manufacturing, a domestic C corporation, reports $480,000 of taxable income for 2026 on Form 1120. The CFO is calculating the corporation''s federal income tax liability. What is the applicable federal tax rate under the Tax Cuts and Jobs Act?$EXPL$
WHERE id = 11085;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 2384: Circular 230 (15 words)
-- ORIGINAL STEM: Under Circular 230, in which of the following situations is a contingent fee arrangement permitted?
UPDATE questions SET
  stem = $EXPL$Garcia, an enrolled agent, is negotiating fee arrangements with a new client. The client proposes paying a percentage of any tax savings achieved. Under Circular 230, in which of the following situations is a contingent fee arrangement permitted?$EXPL$
WHERE id = 2384;

-- ID 2390: Circular 230 (15 words)
-- ORIGINAL STEM: Under Circular 230, the term "practice before the IRS" encompasses which of the following activities?
UPDATE questions SET
  stem = $EXPL$A newly licensed CPA wants to confirm the scope of activities governed by Treasury Circular 230 before representing clients in federal tax matters. Under Circular 230, the term "practice before the IRS" encompasses which of the following activities?$EXPL$
WHERE id = 2390;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (2 questions)
-- ============================================================

-- ID 11268: Debtor-Creditor Relationships (16 words)
-- ORIGINAL STEM: Parker Industries, a corporation, files Chapter 7 bankruptcy. What happens regarding discharge of the corporation's debts?
UPDATE questions SET
  stem = $EXPL$Parker Industries, a domestic corporation with $2.4 million in unsecured debt, files a voluntary Chapter 7 petition. The bankruptcy trustee liquidates all nonexempt assets and distributes proceeds to creditors. What happens regarding discharge of the corporation''s remaining debts?$EXPL$
WHERE id = 11268;

-- ID 2888: Debtor-Creditor Relationships (17 words)
-- ORIGINAL STEM: In a Chapter 7 bankruptcy, what is the correct priority order for distributing assets to unsecured creditors?
UPDATE questions SET
  stem = $EXPL$Lakeshore Distributing files Chapter 7, and the trustee recovers $320,000 after satisfying secured claims. Outstanding unsecured claims include administrative expenses, employee wages, tax obligations, and trade payables. What is the correct priority order for distributing these assets?$EXPL$
WHERE id = 2888;

-- ============================================================
-- ESTATE AND GIFT TAX (2 questions)
-- ============================================================

-- ID 5146: Estate and Gift Tax (17 words)
-- ORIGINAL STEM: Under IRC Section 2040(a), how is jointly held property between non-spouses included in a decedent's gross estate?
UPDATE questions SET
  stem = $EXPL$Margaret and her brother David purchased a vacation home as joint tenants with right of survivorship for $400,000. Margaret contributed $300,000 and David contributed $100,000. Margaret dies in 2026. Under IRC Section 2040(a), how is the jointly held property included in Margaret''s gross estate?$EXPL$
WHERE id = 5146;

-- ID 5158: Estate and Gift Tax (17 words)
-- ORIGINAL STEM: When is the gift tax return (Form 709) generally due for gifts made during the calendar year?
UPDATE questions SET
  stem = $EXPL$In December 2026, Patterson transfers $200,000 in stock to her daughter, exceeding the annual exclusion. Patterson''s tax advisor is determining the filing deadline. When is the gift tax return (Form 709) generally due for gifts made during the calendar year?$EXPL$
WHERE id = 5158;

-- ============================================================
-- FEDERAL TAX PROCEDURES (1 questions)
-- ============================================================

-- ID 12703: Federal Tax Procedures (14 words)
-- ORIGINAL STEM: How long does the IRS generally have to collect a tax debt after assessment?
UPDATE questions SET
  stem = $EXPL$In March 2026, the IRS assesses a $45,000 deficiency against Wallace after a field audit of his 2023 return. Wallace has not made any payments. How long does the IRS generally have to collect this tax debt after the date of assessment?$EXPL$
WHERE id = 12703;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (2 questions)
-- ============================================================

-- ID 4792: Government Regulation of Business (18 words)
-- ORIGINAL STEM: Title VII of the Civil Rights Act of 1964 prohibits employment discrimination based on which of the following?
UPDATE questions SET
  stem = $EXPL$Hartwell Manufacturing, which employs 120 workers, is updating its hiring policies to comply with federal anti-discrimination law. The HR director is reviewing the protected categories. Title VII of the Civil Rights Act of 1964 prohibits employment discrimination based on which of the following?$EXPL$
WHERE id = 4792;

-- ID 4794: Government Regulation of Business (18 words)
-- ORIGINAL STEM: Under the Sherman Antitrust Act, which of the following business practices is treated as a per se violation?
UPDATE questions SET
  stem = $EXPL$The Department of Justice is investigating several companies in the building materials industry for potentially anticompetitive conduct. Under the Sherman Antitrust Act, which of the following business practices is treated as a per se violation?$EXPL$
WHERE id = 4794;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (2 questions)
-- ============================================================

-- ID 2692: Individual Taxation: Credits (18 words)
-- ORIGINAL STEM: To claim the child and dependent care credit, both spouses must have earned income unless one spouse is:
UPDATE questions SET
  stem = $EXPL$Mark and Lisa file jointly and pay $9,000 in daycare expenses for their 4-year-old daughter. Mark earns $72,000 as a project manager. Lisa has no earned income in 2026. To claim the child and dependent care credit, both spouses must have earned income unless one spouse is:$EXPL$
WHERE id = 2692;

-- ID 2696: Individual Taxation: Credits (18 words)
-- ORIGINAL STEM: The child tax credit under H.R. 1 requires the qualifying child to have what type of identification number?
UPDATE questions SET
  stem = $EXPL$Nguyen and Pham file jointly and claim their 8-year-old son as a dependent for the 2026 tax year. They want to claim the full $2,000 child tax credit under H.R. 1. The qualifying child must have what type of identification number?$EXPL$
WHERE id = 2696;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (2 questions)
-- ============================================================

-- ID 2708: Individual Taxation: Credits/AMT (17 words)
-- ORIGINAL STEM: The AMT exemption for married filing jointly in 2026 begins to phase out when AMTI exceeds approximately:
UPDATE questions SET
  stem = $EXPL$Grant and Ellis file a joint return for 2026. After adding back all AMT adjustments and preferences, their alternative minimum taxable income is $1,250,000. The AMT exemption for married filing jointly in 2026 begins to phase out when AMTI exceeds approximately:$EXPL$
WHERE id = 2708;

-- ID 10961: Individual Taxation: Credits/AMT (17 words)
-- ORIGINAL STEM: What is the maximum age at which a dependent child qualifies for the $2,000 Child Tax Credit?
UPDATE questions SET
  stem = $EXPL$The Reeves family claims three children as dependents: ages 10, 14, and 17. They want to determine which children qualify for the full $2,000 Child Tax Credit on their 2026 return. What is the maximum age at which a dependent child qualifies?$EXPL$
WHERE id = 10961;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (2 questions)
-- ============================================================

-- ID 2672: Individual Taxation: Deductions (13 words)
-- ORIGINAL STEM: Which of the following is NOT an above-the-line deduction (adjustment to gross income)?
UPDATE questions SET
  stem = $EXPL$Jordan, a single taxpayer with $95,000 in wages, is calculating adjusted gross income for 2026 and wants to identify all available above-the-line deductions. Which of the following is NOT an above-the-line deduction?$EXPL$
WHERE id = 2672;

-- ID 10995: Individual Taxation: Deductions (15 words)
-- ORIGINAL STEM: Under current tax law, which type of interest is generally NOT deductible by individual taxpayers?
UPDATE questions SET
  stem = $EXPL$In 2026, Marshall pays interest on a home mortgage, a student loan, a personal credit card, and an investment margin account. Under current tax law, which type of interest is generally NOT deductible by individual taxpayers?$EXPL$
WHERE id = 10995;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (2 questions)
-- ============================================================

-- ID 2749: Individual Taxation: Filing/Credits (17 words)
-- ORIGINAL STEM: Which of the following is a requirement for a taxpayer to claim qualifying surviving spouse filing status?
UPDATE questions SET
  stem = $EXPL$Karen''s husband died in November 2024. She has not remarried and maintains a home for her 10-year-old dependent son. For her 2026 tax return, Karen wants to file as a qualifying surviving spouse. Which of the following is a requirement for this filing status?$EXPL$
WHERE id = 2749;

-- ID 2740: Individual Taxation: Filing/Credits (18 words)
-- ORIGINAL STEM: A self-employed taxpayer has net earnings of $60,000 in 2026. Estimated tax payments are due on which dates?
UPDATE questions SET
  stem = $EXPL$Pratt, a self-employed graphic designer, expects net earnings of $60,000 for 2026 and has no tax withholding. Pratt''s CPA advises making quarterly estimated tax payments. These payments are due on which dates?$EXPL$
WHERE id = 2740;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (2 questions)
-- ============================================================

-- ID 11069: Individual Taxation: Income (16 words)
-- ORIGINAL STEM: What is the approximate standard deduction for a taxpayer filing as married filing separately in 2026?
UPDATE questions SET
  stem = $EXPL$Hicks and Olsen are married but choose to file separate returns for 2026. Neither spouse itemizes deductions. Hicks is under 65 and not blind. What is the approximate standard deduction for Hicks filing as married filing separately?$EXPL$
WHERE id = 11069;

-- ID 548: Individual Taxation: Income (17 words)
-- ORIGINAL STEM: Under the passive activity rules, which of the following is classified as portfolio income (not passive income)?
UPDATE questions SET
  stem = $EXPL$Drake owns a 30% limited partnership interest in a rental real estate venture and also holds a diversified stock portfolio generating various types of investment returns. Under the passive activity rules, which of the following is classified as portfolio income rather than passive income?$EXPL$
WHERE id = 548;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 13798: Legal Duties and Responsibilities (18 words)
-- ORIGINAL STEM: What is the maximum aggregate penalty per calendar year for each category of administrative violation under Section 6695?
UPDATE questions SET
  stem = $EXPL$A mid-size tax preparation firm discovers that several preparers failed to include PTINs on returns throughout 2026. The firm is evaluating its exposure under IRC Section 6695. What is the maximum aggregate penalty per calendar year for each category of administrative violation?$EXPL$
WHERE id = 13798;

-- ID 2866: Legal Duties and Responsibilities (19 words)
-- ORIGINAL STEM: Section 7525 of the Internal Revenue Code provides a privilege for tax advice. To whom does this privilege apply?
UPDATE questions SET
  stem = $EXPL$During an IRS examination, the revenue agent requests all communications between the taxpayer and her CPA regarding a contested deduction. The CPA asserts the IRC Section 7525 privilege. To whom does this tax advice privilege apply?$EXPL$
WHERE id = 2866;

-- ============================================================
-- LIKE-KIND EXCHANGES (7 questions)
-- ============================================================

-- ID 13063: Like-Kind Exchanges (13 words)
-- ORIGINAL STEM: What distinguishes a deferred (Starker) exchange from a simultaneous exchange under Section 1031?
UPDATE questions SET
  stem = $EXPL$Briggs sells a rental warehouse on March 1, 2026, and plans to acquire replacement property within the statutory deadlines. Rather than swapping properties directly with another party, Briggs uses a qualified intermediary. What distinguishes this deferred (Starker) exchange from a simultaneous exchange under Section 1031?$EXPL$
WHERE id = 13063;

-- ID 13068: Like-Kind Exchanges (13 words)
-- ORIGINAL STEM: Which of the following properties is excluded from Section 1031 like-kind exchange treatment?
UPDATE questions SET
  stem = $EXPL$Kline, a sole proprietor, is evaluating several assets for potential like-kind exchanges in 2026, including rental buildings, delivery trucks, and publicly traded securities. Which of the following properties is excluded from Section 1031 like-kind exchange treatment?$EXPL$
WHERE id = 13068;

-- ID 2604: Like-Kind Exchanges (14 words)
-- ORIGINAL STEM: Which of the following would disqualify a transaction from Section 1031 like-kind exchange treatment?
UPDATE questions SET
  stem = $EXPL$Monroe plans to exchange an office building held for investment for another commercial property using a qualified intermediary. Monroe''s tax advisor reviews the proposed transaction for compliance. Which of the following would disqualify the transaction from Section 1031 like-kind exchange treatment?$EXPL$
WHERE id = 2604;

-- ID 2599: Like-Kind Exchanges (15 words)
-- ORIGINAL STEM: Under Section 1031, what is the basis of replacement property received in a like-kind exchange?
UPDATE questions SET
  stem = $EXPL$Palmer exchanges a rental duplex (adjusted basis $180,000, FMV $260,000) for a commercial lot valued at $260,000 in a qualifying like-kind exchange with no boot. Under Section 1031, what is the basis of the replacement property Palmer receives?$EXPL$
WHERE id = 2599;

-- ID 2606: Like-Kind Exchanges (15 words)
-- ORIGINAL STEM: Which of the following is NOT a requirement for a valid Section 1031 like-kind exchange?
UPDATE questions SET
  stem = $EXPL$Reed, a real estate investor, is structuring a deferred exchange of a rental property through a qualified intermediary. Reed''s attorney outlines the statutory requirements. Which of the following is NOT a requirement for a valid Section 1031 like-kind exchange?$EXPL$
WHERE id = 2606;

-- ID 2609: Like-Kind Exchanges (19 words)
-- ORIGINAL STEM: Janet identifies four potential replacement properties within the 45-day identification period. Under the three-property rule, what is the consequence?
UPDATE questions SET
  stem = $EXPL$Janet sells a rental office building and uses a qualified intermediary for a deferred exchange. Within the 45-day identification period, she submits a written list identifying four potential replacement properties. Under the three-property rule, what is the consequence of identifying four properties?$EXPL$
WHERE id = 2609;

-- ID 2608: Like-Kind Exchanges (20 words)
-- ORIGINAL STEM: Under Section 1031, can a taxpayer exchange a rental property in the United States for a rental property in France?
UPDATE questions SET
  stem = $EXPL$Voss owns a rental apartment building in Chicago and wants to exchange it for a rental villa in southern France through a Section 1031 like-kind exchange. Can Voss defer gain by exchanging U.S. real property for foreign real property under Section 1031?$EXPL$
WHERE id = 2608;

-- ============================================================
-- PARTNERSHIPS (2 questions)
-- ============================================================

-- ID 10758: Partnerships (16 words)
-- ORIGINAL STEM: What form does a partnership use to report each partner's share of income, deductions, and credits?
UPDATE questions SET
  stem = $EXPL$Atlas Consulting, a three-member partnership, files its annual informational return on Form 1065. The partnership must also furnish each partner a statement of their allocated items. What form does a partnership use to report each partner''s share of income, deductions, and credits?$EXPL$
WHERE id = 10758;

-- ID 10844: Partnerships (16 words)
-- ORIGINAL STEM: What is the minimum number of members required to form a partnership for federal tax purposes?
UPDATE questions SET
  stem = $EXPL$Davis wants to start a consulting business and is considering partnership status for federal tax purposes. His attorney advises that a partnership requires a threshold number of owners. What is the minimum number of members required to form a partnership?$EXPL$
WHERE id = 10844;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (2 questions)
-- ============================================================

-- ID 2409: Professional Ethics in Tax (16 words)
-- ORIGINAL STEM: Under SSTS No. 2, when may a CPA leave a question unanswered on a tax return?
UPDATE questions SET
  stem = $EXPL$Hoffman, CPA, is preparing a client''s Form 1040 and encounters an optional disclosure question on Schedule B regarding foreign accounts. The client provides no information. Under SSTS No. 2, when may a CPA leave a question unanswered on a tax return?$EXPL$
WHERE id = 2409;

-- ID 2413: Professional Ethics in Tax (16 words)
-- ORIGINAL STEM: Under SSTS No. 7, what are the requirements for the form and content of tax advice?
UPDATE questions SET
  stem = $EXPL$Webb, CPA, provides a client with verbal advice on the deductibility of home office expenses. The client later asks whether the advice should have been in writing. Under SSTS No. 7, what are the requirements for the form and content of tax advice?$EXPL$
WHERE id = 2413;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (1 questions)
-- ============================================================

-- ID 2555: Property Transactions: Basis (16 words)
-- ORIGINAL STEM: Under Section 1014, which of the following is NOT eligible for a stepped-up basis at death?
UPDATE questions SET
  stem = $EXPL$Henderson dies in 2026 owning publicly traded stock, a personal residence, and an IRA account. The executor is determining the basis of inherited assets for tax purposes. Under Section 1014, which of the following is NOT eligible for a stepped-up basis at death?$EXPL$
WHERE id = 2555;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (1 questions)
-- ============================================================

-- ID 2574: Property Transactions: Gains/Losses (13 words)
-- ORIGINAL STEM: Under Section 1250, depreciation recapture on the sale of real property applies to:
UPDATE questions SET
  stem = $EXPL$Thornton sells a nonresidential rental building in 2026 for $620,000 that was purchased for $500,000 and depreciated using the straight-line method. The CPA is analyzing the character of the gain. Under Section 1250, depreciation recapture on the sale of real property applies to:$EXPL$
WHERE id = 2574;

-- ============================================================
-- S CORPORATIONS (2 questions)
-- ============================================================

-- ID 10783: S Corporations (15 words)
-- ORIGINAL STEM: Which type of corporation is ineligible to elect S corporation status under IRC Section 1361(b)(2)?
UPDATE questions SET
  stem = $EXPL$Apex Financial, a domestic corporation with 40 shareholders, is considering an S election to avoid double taxation. The tax advisor must first confirm the entity is not in an excluded category. Which type of corporation is ineligible to elect S corporation status under IRC Section 1361(b)(2)?$EXPL$
WHERE id = 10783;

-- ID 581: S Corporations (16 words)
-- ORIGINAL STEM: Under Section 1375, when does the excess net passive income tax apply to an S corporation?
UPDATE questions SET
  stem = $EXPL$Ridgeway Corp elected S status in 2022 after operating as a C corporation for ten years. It still carries accumulated C corporation earnings and profits. Under Section 1375, when does the excess net passive income tax apply to an S corporation?$EXPL$
WHERE id = 581;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 12862: Tax Procedures (16 words)
-- ORIGINAL STEM: What is the maximum penalty for non-fraudulent failure to file a tax return under Section 6651(a)?
UPDATE questions SET
  stem = $EXPL$Foster files his 2025 federal income tax return eight months late without requesting an extension. He owes $12,000 in unpaid tax. What is the maximum penalty for non-fraudulent failure to file a tax return under Section 6651(a)?$EXPL$
WHERE id = 12862;

-- ID 2433: Tax Procedures (17 words)
-- ORIGINAL STEM: A taxpayer wants a jury trial for a federal income tax dispute. Which court provides this option?
UPDATE questions SET
  stem = $EXPL$Coleman receives a statutory notice of deficiency for $95,000. After paying the assessed amount, Coleman''s attorney recommends litigating the dispute before a jury. A taxpayer seeking a jury trial for a federal income tax dispute must file in which court?$EXPL$
WHERE id = 2433;

-- ============================================================
-- TAX-EXEMPT ORGANIZATIONS (2 questions)
-- ============================================================

-- ID 9314: Tax-Exempt Organizations (16 words)
-- ORIGINAL STEM: Under Section 512, which type of passive income is specifically excluded from unrelated business taxable income?
UPDATE questions SET
  stem = $EXPL$Horizon Community Foundation, a 501(c)(3) organization, earns income from an investment portfolio of stocks and bonds alongside revenue from a commercial gift shop. Under Section 512, which type of passive income is specifically excluded from unrelated business taxable income?$EXPL$
WHERE id = 9314;

-- ID 7728: Tax-Exempt Organizations (17 words)
-- ORIGINAL STEM: Under Section 513, what condition must be met for bingo game income to be excluded from UBIT?
UPDATE questions SET
  stem = $EXPL$Grace Lutheran Church holds weekly bingo nights that generate $45,000 annually. The church treasurer wants to confirm the income is not subject to UBIT. Under Section 513, what condition must be met for bingo game income to be excluded from unrelated business income?$EXPL$
WHERE id = 7728;

COMMIT;
