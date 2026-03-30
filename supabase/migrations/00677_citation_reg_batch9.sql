-- Migration: Citation backfill — REG batch 9 (36 questions)
-- Date: 2026-03-30
-- Purpose: Add standard citations to 36 explanations for REG section
-- Affected topics: Agency and Regulation, Business Law: Contracts, Business Structures, C Corporations, Circular 230, Debtor-Creditor Relationships, Federal Tax Procedures, Government Regulation of Business, Individual Taxation: Credits, Individual Taxation: Credits/AMT, Individual Taxation: Deductions, Individual Taxation: Filing/Credits, Individual Taxation: Income, Legal Duties and Responsibilities, Like-Kind Exchanges, Professional Ethics in Tax, Property Transactions: Basis, S Corporations, Tax Procedures

BEGIN;

-- ============================================================
-- AGENCY AND REGULATION (3 questions)
-- ============================================================

-- ID 11184: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 3.07(2), the bankruptcy of the principal terminates the agent''s authority by operation of law, effective immediately and without notice. Because Gentry''s Chapter 7 filing automatically extinguished Hayes''s authority, the contract with Omega is void even though both Hayes and Omega were unaware of the filing. However, Omega may recover damages from Hayes under the implied warranty of authority doctrine, whereas a fixed-term agency agreement does not survive the principal''s bankruptcy since termination by operation of law overrides contractual duration provisions.'
WHERE id = 11184;

-- ID 11187: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Securities Act of 1933, Section 5(b)(1), a preliminary prospectus — informally called a "red herring" because of the red legend printed on its cover — may be distributed during the waiting period between the filing of the registration statement and its effective date. This document provides investors with material information about the offering but does not contain the final offering price. Unlike the final prospectus, which may only be delivered after the registration statement becomes effective, the preliminary prospectus is the only permitted written offer during the waiting period.'
WHERE id = 11187;

-- ID 11188: Agency and Regulation
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 3.07, an agency relationship terminates by operation of law when the subject matter of the agency becomes illegal or is destroyed, making performance impossible. Other events causing automatic termination include the death or incapacity of either party and the bankruptcy of the principal. While a request for higher compensation is merely a negotiation matter that does not automatically terminate the relationship, illegality of the subject matter extinguishes the agent''s authority without any action by the parties.'
WHERE id = 11188;

-- ============================================================
-- BUSINESS LAW: CONTRACTS (3 questions)
-- ============================================================

-- ID 11214: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the Restatement (Second) of Contracts Section 373, a non-breaching party is entitled to restitution of any benefit conferred on the breaching party to prevent unjust enrichment. Because Henderson breached by refusing to complete the boat, Walters may recover the full $15,000 deposit. Henderson''s own expenditures of $8,000 on materials do not reduce the restitution amount, whereas expectation damages would measure the benefit of the bargain rather than the benefit actually conferred on the breaching party.'
WHERE id = 11214;

-- ID 11215: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the Restatement (Second) of Contracts Section 177, undue influence occurs when a party in a position of trust, confidence, or authority exploits that relationship to induce the weaker party to enter an unfavorable agreement. Martin''s role as Eleanor''s live-in caretaker who managed all her finances created a confidential relationship susceptible to abuse. Unlike duress, which involves threats or coercion to overcome the victim''s free will, undue influence involves the subtle exploitation of an existing fiduciary or confidential relationship without overt threats.'
WHERE id = 11215;

-- ID 11217: Business Law: Contracts
UPDATE questions SET
  explanation = 'Under the Restatement (Second) of Contracts Section 261, a contract is discharged by impossibility when performance becomes objectively impossible due to the destruction of subject matter essential to performance, provided neither party is at fault. The earthquake destroyed the specific building wall that was the subject matter of the mural contract, making performance as agreed impossible. Unlike mere difficulty or increased cost — which do not excuse performance — physical destruction of the essential subject matter clearly satisfies the impossibility standard regardless of whether a force majeure clause exists.'
WHERE id = 11217;

-- ============================================================
-- BUSINESS STRUCTURES (3 questions)
-- ============================================================

-- ID 11239: Business Structures
UPDATE questions SET
  explanation = 'Under most state business codes, when a sole proprietor operates under a trade name different from their own legal name, a fictitious business name statement (also called a DBA or "doing business as" registration) must be filed with the county or state per Section 17900 et seq. (California example). This filing provides public notice of the true owner''s identity behind the trade name. Unlike articles of organization — which are the formation document for an LLC — a DBA registration does not create a separate legal entity but merely registers the assumed name for transparency purposes.'
WHERE id = 11239;

-- ID 11246: Business Structures
UPDATE questions SET
  explanation = 'Under the MBCA Section 7.40, a derivative lawsuit is brought by a shareholder on behalf of the corporation when the board of directors refuses to take action against wrongdoing. Any monetary recovery in a derivative suit goes to the corporation, not to the individual shareholder who brought the claim. Unlike a direct action — which applies only when the shareholder suffers a personal injury distinct from harm to the corporation — a derivative claim addresses injuries to the corporation itself.'
WHERE id = 11246;

-- ID 11249: Business Structures
UPDATE questions SET
  explanation = 'Under the MBCA Section 6.22, shareholders of a corporation enjoy limited liability and can lose only the amount invested in their shares. Williams paid $25 x 500 shares = $12,500, which is the maximum she can lose regardless of the corporation''s $2 million in outstanding debts. Unlike partners in a general partnership who face joint and several liability for partnership obligations, corporate shareholders'' personal assets cannot be reached by creditors absent a successful veil-piercing claim.'
WHERE id = 11249;

-- ============================================================
-- C CORPORATIONS (1 questions)
-- ============================================================

-- ID 2807: C Corporations
UPDATE questions SET
  explanation = 'Under IRC Section 1211(a), a C corporation may deduct capital losses only to the extent of capital gains in the current year. Because Blaze has no current-year capital gains, the $60,000 net capital loss carryforward cannot be used this year. Under IRC Section 170(b)(2), the charitable contribution deduction for a C corporation is limited to 10% of taxable income before the deduction — 10% of $750,000 = $75,000. Since the $50,000 carryforward is within that limit, it is fully deductible, whereas the capital loss carryforward provides no benefit without offsetting capital gains.'
WHERE id = 2807;

-- ============================================================
-- CIRCULAR 230 (2 questions)
-- ============================================================

-- ID 2400: Circular 230
UPDATE questions SET
  explanation = 'Under Circular 230 Section 10.50(c), censure is the least severe of the three primary disciplinary sanctions and constitutes a public reprimand expressing disapproval of the practitioner''s conduct. Importantly, censure does not restrict or terminate the practitioner''s right to practice before the IRS. While suspension temporarily prohibits practice and disbarment permanently prohibits it, censure allows the practitioner to continue practicing, unlike these more severe sanctions that remove practice privileges entirely.'
WHERE id = 2400;

-- ID 2401: Circular 230
UPDATE questions SET
  explanation = 'Under Circular 230 Section 10.23, a practitioner with a valid power of attorney must exercise due diligence by promptly informing the client of IRS correspondence and taking appropriate action within the scope of representation. This duty of prompt disposition ensures that the client''s interests are protected and deadlines are met. Unlike ignoring the notice or responding without the client''s knowledge — both of which would violate the practitioner''s professional obligations — proper practice requires client communication followed by timely, authorized action.'
WHERE id = 2401;

-- ============================================================
-- DEBTOR-CREDITOR RELATIONSHIPS (2 questions)
-- ============================================================

-- ID 11257: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Suretyship and Guaranty Section 15, a guarantor of collection has secondary liability, meaning the creditor must first exhaust remedies against the principal debtor before proceeding against the guarantor. Nakamura''s best defense is that Central Bank sued the guarantor without first pursuing Patel. Unlike a surety — who has primary liability and can be pursued directly upon default without any prior demand on the principal debtor — a guarantor of collection may insist that the creditor attempt collection from the debtor first.'
WHERE id = 11257;

-- ID 11279: Debtor-Creditor Relationships
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Suretyship and Guaranty Section 21, exoneration is the surety''s pre-payment equitable right to petition a court to compel the principal debtor to perform before the surety must pay. Because Waverly has the resources to pay, Delgado may seek a court order requiring Waverly to satisfy the obligation. Unlike reimbursement — which is a post-payment right to recover from the principal debtor — and subrogation — which allows the surety to step into the creditor''s shoes after full payment — exoneration is the only remedy available before the surety pays.'
WHERE id = 11279;

-- ============================================================
-- FEDERAL TAX PROCEDURES (1 questions)
-- ============================================================

-- ID 12719: Federal Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Section 6321, a federal tax lien arises automatically upon assessment and demand when the taxpayer fails to pay. Filing a Notice of Federal Tax Lien (NFTL) under IRC Section 6323(f) provides public notice and establishes the government''s priority against other creditors. A lien is an encumbrance on the taxpayer''s property that protects the IRS''s interest without seizing assets, whereas a levy under IRC Section 6331 would authorize actual seizure of property — which the IRS specifically wants to avoid at this stage.'
WHERE id = 12719;

-- ============================================================
-- GOVERNMENT REGULATION OF BUSINESS (2 questions)
-- ============================================================

-- ID 13827: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 1.01, an agency relationship requires only mutual consent — the principal consents to the agent acting on the principal''s behalf, and the agent agrees to do so. No consideration, written agreement, or filing is necessary for formation. Unlike a contract, which requires consideration to be enforceable, a gratuitous agency where the agent acts without compensation is legally valid, and the relationship may be created orally or through implied conduct.'
WHERE id = 13827;

-- ID 13828: Government Regulation of Business
UPDATE questions SET
  explanation = 'Under the Restatement (Third) of Agency Section 3.12, an agency coupled with an interest exists when the agent holds a security interest or property interest in the subject matter of the agency, making it irrevocable by the principal. Monroe''s security interest in Prescott''s inventory creates this type of agency, so Prescott''s attempted revocation is ineffective. Unlike ordinary agency relationships — which terminate by operation of law upon the principal''s death or incapacity — an agency coupled with an interest survives both attempted revocation and the principal''s subsequent incapacity.'
WHERE id = 13828;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS (2 questions)
-- ============================================================

-- ID 2700: Individual Taxation: Credits
UPDATE questions SET
  explanation = 'Under IRC Section 21(e)(4), married taxpayers filing separately are generally ineligible for the child and dependent care credit. Similarly, IRC Section 32(d) disallows the earned income credit for MFS filers. These credits require a filing status of single, head of household, qualifying surviving spouse, or married filing jointly. Unlike the child tax credit — which remains available to MFS filers with a $200,000 phase-out threshold — the care credit and EIC are completely denied under the MFS filing status.'
WHERE id = 2700;

-- ID 2702: Individual Taxation: Credits
UPDATE questions SET
  explanation = 'Under IRC Section 24(c), the child tax credit requires the qualifying child to be under age 17 at the end of the tax year. A 17-year-old does not meet this age requirement and therefore does not qualify for the full child tax credit. However, under IRC Section 24(h)(4), the $500 credit for other dependents is available for dependents who do not qualify for the child tax credit, including children age 17 and older. Unlike the child tax credit, which has a strict under-17 age cutoff, the other dependents credit applies to any qualifying dependent not eligible for the primary credit.'
WHERE id = 2702;

-- ============================================================
-- INDIVIDUAL TAXATION: CREDITS/AMT (1 questions)
-- ============================================================

-- ID 2722: Individual Taxation: Credits/AMT
UPDATE questions SET
  explanation = 'Under IRC Section 1411(a)(1), the net investment income tax (NIIT) of 3.8% applies only when modified adjusted gross income exceeds the statutory threshold — $200,000 for single filers. Sam''s MAGI of $190,000 falls below the $200,000 threshold, so no NIIT is owed regardless of his $30,000 in net investment income. Unlike the additional Medicare tax under IRC Section 3101(b)(2), which applies to earned income above its threshold, the NIIT applies to the lesser of net investment income or the MAGI excess — and here the excess is zero.'
WHERE id = 2722;

-- ============================================================
-- INDIVIDUAL TAXATION: DEDUCTIONS (2 questions)
-- ============================================================

-- ID 10996: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Section 170(a), charitable contributions are deductible only if the taxpayer itemizes deductions. The bunching strategy concentrates two years of giving into one year to exceed the standard deduction threshold set by IRC Section 63(c). Without bunching, Wheeler takes the $15,000 standard deduction each year ($30,000 total). With bunching, Year 1 itemized deductions total $20,000 ($10,000 non-charitable + $10,000 charity) and Year 2 uses the $15,000 standard deduction — totaling $35,000, a $5,000 net benefit. Unlike spreading donations evenly, which fails to exceed the standard deduction in either year, bunching ensures at least one year produces meaningful itemized savings.'
WHERE id = 10996;

-- ID 11009: Individual Taxation: Deductions
UPDATE questions SET
  explanation = 'Under IRC Section 62(a), above-the-line deductions reduce gross income to arrive at adjusted gross income (AGI). The ACID mnemonic captures four major adjustments: Alimony paid (IRC Section 215, for pre-2019 divorce agreements), Contributions to a traditional IRA (IRC Section 219), Interest on student loans up to $2,500 (IRC Section 221), and Deduction for 50% of self-employment tax (IRC Section 164(f)). Unlike itemized deductions under IRC Section 63, which require electing to itemize, these above-the-line deductions are available to all taxpayers regardless of whether they claim the standard deduction.'
WHERE id = 11009;

-- ============================================================
-- INDIVIDUAL TAXATION: FILING/CREDITS (3 questions)
-- ============================================================

-- ID 2752: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 6654(d)(1)(B), taxpayers with prior-year AGI exceeding $150,000 must pay 110% of their prior-year tax liability (rather than 100%) to qualify for the estimated tax safe harbor. Assuming Phil''s prior-year liability was $30,000, the safe harbor minimum is 110% x $30,000 = $33,000 through combined estimated payments and withholding. Unlike taxpayers with AGI at or below $150,000 — who need only pay 100% of prior-year tax — higher-income taxpayers face the elevated 110% threshold to avoid the underpayment penalty.'
WHERE id = 2752;

-- ID 2753: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 24(a), a married filing separately taxpayer may claim the child tax credit for qualifying children who live with them, with the phase-out beginning at $200,000 AGI. The child tax credit is one of the few family credits available under MFS status. Unlike the earned income credit (IRC Section 32(d)) and the child and dependent care credit (IRC Section 21(e)(4)) — both of which are completely disallowed for MFS filers — the child tax credit remains available, although with a lower phase-out threshold than the $400,000 MFJ threshold.'
WHERE id = 2753;

-- ID 2754: Individual Taxation: Filing/Credits
UPDATE questions SET
  explanation = 'Under IRC Section 152(c)(3)(A), a qualifying child must be under age 24 at the end of the tax year and a full-time student for at least five months of the year. At age 23 as a full-time graduate student, the daughter meets the age test and can be claimed as a qualifying child by her parents. Unlike the qualifying relative test under IRC Section 152(d)(1)(B) — which imposes a gross income limit — the qualifying child test has no income threshold, so the $5,000 stipend does not disqualify her.'
WHERE id = 2754;

-- ============================================================
-- INDIVIDUAL TAXATION: INCOME (1 questions)
-- ============================================================

-- ID 11069: Individual Taxation: Income
UPDATE questions SET
  explanation = 'Under IRC Section 63(c)(2)(C), the standard deduction for married filing separately is exactly half the married filing jointly amount. For 2026, MFS filers receive approximately $15,000 (half of the $30,000 MFJ standard deduction). This applies to Hicks, who is under 65 and not blind, so no additional standard deduction amount applies under IRC Section 63(f). Unlike the head of household standard deduction of approximately $22,500, the MFS amount is the lowest among all filing statuses, reflecting the generally less favorable treatment of separate filers.'
WHERE id = 11069;

-- ============================================================
-- LEGAL DUTIES AND RESPONSIBILITIES (2 questions)
-- ============================================================

-- ID 13794: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = 'Under AICPA professional standards and FRCP Rule 26(b)(3), the work product doctrine provides two tiers of protection. Ordinary work product — such as factual compilations and research — may be discovered if the opposing party demonstrates substantial need and inability to obtain the equivalent without undue hardship. Opinion work product — including mental impressions, conclusions, and legal theories — receives nearly absolute protection and is almost never discoverable. Unlike attorney-client privilege, which protects confidential communications regardless of content, the work product doctrine''s protection level varies based on whether the material is factual or opinion in nature.'
WHERE id = 13794;

-- ID 13795: Legal Duties and Responsibilities
UPDATE questions SET
  explanation = 'Under IRC Section 7701(a)(36), the signing preparer is the individual who has primary responsibility for the overall substantive accuracy of the tax return and is subject to preparer penalties under IRC Sections 6694 and 6695. The engagement partner who reviews and signs the final return holds this designation. Unlike a staff accountant who gathers data and drafts the return — which constitutes a non-signing preparer role — the signing preparer bears ultimate responsibility and must sign the return, regardless of whether they personally prepared every line.'
WHERE id = 13795;

-- ============================================================
-- LIKE-KIND EXCHANGES (1 questions)
-- ============================================================

-- ID 13067: Like-Kind Exchanges
UPDATE questions SET
  explanation = 'Under IRC Section 1031 and Treas. Reg. Sec. 1.1031(k)-1(c)(4)(i)(C), the 95% rule allows identification of any number of replacement properties regardless of aggregate value, provided the taxpayer acquires at least 95% of the total identified fair market value. Reeves acquired $1,950,000 of $2,000,000 identified value (97.5%), which exceeds the 95% threshold. Although the three-property rule (maximum three identified properties) and the 200% rule (aggregate identified value cannot exceed 200% of relinquished property value) were both exceeded, the 95% rule provides an independent alternative that validates the identification.'
WHERE id = 13067;

-- ============================================================
-- PROFESSIONAL ETHICS IN TAX (3 questions)
-- ============================================================

-- ID 13013: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under Circular 230 Section 10.30(a), practitioners are prohibited from soliciting employment through uninvited in-person contact with prospective clients. Torres''s unsolicited visit to the business owner''s office to offer representation services during an IRS audit violates this prohibition. Exceptions exist only for solicitations to former clients and close family members, neither of which applies here. Unlike advertising or written communications — which are generally permitted under Section 10.30(b) — uninvited in-person solicitation is categorically prohibited regardless of the fee arrangement or the client''s need for representation.'
WHERE id = 13013;

-- ID 13016: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under Circular 230 Section 10.31, practitioners are specifically prohibited from endorsing or otherwise negotiating (cashing) any tax refund check issued to a client, with only limited exceptions. This rule prevents practitioners from having direct access to client tax refund funds. Unlike charging flat fees — which are a permissible fee arrangement under Section 10.27 — or advertising online, which is generally permitted under Section 10.30(b), the prohibition on negotiating refund checks is absolute and applies regardless of the practitioner''s other marketing or billing practices.'
WHERE id = 13016;

-- ID 13017: Professional Ethics in Tax
UPDATE questions SET
  explanation = 'Under Circular 230 Section 10.23, practitioners must act with due diligence and ensure prompt disposition of IRS matters, but this duty does not require overriding client decisions. Whitfield should advise the client about the consequences of signing or refusing the extension of the statute of limitations, then follow the client''s informed decision. The prompt disposition requirement under Section 10.23 prohibits practitioner-caused delay, whereas a client''s informed strategic choice to manage the timing of resolution does not violate this standard and does not require withdrawal from the engagement.'
WHERE id = 13017;

-- ============================================================
-- PROPERTY TRANSACTIONS: BASIS (2 questions)
-- ============================================================

-- ID 2563: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under IRC Section 1016(a), adjusted basis equals cost basis plus capital improvements minus allowable depreciation. The building''s cost basis of $180,000 plus the $12,000 HVAC capital improvement under IRC Section 263(a) yields $192,000, minus $6,545 in MACRS depreciation under IRC Section 168, resulting in an adjusted basis of $185,455. Unlike land — which is not depreciable and is tracked separately under IRC Section 167(a) — the building and its capital improvements are subject to annual depreciation deductions that reduce the adjusted basis over time.'
WHERE id = 2563;

-- ID 2564: Property Transactions: Basis
UPDATE questions SET
  explanation = 'Under IRC Section 2032(a), when the executor elects the alternate valuation date, assets disposed of before the six-month alternate date are valued at the date of disposition rather than at the six-month mark. Since the stock was sold on August 15, 2026 — before the January 4, 2027 alternate date — its value on August 15 is used for both estate tax purposes and the heir''s stepped-up basis under IRC Section 1014(a). Unlike assets still held at the six-month date, which are valued on the alternate date itself, disposed assets are frozen at their disposition date value.'
WHERE id = 2564;

-- ============================================================
-- S CORPORATIONS (1 questions)
-- ============================================================

-- ID 11143: S Corporations
UPDATE questions SET
  explanation = 'Under Treas. Reg. Sec. 1.1368-2(a)(3), the accumulated adjustments account (AAA) is adjusted for income and loss items before distributions are taken into account. The $70,000 ordinary loss reduces the $40,000 beginning AAA to negative $30,000. Distributions cannot reduce AAA below zero, but because AAA is already negative from losses, the $20,000 distribution does not further reduce it. Unlike shareholder stock basis — which under IRC Section 1366(d)(1) cannot be reduced below zero — AAA can go negative from losses and deductions, preserving the tracking of previously taxed but undistributed S corporation earnings.'
WHERE id = 11143;

-- ============================================================
-- TAX PROCEDURES (1 questions)
-- ============================================================

-- ID 12865: Tax Procedures
UPDATE questions SET
  explanation = 'Under IRC Section 6213(a), the Tax Court is the only forum where a taxpayer may contest a deficiency without first paying the disputed tax. To litigate in U.S. District Court or the Court of Federal Claims, the taxpayer must pay the full assessed amount and then file a refund claim under IRC Section 7422(a). Because Hoffman wants to choose strategically and has the resources to pay, she has access to all three courts — however, only the District Court and Court of Federal Claims require prepayment, whereas Tax Court allows her to litigate first and pay later.'
WHERE id = 12865;

COMMIT;
