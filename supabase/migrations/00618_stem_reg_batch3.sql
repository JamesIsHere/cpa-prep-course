-- Migration: Stem expansion — REG batch 3 (50 questions)
-- Date: 2026-03-29
-- Purpose: Expand 50 short stems with scenario context for REG section
-- Affected topics: Agency and Regulation, Alternative Minimum Tax, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Estate and Gift Tax, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Partnerships, Professional Ethics in Tax, Property Transactions: Basis, Property Transactions: Gains/Losses, S Corporations, Tax Procedures, Tax-Exempt Organizations

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (2 questions)
-- ============================================================

-- ID 2486: Agency and Regulation (12 words)
-- ORIGINAL STEM: Under the doctrine of respondeat superior, a principal (employer) is liable for:
UPDATE questions SET
  stem = $EXPL$Vega Construction employs several foremen who supervise job sites and interact with subcontractors daily. During a routine delivery, one foreman negligently damages a subcontractor''s equipment while operating a company truck. Under the doctrine of respondeat superior, the employer is liable for:$EXPL$
WHERE id = 2486;

-- ID 2497: Agency and Regulation (12 words)
-- ORIGINAL STEM: An agent has a duty of accounting that requires the agent to:
UPDATE questions SET
  stem = $EXPL$Priya Nair works as a purchasing agent for Redstone Industries, handling vendor payments and expense reimbursements on behalf of the company. An agent in this role has a duty of accounting that requires the agent to:$EXPL$
WHERE id = 2497;

-- ============================================================
-- ALTERNATIVE MINIMUM TAX (2 questions)
-- ============================================================

-- ID 10893: Alternative Minimum Tax (14 words)
-- ORIGINAL STEM: Under the AMT system, how are net long-term capital gains taxed for individual taxpayers?
UPDATE questions SET
  stem = $EXPL$Chen, a single taxpayer, has $95,000 of ordinary income and $60,000 of net long-term capital gains in 2025. She is subject to the alternative minimum tax. Under the AMT system, how are net long-term capital gains taxed for individual taxpayers?$EXPL$
WHERE id = 10893;

-- ID 10896: Alternative Minimum Tax (14 words)
-- ORIGINAL STEM: Which IRS form is used by individual taxpayers to calculate the alternative minimum tax?
UPDATE questions SET
  stem = $EXPL$Baxter, a single filer, exercised incentive stock options during 2025 and his tax preparer indicated he may owe alternative minimum tax. Which IRS form is used by individual taxpayers to calculate the AMT?$EXPL$
WHERE id = 10896;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (2 questions)
-- ============================================================

-- ID 11203: Business Law: Contracts (9 words)
-- ORIGINAL STEM: What is the primary effect of an option contract?
UPDATE questions SET
  stem = $EXPL$Landmark Realty paid Garrett $5,000 to keep an offer to sell a commercial lot open for 60 days. During that period, Garrett received a higher offer from another buyer. What is the primary effect of the option contract between Landmark and Garrett?$EXPL$
WHERE id = 11203;

-- ID 11211: Business Law: Contracts (10 words)
-- ORIGINAL STEM: In a breach of contract action, what are incidental damages?
UPDATE questions SET
  stem = $EXPL$Draper Manufacturing contracted to deliver custom steel beams to Torres Builders. Draper failed to deliver, and Torres incurred costs for inspection, transportation, and arranging a substitute supplier. In a breach of contract action, what are incidental damages?$EXPL$
WHERE id = 11211;

-- ============================================================
-- BUSINESS STRUCTURES (2 questions)
-- ============================================================

-- ID 11238: Business Structures (11 words)
-- ORIGINAL STEM: What is the legal process of ending a corporation's existence called?
UPDATE questions SET
  stem = $EXPL$The shareholders of Crestview Holdings Inc. voted to cease all business operations, liquidate remaining assets, and file final documents with the state. What is the legal process of formally ending a corporation''s existence called?$EXPL$
WHERE id = 11238;

-- ID 210: Business Structures (12 words)
-- ORIGINAL STEM: Which of the following is true about a limited liability partnership (LLP)?
UPDATE questions SET
  stem = $EXPL$Three CPAs are forming a new accounting practice and are considering organizing as a limited liability partnership. They want to understand how LLP status affects personal exposure for firm obligations. Which of the following is true about an LLP?$EXPL$
WHERE id = 210;

-- ============================================================
-- C CORPORATIONS (2 questions)
-- ============================================================

-- ID 2782: C Corporations (13 words)
-- ORIGINAL STEM: Under Section 243, what dividends received deduction applies to a 25% corporate shareholder?
UPDATE questions SET
  stem = $EXPL$Orion Corp. owns 25% of the outstanding stock of Nova Inc. and received $200,000 in dividends from Nova during the current tax year. Under Section 243, what dividends received deduction percentage applies to Orion?$EXPL$
WHERE id = 2782;

-- ID 10728: C Corporations (13 words)
-- ORIGINAL STEM: What is the filing due date for a calendar-year C corporation's Form 1120?
UPDATE questions SET
  stem = $EXPL$Pinnacle Industries is a calendar-year C corporation that did not request a filing extension for its 2025 federal income tax return. What is the due date for Pinnacle''s Form 1120?$EXPL$
WHERE id = 10728;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 2379: Circular 230 (10 words)
-- ORIGINAL STEM: Under Circular 230, what requirements apply to written tax advice?
UPDATE questions SET
  stem = $EXPL$CPA Keating sends a detailed memorandum to a corporate client recommending a tax position on intercompany transactions. The memorandum constitutes written tax advice. Under Circular 230, what requirements apply to such written tax advice?$EXPL$
WHERE id = 2379;

-- ID 2380: Circular 230 (10 words)
-- ORIGINAL STEM: Under Circular 230, what are best practices for tax practitioners?
UPDATE questions SET
  stem = $EXPL$Rivera & Associates, a mid-size CPA firm, is updating its internal policies to ensure all tax professionals comply with federal guidance on ethical conduct. Under Circular 230, what are best practices for tax practitioners?$EXPL$
WHERE id = 2380;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (2 questions)
-- ============================================================

-- ID 11279: Debtor-Creditor Relationships (11 words)
-- ORIGINAL STEM: What is the surety's right of exoneration in a suretyship arrangement?
UPDATE questions SET
  stem = $EXPL$Delgado agreed to serve as surety on a $150,000 business loan that First National Bank extended to Waverly Corp. Waverly has the resources to pay but has not yet done so. What is Delgado''s right of exoneration in this suretyship arrangement?$EXPL$
WHERE id = 11279;

-- ID 1179: Debtor-Creditor Relationships (13 words)
-- ORIGINAL STEM: Which of the following debts is generally nondischargeable in a Chapter 7 bankruptcy?
UPDATE questions SET
  stem = $EXPL$Franco, an individual, has filed a voluntary Chapter 7 bankruptcy petition. Among his outstanding obligations are credit card balances, medical bills, and several other categories of debt. Which of the following debts is generally nondischargeable in Franco''s Chapter 7 proceeding?$EXPL$
WHERE id = 1179;

-- ============================================================
-- ESTATE AND GIFT TAX (2 questions)
-- ============================================================

-- ID 5524: Estate and Gift Tax (13 words)
-- ORIGINAL STEM: For federal gift tax purposes, when is a transfer considered an incomplete gift?
UPDATE questions SET
  stem = $EXPL$Hawkins transfers $500,000 in securities to an irrevocable trust but retains the power to change the beneficiaries at any time. For federal gift tax purposes, when is a transfer considered an incomplete gift?$EXPL$
WHERE id = 5524;

-- ID 5457: Estate and Gift Tax (14 words)
-- ORIGINAL STEM: Under IRC Chapter 13, what is a taxable termination for generation-skipping transfer tax purposes?
UPDATE questions SET
  stem = $EXPL$A trust established by Grandparent in 2015 currently benefits Child as the sole income beneficiary. Upon Child''s death, the trust assets will pass to Grandchild. Under IRC Chapter 13, what is a taxable termination for generation-skipping transfer tax purposes?$EXPL$
WHERE id = 5457;

-- ============================================================
-- FEDERAL TAX PROCEDURES (1 questions)
-- ============================================================

-- ID 1159: Federal Tax Procedures (11 words)
-- ORIGINAL STEM: Under Section 6501(e), when does the six-year statute of limitations apply?
UPDATE questions SET
  stem = $EXPL$Patel filed his 2022 Form 1040 on April 15, 2023, reporting $180,000 of gross income. The IRS later discovered Patel failed to report an additional $55,000 of business receipts. Under Section 6501(e), when does the six-year statute of limitations apply?$EXPL$
WHERE id = 1159;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (2 questions)
-- ============================================================

-- ID 4804: Government Regulation of Business (15 words)
-- ORIGINAL STEM: Under workers' compensation statutes, which of the following best describes the coverage provided to employees?
UPDATE questions SET
  stem = $EXPL$Briggs, a warehouse employee at Hartwell Distribution, slips on a wet floor during her shift and fractures her wrist. She files a claim under the state''s workers'' compensation statute. Which of the following best describes the coverage provided to employees under workers'' compensation?$EXPL$
WHERE id = 4804;

-- ID 11289: Government Regulation of Business (15 words)
-- ORIGINAL STEM: The Age Discrimination in Employment Act (ADEA) protects employees who are at least what age?
UPDATE questions SET
  stem = $EXPL$Caldwell, a 58-year-old senior engineer, was terminated and replaced by a 34-year-old colleague. Caldwell believes the decision was based solely on age and is considering filing a claim under the ADEA. The Age Discrimination in Employment Act protects employees who are at least what age?$EXPL$
WHERE id = 11289;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (2 questions)
-- ============================================================

-- ID 554: Individual Taxation: Credits (12 words)
-- ORIGINAL STEM: Under Section 901, what is the purpose of the foreign tax credit?
UPDATE questions SET
  stem = $EXPL$Nguyen, a U.S. citizen, earned $75,000 of consulting income from a project in Germany and paid $18,000 in German income taxes on that amount. Under Section 901, what is the purpose of the foreign tax credit?$EXPL$
WHERE id = 554;

-- ID 2700: Individual Taxation: Credits (12 words)
-- ORIGINAL STEM: A married couple filing separately may claim which of the following credits?
UPDATE questions SET
  stem = $EXPL$Jordan and Taylor are married but chose to file separate returns for 2025 due to Taylor''s outstanding tax liabilities. A married couple filing separately may claim which of the following credits?$EXPL$
WHERE id = 2700;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (2 questions)
-- ============================================================

-- ID 10956: Individual Taxation: Credits/AMT (12 words)
-- ORIGINAL STEM: What is the maximum American Opportunity Tax Credit available per eligible student?
UPDATE questions SET
  stem = $EXPL$The Parkers paid $6,500 in tuition and required course materials for their daughter''s sophomore year at State University in 2025. What is the maximum American Opportunity Tax Credit available per eligible student?$EXPL$
WHERE id = 10956;

-- ID 79: Individual Taxation: Credits/AMT (13 words)
-- ORIGINAL STEM: Which of the following tax benefits is a credit rather than a deduction?
UPDATE questions SET
  stem = $EXPL$Kim, a single taxpayer, is reviewing her 2025 return and wants to identify items that directly reduce her tax liability dollar-for-dollar rather than reducing taxable income. Which of the following tax benefits is a credit rather than a deduction?$EXPL$
WHERE id = 79;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (2 questions)
-- ============================================================

-- ID 1288: Individual Taxation: Deductions (11 words)
-- ORIGINAL STEM: Under H.R. 1, cash tips received by qualifying service workers are:
UPDATE questions SET
  stem = $EXPL$Martinez works as a server at a restaurant in 2026 and receives $28,000 in cash tips during the year. She meets the requirements as a qualifying service worker under H.R. 1. Under that legislation, cash tips received by qualifying service workers are:$EXPL$
WHERE id = 1288;

-- ID 2654: Individual Taxation: Deductions (11 words)
-- ORIGINAL STEM: Under Section 162(l), how is the self-employed health insurance deduction treated?
UPDATE questions SET
  stem = $EXPL$Reeves is a self-employed consultant who paid $9,600 in health insurance premiums for herself and her family during 2025. She had net self-employment income of $95,000. Under Section 162(l), how is the self-employed health insurance deduction treated?$EXPL$
WHERE id = 2654;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (2 questions)
-- ============================================================

-- ID 11012: Individual Taxation: Filing/Credits (13 words)
-- ORIGINAL STEM: What does joint and several liability mean on a married filing jointly return?
UPDATE questions SET
  stem = $EXPL$The Garcias filed a joint return for 2024. The IRS later determined a $12,000 deficiency related to unreported income earned solely by one spouse. What does joint and several liability mean on a married filing jointly return?$EXPL$
WHERE id = 11012;

-- ID 227: Individual Taxation: Filing/Credits (14 words)
-- ORIGINAL STEM: Which filing status generally provides the most favorable tax rates for an individual taxpayer?
UPDATE questions SET
  stem = $EXPL$Warren, age 42, got married on December 29, 2025, and is evaluating the five possible filing statuses for the 2025 tax year. Which filing status generally provides the most favorable tax rates for an individual taxpayer?$EXPL$
WHERE id = 227;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (2 questions)
-- ============================================================

-- ID 540: Individual Taxation: Income (13 words)
-- ORIGINAL STEM: Under Section 469, what is the rental activity loss allowance for active participants?
UPDATE questions SET
  stem = $EXPL$Morrison owns a duplex that generated a $30,000 rental loss in 2025. She actively participates by approving tenants and authorizing repairs, and her AGI is $85,000. Under Section 469, what is the rental activity loss allowance for active participants?$EXPL$
WHERE id = 540;

-- ID 2617: Individual Taxation: Income (13 words)
-- ORIGINAL STEM: Which of the following types of interest income is included in gross income?
UPDATE questions SET
  stem = $EXPL$During 2025, Blake received interest from a corporate bond, a municipal bond, and a U.S. Treasury note. Blake is preparing Schedule B for Form 1040. Which of the following types of interest income is included in gross income?$EXPL$
WHERE id = 2617;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 2865: Legal Duties and Responsibilities (12 words)
-- ORIGINAL STEM: What elements must be proven to establish actual fraud against a CPA?
UPDATE questions SET
  stem = $EXPL$A client claims that CPA Whitfield knowingly overstated inventory values in audited financial statements, causing the client to extend credit to a failing supplier. The client is suing for actual fraud. What elements must be proven to establish actual fraud against a CPA?$EXPL$
WHERE id = 2865;

-- ID 13795: Legal Duties and Responsibilities (12 words)
-- ORIGINAL STEM: What is the role of the "signing preparer" on a tax return?
UPDATE questions SET
  stem = $EXPL$At Mason & Cole CPAs, a staff accountant gathers data and drafts the return, but the engagement partner reviews and signs the final Form 1040. What is the role of the "signing preparer" on a tax return?$EXPL$
WHERE id = 13795;

-- ============================================================
-- LIKE-KIND EXCHANGES (2 questions)
-- ============================================================

-- ID 2610: Like-Kind Exchanges (11 words)
-- ORIGINAL STEM: Which of the following exchanges qualifies as like-kind under Section 1031?
UPDATE questions SET
  stem = $EXPL$Trent is disposing of several business assets and wants to defer gain recognition where possible. He is considering exchanging real and personal property in separate transactions. Which of the following exchanges qualifies as like-kind under Section 1031?$EXPL$
WHERE id = 2610;

-- ID 13055: Like-Kind Exchanges (11 words)
-- ORIGINAL STEM: Under Section 1031, what does "like-kind" mean when comparing real properties?
UPDATE questions SET
  stem = $EXPL$Archer owns undeveloped farmland held for investment and is considering exchanging it for a commercial office building used in a trade or business. Under Section 1031, what does "like-kind" mean when comparing real properties?$EXPL$
WHERE id = 13055;

-- ============================================================
-- PARTNERSHIPS (7 questions)
-- ============================================================

-- ID 2839: Partnerships (10 words)
-- ORIGINAL STEM: Under Section 707(c), what are guaranteed payments in a partnership?
UPDATE questions SET
  stem = $EXPL$The LMN Partnership agreement provides that Partner Lane receives $80,000 annually for management services regardless of whether the partnership earns a profit. Under Section 707(c), what are guaranteed payments in a partnership?$EXPL$
WHERE id = 2839;

-- ID 588: Partnerships (12 words)
-- ORIGINAL STEM: How is gain on the sale of a partnership interest generally characterized?
UPDATE questions SET
  stem = $EXPL$Dunbar sells her 30% interest in the Apex Partnership for $250,000. Her outside basis is $170,000 and the partnership holds no hot assets. How is gain on the sale of a partnership interest generally characterized?$EXPL$
WHERE id = 588;

-- ID 2837: Partnerships (12 words)
-- ORIGINAL STEM: How does contributing property with a liability affect a partner's outside basis?
UPDATE questions SET
  stem = $EXPL$Foster contributes a building with an adjusted basis of $200,000, a fair market value of $350,000, and a $120,000 mortgage to the GHI Partnership for a 40% interest. How does contributing property with a liability affect Foster''s outside basis?$EXPL$
WHERE id = 2837;

-- ID 2840: Partnerships (12 words)
-- ORIGINAL STEM: What happens when a partnership cash distribution exceeds a partner's outside basis?
UPDATE questions SET
  stem = $EXPL$Quinn has an outside basis of $45,000 in the QRS Partnership. In a nonliquidating distribution, Quinn receives $60,000 cash. What happens when a partnership cash distribution exceeds a partner''s outside basis?$EXPL$
WHERE id = 2840;

-- ID 10742: Partnerships (12 words)
-- ORIGINAL STEM: What informational return is a partnership required to file with the IRS?
UPDATE questions SET
  stem = $EXPL$Beacon Consulting Group is a three-member partnership that began operations on March 1, 2025. The partners are preparing for the first annual tax filing. What informational return is a partnership required to file with the IRS?$EXPL$
WHERE id = 10742;

-- ID 11101: Partnerships (13 words)
-- ORIGINAL STEM: Under IRC Section 708(b)(1), when does a partnership terminate for federal tax purposes?
UPDATE questions SET
  stem = $EXPL$The JKL Partnership has been operating for twelve years. Recently, two of the three partners retired and the remaining partner continued the business alone. Under IRC Section 708(b)(1), when does a partnership terminate for federal tax purposes?$EXPL$
WHERE id = 11101;

-- ID 11111: Partnerships (13 words)
-- ORIGINAL STEM: Which elections are made at the partnership level rather than by individual partners?
UPDATE questions SET
  stem = $EXPL$The newly formed Delta Partnership is filing its first Form 1065 and needs to determine which tax decisions are made by the entity rather than by each partner on their individual returns. Which elections are made at the partnership level?$EXPL$
WHERE id = 11111;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (1 questions)
-- ============================================================

-- ID 2410: Professional Ethics in Tax (13 words)
-- ORIGINAL STEM: Under SSTS No. 3, what is a CPA's responsibility for software calculation errors?
UPDATE questions SET
  stem = $EXPL$CPA Wells prepares a client''s return using commercial tax software. After filing, the client discovers an incorrect depreciation amount caused by a software computation error. Under SSTS No. 3, what is a CPA''s responsibility for software calculation errors?$EXPL$
WHERE id = 2410;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (2 questions)
-- ============================================================

-- ID 1284: Property Transactions: Basis (12 words)
-- ORIGINAL STEM: Under H.R. 1, what is the bonus depreciation rate for qualified property?
UPDATE questions SET
  stem = $EXPL$Keystone Manufacturing places $400,000 of new 7-year equipment in service in October 2026. The controller wants to apply bonus depreciation under the restored provisions of H.R. 1. What is the bonus depreciation rate for qualified property placed in service after January 20, 2025?$EXPL$
WHERE id = 1284;

-- ID 2533: Property Transactions: Basis (12 words)
-- ORIGINAL STEM: Under Section 1016, how do capital improvements affect a property's adjusted basis?
UPDATE questions SET
  stem = $EXPL$Henderson purchased a rental building for $320,000 and later spent $45,000 adding a new roof and $18,000 on routine painting and repairs. Under Section 1016, how do capital improvements affect the property''s adjusted basis?$EXPL$
WHERE id = 2533;

-- ============================================================
-- PROPERTY TRANSACTIONS: GAINS/LOSSES (2 questions)
-- ============================================================

-- ID 2571: Property Transactions: Gains/Losses (10 words)
-- ORIGINAL STEM: Which types of property are subject to Section 1245 recapture?
UPDATE questions SET
  stem = $EXPL$Granger Industries sold several assets during 2025, including office furniture, a delivery truck, and a commercial warehouse. The CPA preparing the return needs to identify which dispositions trigger depreciation recapture. Which types of property are subject to Section 1245 recapture?$EXPL$
WHERE id = 2571;

-- ID 522: Property Transactions: Gains/Losses (11 words)
-- ORIGINAL STEM: What is the net investment income tax (NIIT) rate and threshold?
UPDATE questions SET
  stem = $EXPL$Ellis, a single filer, has $190,000 in wages and $45,000 of net investment income consisting of dividends, interest, and capital gains for 2025. She is evaluating her exposure to the net investment income tax. What is the NIIT rate and applicable threshold?$EXPL$
WHERE id = 522;

-- ============================================================
-- S CORPORATIONS (2 questions)
-- ============================================================

-- ID 579: S Corporations (12 words)
-- ORIGINAL STEM: What is the purpose of an S corporation's accumulated adjustments account (AAA)?
UPDATE questions SET
  stem = $EXPL$Ridgeline Corp. elected S status in 2020 after operating as a C corporation for eight years. It still carries accumulated earnings and profits from the C corporation period. What is the purpose of Ridgeline''s accumulated adjustments account (AAA)?$EXPL$
WHERE id = 579;

-- ID 585: S Corporations (12 words)
-- ORIGINAL STEM: Under Section 1374, what is the built-in gains tax for S corporations?
UPDATE questions SET
  stem = $EXPL$Westmark Inc. converted from C to S corporation status on January 1, 2024. At conversion, several assets had fair market values significantly exceeding their tax bases. Under Section 1374, what is the built-in gains tax for S corporations?$EXPL$
WHERE id = 585;

-- ============================================================
-- TAX PROCEDURES (2 questions)
-- ============================================================

-- ID 2431: Tax Procedures (12 words)
-- ORIGINAL STEM: What is the purpose of a statutory notice of deficiency (90-day letter)?
UPDATE questions SET
  stem = $EXPL$After an office audit, the IRS determined that Harper owes an additional $18,000 in tax for 2023. Harper disagreed with the proposed adjustments and did not sign the agreement. The IRS then issued a formal notice. What is the purpose of a statutory notice of deficiency (90-day letter)?$EXPL$
WHERE id = 2431;

-- ID 2430: Tax Procedures (13 words)
-- ORIGINAL STEM: Under what circumstances does the statute of limitations for IRS assessment never expire?
UPDATE questions SET
  stem = $EXPL$The IRS is reviewing a taxpayer''s 2019 return filed on April 15, 2020. The normal three-year assessment period has passed, yet the IRS asserts it may still assess additional tax. Under what circumstances does the statute of limitations for IRS assessment never expire?$EXPL$
WHERE id = 2430;

-- ============================================================
-- TAX-EXEMPT ORGANIZATIONS (1 questions)
-- ============================================================

-- ID 8609: Tax-Exempt Organizations (11 words)
-- ORIGINAL STEM: Which Form 990 schedule reports information about an organization's significant contributors?
UPDATE questions SET
  stem = $EXPL$Hope Foundation, a 501(c)(3) public charity, received large donations from several individuals and corporations during 2025 and must disclose contributor information with its annual filing. Which Form 990 schedule reports information about an organization''s significant contributors?$EXPL$
WHERE id = 8609;

COMMIT;
